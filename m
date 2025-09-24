Return-Path: <devicetree+bounces-220667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5019BB992DE
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 11:36:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 07CF52E77A4
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 09:36:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 196422D6E69;
	Wed, 24 Sep 2025 09:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="iNbL4DyD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EEE2D0C72
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 09:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758706574; cv=none; b=V/NGAxz2r1wkdlmBwVnDcQ81DW4IC25Y1gy+IlLlFwgKcwIwuTs43RHv/iQY2IjplNXqvhF1J17oV2s+9ZwLHAAGkwYVtPV9qeVDHluQpmEVdHtK8c/GQjor9mf6o9ctFAc9kmKrBJ3vXL4fHEloMgJtxM3wMTIZVjTeAnbI7kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758706574; c=relaxed/simple;
	bh=ZPS5vkPDC0Z1dLXwG4FwSnQiGQrzsW4kSKnPvivEQWE=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=UfrvN0/7h5GVTv5pK+0e+qcuI/CfsNO/zYv0JQdORQ3iESmxQApt/xDZI9hK4C1okzC3zbntGMC38PefweviKSSIuynqPB1WOJdchZ7nMIdzNh+iVx79n96JaCMUcoUXxosYWGUXSBCXw+Rk68V4odRqWvGoDZ4g2K+N4Xb/kd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=iNbL4DyD; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-62f4a8dfadcso7970433a12.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 02:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758706569; x=1759311369; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=J5Q6p/KiNHqv49UA1SnTb+Yaprb1pd/5n2oQ6uG61w0=;
        b=iNbL4DyD49Ce/I47kjnhiUV0CwUsrV6oxWEVgd05Vo+07/K28XVtvKZ6ABD3hRPM0F
         vbBbpOtPUtPOEH67q/T1cmXASzHYLsHC9F+42IWta9adzrcIzrTj6xdCZl1Pqg0+v/DW
         Wq/L9AS3q8X4viuWH95UzxvAeiw4Psg0dh3i3JqsZmii3zv3XvglqYLLqt+GihXxGaPb
         oTPYvIXdI0DVCaI5Jv3b//D9c/xaAPaBH98iWwn783cackdHrjKKWYUbtmlLilGyTRDJ
         sJlKOrM+qScnqQDcESF+r4338czrGbZodKz3fdEfZX3Xlxh5LvsVhHxL3a5t3wcMhp6Q
         jawg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758706569; x=1759311369;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J5Q6p/KiNHqv49UA1SnTb+Yaprb1pd/5n2oQ6uG61w0=;
        b=HwptVddljwLG0QYNNTVHA8Qt39vXaHBq5ymLtu7FpMfvMWWYHyqZw2H2BbMTieT1ZY
         JS7mg396xdZHHrnQI9XS8T/mZa4l82EOI7mGHPcqOIAitRgMD+2x9lMKMBdzKGhVH35E
         67kz90aBf7phWhE0W8hT2D8hqFkTH9gRR70PRjRnu6YZ8NRwVH5aVS4mBAwQ37T1s0Ti
         fuuwkLLT32He3+uBBgusH9JFQkuq5Jvajk0nPn7h4ywC2nuKigjyWbwV1eIvccEJVEMt
         IeJPpahXRFW0sqHGOEDzDWPmWIqpgAoTxm5PNtFc7fXOJZR0V4t1P+CbjgnctSPjJTlv
         Mj+A==
X-Forwarded-Encrypted: i=1; AJvYcCV7PWY5nuWlmLFc2swtH+3hyUgu2ROVFDqr0k2VnS+/MC5ILDU0G5SBxki0JIu/vUq6K0/Qpuqw3EMN@vger.kernel.org
X-Gm-Message-State: AOJu0YzJlgTUqzlQ+mXckoqr8GGNxAbGz8k+I6BC83lnVAKRz23AVL2Q
	04L4cJvjidR31aIvQFpz5vkDGXBfE85qVdW8MBXQyCEEHaxZhPTyKJgjUthg9q2CILo=
X-Gm-Gg: ASbGncuzQ/FLA2wE2vkG9lj52gQzV+vJTM2BeAnnEMHD8jfGXIiaC593xyQW/HuTBF8
	Rg4qgiuqpplNzG+tpk8c+wX1gPR1TKCw0ioDQMCRzohhaQb4vosoTcBUrb5kktIhRYbbf7Lxogy
	ERquXX7DsBwruidNsvdRm7IvF4DXR3wL5KwOeVmkvvreaCdX+Dapd+09ijUCAytKqdy3R2VWFZR
	PzNBOGhg2L3mbd4tkwTlY1DVd0d9yCOXNw4yyR72XJOD2k496td97NvWwL6QApBIUddmjHIhEaG
	pkWqwUyXuCEUx7HOtMGOcsxPC7l2IFbVbfHcIbENzG9EhsqFvTa6jbGiMvMs1ludQY16ErsMy3e
	98/Z8DGxvzzhVmaM=
