Return-Path: <devicetree+bounces-230738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E60ADC054DC
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 11:21:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 83924359610
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 09:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1C843093C1;
	Fri, 24 Oct 2025 09:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jsmJtpGZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6F6307AD9
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 09:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761297690; cv=none; b=CWrrk0jVMlvDmiwpnoFBxRLR/3cMRgDbJNVBesHIqSgUuHkg/mpgov0bQ8asIkVAZJ2zykVGXGyZ3ruYzGEhjBkv2EzxGk2bil6/zdnlqqVeuRYO8mAF0tmvv9zy4tU/R+O0lgqwulJeB/nU5jNtQd6bRtDRkS+ug+4s7JQPhyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761297690; c=relaxed/simple;
	bh=cgYBzSPBAN/hnDGuQioL8lgzcDFfoDLXW1qeVfhBWBQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NgDd1lAUcd5z60UArPPpe45mBb6+TszyNL34QrhS1lhj+VBba9StCu18+EHdzp1vehrzhlQg5WY99F5pveghVOXCCxpE5NU5eHIO2Fji0SwLJSCOsmhat8F2+AhHHhsoJKPEvfSseBswkcVna7BGGUKdHP+6c/3Qoeovjer26lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jsmJtpGZ; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47495477241so15098075e9.3
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 02:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761297687; x=1761902487; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NY5PIARKbpIdf6CoFhX2UEn3hHI/O9Hdjy4EAS5mHE4=;
        b=jsmJtpGZ9NrNjzfN0R7DqE1WJoC0OCtiAddoq0FLmAXnNG7WBGyvuFUbWBBaqUoyI8
         McNgdYSv+xeIl1hErbxI9dOqIQnRwubOQ7wyJa6RHRNr8DdRNW8GxjuLRI5rzQkDMVNn
         bXToADcc5ry80sORGqQzQ9kPjV3WOP1Q8b/qsVew5Fln065CFGfsYyaAb4Hl21phzuw2
         8oBJA9Mj31pugdjfyk7yp62PvyRqG6zfm3Ck8NSIRr/AmCQ8UhaVlw8BUK7DWPnv0qtU
         wAW855TmyO2TWYjxF1iLovwgBgEJVDF6anw61HQSYWu/i+gObG22bG45MuS3+dOd1Ssq
         GMjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761297687; x=1761902487;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NY5PIARKbpIdf6CoFhX2UEn3hHI/O9Hdjy4EAS5mHE4=;
        b=Gs+b0u+nps1xiuSFUDCZWDm1ImWNCRI6ekeOCqllb9gp4iVnvfpkOSFDGpbK/o6HoN
         y+PGOZaaCnz4m6pKnPWec0GZT+V3Daly5IEco8IccmNnQ3IAJ9BlSBFdAHiQsSmPfGjr
         6pU+HpKJctajy3+meVQjoAiWm0n0t/r8RQ9xif9PZ2kKfu2w6NxM0qdFTGSGzcBERZky
         A+TOSRiMzV3HLschxWGvVorFTYo7zvc70UCxa5kGOOGsXY5QEFda+M49vg+rL64ZRZno
         fGeYzEIboXxBY8GDNRwpRkKzV/qtZxOF5ytCCJq6n1FRtHJZ8AjW8dX9OKN7O0QwuM/1
         2fbg==
X-Forwarded-Encrypted: i=1; AJvYcCWrcy3jjWugU0/nouK2Dfa4rkF9Wij57XqZBh4+FKYbPM+nFgGCNWI4N7KoOUd84gnelOozxiKHp3oR@vger.kernel.org
X-Gm-Message-State: AOJu0YybQoo85twmy0tq4RhNJuxBTXil5QroqEnxjJctggsyWLwWkhxe
	w3DR/SCxGVRuMXvSb4es39klJPj0irb4Ts41DXCSF8NZx4qRjxV8ih5WtrKMEg==
