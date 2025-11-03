Return-Path: <devicetree+bounces-234279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CD543C2ADDC
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 10:53:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CDBEE1892683
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 09:53:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45DA22FAC16;
	Mon,  3 Nov 2025 09:53:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="P2xdQnYf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D115B2F9DBC
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 09:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762163595; cv=none; b=fOaPkP9FXa+C0tf7Tw3fy8xXVrHTBipUGmbHDiBIhZBxy+YubhXO9LmVci168G098+qcdCnxuxwOj9uicqQYcuiUoRJB6HP+wH6KfmdbwCZIgubHGcZBQFgalxybstror10aHwMZ/sPTAzdUW+CO/SxFfRlLHaXbiau++JTahWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762163595; c=relaxed/simple;
	bh=KGjlmg/AHs7sPK2VBnOk6oW5dxR8BsWE0TlG0La20y0=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=ni0lMYV7lhwy+8WYyfBTfOtiRteuGAAWEteFfW0IfE9XP9xQFjpJk5V6Pa7KRa1Qt+XfWSeSeZSTdUTZLsslUS/andyXRR4tBE6kpix/RvY1AY+GU6Z7IWow06bDqcRn6a/EiZM35+26Yn7IELuqm3QjmNudNNiveQsVa9T40ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=P2xdQnYf; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-640d0ec9651so533019a12.3
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 01:53:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1762163591; x=1762768391; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HZujy5RyZQPpS/B7fMM89Md6mmAqnnHN2hXMNBPPI4A=;
        b=P2xdQnYf0U5NHDFZRlqJO0e5GZNerZaj6jyeFqx0+8ovrkWo0eHZHMPJ4rEX06UnTp
         IhNaaumOhF2Py4PRyKHbVC6SEB4Jlt3CLn6obsCEclotqqCj+HevdA02TmOh2JFU0bIL
         +KsMDBVtN96DdhZbti4uUDR+C0cyVS7SMUD61VrpXvr682hCBEuqKEfhgx2hu2EGsGBd
         CP8UZsNUj0p0prci39vRCCWf2hMxfNLQreyxw4JMNilQeunr32z0hWPuBqoXbeZlwtnu
         uy+7TXqzyTHXxpcF8Qm/bE68frAf+ofnuKDO3au7nhCGR44ScrDepvu7963ZhTNCKpLU
         3WiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762163591; x=1762768391;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HZujy5RyZQPpS/B7fMM89Md6mmAqnnHN2hXMNBPPI4A=;
        b=jB+6GREZ49k2zWMDh48/C4J8OVMJXbc7SfCUW+5c96CbBEt6vKB+R6gsc7ujd5a0a0
         u8Ot/bZova6FhuJcAdAPQ56Fb3yWLtR7NwFImYGxB/Xf0QQYGV0keHcoLs2ue32pwE/l
         mqrMcYvABbmPU4pieTWFXp5lTESufxiyf47jwe2PrBBWYA5MbyIwh4hG6qSFSTCSz+6I
         oSsjehd2f3uwhupC1C8o9bw+HsjUIevv4UhvBJVfKxAy+EyuoXO0lM0MX38ZTJ+r40UO
         QAF9kV78Ra7ukDsfi4FbPDNdQMAA9dvmF7L+UYu/l7Ku/mZgkwswpe00xk+UBOBHo/9v
         taKA==
X-Forwarded-Encrypted: i=1; AJvYcCVJpH54vvqFd6X/GrGfpZSvXIX1RO93fFUYGEjC5JevY82d/3nxwIo9owSMuEHbNlvOE5QmE5/1+mHH@vger.kernel.org
X-Gm-Message-State: AOJu0Ywwa98Re+em98YkgBMHsPJc7fhXNeljWZU77lw/XFK2SKqPMLYx
	fhzwbfT/BYi+tOtJ/uYaXizRMD0Hh1kyq1hBUscPge7d4FvYeiozEPkjXSpuA5wwfGg=
