Return-Path: <devicetree+bounces-77757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CD690FE3B
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 10:05:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 14C59282CEE
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 08:05:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DAC46F311;
	Thu, 20 Jun 2024 08:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="yFFFpxI+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68639558AD;
	Thu, 20 Jun 2024 08:05:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718870727; cv=none; b=VnHsbd+aWMJotqH9FbtskBsQdHs8R4JnQWOio37a9uPqbjLKSIrYCNICFVMMgcfbL3aKXHIhg1mUspODxzLgk3HOhA/fvASlnq24HlcfCk4oQi0TnvAvMfiK4UqMBqB8llqm0ZN3PpevHbRXgVFWd0+5G/C70b+v164nOEjfRjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718870727; c=relaxed/simple;
	bh=S8QVhNlYqwY0mp7fvMRUSvmspg5AnOSJ/oJNb895TMQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=nu8rr1vGJcPPuqb7GhEMvRmWQWFyQYmd0A3eg0/IAE1C4FIduJzCR8ZD4mIdVZMHn872CeityukGWbpuhi11UdHgOevENzsGAzyYgcAoAbjHqrNmnix2Z6u15JFEVZ26oehelf/MrkfjUX/GtN9czKq/e/84zVIP2PYKQMeLmH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=yFFFpxI+; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45K75doe021903;
	Thu, 20 Jun 2024 10:04:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	29Qvz1Xviwr3psGJQapaZwCmNwh9pWS+KTq7s99H4m8=; b=yFFFpxI+oGQEFLU1
	NxJS4ZOjNzsIrzXacuzADB19sgKM7Rx2PamHDZ8FnAlMVvcVv9peIdFCAbLj0unA
	1zkuu3Dn9IcAe5nI7P84EOd6xUBLPCRRiiw5LjXQaKCCxZRfx8ZIAw7XruPWrKc9
	lEvRg+5wZrV/KBP8KCi40WDQ9czGSu7XdUiX3y3siZtNg7OLfsUQhQqzXaUxjreV
	shi+XKVTC/CNOUA43/TFDo+6ZqVgY2A80WDBYV8mLhchjvIbtTUDCvEv+r3Mhu7t
	1QBsAzIZLLb7dzqfQDzoe9suHGxkjTIeb+fBIwsViGEBpPm3eEXyppSuK5TcPP00
	AB7JsQ==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3yuj9n72a4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 Jun 2024 10:04:45 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 24E944002D;
	Thu, 20 Jun 2024 10:04:40 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4894B215132;
	Thu, 20 Jun 2024 10:03:46 +0200 (CEST)
Received: from [10.48.86.132] (10.48.86.132) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Thu, 20 Jun
 2024 10:03:45 +0200
Message-ID: <4734e915-9ea7-4e65-a9ef-bc1e88c40e76@foss.st.com>
Date: Thu, 20 Jun 2024 10:03:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/8] dt-bindings: iio: dfsdm: move to backend framework
To: Conor Dooley <conor@kernel.org>
CC: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
        Jonathan Cameron
	<jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>, Rob Herring
	<robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre
 Torgue <alexandre.torgue@foss.st.com>,
        Fabrice Gasnier
	<fabrice.gasnier@foss.st.com>,
        <alsa-devel@alsa-project.org>, <linux-iio@vger.kernel.org>,
        <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20240618160836.945242-1-olivier.moysan@foss.st.com>
 <20240618160836.945242-5-olivier.moysan@foss.st.com>
 <20240618-footwear-impotence-5284985a609d@spud>
Content-Language: en-US
From: Olivier MOYSAN <olivier.moysan@foss.st.com>
In-Reply-To: <20240618-footwear-impotence-5284985a609d@spud>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-20_04,2024-06-19_01,2024-05-17_01

Hi Conor,

