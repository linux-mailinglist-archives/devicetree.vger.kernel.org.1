Return-Path: <devicetree+bounces-34020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C987883880F
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 08:38:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 296BAB21549
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 07:38:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57108524AB;
	Tue, 23 Jan 2024 07:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZJPikD1o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BCF851C54
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 07:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705995480; cv=none; b=DvrPjG18aDukWhzaXo3yzFWhr5bGI0JtySbRggnbEXbechwXmOqHB9nvrf8/KrqkVObX0PSvA0Fm1+BotNLdmd7v9L4uipiske6FUycPuSK2qNYimm9X1kIfXRl+RMe+/EP4S2VtvqFQuaGZ96bCJwHxuiWeydu9+9zQkeMWiak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705995480; c=relaxed/simple;
	bh=0a7+EHJm55in/lp7pDGGDFICzaZoF0HevGBZ0cILPVA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fKMohHnryoJ4ULVIxYXS8G1gKIdiXX6u+i+bvWGOoj5G9l5VHvXBaxkuxctalBZJASLF4UJ2dywyD8QT0lHWPIP0es3E0dw7lTIo9fL5bwmrKUwY22s6B6lC4TymDxkIrybFj5Z+/ClfFqMqN7H8Wevcd0XOz4npRxSNIKfY9KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZJPikD1o; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-40d6b4e2945so47717505e9.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 23:37:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705995477; x=1706600277; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u+FF5OsJQz/H/Si0+E1+MCz2gWZ2lfyn+V2mF5Wn6F8=;
        b=ZJPikD1oX0ML0D6g+J5UjGUAfbDF03S61R8gi21HKVm8Q08AW9IvxYUKT5XGTPdNkn
         ZNh9lFrDBKwcLFxyZPh6ryVA5kz99xd0ZxB5vUcJgfd28phaX0YjJWpdDAzxS4/iSits
         ln8aFJ9kgtfdQk1YY0v+wj1rtBMNmV7SHxQ59vusGQjjN7Qzlu6Q8oqe5SubSXIQ/GSO
         HUsqA8+Q8ydT+tyxj8sEWi7F7aGqO/pm+zRxhSJH5+dD8ncxGWq6Nt+VbuAnNq54GftH
         yKM5G+/9Xwj8plnbdLuFRtbjHFos3ZuoUpX1Uj1KTmqh4PHCNukGyjDAWFfXxvbnWxlT
         +I7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705995477; x=1706600277;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u+FF5OsJQz/H/Si0+E1+MCz2gWZ2lfyn+V2mF5Wn6F8=;
        b=YYxJ06LbCxNgnbuwJiAEzkWV1vwa/5pcyo59MXJJhSHeLtO67tPeFnTgeVJvNzEVVw
         jJYpkURvcZ4ID9NLzBeLr/Jn3JRb+1vKMbStBCF7yTUDRWHNAklzHY5of4EB9MPBedxQ
         /HyG/8rYUAX4p7kxE0WVoFTFNbZRYpMuKX0tz+iPn7SsJQeDZZ9Msg2CwriuVVASqhJD
         yVB+NP8NqoX0X8TSDo6W7SAqGKAdMEaqhFCDk1Q8O2uaUh9Xj3G6ThSVXdO+sF92N8N7
         WjERGw86vQkQTAfayZgSnF7skl+xd0uGpBozB4C65TQJMGYlpg/v1FOeP44WqeSQrXy7
         S/Dg==
X-Gm-Message-State: AOJu0Yz1nSqTVdk+Ftjvq2GRMGx9uqJBkoc8Li5wcsDSY7j10k1Ot3hb
	1NDzbfl/aVNgyNoSpzOL1k7R9t53ewdiv6u349wPdkrqt/opIhOhQAwXG6OhdK4=
X-Google-Smtp-Source: AGHT+IHFUWf2APSfGy/S9i3DycmpbSDXp2UlTmYeRaQrQ1u8PqG8UE72vd/tIqrKDgMsfm8+gY9wZw==
X-Received: by 2002:a05:600c:468b:b0:40e:8e2b:3ce8 with SMTP id p11-20020a05600c468b00b0040e8e2b3ce8mr154066wmo.51.1705995476894;
        Mon, 22 Jan 2024 23:37:56 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id bg42-20020a05600c3caa00b0040e3733a32bsm44965380wmb.41.2024.01.22.23.37.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jan 2024 23:37:56 -0800 (PST)
Message-ID: <0b0a4c9f-0549-4566-a900-b1d7de5838d5@linaro.org>
Date: Tue, 23 Jan 2024 08:37:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] dt-bindings: rockchip: rk809: Document audio codec
 properties
Content-Language: en-US
To: Tim Lunn <tim@feathertop.org>, linux-rockchip@lists.infradead.org,
 conor.dooley@microchip.com, robh+dt@kernel.org, devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>, Zhang Qing <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org
References: <20240120135529.899403-1-tim@feathertop.org>
 <20240120135529.899403-3-tim@feathertop.org>
 <04ccf5f5-1f02-42f9-b1fc-b781c54d7ae9@linaro.org>
 <93d775df-af84-44ff-870e-f720a33ddf34@feathertop.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <93d775df-af84-44ff-870e-f720a33ddf34@feathertop.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 23/01/2024 05:10, Tim Lunn wrote:
> 
> On 1/22/24 19:14, Krzysztof Kozlowski wrote:
>> On 20/01/2024 14:55, Tim Lunn wrote:
>>> Rockchip RK809 shares the same audio codec block as the rk817 mfd, and
>>> is compatible with the existing rk817_codec driver.
>> Please use subject prefixes matching the subsystem. You can get them for
>> example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
>> your patch is touching.
> Ok I will check this.
>>
>>> This patch introduces to the binding the standard property #sound-dai-cells
>>> and also an optional codec child node to hold codec specific properties.
>>> Currently there is only one property in this node however the downstream
>>> driver shows a number of other properties that are supported by the codec
>>> hardware, that could be implemented in the future. This maintains the
>>> existing driver ABI and keeps consistency with the rk817 bindings.
>> So you are adding a new node? Just for one property? No, just put it
>> into parent node.
> The existing upstream codec driver parses the property from the "codec" 
> sub-node, if I
> move it to the parent node here, I will need to patch the codec driver 
> to search in both locations,
> so as to not break the rk817 bindings.  If that is preferred, I can do 
> it that way.

Your long commit msg has just very short mention about existing driver
and the rest is not helpful. Please rephrase to explain why and what you
are doing it.

>>
>> Downstream driver does not matter at all in that aspect.
>>
> The codec hardware supports additional properties but they are not 
> implemented currently in
> upstream driver.


Again: it does not matter. Bindings are not about drivers.

Best regards,
Krzysztof


