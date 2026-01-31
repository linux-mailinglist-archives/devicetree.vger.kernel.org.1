Return-Path: <devicetree+bounces-261445-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ODTGLBUlfmk3WAIAu9opvQ
	(envelope-from <devicetree+bounces-261445-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:51:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 45882C2C90
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:51:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 446443003998
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 15:51:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 796E9335555;
	Sat, 31 Jan 2026 15:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Xb1PpMHY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DE632ABEC
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 15:51:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769874690; cv=none; b=bNTMI9N/XtCyZZNIpR8k5xwqBe/roodCA3qIDDeEnmQzga78hqlWGoN6a611nIWEYcmKKE70UYmL5H9z9PagYEA3w4saQYCi5JEKcV7gqKcM/r55BsrBeqEZZinR2DSo9JH2dpnSzpzP0vbHC7Fo3tEB57eRDX8yIFhyBYyJ94s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769874690; c=relaxed/simple;
	bh=TVk5ElutLIGUZzribaf5OoNHg/tQPy9b2l4SVewIvpA=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=HDpxGGFdwLbQ6vroHUSbBHfLxRVAi3ls/rQGKoxtgVQVlgbGJ9LzjpxjfUfitKr0VHwLq9Um6QJSVFYKX+H1HOcNZll1zhAo6Suwmwi5DSFoHLEfJlTSugqz+fRMsZOscjQAMoqX4vyNJhrX0RIVz09KFysdEbTBL4i1bYmJdnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Xb1PpMHY; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4806bf39419so25122275e9.1
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:51:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1769874686; x=1770479486; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dVDUraBCahPU+SZAz6Hk9ua2W/itIqCdoSUr1zPU1VM=;
        b=Xb1PpMHY8p9Kke8j9m3C5g2qQbVqC35/xXer67dvX1qRZgpLb3i1bLXNHXnNju6H3T
         ZKVe666vYLupD/WHZtbath4N6y3ZR3kYxwPZIHKLg+9nfaM++HXdKPy7em1ZBtRFpqVH
         thv8pkzExQjE9PlLdefkfm9xNhzL3keu+/keF3ZwmrNxp625xXtTliXs3342sPbJ/Nxe
         NEnIsFhBB/nMgcAvCwbvaQ5PEO3CwpVu1/UH4/lDk5Mkry6lyoAMjGsdbkUoI2ckYUR3
         PSLY8EyvZ9OpqbxIRyVTSry9DYbcsmyWeQFHX7GXZ5FlnpJSP3cpwPEBDSv4Ki4KuNuR
         bujA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769874686; x=1770479486;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dVDUraBCahPU+SZAz6Hk9ua2W/itIqCdoSUr1zPU1VM=;
        b=ZDHNJVd/W4Gg+xsOuc4p0dHRCXZmu+Zzvypr5Jnga9uWsjTONTLeF2jh7K3e8pzaly
         WIjHj8AEtA/8jvKI2dHdCwS2GNFkbI2dJKtXTO+jxmuqnKmH7erl+GSa8vwN4Tell4Uj
         D+eL/PS4zynGwP0sOCM0oKXMyBMyckAgWkkgKp3OjyJgE8PzemuqERFEhT9+r65/IhG/
         RBb4NgwV4Lw1BVRWTJTB0C4EJ46fkXNw7Un6MO1sjgX2mh1HROjvv+U1S4ScY/CKEZHC
         /0CXe8idMUugYN5R/F6/K9NHWacX1NCJ1/rt1nS65EMN6XFbZo8Fk4UZVCVF0juvjw3N
         Kr4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVH6sX4QdtPUkP3A1DZzri/RKfJkRV5flBaQIDO+KXEPrtSirgDBYMW0vi9fpuvJqEI/CJoZo0br88J@vger.kernel.org
X-Gm-Message-State: AOJu0YwJn6oRi1B9qnFntnXTiK1KM0oxAKZpaaYb6RoAHLxLbUU605ez
	U8wOU6e7fZr7hi6Ck3JkYju2dMqofuUG+K2+lx/yB35bpvPHdfcvC3h7YhJXQe2/6OA=
X-Gm-Gg: AZuq6aKJIqi+bbgQEk7AtDUdPtoX89Csi82sDubP08Tqo9vDaIVv+Ljq05yqMQVHeWV
	N4B1FUDkz3X+LW4lSOyKTnOe9/DJNGyi22Iqkh4dbtT0VeiiZ5ZqYHIazTZb5MiK608BCxK5NP4
	BTOgmyQBhyyJRFXEMwsx7BG8v1zMexBQCVYeMiBOfVcQtflvnVSfRXBukOTDQIRqQ7YcrnCXTwl
	tbRzezkiHD9He2bJnFjD3+uqxbBP9Jk+7/voBjc2aCkshxEzXJ68NgNuBhNaJ5l21wBhISFbpba
	XT+jOokqv6FJbTvuL3PzLRV3sHgzWTYrrCd82SJSrAbQ1IFrIsPIssFIQYwz2XnZQiFeMpbG+3o
	j16GP00YrzHGSs8FeJUMSg0pgwU7sP5PoIAb/oWwJyhmfed1SH0M3UnmgL7ScO/Q/VAhdsoiUdR
	U7A5w41uBfA6IbVJCx9w==
X-Received: by 2002:a05:600c:3b85:b0:46f:a2ba:581f with SMTP id 5b1f17b1804b1-482db49b0b4mr84546485e9.16.1769874686453;
        Sat, 31 Jan 2026 07:51:26 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-482dbd3953esm56113895e9.4.2026.01.31.07.51.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jan 2026 07:51:25 -0800 (PST)
Message-ID: <b9de4cf4-c4b8-4f5e-9cd7-16991bda439b@tuxon.dev>
Date: Sat, 31 Jan 2026 17:51:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 09/19] dt-bindings: nvmem: microchip-otpc: Add required
 clocks
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
To: Alexander Dahl <ada@thorsis.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ryan Wanner <ryan.wanner@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
References: <20260120143759.904013-1-ada@thorsis.com>
 <20260120154502.1280938-1-ada@thorsis.com>
 <20260120154502.1280938-3-ada@thorsis.com>
 <f406abde-c7d1-4ed6-b7dd-5336956bc795@tuxon.dev>