On 6/18/24 20:10, Conor Dooley wrote:
> On Tue, Jun 18, 2024 at 06:08:30PM +0200, Olivier Moysan wrote:
>> Change the DFSDM binding to use the new IIO backend framework,
>> along with the adoption of IIO generic channels.
>> This binding change allows to add scaling support to the DFSDM.
>>
>> Keep the legacy binding as deprecated for backward compatibility.
>>
>> The io-backends property is supported only in generic IIO channel
>> binding.
>>
>> - Channel description with the generic binding (Audio and Analog):
>>
>>    Properties supersed by generic properties:
>>      st,adc-channels: becomes "reg" property in channel node
>>      st,adc-channel-names: becomes "label" property in channel node
>>    Properties moved to channel child node:
>>      st,adc-channel-types, st,adc-channel-clk-src, st,adc-alt-channel
>>
>> - Analog binding:
>>
>>    DFSDM filter channel is configured as an IIO backend consumer.
>>    Add io-backends property in channel child nodes.
>>
>>    DFSDM is no more configured as a channel consumer from SD modulator.
>>    Use of io-channels in DFSDM node is deprecated.
>>
>> - Audio binding:
>>
>>    DFSDM audio DAI is configured as a channel consumer from DFSDM filter.
>>    No change compare to legacy.
>>
>> Signed-off-by: Olivier Moysan <olivier.moysan@foss.st.com>
>> ---
>>   .../bindings/iio/adc/st,stm32-dfsdm-adc.yaml  | 158 +++++++++++++++++-
>>   1 file changed, 152 insertions(+), 6 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.yaml b/Documentation/devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.yaml
>> index c1b1324fa132..dd414bab74c1 100644
>> --- a/Documentation/devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.yaml
>> +++ b/Documentation/devicetree/bindings/iio/adc/st,stm32-dfsdm-adc.yaml
>> @@ -102,9 +102,11 @@ patternProperties:
>>           items:
>>             minimum: 0
>>             maximum: 7
>> +        deprecated: true
>>   
>>         st,adc-channel-names:
>>           description: List of single-ended channel names.
>> +        deprecated: true
>>   
>>         st,filter-order:
>>           description: |
>> @@ -118,6 +120,12 @@ patternProperties:
>>         "#io-channel-cells":
>>           const: 1
>>   
>> +      '#address-cells':
>> +        const: 1
>> +
>> +      '#size-cells':
>> +        const: 0
>> +
>>         st,adc-channel-types:
>>           description: |
>>             Single-ended channel input type.
>> @@ -128,6 +136,7 @@ patternProperties:
>>           items:
>>             enum: [ SPI_R, SPI_F, MANCH_R, MANCH_F ]
>>           $ref: /schemas/types.yaml#/definitions/non-unique-string-array
>> +        deprecated: true
>>   
>>         st,adc-channel-clk-src:
>>           description: |
>> @@ -139,6 +148,7 @@ patternProperties:
>>           items:
>>             enum: [ CLKIN, CLKOUT, CLKOUT_F, CLKOUT_R ]
>>           $ref: /schemas/types.yaml#/definitions/non-unique-string-array
>> +        deprecated: true
>>   
>>         st,adc-alt-channel:
>>           description:
>> @@ -147,6 +157,7 @@ patternProperties:
>>             If not set, channel n is connected to SPI input n.
>>             If set, channel n is connected to SPI input n + 1.
>>           type: boolean
>> +        deprecated: true
>>   
>>         st,filter0-sync:
>>           description:
>> @@ -165,11 +176,65 @@ patternProperties:
>>         - compatible
>>         - reg
>>         - interrupts
>> -      - st,adc-channels
>> -      - st,adc-channel-names
>>         - st,filter-order
>>         - "#io-channel-cells"
>>   
>> +    patternProperties:
>> +      "^channel@([0-9]|1[0-9])$":
>> +        type: object
>> +        $ref: adc.yaml
>> +        description: Represents the external channels which are connected to the DFSDM.
>> +
>> +        properties:
>> +          reg:
>> +            items:
>> +              minimum: 0
>> +              maximum: 8
>> +
>> +          label:
>> +            description:
>> +              Unique name to identify which channel this is.
>> +
>> +          st,adc-channel-types:
>> +            description: |
>> +              Single-ended channel input type.
>> +              - "SPI_R": SPI with data on rising edge (default)
>> +              - "SPI_F": SPI with data on falling edge
>> +              - "MANCH_R": manchester codec, rising edge = logic 0, falling edge = logic 1
>> +              - "MANCH_F": manchester codec, rising edge = logic 1, falling edge = logic 0
>> +            items:
>> +              enum: [ SPI_R, SPI_F, MANCH_R, MANCH_F ]
>> +            $ref: /schemas/types.yaml#/definitions/non-unique-string-array
> 
> Why is this an array? And why is the property plural? Can a channel have
> more than one type?
> 

You are right. In channel node context, this property is no more an 
array. It has to be managed as a single string (This is already the case 
in the driver). I will change the type in binding and the name, to 
reflect this.

>> +
>> +          st,adc-channel-clk-src:
>> +            description: |
>> +              Conversion clock source.
>> +              - "CLKIN": external SPI clock (CLKIN x)
>> +              - "CLKOUT": internal SPI clock (CLKOUT) (default)
>> +              - "CLKOUT_F": internal SPI clock divided by 2 (falling edge).
>> +              - "CLKOUT_R": internal SPI clock divided by 2 (rising edge).
>> +            items:
>> +              enum: [ CLKIN, CLKOUT, CLKOUT_F, CLKOUT_R ]
>> +            $ref: /schemas/types.yaml#/definitions/non-unique-string-array
> 
> Ditto here, but s/type/clock source/
> 

Same here.

> Thanks,
> Conor.
> 
>> +
>> +          st,adc-alt-channel:
>> +            description:
>> +              Must be defined if two sigma delta modulators are
>> +              connected on same SPI input.
>> +              If not set, channel n is connected to SPI input n.
>> +              If set, channel n is connected to SPI input n + 1.
>> +            type: boolean
>> +
>> +          io-backends:
>> +            description:
>> +              From common IIO binding.
> 
> Drop this from the description.
> 
>> Used to pipe external sigma delta
>> +              modulator or internal ADC backend to DFSDM channel.
>> +
>> +        required:
>> +          - reg
>> +
>> +        additionalProperties: false
>> +
>>       allOf:
>>         - if:
>>             properties:
>> @@ -199,9 +264,19 @@ patternProperties:
>>                 description:
>>                   From common IIO binding. Used to pipe external sigma delta
>>                   modulator or internal ADC output to DFSDM channel.
>> +              deprecated: true
>>   
>> -          required:
>> -            - io-channels
>> +          if:
>> +            required:
>> +              - st,adc-channels
>> +          then:
>> +            required:
>> +              - io-channels
>> +
>> +          patternProperties:
>> +            "^channel@([0-9]|1[0-9])$":
>> +              required:
>> +                - io-backends
> 
> Why is this here, rather than with reg above? Only some channels require
> a backend?

The io-backends property is required only when we use st,stm32-dfsdm-adc 
compatible. In other words, when we are in an analog use case. In this 
case the channel is a consumer of a backend (typically a sd modulator)
In an audio use case (compatible st,stm32-dfsdm-dmic) the backend is not 
required.

BRs
Olivier





