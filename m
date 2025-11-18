Return-Path: <devicetree+bounces-239841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C10FC69E8E
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:21:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D01BD348F1A
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 14:16:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E3593590BA;
	Tue, 18 Nov 2025 14:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="OHxDk9NT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9997735A947
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763475375; cv=none; b=KpMpstbxPLxJF7MMnYXD6TLSyI+zm7UbYgPiS4MWHRcP7JiGsu92aGV4W5Xz3sQ46w/oS9Lzzp/R/96c7BhjTMH37O4/a0jGpxm1i3fVdhFo2fwZU+6PI4q3I5HbRqTHwS0uhyNMWyK7jwxqjEksL7L04wodvEZiBHmmOu+nh18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763475375; c=relaxed/simple;
	bh=v1BjaGnO3wUcuKkYpuBBjpi9hyHpXdtauVM+k17ipiY=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=MNqTemWGDjhXPsnee8fAbX0vZdEd0YOv0Z59QrYp0nA77QsPebnJxs/2yjCX/gaSUqJAUjHCpENV1df/9KU68BJLmUnmEMys7DOauOtixvuC1/A04fswaaxaYoTl331FflznZS9zW7+iNbV/tNhM64z8Xvw/wKCg7E7br9uDRLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=OHxDk9NT; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4779a637712so21888485e9.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 06:16:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1763475371; x=1764080171; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9+31Milj8nYVrvJ8nC3Pg+VcuZ0i1JhaSqz3VlPj1A0=;
        b=OHxDk9NTYyTxEobEpRogsKg81huZhAaQ8tYIboSk0wrZw6KVPTg2cUwncRBwUJkuPT
         Gju8L2xReC4LTcDyAu8SrKY81pf2HHz/k+fVVdqpmKfaRihPlG7fedHj1qwcx3L3kcp0
         B4lwF7dqQyn0hFTo7jRO6O3MxdzEnQsZMPrGcp+pJwSky0T3WlntcbaCyAwmQEXou+jb
         Ou3HMF2WyZqM9/1slqiGdSFnz14uldPRedwmoqhy5Xba/O5n3jc1SXKQSL+Hgz4gXSSD
         csk4rJ0YWZ4YyiVAoeban0OkNcNdbAIglfq+ZaD4hqeI53zUPMB8oFJ8g/JVWwb7zwBG
         RZ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763475371; x=1764080171;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9+31Milj8nYVrvJ8nC3Pg+VcuZ0i1JhaSqz3VlPj1A0=;
        b=DuGv2dts8LQcLbMQEUoO/enZRfJ5Puq+BniqDf+4Oun8zcuOIh/6wtxwLZVyADG4nH
         HDlN8mqVfeh2kVcZ1dGQlA3wXtQT+sx1afDa0V7BsNmOPkKmWaVt+WQLHQwaPZHt4Ddq
         0sTA5CxhPGpd56/UxeuimDZyVmh7p3Y3G10xJPEaiY/eOZ14XBkvtc6leMbsZXRWQ1Jf
         SyILQPcHLjdI9wvTJOEkfTbffRwH/9RPgXET9tIrmf2Fta8MfIeQLSM1fZjRN2vja4/e
         QDDmtJo/HdP6rQjUu3JldX48A+Ecs+aKbpo4/SnaBpZenJBABTNcW5a00821+kS0nVjF
         9Vkg==
X-Forwarded-Encrypted: i=1; AJvYcCXbx9VVYwkzE3J3I5iQoC5VM2HMVDhhCKpE+hWuJtFdRAuJZTWvBd1rHHuZejHRciL3KWfRXSMOs4TK@vger.kernel.org
X-Gm-Message-State: AOJu0YwOkDNwiNfbaUtPhlV4NFtaiaoMrVJp9i1lrIwuAw6pMv8Sxv4n
	nNXoZ2Fx/cD2AsVHnJtuPGiqpRA9kaw6zL5rkpGFT7AglnYf9ht4Q1u1r4RhU1WXE40=
