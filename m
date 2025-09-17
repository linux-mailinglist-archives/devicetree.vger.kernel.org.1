Return-Path: <devicetree+bounces-218168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D93B7D670
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:27:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C27234E1275
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 04:09:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F7D32FC00E;
	Wed, 17 Sep 2025 04:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j3ALYzd+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F093F1A9FAE
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 04:09:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758082163; cv=none; b=Ff442fggPGfm7v246ksOdR7TqnqoLXzRSiOLw4dcPagKJFYTVjMM/ul7x+3Isd5dtfKYkskTAWwDg/D/Ig8YWQ45AvGdr5mN7dD/G5GsaE1JvZ/HVhCHIVdt7BaDaAvcXALw60Gsc8leMM8TLl4y1u4llyaEjoOX6XtD63gdzBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758082163; c=relaxed/simple;
	bh=2bvp36KmupZNMGpps/OrSOzUI8/fL5Jg26VYq8D4SCQ=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:Message-ID:
	 MIME-Version:Content-Type; b=KowhQOY9IYjSDxZ4FDp1FzwjT4iadUhFJPL65XTIsd+czbNHYNJpnDr3kN1KaYywU6fBpSMkjWS0TvhxohIwgQUqvlYooDo/bsCjr5TXR3c4dmcBo8kBh8ZBb3ceOYANdNdW2x+46Af5cdzSiuEA6suQAUBv6qANjkOaFvhOOBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j3ALYzd+; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-55f7a34fb35so5683372e87.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 21:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758082158; x=1758686958; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Q/acXbEK2et4Won7Kyik166aN82Qa/n/alnFQdbkk5E=;
        b=j3ALYzd+Jcb9vvj7AyWTJ00G8UlU9HrlgBa4J8x/3solwanhEssZRyKJYc3nBeF/+a
         8jQAY8PGqU2hBhpSHGtC6ip19/zFTANpoxOLkHHNSMAmHMPB1YwnZa9nWkEYKhqrWszo
         nzdIMlj7w0m89rnVhWkqCdxCRXqaMRg9oQn7Vpl9twvScDN2AfYCDFQd62Y5l8mrZBAW
         99qW2dEDM5nq/RP/pEpGiOLtsg4kwoo6cnevr6wBwKVlukIyt/A/4TGB+FPDUN2JrkBi
         U7fGRSCNXlY1Qan4oKsbLrCo8AKwSy05uUBmX75SP2hOW+KFa4NFSPSzB2kJ3eM4vLo1
         soFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758082158; x=1758686958;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q/acXbEK2et4Won7Kyik166aN82Qa/n/alnFQdbkk5E=;
        b=DKz79puXlzs0RIAZE8e2zoZvE+yrU9sz4K5Z/hE7bi80NJZd0NqoDUhy3jenY9ajAW
         LVSy8OPXhQCZiBWE9LOOuEuWT7AJuoMFWD03oNXtA8hXyxqFQulXT2HmEveIgoap2n3G
         sl9Qvbm7NfUjyWJDFBFLAIK4vUh7s+B7HMTROWQPID4yO9wx4KVBIg1R+8BFyaLoAzOH
         +LRbsoI9YtTkmHnyYKRBZKrxWrETVptyCGf7+CUIKpg3CKwJ8Rwvjprm5N+w/fNttaEb
         odeocHP84OZO0d2j4/MkZA34qQL2q7zfgA4DZDEl1v9IVoF2I/sjUT1fi503SyFZsiim
         Ig7Q==
X-Gm-Message-State: AOJu0Yx4fAAGkl3riPMRdrrgZ9X/h8yTr1o70pED5Yq3EEMFcTX/Gyx0
	NtkpSEIrdPs6YrlXK4jbqgB2f7sOWC7tkiYw36x8zLQiwVHbO7Fy4rFFNPI4FA==
X-Gm-Gg: ASbGncu0J6ExMYgJ1S+2hrPNP1j11pm4tI6Gqfv5/DgzcbgcN+EtVfZozTzN0ju5z+V
	F/eSo+oEXMZMT1Wp8NhI/3Tr77ISF6yJlFeRK/xXyC9K9Ip3F2yqVRl7M+LusVnu0Ggg/55HpiR
	j7o9EKowMBZO31+XkLtbm2uKiVODlksczMPO3TAm83toRrNSicRe1z/v0GhJVo+77yZ94ZvA95M
	oM0oKTcxiH/puHbc1kkVlphBnXefPskRyTVKsD22GT4ApMYOkqXvOTVQTU7XPi/+po9/srr7MdH
	zgbzOftcAYHrCu/+HB9Z8wSYmPBAgBe/yPwG4KCuylLgzPZg4JuHlcdPVSAZq3pfoBo0DkywpdA
	RPXN8FVtWkiCO4UZyWaJn
X-Google-Smtp-Source: AGHT+IEIFuayZdeViGaGheXPYMm/8ps877mpBKcVhq8OkNInnOAYSkaIc1jQt5+Wq4pUfsLEPGLoUg==
X-Received: by 2002:a05:6512:6509:b0:571:1bdc:14d9 with SMTP id 2adb3069b0e04-57798943ce3mr200142e87.24.1758082157893;
        Tue, 16 Sep 2025 21:09:17 -0700 (PDT)
