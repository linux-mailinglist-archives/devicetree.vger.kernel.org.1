Return-Path: <devicetree+bounces-252110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 22689CFAEA9
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 21:25:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 68132302F6AC
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 20:25:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B350F3081B8;
	Tue,  6 Jan 2026 20:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="B4sVgwLT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8A50303C88
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 20:25:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767731144; cv=none; b=cstJwpCa4CBYzHxjoXHJx2Rv9Ao/ZR5FG95817fe9ZCgdIDQFVvyAPPXvtf1kWK1wi5Zx6UGUb9UUp2/CeseM1v8I700B3+D7WiZnriMjDOu/2wTkeUWSc2gLnr2cZGTWtcqNE6e2XaXidTWXDNTH3CK3axiRPB9w0worh2SiO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767731144; c=relaxed/simple;
	bh=4VJiQTxa7PtrsDjtxpG4+7kDp0RAbcK3Jts1P7QEKlc=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=U1f/03xpzipnpmxL5IEHb3bS4BG97/g5WkdD+9UoPMHkD+lhfE0kMMptWo9x1fRS8pdntMX9LgYe/WiqtqucEj/VV9vEJmoEuhWqTdaFzHvH5ELZW2G5/IaXfEmBlzaMFsNs9SD8F9z8fSG91esCZxpddif8OtDY4BPWNyOb75Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=B4sVgwLT; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-42fb5810d39so784466f8f.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 12:25:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1767731139; x=1768335939; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=InpRCJH4Ts9JhFLpum27mQzhd0pB52v3DryP5nM70Ok=;
        b=B4sVgwLTqCaGYDe0ZE0CJO8HhfcDqMvPsoOD6DKmrnPqXHu7+T4Agj26RwT4M79mYc
         UQY3vUY65V1/kIu9FX9+/a+sHdd0VjhKUQZ0YPB+mfQS97/GEMPNqJ2NTTbTM3IH/tew
         70n5aG3tj+qb2La+pNIJ+MGhFCxvtTRI9IGv4sdLulzCyGx9nhixMOBee0gSXrPupMr2
         9Ntf8tk8nWN4FrqTmIE3JRHz7oKOHj32TYCDmObuMCwdiKk31cunhWmQ8mV19z0/lj2H
         uTNlGGtBCPfFVnuvdzElhyC3WDNotocFM6k8HrEbquSg9Q1Lv724SjtCFGhgu6l8qkqC
         6cIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767731139; x=1768335939;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=InpRCJH4Ts9JhFLpum27mQzhd0pB52v3DryP5nM70Ok=;
        b=cRaZhgEkAXOtq0C219C4N8KtyRdQEPSyPZxlqSnAvJ01Nw9In2bjpOl3VQw6g5UwPd
         XLeANfcITW6D0/AEsnysQ7ftV3af24apHuvwmzigJZuNful51aGUclJtT2ph+WE8ZWV1
         FaaDUFUpndfbXQJoGYDQfi1qOeZ7Jmb+tH1VlTqApazCM18JvYVyX5xHITH1ppD4L70Y
         ts4HQwd/OSu0mdD4A2wEyWt02wq1i3vsDGal0GjujojHTKQjA5mBylXMOw1wc5qVcvTo
         CfcAtYot4axPqrCI7h0x0XwDHjDQk3BFcBT97GTqfCX7yD7zvWxUOoyaWH59Xakt5yoM
         Ou7w==
X-Forwarded-Encrypted: i=1; AJvYcCXeyrpfoGq1iNRyS10rBXPAzrcQE2HZw0+DXcxd14ZzLe0imZAIvWUPZ5LC3ZaFl9Vi/4QnglxdMrIT@vger.kernel.org
X-Gm-Message-State: AOJu0YweY1MZprkU0Xp4FPEx16rO0QaoiUpDYlPgAOtr0QR4Cyt8fE4G
	pcZeta9u/+wAgS+R6hc+otMjnyWZWdI2Dx3jogrRSetsi/l/xd6wp73HPjLf5BHDqxI=
