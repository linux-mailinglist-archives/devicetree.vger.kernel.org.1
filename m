Return-Path: <devicetree+bounces-255952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D106D2EA96
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:21:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 54DCB30EB6E2
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:18:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABCCE3451D9;
	Fri, 16 Jan 2026 09:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pPaj2LfF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA19734214A
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:18:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768555109; cv=none; b=BvQGpNsTZkhGOYpkOYjHK5rgl+Yz8+ZHmm+o02ZOLwu8BtmLNifxuf4psX7+9sitV6+nvOXImFgE25LNSfL7vYWpoDcFZhPQOz6PIN6VzjouhhS87URmByWEs65BIAOaI+7fQzmVYKNkPs8zgm0VrFavRSApdSplvcV81RQnplI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768555109; c=relaxed/simple;
	bh=AghABfkarHqDZQKCjjyiZmDcR7FwtgnGUdqMcOQ//v0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LsA9RF8QHXjg9BdZ2EfoR/sY9su1pMAj8BLAaMRvifnXR1R7D4CdtjiA//bce64N9XZm3Fad7i4QmD6ZQAMcnbc0nLmPVfqSwpv/pJBnR7XAlh2Xg11OViVWnBDQy91aLjxJNrg7JVJ8ydk329Uk800tFCILFuii4ft7Rkt2Vu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pPaj2LfF; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47ee974e230so15959175e9.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 01:18:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768555106; x=1769159906; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z+AGXRtrMXkyrXKzRmoE9z026WTEqpV4D7gQD8MxXK4=;
        b=pPaj2LfFQNsV88/GHrQq8j7NyFSfU/ZTDN+4B8nBIYcZJrzTPueWLPTs/Q0d1gyv/c
         HgdMyYHx8FLjkpzE2hY7VFzLJSKVDHDMSNa42+8Y919PDLXNcAJOOW8jrU9NM0z0c5o4
         FvXWiuzEtD6EjoYC+U1BUyQPd2te4/iiWI43aai+IbYvMOYO+ii4DcpPGFqhWUo0fx9J
         DnAqW2ZeVyRho43aCwDPZrtXkPsUdcW9XHNnm1R00tYWW5jJmTzPJCvJa72QG84mYyvV
         424yZJ8tX3V5N/hjMCH0pRxE0qZ9m/edSu5OLEXRJ7UNVcViOY4YPedEMQW7eEoyWAG9
         2mkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768555106; x=1769159906;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z+AGXRtrMXkyrXKzRmoE9z026WTEqpV4D7gQD8MxXK4=;
        b=baIkc/6RGmOjW4tkTfrv38sOc3igo6AtDwqUkiJXWCqScmVllAn4iQqPw1yYry72ji
         VaNm/Js8txdnw6s7/ux8Ml35MKZPirC2lcRSXw9lm5/oDjmgJXHI8UBl7WbvWRWDys3B
         kt+oFfGFbcQZLk53qyFCJnbxaMufEFOTHLcoqr54FRAKdmWq3I85H3kc+oQJRHVdHbJL
         zJGg0i1Oq7GFB+PxDZujZFz7eFntkhYfMj6y8q34IXbIiFE+Td2TPcXTHulx9KOTmefu
         3G8Wo8LWm3XkHXB6poj4iKopCdl5N3by29MfUgeohaccccmQ8pDAP2qgv0J1+smn3v8Z
         sVgA==
X-Forwarded-Encrypted: i=1; AJvYcCVcuM2tOteU6t49I13sBgVdp6upyIM09hc13f6jO6TU0HqwzsK9ABUG2DJO2aGsKVQvkaTJugucuUT0@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8ZMcQzHgbgq7eeDyRBnpengBPvYKybBIsEMwQpoBPaDEuDa2i
	HyFC49zznHk/dZEcGjJWATx0EKUw3nEz51NStg/jLvYRekaXqbOr5tEdl1b/xo7r1qI=
