Return-Path: <devicetree+bounces-277208-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLW4Eq+fumkkZwIAu9opvQ
	(envelope-from <devicetree+bounces-277208-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:50:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB352BBD65
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:50:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 27286301652A
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:47:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C34183D5225;
	Wed, 18 Mar 2026 12:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m1m12cZ7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D7E2874E3
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773838076; cv=none; b=BDNVLPV2pR/Oqd2EAJuSL0uK8Vj2aAUp1FnxCIfz5+sOHr8Gy53wciiE4NBOpsYTeszv3bJLLNvv9582hkUtDHPyFMXXOTUpaGtVCOxsgMqFu+syGXvxei11hnPWT251DDMp4WjsW2Qeiga7zwJt4+/CKxuB/cKvcSK6PPBBs2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773838076; c=relaxed/simple;
	bh=haKwnk7LAe5088Nk51Nv4mgC1HQ0jAtSjW0cfHLTAUo=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=oEw4qPyqe9BMjKBcAt3Rrll12v5I0xLufQ0JaEk0HW1TV4JuHYtep88qN6vLCW3OfAzwBNLfzm97mKcwnMmNad1zV+Vh77E2G7p2Cp+6mzq4lfl9MIfF+A+7BG+rx6s2fYbUaPe9HY0t3iAKYqmmeUh2qf/BTVO3qyxau9fMHb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m1m12cZ7; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b976e181895so832009166b.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 05:47:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773838074; x=1774442874; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kPUTFEDRHwDnSlS2VHUl2pguJOQjDAxKt4qh2+1uSEo=;
        b=m1m12cZ70ooiaStxdugJP38CgunagyuOhZ6l2WB7RTD8EhQiBzTzv9gohjaEjC6L0v
         WaFATQSkko2vfgsYyHhHoQpeDubUO/sLEq2EFR9xEtgg3WFqhOYpCEMoRk1DZOJCA4AM
         vSbiXFxjyH+DzGaf7R8kI6SqzCHqyf/ihIxa6jkiM0orpIa2euKDSArwJw3xPt26HPWK
         JS+EgV+qd6bNCnWtZpeMPsFcouWwL39U1dDgiljUkeaFTqh+N1F/VKee6+31T+yh+JR+
         hMofokjPD8PXm4xTCpumXYRHV/ySZU5lzpOqgNmNhfqzlR4z/x1Cyu/UmLOQ0BP6wCDN
         p74A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773838074; x=1774442874;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kPUTFEDRHwDnSlS2VHUl2pguJOQjDAxKt4qh2+1uSEo=;
        b=RhrMON3puqR4mKMHXoCUNfpcLcpE1K0gTxhsCPCeeLrsDvr0oGuALNP6PKNEdh/W1z
         Hc3JJqiL4ejr9Mf/kQ17sQOnHMOpoh9Rhm0Qb/Ntr/60cvixd7i5Uc52sFrrEjYypY8D
         2n9hZFwLsSYsY2FGxGb6idmPufGKzAV+Zt53LgY1+FW1WWdLc2EN9Dxx9WDBKMT4JCaa
         5GH2Dq69JXz2GUnPnZDyo9ds19dd2fhWhGhbXx7RnI+LHYvo+dgR8tqt5ToCVEy9ONbo
         Rvpu/YxFwYUlCdCBe1grvcpTmewg8KcM9aO5IZ/pjyaDlqvau/+aGFa2ZaGCjRRrxE0/
         29aA==
X-Forwarded-Encrypted: i=1; AJvYcCUh+Vq4fACwvW54FU6YcvHmeBu8xnbp8KaVVBHgV70ytgi5Cahg0zwnGlE4TowFToR8vrQrnq0tDMuh@vger.kernel.org
X-Gm-Message-State: AOJu0YxU2TKUz0YW7bPECr8iQTCx+EhAiaYPuPveZG8paKx3zeBHk9CS
	fSH0YlC85rjmkrz3+4H1cHL0pXJX6lKpxQ4FRZALgO/tc3HAX0oX3clc
X-Gm-Gg: ATEYQzx8zGyMTpGwgN2uI2ExXVEyE/S/1yRRzfpO2IBsxJblWboYKTufSgbKPktht7C
	H92WWummPCHIWkWS8axE5peSBUyjnzISCLmCE0w6Jj07SJI2PFh/eRHYEHHT6XJIcVBZHa1exr0
	xUiyptWT7BSu5lNStjVpRgLkCLCB4cVtUa2HFO8KtdBpYUAoV8jXHdo0zWscxCcb523VOOJB7gM
	IKeBLmubht7tv0HwGLuvx4sqNPPpzXPYuTmrnwSHdsl8atdfraaaUOXTn68bW5FFu0X79L91X+9
	7td30QY6KMKlhleFeN/0WjA2IzAaIgD8uKNkWPmP9WRdBZsK5YiOlqs3lvXDyAyocLhop+0lSXH
	QnEPa5KbxYfGv2+fTCZkoIGlpuHvzD2ebSbTgdAWw6W/uxtGaQIZA+h8O3+PpmCIxtmwHk+8PQV
	DBqQmPAOgV16REgKZuF/4YJDMXgQ==
X-Received: by 2002:a17:907:e115:b0:b97:94b8:f450 with SMTP id a640c23a62f3a-b97f47979aamr155736566b.5.1773838073330;
        Wed, 18 Mar 2026 05:47:53 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f1689be2sm192663466b.34.2026.03.18.05.47.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 05:47:53 -0700 (PDT)
Message-ID: <f740d1e0-551d-43c0-9681-6011d9cb702f@gmail.com>
Date: Wed, 18 Mar 2026 14:47:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Erikas Bitovtas <xerikasxx@gmail.com>
Subject: Re: [PATCH v4 1/7] dt-bindings: iio: light: vcnl4000: add regulators
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20260316-vcnl4000-regulators-v4-0-854fc2eaf54b@gmail.com>
 <20260316-vcnl4000-regulators-v4-1-854fc2eaf54b@gmail.com>
 <20260317-tricky-pony-of-assurance-7a8cac@quoll>
 <da9850da-af27-48d9-9e5e-2d187c35d262@gmail.com>
 <16b3eabc-ab88-418b-9eb3-367076a8bcce@kernel.org>
Content-Language: en-US
In-Reply-To: <16b3eabc-ab88-418b-9eb3-367076a8bcce@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277208-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: ACB352BBD65
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/17/26 5:42 PM, Krzysztof Kozlowski wrote:
> On 17/03/2026 09:07, Erikas Bitovtas wrote:
>>>> +  vdd-supply: true
>>>> +  vddio-supply: true
>>>> +  vled-supply: true
>>>
>>> Same comments as before, I do not see improvements.
>>>
>>> Best regards,
>>> Krzysztof
>>>
>>
>> I explained why in v3. The message can be found here:
>> https://lore.kernel.org/linux-iio/cb92bb47-9078-475d-b242-71e3f9181a72@baylibre.com/T/#m6da277894cf5c2b473fbeebd4b7bafc7519ebc26
> 
> Apologies, I missed that. VDD and VLED are fine, but I2C bus supply is a
> property of the I2C controller, not the device, therefore please drop VDDIO.
> 
> Best regards,
> Krzysztof

VDDIO supply is needed for the pull-up resistors for the open drain I2C
and interrupt lines. Without them, the device will send spurious
interrupts. Such cases are already present in mainline, for example
Awinic AW2013 led driver [1]:
> there is usually more than just the I2C I/O lines. For AW2013 there is
> at least also the open-drain interrupt line. On other ICs there could
> also be arbitrary GPIO lines that are used in open-drain mode. Those
> are completely unrelated to the I2C controller.
>
> Do you have any suggestions how to handle the power supply for those?

From the looks of it, it was agreed upon to rename the supply from VDDIO
to VIO. Has anything changed since then and now there is a better way to
represent this relationship?

[1]: https://lore.kernel.org/all/ZBoR0DPQ+AufzKHk@gerhold.net/#t

