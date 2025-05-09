Return-Path: <devicetree+bounces-175366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E943AB0BB8
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 09:32:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3A770189BBFA
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 07:32:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD668221DA8;
	Fri,  9 May 2025 07:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YuEmT79N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1AE520E6F7
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 07:31:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746775915; cv=none; b=HK3+nqIyoYxgORZBhQw61el6jTBKTRxfF8eCCZxGv8F12FJXdWiXZ/yRfowBOq62U84xaAXcyJ9C9tAPLl9bSaCexcwdHSmIA0dDy2BmhA/WAb3lIZyNg3mJ/miNXY/4cLpCgoHbrSAKZOui3QoHZpW2DVJV5Hvtn14EN6GIawI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746775915; c=relaxed/simple;
	bh=IYpWmw9D1wZ91hkZi5sTi8f4M3xDQe0S28DvEhKqlT4=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=Z3YkSO/UaTosmYde2eD5B9X6r3SrtXcZJY45e+NbbCIZ3XXbmaACkyrYnVz302sr/S3qTWWkNKh4K5RjJn6u42WjHzSIgCrpdHdA3EpFFv21iPvK7sjWuOomlwdQzS4bqoQQ/twJavRKiaNzeOSKKPNL+Gma2UtGvQi5BA1CXdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YuEmT79N; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ac2c663a3daso349434766b.2
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 00:31:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746775911; x=1747380711; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tNm4dzYjL0hNtY0TgZJ2Uq8YBkIqeHB8LTvt0QE8KZw=;
        b=YuEmT79Nr2UDQR9mwjKxzHBAa3TVSs3/9Tw/sXtYdwX7FEdLLMIyff3Ov75o/8xYP2
         88oIfmXOr3ok2a/JF6HBdOTWHpT3gVL7Jr2fDyilIjfSy1pLQREkvtxzOMT0i29n5FJN
         B3wkmHCYhxH5ldUdHxRx9rbZG3J7Id1w01Sa1VIPYefEXzXCZI0grmEjsLmzZ5YUh5wH
         yM4uYEosWeIrxYmFANaX+zl7sKq1AmDZI/2mvs1cyk07OAOkHzLuhBjvyaKGnPQ7OgHj
         RLlceDexBFEaMNqn+5JDZ0gTy4xlshaKoVjd5QxcgLuqxiZ7NXkbwwyrubGqHD905mJ7
         QDWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746775911; x=1747380711;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tNm4dzYjL0hNtY0TgZJ2Uq8YBkIqeHB8LTvt0QE8KZw=;
        b=K7SX7fHjLnchFf/V4EsBF/+/F9pH3NvMuulR5nBxbL8a6EeWHX6Ef+lvVM9lp4yrcP
         6bHWgaXEqiuC4hUAn3vmMX7GqE+MdgJhb3Q1bq7mwpQ0ypyHVtDBC/pFglYOsXGG8eRU
         29jL0K+ps+ChLPjO+frJLYJFhAGefhG1w4Ox0VieVrReWaroMAKs6QSgQDYztzUftXok
         KFab+4mvz0Lt+jol76pXsRGsXljHwM+JR2tE73QNZNE0GpWbzkybwK6ys0E8C4Er9fh8
         Zpqj132wpD+EHEMZetE5gi9FM5ex3IH1HPa2mojCZ5Y5APrfQPzsX2zJOE/bINJxKX0i
         6fJg==
X-Forwarded-Encrypted: i=1; AJvYcCXVPE+7c14/s3Xw8wWnFTTvQxqFpMeozvnUYC4ZnMG6UafeQZysdI7NNTcx0Lc03PqK0yaaqMsJj1Xe@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7xIMvUvkM3RwBd1V0CLLMvOpMExOa+WVx0qd1/MTT8llIH6jy
	jl58mG6uWcbWtDhQr08jABx8FUtsb3Kl1OwDAzuy8p/uUfGqeTotufLlLTKSFZw=
X-Gm-Gg: ASbGncs3l6xNOmOzG9QHiAOiorvLiDtITXstl4DQXFKGGVP7fOgDjLS/8Vmz0PEl6gu
	0q/imT8wkUGsI1XYRVh/zAh6hzXPKNcQ0KuYBLP557rEmKVSp5DRBfdg49Ehdj+tLJi6HXDh4AJ
	alDi+uNnbfZ4QT4AIZ5kVeoh0ADorahB8claoJq3stF1yWyHkDgXkOKxcEL6U3rHrZsUaw5ibOZ
	Eig72pA1LiL/C+4wQ9znjqgv4XGuq/2eWCaMgaXFflyyKrSXqa5BwHW53UoV4MCxrpIAY6MbVG8
	7YSUlKbtCB9JR1yCuWU1J48ptCH7Crl0m5Ulerb1iPEYlA==
