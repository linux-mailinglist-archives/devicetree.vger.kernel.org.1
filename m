Return-Path: <devicetree+bounces-272599-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMlxG7ynrWmE5gEAu9opvQ
	(envelope-from <devicetree+bounces-272599-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 17:45:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0753A2311CB
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 17:45:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D564C300B9C6
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 16:45:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71B9633D50C;
	Sun,  8 Mar 2026 16:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ihOENHvk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF32A33D6CF
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 16:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772988343; cv=none; b=eD7T+I2s5OabRb7FXOFDvmnqV0kV75CSAyx49mN11AxBEZVFYa7v2AjU0LIShnlLcUlwLY/9K1pHkgA7W7QdyHCITD4O393uxgUBWnZErGeqm7y8ZnArzmO0E+ec3MIWp03fYc1Oh4QWbz6ZwionGWv9Jhp8kxrda6z/fOHC8ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772988343; c=relaxed/simple;
	bh=Gx4dxJsQx0b07vbN8WAwxGrs5GBs6KLLGTVCu+elkwk=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:References:
	 In-Reply-To:Content-Type; b=OXSKI3aiZZiymjclHxhs4jkmBqGUDqt+1WAOImp4027lhuYNLQQDdv47E6Letb8R+nxAFcO4Ar8Fyd90enFVmbiHPxPDECgmm7FApcU0OFti6jcuVGwiyMaPVCqSwlAfTV4MOf4QMvepg+VeMqcYRKWMSeuOn/iZAr9Jgy/ZaHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ihOENHvk; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-48534e9076fso3254375e9.0
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 09:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772988339; x=1773593139; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eUsdONGIuqr07rjgXiFXfrB4ESlzFRwcXKo6efQ80SA=;
        b=ihOENHvkw6W3U7yyOdXp7JspoDq4Znr1lXFaJndthEMj3qaDk835YCYX9F+9DksYgN
         m22F1KtQYoWPI8WTXRkJPTyTkLEEKBY1XFF0boG0UG1RqdOKIMh2VmlOJLMokzSv21Ou
         D2umgv09hO/aASOSKiGxODrkC9LSlBTNe7aitwni0elzMVvLoc67CdwKCMlvlLK248Og
         P/0xJH2kXEQVefsKg+bILOHYVdXdrLL5fW5Mgo8M7o+Hc70r9kFlDOBZr8CCxYGPAkGP
         oK4pN+7OOSHAx+vsatkpEluVZeExtfuum48INMPFQipG43ZA4Ogkvuwv/Dp6YYmXuKPs
         /aAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772988339; x=1773593139;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eUsdONGIuqr07rjgXiFXfrB4ESlzFRwcXKo6efQ80SA=;
        b=ZBRTY8/aXsJtfatm1AL8Rnen6XYMoAK24iPlUStPtowrx++8txVSC1WfnBLWGLXdND
         nRQvfAekH+fj06ZMhCZchc03swB+OjKEOZovSbA8wavgFIgaSXfSgwDsYCbv3GO2LE5I
         tcmweiNmweE+9Nlt8hisQr1BiQYZzNZylhJq1JivEAXqBkIfn6cy80/7bhkVR9KtsPja
         voF8NcYrdrELIwDY/q/zOUMKVybCmP5SD1xC2UHxe+wJVQtzsZ4gTJaPIjpsfb6G+l4L
         mXXW72HasaDT0v0N0aSthef/qMKQWiYZZqfxQky2zw4o0soGq43yWhXxLthOqQNXGbPk
         1FZA==
X-Forwarded-Encrypted: i=1; AJvYcCUux0y0fBmBR4wpZC7YJO66qJ5jYd++dsTt9ZPpyv5RPHNIaXQ55bTN33neo5T9Qq/FM+4XqnUvAK4J@vger.kernel.org
X-Gm-Message-State: AOJu0YxVDvEpvb4i2HA5UeOQG486e0xqPMcN7BlkvRCQBwYxTbtBtHRb
	rQG9PXjpWkC7/Pf3Dfqw5bCpNPPtU2o4p/rN1kIP+n6NWOga+ZBMEqpMKxBLjO67YCI=
X-Gm-Gg: ATEYQzwG/QR39BGiQ3MG9GtXKgVMJItt1X4yJuhLcoK69GJKExTNIqXSyJj6dIA8/YB
	HfcXbfTbscumJH1LfEgtID+vVVs08oqLKf+yTOBEQcUmv+O7Ej8tPOV2VXoUp2pK4LJHXyDiXNU
	QOWmEDdFhy28SlUZH/k3rKNYT4+5i3gyf5KILv2VTg4iBfaOf+vyEjwg8NzQ+tpknzeEFP7E5iV
	zhxvuG5jAkjpZEBTjAiQrqyjKvWy+7lnxRcnhjsEUr3B26qV812Mk5NNlFXsrE8hheOaUO3CQPR
	N2mw5KgV3UsrvAopqZ5QL66p3dDIg8AmPuycJ5BK5/V5Qo7wcd35R/av3bUnYZOposqvlGGmDTU
	aXnWKe8ctPwMFPU4oVsZUF9GYQqS+wr402Rrxb463fLKGxUFdEhpKpimko/h5+4SwPUKeUpK3vq
	k6u7sVRO1LZj7W/8kf3Mo2R6K8Rz8kfA==
X-Received: by 2002:a05:600c:4fc2:b0:477:a1a2:d829 with SMTP id 5b1f17b1804b1-4852692bfa5mr139387065e9.13.1772988339042;
        Sun, 08 Mar 2026 09:45:39 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48539e574b5sm40900765e9.8.2026.03.08.09.45.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2026 09:45:38 -0700 (PDT)
Message-ID: <203fb24b-9ea4-476e-a866-0befcdcd6224@tuxon.dev>
Date: Sun, 8 Mar 2026 18:45:37 +0200
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
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ryan Wanner <ryan.wanner@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alexander Dahl <ada@thorsis.com>
References: <20260120143759.904013-1-ada@thorsis.com>
 <20260120154502.1280938-1-ada@thorsis.com>
 <20260120154502.1280938-3-ada@thorsis.com>
 <f406abde-c7d1-4ed6-b7dd-5336956bc795@tuxon.dev>
 <20260220-bloomers-runny-e69ab1966b9c@thorsis.com>
 <cebf4298-4dff-481d-9a77-09d4fb4f7fbd@tuxon.dev>
Content-Language: en-US
In-Reply-To: <cebf4298-4dff-481d-9a77-09d4fb4f7fbd@tuxon.dev>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 0753A2311CB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272599-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.976];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,tuxon.dev:dkim,tuxon.dev:mid]
X-Rspamd-Action: no action

