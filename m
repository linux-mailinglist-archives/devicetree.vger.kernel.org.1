Return-Path: <devicetree+bounces-96023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 927D995C726
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 10:00:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E052FB24BEF
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2024 08:00:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE510143C4C;
	Fri, 23 Aug 2024 07:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="DoNc3Nrf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DF3A13D897
	for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 07:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724399987; cv=none; b=EMnp/bufN5AgS8kbzjGjVWBXLpvBrg1HJmPR23oUcFK5nZf0xu08UADQLmkHH434NFNPrnl8351lfN6uYmXzdAOlHUwjfYg6CDrCGSqrycvHSKJnmqpwVoMhXrpSPBo9xRz5fgfWNcPs6sx7QqJ2hD0js5yWuSFLnBtgTgdQcxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724399987; c=relaxed/simple;
	bh=dGHVx+hFfK2LkEEUaLJJzkbk61htvECuf2CwQAdYmPw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RtlpGI+Vv9nf/3Ku7/iSlIRr6DtYY40Ifa67P2yKkBO9C+4KjjdLJgAELA0IQ3uKQlg1rfKNalkeQyTak4p5mfkYMVvmqoWIxfRuFKOSJJpTj4VTeRLanxBLvJViqyPYhvxBDmCOwN9adxKJfKxe4yhCV5pErfqWrxuZ2NAbcx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=DoNc3Nrf; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a7aa086b077so196023566b.0
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2024 00:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724399983; x=1725004783; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9cyUaWQ/RfElk/9t5oBKQMBDU3FsVlRw3b+jDEVNsQM=;
        b=DoNc3NrfHp1s2iwmcPndsIbFpdoJkTTwmbp2qyy23PXfUfDARwhZGFQZug8yaiMowb
         j+b+L3x8L29ezFlBfmmAeMgNjqpYpABtTI+0s3HwUnPC7xOjOoIWcnHrZuOpXnpgPFBz
         JzibB354DlcDKzxdAzffbDTMq+gMXw9yksz0J1Y9WiS9OyNS89A3NcZPoXqRE4Dp9FLS
         PMb45DR155zLEUvVeMEqZQpRJJrF0I9pzk2IFYFbgj648VLp4nRC0GLp+lyiH03EBlwD
         Rm0FjLQziaYUeKzqq/Sfbk/TgdDLuOOgatKg9uS6/HpyIfxKPQoqOOk5+iJllniPiSEE
         SZCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724399983; x=1725004783;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9cyUaWQ/RfElk/9t5oBKQMBDU3FsVlRw3b+jDEVNsQM=;
        b=fpIRclNegy9n5yrjad3bFXBOkXNqb60G6Cct5g/7TCT6Eitp3dRwSdYAIgq9pcrn0N
         iqI8bs7fNhx9uZWDRfmBfleLnkpLlHvH6bk+eVSWD+QLkMhEjfSDCt7ybFSHavIUdcT8
         alGIuAgl3JrovxNU71rPEXN06AYLf5PB6vzhpSCjbVz65GEHakzPoHZ0U0uexOyvXOdv
         puBnAeGDjK7v8URoAz+ktH596Nt2Oj48R5tjdCYIXdHYU3ERcr7LUrGyYlfnzLVtrIEY
         Me5iEHjjj999BDVVKo8pYWVq2yy8G3/KohLYxyCvEHPAktPj6udfSbGGdduvJLBWg6pS
         2CGg==
X-Forwarded-Encrypted: i=1; AJvYcCXw+W+tShe+daDhwPOv8SkDkrOXsPss8JIAQyvivwS3OCCap4NXXeshbxVYJj99cu3kSppu6KkrFc3s@vger.kernel.org
X-Gm-Message-State: AOJu0YyIjyirhMUBeHRzqMvZVvwa1rpWhYXHfnzc2VPCxoP3TuEVXCuB
	J7W8Q0V1DdC6I3BLPofxZCAdtOwNwCMSWjGhMVoeiTf/uAq/KSYwHAzHnPRrcL8=
