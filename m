Return-Path: <devicetree+bounces-107873-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAC4990448
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 15:29:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 420E61C211DA
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 13:28:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAB0D210198;
	Fri,  4 Oct 2024 13:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="HmKkVbK1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA2B72101BD
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 13:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728048387; cv=none; b=Ft2aUDjyeTMMzOSTX3scs46XljdTixf5yqwaDfwn+SoWwpptyApfGHJS9PFPDBYEDYkpTwv8uZaNv/1VyAFY0HnFjrBcSgIFOWtTJjrTjGOeVhyWLmUVTG99OZ/r7fjJHoKJ26OvrtyH9rzCafvtgx9coIs5KRYPO2yUKcm8yP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728048387; c=relaxed/simple;
	bh=kLpfYpjN7hBTTNjwKDBAnyESdPp55s0Z+2n88W92KlA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ujEYfJZOoMHHNx/av/VXNlhH/S40VBx7orSuz4wWQPYcEyTQAJi+3aGbo6ax1ofJGPq3ypv/y6hSqyiusxESzq3rB4DrXLLNRoEPduV0Tg9Wc9k1Y8c5V8U/NWyJp05ug16m2QTsVJvpMgkXsstmgGmQ7hT3uKzXktNzZ7hfhk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=HmKkVbK1; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3e04b7b3c6dso1128764b6e.2
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 06:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728048385; x=1728653185; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dor1Hehoddjqsld8OAN62L2MZYDwDDLrJAOii0XS1Fo=;
        b=HmKkVbK1dFA2DVvGH+MSywMUMlGwwbMVaEuv4cqlxgHiFZ9lowFRG1+qEK0dYkiIKx
         McGrqJrO1FDp1YuOteurnD6IUZEEycx1pKw6XDPHNAJQVzTUsI5se4ULIZXkHTUt9h7M
         G9xfm/U6UcZMUOL1Qs2PwVvZsFVN9zyOIJI+NOg2EFc12JtccAd5uioJmQjRW8pvUfOb
         Rmp3DxsJI+HqT+kUPINiSyGs5+PLNbs//ZQDWYgxyIQAtJQgxpP8lW69L+TVQN1t8342
         YhHH56wGqB2bCDRPBJfxzF15HASxnkbKpe3ex43V1HOzO2WukwDIEgBUQKNHWJbp7cUd
         QdZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728048385; x=1728653185;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dor1Hehoddjqsld8OAN62L2MZYDwDDLrJAOii0XS1Fo=;
        b=XSVflijRCyF2ziS2Nr3xJQazHHlGT9i1Fk0zv1tN4W/WlyxpIrg2pFqmuZC/axFp7d
         Rf9Rrc/qoMj4VfaFEjjTFDBTb3ZzIcrUBCJ2x48WN34inEE/b/x1zxiUZ5QO0ohtZDni
         XG76LJMc+MOfS3m21Ff4ZswwhcAQc9liEQEFNnkowfHiqDLOmKwuCnHY4WD+Uruc60z6
         1DJeD012Kzu80kcUsIZwsErGAmnevjAIglKJ9ibcWrbUVcW/isXbRPjf+OfOr5ztoObI
         aamiL4ksGqNnX99S39Yu12rkRXEC/vp+vuOS+93Myr+0Vt93cOxzAvZMte7+47UsgE9R
         5PpQ==
X-Forwarded-Encrypted: i=1; AJvYcCXzJ840aFU97S6RwTEaaCwZkOkM3nrW3jLcEnURi3GEAK6dYPWAEuF1XqNk3BeY050WJFIlrJr4ERLK@vger.kernel.org
X-Gm-Message-State: AOJu0YzyymynYfURRp13fPuyVLnX7CC1Vr1gho4hQqr2Ts6YpB5P8YuV
	0npbXucRuIh7tR1EA1kCyIRzw0uDY5jqimAQPyNNXczQaf3eTLquG2oPhRrbIJI=
X-Google-Smtp-Source: AGHT+IH0fXZFdXaTWMBB85h1CntC6ecOa/OyBp/FNnm/vZ+UgPrGG35oP4F4wojgTWASo0zHEH563Q==
X-Received: by 2002:a05:6808:3022:b0:3e3:97cf:2ecd with SMTP id 5614622812f47-3e3c155921emr1700339b6e.16.1728048384758;
        Fri, 04 Oct 2024 06:26:24 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e3bc36ef91sm959718b6e.34.2024.10.04.06.26.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Oct 2024 06:26:23 -0700 (PDT)
