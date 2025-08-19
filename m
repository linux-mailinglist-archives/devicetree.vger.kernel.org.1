Return-Path: <devicetree+bounces-206182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C12B2BAAE
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 09:27:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D3721BA80B7
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 07:27:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5658D2848A8;
	Tue, 19 Aug 2025 07:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="0sX1IJae"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B69A28489D
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 07:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755588404; cv=none; b=R35UMy3YPHrNKvjuZbd18CZY6dyZJ5kyFS2wXFp9xENnj63/cEVqnv/v6FhAi1JJvmD3icVWj4o07lgPrWO615+sW2JB7lXIIUTDqVVXqJWIJy8IXJ/or5bxahlgKML3JUYmVn0/pR/Tt3zTUDHkVmAOSW52ZOhF2MrkAS07Gz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755588404; c=relaxed/simple;
	bh=JHrwiE0qeKjiu2JTqZWpkY8QsgsyYxZEYwptk+ODRos=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=llPidL/U4YI+Jr01mgGL+RhvyOuPXLvsaHCKjgvo/5YVHOxpZwLV32fwPc1c1AKaFCbSvlqYL0yfwi49pTk8aOw5K1V35ee6duC9hmSPsFTTt6XT22tovndvsLeCXJhSFHPr12M5jLsEzPVwfsKpPuTqkFPaUS92Wjskok+ASuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=0sX1IJae; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-afca41c7d7fso1013943666b.1
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 00:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1755588400; x=1756193200; darn=vger.kernel.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qH1AR6Cc4z3ibmbjdOCcxU3yVHntaGlUKsN2PMUKW3E=;
        b=0sX1IJaehOG5+QkNnxq1Me8QoimnNa6YsXKYWyahdM3UrB747AzMGKwXf5gPZDELls
         CXCGWAZFO0IBOqhpfS1bdpPC7IifyUWDevkLXB7D8/ysP0m5kSXHcBaysQUzvuB6g/Qu
         v38x76vgWFkXqDzWiHoDCYPBPwLZTGO0qOU8VZSl0xnmumeZS0zo9MN0vSbiUZkdKs1x
         y98v0pFr0hhBPYfpUW9gXEJ/qItwK5yQqRGqT5lc9j0C2taKiPD5Q73MEendDPh9miEF
         GMUaUhcjUiIjOZA4hKlVRu9+HeqIYh6+4iANBYdoEL2sKo5C6m7tcgdjfCOFkdtCyCP+
         iQ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755588400; x=1756193200;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qH1AR6Cc4z3ibmbjdOCcxU3yVHntaGlUKsN2PMUKW3E=;
        b=NhnRqrtBfbxBpRVKP6f6CG5IRAp1gvPhnApG5l5xMdvmels1+WmAO4qZOM1RLUw/u/
         ssHtKkPNHu77qyIon2bHrjO4u0/5mU6ep8KU1rxnm+diUF4LPjGMa6QaYF9yAzoqEtaB
         XNGZx/LpxttBR+bwz9rzjPw3ruPFGlI+k3KVZP1AGGPS8Gtm7V9qAzLQ41eHh6sp1kG7
         q6QNcri9fSJMDyryLNQmOEU29mjoTNwLxKsDXTTvTtnbTXwIENcND8FILV5zhBWElDQJ
         O4fVgyUH8zQS7+l1MhF54ivm/I1ZaHXXfAIfkEiV4+4dB47t9LTqou2WQYC2JxWoO7MS
         amtw==
X-Forwarded-Encrypted: i=1; AJvYcCWKWHeBa65xBTrfnNmD1GyBCco/PMHaAXAu1kmRlrsBTSQ0bZ/MMnjXdCnefdDGV7BfSfgxhQR+Zels@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7pVmexoaSURWDFcMyyvYdEiryGmbHvZghioItBmDPk79U9DaZ
	ChbgKXA2zhYV8PVAHpuMAap4RjZtxBWWZdHLssB4CVpMIvDPyZotBC3uwI2toRXdMb0YxepWaux
	OdXTm
