Return-Path: <devicetree+bounces-196533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EC50EB05BB0
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 15:22:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2805C1C201D3
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 13:23:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56C942E3365;
	Tue, 15 Jul 2025 13:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DRM+Om9z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EF022E041E
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 13:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752585762; cv=none; b=YXQdGQNWMdGr+4os69/ZkvogozpFZHex7c2RE4WSHRs/iDckZGl0D3ZDJjr5kv6Cp3QIIwkCQNBo6I2spwc3+BaOiDMwXnHALfbkD+xG24NMyKHGlqUt61bzl0xwoTaRHX3OG/LKXEGV+GeWng3WWm5vRsSRC+ds/cuJCpelpMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752585762; c=relaxed/simple;
	bh=ggSBZe4/MRYCdgcgShw/v6VB4zRNxAUpfJNW4Q2ASJE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MfIWai+Ur7X7u/cGrpAJlUsXD8hP/1+Ax2WFpkeMiLEcc7AvCgP5n+zbH39BNHcsPmRadDmC51QeVKQa2wqLIbT7LPqOoYA9RcrMCob8jz5QAgqL9OdXcD+etX5eAl8kBZGhELDqeCDzmQv/kVDBaPU/vuxeQf3dHmrSaQNdizk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DRM+Om9z; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4538bc52a8dso40019835e9.2
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 06:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752585759; x=1753190559; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3H6Iidp9rhDRZxtCBFi+Uvs5Kn95t+qmKzadfhzoSHU=;
        b=DRM+Om9zoIMPN8JSJnTRl2wFDjex/lJd/8WXyjCMoWc+XPQ4YLT1tM+lydpl3JqMCI
         ECApSx/rj7U1v8iJX31ungXX1kX9MK9BdOfaQBi06L8ZTJaqwgAlwlTMYtT69f2jU6Up
         JnxG9G99f/cAmk+GUem3Atwgqc4YGuW1zN/Z3JgRJX40ZI3F7gcNGL6oaN8BEjFsc14A
         4q7uHcMd4N6QUVz3aQvteToGn3jEanmbt0wsaKfylJq+6+UGgeA/eQw9a7y/shzyXP+D
         dN+79vMA7mWitPVxBq8aazhRg2okSQ8CemWQs3VCj/RugpB0Tcd1SpricrYFfHQkbYR/
         55eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752585759; x=1753190559;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3H6Iidp9rhDRZxtCBFi+Uvs5Kn95t+qmKzadfhzoSHU=;
        b=k1C+oh8nk8RWuATtgQJNiruz/SXQfrpyuQCSTFtijh0dMpKE6/OZmSOd1Zsfirpc/a
         WCM6sjNrmeH0wDazAyJ4F5P7aJl6FyR4OpizsZ4I8tTDgiVrX9bmS4LCctYsgcaXrv53
         tYd892UBYLG+HKCbtyOHaufV6pa9GyqOlnHHBZoni6rCGytPP5MD4rwlcr4xonbV0vAF
         0Zzn5nJMNZIS/l6zmkNFWa/HEp6A2PZ4AnUoyK3wFzHj5uoLKV6mbRM2MQU4TAr/oxQZ
         ZkYe5aLxXdfATiP1T+MZGauRkCVoyIzxJKM7XAk6BUuEvdkPNWDqR83MMJtelg0nvgTA
         ln+Q==
X-Forwarded-Encrypted: i=1; AJvYcCV8lOljfY14EMmxe04LEkVz/NWW3Alep/XIWNbnzFT+wxocf54Yjps9twXF9RYbk/xlcGxq3bXuZcEl@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+zOx/pL9RIfNSkgKYDpYHvr8SECimjwTz4yoWitQWE3IgLIwl
	/hERXhhYtDdlx7jYG0D8dd1LXI+eKFgg0KiV0xgtHvUFNPGT4lV9iOoGPt8lQCY7RXk=
