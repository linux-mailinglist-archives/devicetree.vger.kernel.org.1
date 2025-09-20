Return-Path: <devicetree+bounces-219598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DB3B8CE66
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 20:02:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6AE6A7B42F9
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 18:01:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F0BD2288C6;
	Sat, 20 Sep 2025 18:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="O2opIBqe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87BC5F9EC
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 18:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758391369; cv=none; b=sJ7o34psDCHlA+WbTvDDe3zQfDt9XwBUhBvp1hU2Dpt9lzrRl93DzbqQbr1bWaP604HkGPtgetiuZG/12QFSmZpyTdf2TNf+rt3ylc0MiCi72Ca0venFwyCeHAszMTmiND1A1iA7pn2KNrAlbF79lx9w/A7jSwxh7WjCFSVovlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758391369; c=relaxed/simple;
	bh=vNzlM1+uldR3GR03lrv5Hb+eyrK5yBBZ4NCVSo6sEE8=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=EOIv+vNw9Nf7OX2eiXWyodDw9Epyirtoyg2MVLvfjPUDiILXgtxjtrqflEuxBulV+a/rLTt57CAxwEJ3bnbQEY3ibNWh1lM2rf6JjYS8jxxN+MAliDuy4xJTEW0wjaCWYd9Otd4IvZhms9yRwLvLpuDbeTC0djgshv5XJtPKpfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=O2opIBqe; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-b553c804615so275098a12.0
        for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 11:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758391367; x=1758996167; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kK6gdymZIwc9poT/IoegtWOD+uKcHWv6G1pOTAAibsg=;
        b=O2opIBqexJ5hobnYZm7dDmx08mTJrXkmAwIt9X0Q8WhXukCgPX6iWdYNbGMk+yn3le
         pZop7OO7kKCtggDnqOFnZPKjmv80X2fN+7PQKObfAycHPe9n6OSmT/L2OsNBrUGBo1yq
         G27HryeOmPITwB3qTwfNt04e8fOPhNd5N0U1WHD4n3j1B0boh+LWLXTcPRtD794DviO6
         33LMEG0DYoK180EMzzbOmQPQ6AvGUaVMZtTbJ2BA0sBPBRAbv+8PZeUxuhm2tFIiQdQe
         rdK1ecsQM2hvxPzfJ012Bg3uLSxD/SF7LwaHF/twMVZ+MrI9vlkkg13LcQe51ZjNvPVC
         eXsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758391367; x=1758996167;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kK6gdymZIwc9poT/IoegtWOD+uKcHWv6G1pOTAAibsg=;
        b=AF4D4JhqdvVozOtOPitGhCPiKAkdSj0GWt7sAsPj89IsZagKJUhYoYgxeoEo/ncm9o
         RpSldsyFWX0epzir3Ywu+lOz4DOPGFXbctqbN3KbecUoatS5yU+lqHLvQL0hAUDd5/DT
         z3AnlX9stQlTNjDTcBZ/5HOFhAp7rU9m7F/aVBO8zXQqGSDehZGH77ANNk/OeDheBj1Q
         CIRhkrltf07q47hV1+iClnH5yY95YXjokEV/E/xrgcPXwILSGXgwusbKFvAHDFU6M8xt
         z/Ef3ev/F0rie3pSqxysFerj12M9pyjYxXPlYdrATX5clgpQJB0ZMm6ibANP2Krw5yh2
         h2GA==
X-Forwarded-Encrypted: i=1; AJvYcCUa4JJ6E57uCH1kygKidbZN6pEBphdxDo1VZCJ+66N9+5gluKt52+m0ynqaU7lJnLTe069NS7f3h7pf@vger.kernel.org
X-Gm-Message-State: AOJu0YxxqqGGE9RMLfCuHg7klD4snonUsxztAU6Mp+tFbpZqAHIuP8eX
	gboAoT8zzy1OT6b9beYrmMtiOJX865vA2+q+Gm4IbVvUjOBbyn9yWqADaKUbbcUc
X-Gm-Gg: ASbGnctBDTjTMYHY3tG4vyQ+ZVqpNgZsPK8ysZqaTIpX2d0b89BLL2glrSGa3S7mke8
	rbIwvOhPEw002NQ0UkOdwqotVnb5P7u8XUER0RwuD2FF+A7L/r+kqe8+5T0T9YoftRONST0G1Ft
	DjDltI0gG2BHs3GMZjjNZpdbhVe3aoKW8JN3T0uXYRBmemMdVE4ILzwHwQl1ihchzErzaen1zS2
	yh28Mj9OXPCib1ND61ZSK3eRKM3IejWnxegC6TNGAO8t9wE7fIgahwfyGmYxnWB/Ab5/1x+oZAp
	iehVSUTU918KndjpFTofZn+U3XDm/VyQWKRFYG9fxIjpD1Ec8zfK57EcIc+hQNngbdbv/iDLvxM
	yoYuLrGJ65ZZ+RsutZKLgP9Dzxif91fA+
X-Google-Smtp-Source: AGHT+IFp6eWlmg8WSXqzKC/ZwpZ4bfPJ5EFKDbuMmDmSFcEI8h/Ve/sdTRdeV0vJtSBr/ZKe/FrXJw==
X-Received: by 2002:a05:6a20:2449:b0:24e:e270:2f5d with SMTP id adf61e73a8af0-29271269db9mr11740772637.43.1758391366780;
        Sat, 20 Sep 2025 11:02:46 -0700 (PDT)