X-Gm-Gg: ASbGncvp44RjJ+p0pLl4b9Vu+EImaXwjr/vCtoLSEMB1011qQQwBvg9InAaYh3O9Yf1
	wrXQipnqwoaBf3Z+RWV/kRQHYYvuyGmo0uGXA7rJon9sLqjWnBCMjFBs6WKg/it8KDeBUaMQ1jJ
	xYjOsaBK6TX5/LyWwR9bJg7TWMBkVjBUf7UFjq5NqLAjr1DfsKbDB29fU/jK3+9SnoYazVlhIqA
	efZcQ7b+tw0zWkvPbS1SGxJZFLYsasLLOIXjBtuz8EZkPoGxcJRO79lqSwN8VjuDhjLSuQAvlWi
	/plbGVN+QUIpSI0ghsdaoVz6JYyYW0DHj6PwjHUR+YKB4Pvg6mtSkjBw7XnwtBLVfrZDUc6dCGI
	0ZelIUtxZg+qXUw==
X-Google-Smtp-Source: AGHT+IEQJduAXZs3aZtQP/SFinImSgPrv/BzlpYBHdqvnijb/cm07H1gezCvMXC8chwaaMWD+ODVHw==
X-Received: by 2002:a17:907:ec07:b0:ae0:e1ed:d1a0 with SMTP id a640c23a62f3a-afddf06d549mr129832166b.8.1755588400285;
        Tue, 19 Aug 2025 00:26:40 -0700 (PDT)
Received: from localhost ([195.52.61.108])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-afcdd018b54sm945228866b.104.2025.08.19.00.26.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 00:26:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=1b96d25f8de31cf85e8d6d9d187dcf0b57a5a7b73e0ea3b79f1679872045;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Tue, 19 Aug 2025 09:26:32 +0200
Message-Id: <DC6859ROON75.1JHG3611O74Q5@baylibre.com>
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
References: <20250812-topic-mcan-wakeup-source-v6-12-v8-0-6972a810d63b@baylibre.com> <20250812-topic-mcan-wakeup-source-v6-12-v8-1-6972a810d63b@baylibre.com> <20250813-shaggy-notorious-octopus-718ca6-mkl@pengutronix.de>
In-Reply-To: <20250813-shaggy-notorious-octopus-718ca6-mkl@pengutronix.de>

--1b96d25f8de31cf85e8d6d9d187dcf0b57a5a7b73e0ea3b79f1679872045
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Wed Aug 13, 2025 at 9:37 AM CEST, Marc Kleine-Budde wrote:
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
>
> What non TI SoCs that don't have partial IO and want regular Wake-On-CAN
> and don't define system idle states?

You could simply add system idle states for the state that mcan should
be a wakeup source for. The system idle state could be anything like
standby or mem for example, depending on your SoC and in which staste
Wake-On-CAN is working. Or if this doesn't fit, the binding could later
be extended to accept wakeup-source as a boolean property.

Best
Markus

--1b96d25f8de31cf85e8d6d9d187dcf0b57a5a7b73e0ea3b79f1679872045
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iKMEABYKAEsWIQSJYVVm/x+5xmOiprOFwVZpkBVKUwUCaKQnKBsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMSwyLDIRHG1zcEBiYXlsaWJyZS5jb20ACgkQhcFWaZAVSlOJ
SAEAqTh7PBDFQHAV2tsURRJ3/ADQBvwM+ffUyTHK9EefkkABANg9QIdqvoBvrN+n
tGDan+26ATTU1XNF1ZwYaMB2fIsI
=BSDj
-----END PGP SIGNATURE-----

--1b96d25f8de31cf85e8d6d9d187dcf0b57a5a7b73e0ea3b79f1679872045--

