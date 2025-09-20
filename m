Return-Path: <devicetree+bounces-219599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EF64AB8CE72
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 20:04:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CFA354E1125
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 18:04:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85BA6306495;
	Sat, 20 Sep 2025 18:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lYarsMCY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5FAF9EC
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 18:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758391470; cv=none; b=bj4p4ZBltLpbXjIPUBcb+AOP9nenel4pEgXqRFbdb983qe5QMurrgxokRpJ/yBSVly+90DUh7x1yQE/3IgcXyLNsm5IuqWKTiDGiPJArZXWkTqlEgEBzg3je2lEF54Q3lWvD7F2HDBgCzo/bknEAEjU0b7l0VUft+/XQ0MlM+K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758391470; c=relaxed/simple;
	bh=4tlnfib27kjuIoWZqfi44dVrHnKQF8NT22sSeHsQkVI=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=QFSMvI42bCVg/MX6Es6GwDOH8AcJjhYo1KC3bzWDIEVHi9V0g+E4/vJxLR+XtbYneTKEA8o+mbTZuqAcptmedOHHMUMW2JZNGMN+qvPGhqM64DV57ptza8ChoHScaKNsL/ybZqW96AlHamRxOaIpU2NwUOsA1RuTVKcRhDM2FrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lYarsMCY; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-25669596921so32567965ad.1
        for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 11:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758391468; x=1758996268; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xbFzY792ZouMJtV7uIcmYuiGAKGlq9XPmiStNipyVbE=;
        b=lYarsMCYzSWsfDtNvbdZUperw9D48r/aitL9Bs+CxX2GZ7qdaZEwVWAUZ30Utv89VE
         Q+ePHB1oUObsk7NV4Kx8JSOG8gZQixIn+6vOmZazah92unZCpDRMWRFdxxVtWBfcQNVT
         u+nby5oj160uHQV+BdkRvdOyDZwo/qFxvsIPnDi65vVqXE13MvOT/et12+6HNqDvnEQW
         0DBOyGuJDrrYgSdQue5NLoXgYhyfAbHSR2sKiW3T3HrQSvGBNb1ekLW8uTTj62GIM/SQ
         RhOjxLLKZ49OdQ4O1Yv5QfqkpwhcM1VYg+kvhKEDCnpE2FGcdWtF7GNs0ZPRnkZHKzWz
         ETsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758391468; x=1758996268;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xbFzY792ZouMJtV7uIcmYuiGAKGlq9XPmiStNipyVbE=;
        b=j/OY0OKJIyiZmNSVaJMEWCih0Ubj960iJqm8haTESESECDY2UBQEqrvyUfnoU0U9jk
         sCcubC6H0LTeKX1ahWSv/Z3FqvkBBIpmYxoTs+QNqximW1MF5srffCuJqINQ7STvA39Y
         DTyhVLWhT/LhU6gf1hBZDj8Fn5xgc2xzFQGlBcJinWbbmstFLwYVZVtbyYqbNll3brnZ
         nSdT+DJFiT9If7MSXmzVRcOCzz/V23WDzhVaG8LIuEKaP0J/ysoeTTjiu4n9i8KskaYF
         Z73F848sB+mqjw77vMVTNHLnTXqPv1BD4aRhI65kSIKIdse15NhqbypFFIaGjN/8u6Lq
         j1bQ==
X-Forwarded-Encrypted: i=1; AJvYcCWZ9S9SCm4t0b1ifkaygS4/xCKqLToLslS/J6vMNwLyEUhHjRLfPI7jQOxIp8gp18D6ijxf72pmwwvv@vger.kernel.org
X-Gm-Message-State: AOJu0YxCGxCI1H2lSt/ochfi5whiZZP2FecKWdPlhCofb7Yy+mT7MOJv
	Jh6OtkMzSZ7IlGHbQU+OSo33dWu5wwc+9gLgojzUJkriN+MoYnYBtzYo
X-Gm-Gg: ASbGnctNBzOKE1r9WWRM3ttivyjxKe5yfW2v2J8x3iZqbdf0p6qr/4ORvsq/USOhgnP
	w55rdZD0Kd//Ta/cQbBei7+QPLpIRJDyeKj6rM6U6yp3PuhRDLy/oGzKtMaEwT8ORAqA6eGs/nu
	q8cATPB83EC2h7VRgV+o6suMmTwq9FunTl3r54TXo0kD/cW1hjX/zRvqa4aM+r0FuG4Xbf8LPqs
	zd2nweWzgodhehbhG/NmA2xEbBepg0zACtaUCa86br5b/ZAssncA5DvMR2mZY965UY+djb2rrXW
	xsjLbHtiW3SWgubu2fiOAvTz0wLg+BjKaphpoMNDhC/i0h8Yx8Ploq3Y/sLtF7PU9kvaR9xFsT0
	rnB3jUwDSMEdxlEQvJCYY54FSR9nkrIUg