Received: from ehlo.thunderbird.net ([191.193.70.152])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b5541f0374csm251586a12.49.2025.09.20.11.02.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Sep 2025 11:02:46 -0700 (PDT)
Date: Sat, 20 Sep 2025 15:02:42 -0300
From: =?ISO-8859-1?Q?Eric_Gon=E7alves?= <ghatto404@gmail.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
CC: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/5] arm64: dts: qcom: r0q: add gpio keys
User-Agent: Thunderbird for Android
In-Reply-To: <qiiuezocvxvj5bhrr77v6o2amaaaepdx54pqoewvhtnxce5ccz@g7bhkrb6a4pd>
References: <20250920014637.38175-1-ghatto404@gmail.com> <20250920014637.38175-2-ghatto404@gmail.com> <qiiuezocvxvj5bhrr77v6o2amaaaepdx54pqoewvhtnxce5ccz@g7bhkrb6a4pd>
Message-ID: <5436E420-E459-4E47-9752-EF80F550FA6F@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable



On September 20, 2025 12:45:27 PM GMT-03:00, Dmitry Baryshkov <dmitry=2Eba=
ryshkov@oss=2Equalcomm=2Ecom> wrote:
>On Sat, Sep 20, 2025 at 01:46:33AM +0000, Eric Gon=C3=A7alves wrote:
>> Add GPIO keys support to Samsung Galaxy S22 (r0q)=2E
>>=20
>> Signed-off-by: Eric Gon=C3=A7alves <ghatto404@gmail=2Ecom>
>> ---
>>  =2E=2E=2E/boot/dts/qcom/sm8450-samsung-r0q=2Edts      | 53 +++++++++++=
++++----
>>  1 file changed, 44 insertions(+), 9 deletions(-)
>>=20
>> diff --git a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q=2Edts b/arch/a=
rm64/boot/dts/qcom/sm8450-samsung-r0q=2Edts
>> index 880d74ae6032=2E=2E70e953824996 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q=2Edts
>> +++ b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q=2Edts
>> @@ -2,11 +2,12 @@
>> =20
>>  /dts-v1/;
>> =20
>> +#include <dt-bindings/input/linux-event-codes=2Eh>
>>  #include <dt-bindings/regulator/qcom,rpmh-regulator=2Eh>
>> -
>>  #include "sm8450=2Edtsi"
>>  #include "pm8350=2Edtsi"
>>  #include "pm8350c=2Edtsi"
>> +#include "pmk8350=2Edtsi"
>> =20
>>  / {
>>  	model =3D "Samsung Galaxy S22 5G";
>> @@ -28,13 +29,19 @@ framebuffer: framebuffer@b8000000 {
>>  		};
>>  	};
>> =20
>> -	vph_pwr: regulator-vph-pwr {
>> -		compatible =3D "regulator-fixed";
>> -		regulator-name =3D "vph_pwr";
>> -		regulator-min-microvolt =3D <3700000>;
>> -		regulator-max-microvolt =3D <3700000>;
>> -		regulator-always-on;
>> -		regulator-boot-on;
>
>Please don't mix up refactorings and new features=2E Split this patch int=
o
>several=2E
The patch only added gpio-keys node and pon_resin,
pon_pwrkey=2E Do you mean I have to split each button
into separate patches?
>
>> +	gpio-keys {
>> +		compatible =3D "gpio-keys";
>> +		autorepeat;
>> +
>> +		pinctrl-0 =3D <&vol_up_n>;
>> +		pinctrl-names =3D "default";
>> +
>> +		key-vol-up {
>> +			label =3D "Volume Up";
>> +			linux,code =3D <KEY_VOLUMEUP>;
>> +			gpios =3D <&pm8350_gpios 6 GPIO_ACTIVE_LOW>;
>> +			debounce-interval =3D <15>;
>> +		};
>>  	};
>> =20
>>  	reserved-memory {
>> @@ -47,6 +54,15 @@ splash-region@b8000000 {
>>  			no-map;
>>  		};
>>  	};
>> +
>> +	vph_pwr: regulator-vph-pwr {
>> +		compatible =3D "regulator-fixed";
>> +		regulator-name =3D "vph_pwr";
>> +		regulator-min-microvolt =3D <3700000>;
>> +		regulator-max-microvolt =3D <3700000>;
>> +		regulator-always-on;
>> +		regulator-boot-on;
>> +	};
>>  };
>> =20
>>  &apps_rsc {
>> @@ -119,8 +135,27 @@ vreg_l1c_1p8: ldo1 {
>>  	};
>>  };
>> =20
>> +&pm8350_gpios {
>> +	vol_up_n: vol-up-n-state {
>> +		pins =3D "gpio6";
>> +		function =3D "normal";
>> +		power-source =3D <1>;
>> +		input-enable;
>> +	};
>> +};
>> +
>> +&pon_pwrkey {
>> +	status =3D "okay";
>> +};
>> +
>> +&pon_resin {
>> +	linux,code =3D <KEY_VOLUMEDOWN>;
>> +
>> +	status =3D "okay";
>> +};
>> +
>>  &tlmm {
>> -	gpio-reserved-ranges =3D <36 4>; /* SPI (not linked to anything) */
>> +	gpio-reserved-ranges =3D <36 4>; /* SPI (Unused) */
>>  };
>> =20
>>  &usb_1 {
>> --=20
>> 2=2E51=2E0
>>=20
>
Resend because I forgot to CC the mailing lists

