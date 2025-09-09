Return-Path: <devicetree+bounces-214792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87085B4A690
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 11:05:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36B6817038F
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 09:05:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26B25276051;
	Tue,  9 Sep 2025 09:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="rxogbAOX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D826275AFB
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 09:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757408727; cv=none; b=E6CxzQpr8UwMXSzJO56VoEbxFlPRX9q8cdZu3Mhm2wdVDxiYdMP3wTtZ5OMKDZ2j0bA3ooords1A1ChqFLf9BV/lfoyujnU4/ym3/Pzk46WNcd83SYLCVPyEbmegpVfLbhzA/bDAkAPI/eqFK90nJPfvuUTAZ9HQTpK/sVJihig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757408727; c=relaxed/simple;
	bh=oKt+5SuE9mqrDfjDXh6mBMRn1amqw6YNu8oG74Kyjxg=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=Ro0W5NF0O8iM4l/v/p3HiuAulFJyRBuifPyGdT/OyqfoPN+OhVbncPgO47hWLir4ueRyG3CvLfOZJ6HRtk1g4YCELHkcUFXlKY4yiiKD0eS8FHsQwtelNumL1LFjsK3YeMAdho9JoVJoZ/uxt9dMGXgUxj6gWvommjklrPQCVis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=rxogbAOX; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b0473327e70so866925566b.3
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 02:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757408723; x=1758013523; darn=vger.kernel.org;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NLqPkG/6OItE3LNH6o7MdT1z3Tt1LqmCkBoUP1DPapY=;
        b=rxogbAOXxGWNGch+EPV8UCqdt1kRTPuQ3BJsSAHf3fM1YmJEkTJEjKrC52AN4SHDUm
         VW/Hf2WNgVInFDQxPTfSJFu8ajqI3isia0VL1OmXHWHhh4MCZo+xKaBpi/iWi5jkeHUK
         cTBEExHWNo19qcm/cVo6Uj7Y0B1sPCK71zewnskTDtt/3zFkCdTvT2j1mL63RiO7gaYS
         GnHouhA1R1kcGk0HCgs5uk0URURlONS8N1esYWuqLLMZZ6P8LAEsulDSKRntZtrPfFFh
         PHcU6whp9kOearMd6ezzJS4us5O+XzuZyfjIJV8yq3yelh42+P1BntKdpdXfXOxIxxEt
         TL+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757408723; x=1758013523;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NLqPkG/6OItE3LNH6o7MdT1z3Tt1LqmCkBoUP1DPapY=;
        b=FUT7kdgLdIBrhg1NJwDY2K6gd+5ZwLulyNL4gp3yirX4s19D159E4/YlniYvBa2qT9
         LBJFaDvFTExrcQ8Z7tYcbBAKijls7kE3cEfVL2x3zkpPC9eLZtWiKXohxB89tneho1ag
         /WLuyJxhShA/M2g4/Oq9v/S+6RnwUi3wrqTI0T+hoCG1SAAUvlv89YN4ESojq1f1UVfL
         l1lzz+jFk+BqNRdXBc17/zhE2RrtwDh3NcZ4v15cqzLJlrmw9Lw4xBC2icNS0rf4mbBX
         2sGzdHw3CsDYJfj623VsaPl7hiaY0nIMzrjbPCsyQyzSpFLJ8XwFWU+TVsB3Or7rV1vs
         fg2Q==
X-Forwarded-Encrypted: i=1; AJvYcCXKQ2jcBNL2m+1ljAGbbbMcob6jTizs7hz8Z5+6q+msvFyWDxXNCBGuueur7hdhuPfmeab/gvTsmfv0@vger.kernel.org
X-Gm-Message-State: AOJu0YyKf2QJY6Z43Ba3YguCmcFE7JOXH87bgcek0yDreABQZVSsEvN0
	azNyumByPlQa+pS9nUxS3VqjBMwPME5vhsFL/zysD/sXMP68XIdQXgwnCTYISQexHoM=
X-Gm-Gg: ASbGncvDV+cW+qJ/IfmC1uTphKRTsu+sJuFABKN9SiRmIe/vK6Vb1LsOzT1GThNlgOT
	HuIcjddXeNP8cc3gEl1sbIyOXq8ugt+gqv8/aPByEBvHzg/1zmyWivsHn532VWdj5gWZfXzJLaN
	fjwLde4Rzjv2/LkatPS7DYghaPF7rIuUHfNLLBcx5GejbZeLtUmxdKNCPsvvdUBHNryXhhNHYad
	IFdq6sGRj8oH6BT/BajEZ06WwUSHlAEamwmHQQtcCVzAUyBudu1QGaTyCTRjkOd8WXi+Jssyaw+
	Qocm/D1k05lI+/LN1HbkYeGRqSIeGOOutj9PiY8jnfCVOmAp+DtF6qdYQLlf1D2ZuBnppYBbTl9
	qWG49zwnSf3LkPNJ+pWyvu6mnvg==