Content-Language: en-US
In-Reply-To: <f406abde-c7d1-4ed6-b7dd-5336956bc795@tuxon.dev>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261445-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:mid,tuxon.dev:dkim,thorsis.com:email,e8c00000:email,0.0.0.1:email,microchip.com:email]
X-Rspamd-Queue-Id: 45882C2C90
X-Rspamd-Action: no action



On 1/31/26 17:47, Claudiu Beznea wrote:
> 
> 
> On 1/20/26 17:44, Alexander Dahl wrote:
>> The OTPC requires both the peripheral clock through PMC and the main RC
>> oscillator.  Seemed to work without explicitly enabling those clocks on
>> sama7g5 before, but did not on sam9x60.
>>
>> Older datasheets were not clear and explicit about this, but recent are,
>> e.g. SAMA7G5 series datasheet (DS60001765B),
>> section 30.4.1 Power Management:
>>
>>> The OTPC is clocked through the Power Management Controller (PMC).
>>> The user must power on the main RC oscillator and enable the
>>> peripheral clock of the OTPC prior to reading or writing the OTP
>>> memory.
> 
> As this was not mentioned in the previous datasheet versions, the current driver 
> don't handle those clocks, and it probably worked as the clocks were enabled by 
> bootloaders, I think the clocks should be marked as required and this patch to 
> be propagated as a fix along with fixes on driver and device trees.

Ah, wait, you can't propagate it as a fix as you don't have the necessary clocks 
exported in device tree in the older kernels. And you are just handling it in 
this series.

> 
> I'll let DT binding maintainers for the final decision on this.
> 
>>
>> Link: https://lore.kernel.org/linux-clk/ec34efc2-2051-4b8a- 
>> b5d8-6e2fd5e08c28@microchip.com/T/#u
> 
> Why this link here?
> 
>> Signed-off-by: Alexander Dahl <ada@thorsis.com>
>> ---
>>
>> Notes:
>>      v3:
>>      - Removed clock-names (led to confusion, and not used by the driver anyways)
>>      - Removed redundant example
>>      v2:
>>      - new patch, not present in v1
>>
>>   .../devicetree/bindings/nvmem/microchip,sama7g5-otpc.yaml | 8 ++++++++
>>   1 file changed, 8 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/nvmem/microchip,sama7g5- 
>> otpc.yaml b/Documentation/devicetree/bindings/nvmem/microchip,sama7g5-otpc.yaml
>> index 9a7aaf64eef32..847dfb67c6b72 100644
>> --- a/Documentation/devicetree/bindings/nvmem/microchip,sama7g5-otpc.yaml
>> +++ b/Documentation/devicetree/bindings/nvmem/microchip,sama7g5-otpc.yaml
>> @@ -29,6 +29,11 @@ properties:
>>     reg:
>>       maxItems: 1
>> +  clocks:
>> +    items:
>> +      - description: main rc oscillator
>> +      - description: otpc peripheral clock
>> +
>>   required:
>>     - compatible
>>     - reg
>> @@ -37,6 +42,8 @@ unevaluatedProperties: false
>>   examples:
>>     - |
>> +    #include <dt-bindings/clock/at91.h>
>> +    #include <dt-bindings/clock/microchip,sama7g5-pmc.h>
>>       #include <dt-bindings/nvmem/microchip,sama7g5-otpc.h>
>>       otpc: efuse@e8c00000 {
>> @@ -44,6 +51,7 @@ examples:
>>           reg = <0xe8c00000 0xec>;
>>           #address-cells = <1>;
>>           #size-cells = <1>;
>> +        clocks = <&pmc PMC_TYPE_CORE SAMA7G5_PMC_MAIN_RC>, <&pmc 
>> PMC_TYPE_PERIPHERAL 67>;
>>           temperature_calib: calib@1 {
>>               reg = <OTP_PKT(1) 76>;
> 