X-Gm-Gg: AY/fxX59Y7zO3qSG9V/cgPqMMLkIOdWbq5d1YY17WQURXamEQD/KXICz4YP6vymhUf9
	YDpPahOJHJXQP/7kXkqy/h/Zpcm/DK7bOOcx07ug5nKVcoIndsrzdceImPWJ6zavUPpt3F96uAD
	tKzfL6Nh2kSFOJ/Ap7XGU7bnemI8gqZNIus0DL6E/nQKWvK+b4laKGiPJ/8YCeQr7yyoYBvezKR
	dRte65afKaG8g3Rw8C0o/+E9UGMZKSVf/slU0W0y3vLql2BBou04QfSJcBvMpq03z+R6SkeMVdv
	RFGtdTkrK/JIjHHlx6bYNNXMPDYOLzch76n4R+AT7gnmvcXKW/L/IQrWXnqqioGFAZavdZcrgkX
	/FnK23o86EDXZVwRSSqgkJzmRVa8pMzDlrJiSEjIz64a0Db3D7SDk0BvJWKKqRmMNo1x3bAuDX8
	l7GmJp
X-Google-Smtp-Source: AGHT+IF2eFD4qqiNSfi8TwKianKXVDZdxvtrCaDoHkxKfUBqtaeXICo1xMsMfKjQgmu0rURXgO0oVw==
X-Received: by 2002:a05:6000:2512:b0:431:a50:6e97 with SMTP id ffacd0b85a97d-432c374ff11mr435166f8f.34.1767731139002;
        Tue, 06 Jan 2026 12:25:39 -0800 (PST)
Received: from localhost ([195.52.160.197])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ff0b2sm6200416f8f.42.2026.01.06.12.25.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 12:25:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=5148a380f6f7e57f68a4497ee98a33d6cccc4f9c818445a72768aefddb6f;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Tue, 06 Jan 2026 21:25:29 +0100
Message-Id: <DFHSDXTVL4AU.2OQ9VB9TEJ75G@baylibre.com>
Cc: "Vishal Mahaveer" <vishalm@ti.com>, "Kevin Hilman"
 <khilman@baylibre.com>, "Dhruva Gole" <d-gole@ti.com>, "Sebin Francis"
 <sebin.francis@ti.com>, "Kendall Willis" <k-willis@ti.com>, "Akashdeep
 Kaur" <a-kaur@ti.com>, <linux-arm-kernel@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: ti: k3-am62a7-sk: Disable mmc Schmitt
 Trigger
From: "Markus Schneider-Pargmann" <msp@baylibre.com>
To: "Alexander Sverdlin" <alexander.sverdlin@gmail.com>, "Markus
 Schneider-Pargmann (TI.com)" <msp@baylibre.com>, "Nishanth Menon"
 <nm@ti.com>, "Vignesh Raghavendra" <vigneshr@ti.com>, "Tero Kristo"
 <kristo@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
X-Mailer: aerc 0.21.0
References: <20260106-topic-am62a-mmc-pinctrl-v6-19-next-v1-1-1190ac29aadb@baylibre.com> <979eb1054dbe116c2c8bb9920e94e3a93db5346c.camel@gmail.com>
In-Reply-To: <979eb1054dbe116c2c8bb9920e94e3a93db5346c.camel@gmail.com>

--5148a380f6f7e57f68a4497ee98a33d6cccc4f9c818445a72768aefddb6f
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Alexander,

On Tue Jan 6, 2026 at 6:25 PM CET, Alexander Sverdlin wrote:
> Hi Markus,
>
> I'm sorry my patch has caused regression for your use-case!
>
> I think we would need to discuss this with TI via our FAE, because the ch=
ange
> in question has both been discussed with former FAE and the technical tea=
m
> behind, and adopted in TI SDK.
>
> Or have you already discused this with corresponding TI HW team?
>
> Which hardware is affected, is it the official SK-AM62A-LP?
> Is MMC2 the SD-card?

I only tested my am62a board on u-boot v2026.01. It is a SK-AM62A-LP.
MMC2 is the SD-card and mmc1 in the devicetree.

I am using u-boot's am62ax_evm_r5_defconfig and am62ax_evm_a53_defconfig
as defconfigs.

