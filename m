Return-Path: <devicetree+bounces-5389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF6B7B6272
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 09:23:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 41AE21C20803
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 07:23:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7908FD280;
	Tue,  3 Oct 2023 07:23:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD0AD273
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 07:23:12 +0000 (UTC)
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92E7590
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 00:23:07 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-405361bb9f7so5306265e9.2
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 00:23:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696317786; x=1696922586; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5QrndL+T4UVghnit9CdCX9Kh475HxuHUkfCxYb36QnY=;
        b=HCzlc6Q9Pv+XXeBvYD14nkClDitZINsSy3LDEbbBPjZL5ztmHKXDxO4hUoUFoSZM+O
         UPO4M5Ao+63yUkOddfM8tmB7QpCAoiaSHH6m2EGA9ofbTpUplMmCyRRunAX6wtFYcnMD
         gv7qGI3yNM3AgfFw5z3qAwpZ8xjjeBnV41kuOWqM5WyMK7njBa7EQdGZuespW99ZhAVG
         LUB2zaHGZ5oJL1FoJ5zBDEm2C/OCjMeXX0Hz6rUBxgit195usKt6RXEqb9ezb8WEVSbk
         FH/tDVyWvw+ZXEyGzvgn/DLRJL6/R4P7IL2HsIpzKaodNDurv2d8cUY5YXZNTkyYIeZ9
         b1uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696317786; x=1696922586;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5QrndL+T4UVghnit9CdCX9Kh475HxuHUkfCxYb36QnY=;
        b=tDk81j8kNcY/fTMY8HJhOa47JP2KTP5X33XnlQ6e3nlGnC843ttBq/q8kZmZ5pAjxy
         TouVrTsdTTUvj+vSJGZxLh4jQkD4WPH93Ommyh/JrLmr0qohZ+7NfGnVbrf3l899Ob9a
         1hwAeKF1Q2BHgC0W66Vfi36hG4n4RqSMkkx2tmEc4PhqSlJqm2iee/VvKNrNtN/BdNY0
         1/wym69BCYFxK30kaIDreskByUgMpdOfSvUifcdA5a1KVMP11ZnOwEDknIC9rGCbAbhh
         wz8GhNr5UiLCGKPS/N9XdcotJkkBmjVIeSLt4vaZRPw4DZoQuKjKLB8Rv8cNNI8C8ye+
         Pkeg==
X-Gm-Message-State: AOJu0Yz4DaO0BHQ8ytVbVc56CNdFSe6NUbyE21CYrJQ0Mj0FSGfmzchq
	H02Tr7gw8YPoFvkmp+6C3YrlG6mwnfHoxddGCCVdOw==
X-Google-Smtp-Source: AGHT+IH55KRTvunywUpTwl57DsPsubRXbWKIce91cW4qaEd2n1pkc08O2Q0MjvWPfLZZsGerPFFmvg==
X-Received: by 2002:a5d:46cb:0:b0:321:8181:601e with SMTP id g11-20020a5d46cb000000b003218181601emr11718734wrs.8.1696317785163;
        Tue, 03 Oct 2023 00:23:05 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:15bf:5b59:3e24:71fe])
        by smtp.gmail.com with ESMTPSA id bl40-20020adfe268000000b003233b554e6esm863318wrb.85.2023.10.03.00.23.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 00:23:04 -0700 (PDT)
References: <20231002141020.2403652-1-jbrunet@baylibre.com>
 <20231002141020.2403652-3-jbrunet@baylibre.com>
 <b81a296d-0640-4b2e-aab6-c9de37d10206@linaro.org>
 <1j5y3ozvmk.fsf@starbuckisacylon.baylibre.com>
 <CACdvmAgzBxja-oJkS9c88=P0Wmc1ptkJExz6YjaJUyyv6yxh0Q@mail.gmail.com>
 <DF61DA82-29E4-4504-B548-14F880A6221E@gmail.com>
User-agent: mu4e 1.8.13; emacs 29.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Christian Hewitt <christianshewitt@gmail.com>, Da Xue <da@lessconfused.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Da Xue <da.xue@libretech.co>,
 devicetree <devicetree@vger.kernel.org>, LKML
 <linux-kernel@vger.kernel.org>, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: amlogic: add libretech cottonwood support
Date: Tue, 03 Oct 2023 09:21:25 +0200
In-reply-to: <DF61DA82-29E4-4504-B548-14F880A6221E@gmail.com>
Message-ID: <1j1qecyxt4.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


On Tue 03 Oct 2023 at 05:23, Christian Hewitt <christianshewitt@gmail.com> =
wrote:

>> On 3 Oct 2023, at 1:15 am, Da Xue <da@lessconfused.com> wrote:
>>=20
>> On Tue, Oct 3, 2023 at 3:13=E2=80=AFAM Jerome Brunet <jbrunet@baylibre.c=
om> wrote:
>>>=20
>>>=20
>>> On Mon 02 Oct 2023 at 18:45, Neil Armstrong <neil.armstrong@linaro.org>=
 wrote:
