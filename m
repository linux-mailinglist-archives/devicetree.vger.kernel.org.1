Return-Path: <devicetree+bounces-278002-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OLdzEHJJvGknwgIAu9opvQ
	(envelope-from <devicetree+bounces-278002-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 20:07:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B38412D1821
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 20:07:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D03CA3048060
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3FB0359A76;
	Thu, 19 Mar 2026 19:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="t1lzzWZM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96ADC34D395
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 19:07:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773947229; cv=none; b=JcxBo76Q3TSNhO/b5j9MJxu75GKVzKMXe4K0AH20zS+7PFd9HuxgT63S9EpI4Djiy5LTNoibKuPQURC4UCY/vuhpUEdPEroljonoj3bhl65ghfd+MRW/W48bf579spM45r3d4te4RsgO8YesGVN5TmYYbeuV2be7iwg2eMOtNDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773947229; c=relaxed/simple;
	bh=yW/IU3e25Zy4WJaB66NqymPliyoUarcBRbIx9wdpU0o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tF5q295ibVP6aZc/KFwhLLZfquKqIFKYVgAinXmGRNmfxMnRxWyIrW6FyYImVyxbRxBC9YfdlKYEoMLAZbczJg5+gLBwoqPUUIzeHsC8IsUDrh2cmqgGBMGO25LYk8qbQusV5xI41uCbiyW3z8HL8WP3etl2ZbyRPHNgp/A2Lbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=t1lzzWZM; arc=none smtp.client-ip=209.85.161.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-67c1d6890f3so343306eaf.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 12:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773947226; x=1774552026; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0qCQhLNUlaK92jVRFmSRxDAiEZoE/HXa9IGlyqo2jsM=;
        b=t1lzzWZM5ng5qbMQmo3Orles0xIKvcsBntpdGd156f1a/3+T0aoVBC49MBXw6II3xM
         a8GLgmHLbgL8DSBiciq3XFuRlmtiLFDnQUxaymVDG2gNKhpG91/STY/Kjxj8zBFwzqNM
         ogiEzaGXs2+PsNZ+YYQyZWNk6x3Q32bGKzRiUUIRzfHeiXFcj2TcKjyedSMUvfL0TFQf
         rcRCRXUenUqw9wdRj4cQW12JSEjg/Onsb+KBYPWf65GKmn6Ex+NVAH/lsY3OI2rrMTJh
         LTyXVvpcmykCGXKtOxWs5xUMgdXb3BgAeMvxj2qFo/XJ38XiBuCVeUIBV33K4UHYfBe2
         zEKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773947226; x=1774552026;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0qCQhLNUlaK92jVRFmSRxDAiEZoE/HXa9IGlyqo2jsM=;
        b=aqsn4i3K9gei4+otf06dz8SuojMQiMz9T0mDr9SajbrD/hdGXYlQk/YByjgsXreNd9
         WLVgEbpRAUW9JeGALdYXXvRlxpIJpVILauaBz8hs6o3KE1uTG03RrHdX5QiaC0PlWRcC
         Hh1o8UJVstHAEMJ7nXtuREfil7x0hf9Ic8BL9TAkTjEmUpRUN14pwCh8lYS2VLMiu/2M
         JkTe63dwTj3S+iAt5xHkYS8k2yNdWNfdUu+47Cmm6fXz0ROP02gwlvbSKWXCtOwzgmue
         DxMZXeIpfDGMhg3F4WYYGBaR9j6L8ZxV5ODZYggmPLfE+5pDaTV8PcQvB0js1ZIvhz5/
         7FVw==
X-Forwarded-Encrypted: i=1; AJvYcCVJI/qTFGzI9vNOShvtTs3K8ya4zc9tL+lTR5cHY0DhQ1m+MJS2jTuihRIeKO+zWX7G19pyVl3dwWjD@vger.kernel.org
X-Gm-Message-State: AOJu0YxfjXhVePizW3j3ngkSpOONjVW21+fDBW8lDohpTpEWHP8Jv8h9
	YjjbvU0EUeaRRjg45Zri9gLqT2Hul1BNVFO1RQB9Q6TWjcURrYe1Yw3lN347nURRIK4=
X-Gm-Gg: ATEYQzx2sqj9hc4VThRipxGlyJ/d6kk2qIpwZqAEhFV7kVofZvLZQQnrYmTMcmtpBzk
	30TPER1pfFuPFN0+bXNY1FIhppXaEBJuarkxdeXMOQa5WMnQZuIZERP+8BTb9S4wLIi33mjDK4s
	Mf9hg3dbli8SIlEiI1enWkIZEC33oC8t2CesM95f5BjiL6fSqq1FpqJRdpM7E7p/YYsm8xrwNoU
	RO/FtBwCDlPGpPF+j4JKzTeKH5lccaoH6zSlJhp66zuRETnLsI3ccaHm7a9IZ8VOTdzQg2YvQ/U
	vdji/GRmjRARgiNvCXXUIMV9WA+jpitIH3AtDLf9KzUfQ3QEYmYvpcMUfLKhGDQYDGm+GMhDT1/
	uXjor9LW2mcD/3VVAwJX7VBX+vTCbPnUnDZpsTiDA/1rgspHofKvWscqB+sB/tU71AsNlxixFm1
	wcB/ZE13Q7GGKyWcjYAIhDMEX8i2hjNOGN5gpUOGl+3jcxldBGHvMvgsbpy/yW4OxsFbU5s9r88
	GGiq9Y2Xm4J
X-Received: by 2002:a05:6820:806:b0:67b:a4cb:293f with SMTP id 006d021491bc7-67c235fb70fmr249017eaf.17.1773947226499;
        Thu, 19 Mar 2026 12:07:06 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:244c:fc8c:8216:1344? ([2600:8803:e7e4:500:244c:fc8c:8216:1344])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-67c0d724e53sm3921843eaf.0.2026.03.19.12.07.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 12:07:06 -0700 (PDT)
Message-ID: <faa4e46b-1cc6-4bab-b13e-c527a67ec4c4@baylibre.com>
Date: Thu, 19 Mar 2026 14:07:04 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] dt-bindings: iio: adc: xilinx-xadc: convert to YAML
 format
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Sai Krishna Potthuri <sai.krishna.potthuri@amd.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Nuno Sa <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Michal Simek <michal.simek@amd.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, saikrishna12468@gmail.com, git@amd.com
References: <20260220053941.611415-1-sai.krishna.potthuri@amd.com>
 <20260220053941.611415-6-sai.krishna.potthuri@amd.com>
 <20260221-dancing-papaya-wolverine-db8afd@quoll>
 <b89933a3-5f25-466c-a2f5-6e231aa12749@amd.com>
 <21d425bc-9406-401b-9817-7255ba3d31fc@baylibre.com>
 <e4c9729f-1785-4d10-a337-37b0d26fe30b@amd.com>
 <f1706ec0-3995-4fdf-a9fb-8e1e688438a7@baylibre.com>
 <05bcc5b7-b3e8-40fb-be70-413c74afcfb1@amd.com>
 <cf749e8c-f141-4367-81ad-827e02273ec5@baylibre.com>
 <6a4e3d95-875f-4c2b-8443-c2f2b19ff166@amd.com>
 <12a06779-cbbb-4dc2-b564-7b9cdff6796b@kernel.org>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <12a06779-cbbb-4dc2-b564-7b9cdff6796b@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-278002-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,amd.com,vger.kernel.org,lists.infradead.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,baylibre.com:mid,baylibre-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: B38412D1821
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/19/26 11:49 AM, Krzysztof Kozlowski wrote:
> On 19/03/2026 16:49, Sai Krishna Potthuri wrote:
>>>>>>>>>
>>>>>>>>>> +
>>>>>>>>>> +$defs:
>>>>>>>>>
>>>>>>>>> Why this is a def, not used directly? I see only one usage of this def.
>>>>>>>>
>>>>>>>> I am getting the below error if i define the patternProperties directly.
>>>>>>>> Seems like complex vendor peroperties should be referenced via $ref.
>>>>>>>> Please suggest if there is any better way to deal this.
>>>>>>>
>>>>>>> It is hard to say without seeing the new version of what you wrote.
>>>>>>
>>>>>> In v1 series, i created $def and referenced this in xlnx,channels to avoid the error that i mentioned.
>>>>>
>>>>> Is the code below the code that causes the error?
>>>>
>>>> No, the below code is not creating the error but Krzysztof asked the question on this code,
>>>> "Why this is a def, not used directly? I see only one usage of this def."
>>>>
>>>> I am saying if i don't use the def and use it directly i am seeing the error that i mentioned. So, asking is there any better way to handle this case other than using def.
>>>
>>> If you could show us the actual code that is causing the error, then
>>> we could perhaps spot a mistake or suggest an alternative.
> 
> Thanks David, I am surprised how many emails we need to exchange just to
> see the actual code.
> 
>>
>> Thanks. Here is the code that is causing the error
>> ("properties:xlnx,channels:type: 'boolean' was expected").
>>
>> xlnx,channels:
> 
> Device nodes do not have any prefixes. Just take a look at any DTS or
> any binding.
> 
> Probably that's the reason, because nothing in this code looks
> particularly odd. Anyway, please do not come with odd syntax in the code
> without any explanation, just to make it passing the tests, so for
> example ignoring the checks we have.
> 
> 
> Best regards,
> Krzysztof

Since this is converting existing 12-years-old .txt bindings, I don't
think we can "fix" the bindings by dropping the vendor prefix.

I think in cases like this, Rob will usually fix the tooling to ignore
this as a special case. (I had a similar case last year on a conversion
I did.)

So I think the right thing to do is to not use $def and explain in the
commit message why the error is expected (we can't change existing bindings
even though they are "wrong" by current standards).

If this was a new binding, we should be using the common adc.yaml for IIO
ADCs which already has patterProperties for channels and a bipolar flag.
But we are stuck with this vendor-prefixed one here.