+ Alexander Dahl

On 3/8/26 18:42, Claudiu Beznea wrote:
> Hi, Alexander,
> 
> On 2/20/26 11:58, Alexander Dahl wrote:
>> Hello Claudiu,
>>
>> Am Sat, Jan 31, 2026 at 05:47:05PM +0200 schrieb Claudiu Beznea:
>>>
>>>
>>> On 1/20/26 17:44, Alexander Dahl wrote:
>>>> The OTPC requires both the peripheral clock through PMC and the main RC
>>>> oscillator.  Seemed to work without explicitly enabling those clocks on
>>>> sama7g5 before, but did not on sam9x60.
>>>>
>>>> Older datasheets were not clear and explicit about this, but recent are,
>>>> e.g. SAMA7G5 series datasheet (DS60001765B),
>>>> section 30.4.1 Power Management:
>>>>
>>>>> The OTPC is clocked through the Power Management Controller (PMC).
>>>>> The user must power on the main RC oscillator and enable the
>>>>> peripheral clock of the OTPC prior to reading or writing the OTP
>>>>> memory.
>>>
>>> As this was not mentioned in the previous datasheet versions, the current
>>> driver don't handle those clocks, and it probably worked as the clocks were
>>> enabled by bootloaders, I think the clocks should be marked as required and
>>> this patch to be propagated as a fix along with fixes on driver and device
>>> trees.
>>
>> What do you mean by "clocks should be marked as required"?  Where?
> 
> In the bindings as you found that the IP don't work if the clocks are not enabled?
> 
>> How?  Is something more necessary, than already done here?
> 
> Update the required section in the yaml file with clocks, at least for the 
> sam9x60, as you found it is not working w/o it.
> 
> I presume it has to be done for SAMA7G5 as well (as this is what the newer 
> datasheets states) but that would involve adding required clocks now which were 
> not needed later. I'm not sure what is the procedure here. I'll let DT 
> maintainers comment on this.
> 
> Thank you,
> Claudiu
> 


