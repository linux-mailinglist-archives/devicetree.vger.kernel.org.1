Return-Path: <devicetree+bounces-206180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 62315B2BA97
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 09:23:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 46BED581F5C
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 07:23:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 714AB2848A7;
	Tue, 19 Aug 2025 07:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="rD1E7n16"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D740C247DE1
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 07:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755588041; cv=none; b=WP39V9W4Owt74GDJn3CkCH9cKX4gUmMRMCQmsjqHhT161s6T7UGJ2aLPNm6XyupQ3+WPfQpkXRnVozIU2RyySRHlHqdfby525D/uKapLkC56A5vhcXcYJU+JYnfQvCT1qiGnxAXo0sd5ibmg7WKiqJLrg4Hueu9sEqAlB76KgtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755588041; c=relaxed/simple;
	bh=nvfY0GK2083Ir+nclH0mStfqg39/xjitbuTFa8M/Wxk=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=bZuTplQ0ba/+4EXoYixcmC6ySUfBdXhndru0jOqMyhUti4I+uFbDAErRVQChakFEI8wY3ifC7k9QBSQKXkUJS4qm8EQHiP9n2cjYW1uWokRue0Z+Zpo99Hz9KFTX9v0nbQe/7RNE+g0RLjOvFzzlG/djio7Z57QKmnZAUBmJXSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=rD1E7n16; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-61a1663bd7dso3798728a12.1
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 00:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1755588037; x=1756192837; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YDerhS9g1vRICq7Rt5WRYWuEsiOUKiC9gj7unZzIWD0=;
        b=rD1E7n16ldURsFCJgjAqP8vLMlRNmUCP5FeFGrh6YGltKCdwgz+K4oLZd2BfYg7KuX
         e/0hnIZb8m301PiGdn5Xg8oBGQ2UbTSpof4r9aaBlkbYDTCMx0kRx2WQEJqfaxFI+SMB
         uQLmJhwSGwynuFVfjdYDrjk8Xne9IMjBu7fA6/2Q72OAQE4Ppgx54Ax1qRuiCzyAZOws
         OIeZK4CYURcS5Csd0GsxltGbk8dKufKxyV0hVwb+8NbQ1DxxpfG69Kjh8s9ZoquVYRne
         O+5m5Zznlq6vL0AXObbzc4VD0dSiLE2hnG0Dzpip+8LixP8ZIFFhQCxTeGOy5K+i9sTv
         RNQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755588037; x=1756192837;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YDerhS9g1vRICq7Rt5WRYWuEsiOUKiC9gj7unZzIWD0=;
        b=WfTnTVL/cUiWbpgeAiLtH+kSNkRukObsfMH3GsX0iEszUg+s8siSKzDNlf1OukyF6G
         y0y12wQXJKvl6jHkor8Z9pRTniuwZQFzJVLM3nqvU8kcidq4y0dBdlM7ZEwke4HMqDnO
         pZAyKs0e1fConRvdgjPkZZY2lwu/NfLIg7LNeATpTFkUmSL4H9fwzantq0sKb/fxOYIQ
         gVhV6gOFR1iqEEreV563lFlnCTRINs+kzlK/MempwP0BpXdfkAGeD5CA5k5ITqGSHm9+
         dRhk0jzwPUaL9YRgdI2uYjHPSX0HobslKIheBVKjNsc0LURnhB1ckfq492jG4LhULjBN
         TU9w==
X-Forwarded-Encrypted: i=1; AJvYcCVJgXRnq9UqfFfG6LEBs5ICIFXsIYmYZalQCo5SOpA4jzThXa8ZwOtxBwySc09gh5MUwvaG1p9GZURf@vger.kernel.org
X-Gm-Message-State: AOJu0YwpwScisH3E6QRZDyWSP67Hsr6sy4OZupKiTfJu9wejL3ze11BC
	i2/xT0lTzJVn5lU3VRPMnqrxDvhIWhGvGJJZrmWYkkyzJ5Cj/B4I1lbUNX2fWNmP+ws=
X-Gm-Gg: ASbGncsUB1lB31TeNKIQ4DDRMiMD+L08RBPxAQ4MY29w0xJIu/q8cslM6ilSzIg/Nfv
	WnV82N/RLUttVxiwx1Zrsbgb3M3OihscVAh6h1MnkCqzjfrvSq2ZifmomOE05qBCh4eGBNDHIqf
	bTLXiPfwYFsILlzNySiqmiPp8xgSTX4PGpSszwYXIhUrR52M/x0D17AMka1wzCS3TRTlAiU1SUH
	eqNwYOHOJB5Tto9IVUm6sdqc/mILCto010Ag1rOGkqjXmeUIvVT0iP7TcwZvSvxS1itU4m4i4ID
	lQVIKJj2LAI49jmVu/UAMQexlKoE87ls1oQvYb/j2jZpbXxKmRYNi6LA2AudQCIyJlQ16SHB1qB
	3Fa1k/TXfq0y+Rw==
X-Google-Smtp-Source: AGHT+IFTE4hF1AUdRJXz2aI8p4Oj/UQ0e9w4t3Li+mxqyWXJYIk67Rom66979p+Z9BPZkccukwg/lA==
X-Received: by 2002:a05:6402:a0d5:b0:61a:343a:f2f5 with SMTP id 4fb4d7f45d1cf-61a7e748d60mr1118954a12.27.1755588037095;
        Tue, 19 Aug 2025 00:20:37 -0700 (PDT)
