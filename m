Return-Path: <devicetree+bounces-266647-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKRPDIcLl2lEuAIAu9opvQ
	(envelope-from <devicetree+bounces-266647-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 14:09:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4772015EEBA
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 14:09:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CBBE9300469E
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 13:09:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA7A533B6D1;
	Thu, 19 Feb 2026 13:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dkTFADDu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0DC145B3E
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771506562; cv=none; b=OAAr/T6JKWY7il7ZGoRvlPvg8g3/oTQCtweOi1DMeNlY2HXuKlGMXldJJTa5jsOhdJc1b+C82a0G4J3GHXjuOVuOEcCstOM2BWscOfwbTOjT/y064SWcB0Kw3o5GfpzCykTcZYBZK4B+xpLh5pATZRvdgkMJlnQUdwnKe5Ac7R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771506562; c=relaxed/simple;
	bh=UYkvLMGvPA7MkuJf5JUOikNfmvWfVFQgYk3tg5BhtZE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KdiYjC5JgnuLStTbuwEwVUkkQhT1Zt2Xv+DA0auMj8UWf2MGAa5O7DVouchUdOCES4WhxeIx/ZRgdb3m1Z9Mi3CKNUAnMTESG97aQ1esq7LRF167OlJei+OW88lXTk+xug2jaMf27IchvWYCUIcdRgC07fYGpeMmFS76HOe5+XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dkTFADDu; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4837907f535so8512635e9.3
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 05:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1771506560; x=1772111360; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4kub5QJNASCFXe1LgXwlnQx+lw4e3+fCNIFcBdZArb4=;
        b=dkTFADDuPl8ATICVdlGErg5MG1xAmgv3eFwYwgkED8sGJPZuniKwVaHclghXfp1d0b
         pv9eZwWbcuXaJBLdNUu9V+BcGXEuDbmN62ddY7TwxWhl4qMxpfbuamH28XULqWYvtIBJ
         3JqLwHsgK974qKAnz0xCOCDpxkdRr4ED4G0XL4uhp7Xy+tnN4o1qxom2LfqHBgdmSSo/
         ACbhUY1C80LbOrk+DOdw5SnUpIlbDEJor0KMSLoraUlZld4ojowKg6sIcqHO1ivBuSta
         dDW3y3933ksM1J/GtJA3zIWF6+xb/zfvuqgGgq+9oFxYdgHk1nz64B199QZHg8c4Ahsd
         6dwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771506560; x=1772111360;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4kub5QJNASCFXe1LgXwlnQx+lw4e3+fCNIFcBdZArb4=;
        b=r92NNFLTQ0MW1oUVlSabTCRLsqOAMgLUiqWsyVq2O7B003t5wKy1LQcJIUhZRR5X09
         fY08HpC1iByeGPAC8a3mdp+ySDkLR0r+5bq96MLCFkXeQEP10wXRfq44PG5/TxT1aP8q
         BVPVN3l+dfJIp2EJn4ysCta9kV2x9XIZiAsTI94Mc9g+/WAowvGJTU9hhlUITkLgoJz8
         j+6/QohQYC+d+LV9fdoZEued0UWQKmIcgYcePbeanFBUMZMeAPbpLJUcbUSuFWsUg5FI
         FzQot+y1NFhTE/6sTIIyjdoIy42GkP8ndIUHkNIz0YgLQtm5STuA5nmM/V9P9/WYZwIE
         8csQ==
X-Forwarded-Encrypted: i=1; AJvYcCUjqoDXe2ZXncUGPlMeCUMW+Agaajce+t1uydssuQfl1ww+abVDiCfu0NqHwcIFicj+xMSF0nOOeY4M@vger.kernel.org
X-Gm-Message-State: AOJu0YyPVmjL9HcCUttUHf/8R1Tlp0gMxxipvS9M+WQhQN7nnLWIrsXu
	IWsDohHKb0dWildmaBh74sqogvgsnSL5fyb5lk2d6Ubw6P0zoM47aAc2ZQCAh3bvxZRKh2fN5kV
	iEJsWEwE=
X-Gm-Gg: AZuq6aI9jWqzRw01lQpDRaAZSoz8u/cow0r785UfAuFkA/yeejtdKthBdFo+Nd7FUcX
	X5ydVk+40MUJ0ihhqwKt2zl6WuTFbmzmqITMPOsotlNufIHPJ+Fb9tJoEP6D4cnGA59GeaV8bk4
	QvR9gruROaiCamEBWOzia4OF0P8od31N8UtWy4K7vd5KDY3OHutnUUslOaKWbKGZdVOLaIMaI+H
	+XIgiwiOb5d57X9FhVIoLjWmQ35bV+mX1mQxUAXIogmDhtBSMDey/oUAygrzNIj+WonKQDTNlkW
	otzrHrqqrizw8UztYjA+rYOHc6srz9sBrlLptG0Z2XSc1FY6g1ths3YELA9OVn7zz6EqrtPaNGk
	Xeg8T7aB/4LicScdn1EtdaoIoEg06b/8VcYApvvaxV2XSyt703N285GGf44SUVJr2dtnlMjrPFr
	indgFKMaeTND+/dtdpZ2LmZvhG+6ESIuSBtaqCuJ8V46hLmdC/OH2TTSIYCzWuKnx4+xc313rGs
	tQ=
X-Received: by 2002:a05:600d:8444:20b0:483:7813:90d8 with SMTP id 5b1f17b1804b1-48379b8c02emr227767405e9.1.1771506559564;
        Thu, 19 Feb 2026 05:09:19 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4839f96967bsm23697575e9.3.2026.02.19.05.09.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 05:09:19 -0800 (PST)
Message-ID: <efb88928-645e-464d-8714-572b9f8d48d3@linaro.org>
Date: Thu, 19 Feb 2026 13:09:43 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v2 1/5] media: dt-bindings: Add CAMSS device for
 SM8750