>
> On Tue, 2026-01-06 at 17:22 +0100, Markus Schneider-Pargmann (TI.com) wro=
te:
>> Remove Schmitt Trigger from mmc pins. With Schmitt Trigger enabled
>> u-boot SPL is not able to read u-boot from mmc:
>>=20
>> =C2=A0=C2=A0=C2=A0 Trying to boot from MMC2
>> =C2=A0=C2=A0=C2=A0 Error reading cluster
>> =C2=A0=C2=A0=C2=A0 spl_load_image_fat: error reading image u-boot.img, e=
rr - -22
>> =C2=A0=C2=A0=C2=A0 Error: -22
>> =C2=A0=C2=A0=C2=A0 SPL: Unsupported Boot Device!
>> =C2=A0=C2=A0=C2=A0 SPL: failed to boot from all boot devices
>> =C2=A0=C2=A0=C2=A0 ### ERROR ### Please RESET the board ###
>>=20
>> I bisected this issue between u-boot v2025.10 and v2026.01 and found the
>> devicetree merge to be the problem. At a closer look I found the
>> k3-pinctrl.h changes. Disabling the Schmitt Trigger fixes the u-boot SPL
>> failure to read from mmc.
>>=20
>> Fixes: 5b272127884b ("arm64: dts: ti: k3-pinctrl: Enable Schmitt Trigger=
 by default")
>> Signed-off-by: Markus Schneider-Pargmann (TI.com) <msp@baylibre.com>
>> ---
>> =C2=A0arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 36 ++++++++++++++++-----=
------------
>> =C2=A01 file changed, 18 insertions(+), 18 deletions(-)
>>=20
>> diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/d=
ts/ti/k3-am62a7-sk.dts
>> index e99bdbc2e0cbdf858f1631096f9c2a086191bab3..9129045c8bbd3a83dba6ff6f=
2148a3624b91b546 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
>> +++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
>> @@ -315,30 +315,30 @@ AM62AX_IOPAD(0x0b4, PIN_INPUT_PULLUP, 1) /* (K24) =
GPMC0_CSn3.I2C2_SDA */
>> =C2=A0
>> =C2=A0	main_mmc0_pins_default: main-mmc0-default-pins {
>> =C2=A0		pinctrl-single,pins =3D <
>> -			AM62AX_IOPAD(0x220, PIN_INPUT, 0) /* (Y3) MMC0_CMD */
>> -			AM62AX_IOPAD(0x218, PIN_INPUT, 0) /* (AB1) MMC0_CLKLB */
>> -			AM62AX_IOPAD(0x21c, PIN_INPUT, 0) /* (AB1) MMC0_CLK */
>
> according to datasheet, MMC0_CLK should have address 0x218 and it's the b=
all AB7.
> MMC0_CLKLB is not present in the datasheet and AB1 is actually VSS. 0x21C=
 address
> is not documented.
>
> Something is not right here...
>
> OK, grepping TRM for CLKLB, one can conclude that 0x21c is actually MMC0_=
CLKLB.
>
> Could you please try to modify 0x21c address only? Does it solve the boot=
 problem?
>
>> -			AM62AX_IOPAD(0x214, PIN_INPUT, 0) /* (AA2) MMC0_DAT0 */
>> -			AM62AX_IOPAD(0x210, PIN_INPUT_PULLUP, 0) /* (AA1) MMC0_DAT1 */
>> -			AM62AX_IOPAD(0x20c, PIN_INPUT_PULLUP, 0) /* (AA3) MMC0_DAT2 */
>> -			AM62AX_IOPAD(0x208, PIN_INPUT_PULLUP, 0) /* (Y4) MMC0_DAT3 */
>> -			AM62AX_IOPAD(0x204, PIN_INPUT_PULLUP, 0) /* (AB2) MMC0_DAT4 */
>> -			AM62AX_IOPAD(0x200, PIN_INPUT_PULLUP, 0) /* (AC1) MMC0_DAT5 */
>> -			AM62AX_IOPAD(0x1fc, PIN_INPUT_PULLUP, 0) /* (AD2) MMC0_DAT6 */
>> -			AM62AX_IOPAD(0x1f8, PIN_INPUT_PULLUP, 0) /* (AC2) MMC0_DAT7 */
>
> All the rest actually have ST enabled on PoR according to TRM and I suppo=
se BootROM
> would have had hard times booting from the affected MMC device if it woul=
d not be
> the correct setting?
>
>> +			AM62AX_IOPAD(0x220, PIN_INPUT_NOST, 0) /* (Y3) MMC0_CMD */
>> +			AM62AX_IOPAD(0x218, PIN_INPUT_NOST, 0) /* (AB1) MMC0_CLKLB */
>> +			AM62AX_IOPAD(0x21c, PIN_INPUT_NOST, 0) /* (AB1) MMC0_CLK */
>> +			AM62AX_IOPAD(0x214, PIN_INPUT_NOST, 0) /* (AA2) MMC0_DAT0 */
>> +			AM62AX_IOPAD(0x210, PIN_INPUT_PULLUP_NOST, 0) /* (AA1) MMC0_DAT1 */
>> +			AM62AX_IOPAD(0x20c, PIN_INPUT_PULLUP_NOST, 0) /* (AA3) MMC0_DAT2 */
>> +			AM62AX_IOPAD(0x208, PIN_INPUT_PULLUP_NOST, 0) /* (Y4) MMC0_DAT3 */
>> +			AM62AX_IOPAD(0x204, PIN_INPUT_PULLUP_NOST, 0) /* (AB2) MMC0_DAT4 */
>> +			AM62AX_IOPAD(0x200, PIN_INPUT_PULLUP_NOST, 0) /* (AC1) MMC0_DAT5 */
>> +			AM62AX_IOPAD(0x1fc, PIN_INPUT_PULLUP_NOST, 0) /* (AD2) MMC0_DAT6 */
>> +			AM62AX_IOPAD(0x1f8, PIN_INPUT_PULLUP_NOST, 0) /* (AC2) MMC0_DAT7 */
>> =C2=A0		>;
>> =C2=A0		bootph-all;
>> =C2=A0	};
>> =C2=A0
>> =C2=A0	main_mmc1_pins_default: main-mmc1-default-pins {
>> =C2=A0		pinctrl-single,pins =3D <
>> -			AM62AX_IOPAD(0x23c, PIN_INPUT, 0) /* (A21) MMC1_CMD */
>> -			AM62AX_IOPAD(0x234, PIN_INPUT, 0) /* (B22) MMC1_CLK */
>> -			AM62AX_IOPAD(0x230, PIN_INPUT, 0) /* (A22) MMC1_DAT0 */
>> -			AM62AX_IOPAD(0x22c, PIN_INPUT, 0) /* (B21) MMC1_DAT1 */
>> -			AM62AX_IOPAD(0x228, PIN_INPUT, 0) /* (C21) MMC1_DAT2 */
>> -			AM62AX_IOPAD(0x224, PIN_INPUT, 0) /* (D22) MMC1_DAT3 */
>> -			AM62AX_IOPAD(0x240, PIN_INPUT, 0) /* (D17) MMC1_SDCD */
>
> All of these have ST enabled on PoR, according to TRM.
>
>> +			AM62AX_IOPAD(0x23c, PIN_INPUT_NOST, 0) /* (A21) MMC1_CMD */
>> +			AM62AX_IOPAD(0x234, PIN_INPUT_NOST, 0) /* (B22) MMC1_CLK */
>> +			AM62AX_IOPAD(0x230, PIN_INPUT_NOST, 0) /* (A22) MMC1_DAT0 */
>> +			AM62AX_IOPAD(0x22c, PIN_INPUT_NOST, 0) /* (B21) MMC1_DAT1 */
>> +			AM62AX_IOPAD(0x228, PIN_INPUT_NOST, 0) /* (C21) MMC1_DAT2 */
>> +			AM62AX_IOPAD(0x224, PIN_INPUT_NOST, 0) /* (D22) MMC1_DAT3 */
>> +			AM62AX_IOPAD(0x240, PIN_INPUT_NOST, 0) /* (D17) MMC1_SDCD */

My board is setup to boot from SD card for easier u-boot testing. So
only the mmc1 is relevant for my setup. I just tested which pins need
NOST here for the boot to work, all DAT pins need the NOST variants,
otherwise it does not boot here. Not sure if this is just my board or it
fails on other boards as well.

Best
Markus


--5148a380f6f7e57f68a4497ee98a33d6cccc4f9c818445a72768aefddb6f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iKMEABYKAEsWIQSJYVVm/x+5xmOiprOFwVZpkBVKUwUCaV1vuRsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMSwyLDIRHG1zcEBiYXlsaWJyZS5jb20ACgkQhcFWaZAVSlNB
7QEA+fNdxGsI7MEgje1RhFzgNhDzAEC+9JsbotuUWDJyF44BAKqWmNM7DgUAdP6H
2khSJFPWlKuRNiBljEo4WVwfei4C
=32OF
-----END PGP SIGNATURE-----

--5148a380f6f7e57f68a4497ee98a33d6cccc4f9c818445a72768aefddb6f--