X-Google-Smtp-Source: AGHT+IEBRTCI9kTr2GaMmpOwf42xSL7WvOji9iBJAETgoGhwFplwSkmVArxI7pFy/yaqzpELkNP5Hg==
X-Received: by 2002:a17:906:4796:b0:ad1:e672:271f with SMTP id a640c23a62f3a-ad218f4ca71mr253684166b.18.1746775911001;
        Fri, 09 May 2025 00:31:51 -0700 (PDT)
Received: from localhost ([2001:4090:a244:802a:8179:d45a:7862:147])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-ad219855beasm107999666b.171.2025.05.09.00.31.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 00:31:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=06cfbbe9f92dcc8b1f71cc9bc0c83b1518c968538f5e87fe30c24b0e071e;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Fri, 09 May 2025 09:31:39 +0200
Message-Id: <D9RGDM0LGOTW.2X74PNAIA5N3F@baylibre.com>
Subject: Re: [PATCH 6/7] arm64: dts: ti: k3-am62a7-sk: Set wakeup-source
 system-states
From: "Markus Schneider-Pargmann" <msp@baylibre.com>
To: "Kendall Willis" <k-willis@ti.com>, "Nishanth Menon" <nm@ti.com>,
 "Vignesh Raghavendra" <vigneshr@ti.com>, "Tero Kristo" <kristo@kernel.org>,
 "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
Cc: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Vishal Mahaveer" <vishalm@ti.com>, "Kevin
 Hilman" <khilman@baylibre.com>, "Dhruva Gole" <d-gole@ti.com>, "Sebin
 Francis" <sebin.francis@ti.com>, "Akashdeep Kaur" <a-kaur@ti.com>
X-Mailer: aerc 0.20.1
References: <20250421-topic-am62-dt-partialio-v6-15-v1-0-6ced30aafddb@baylibre.com> <20250421-topic-am62-dt-partialio-v6-15-v1-6-6ced30aafddb@baylibre.com> <d4f21cdc-bb0c-4c78-aeea-f6e5c75fa5f1@ti.com>
In-Reply-To: <d4f21cdc-bb0c-4c78-aeea-f6e5c75fa5f1@ti.com>