X-Gm-Gg: ASbGncukmKUAX0OTspfg5Z84bcIpL96duzvuYXT6f1RLv0tmBNk83obh2prOso5Cqap
	lVUYKS/fokg43qGacIyHFvJQw2YOrKGEmqkkNE3zSS0iEqK9hG/n9091/gJvwsPBKSuz8n1F58H
	FbwWHP1rcIZL6YhlyW5L6p1lDm677jootjb6yN0uQGumPfb8fF/7T5dUso0Hk0FyOP8EZcVjv6Y
	0bKN2od9LjEmAQjNU8kJYwIIqjxcm893fyRhblE1kUwwK9IcCXTTl1SvcOzVWqQka9sD17Z9BVl
	XGLhxpx4PaZk15um4+7bfSzerOXxjQdz+Z9rJDKhzr4yEBYvnhsWwmBNVBTaod8uwh/hU5OwgHZ
	6R0Osk5pVy7XgIGs3nl5OiTBEmNKsPPOQ6ShD279yslquIHAp6Ze1725bFEym0tNa
X-Google-Smtp-Source: AGHT+IG5laFib5IuGaEe0/CAIHikaeUxn66e8XaT3qBceu8HH3QCzXBdKNCtQKvvZS2pZhhp2+9shw==
X-Received: by 2002:a05:600c:3e83:b0:456:237b:5e4e with SMTP id 5b1f17b1804b1-456237b60e3mr43102535e9.32.1752585758680;
        Tue, 15 Jul 2025 06:22:38 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8e26ee3sm15418891f8f.96.2025.07.15.06.22.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 06:22:38 -0700 (PDT)
Message-ID: <85c1a702-1a3a-4145-8f2b-240d61d6e72a@linaro.org>
Date: Tue, 15 Jul 2025 14:22:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 00/15] Add dt-bindings and dtsi changes for CAMSS on
 x1e80100 silicon
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod.linux@nxsw.ie>, Bjorn Andersson
 <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-0-0bc5da82f526@linaro.org>
 <9361e954-e2c9-41c6-be4c-12b0e4f367f5@linaro.org>
 <ae0a309f-7e52-4d3c-8f26-989f22da5b07@linaro.org>
 <GbVC82h7wSXQsAJh8XybKorKYy9wupjQLndjf_uYNXOZnk1UqS_tT4Yg9gzf8X3Kn55Mt5bXfcFrHtyMoFZ4-A==@protonmail.internalid>
 <a4ebdf5c-8d4f-4994-afd9-22c8d889fe97@linaro.org>
 <4281887a-e7c0-43bc-9e72-96f0e432c58f@nxsw.ie>
 <f753f088-474b-41bb-82d3-6684bea2f87e@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <f753f088-474b-41bb-82d3-6684bea2f87e@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/07/2025 14:08, Vladimir Zapolskiy wrote:
>>> It's quite easy, sensors are not connected to CSIDs. Moreover data flows
>>> from any sensor can be processed on any CSID, there is no static 
>>> hardware
>>> links, which are attempted to be introduced.
>>
>> This statement is not correct.
> 
> Please elaborate, what statement above is not correct?

"static hardware links, which are attempted to be introduced"

No such static hardware link is being attempted to be introduced, that 
statement is incorrect or a misunderstanding of the intention.

> 
>> The port@ in CAMSS pertains to the camss-csiphy device not to the
>> camss-csid device, so there is no hard link to any specific CSID in the
>> dts scheme here.
> 
> And here it's just a confirmation that my statement above is correct,
> so please be consistent, and especially in any kind of accusations like
> you've just given above.

Sorry Vlad I don't see much basis litigating this further.

I've been very clear, I think we should have standalone CSIPHYs, there's 
no reason to bury them inside of the CAMSS block - see CCI.

There's a clear way to do endpoints established from sensor to consumer, 
there's no reason to give that data to the above CSIPHY driver, it has 
no "use case" for it.

Its unfortunate we've done parallel work but, I'd ask you at this point 
to rebase your multiple sensor work on the proposed CSIPHY series here 
and for drivers/phy.

I very much look forward to and value your contribution to enabling 
multiple sensors on the CSIPHY predicated on that rebase.

---
bod