X-Google-Smtp-Source: AGHT+IFALanES9BGD/uHrel10X5aoBTS5/4uaV/A+E4WAJMOHgg5/BTkzR0yFcRw4eCRtDATN+BsLQ==
X-Received: by 2002:a17:907:6d0d:b0:a86:938f:e84c with SMTP id a640c23a62f3a-a86a54df8d3mr78450566b.66.1724399982571;
        Fri, 23 Aug 2024 00:59:42 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f48aac4sm219597466b.185.2024.08.23.00.59.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Aug 2024 00:59:42 -0700 (PDT)
Message-ID: <e0308678-c031-41e1-8d07-d2b78504180f@tuxon.dev>
Date: Fri, 23 Aug 2024 10:59:39 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/16] dt-bindings: soc: renesas: renesas,rzg2l-sysc: Add
 #reset-cells for RZ/G3S
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, geert+renesas@glider.be,
 magnus.damm@gmail.com, gregkh@linuxfoundation.org, mturquette@baylibre.com,
 sboyd@kernel.org, yoshihiro.shimoda.uh@renesas.com,
 biju.das.jz@bp.renesas.com, ulf.hansson@linaro.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-3-claudiu.beznea.uj@bp.renesas.com>
 <20240822-vanilla-enigmatic-f0b05ecca4b6@spud>
 <20240822-mountain-hurdle-dd1f08b96f64@spud>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240822-mountain-hurdle-dd1f08b96f64@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 22.08.2024 19:44, Conor Dooley wrote:
> On Thu, Aug 22, 2024 at 05:42:57PM +0100, Conor Dooley wrote:
>> On Thu, Aug 22, 2024 at 06:27:47PM +0300, Claudiu wrote:
>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>
>>> The RZ/G3S System controller has registers to control signals that need
>>> to be de-asserted/asserted before/after different SoC areas are power
>>> on/off. This signals are implemented as reset signals. For this document
>>> the #reset-cells property.
>>>
>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>> ---
>>>  .../bindings/soc/renesas/renesas,rzg2l-sysc.yaml | 16 ++++++++++++++++
>>>  1 file changed, 16 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
>>> index 4386b2c3fa4d..6b0bb34485d9 100644
>>> --- a/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
>>> +++ b/Documentation/devicetree/bindings/soc/renesas/renesas,rzg2l-sysc.yaml
>>> @@ -42,12 +42,28 @@ properties:
>>>        - const: cm33stbyr_int
>>>        - const: ca55_deny
>>>  
>>> +  "#reset-cells":
>>> +    const: 1
>>> +
>>>  required:
>>>    - compatible
>>>    - reg
>>>  
>>>  additionalProperties: false
>>>  
>>> +allOf:
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            const: renesas,r9a08g045-sysc
>>> +    then:
>>> +      required:
>>> +        - "#reset-cells"
>>
>> Given this is new required property on an existing platform, I'd expect
>> some mention of why it used to be okay to not have this but is now
>> required. Did firmware or a bootloader stage take things out of reset?
> 
> Reading a bit more into the series, the peripherals in question were
> just never used nor did a driver for the sysc exist, so there's neither

Exactly.

> explanation of prior behaviour nor concerns about compatibility?

The newly introduced sysc driver is probed only for RZ/G3S and used to
control the USB, PCIe signals though reset control driver (registered by
sysc driver on auxiliary bus) and to identify the chip. The intention is to
later migrate the chip identification support for the rest of RZ/G2 devices
to this new driver and add more functionalities, when/if needed.

Thank you,
Claudiu Beznea

> 
>>
>>> +    else:
>>> +      properties:
>>> +        "#reset-cells": false
>>> +
>>>  examples:
>>>    - |
>>>      #include <dt-bindings/interrupt-controller/arm-gic.h>
>>> -- 
>>> 2.39.2
>>>
> 
> 