X-Google-Smtp-Source: AGHT+IEpnNSFdb3DDYxlQp/zpH31nLfl753vHvXYDevnTOJD3gAIr4knj1uVbiblHrcXNrdV7FT1BA==
X-Received: by 2002:a17:903:2d0:b0:24c:bc02:788b with SMTP id d9443c01a7336-269ba53c0ebmr101044065ad.44.1758391468341;
        Sat, 20 Sep 2025 11:04:28 -0700 (PDT)
Received: from ehlo.thunderbird.net ([191.193.70.152])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32ed278b065sm11818123a91.29.2025.09.20.11.04.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Sep 2025 11:04:27 -0700 (PDT)
Date: Sat, 20 Sep 2025 15:04:24 -0300
From: =?ISO-8859-1?Q?Eric_Gon=E7alves?= <ghatto404@gmail.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
CC: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/5] arm64: dts: qcom: r0q: enable max77705 PMIC
User-Agent: Thunderbird for Android
In-Reply-To: <uzofi67alw7kkzr5lom73ozghtytdquiigcwsucmut2mi3hvvk@26goz4knd7xk>
References: <20250920014637.38175-1-ghatto404@gmail.com> <20250920014637.38175-4-ghatto404@gmail.com> <uzofi67alw7kkzr5lom73ozghtytdquiigcwsucmut2mi3hvvk@26goz4knd7xk>
Message-ID: <7A9A8218-EE98-4548-A9F6-14DD278D47CD@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable



On September 20, 2025 12:48:55 PM GMT-03:00, Dmitry Baryshkov <dmitry=2Eba=
ryshkov@oss=2Equalcomm=2Ecom> wrote:
>On Sat, Sep 20, 2025 at 01:46:35AM +0000, Eric Gon=C3=A7alves wrote:
>> The Samsung Galaxy S22 uses max77705 as its charger, fuelgauge and hapt=
ic
>> PMIC, enable the fuelgauge and charger for now=2E
>>=20
>> Signed-off-by: Eric Gon=C3=A7alves <ghatto404@gmail=2Ecom>
>> ---
>>  =2E=2E=2E/boot/dts/qcom/sm8450-samsung-r0q=2Edts      | 34 +++++++++++=
++++++++
>>  1 file changed, 34 insertions(+)
>>=20
>> diff --git a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q=2Edts b/arch/a=
rm64/boot/dts/qcom/sm8450-samsung-r0q=2Edts
>> index 7bf56564dfc6=2E=2Ec1b0b21c0ec5 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q=2Edts
>> +++ b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q=2Edts
>> @@ -14,6 +14,16 @@ / {
>>  	compatible =3D "samsung,r0q", "qcom,sm8450";
>>  	chassis-type =3D "handset";
>> =20
>> +	battery: battery {
>> +		compatible =3D "simple-battery";
>> +
>> +		constant-charge-current-max-microamp =3D <2150000>;
>> +		charge-full-design-microamp-hours =3D <3700000>;
>> +		over-voltage-threshold-microvolt =3D <4500000>;
>> +		voltage-min-design-microvolt =3D <3400000>;
>> +		voltage-max-design-microvolt =3D <4350000>;
>> +	};
>> +
>>  	chosen {
>>  		#address-cells =3D <2>;
>>  		#size-cells =3D <2>;
>> @@ -186,6 +196,26 @@ vreg_l11c_3p0: ldo11 {
>>  	};
>>  };
>> =20
>> +&i2c5 {
>> +	status =3D "okay";
>
>Could you please also add 'clock-frequency' for this bus?
Will do, thanks
>
>LGTM otherwise=2E
>
>> +
>> +	max77705_charger: charger@69 {
>> +	    compatible =3D "maxim,max77705-charger";
>> +	    reg =3D <0x69>;
>> +	    monitored-battery =3D <&battery>;
>> +	    interrupt-parent =3D <&tlmm>;
>> +	    interrupts =3D <5 IRQ_TYPE_LEVEL_LOW>;
>> +	};
>> +
>> +	fuel-gauge@36 {
>> +		reg =3D <0x36>;
>> +		compatible =3D "maxim,max77705-battery";
>> +		power-supplies =3D <&max77705_charger>;
>> +		interrupt-parent =3D <&tlmm>;
>> +		interrupts =3D <5 IRQ_TYPE_LEVEL_LOW>;
>> +	};
>> +};
>> +
>>  &pm8350_gpios {
>>  	vol_up_n: vol-up-n-state {
>>  		pins =3D "gpio6";
>> @@ -345,3 +375,7 @@ &usb_1_hsphy {
>> =20
>>  	status =3D "okay";
>>  };
>> +
>> +&qupv3_id_0 {
>> +	status =3D "okay";
>> +};
>> --=20
>> 2=2E51=2E0
>>=20
>