To: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 jeyaprakash.soundrapandian@oss.qualcomm.com
References: <20260119-add-support-for-camss-on-sm8750-v2-0-3e06583a0a81@oss.qualcomm.com>
 <20260119-add-support-for-camss-on-sm8750-v2-1-3e06583a0a81@oss.qualcomm.com>
 <406f2ca6-d136-4c05-bb46-65d39c1eedbc@linaro.org>
 <1bb6ddd1-54ec-4085-a321-a9b4f2b54950@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <1bb6ddd1-54ec-4085-a321-a9b4f2b54950@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266647-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,gmail.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bryan.odonoghue@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4772015EEBA
X-Rspamd-Action: no action

On 19/02/2026 01:08, Vijay Kumar Tumati wrote:
> Hi Bryan,
> 
> On 2/18/2026 4:50 PM, Bryan O'Donoghue wrote:
>> On 20/01/2026 06:42, Hangxiang Ma wrote:
>>> +      - description: Registers for ICP (Imaging Control Processor) 0
>>> +      - description: Registers for ICP 0 SYS
>>> +      - description: Registers for ICP 1
>>> +      - description: Registers for ICP 1 SYS
>>> +      - description: Registers for IPE (Image Processing Engine)
>>> +      - description: Registers for JPEG DMA & Downscaler 0
>>> +      - description: Registers for JPEG Encoder 0
>>> +      - description: Registers for JPEG DMA & Downscaler 1
>>> +      - description: Registers for JPEG Encoder 1
>>> +      - description: Registers for OFE (Offline Front End)
>>
>> This is a weird map - it doesn't seem to have a BPS ?
> There is no BPS module on SM8750.
>>
>>> +      - description: Registers for RT CDM (Camera Data Mover) 0
>>> +      - description: Registers for RT CDM 1
>>> +      - description: Registers for RT CDM 2
>>> +      - description: Registers for RT CDM 3
>>> +      - description: Registers for RT CDM 4
>>
>> I actually think these should be standalone nodes.
>>
>> I've done some prototyping work on Hamoa to bring up the BPS and IPE 
>> using the ICP and the HFI protocol.
>>
>> An absolute torrent of TLAs there but one thing that pops out of that 
>> is the current CAMSS bindings we have kind of match how camx works 
>> when there is an ICP.
>>
>> Linux/HLOS programs up the PHYs, CSID, IFE, sensor and then the ICP is 
>> tasked with owning the BPS, IPE and hiding away the complexity of the 
>> CDM.
>>
>> So to me that says we should keep CAMSS bindings as they are largely.
>>
>> I think its just messy to keep jamming registers into this map - it 
>> really is an enormous list.
>>
>> Lets revert to the simpler version and add new nodes as we enable them 
>> for OPE, IPE, BPS and ICP instead.
>>
>> OTOH I will publish the CSIPHY code you were asking for either 
>> tomorrow Thursday or Friday and I'd be obliged if you could review and 
>> ideally align with that.
>>
>> A humongous blob of a camera block seems like a legacy sin we should 
>> just fix.
> I am not sure I followed this entirely. Firstly, you weren't referring 
> to the RT CDM register blocks (although you added your comment there), 
> are you? 

I think what I'm saying is - lets leave CAMSS bindings as they are. We 
can add nodes like OPE, IPE, BPS, ICP as peers, along with CCI existing 
and CSIPHY - in progress.

This way also stops us tying our hands with bindings. For preference we 
describe all the hardware but, having played with the ICP - I have it 
booting and sending me a few cursory messages - I think extending the 
blob of CAMSS bindings is a "hiding to nothing" - sure it checks the box 
of documenting absolutely everything but it also locks us into a very 
rigid binding.

TL;DR I was wrong about that ;)

Secondly, I thought you wanted the complete HW description as
> it is supposed to be in the DT bindings, isn't it? I am not sure why you 
> think it is based on how CAMX works, rather purely based on the HW 
> blocks and registers available in the Camera sub system on SM8750 and it 
> is up to the driver, whether or not to use the ICP for offline modules, 

Yes understood but to me it seems simpler/cleaner to the use the ICP - 
for example HLOS doesn't have to know or care how to shift data in/out 
of the IPE with the CDM..

> although using ICP is generally advised for the stripe based processing.
> 
> CSIPHY nodes - sure, if you advise that, we can.
Feels like a nicer interim solution.

"Do the right thing" separating out the PHYs while giving ourselves 
scope to investigate doing IPE, JPEG or whatever - likely as separate 
devices a-la ~ every other SoC.

Rockchip and Broadcom as examples.

---
bod

