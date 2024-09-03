Return-Path: <devicetree+bounces-99289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D9E9695E2
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 09:44:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BC7481C22148
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 07:44:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 464C81DAC7E;
	Tue,  3 Sep 2024 07:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="OWd4peMz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B32C41DAC56
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 07:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725349469; cv=none; b=K/ZIaRudT1OhGUugNweijIJ8ehsGPMCew9PPcD3TN3TVsE4NQlJJiw3RqKYHfCZ2L/wpiaFvMFWwe3AwHp/HtNoNyybY8+9C/2fMJVDnUr1Q34swhuAIaf6jQ5WtVzB/pPGIGgz0jWAlf0ZoPJVGiZlTRuTVGwcMeQo0/8VkfC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725349469; c=relaxed/simple;
	bh=0+M8rMLBTVIxy8yBSrMgR+YiNFowQZOTrYpnPntvXjI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sWbaZAYT8BXZVgVe8Wa5c2Kt97pVyL0MnQuQO35rS7ascwaHVjtWDv6XmLrqkkrE7DLyolgRuYWRV1hmP7G6Q3BVSd5IG1WXWLh2bNtrvkQ8LZZz3BamecKVDKA8mCQP9JpLEfIDzelC+RaVEsX7wicSzvxO7I4XXGw9Dy9rodk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=OWd4peMz; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a7a843bef98so499599566b.2
        for <devicetree@vger.kernel.org>; Tue, 03 Sep 2024 00:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1725349465; x=1725954265; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+jkagtMugvXJYe7HevUiz3D2qokDPx9P2hSleDH86ks=;
        b=OWd4peMzdJZJHUDtU2k7rvk9Bw8edHgxCO+RIbGIR2ktEavP/vlh7NdB7RmkECvRM4
         9JbZA1won6j2v/A9IpfLGP/ghdEp1hJB6Sbon+Pb4MMxvSVztx5Eji4vV09Iv3Acq4TJ
         9oMIs+zHy9EHMDYsmU/MSgCJFjsEoY9cewAGg8CGBYnT/3hUK7w8pXVTT4s7dLz1SqCk
         tkcf032mmpM/YmZQKR/YuhmvPtAZWJLNaZWthH5cGOcZQbnP0fr1ybEl9CNL3k15iUGW
         ZO16jVgYjItdDvL+6WfVoXTmZUQzPt0X+WTY+pTDAHpDbVOBpYGaqR7rwnReHoBUS7cu
         Cs0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725349465; x=1725954265;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+jkagtMugvXJYe7HevUiz3D2qokDPx9P2hSleDH86ks=;
        b=IDBAvixe+8e/epxLXHDYK43GcOlgbAUgFTRac4bC3lO2PHF1IW8/c5MH/WNalBjLWt
         uFd5veoCulcADGpmVrlBNyCPsAzggdPAtuYKLDZDW+9aED/4IcZKStNRmeMfGg+Tb/vZ
         LsvEj4DGP+bn+ieIh+2HzpZBuVSJyYEcgIbHdKm1N9b+aArL/zV9vm1nFofyxeTF4TyB
         KWmv+jXh/gm6MRwzgmN0cXVKama4G/DEzp0gn62z9dW+e0h6Y7CzzfUo9KQdyYpMwHyP
         eGV3vT6dzX+VXdKYvIfFiiJLvPlz0H5FSDDLCNQB40cNoOXcMWry9Hxjb4zqsKmgBXO8
         lWAQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwMIaKauVnURUBT3VHBbBdI+7wP2G+DxicQlWVmLwbe83P1flhTFjJiL1TZwzTxuL0s3BTHysYOQ37@vger.kernel.org
X-Gm-Message-State: AOJu0YzEJkO8K6x+U6AggR8dzG2B33I64BfvccAvXtuJV1/84jiq+ke4
	QdpZvGFgI6106ZCXu9PrXv32Tz1FWIQzJdGwWrwkbpeT5W5yus29IakE9HILXD4=