X-Google-Smtp-Source: AGHT+IGtGald5QrfplS4Quy+YJGLLien3U7oYcfVEvokQ+pid2O27coZ/lipvsj1OLSEf2foHdFxnw==
X-Received: by 2002:a17:907:86aa:b0:b04:33a1:7f1b with SMTP id a640c23a62f3a-b04b1446e50mr1014087266b.19.1757408723315;
        Tue, 09 Sep 2025 02:05:23 -0700 (PDT)
Received: from localhost ([195.52.61.108])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b041565ca98sm2278271866b.86.2025.09.09.02.05.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 02:05:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=d7ea47f27b94c7fe0e2fcfb85371fcda0229f4569d05d02422f5fc70ce90;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Tue, 09 Sep 2025 11:05:17 +0200
Message-Id: <DCO5EBFY39Q7.1AUMHXZPJF96S@baylibre.com>
Subject: Re: [PATCH 1/3] dt-bindings: serial: 8250_omap: Update
 wakeup-source type property
From: "Markus Schneider-Pargmann" <msp@baylibre.com>
To: "Conor Dooley" <conor@kernel.org>, "Kendall Willis" <k-willis@ti.com>
Cc: <gregkh@linuxfoundation.org>, <jirislaby@kernel.org>, <robh@kernel.org>,
 <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <vigneshr@ti.com>,
 <linux-kernel@vger.kernel.org>, <linux-serial@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <d-gole@ti.com>, <vishalm@ti.com>,
 <sebin.francis@ti.com>, <khilman@baylibre.com>, <a-kaur@ti.com>,
 <john.ogness@linutronix.de>, <andriy.shevchenko@linux.intel.com>,
 <yujiaoliang@vivo.com>, <b-liu@ti.com>, <u.kleine-koenig@baylibre.com>
X-Mailer: aerc 0.20.1
References: <20250904212455.3729029-1-k-willis@ti.com>
 <20250904212455.3729029-2-k-willis@ti.com>
 <20250905-saloon-siesta-77da98d7ae02@spud>
In-Reply-To: <20250905-saloon-siesta-77da98d7ae02@spud>

--d7ea47f27b94c7fe0e2fcfb85371fcda0229f4569d05d02422f5fc70ce90
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Fri Sep 5, 2025 at 8:38 PM CEST, Conor Dooley wrote:
> On Thu, Sep 04, 2025 at 04:24:53PM -0500, Kendall Willis wrote:
>> Allow the wakeup-source property to be either of type boolean or of a
>> phandle array. The phandle array points to the system idle states that t=
he
>> UART can wakeup the system from.
>>=20
>> Signed-off-by: Kendall Willis <k-willis@ti.com>
>> ---
>>  Documentation/devicetree/bindings/serial/8250_omap.yaml | 8 +++++++-
>>  1 file changed, 7 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/Documentation/devicetree/bindings/serial/8250_omap.yaml b/D=
ocumentation/devicetree/bindings/serial/8250_omap.yaml
>> index 1859f71297ff2..851a5291b4be4 100644
>> --- a/Documentation/devicetree/bindings/serial/8250_omap.yaml
>> +++ b/Documentation/devicetree/bindings/serial/8250_omap.yaml
>> @@ -69,7 +69,13 @@ properties:
>>    clock-frequency: true
>>    current-speed: true
>>    overrun-throttle-ms: true
>> -  wakeup-source: true
>> +
>> +  wakeup-source:
>> +    oneOf:
>> +      - type: boolean
>> +      - $ref: /schemas/types.yaml#/definitions/phandle-array
>> +        description:
>> +          List of phandles to system idle states in which UARTs can wak=
eup the system.
>
> Is there a single other instance of the wakeup-source property being
> used like this?

This was added to the dt-schema repository:
  https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/wa=
keup-source.yaml

I don't think this needs to be repeated in every binding, so I think you
can just drop this unless there are specifics for this device.

Best
Markus

--d7ea47f27b94c7fe0e2fcfb85371fcda0229f4569d05d02422f5fc70ce90
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iKMEABYKAEsWIQSJYVVm/x+5xmOiprOFwVZpkBVKUwUCaL/tzRsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMSwyLDIRHG1zcEBiYXlsaWJyZS5jb20ACgkQhcFWaZAVSlOf
fAD8DAQ97AbJ+p0LGAn2867WJ1+6lsRnR/L8zCEhhVRShSIA/RLlcsesqmk0jRon
0iZUkj/uUh+7HeN8p0ojfkQuG9cD
=WEOi
-----END PGP SIGNATURE-----

--d7ea47f27b94c7fe0e2fcfb85371fcda0229f4569d05d02422f5fc70ce90--