X-Gm-Gg: ASbGncs7i9uSP3G3ka4AFJF5J7JxwXJQKNSPH5Ms2UJZh0lFnki2nuV3QJ7yqePDhGR
	nJ2EUtNxTDGSkQZAvbGORQ+7ABNc6Eya3zrMyToyRHQDAYM1sSCt7BbnE/Ev0A2PlFRK3ovrG0Y
	yOwskJp1FOdmKGwhNSTefREth6dZJQU5XClB73zkn68xDZxQj3wHzb5mTU1Hc9QAJ3jHQQQiwmv
	EhLhIxrHHhYpuYSyt+7MZfl4ukooJHbDDzHLUlWtbjlrdwYyCajUDs2sUqqlSsAgWrz21fWqE6z
	Webrmvx72+pL5AsPgKtzBjAAVxZ36FrNqL49X+UuJS8k98AHA5K33bApAWaUq++XOrIAEpTT9fZ
	NE9BGJI6V/kK5WYMXQer4PJU6w2h4u7H3zuFi4jI7HVnAPjLp9GXyhON2DKbR8Nqg/fkAi7mOCq
	1DzVE=
X-Google-Smtp-Source: AGHT+IH0XLkhBGBEBrjFCAiczuv1OaHI5lWHegxYCSgvZSSDCU/n+R533fMF6s3brHmr7a1bpTeQAg==
X-Received: by 2002:a05:6402:1449:b0:63b:f22d:9254 with SMTP id 4fb4d7f45d1cf-64077015c6bmr9656591a12.23.1762163591131;
        Mon, 03 Nov 2025 01:53:11 -0800 (PST)
Received: from localhost ([62.246.251.40])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-640b977e6acsm3482562a12.25.2025.11.03.01.53.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 01:53:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=6f1a36b59259780986f7fd765ebf513541f37af75e85296bc10e552bba7a;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Mon, 03 Nov 2025 10:53:01 +0100
Message-Id: <DDYYUTR0HNLU.1HP4LN58RESHB@baylibre.com>
To: "Vignesh Raghavendra" <vigneshr@ti.com>, "Markus Schneider-Pargmann
 (TI.com)" <msp@baylibre.com>, "Nishanth Menon" <nm@ti.com>, "Tero Kristo"
 <kristo@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>
Cc: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Vishal Mahaveer" <vishalm@ti.com>, "Kevin
 Hilman" <khilman@baylibre.com>, "Dhruva Gole" <d-gole@ti.com>, "Sebin
 Francis" <sebin.francis@ti.com>, "Kendall Willis" <k-willis@ti.com>,
 "Akashdeep Kaur" <a-kaur@ti.com>
Subject: Re: [PATCH v4 5/6] arm64: dts: ti: k3-am62a7-sk: Set wakeup-source
 system-states
From: "Markus Schneider-Pargmann" <msp@baylibre.com>
X-Mailer: aerc 0.21.0
References: <20251030-topic-am62-dt-partialio-v6-15-v4-0-6b520dfa8591@baylibre.com> <20251030-topic-am62-dt-partialio-v6-15-v4-5-6b520dfa8591@baylibre.com> <32b13258-19dd-4ba7-a13b-daaf3804a7c8@ti.com>
In-Reply-To: <32b13258-19dd-4ba7-a13b-daaf3804a7c8@ti.com>

--6f1a36b59259780986f7fd765ebf513541f37af75e85296bc10e552bba7a
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Vignesh,

On Mon Nov 3, 2025 at 4:51 AM CET, Vignesh Raghavendra wrote:
> Hi Markus
>
> [...]
>
> On 30/10/25 14:47, Markus Schneider-Pargmann (TI.com) wrote:
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
>
> MCU peripherals are under control of MCU R5 which would be running a
> safety application on AM62A class of SoC. So these peripherals should
> not be enabled by default here.

Thanks, I will not enable them in the next version.

Best
Markus

>
>>  #include "k3-am62a-ti-ipc-firmware.dtsi"


--6f1a36b59259780986f7fd765ebf513541f37af75e85296bc10e552bba7a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iKMEABYKAEsWIQSJYVVm/x+5xmOiprOFwVZpkBVKUwUCaQh7fhsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMSwyLDIRHG1zcEBiYXlsaWJyZS5jb20ACgkQhcFWaZAVSlNb
TAEA1S7xS5EppfI4CRVsDyo+NgkSSzMABfetOW8WKnVRCvQBAOaC+6F5lj6/hK4p
P+3TYeQDFHuCNlyLoFqdWJ1hCbsC
=D67h
-----END PGP SIGNATURE-----

--6f1a36b59259780986f7fd765ebf513541f37af75e85296bc10e552bba7a--