X-Gm-Gg: ASbGncssyuT3Dw+YfnY6PesyZfFDZjSxXJNSdR2ak/f3TLU0qQzJrpgy0qQ/HYNmcOF
	TAuP8ZoG1nPYM10mcRXuLDx78mg6QirsExyKCSGHhGiSdvrjAE0AuwonqcDR2LRoBfgImVoSTlM
	JtWtRHU0j74FT7RGXROzNtT2rLehgSqAYmNAFEDOGR5TZvf/VuFPxJRCed5H9ebYsdwVyntdVDV
	txa/ESmLeEpoWaFpJOVocmBhaBtSzPH6l7UPuJLCzfIDBBehQSNNwkw9EpVZ5Cezxsr3VS1F+9B
	BilX1aK02B77HskrlHducg9gaW8LTswnYuM/3PvBuUjhIIsoVRdCvFiwWGrNHdFLxKnhiWT7Yd/
	Isd8oFdcdVMFZnV99StNAzPKvSeUksmPS0Ilz7hFdBzDQpO3LHN7b3LRmQRutx/ix7agjKGgkEw
	TyyQf8
X-Google-Smtp-Source: AGHT+IGg0i6a2B3te9LDxvEgp3QrhqP/Q1WTFXitfKeGMGPC0YklWmvswc4gwg37W4RFfYtxkzp3bg==
X-Received: by 2002:a05:600c:4753:b0:477:333a:f71f with SMTP id 5b1f17b1804b1-4778fe60658mr164479575e9.17.1763475370874;
        Tue, 18 Nov 2025 06:16:10 -0800 (PST)
Received: from localhost ([62.246.248.122])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47787e8e6a1sm356351435e9.11.2025.11.18.06.16.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 06:16:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=aa063a6c377d27e792288f5a4381ff30b0ef12a8fb75f7bd390f2ba44b77;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Tue, 18 Nov 2025 15:16:04 +0100
Message-Id: <DEBVUEKJ6R6G.33Y7W087DCFBT@baylibre.com>
Cc: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Vishal Mahaveer" <vishalm@ti.com>, "Kevin
 Hilman" <khilman@baylibre.com>, "Dhruva Gole" <d-gole@ti.com>, "Sebin
 Francis" <sebin.francis@ti.com>, "Akashdeep Kaur" <a-kaur@ti.com>
Subject: Re: [PATCH v5 5/6] arm64: dts: ti: k3-am62a7-sk: Set wakeup-source
 system-states
From: "Markus Schneider-Pargmann" <msp@baylibre.com>
To: "Kendall Willis" <k-willis@ti.com>, "Markus Schneider-Pargmann (TI.com)"
 <msp@baylibre.com>, "Nishanth Menon" <nm@ti.com>, "Vignesh Raghavendra"
 <vigneshr@ti.com>, "Tero Kristo" <kristo@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>
X-Mailer: aerc 0.21.0
References: <20251103-topic-am62-dt-partialio-v6-15-v5-0-b8d9ff5f2742@baylibre.com> <20251103-topic-am62-dt-partialio-v6-15-v5-5-b8d9ff5f2742@baylibre.com> <fafe395e-b8d2-4a46-9884-7241b24d3b06@ti.com>
In-Reply-To: <fafe395e-b8d2-4a46-9884-7241b24d3b06@ti.com>

--aa063a6c377d27e792288f5a4381ff30b0ef12a8fb75f7bd390f2ba44b77
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Kendall,