X-Google-Smtp-Source: AGHT+IFrVuMeV3DxBIcNMAPLjIp8Ym4ceTLMZRcoC30nbyeaEZUcstVPsEO8E6Kunah/gyUeusxbdw==
X-Received: by 2002:a17:907:94d1:b0:b0f:29f3:94f7 with SMTP id a640c23a62f3a-b3020c37aaemr508846066b.0.1758706569095;
        Wed, 24 Sep 2025 02:36:09 -0700 (PDT)
Received: from localhost ([195.52.61.108])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-62fa5f14e64sm12481067a12.25.2025.09.24.02.36.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 02:36:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=f7cc4d2a582e78fc50c0277a2c40522eee0e153b07f7e60887709f76b82e;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Wed, 24 Sep 2025 11:36:00 +0200
Message-Id: <DD0XG03P3KDH.5763ZFCO92H0@baylibre.com>
Cc: "Nishanth Menon" <nm@ti.com>, "Vignesh Raghavendra" <vigneshr@ti.com>,
 "Tero Kristo" <kristo@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Vishal
 Mahaveer" <vishalm@ti.com>, "Kevin Hilman" <khilman@baylibre.com>, "Dhruva
 Gole" <d-gole@ti.com>, "Sebin Francis" <sebin.francis@ti.com>, "Akashdeep
 Kaur" <a-kaur@ti.com>
Subject: Re: [PATCH v2 7/7] arm64: dts: ti: k3-am62p5-sk: Set wakeup-source
 system-states
From: "Markus Schneider-Pargmann" <msp@baylibre.com>
To: "Kendall Willis" <k-willis@ti.com>, "Markus Schneider-Pargmann"
 <msp@baylibre.com>
X-Mailer: aerc 0.21.0
References: <20250812-topic-am62-dt-partialio-v6-15-v2-0-25352364a0ac@baylibre.com> <20250812-topic-am62-dt-partialio-v6-15-v2-7-25352364a0ac@baylibre.com> <20250923182450.5rqwz2pkn2gjt2vh@uda0506412>
In-Reply-To: <20250923182450.5rqwz2pkn2gjt2vh@uda0506412>

--f7cc4d2a582e78fc50c0277a2c40522eee0e153b07f7e60887709f76b82e
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Kendall,

On Tue Sep 23, 2025 at 8:24 PM CEST, Kendall Willis wrote:
> On 11:15-20250812, Markus Schneider-Pargmann wrote:
>> The CANUART pins of mcu_mcan0, mcu_mcan1, mcu_uart0 and wkup_uart0 are
>> powered during Partial-IO and IO+DDR and are capable of waking up the
>> system in these states. Specify the states in which these units can do a
>> wakeup on this board.
>>=20
>
> nit: s/"IO+DD"/"I/O Only + DDR"
>
>> Note that the UARTs are not capable of wakeup in Partial-IO because of
>> of a UART mux on the board not being powered during Partial-IO.
>>=20
>> Add pincontrol definitions for mcu_mcan0 and mcu_mcan1 for wakeup from
>> Partial-IO. Add these as wakeup pinctrl entries for both devices.
>>=20
>> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
>>=20
>> - Merge devicetree nodes in k3-am62p5-sk.dts
>> ---
>>  arch/arm64/boot/dts/ti/k3-am62p5-sk.dts | 71 ++++++++++++++++++++++++++=
+++++++
>>  1 file changed, 71 insertions(+)
>>=20
>> diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/d=
ts/ti/k3-am62p5-sk.dts
>> index 899da7896563b43021de14eda1b0058a5c6d36da..a2dffb5e243f543c90081eea=
cdc0758b38bd0eb9 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
>> +++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
>> @@ -762,12 +762,52 @@ AM62PX_MCU_IOPAD(0x028, PIN_OUTPUT, 0)	/* (D7) WKU=
P_UART0_TXD */
>>  		>;
>>  		bootph-all;
>>  	};
>> +
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
>>  };
>>=20
>
> AM62PX_MCU_IOPAD should be used for consistency.

Thanks for your reviews, everything fixed for the next version.

Best
Markus

--f7cc4d2a582e78fc50c0277a2c40522eee0e153b07f7e60887709f76b82e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iKMEABYKAEsWIQSJYVVm/x+5xmOiprOFwVZpkBVKUwUCaNO7gBsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMSwyLDIRHG1zcEBiYXlsaWJyZS5jb20ACgkQhcFWaZAVSlMl
JgEA/mISSoRZhk6VfAJFaK9lIaKSXc+xnPgUPVfC4DEzh/UBANaYGyPZmqpr68a/
lc3eBY0abnF1USiw+jz0CqS7BpgA
=evl8
-----END PGP SIGNATURE-----

--f7cc4d2a582e78fc50c0277a2c40522eee0e153b07f7e60887709f76b82e--