--06cfbbe9f92dcc8b1f71cc9bc0c83b1518c968538f5e87fe30c24b0e071e
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Wed May 7, 2025 at 6:56 PM CEST, Kendall Willis wrote:
> On 4/21/25 03:14, Markus Schneider-Pargmann wrote:
>> The CANUART pins of mcu_mcan0, mcu_mcan1, mcu_uart0 and wkup_uart0 are
>> powered during Partial-IO and IO+DDR and are capable of waking up the
>> system in these states. Specify the states in which these units can do a
>> wakeup on this board.
>>=20
>> Note that the UARTs are not capable of wakeup in Partial-IO because of
>> of a UART mux on the board not being powered during Partial-IO.
>>=20
>> Add pincontrol definitions for mcu_mcan0 and mcu_mcan1 for wakeup from
>> Partial-IO. Add these as wakeup pinctrl entries for both devices.
>>=20
>> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
>> ---
>>   arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 76 +++++++++++++++++++++++++=
++++++++
>>   1 file changed, 76 insertions(+)
>>=20
>> diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/d=
ts/ti/k3-am62a7-sk.dts
>> index 1c9d95696c839a51b607839abb9429a8de6fa620..724d9a6f3c575fe35496fdd9=
e17d6d8e33869f92 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
>> +++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
>> @@ -741,3 +741,79 @@ dpi1_out: endpoint {
>>   		};
>>   	};
>>   };
>> +
>> +&mcu_mcan0 {
>> +	pinctrl-names =3D "default", "wakeup";
>> +	pinctrl-0 =3D <&mcu_mcan0_tx_pins_default>, <&mcu_mcan0_rx_pins_defaul=
t>;
>> +	pinctrl-1 =3D <&mcu_mcan0_tx_pins_default>, <&mcu_mcan0_rx_pins_wakeup=
>;
>> +	wakeup-source =3D <&system_partial_io>,
>> +			<&system_io_ddr>,
>> +			<&system_deep_sleep>,
>> +			<&system_mcu_only>,
>> +			<&system_standby>;
>> +	status =3D "okay";
>> +};
>> +
>> +&mcu_mcan1 {
>> +	pinctrl-names =3D "default", "wakeup";
>> +	pinctrl-0 =3D <&mcu_mcan1_tx_pins_default>, <&mcu_mcan1_rx_pins_defaul=
t>;
>> +	pinctrl-1 =3D <&mcu_mcan1_tx_pins_default>, <&mcu_mcan1_rx_pins_wakeup=
>;
>> +	wakeup-source =3D <&system_partial_io>,
>> +			<&system_io_ddr>,
>> +			<&system_deep_sleep>,
>> +			<&system_mcu_only>,
>> +			<&system_standby>;
>> +	status =3D "okay";
>> +};
>> +
>> +&mcu_uart0 {
>> +	wakeup-source =3D <&system_io_ddr>,
>> +			<&system_deep_sleep>,
>> +			<&system_mcu_only>,
>> +			<&system_standby>;
>> +};
>> +
>> +&wkup_uart0 {
>> +	wakeup-source =3D <&system_io_ddr>,
>> +			<&system_deep_sleep>,
>> +			<&system_mcu_only>,
>> +			<&system_standby>;
>> +};
> Hi Markus,
>
> I noticed wkup_uart0 is already referenced earlier in the dts. Could the=
=20
> wakeup-source property be added into the first reference?
>> +
>> +&mcu_pmx0 {
> Same thing with mcu_pmx0. Is there a reason for separating it from when=
=20
> it was referenced originally?
>> +	mcu_mcan0_tx_pins_default: mcu-mcan0-tx-default-pins {
>> +		pinctrl-single,pins =3D <
>> +			AM62X_IOPAD(0x034, PIN_OUTPUT, 0) /* (D6) MCU_MCAN0_TX */
>> +		>;
>> +	};
>> +
>> +	mcu_mcan0_rx_pins_default: mcu-mcan0-rx-default-pins {
>> +		pinctrl-single,pins =3D <
>> +			AM62X_IOPAD(0x038, PIN_INPUT, 0) /* (B3) MCU_MCAN0_RX */
>> +		>;
>> +	};
>> +
>> +	mcu_mcan0_rx_pins_wakeup: mcu-mcan0-rx-wakeup-pins {
>> +		pinctrl-single,pins =3D <
>> +			AM62X_IOPAD(0x038, PIN_INPUT | WKUP_EN, 0) /* (B3) MCU_MCAN0_RX */
>> +		>;
>> +	};
>> +
>> +	mcu_mcan1_tx_pins_default: mcu-mcan1-tx-default-pins {
>> +		pinctrl-single,pins =3D <
>> +			AM62X_IOPAD(0x03c, PIN_OUTPUT, 0) /* (E5) MCU_MCAN1_TX */
>> +		>;
>> +	};
>> +
>> +	mcu_mcan1_rx_pins_default: mcu-mcan1-rx-default-pins {
>> +		pinctrl-single,pins =3D <
>> +			AM62X_IOPAD(0x040, PIN_INPUT, 0) /* (D4) MCU_MCAN1_RX */
>> +		>;
>> +	};
>> +
>> +	mcu_mcan1_rx_pins_wakeup: mcu-mcan1-rx-wakeup-pins {
>> +		pinctrl-single,pins =3D <
>> +			AM62X_IOPAD(0x040, PIN_INPUT | WKUP_EN, 0) /* (D4) MCU_MCAN1_RX */
>> +		>;
>> +	};
>> +};Additionally, this patch does not apply cleanly to linux-next and nee=
ds=20
> to be fixed and rebased.

Thank you, I will fix your points and rebase once the dt-schema
idle-state-name question is resolved.

Best
Markus

--06cfbbe9f92dcc8b1f71cc9bc0c83b1518c968538f5e87fe30c24b0e071e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iIcEABYKAC8WIQSJYVVm/x+5xmOiprOFwVZpkBVKUwUCaB2vXREcbXNwQGJheWxp
YnJlLmNvbQAKCRCFwVZpkBVKU+IQAP4nYmMI1mFLobgy/oXSnCX2D+tGGACd+6+h
bR5vzYUiagD8CelMTAx7Q4zlt086hjOX+Nk+R4ub5YtvyvU/1iO8rAc=
=Do60
-----END PGP SIGNATURE-----

--06cfbbe9f92dcc8b1f71cc9bc0c83b1518c968538f5e87fe30c24b0e071e--