On Tue Nov 11, 2025 at 9:57 PM CET, Kendall Willis wrote:
> On 11/3/25 06:39, Markus Schneider-Pargmann (TI.com) wrote:
>> The CANUART pins of mcu_mcan0, mcu_mcan1, mcu_uart0 and wkup_uart0 are
>> powered during Partial-IO and I/O Only + DDR and are capable of waking
>> up the system in these states. Specify the states in which these units
>> can do a wakeup on this board.
>>=20
>> Note that the UARTs are not capable of wakeup in Partial-IO because of
>> of a UART mux on the board not being powered during Partial-IO.
>>=20
>> Add pincontrol definitions for mcu_mcan0 and mcu_mcan1 for wakeup from
>> Partial-IO. Add these as wakeup pinctrl entries for both devices.
>>=20
>> Signed-off-by: Markus Schneider-Pargmann (TI.com) <msp@baylibre.com>
>> ---
>>   arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 69 +++++++++++++++++++++++++=
++++++++
>>   1 file changed, 69 insertions(+)
>>=20
>> diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/d=
ts/ti/k3-am62a7-sk.dts
>> index af591fe6ae4f0a91991d2904a9a61905a0eeb614..b61370db6986308ec97983f7=
96b993a26debcabc 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
>> +++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
>> @@ -233,6 +233,10 @@ AM62AX_MCU_IOPAD(0x0030, PIN_OUTPUT, 0) /* (C8) WKU=
P_UART0_RTSn */
>>   &wkup_uart0 {
>>   	pinctrl-names =3D "default";
>>   	pinctrl-0 =3D <&wkup_uart0_pins_default>;
>> +	wakeup-source =3D <&system_io_ddr>,
>> +			<&system_deep_sleep>,
>> +			<&system_mcu_only>,
>> +			<&system_standby>;
>>   	status =3D "reserved";
>>   };
>>  =20
>> @@ -426,6 +430,42 @@ pmic_irq_pins_default: pmic-irq-default-pins {
>>   			AM62AX_MCU_IOPAD(0x000, PIN_INPUT, 7) /* (E11) MCU_GPIO0_0 */
>>   		>;
>>   	};
>> +
>> +	mcu_mcan0_tx_pins_default: mcu-mcan0-tx-default-pins {
>> +		pinctrl-single,pins =3D <
>> +			AM62AX_MCU_IOPAD(0x034, PIN_OUTPUT, 0) /* (D6) MCU_MCAN0_TX */
>> +		>;
>> +	};
>> +
>> +	mcu_mcan0_rx_pins_default: mcu-mcan0-rx-default-pins {
>> +		pinctrl-single,pins =3D <
>> +			AM62AX_MCU_IOPAD(0x038, PIN_INPUT, 0) /* (B3) MCU_MCAN0_RX */
>> +		>;
>> +	};
>> +
>> +	mcu_mcan0_rx_pins_wakeup: mcu-mcan0-rx-wakeup-pins {
>> +		pinctrl-single,pins =3D <
>> +			AM62AX_MCU_IOPAD(0x038, PIN_INPUT | PIN_WKUP_EN, 0) /* (B3) MCU_MCAN=
0_RX */
>> +		>;
>> +	};
>> +
>> +	mcu_mcan1_tx_pins_default: mcu-mcan1-tx-default-pins {
>> +		pinctrl-single,pins =3D <
>> +			AM62AX_MCU_IOPAD(0x03c, PIN_OUTPUT, 0) /* (E5) MCU_MCAN1_TX */
>> +		>;
>> +	};
>> +
>> +	mcu_mcan1_rx_pins_default: mcu-mcan1-rx-default-pins {
>> +		pinctrl-single,pins =3D <
>> +			AM62AX_MCU_IOPAD(0x040, PIN_INPUT, 0) /* (D4) MCU_MCAN1_RX */
>> +		>;
>> +	};
>> +
>> +	mcu_mcan1_rx_pins_wakeup: mcu-mcan1-rx-wakeup-pins {
>> +		pinctrl-single,pins =3D <
>> +			AM62AX_MCU_IOPAD(0x040, PIN_INPUT | PIN_WKUP_EN, 0) /* (D4) MCU_MCAN=
1_RX */
>> +		>;
>> +	};
>>   };
>>  =20
>>   &mcu_gpio0 {
>> @@ -852,4 +892,33 @@ AM62AX_IOPAD(0x008, PIN_INPUT, 0) /* (J24) OSPI0_DQ=
S */
>>   	};
>>   };
>>  =20
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
>> +};
>
> Did you mean to set the status =3D "okay" for mcu_mcan0 and mcu_mcan1? Th=
e=20
> nodes would still be disabled without it since in k3-am62a-mcu.dtsi the=
=20
> status is set to "disabled". Same goes for the patch you sent for AM62P.

Thanks for your reviews. Yes, I removed it after I got his feedback from
Vignesh:

  MCU peripherals are under control of MCU R5 which would be running a
  safety application on AM62A class of SoC. So these peripherals should
  not be enabled by default here.

https://lore.kernel.org/lkml/32b13258-19dd-4ba7-a13b-daaf3804a7c8@ti.com/

Best
Markus

--aa063a6c377d27e792288f5a4381ff30b0ef12a8fb75f7bd390f2ba44b77
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iKMEABYKAEsWIQSJYVVm/x+5xmOiprOFwVZpkBVKUwUCaRx/pBsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMSwyLDIRHG1zcEBiYXlsaWJyZS5jb20ACgkQhcFWaZAVSlPG
NwEA9FjeunL7yBrOX00iogrZ0GZ2oU+OVEh3bv7p4qvQO3gBAIfYc1DnBsioZXJv
MaO1A9L2xjuJbAJEeyn4hbazJtgF
=oSTG
-----END PGP SIGNATURE-----

--aa063a6c377d27e792288f5a4381ff30b0ef12a8fb75f7bd390f2ba44b77--