Received: from [127.0.0.1] ([178.137.222.126])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e64fa715asm4910278e87.123.2025.09.16.21.09.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 21:09:17 -0700 (PDT)
Date: Wed, 17 Sep 2025 07:09:13 +0300
From: Svyatoslav <clamor95@gmail.com>
To: Mikko Perttunen <mperttunen@nvidia.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Thierry Reding <treding@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>
CC: devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/4] ARM: tegra114: add missing HOST1X device nodes
User-Agent: K-9 Mail for Android
In-Reply-To: <3549625.aeNJFYEL58@senjougahara>
References: <20250827113734.52162-1-clamor95@gmail.com> <20250827113734.52162-3-clamor95@gmail.com> <3549625.aeNJFYEL58@senjougahara>
Message-ID: <FF69608E-EE3A-40E3-A02B-A6BF8FDE4800@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable



17 =D0=B2=D0=B5=D1=80=D0=B5=D1=81=D0=BD=D1=8F 2025=E2=80=AF=D1=80=2E 05:44=
:42 GMT+03:00, Mikko Perttunen <mperttunen@nvidia=2Ecom> =D0=BF=D0=B8=D1=88=
=D0=B5:
>On Wednesday, August 27, 2025 8:37=E2=80=AFPM Svyatoslav Ryhel wrote:
>> Add nodes for devices on the HOST1X bus: VI, EPP, ISP, MSENC and TSEC=
=2E
>>=20
>> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail=2Ecom>
>> ---
>>  arch/arm/boot/dts/nvidia/tegra114=2Edtsi | 64 ++++++++++++++++++++++++=
++
>>  1 file changed, 64 insertions(+)
>>=20
>> diff --git a/arch/arm/boot/dts/nvidia/tegra114=2Edtsi b/arch/arm/boot/d=
ts/nvidia/tegra114=2Edtsi
>> index 4caf2073c556=2E=2E8600a5c52be9 100644
>> --- a/arch/arm/boot/dts/nvidia/tegra114=2Edtsi
>> +++ b/arch/arm/boot/dts/nvidia/tegra114=2Edtsi
>> @@ -47,6 +47,45 @@ host1x@50000000 {
>> =20
>>  		ranges =3D <0x54000000 0x54000000 0x01000000>;
>> =20
>> +		vi@54080000 {
>> +			compatible =3D "nvidia,tegra114-vi";
>> +			reg =3D <0x54080000 0x00040000>;
>> +			interrupts =3D <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks =3D <&tegra_car TEGRA114_CLK_VI>;
>> +			resets =3D <&tegra_car 20>;
>> +			reset-names =3D "vi";
>
>You are adding reset-names here, but in the last patch you're removing it=
 where there's only one reset?

I am not "adding" it, it is present in the existing schema and I am making=
 node accordingly=2E I have no intention to touch schema unless it is absol=
utely necessary=2E

>> +
>> +			iommus =3D <&mc TEGRA_SWGROUP_VI>;
>> +
>> +			status =3D "disabled";
>> +		};
>> +
>> +		epp@540c0000 {
>> +			compatible =3D "nvidia,tegra114-epp";
>> +			reg =3D <0x540c0000 0x00040000>;
>> +			interrupts =3D <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks =3D <&tegra_car TEGRA114_CLK_EPP>;
>> +			resets =3D <&tegra_car TEGRA114_CLK_EPP>;
>> +			reset-names =3D "epp";
>> +
>> +			iommus =3D <&mc TEGRA_SWGROUP_EPP>;
>> +
>> +			status =3D "disabled";
>> +		};
>> +
>> +		isp@54100000 {
>> +			compatible =3D "nvidia,tegra114-isp";
>> +			reg =3D <0x54100000 0x00040000>;
>> +			interrupts =3D <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks =3D <&tegra_car TEGRA114_CLK_ISP>;
>> +			resets =3D <&tegra_car TEGRA114_CLK_ISP>;
>> +			reset-names =3D "isp";
>> +
>> +			iommus =3D <&mc TEGRA_SWGROUP_ISP>;
>> +
>> +			status =3D "disabled";
>> +		};
>> +
>>  		gr2d@54140000 {
>>  			compatible =3D "nvidia,tegra114-gr2d";
>>  			reg =3D <0x54140000 0x00040000>;
>> @@ -149,6 +188,31 @@ dsib: dsi@54400000 {
>>  			#address-cells =3D <1>;
>>  			#size-cells =3D <0>;
>>  		};
>> +
>> +		msenc@544c0000 {
>> +			compatible =3D "nvidia,tegra114-msenc";
>> +			reg =3D <0x544c0000 0x00040000>;
>> +			interrupts =3D <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks =3D <&tegra_car TEGRA114_CLK_MSENC>;
>> +			resets =3D <&tegra_car TEGRA114_CLK_MSENC>;
>> +			reset-names =3D "mpe";
>
>FWIW, I think 'msenc' is the appropriate name to use on Tegra114/Tegra124=
=2E I believe MPE is a remnant from older chips, even if some downstream (a=
nd I guess upstreaming) naming still uses it=2E
>

Same here, I am making those according to schema and I will not touch it i=
f not neceserry=2E

>> +
>> +			iommus =3D <&mc TEGRA_SWGROUP_MSENC>;
>> +
>> +			status =3D "disabled";
>> +		};
>> +
>> +		tsec@54500000 {
>> +			compatible =3D "nvidia,tegra114-tsec";
>> +			reg =3D <0x54500000 0x00040000>;
>> +			interrupts =3D <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks =3D <&tegra_car TEGRA114_CLK_TSEC>;
>> +			resets =3D <&tegra_car TEGRA114_CLK_TSEC>;
>> +
>> +			iommus =3D <&mc TEGRA_SWGROUP_TSEC>;
>> +
>> +			status =3D "disabled";
>> +		};
>>  	};
>> =20
>>  	gic: interrupt-controller@50041000 {
>>=20
>
>
>

