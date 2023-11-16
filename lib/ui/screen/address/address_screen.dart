import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterassignment/main.dart';
import 'package:flutterassignment/ui/screen/address/model/registered_address_ui_model.dart';
import 'package:flutterassignment/ui/themes/colors.dart';
import 'package:flutterassignment/ui/widgets/ctextformfield.dart';
import 'package:flutterassignment/ui/widgets/textview.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../presentation/country/country_cubit.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  final formKey = GlobalKey<FormState>();
  final prefectureController = TextEditingController();
  final municipalityController = TextEditingController();
  final streetAddressController = TextEditingController();
  final apartmentController = TextEditingController();

  late CountryCubit _countryCubit;

  @override
  void initState() {
    super.initState();
    _countryCubit = locator<CountryCubit>();
    _countryCubit.fetchCountries();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(MdiIcons.chevronLeft),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: BlocProvider(
        create: (context) => _countryCubit,
        child: Form(
          key: formKey,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SizedBox(height: 40.h),
                  const TextView(
                    "Please enter your information as written on your ID document",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 28.h),
                  BlocBuilder<CountryCubit, CountryState>(
                    builder: (context, blocState) {
                      var countryList =
                          blocState.countryListResult?.countries ?? [];
                      return FormField(
                        builder: (FormFieldState state) {
                          return InputDecorator(
                            decoration: const InputDecoration(),
                            isEmpty: blocState.selectedCountry == '',
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                value: blocState.selectedCountry,
                                isDense: true,
                                onChanged: (value) {
                                  _countryCubit
                                      .onSelectedCountryChanged(value!);
                                },
                                items: countryList.map((e) {
                                  //Flag link not working, so removed from code
                                  return DropdownMenuItem(
                                    value: e.name,
                                    child: SizedBox(
                                      width: .8.sw,
                                      child: TextView(e.name ?? ""),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  CTextFormField(
                    controller: prefectureController,
                    hintText: "Prefecture",
                  ),
                  CTextFormField(
                    controller: municipalityController,
                    hintText: "Municipality",
                  ),
                  CTextFormField(
                    controller: streetAddressController,
                    hintText: "Street Address (subarea - block - house ...",
                    validator: (value) {
                      //Not clear enough information, example format would have been helpful
                    },
                  ),
                  CTextFormField(
                    controller: apartmentController,
                    hintText: "Apartment, suite or unit",
                  ),
                  const Spacer(),
                  BlocBuilder<CountryCubit, CountryState>(
                    builder: (context, state) {
                      return SizedBox(
                        height: 50.h,
                        width: 1.sw,
                        child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              RegisteredAdressUiModel(
                                country: state.selectedCountry,
                                prefecture: prefectureController.text,
                                municipality: municipalityController.text,
                                streetAddress: streetAddressController.text,
                                apartment: apartmentController.text,
                              );
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                primaryColor.withOpacity(
                                    1) //TODO: change color based on form validation,
                                ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                            ),
                          ),
                          child: const TextView(
                            "Next",
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