X-Gm-Gg: ASbGncvFUx2GLluETDGgf3OmoGX0gG2T9DgZec/W88MCO60pllJFhAVANDYSKBHxdbN
	nPa63Tt4BZp/P1d9Hm1sNtcz41sou+TC0hZs9ATb2T6MS/60q40HBjIyLydLKClVm1BCpBQYhdD
	WVPGQUtC4+Q1CQX3fxD8bQOznXLIxXjr01Nikcsk8Dvg3/ecRXdihiSERwHbYPLcXc5GnSEEmaM
	S+CzK9WlrUnFZ6Zv9dqyBN88uCfPajuUGqGKFH8+06CsWAYRNi8ZVWQ+s643d6eoJogp+gKIll6
	z6i8rQnIzX19Tp5SbLZW1/Ha2po7bs6wHO2Il9CynTIkxD73Hl0PJ7gLDCobOyk36UlCkbQlDKn
	yVFqMf0u+T3gTkr/97shKCRJpZ2GRDtwrRE7OiLL1YeweJeJp9UPk5ro8IFGK23vK9LIE5sMSRo
	zlPZu3TX/h5tYmCOZoNn93A8ggZzu9K+YazcvuEzZWTLiSd+nmgCUNMQzmKylGGYROwy+vLhkCe
	fM8Kroq+QyWYV6gNa4G54l2Je7FMMmZMjiNjfOlyb0t
X-Google-Smtp-Source: AGHT+IFN2t4M6Qoj3pIFSsEj3r77vKyY565/HfDPakReHx4yAtJAuSEBAgmRyjYHNwXMg0iJVqrMIw==
X-Received: by 2002:a05:600c:4f08:b0:46c:e3df:529e with SMTP id 5b1f17b1804b1-475cb03021dmr42329985e9.19.1761297687076;
        Fri, 24 Oct 2025 02:21:27 -0700 (PDT)
Received: from ?IPV6:2a02:8440:7132:30ef:ba02:7a36:289:dc72? (2a02-8440-7132-30ef-ba02-7a36-0289-dc72.rev.sfr.net. [2a02:8440:7132:30ef:ba02:7a36:289:dc72])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47494b02475sm81213955e9.4.2025.10.24.02.21.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 02:21:26 -0700 (PDT)
Message-ID: <b3accac0-d02a-4b92-848c-ada62377e440@gmail.com>
Date: Fri, 24 Oct 2025 11:21:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/7] dt-bindings: memory: introduce DDR4
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Julius Werner <jwerner@chromium.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>
References: <20250930-b4-ddr-bindings-v8-0-fe4d8c015a50@gmail.com>
 <20250930-b4-ddr-bindings-v8-2-fe4d8c015a50@gmail.com>
 <1877f731-1599-414d-a40e-38aec05a33c0@kernel.org>
Content-Language: en-US
From: =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <legoffic.clement@gmail.com>
In-Reply-To: <1877f731-1599-414d-a40e-38aec05a33c0@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/23/25 15:21, Krzysztof Kozlowski wrote:
> On 30/09/2025 10:46, Clément Le Goffic wrote:
>> From: Clément Le Goffic <clement.legoffic@foss.st.com>
>>
>> Introduce JEDEC compliant DDR bindings, that use new memory-props binding.
> 
> 
> If there is going to be resend, then please repeat here applicable part
> of compatible format, e.g. why it's like that.

Hi Krzysztof, ok

> 
>>
>> Signed-off-by: Clément Le Goffic <clement.legoffic@foss.st.com>
>> Signed-off-by: Clément Le Goffic <legoffic.clement@gmail.com>
>> ---
>>   .../memory-controllers/ddr/jedec,ddr4.yaml         | 34 ++++++++++++++++++++++
>>   1 file changed, 34 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,ddr4.yaml b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,ddr4.yaml
>> new file mode 100644
>> index 000000000000..a2eb6f63c0ce
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/memory-controllers/ddr/jedec,ddr4.yaml
>> @@ -0,0 +1,34 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/memory-controllers/ddr/jedec,ddr4.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: DDR4 SDRAM compliant to JEDEC JESD79-4D
>> +
>> +maintainers:
>> +  - Krzysztof Kozlowski <krzk@kernel.org>
>> +
>> +allOf:
>> +  - $ref: jedec,sdram-props.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    items:
>> +      - pattern: "^ddr4-[0-9a-f]{4},[a-z]{1,20},[0-9a-f]{2}$"
> 
> Why double ','? I would imagine last ',' to be '-':
> ddrX-YYYY,AAAA...-ZZ
> 
> Sorry if we discuss that already, but then please remind me and this
> would need addressing in commit msg.

I do not see anything against that.
I'll wait Julius's review, if any, and I will send the next version with 
this changes.

> 
>> +      - const: jedec,ddr4
> 
> 
> Best regards,
> Krzysztof


