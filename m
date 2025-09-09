Return-Path: <devicetree+bounces-214775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BA806B4A580
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 10:37:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 624C2160762
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 08:37:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ADEA2494FE;
	Tue,  9 Sep 2025 08:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qV0h+0sf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D1F1D514B
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 08:37:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757407077; cv=none; b=hOu+8LR6PQZUZGLZHQqqdJbvPnRtVqxLqbWatlRk3oa/havBcwl5CpBlL4w0K3G63639V/J05em4oovrykasvqwWKqXCl7bcTLt9LAor5o+Q6u8VvBu6PVRwQbSMsgsoIKzMYyzC7us7rCNhCXFibLwCwlwRQ80L7Tu4+JoDVXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757407077; c=relaxed/simple;
	bh=0D9zPGqjWWZl+QOHnnAWgsHVUD2gzmiemRgdPYNgRh0=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=mutm0XYO6U0wPv9LfMbtsNMlbz74LIn+seAGgL8Lyv6NkFleaQv8gis96UlX5LqGxQ6HmTrcD8hBlZge1SPRGmnkxh4v/ZdXpSpzyJ3oEMh6IU0KQHPsgmdWCyvAs21+BUcUDaomooMClSWrPjAM8aa22VB4WkEyZLTpYWrPNxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=qV0h+0sf; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-45de6490e74so17584955e9.2
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 01:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757407074; x=1758011874; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FPzxhl5A2vCjE+tX3cc2Xu+QNXbQb+GYtT6YGGU4Vz8=;
        b=qV0h+0sfUEjDWEfPIqWiA1jJZIOcEBEA+7FwY+xuz8sfqRU5aPNKsaeX2XCpl0Jk6Z
         DMQ+iv1WBS75ZwueLQzhwJyu/BwLmC/+fo71DNRwGDaTnvvsTule1+KCqM8Li+ZxAjvI
         3J3wjfHMJ9vp7END0UfaeuZ5Mf586WAkOfJAyrSc1HPjhPM/cnA5uZwS+skh434f18dA
         AGd1qI5EKgBe2HzyeMgTCxoM89Kg9whpxeoXw65LMBG/I2tkqDAmgX2ZbnSrXq7YIYlL
         9QVd/NiRQTUoZQEtm5Jt8ukFLBrJumwSBH47BQAY8ZbZvrb/KUbd6+HugHM4D2QY5gFB
         T0fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757407074; x=1758011874;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FPzxhl5A2vCjE+tX3cc2Xu+QNXbQb+GYtT6YGGU4Vz8=;
        b=Ov+4K9NOZoWN/+GpS2J1ZBnCLmpyjwdm2wWKySnJ9ba1I1Mxhv2jNroWm9j2dMLhGr
         RyRyjtJtJfVGAkitZgXXx/CNVpeQ6wvH9IB5qN7OcFsTtkjhVvH5ReUQLxf4oirrX0Z3
         j2h7b/Scibivit3Bi2sJQ0yWuaB5Q9sOAlr4mKs35p8yGuW6MCQ+wvmdtsxg+AwH3z3K
         EfLdHiUytE+WjzJNOBLzcf+q3fd/4NyUZRzWavyslLDyvFD1mNQRCwCbziv1tLPjXwrW
         QLBe4pQOzgd/kYFiA2+7eVzAPlO+8sEhk689WlybAuK9X94LzaxxQiu52SmE+isjt9Ql
         fO6g==
X-Forwarded-Encrypted: i=1; AJvYcCWFJYS5P54yN0ybCjhCgFXz+OvBiwmDrB06vwm+xSm/s1eYUStu5WTCOfG4abD47URRK1ILrA/MLLPk@vger.kernel.org
X-Gm-Message-State: AOJu0YyhDw6U1t9iCWiEm2bhXzmhdIZ9l/aVIKEI8ibmgIe0ZHMmlhbj
	9elXoqp279PokRI1UuxYHgZppVMACIbidmOIlICTGVBxLGXPKmb4Mugvm01vPGzbKyE=
X-Gm-Gg: ASbGncvf+hgbhb77zq9CWkn/H6DaYeGFxYMiYrkjicnOUlblcNV27W+94v3k9Wx1KwP
	3RWaCt3HSrvUUYBk5YbBNm4ObfnQENy9tnprlJD1bHe88F/gUO1JM/6UZ4W7wtDMvM1vJRXF0o4
	r0c2dfhrs/dg1CMs6nZkYL4yKVUplucANAGwkdlknuSWiMWAphwSaJGJWACU1+N9bjYqQqo73ZA
	fP1oZ2utOJ1HvLVVjDA4i4qBNrW6yZNbjz5NTNVtbu9tA5lsSTDsQbiD/K+U6LRdYPet7biQwlq
	Key3E0iHBDsYCyPpHHO/ZYxEUbO0kx08zkJ04KhCy3GCjCHqP5q4kokY1VfrCe/Odk1ceGY/tZp
	WpOakHBnN/JlNCUr2KhyWRKrgdA==
X-Google-Smtp-Source: AGHT+IGFY+CbQVY2RNO5FrloUQSNGkLpTLZZd3Iw5vqTDy31kdS591iFBn0tWIOYy70yOYW8CLpAlg==
X-Received: by 2002:a05:6000:2385:b0:3ca:a70d:5710 with SMTP id ffacd0b85a97d-3e64bedfe82mr7375351f8f.41.1757407073557;
        Tue, 09 Sep 2025 01:37:53 -0700 (PDT)