X-Google-Smtp-Source: AGHT+IGud6QEPL13/BUmwGdFsCxrfaWzL092N//LiNMPSbRgYJA7J25IPj1EOSj1b0wYA1UzsVwdtA==
X-Received: by 2002:a17:907:3684:b0:a77:b5c2:399 with SMTP id a640c23a62f3a-a89d879c0a9mr661625066b.31.1725349464800;
        Tue, 03 Sep 2024 00:44:24 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8989196a86sm648592666b.127.2024.09.03.00.44.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Sep 2024 00:44:24 -0700 (PDT)
Message-ID: <a1a665b9-05f1-43a8-88bc-2701cdd0e4ee@tuxon.dev>
Date: Tue, 3 Sep 2024 10:44:22 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/12] dt-bindings: clock: renesas,r9a08g045-vbattb:
 Document VBATTB
Content-Language: en-US
To: Biju Das <biju.das.jz@bp.renesas.com>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "magnus.damm@gmail.com" <magnus.damm@gmail.com>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>
Cc: "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rtc@vger.kernel.org" <linux-rtc@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240830130218.3377060-1-claudiu.beznea.uj@bp.renesas.com>
 <20240830130218.3377060-2-claudiu.beznea.uj@bp.renesas.com>
 <TY3PR01MB11346D59E486D88611E8F254F86932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <54d60105-ee5b-48da-92f4-2bcb3dff5c92@tuxon.dev>
 <TY3PR01MB11346F4625C5C7D321490306E86932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB11346F4625C5C7D321490306E86932@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 03.09.2024 10:36, Biju Das wrote:
> Hi Claudiu,
> 
>> -----Original Message-----
>> From: claudiu beznea <claudiu.beznea@tuxon.dev>
>> Sent: Tuesday, September 3, 2024 8:28 AM
>> Subject: Re: [PATCH v3 01/12] dt-bindings: clock: renesas,r9a08g045-vbattb: Document VBATTB
>>
>>
>>
>> On 03.09.2024 09:58, Biju Das wrote:
>>> Hi Claudiu,
>>>
>>>> -----Original Message-----
>>>> From: Claudiu <claudiu.beznea@tuxon.dev>
>>>> Sent: Friday, August 30, 2024 2:02 PM
>>>> Subject: [PATCH v3 01/12] dt-bindings: clock:
>>>> renesas,r9a08g045-vbattb: Document VBATTB
>>>>
>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>
>>>> The VBATTB IP of the Renesas RZ/G3S SoC controls the clock for RTC,
>>>> the tamper detector and a small general usage memory of 128B. Add documentation for it.
>>>>
>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>> ---
>>>>
>>>> Changes in v3:
>>>> - moved the file to clock dt bindings directory as it is the
>>>>   only functionality supported at the moment; the other functionalities
>>>>   (tamper detector, SRAM) are offered though register spreaded
>>>>   though the address space of the VBATTB IP and not actually
>>>>   individual devices; the other functionalities are not
>>>>   planned to be supported soon and if they will be I think they
>>>>   fit better on auxiliary bus than MFD
>>>> - dropped interrupt names as requested in the review process
>>>> - dropped the inner node for clock controller
>>>> - added #clock-cells
>>>> - added rtx clock
>>>> - updated description for renesas,vbattb-load-nanofarads
>>>> - included dt-bindings/interrupt-controller/irq.h in examples section
>>>>
>>>> Changes in v2:
>>>> - changed file name and compatible
>>>> - updated title, description sections
>>>> - added clock controller part documentation and drop dedicated file
>>>>   for it included in v1
>>>> - used items to describe interrupts, interrupt-names, clocks, clock-names,
>>>>   resets
>>>> - dropped node labels and status
>>>> - updated clock-names for clock controller to cope with the new
>>>>   logic on detecting the necessity to setup bypass
>>>>
>>>>  .../clock/renesas,r9a08g045-vbattb.yaml       | 81 +++++++++++++++++++
>>>>  1 file changed, 81 insertions(+)
>>>>  create mode 100644
>>>> Documentation/devicetree/bindings/clock/renesas,r9a08g045-vbattb.yaml
>>>>
>>>> diff --git
>>>> a/Documentation/devicetree/bindings/clock/renesas,r9a08g045-vbattb.ya
>>>> ml
>>>> b/Documentation/devicetree/bindings/clock/renesas,r9a08g045-vbattb.ya
>>>> ml
>>>> new file mode 100644
>>>> index 000000000000..29df0e01fae5
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/clock/renesas,r9a08g045-vbatt
>>>> +++ b.y
>>>> +++ aml
>>>> @@ -0,0 +1,81 @@
>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
>>>> +---
>>>> +$id:
>>>> +http://devicetree.org/schemas/clock/renesas,r9a08g045-vbattb.yaml#
>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>> +
>>>> +title: Renesas Battery Backup Function (VBATTB)
>>>> +
>>>> +description:
>>>> +  Renesas VBATTB is an always on powered module (backed by battery)
>>>> +which
>>>> +  controls the RTC clock (VBATTCLK), tamper detection logic and a
>>>> +small
>>>> +  general usage memory (128B).
>>>> +
>>>> +maintainers:
>>>> +  - Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>> +
>>>> +properties:
>>>> +  compatible:
>>>> +    const: renesas,r9a08g045-vbattb
>>>> +
>>>> +  reg:
>>>> +    maxItems: 1
>>>> +
>>>> +  interrupts:
>>>> +    items:
>>>> +      - description: tamper detector interrupt
>>>> +
>>>> +  clocks:
>>>> +    items:
>>>> +      - description: VBATTB module clock
>>>> +      - description: RTC input clock (crystal oscillator or external
>>>> + clock device)
>>>> +
>>>> +  clock-names:
>>>> +    items:
>>>> +      - const: bclk
>>>> +      - const: rtx
>>>> +
>>>> +  '#clock-cells':
>>>> +    const: 1
>>>> +
>>>> +  power-domains:
>>>> +    maxItems: 1
>>>
>>> Not sure, you need to document "PD_VBATT" power domain as per Table
>>> 41.2, this LSI supports 3 power domains(PD_ISOVCC, PD_VCC, PD_VBATT)
>>>
>>> Power Mode PD_ISOVCC PD_VCC PD_VBATT
>>> ALL_ON      ON          ON    ON
>>> AWO         OFF         ON    ON
>>> VBATT       OFF         OFF   ON
>>> ALL_OFF     OFF         OFF   OFF
>>>
>>> PD_VBATT domain is the area where the RTC/backup register is located,
>>> works on battery power when the power of PD_VCC and PD_ISOVCC domain are turned off.
>>
>> In Linux, the CPG is the power domain provider for all the IPs in RZ/G3S SoC (modeled though MSTOP CPG
>> support). This is how it is currently implemented.
>>
>> Then groups of IPs are part of power domains PD_ISOVCC, PD_VCC, PD_VBATT.
>> These power domains are i2c controlled with the help of firmware (at least at the moment).
>>
>> From HW manual:
>> - PD_VCC domain always powered on area.
>>
>> - PD_ISOVCC domain is the area where the power can be turned off.
>>
>> - PD_VBATT domain is the area where the RTC/backup register is located,
>>   works on battery power when the power of .
>>
>> The power to these domains are controlled with the help of firmware. Linux cannot do control itself as
>> the CPU is in the PD_ISOVCC. If you look at picture 41.3 Power mode transition [1] it is mentioned the
>> relation b/w these power domains (controlled by PMIC though firmware) and the supported power saving
>> modes: ALL_ON, AWO, VBATT.
>>
> 
> DT describes hardware. So, the question was, from that perspective, do we need to document PD_VBATT domain,
> as it can be controlled outside linux??

The control to these domains is passed to firmware.

From my point of view these will never be used by Linux becuase:
- the PD_ISOVCC is where the CPU resides and it cannot cut itself its power
- the PD_VCC is a domain where critical IPs like CPG, SYSC resides
- the VBATT is where the RTC resides, RTC that should stay on forever

Should we document something that will be never used?

> 
> Cheers,
> Biju