>>>=20
>>>> Hi,
>>>>=20
>>>> On 02/10/2023 16:10, Jerome Brunet wrote:
>>>>> Add support for the Libretech cottonwood board family.
>>>>> These 2 boards are based on the same PCB, with an RPi B form factor.
>>>>> The "Alta" board uses an a311d while the "Solitude" variant uses an
>>>>> s905d3.
>>>>> Co-developed-by: Da Xue <da.xue@libretech.co>
>>>>> Signed-off-by: Da Xue <da.xue@libretech.co>
>>>>> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
>>>>> ---
>>>>>  arch/arm64/boot/dts/amlogic/Makefile          |   2 +
>>>>>  .../amlogic/meson-g12b-a311d-libretech-cc.dts | 133 ++++
>>>>>  .../amlogic/meson-libretech-cottonwood.dtsi   | 610 ++++++++++++++++=
++
>>>>>  .../amlogic/meson-sm1-s905d3-libretech-cc.dts |  89 +++
>>>>>  4 files changed, 834 insertions(+)
>>>>>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-a311d-libr=
etech-cc.dts
>>>>>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-libretech-cotto=
nwood.dtsi
>>>>>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1-s905d3-libr=
etech-cc.dts
>>>>> diff --git a/arch/arm64/boot/dts/amlogic/Makefile
>>>>> b/arch/arm64/boot/dts/amlogic/Makefile
>>>>> index 4ce401d17b63..cc8b34bd583d 100644
>>>>> --- a/arch/arm64/boot/dts/amlogic/Makefile
>>>>> +++ b/arch/arm64/boot/dts/amlogic/Makefile
>>>>> @@ -18,6 +18,7 @@ dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-bananapi-c=
m4-cm4io.dtb
>>>>>  dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-gsking-x.dtb
>>>>>  dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-gtking-pro.dtb
>>>>>  dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-gtking.dtb
>>>>> +dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-a311d-libretech-cc.dtb
>>>>>  dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-odroid-go-ultra.dtb
>>>>>  dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-odroid-n2-plus.dtb
>>>>>  dtb-$(CONFIG_ARCH_MESON) +=3D meson-g12b-odroid-n2.dtb
>>>>> @@ -73,6 +74,7 @@ dtb-$(CONFIG_ARCH_MESON) +=3D meson-sm1-bananapi-m2=
-pro.dtb
>>>>>  dtb-$(CONFIG_ARCH_MESON) +=3D meson-sm1-bananapi-m5.dtb
>>>>>  dtb-$(CONFIG_ARCH_MESON) +=3D meson-sm1-h96-max.dtb
>>>>>  dtb-$(CONFIG_ARCH_MESON) +=3D meson-sm1-khadas-vim3l.dtb
>>>>> +dtb-$(CONFIG_ARCH_MESON) +=3D meson-sm1-s905d3-libretech-cc.dtb
>>>>>  dtb-$(CONFIG_ARCH_MESON) +=3D meson-sm1-odroid-c4.dtb
>>>>>  dtb-$(CONFIG_ARCH_MESON) +=3D meson-sm1-odroid-hc4.dtb
>>>>>  dtb-$(CONFIG_ARCH_MESON) +=3D meson-sm1-sei610.dtb
>>>>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-libretech-c=
c.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-libretech-cc.dts
>>>>> new file mode 100644
>>>>> index 000000000000..fc890e235dbd
>>>>> --- /dev/null
>>>>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-a311d-libretech-cc.dts
>>>>> @@ -0,0 +1,133 @@
>>>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>>>> +/*
>>>>> + * Copyright (c) 2023 BayLibre, SAS.
>>>>> + * Author: Jerome Brunet <jbrunet@baylibre.com>
>>>>> + */
>>>>> +
>>>>> +/dts-v1/;
>>>>> +
>>>>> +#include <dt-bindings/clock/g12a-clkc.h>
>>>>> +#include "meson-g12b-a311d.dtsi"
>>>>> +#include "meson-libretech-cottonwood.dtsi"
>>>>> +
>>>>> +/ {
>>>>> +    compatible =3D "libretech,aml-a311d-cc", "amlogic,a311d", "amlog=
ic,g12b";
>>>>> +    model =3D "Libre Computer AML-A311D-CC Alta";
>>>>> +
>>>>> +    vddcpu_a: regulator-vddcpu-a {
>>>>> +            compatible =3D "pwm-regulator";
>>>>> +            regulator-name =3D "VDDCPU_A";
>>>>> +            regulator-min-microvolt =3D <730000>;
>>>>> +            regulator-max-microvolt =3D <1011000>;
>>>>> +            regulator-boot-on;
>>>>> +            regulator-always-on;
>>>>> +            pwm-supply =3D <&dc_in>;
>>>>> +            pwms =3D <&pwm_ab 0 1250 0>;
>>>>> +            pwm-dutycycle-range =3D <100 0>;
>>>>> +    };
>>>>> +
>>>>> +    sound {
>>>>> +            model =3D "Alta";
>>>>=20
>>>> I think those sound model properties should be coherent with the
>>>> other Libre Computer boards:
>>>> arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi:         model =
=3D "LIBRETECH-PC";
>>>> arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts:         =
  model =3D "LIBRETECH-AC";
>>>> arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc-v2.dts:      =
          model =3D "LIBRETECH-CC-V2";
>>>> arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts:         =
  model =3D "LIBRETECH-CC";
>>>=20
>>> "LIBRETECH-CC-" leave very little room to play with
>>> That's not really something that could have been anticipated 5+ years a=
go
>>>=20
>>=20
>> I think the formal model name is best, maybe with LC prefix.
>> eg. LC-AML-A311D-CC and LC-AML-S905D3-CC
>
> The first is valid. The second will be truncated to LC-AML-S905D3-C by the
> alsa 15-character naming limit (mentioned below).
>
> So name/rename them to:
>
> LC-XXXXXXXXXXXX <=3D MAX SIZE (15 Chars)
> LC-LEPOTATO
> LC-LEPOTATO-V2
> LC-LAFRITE
> LC-TARTIFLETTE
> LC-ALTA
> LC-SOLITUDE
>
> Personally I think the plain codenames (no "LC-=E2=80=9C) work best as th=
ey are all
> distinctive. Whenever I see lists of the official board names they look/r=
ead
> the same at first glance and then I have to spot-the-difference to tell t=
hem
> apart.
>
> At the moment AFAIK these names are just cosmetic as there=E2=80=99s no A=
mlogic alsa
> ucm confs using board model (only downstream confs based on driver name).=
 So
> IMHO rework the names now before the confs go upstream.
>

No they are not cosmetic. It can be used to match the card.
Changing old names may break userspace.

> CH.
>
>> https://hub.libre.computer/t/libre-computer-board-naming-and-conventions=
/100
>>=20
>>>>=20
>>>> It's ok to change the scheme since it's tried to keep the name under t=
he 15 characters limit,
>>>> will the next board keep this naming ?
>>>=20
>>> I don't know what the next board will be so I can hardly make any predi=
ction
>>> I'm open to suggestion if you prefer something else
>>>=20
>>>>=20
>>>>=20
>>>>> +            audio-routing =3D "TDMOUT_A IN 0", "FRDDR_A OUT 0",
>>>>> +                            "TDMOUT_A IN 1", "FRDDR_B OUT 0",
>>>>> +                            "TDMOUT_A IN 2", "FRDDR_C OUT 0",
>>>>> +                            "TDM_A Playback", "TDMOUT_A OUT",
>>>>> +                            "TDMOUT_B IN 0", "FRDDR_A OUT 1",
>>>>> +                            "TDMOUT_B IN 1", "FRDDR_B OUT 1",
>>>>> +                            "TDMOUT_B IN 2", "FRDDR_C OUT 1",
>>>>> +                            "TDM_B Playback", "TDMOUT_B OUT",
>>>>> +                            "TDMOUT_C IN 0", "FRDDR_A OUT 2",
>>>>> +                            "TDMOUT_C IN 1", "FRDDR_B OUT 2",
>>>>> +                            "TDMOUT_C IN 2", "FRDDR_C OUT 2",
>>>>> +                            "TDM_C Playback", "TDMOUT_C OUT",
>>>>> +                            "TDMIN_A IN 0", "TDM_A Capture",
>>>>> +                            "TDMIN_B IN 0", "TDM_A Capture",
>>>>> +                            "TDMIN_C IN 0", "TDM_A Capture",
>>>>> +                            "TDMIN_A IN 3", "TDM_A Loopback",
>>>>> +                            "TDMIN_B IN 3", "TDM_A Loopback",
>>>>> +                            "TDMIN_C IN 3", "TDM_A Loopback",
>>>>> +                            "TDMIN_A IN 1", "TDM_B Capture",
>>>>> +                            "TDMIN_B IN 1", "TDM_B Capture",
>>>>> +                            "TDMIN_C IN 1", "TDM_B Capture",
>>>>> +                            "TDMIN_A IN 4", "TDM_B Loopback",
>>>>> +                            "TDMIN_B IN 4", "TDM_B Loopback",
>>>>> +                            "TDMIN_C IN 4", "TDM_B Loopback",
>>>>> +                            "TDMIN_A IN 2", "TDM_C Capture",
>>>>> +                            "TDMIN_B IN 2", "TDM_C Capture",
>>>>> +                            "TDMIN_C IN 2", "TDM_C Capture",
>>>>> +                            "TDMIN_A IN 5", "TDM_C Loopback",
>>>>> +                            "TDMIN_B IN 5", "TDM_C Loopback",
>>>>> +                            "TDMIN_C IN 5", "TDM_C Loopback",
>>>>> +                            "TODDR_A IN 0", "TDMIN_A OUT",
>>>>> +                            "TODDR_B IN 0", "TDMIN_A OUT",
>>>>> +                            "TODDR_C IN 0", "TDMIN_A OUT",
>>>>> +                            "TODDR_A IN 1", "TDMIN_B OUT",
>>>>> +                            "TODDR_B IN 1", "TDMIN_B OUT",
>>>>> +                            "TODDR_C IN 1", "TDMIN_B OUT",
>>>>> +                            "TODDR_A IN 2", "TDMIN_C OUT",
>>>>> +                            "TODDR_B IN 2", "TDMIN_C OUT",
>>>>> +                            "TODDR_C IN 2", "TDMIN_C OUT",
>>>>> +                            "Lineout", "ACODEC LOLP",
>>>>> +                            "Lineout", "ACODEC LORP";
>>>>> +    };
>>>>> +};
>>>>> +
>>>>> +&cpu_opp_table_0 {
>>>>> +            opp-1800000000 {
>>>>> +                    opp-hz =3D /bits/ 64 <1800000000>;
>>>>> +                    opp-microvolt =3D <1001000>;
>>>>> +            };
>>=20
>> This seems to match
>> https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/amlogi=
c/meson-g12b-a311d.dtsi#L44
>>=20
>>>>> +
>>>>> +            opp-2016000000 {
>>>>> +                    opp-hz =3D /bits/ 64 <2016000000>;
>>>>> +                    opp-microvolt =3D <1011000>;
>>>>> +            };
>>=20
>> We run manufacturing verification at this speed but I don't think we
>> should include this in upstream.
>>=20
>>>>> +};
>>>>> +
>>>>> +&cpu0 {
>>>>> +    cpu-supply =3D <&vddcpu_b>;
>>>>> +    operating-points-v2 =3D <&cpu_opp_table_0>;
>>>>> +    clocks =3D <&clkc CLKID_CPU_CLK>;
>>>>> +    clock-latency =3D <50000>;
>>>>> +};
>>>>> +
>>>>> +&cpu1 {
>>>>> +    cpu-supply =3D <&vddcpu_b>;
>>>>> +    operating-points-v2 =3D <&cpu_opp_table_0>;
>>>>> +    clocks =3D <&clkc CLKID_CPU_CLK>;
>>>>> +    clock-latency =3D <50000>;
>>>>> +};
>>>>> +
>>>>> +&cpu100 {
>>>>> +    cpu-supply =3D <&vddcpu_a>;
>>>>> +    operating-points-v2 =3D <&cpub_opp_table_1>;
>>>>> +    clocks =3D <&clkc CLKID_CPUB_CLK>;
>>>>> +    clock-latency =3D <50000>;
>>>>> +};
>>>>> +
>>>>> +&cpu101 {
>>>>> +    cpu-supply =3D <&vddcpu_a>;
>>>>> +    operating-points-v2 =3D <&cpub_opp_table_1>;
>>>>> +    clocks =3D <&clkc CLKID_CPUB_CLK>;
>>>>> +    clock-latency =3D <50000>;
>>>>> +};
>>>>> +
>>>>> +&cpu102 {
>>>>> +    cpu-supply =3D <&vddcpu_a>;
>>>>> +    operating-points-v2 =3D <&cpub_opp_table_1>;
>>>>> +    clocks =3D <&clkc CLKID_CPUB_CLK>;
>>>>> +    clock-latency =3D <50000>;
>>>>> +};
>>>>> +
>>>>> +&cpu103 {
>>>>> +    cpu-supply =3D <&vddcpu_a>;
>>>>> +    operating-points-v2 =3D <&cpub_opp_table_1>;
>>>>> +    clocks =3D <&clkc CLKID_CPUB_CLK>;
>>>>> +    clock-latency =3D <50000>;
>>>>> +};
>>>>> +
>>>>> +&pwm_ab {
>>>>> +    pinctrl-0 =3D <&pwm_a_e_pins>, <&pwm_b_x7_pins>;
>>>>> +    clocks =3D <&xtal>, <&xtal>;
>>>>> +    clock-names =3D "clkin0", "clkin1";
>>>>> +};
>>>>> diff --git a/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.d=
tsi b/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
>>>>> new file mode 100644
>>>>> index 000000000000..a7fc8963ff54
>>>>> --- /dev/null
>>>>> +++ b/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
>>>>> @@ -0,0 +1,610 @@
>>>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>>>> +/*
>>>>> + * Copyright (c) 2023 BayLibre, SAS.
>>>>> + * Author: Jerome Brunet <jbrunet@baylibre.com>
>>>>> + */
>>>>> +
>>>>> +#include <dt-bindings/clock/g12a-clkc.h>
>>>>> +#include <dt-bindings/input/input.h>
>>>>> +#include <dt-bindings/leds/common.h>
>>>>> +#include <dt-bindings/gpio/gpio.h>
>>>>> +#include <dt-bindings/gpio/meson-g12a-gpio.h>
>>>>> +#include <dt-bindings/sound/meson-g12a-toacodec.h>
>>>>> +#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
>>>>> +
>>>>> +/ {
>>>>> +    aliases {
>>>>> +            serial0 =3D &uart_AO;
>>>>> +            ethernet0 =3D &ethmac;
>>>>> +            spi0 =3D &spifc;
>>>>> +    };
>>>>> +
>>>>> +    memory@0 {
>>>>> +            device_type =3D "memory";
>>>>> +            reg =3D <0x0 0x0 0x0 0x80000000>;
>>>>> +    };
>>>>> +
>>>>> +    chosen {
>>>>> +            stdout-path =3D "serial0:115200n8";
>>>>> +    };
>>>>> +
>>>>> +    dioo2133: audio-amplifier-0 {
>>>>> +            compatible =3D "simple-audio-amplifier";
>>>>> +            enable-gpios =3D <&gpio GPIOX_0 GPIO_ACTIVE_HIGH>;
>>>>> +            VCC-supply =3D <&vcc_5v>;
>>>>> +            sound-name-prefix =3D "10U2";
>>>>> +    };
>>>>> +
>>>>> +    /* TOFIX: handle CVBS_DET on SARADC channel 0 */
>>>>> +    cvbs-connector {
>>>>> +            compatible =3D "composite-video-connector";
>>>>> +
>>>>> +            port {
>>>>> +                    cvbs_connector_in: endpoint {
>>>>> +                            remote-endpoint =3D <&cvbs_vdac_out>;
>>>>> +                    };
>>>>> +            };
>>>>> +    };
>>>>> +
>>>>> +    emmc_pwrseq: emmc-pwrseq {
>>>>> +            compatible =3D "mmc-pwrseq-emmc";
>>>>> +            reset-gpios =3D <&gpio BOOT_12 GPIO_ACTIVE_LOW>;
>>>>> +    };
>>>>> +
>>>>> +    hdmi-connector {
>>>>> +            compatible =3D "hdmi-connector";
>>>>> +            type =3D "a";
>>>>> +
>>>>> +            port {
>>>>> +                    hdmi_connector_in: endpoint {
>>>>> +                            remote-endpoint =3D <&hdmi_tx_tmds_out>;
>>>>> +                    };
>>>>> +            };
>>>>> +    };
>>>>> +
>>>>> +    leds-pwm {
>>>>> +            compatible =3D "pwm-leds";
>>>>> +
>>>>> +            led-green {
>>>>> +                    color =3D <LED_COLOR_ID_GREEN>;
>>>>> +                    function =3D LED_FUNCTION_STATUS;
>>>>> +                    linux,default-trigger =3D "default-on";
>>>>> +                    panic-indicator;
>>>>> +                    max-brightness =3D <255>;
>>>>> +                    pwms =3D <&pwm_cd 1 1250 0>;
>>>>> +                    active-low;
>>>>> +            };
>>>>> +
>>>>> +            led-blue {
>>>>> +                    color =3D <LED_COLOR_ID_BLUE>;
>>>>> +                    function =3D LED_FUNCTION_ACTIVITY;
>>>>> +                    linux,default-trigger =3D "activity";
>>>>> +                    max-brightness =3D <255>;
>>>>> +                    pwms =3D <&pwm_ab 1 1250 0>;
>>>>> +                    active-low;
>>>>> +            };
>>>>> +    };
>>>>> +
>>>>> +    leds-gpio {
>>>>> +            compatible =3D "gpio-leds";
>>>>> +
>>>>> +            led-orange {
>>>>> +                    color =3D <LED_COLOR_ID_AMBER>;
>>=20
>> Should this be LED_COLOR_ID_ORANGE?
>>=20
>>>>> +                    function =3D LED_FUNCTION_STANDBY;
>>>>> +                    gpios =3D <&gpio GPIOX_6 GPIO_ACTIVE_LOW>;
>>>>> +            };
>>>>> +    };
>>>>> +
>>>>> +    dc_in: regulator-dc-in {
>>>>> +            compatible =3D "regulator-fixed";
>>>>> +            regulator-name =3D "5V_IN";
>>>>> +            regulator-min-microvolt =3D <5000000>;
>>>>> +            regulator-max-microvolt =3D <5000000>;
>>>>> +            regulator-always-on;
>>>>> +    };
>>>>> +
>>>>> +    flash_1v8: regulator-flash-1v8 {
>>>>> +            compatible =3D "regulator-fixed";
>>>>> +            regulator-name =3D "FLASH_1V8";
>>>>> +            regulator-min-microvolt =3D <1800000>;
>>>>> +            regulator-max-microvolt =3D <1800000>;
>>>>> +            regulator-always-on;
>>>>> +            vin-supply =3D <&vcc_3v3>;
>>>>> +    };
>>>>> +
>>>>> +    vcc_card: regulator-vcc-card {
>>>>> +            compatible =3D "regulator-fixed";
>>>>> +            regulator-name =3D "VCC_CARD";
>>>>> +            regulator-min-microvolt =3D <3300000>;
>>>>> +            regulator-max-microvolt =3D <3300000>;
>>>>> +            vin-supply =3D <&vddao_3v3>;
>>>>> +            gpio =3D <&gpio GPIOX_2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DR=
AIN)>;
>>>>> +            enable-active-high;
>>>>> +            gpio-open-drain;
>>>>> +    };
>>>>> +
>>>>> +    vcc_3v3: regulator-vcc-3v3 {
>>>>> +            compatible =3D "regulator-fixed";
>>>>> +            regulator-name =3D "VCC_3V3";
>>>>> +            regulator-min-microvolt =3D <3300000>;
>>>>> +            regulator-max-microvolt =3D <3300000>;
>>>>> +            regulator-always-on;
>>>>> +            vin-supply =3D <&vddao_3v3>;
>>>>> +
>>>>> +            /* FIXME: controlled by TEST_N */
>>>>> +    };
>>>>> +
>>>>> +    vcc_5v: regulator-vcc-5v {
>>>>> +            compatible =3D "regulator-fixed";
>>>>> +            regulator-name =3D "VCC_5V";
>>>>> +            regulator-min-microvolt =3D <5000000>;
>>>>> +            regulator-max-microvolt =3D <5000000>;
>>>>> +            regulator-always-on;
>>>>> +            vin-supply =3D <&dc_in>;
>>>>> +            gpio =3D <&gpio GPIOH_8 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DR=
AIN)>;
>>>>> +            enable-active-high;
>>>>> +            gpio-open-drain;
>>>>> +    };
>>>>> +
>>>>> +    vddao_3v3: regulator-vddao_3v3 {
>>>>> +            compatible =3D "regulator-fixed";
>>>>> +            regulator-name =3D "VDDAO_3V3";
>>>>> +            regulator-min-microvolt =3D <3300000>;
>>>>> +            regulator-max-microvolt =3D <3300000>;
>>>>> +            regulator-always-on;
>>>>> +            vin-supply =3D <&dc_in>;
>>>>> +    };
>>>>> +
>>>>> +    vddcpu_b: regulator-vddcpu-b {
>>>>> +            compatible =3D "pwm-regulator";
>>>>> +            regulator-name =3D "VDDCPU_B";
>>>>> +            regulator-min-microvolt =3D <730000>;
>>>>> +            regulator-max-microvolt =3D <1011000>;
>>>>> +            regulator-boot-on;
>>>>> +            regulator-always-on;
>>>>> +            pwm-supply =3D <&dc_in>;
>>>>> +            pwms =3D <&pwm_AO_cd 1 1250 0>;
>>>>> +            pwm-dutycycle-range =3D <100 0>;
>>>>> +    };
>>>>> +
>>>>> +    vddio_ao18: regulator-vddio_ao18 {
>>>>> +            compatible =3D "regulator-fixed";
>>>>> +            regulator-name =3D "VDDIO_AO18";
>>>>> +            regulator-min-microvolt =3D <1800000>;
>>>>> +            regulator-max-microvolt =3D <1800000>;
>>>>> +            regulator-always-on;
>>>>> +            vin-supply =3D <&vddao_3v3>;
>>>>> +    };
>>>>> +
>>>>> +    vddio_c: regulator-vddio_c {
>>>>> +            compatible =3D "regulator-gpio";
>>>>> +            regulator-name =3D "VDDIO_C";
>>>>> +            regulator-min-microvolt =3D <1800000>;
>>>>> +            regulator-max-microvolt =3D <3300000>;
>>>>> +            regulator-settling-time-up-us =3D <200>;
>>>>> +            regulator-settling-time-down-us =3D <50000>;
>>>>> +            vin-supply =3D <&vddao_3v3>;
>>>>> +            gpios =3D <&gpio GPIOX_4 GPIO_ACTIVE_HIGH>;
>>>>> +            states =3D <3300000 0>,
>>>>> +                     <1800000 1>;
>>>>> +    };
>>>>> +
>>>>> +    sound {
>>>>> +            compatible =3D "amlogic,axg-sound-card";
>>>>> +            audio-widgets =3D "Line", "Lineout";
>>>>> +            audio-aux-devs =3D <&tdmout_a>, <&tdmout_b>, <&tdmout_c>,
>>>>> +                             <&tdmin_a>, <&tdmin_b>, <&tdmin_c>,
>>>>> +                             <&dioo2133>;
>>>>> +
>>>>> +            assigned-clocks =3D <&clkc CLKID_MPLL2>,
>>>>> +                              <&clkc CLKID_MPLL0>,
>>>>> +                              <&clkc CLKID_MPLL1>;
>>>>> +            assigned-clock-parents =3D <0>, <0>, <0>;
>>>>> +            assigned-clock-rates =3D <294912000>,
>>>>> +                                   <270950400>,
>>>>> +                                   <393216000>;
>>>>> +
>>>>> +            dai-link-0 {
>>>>> +                    sound-dai =3D <&frddr_a>;
>>>>> +            };
>>>>> +
>>>>> +            dai-link-1 {
>>>>> +                    sound-dai =3D <&frddr_b>;
>>>>> +            };
>>>>> +
>>>>> +            dai-link-2 {
>>>>> +                    sound-dai =3D <&frddr_c>;
>>>>> +            };
>>>>> +
>>>>> +            dai-link-3 {
>>>>> +                    sound-dai =3D <&toddr_a>;
>>>>> +            };
>>>>> +
>>>>> +            dai-link-4 {
>>>>> +                    sound-dai =3D <&toddr_b>;
>>>>> +            };
>>>>> +
>>>>> +            dai-link-5 {
>>>>> +                    sound-dai =3D <&toddr_c>;
>>>>> +            };
>>>>> +
>>>>> +            /*
>>>>> +             * Audio setup: The 40 pins header provides access to 2 =
TDMs,
>>>>> +             * SPDIF In/Out and PDM inputs.
>>>>> +             * - TDM A: 2 lanes
>>>>> +             *    D0:    40/X9
>>>>> +             *    D1:    38/X8
>>>>> +             *    BCLK:  12/X11
>>>>> +             *    FS:    35/X10
>>>>> +             * - TDM B: 4 lanes
>>>>> +             *    D0:    37/A3
>>>>> +             *    D1:    16/A4
>>>>> +             *    D2:    18/A5 or 7/AO6
>>>>> +             *    D3:    22/A6 or 21/H5
>>>>> +             *    BCLK:  29/A1 or 8/AO8
>>>>> +             *    FS:    31/A2 or 11/AO7
>>>>> +             * - 2 Master Clocks:
>>>>> +             *    MCLK0: 15/A0 or 10/AO9
>>>>> +             *    MCLK1: 33/X15
>>>>> +             * - SPDIF:
>>>>> +             *    OUT:   32/A11
>>>>> +             *    IN:    21/H5
>>>>> +             * - PDM Input:
>>>>> +             *    DO:    13/A8
>>>>> +             *    D1:    26/A9
>>>>> +             *    D2:    22/A6
>>>>> +             *    D3:    18/A5
>>>>> +             *    DCLK:  36/A7
>>>>> +             *
>>>>> +             * TDM C is not usable on the 40 pins connector so it is
>>>>> +             * setup for the HDMI 4 lanes i2s.
>>>>> +             *
>>>>> +             * No pinctrl is enabled by default to preserve the
>>>>> +             * genericity of the 40 pins header. Many configurations=
 are
>>>>> +             * possible based on the desired use case. Please adjust=
 TDM
>>>>> +             * masks, clock setups and pinctrl accordingly.
>>>>> +             */
>>>>> +
>>>>> +            dai-link-6 {
>>>>> +                    sound-dai =3D <&tdmif_a>;
>>>>> +                    dai-format =3D "dsp_a";
>>>>> +                    dai-tdm-slot-tx-mask-0 =3D <1 1>;
>>>>> +                    mclk-fs =3D <256>;
>>>>> +
>>>>> +                    codec-0 {
>>>>> +                            sound-dai =3D <&tohdmitx TOHDMITX_I2S_IN=
_A>;
>>>>> +                    };
>>>>> +
>>>>> +                    codec-1 {
>>>>> +                            sound-dai =3D <&toacodec TOACODEC_IN_A>;
>>>>> +                    };
>>>>> +            };
>>>>> +
>>>>> +            dai-link-7 {
>>>>> +                    sound-dai =3D <&tdmif_b>;
>>>>> +                    dai-format =3D "i2s";
>>>>> +                    dai-tdm-slot-tx-mask-0 =3D <1 1>;
>>>>> +                    dai-tdm-slot-rx-mask-1 =3D <1 1>;
>>>>> +                    mclk-fs =3D <256>;
>>>>> +
>>>>> +                    codec-0 {
>>>>> +                            sound-dai =3D <&tohdmitx TOHDMITX_I2S_IN=
_B>;
>>>>> +                    };
>>>>> +
>>>>> +                    codec-1 {
>>>>> +                            sound-dai =3D <&toacodec TOACODEC_IN_B>;
>>>>> +                    };
>>>>> +            };
>>>>> +
>>>>> +            dai-link-8 {
>>>>> +                    sound-dai =3D <&tdmif_c>;
>>>>> +                    dai-format =3D "i2s";
>>>>> +                    dai-tdm-slot-tx-mask-0 =3D <1 1>;
>>>>> +                    dai-tdm-slot-tx-mask-1 =3D <1 1>;
>>>>> +                    dai-tdm-slot-tx-mask-2 =3D <1 1>;
>>>>> +                    dai-tdm-slot-tx-mask-3 =3D <1 1>;
>>>>> +                    mclk-fs =3D <256>;
>>>>> +
>>>>> +                    codec-0 {
>>>>> +                            sound-dai =3D <&tohdmitx TOHDMITX_I2S_IN=
_C>;
>>>>> +                    };
>>>>> +
>>>>> +                    codec-1 {
>>>>> +                            sound-dai =3D <&toacodec TOACODEC_IN_C>;
>>>>> +                    };
>>>>> +            };
>>>>> +
>>>>> +            dai-link-9 {
>>>>> +                    sound-dai =3D <&tohdmitx TOHDMITX_I2S_OUT>;
>>>>> +
>>>>> +                    codec {
>>>>> +                            sound-dai =3D <&hdmi_tx>;
>>>>> +                    };
>>>>> +            };
>>>>> +
>>>>> +            dai-link-10 {
>>>>> +                    sound-dai =3D <&toacodec TOACODEC_OUT>;
>>>>> +
>>>>> +                    codec {
>>>>> +                            sound-dai =3D <&acodec>;
>>>>> +                    };
>>>>> +            };
>>>>> +    };
>>>>> +};
>>>>> +
>>>>> +&acodec {
>>>>> +    status =3D "okay";
>>>>> +    AVDD-supply =3D <&vddio_ao18>;
>>>>> +};
>>>>> +
>>>>> +&arb {
>>>>> +    status =3D "okay";
>>>>> +};
>>>>> +
>>>>> +&cecb_AO {
>>>>> +    status =3D "okay";
>>>>> +    pinctrl-0 =3D <&cec_ao_b_h_pins>;
>>>>> +    pinctrl-names =3D "default";
>>>>> +    hdmi-phandle =3D <&hdmi_tx>;
>>>>> +};
>>>>> +
>>>>> +&clkc_audio {
>>>>> +    status =3D "okay";
>>>>> +};
>>>>> +
>>>>> +&cvbs_vdac_port {
>>>>> +    cvbs_vdac_out: endpoint {
>>>>> +            remote-endpoint =3D <&cvbs_connector_in>;
>>>>> +    };
>>>>> +};
>>>>> +
>>>>> +&ethmac {
>>>>> +    pinctrl-0 =3D <&eth_pins>, <&eth_rgmii_pins>, <&eth_phy_irq_pins=
>;
>>>>> +    pinctrl-names =3D "default";
>>>>> +    status =3D "okay";
>>>>> +    phy-mode =3D "rgmii";
>>>>> +    phy-handle =3D <&external_phy>;
>>>>> +    amlogic,tx-delay-ns =3D <2>;
>>>>> +};
>>>>> +
>>>>> +&ext_mdio {
>>>>> +    external_phy: ethernet-phy@0 {
>>>>> +            /* Realtek RTL8211F (0x001cc916) */
>>>>> +            reg =3D <0>;
>>>>> +            max-speed =3D <1000>;
>>>>> +
>>>>> +            reset-assert-us =3D <100000>;
>>>>> +            reset-deassert-us =3D <100000>;
>>>>> +            reset-gpios =3D <&gpio GPIOZ_15 (GPIO_ACTIVE_LOW | GPIO_=
OPEN_DRAIN)>;
>>>>> +
>>>>> +            interrupt-parent =3D <&gpio_intc>;
>>>>> +            /* MAC_INTR on GPIOZ_14 */
>>>>> +            interrupts =3D <26 IRQ_TYPE_LEVEL_LOW>;
>>>>> +    };
>>>>> +};
>>>>> +
>>>>> +&frddr_a {
>>>>> +    status =3D "okay";
>>>>> +};
>>>>> +
>>>>> +&frddr_b {
>>>>> +    status =3D "okay";
>>>>> +};
>>>>> +
>>>>> +&frddr_c {
>>>>> +    status =3D "okay";
>>>>> +};
>>>>> +
>>>>> +&hdmi_tx {
>>>>> +    status =3D "okay";
>>>>> +    pinctrl-0 =3D <&hdmitx_hpd_pins>, <&hdmitx_ddc_pins>;
>>>>> +    pinctrl-names =3D "default";
>>>>> +    hdmi-supply =3D <&vcc_5v>;
>>>>> +};
>>>>> +
>>>>> +&hdmi_tx_tmds_port {
>>>>> +    hdmi_tx_tmds_out: endpoint {
>>>>> +            remote-endpoint =3D <&hdmi_connector_in>;
>>>>> +    };
>>>>> +};
>>>>> +
>>>>> +&ir {
>>>>> +    status =3D "okay";
>>>>> +    pinctrl-0 =3D <&remote_input_ao_pins>;
>>>>> +    pinctrl-names =3D "default";
>>>>> +};
>>>>> +
>>>>> +&npu {
>>>>> +    status =3D "okay";
>>>>> +};
>>>>=20
>>>> Are you sure you want this enabled ?
>>>> AFAIK if etnaviv is enabled, it will be used first as a render node by=
 mesa and fail.
