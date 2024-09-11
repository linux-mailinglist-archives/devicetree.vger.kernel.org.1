Return-Path: <devicetree+bounces-102138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0589759D8
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 20:00:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 94E1A1F240DC
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 18:00:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16F241B9B2A;
	Wed, 11 Sep 2024 18:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="muBJwXlh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F99B1B791B
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 18:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726077617; cv=none; b=sFLGS7BinOkth1sCyPxkeVcaJhJ3g4EONm0f0vBzLWG5dmSkVPMHOaDJkQUDdYmDZbr2Q1Vpkt8UqOguJxvZqVQjfzQzgsW02fsqlcH0GOc3RAQbaSILvqb1yKJhPGc1Gr94cTkEztrkjO5d2aN3zxQAOkbTcMJPdwr8sqaw9nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726077617; c=relaxed/simple;
	bh=WNpg1zAsY1hWYJWrTK0CWSeHviozREIE1okw8+oxAQI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N4Te1yEIGzPFZzNVNmXRbd5DeI902SyfCzmICY4fqAc3sFOlwDc9XphImcHT+32KXYoyPtwCv/Ah+cOg/EFRlStgr6+2jfNPWsz+QbSYLt6dZa6uIgvgrCN+mlVNEPBKmsn2a131PDEGREyMg7d/FdDA+DbE8Yy/6DiCnEyqFPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=muBJwXlh; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-20570b42f24so1667215ad.1
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 11:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1726077613; x=1726682413; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oi1ycBl7Zo/pcrvjxctEWR3H8TSj6fTGuiJIc535U80=;
        b=muBJwXlhtQE5JCbuSckZ9FC9J3ufvxylQzBme8UcBKwPaLmdIFnoSddqJ5V6AjN+jv
         eep2BIZ23KPav/7IUBVLdP+TQ+5hCHvJTta515ofPn/1IwcAhrEd8hR9ijHdqo1GVSuZ
         qWmrdIfarysNcBYPJmxuS3G480xFcq4YTMsgnunyvOu0dGJPXQA8gWdnZssrcEeg1OB/
         6VAc6DKsLvn8vBInnLsWo5ZcSYdLLhR/kVxH7KOedvYGvs5u2XqlgKg6AK5XtLDu+uwS
         8+lSwpRhn4/posiwIghgIPAz8lCwPvhs15efhZEPr6YyH0qRc0q7XEG3j/EIfvTIUCs7
         mG2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726077613; x=1726682413;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oi1ycBl7Zo/pcrvjxctEWR3H8TSj6fTGuiJIc535U80=;
        b=IVu4/j/AcuL86idyHcEMByfjWXOlQniZv5pRklha+vS/KsK5QPMNdJ52f6Trkjpb98
         2x73vx0qVAR/WCmMyWsG3r6OX2ez5EnY/92Vu2BXbJ33WtclHAo2vAh3ZnKyrFH5gVjh
         Jo7tuptsTH1eKUW/RbVh9ptOHA11y6QAQfJAUXt2XSAaqiisIwxsUaCOsFh9V59a8XUC
         SyDD9XujObBVZ5wvLyRc2iNeecwdYHeE1qNOESEZy7J/b+g29VKdJW5aT/UOHip/abIJ
         sNoBTp0aPXaSRejRsM0niErYjfuazf0FfwXBkxDXRkN4tzgknhcgqgrAi6h1eMd2xQis
         J1cA==
X-Forwarded-Encrypted: i=1; AJvYcCUbMOcb5iYp4+6VPlSPumy6EAr04ZIDhOTuYb+I4sMg4qQfaLw4jwZAzh0jYhOmcLpgZkDpjZeRhBoc@vger.kernel.org
X-Gm-Message-State: AOJu0YwPxiUXFMHujKX0RP3jC5osG+Mf19L1RA3t/MjYPMaajCIE8d6/
	oNRZy2E7Y8uCghiftGNTYVP9LqjBZBwhPQqtIh+0+K0smOYeREILfzkurzKRQg==
X-Google-Smtp-Source: AGHT+IGHMbSQUJFzu4dp7JtqdcyOhvxEYRG1Urbc0wxUZecfk89IK2jJJvDZYYh7dccxukx7Xnx2Jg==
X-Received: by 2002:a17:903:41c3:b0:207:1de9:1014 with SMTP id d9443c01a7336-2076e38f304mr3245735ad.34.1726077611683;
        Wed, 11 Sep 2024 11:00:11 -0700 (PDT)