X-Gm-Gg: AY/fxX4YGGLe3YMSEVvgEJZvPAcqSWhfgr9dNP8KfmuvWEV/EG9edT6Ums9gfmpyhCw
	4s4TQ/MW+J6WWdA5NUvHQGXZNfvwovj5r182Db0szcuysLxmfyIWPSZxDTy6J1YkRkKNchB/44x
	BMnP/lCeJg2vjYVtzjewSF4ffuaijqM8IWqvsj0+a7WsU4IE8JZp71Ks9BRXyVVq0JEMq2106bh
	ebWm02n+IpKVYfuDCGdpfkTO/zmrLCFmmGu3iN7v8oUoghC4q0q/h0f7jJNypaGfRasr3uZSlAh
	bxCg+fmlXsq4p8ZTRdNv8a8extlbjIcV5M8PK3Y7mBKduOw/aHFZC1dBRRjUv0zpJEzmgRj4HCM
	1SzcDdGaDOzk3qOBkrwbhhj7Anzx/AMZurrUfNI7FhJlkKdUj7hsPbVN2GAeZY2x5nfHhR5K/z+
	HXWAi4XzX7r3wM4KT1Eg==
X-Received: by 2002:a05:600c:6209:b0:477:641a:1402 with SMTP id 5b1f17b1804b1-48023ea2fc7mr6725565e9.4.1768555105706;
        Fri, 16 Jan 2026 01:18:25 -0800 (PST)
Received: from [10.11.12.107] ([86.127.43.8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47f429071besm87551575e9.10.2026.01.16.01.18.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 01:18:25 -0800 (PST)
Message-ID: <d3dedf5e-ada3-4d33-b1a5-7556ba80ffb1@linaro.org>
Date: Fri, 16 Jan 2026 11:18:22 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] dt-bindings: mfd: Add Google GS101 TMU Syscon
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Kees Cook <kees@kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, willmcvicker@google.com,
 jyescas@google.com, shin.son@samsung.com, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-hardening@vger.kernel.org
References: <20260114-acpm-tmu-v1-0-cfe56d93e90f@linaro.org>
 <20260114-acpm-tmu-v1-3-cfe56d93e90f@linaro.org>
 <20260115-slim-denim-potoo-cad9cb@quoll>
 <200d34bf-150e-4f8a-b400-2f54863502ac@linaro.org>
 <e2f028d6-774f-4773-889f-7d56b833067e@kernel.org>
 <fcc5405e-189d-4195-8db0-3acf35bbc0a9@linaro.org>
 <26d86470-aaa2-46e3-9940-010a903df4fd@linaro.org>
 <0176a63a-6b04-4e30-b718-847133882050@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <0176a63a-6b04-4e30-b718-847133882050@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 1/16/26 11:14 AM, Krzysztof Kozlowski wrote:
> On 16/01/2026 09:50, Tudor Ambarus wrote:
>>
>> Because of the hybrid approach I'm arguing the ACPM child node does not
>> fully describe the hardware, and it's just a firmware abstraction.
>> So option 2/ would be to have just the TMU IP block described with a
>> phandle to the ACPM IPC:
>>
>> soc: soc@0 {
>>     tmu@100a0000 {
>>         compatible = "google,gs101-tmu-top";
>>         reg = <0x100a0000 0x800>;
>>         clocks = <&cmu_misc CLK_GOUT_MISC_TMU_TOP_PCLK>;
>>         interrupts = <GIC_SPI 769 IRQ_TYPE_LEVEL_HIGH 0>;
>>         
>>         /* The "Firmware Phandle" approach */
>>         samsung,acpm-ipc = <&acpm_ipc>;
>>         
>>         #thermal-sensor-cells = <1>;
> 
> Yes, this one, I think it's the best representation.

I was leaning towards this as well. Thank you! I'll start reworking the
patches.

Cheers,
ta