>>>>=20
>>>=20
>>> AFAIK, it is enabled in the pre-flashed bootloader that is running
>>> debian, fedora and opensuse ... but etnaviv is blacklisted there
>>>=20
>>> It should indeed be removed.
>>>=20
>>>=20
>>=20
>> Yes, let's remove this until there are future developments in this
>> area. We will add it to our tooling to enable separately.
>>=20
>>>>> +
>>>>> +&periphs_pinctrl {
>>>>> +    spi_cs_disable_pins: spi-cs-disable {
>>>>> +            mux {
>>>>> +                    groups =3D "BOOT_14";
>>>>> +                    function =3D "gpio_periphs";
>>>>> +                    bias-disable;
>>>>> +                    output-high;
>>>>> +            };
>>>>> +    };
>>>>> +
>>>>> +    eth_phy_irq_pins: eth-phy-irq {
>>>>> +            mux {
>>>>> +                    groups =3D "GPIOZ_14";
>>>>> +                    function =3D "gpio_periphs";
>>>>> +                    bias-pull-up;
>>>>> +                    output-disable;
>>>>> +            };
>>>>> +    };
>>>>> +};
>>>>> +
>>>>> +&pwm_AO_cd {
>>>>> +    status =3D "okay";
>>>>> +    pinctrl-0 =3D <&pwm_ao_d_e_pins>;
>>>>> +    pinctrl-names =3D "default";
>>>>> +    clocks =3D <&xtal>;
>>>>> +    clock-names =3D "clkin1";
>>>>> +};
>>>>> +
>>>>> +&pwm_ab {
>>>>> +    status =3D "okay";
>>>>> +    pinctrl-0 =3D <&pwm_b_x7_pins>;
>>>>> +    pinctrl-names =3D "default";
>>>>> +    clocks =3D <&xtal>;
>>>>> +    clock-names =3D "clkin1";
>>>>> +};
>>>>> +
>>>>> +&pwm_cd {
>>>>> +    status =3D "okay";
>>>>> +    pinctrl-0 =3D <&pwm_d_x3_pins>;
>>>>> +    pinctrl-names =3D "default";
>>>>> +    clocks =3D <&xtal>;
>>>>> +    clock-names =3D "clkin1";
>>>>> +};
>>>>> +
>>>>> +&saradc {
>>>>> +    status =3D "okay";
>>>>> +    vref-supply =3D <&vddio_ao18>;
>>>>> +};
>>>>> +
>>>>> +/* SD card */
>>>>> +&sd_emmc_b {
>>>>> +    status =3D "okay";
>>>>> +    pinctrl-0 =3D <&sdcard_c_pins>;
>>>>> +    pinctrl-1 =3D <&sdcard_clk_gate_c_pins>;
>>>>> +    pinctrl-names =3D "default", "clk-gate";
>>>>> +
>>>>> +    bus-width =3D <4>;
>>>>> +    cap-sd-highspeed;
>>>>> +    sd-uhs-sdr12;
>>>>> +    sd-uhs-sdr25;
>>>>> +    sd-uhs-sdr50;
>>>>> +    sd-uhs-sdr104;
>>>>> +    max-frequency =3D <200000000>;
>>>>> +    disable-wp;
>>>>> +
>>>>> +    cd-gpios =3D <&gpio GPIOC_6 GPIO_ACTIVE_LOW>;
>>>>> +    vmmc-supply =3D <&vcc_card>;
>>>>> +    vqmmc-supply =3D <&vddio_c>;
>>>>> +};
>>>>> +
>>>>> +/*
>>>>> + * EMMC_D4, EMMC_D5, EMMC_D6 and EMMC_D7 pins are shared between SPI=
 NOR CS
>>>>> + * and eMMC Data 4 to 7 pins.
>>>>> + * Replace emmc_data_8b_pins to emmc_data_4b_pins from sd_emmc_c pin=
ctrl-0,
>>>>> + * and change bus-width to 4 then spifc can be enabled.
>>>>> + */
>>>>> +&sd_emmc_c {
>>>>> +    status =3D "okay";
>>>>> +    pinctrl-0 =3D <&emmc_ctrl_pins>, <&emmc_data_8b_pins>, <&emmc_ds=
_pins>,
>>>>> +                <&spi_cs_disable_pins>;
>>>>> +    pinctrl-1 =3D <&emmc_clk_gate_pins>;
>>>>> +    pinctrl-names =3D "default", "clk-gate";
>>>>> +
>>>>> +    bus-width =3D <8>;
>>>>> +    cap-mmc-highspeed;
>>>>> +    mmc-hs200-1_8v;
>>>>> +    max-frequency =3D <200000000>;
>>>>> +    disable-wp;
>>>>> +
>>>>> +    mmc-pwrseq =3D <&emmc_pwrseq>;
>>>>> +    vmmc-supply =3D <&vcc_3v3>;
>>>>> +    vqmmc-supply =3D <&flash_1v8>;
>>>>> +};
>>>>> +
>>>>> +&spifc {
>>>>> +    status =3D "disabled";
>>>>> +    pinctrl-0 =3D <&nor_pins>;
>>>>> +    pinctrl-names =3D "default";
>>>>> +    cs-gpios =3D <&gpio BOOT_14 GPIO_ACTIVE_LOW>;
>>>>> +
>>>>> +    w25lq128d: flash@0 {
>>>>> +            compatible =3D "jedec,spi-nor";
>>>>> +            reg =3D <0>;
>>>>> +            #address-cells =3D <1>;
>>>>> +            #size-cells =3D <1>;
>>>>> +            spi-max-frequency =3D <80000000>;
>>>>> +    };
>>>>> +};
>>>>> +
>>>>> +&tdmif_a {
>>>>> +    status =3D "okay";
>>>>> +};
>>>>> +
>>>>> +&tdmif_b {
>>>>> +    status =3D "okay";
>>>>> +};
>>>>> +
>>>>> +&tdmif_c {
>>>>> +    status =3D "okay";
>>>>> +};
>>>>> +
>>>>> +&tdmin_a {
>>>>> +    status =3D "okay";
>>>>> +};
>>>>> +
>>>>> +&tdmin_b {
>>>>> +    status =3D "okay";
>>>>> +};
>>>>> +
>>>>> +&tdmin_c {
>>>>> +    status =3D "okay";
>>>>> +};
>>>>> +
>>>>> +&tdmout_a {
>>>>> +    status =3D "okay";
>>>>> +};
>>>>> +
>>>>> +&tdmout_b {
>>>>> +    status =3D "okay";
>>>>> +};
>>>>> +
>>>>> +&tdmout_c {
>>>>> +    status =3D "okay";
>>>>> +};
>>>>> +
>>>>> +&toacodec {
>>>>> +    status =3D "okay";
>>>>> +};
>>>>> +
>>>>> +&toddr_a {
>>>>> +    status =3D "okay";
>>>>> +};
>>>>> +
>>>>> +&toddr_b {
>>>>> +    status =3D "okay";
>>>>> +};
>>>>> +
>>>>> +&toddr_c {
>>>>> +    status =3D "okay";
>>>>> +};
>>>>> +
>>>>> +&tohdmitx {
>>>>> +    status =3D "okay";
>>>>> +};
>>>>> +
>>>>> +&uart_AO {
>>>>> +    status =3D "okay";
>>>>> +    pinctrl-0 =3D <&uart_ao_a_pins>;
>>>>> +    pinctrl-names =3D "default";
>>>>> +};
>>>>> +
>>>>> +&usb2_phy1 {
>>>>> +    phy-supply =3D <&dc_in>;
>>>>> +};
>>>>> +
>>>>> +&usb3_pcie_phy {
>>>>> +    #address-cells =3D <1>;
>>>>> +    #size-cells =3D <0>;
>>>>> +    phy-supply =3D <&vcc_5v>;
>>>>> +
>>>>> +    hub: hub@1 {
>>>>> +            compatible =3D "usb5e3,626";
>>>>> +            reg =3D <1>;
>>>>> +            reset-gpios =3D <&gpio GPIOC_7 (GPIO_ACTIVE_LOW | GPIO_O=
PEN_DRAIN)>;
>>>>> +    };
>>>>=20
>>>> Not sure the PHY is the right place to put the USB HUB,
>>>> and it's probable the HUB is connected to both the USB2 and USB3 lines
>>>=20
>>> It is connected to the USB3.0 only
>>=20
>> https://drive.google.com/file/d/17WNK9m8VZ9CfS7GMiTLdq1zHsmHR4OcV/view
>>=20
>> USBHOST_A_DM and USBHOST_A_DP are connected to the USB 3 hub DM0 and DP0.
>> Not sure if this counts?
>>=20
>>>=20
>>>> so you should have both USB IDs in DT like it'd done for the Odroid-C4:
>>>>=20
>>>> / {
>>>> ...
>>>>         /* USB hub supports both USB 2.0 and USB 3.0 root hub */
>>>>         usb-hub {
>>>>                 dr_mode =3D "host";
>>>>                 #address-cells =3D <1>;
>>>>                 #size-cells =3D <0>;
>>>>=20
>>>>                 /* 2.0 hub on port 1 */
>>>>                 hub_2_0: hub@1 {
>>>>                         compatible =3D "usb2109,2817";
>>>>                         reg =3D <1>;
>>>>                         peer-hub =3D <&hub_3_0>;
>>>>                         reset-gpios =3D <&gpio GPIOH_4 GPIO_ACTIVE_LOW=
>;
>>>>                         vdd-supply =3D <&vcc_5v>;
>>>>                 };
>>>>=20
>>>>                 /* 3.1 hub on port 4 */
>>>>                 hub_3_0: hub@2 {
>>>>                         compatible =3D "usb2109,817";
>>>>                         reg =3D <2>;
>>>>                         peer-hub =3D <&hub_2_0>;
>>>>                         reset-gpios =3D <&gpio GPIOH_4 GPIO_ACTIVE_LOW=
>;
>>>>                         vdd-supply =3D <&vcc_5v>;
>>>>                 };
>>>>         };
>>>> ...
>>>> };
>>>>=20
>>>> if it only has a single USB ID, then it should go under the dwc3 node.
>>>=20
>>> The usb controller is connected to the PHY and what's coming out of the=
 PHY
>>> goes to the hub. It seems logical to hub the hub under it.
>>>=20
>>> Why bypass the PHY ?
>>>=20
>>>>=20
>>>>> +};
>>>>> +
>>>>> +&usb {
>>>>> +    status =3D "okay";
>>>>> +};
>>>>> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-s905d3-libretech-c=
c.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-s905d3-libretech-cc.dts
>>>>> new file mode 100644
>>>>> index 000000000000..077e7506ce4f
>>>>> --- /dev/null
>>>>> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-s905d3-libretech-cc.dts
>>>>> @@ -0,0 +1,89 @@
>>>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>>>> +/*
>>>>> + * Copyright (c) 2023 BayLibre, SAS.
>>>>> + * Author: Jerome Brunet <jbrunet@baylibre.com>
>>>>> + */
>>>>> +
>>>>> +/dts-v1/;
>>>>> +
>>>>> +#include <dt-bindings/clock/g12a-clkc.h>
>>>>> +#include "meson-sm1.dtsi"
>>>>> +#include "meson-libretech-cottonwood.dtsi"
>>>>> +
>>>>> +/ {
>>>>> +    compatible =3D "libretech,aml-s905d3-cc", "amlogic,sm1";
>>>>> +    model =3D "Libre Computer AML-S905D3-CC Solitude";
>>>>> +
>>>>> +    sound {
>>>>> +            model =3D "Solitude";
>>>>> +            audio-routing =3D "TDMOUT_A IN 0", "FRDDR_A OUT 0",
>>>>> +                            "TDMOUT_A IN 1", "FRDDR_B OUT 0",
>>>>> +                            "TDMOUT_A IN 2", "FRDDR_C OUT 0",
>>>>> +                            "TDM_A Playback", "TDMOUT_A OUT",
>>>>> +                            "TDMOUT_B IN 0", "FRDDR_A OUT 1",
>>>>> +                            "TDMOUT_B IN 1", "FRDDR_B OUT 1",
>>>>> +                            "TDMOUT_B IN 2", "FRDDR_C OUT 1",
>>>>> +                            "TDM_B Playback", "TDMOUT_B OUT",
>>>>> +                            "TDMOUT_C IN 0", "FRDDR_A OUT 2",
>>>>> +                            "TDMOUT_C IN 1", "FRDDR_B OUT 2",
>>>>> +                            "TDMOUT_C IN 2", "FRDDR_C OUT 2",
>>>>> +                            "TDM_C Playback", "TDMOUT_C OUT",
>>>>> +                            "TDMIN_A IN 0", "TDM_A Capture",
>>>>> +                            "TDMIN_B IN 0", "TDM_A Capture",
>>>>> +                            "TDMIN_C IN 0", "TDM_A Capture",
>>>>> +                            "TDMIN_A IN 13", "TDM_A Loopback",
>>>>> +                            "TDMIN_B IN 13", "TDM_A Loopback",
>>>>> +                            "TDMIN_C IN 13", "TDM_A Loopback",
>>>>> +                            "TDMIN_A IN 1", "TDM_B Capture",
>>>>> +                            "TDMIN_B IN 1", "TDM_B Capture",
>>>>> +                            "TDMIN_C IN 1", "TDM_B Capture",
>>>>> +                            "TDMIN_A IN 14", "TDM_B Loopback",
>>>>> +                            "TDMIN_B IN 14", "TDM_B Loopback",
>>>>> +                            "TDMIN_C IN 14", "TDM_B Loopback",
>>>>> +                            "TDMIN_A IN 2", "TDM_C Capture",
>>>>> +                            "TDMIN_B IN 2", "TDM_C Capture",
>>>>> +                            "TDMIN_C IN 2", "TDM_C Capture",
>>>>> +                            "TDMIN_A IN 15", "TDM_C Loopback",
>>>>> +                            "TDMIN_B IN 15", "TDM_C Loopback",
>>>>> +                            "TDMIN_C IN 15", "TDM_C Loopback",
>>>>> +                            "TODDR_A IN 0", "TDMIN_A OUT",
>>>>> +                            "TODDR_B IN 0", "TDMIN_A OUT",
>>>>> +                            "TODDR_C IN 0", "TDMIN_A OUT",
>>>>> +                            "TODDR_A IN 1", "TDMIN_B OUT",
>>>>> +                            "TODDR_B IN 1", "TDMIN_B OUT",
>>>>> +                            "TODDR_C IN 1", "TDMIN_B OUT",
>>>>> +                            "TODDR_A IN 2", "TDMIN_C OUT",
>>>>> +                            "TODDR_B IN 2", "TDMIN_C OUT",
>>>>> +                            "TODDR_C IN 2", "TDMIN_C OUT",
>>>>> +                            "Lineout", "ACODEC LOLP",
>>>>> +                            "Lineout", "ACODEC LORP";
>>>>> +    };
>>>>> +};
>>>>> +
>>>>> +&cpu0 {
>>>>> +    cpu-supply =3D <&vddcpu_b>;
>>>>> +    operating-points-v2 =3D <&cpu_opp_table>;
>>>>> +    clocks =3D <&clkc CLKID_CPU_CLK>;
>>>>> +    clock-latency =3D <50000>;
>>>>> +};
>>>>> +
>>>>> +&cpu1 {
>>>>> +    cpu-supply =3D <&vddcpu_b>;
>>>>> +    operating-points-v2 =3D <&cpu_opp_table>;
>>>>> +    clocks =3D <&clkc CLKID_CPU1_CLK>;
>>>>> +    clock-latency =3D <50000>;
>>>>> +};
>>>>> +
>>>>> +&cpu2 {
>>>>> +    cpu-supply =3D <&vddcpu_b>;
>>>>> +    operating-points-v2 =3D <&cpu_opp_table>;
>>>>> +    clocks =3D <&clkc CLKID_CPU2_CLK>;
>>>>> +    clock-latency =3D <50000>;
>>>>> +};
>>>>> +
>>>>> +&cpu3 {
>>>>> +    cpu-supply =3D <&vddcpu_b>;
>>>>> +    operating-points-v2 =3D <&cpu_opp_table>;
>>>>> +    clocks =3D <&clkc CLKID_CPU3_CLK>;
>>>>> +    clock-latency =3D <50000>;
>>>>> +};
>>>>=20
>>>> Apart that, it looks fine,
>>>>=20
>>>>=20
>>>> Thanks,
>>>> Neil
>>>=20
>>>=20
>>> _______________________________________________
>>> linux-amlogic mailing list
>>> linux-amlogic@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/linux-amlogic
>>=20
>> _______________________________________________
>> linux-amlogic mailing list
>> linux-amlogic@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-amlogic