Received: from localhost ([195.52.61.108])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-61a757b9b39sm1199070a12.48.2025.08.19.00.20.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 00:20:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=5dc0421f1ec0527eb46a4fc47472493a82a4c39419dea34004a893d55dc2;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Tue, 19 Aug 2025 09:20:28 +0200
Message-Id: <DC680MA7LMN0.33Q95D1CT5TVK@baylibre.com>
From: "Markus Schneider-Pargmann" <msp@baylibre.com>
To: "Marc Kleine-Budde" <mkl@pengutronix.de>
Cc: "Chandrasekar Ramakrishnan" <rcsekar@samsung.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Vishal Mahaveer" <vishalm@ti.com>, "Kevin
 Hilman" <khilman@baylibre.com>, "Dhruva Gole" <d-gole@ti.com>, "Sebin
 Francis" <sebin.francis@ti.com>, "Kendall Willis" <k-willis@ti.com>,
 "Akashdeep Kaur" <a-kaur@ti.com>, "Simon Horman" <horms@kernel.org>,
 "Vincent MAILHOL" <mailhol.vincent@wanadoo.fr>,
 <linux-can@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v8 1/4] dt-bindings: can: m_can: Add wakeup properties
X-Mailer: aerc 0.20.1
References: <20250812-topic-mcan-wakeup-source-v6-12-v8-0-6972a810d63b@baylibre.com> <20250812-topic-mcan-wakeup-source-v6-12-v8-1-6972a810d63b@baylibre.com> <20250813-energetic-hare-of-pizza-6ad6df-mkl@pengutronix.de>
In-Reply-To: <20250813-energetic-hare-of-pizza-6ad6df-mkl@pengutronix.de>

--5dc0421f1ec0527eb46a4fc47472493a82a4c39419dea34004a893d55dc2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Wed Aug 13, 2025 at 9:23 AM CEST, Marc Kleine-Budde wrote:
> On 12.08.2025 11:10:22, Markus Schneider-Pargmann wrote:
>> The pins associated with m_can have to have a special configuration to
>> be able to wakeup the SoC from some system states. This configuration is
>> described in the wakeup pinctrl state while the default state describes
>> the default configuration.
>>=20
>> Also m_can can be a wakeup-source if capable of wakeup.
>>=20
>> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
>> ---
>>  .../devicetree/bindings/net/can/bosch,m_can.yaml   | 22 +++++++++++++++=
+++++++
>>  1 file changed, 22 insertions(+)
>>=20
>> diff --git a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml =
b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
>> index c4887522e8fe97c3947357b4dbd4ecf20ee8100a..ecba8783198fc1658fcc236d=
8aa3c89d8c90abbd 100644
>> --- a/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
>> +++ b/Documentation/devicetree/bindings/net/can/bosch,m_can.yaml
>> @@ -106,6 +106,22 @@ properties:
>>          maximum: 32
>>      minItems: 1
>> =20
>> +  pinctrl-0:
>> +    description: Default pinctrl state
>> +
>> +  pinctrl-1:
>> +    description: Wakeup pinctrl state
>> +
>> +  pinctrl-names:
>> +    description:
>> +      When present should contain at least "default" describing the def=
ault pin
>> +      states. The second state called "wakeup" describes the pins in th=
eir
>> +      wakeup configuration required to exit sleep states.
>> +    minItems: 1
>> +    items:
>> +      - const: default
>> +      - const: wakeup
>> +
>
> This breaks at least the stm32mp15 SoCs that define a sleep state:
>
> &m_can1 {
> 	resets =3D <&rcc FDCAN_R>;
> 	pinctrl-names =3D "default", "sleep";
> 	pinctrl-0 =3D <&m_can1_pins_b>;
> 	pinctrl-1 =3D <&m_can1_sleep_pins_b>;
> 	status =3D "okay";
> };

I am struggling to find binding documentation that explicitly lists
this sleep pinctrl state. So what is the intended purpose here? Also the
driver does nothing with this at the moment right?

I mean I can also add a sleep state to the binding or just leave the
binding empty so it can be anything, but that feels wrong.

Best
Markus

>
>>    power-domains:
>>      description:
>>        Power domain provider node and an args specifier containing
>> @@ -122,6 +138,12 @@ properties:
>>      minItems: 1
>>      maxItems: 2
>> =20
>> +  wakeup-source:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      List of phandles to system idle states in which mcan can wakeup t=
he system.
>> +
>> +
>
> One newline should be enough.
>
>>  required:
>>    - compatible
>>    - reg
>>=20
>> --=20
>> 2.50.1
>>=20
>>=20
>>=20
>
> Marc


--5dc0421f1ec0527eb46a4fc47472493a82a4c39419dea34004a893d55dc2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iKMEABYKAEsWIQSJYVVm/x+5xmOiprOFwVZpkBVKUwUCaKQlvBsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMSwyLDIRHG1zcEBiYXlsaWJyZS5jb20ACgkQhcFWaZAVSlPN
KQD+Knn1k4Cw2JWSJG551zETnb2ds6letWMDFSx8CJXYB0IBAPB6PazRR/kivR9j
3OLypsfrQyvGmNAZ+Q8n0nQmQyAF
=HKvx
-----END PGP SIGNATURE-----

--5dc0421f1ec0527eb46a4fc47472493a82a4c39419dea34004a893d55dc2--