Message-ID: <8faf440b-2ea0-45f3-aa87-db303dc8d6fe@baylibre.com>
Date: Fri, 4 Oct 2024 08:26:21 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 03/11] dt-bindings: iio: dac: adi-axi-dac: add ad3552r
 axi variant
To: Angelo Dureghello <adureghello@baylibre.com>,
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: Nuno Sa <nuno.sa@analog.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Jonathan Cameron <jic23@kernel.org>,
 Mihail Chindris <mihail.chindris@analog.com>,
 Olivier Moysan <olivier.moysan@foss.st.com>, linux-iio@vger.kernel.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org,
 Mark Brown <broonie@kernel.org>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org
References: <20241003-wip-bl-ad3552r-axi-v0-iio-testing-v4-0-ceb157487329@baylibre.com>
 <20241003-wip-bl-ad3552r-axi-v0-iio-testing-v4-3-ceb157487329@baylibre.com>
 <172799847830.1778120.2943655597402379925.robh@kernel.org>
 <744n6dut2ayboh6gilavqy65bgljmu5sz5embvtxcq5v4fhp3f@pfud6d2hiplo>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <744n6dut2ayboh6gilavqy65bgljmu5sz5embvtxcq5v4fhp3f@pfud6d2hiplo>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/4/24 2:33 AM, Angelo Dureghello wrote:
> Hi Rob,
> 
> On 03.10.2024 18:34, Rob Herring (Arm) wrote:
>>
>> On Thu, 03 Oct 2024 19:29:00 +0200, Angelo Dureghello wrote:
>>> From: Angelo Dureghello <adureghello@baylibre.com>
>>>
>>> Add a new compatible and related bindigns for the fpga-based
>>> "ad3552r" AXI IP core, a variant of the generic AXI DAC IP.
>>>
>>> The AXI "ad3552r" IP is a very similar HDL (fpga) variant of the
>>> generic AXI "DAC" IP, intended to control ad3552r and similar chips,
>>> mainly to reach high speed transfer rates using a QSPI DDR
>>> (dobule-data-rate) interface.
>>>
>>> The ad3552r device is defined as a child of the AXI DAC, that in
>>> this case is acting as an SPI controller.
>>>
>>> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
>>> ---
>>>  .../devicetree/bindings/iio/dac/adi,axi-dac.yaml   | 49 +++++++++++++++++++++-
>>>  1 file changed, 48 insertions(+), 1 deletion(-)
>>>
>>
>> My bot found errors running 'make dt_binding_check' on your patch:
>>
>> yamllint warnings/errors:
>>
>> dtschema/dtc warnings/errors:
>> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.example.dtb: dac@0: spi-max-frequency: 66000000 is greater than the maximum of 30000000
>> 	from schema $id: http://devicetree.org/schemas/iio/dac/adi,ad3552r.yaml#

I think this error is just due to patch ordering. The patch
"dt-bindings: iio: dac: ad3552r: fix maximum spi speed"
should come before this one. (In general, it is always best
to put fixes first anyway.)

>> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.example.dtb: dac@0: 'io-backends' does not match any of the regexes: '^channel@([0-1])$', 'pinctrl-[0-9]+'

I've seen this pinctrl error pop up a few other times.
I don't really understand it since none of the bindings
involved reference pinctrl. Maybe an issue in the tooling?

>> 	from schema $id: http://devicetree.org/schemas/iio/dac/adi,ad3552r.yaml#
>>
>> doc reference errors (make refcheckdocs):
>>
>> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20241003-wip-bl-ad3552r-axi-v0-iio-testing-v4-3-ceb157487329@baylibre.com
>>
>> The base for the series is generally the latest rc1. A different dependency
>> should be noted in *this* patch.
>>
>> If you already ran 'make dt_binding_check' and didn't see the above
>> error(s), then make sure 'yamllint' is installed and dt-schema is up to
>> date:
>>
>> pip3 install dtschema --upgrade
>>
>> Please check and re-submit after running the above command yourself. Note
>> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
>> your schema. However, it must be unset to test all examples with your schema.
>>
> 
> before sending the patchset i did
> 
> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/iio/dac/adi,ad3552r.yaml
>   CHKDT   Documentation/devicetree/bindings
>   LINT    Documentation/devicetree/bindings
>   DTC [C] Documentation/devicetree/bindings/iio/dac/adi,ad3552r.example.dtb
> 
> no issues.
> How can i detect the issue so ?
> 
> Thanks,