Received: from localhost ([195.52.61.108])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3e7521ca1c1sm1728849f8f.24.2025.09.09.01.37.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 01:37:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=4856b23f253d4ec58fd417d6be2d91cf025155c02cab64c8d8f827067e17;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Tue, 09 Sep 2025 10:37:47 +0200
Message-Id: <DCO4T9E3SGQ5.1J2ARMXFB9ONJ@baylibre.com>
Subject: Re: [PATCH 1/3] arm64: dts: ti: k3-am62x-sk-common: Enable Main
 UART wakeup
From: "Markus Schneider-Pargmann" <msp@baylibre.com>
To: "Markus Schneider-Pargmann" <msp@baylibre.com>, "Kendall Willis"
 <k-willis@ti.com>, <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Cc: <d-gole@ti.com>, <vishalm@ti.com>, <sebin.francis@ti.com>,
 <khilman@baylibre.com>, <a-kaur@ti.com>
X-Mailer: aerc 0.20.1
References: <20250904212827.3730314-1-k-willis@ti.com>
 <20250904212827.3730314-2-k-willis@ti.com>
 <DCO4RGJBMTRM.1XNHG5EHBPS24@baylibre.com>
In-Reply-To: <DCO4RGJBMTRM.1XNHG5EHBPS24@baylibre.com>

--4856b23f253d4ec58fd417d6be2d91cf025155c02cab64c8d8f827067e17
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Tue Sep 9, 2025 at 10:35 AM CEST, Markus Schneider-Pargmann wrote:
> On Thu Sep 4, 2025 at 11:28 PM CEST, Kendall Willis wrote:
>> The Main UART can resume from suspend to RAM states when PIN_WKUP_EN
>> is enabled. Add the necessary pins needed to wakeup the system. Add the
>> system idle states that the Main UART can wakeup the system from.
>>
>> Signed-off-by: Kendall Willis <k-willis@ti.com>
>> ---
>>  .../arm64/boot/dts/ti/k3-am62x-sk-common.dtsi | 24 +++++++++++++++----
>>  1 file changed, 20 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi b/arch/arm64=
/boot/dts/ti/k3-am62x-sk-common.dtsi
>> index 13e1d36123d51..72801cf890d20 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-am62x-sk-common.dtsi
>> @@ -163,14 +163,26 @@ &phy_gmii_sel {
>> =20
>>  &main_pmx0 {
>>  	/* First pad number is ALW package and second is AMC package */
>> -	main_uart0_pins_default: main-uart0-default-pins {
>> +	main_uart0_tx_pins_default: main-uart0-tx-default-pins {
>>  		bootph-all;
>>  		pinctrl-single,pins =3D <
>> -			AM62X_IOPAD(0x1c8, PIN_INPUT, 0) /* (D14/A13) UART0_RXD */
>>  			AM62X_IOPAD(0x1cc, PIN_OUTPUT, 0) /* (E14/E11) UART0_TXD */
>>  		>;
>>  	};
>> =20
>> +	main_uart0_rx_pins_default: main-uart0-rx-default-pins {
>> +		bootph-all;
>> +		pinctrl-single,pins =3D <
>> +			AM62X_IOPAD(0x1c8, PIN_INPUT, 0) /* (D14/A13) UART0_RXD */
>> +		>;
>> +	};
>> +
>> +	main_uart0_rx_pins_wakeup: main-uart0-rx-wakeup-pins {
>> +		pinctrl-single,pins =3D <
>> +			AM62X_IOPAD(0x1c8, PIN_INPUT | PIN_WKUP_EN, 0) /* (D14/A13) UART0_RX=
D */
>> +		>;
>> +	};
>> +
>>  	main_uart1_pins_default: main-uart1-default-pins {
>>  		bootph-pre-ram;
>>  		pinctrl-single,pins =3D <
>> @@ -342,8 +354,12 @@ &wkup_uart0 {
>>  &main_uart0 {
>>  	bootph-all;
>>  	status =3D "okay";
>> -	pinctrl-names =3D "default";
>> -	pinctrl-0 =3D <&main_uart0_pins_default>;
>> +	pinctrl-names =3D "default", "wakeup";
>
> I think you may need to add this to the DT binding of the uart device
> as well.

Nevermind, I just saw your other series, can you please mention the
other series as a dependency in the cover letter?

>
> Best
> Markus
>
>> +	pinctrl-0 =3D <&main_uart0_tx_pins_default>, <&main_uart0_rx_pins_defa=
ult>;
>> +	pinctrl-1 =3D <&main_uart0_tx_pins_default>, <&main_uart0_rx_pins_wake=
up>;
>> +	wakeup-source =3D <&system_deep_sleep>,
>> +			<&system_mcu_only>,
>> +			<&system_standby>;
>>  };
>> =20
>>  &main_uart1 {


--4856b23f253d4ec58fd417d6be2d91cf025155c02cab64c8d8f827067e17
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iKMEABYKAEsWIQSJYVVm/x+5xmOiprOFwVZpkBVKUwUCaL/nWxsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMSwyLDIRHG1zcEBiYXlsaWJyZS5jb20ACgkQhcFWaZAVSlMC
ggD+KJ4+mIFOxqZ/OOfUILmagchKuJNiUOwdInV0goSql4sBAJYAIM5L0vr0Eqqo
w1Qatmm1+IfunotaRO+Sd8q8eUUB
=1rxv
-----END PGP SIGNATURE-----

--4856b23f253d4ec58fd417d6be2d91cf025155c02cab64c8d8f827067e17--