Received: from [172.16.118.100] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2076afec4fdsm2268195ad.228.2024.09.11.11.00.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2024 11:00:11 -0700 (PDT)
Message-ID: <45b1894b-0a15-4efc-95a0-596aa6728fd7@beagleboard.org>
Date: Wed, 11 Sep 2024 23:30:01 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/8] dt-bindings: connector: Add MikorBUS connector
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
Cc: fabien.parent@linaro.org, d-gole@ti.com, lorforlinux@beagleboard.org,
 jkridner@beagleboard.org, robertcnelson@beagleboard.org,
 Andrew Davis <afd@ti.com>, Miguel Ojeda <ojeda@kernel.org>,
 Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>,
 Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?=
 <bjorn3_gh@protonmail.com>, Benno Lossin <benno.lossin@proton.me>,
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>,
 Trevor Gross <tmgross@umich.edu>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Derek Kiernan <derek.kiernan@amd.com>,
 Dragan Cvetic <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20240911-mikrobus-dt-v1-0-3ded4dc879e7@beagleboard.org>
 <20240911-mikrobus-dt-v1-2-3ded4dc879e7@beagleboard.org>
 <20240911172626.GB915638-robh@kernel.org>
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <20240911172626.GB915638-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/11/24 22:56, Rob Herring wrote:

> On Wed, Sep 11, 2024 at 07:57:19PM +0530, Ayush Singh wrote:
>> Add DT bindings for mikroBUS interface. MikroBUS [0] is an open standard
>> developed by MikroElektronika for connecting add-on boards to
>> microcontrollers or microprocessors.
> Typo in the subject...
>
> Isn't this v6? Where's the revision history?

Well, at this point, it almost has nothing in common with [0] (the 
previous patch series was about making mikroBUS a Linux bus) and is more 
of a continuation of [1]. So I thought it would be better to treat it as 
a new patch series.

>> MikroBUS connector node will optionally act as nexus nodes for routing
>> GPIOs and PWM.
>>
>> For GPIOs, the following pin numbering should be followed:
>>
>>    0: PWM
>>    1: INT
>>    2: RX
>>    3: TX
>>    4: SCL
>>    5: SDA
>>    6: MOSI
>>    7: MISO
>>    8: SCK
>>    9: CS
>>    10: RST
>>    11: AN
>>
>> For PWM, the PWM pin should be on channel 0.
>>
>> I am not quite sure how to deal with the nexus node properties
>> (#gpio-cells, gpio-map, gpio-map-mask, gpio-map-pass-thru) since they
>> seem to conflict with upstream gpio schema (gpio-controller is a
>> dependency of #gpio-cells).
>>
>> [0]: https://www.mikroe.com/
>>
>> Signed-off-by: Ayush Singh <ayush@beagleboard.org>
>> ---
>>   .../bindings/connector/mikrobus-connector.yaml     | 40 ++++++++++++++++++++++
>>   MAINTAINERS                                        |  5 +++
>>   2 files changed, 45 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/connector/mikrobus-connector.yaml b/Documentation/devicetree/bindings/connector/mikrobus-connector.yaml
>> new file mode 100644
>> index 000000000000..603e4627076c
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/connector/mikrobus-connector.yaml
>> @@ -0,0 +1,40 @@
>> +# SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause
>> +#
>> +# Copyright (c) Ayush Singh <ayush@beagleboard.org>
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/connector/mikrobus-connector.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: mikroBUS add-on board socket
>> +
>> +maintainers:
>> +  - Ayush Singh <ayush@beagleboard.org>
>> +
>> +properties:
>> +  compatible:
>> +    const: mikrobus-connector
>> +
>> +required:
>> +  - compatible
>> +
>> +additionalProperties: true
> Cannot be true. You're schema must be complete. I don't understand what
> happened to everything else in the binding.


So the current dtschema makes `gpio-controller` dependency of 
`#gpio-cells` which should not hold true for nexus node [2]. I also 
wanted to understand if the nexus node schema should go in upstream 
dtschema or be in kernel tree.

I will try to figure out how nexus node properties should look by taking 
interrupt nexus node bindings as a starting point.


[0]: 
https://lore.kernel.org/linux-arm-kernel/20240627-mikrobus-scratch-spi-v5-0-9e6c148bf5f0@beagleboard.org/

[1]: 
https://lore.kernel.org/linux-arm-kernel/20240702164403.29067-1-afd@ti.com/

[2]: 
https://devicetree-specification.readthedocs.io/en/v0.3/devicetree-basics.html#nexus-nodes-and-specifier-mapping


Ayush Singh


