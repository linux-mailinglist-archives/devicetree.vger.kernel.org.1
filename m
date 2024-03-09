Return-Path: <devicetree+bounces-49643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 343A087736A
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 19:52:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 57C571C20869
	for <lists+devicetree@lfdr.de>; Sat,  9 Mar 2024 18:52:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C3A845BFA;
	Sat,  9 Mar 2024 18:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rqmQ5iGx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6025528DD5
	for <devicetree@vger.kernel.org>; Sat,  9 Mar 2024 18:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710010344; cv=none; b=mqbOM+/poP/6R6RyWPWgs3dpuJ8bOYHsbfachQh76TsVx0O1JBIMiZPsIYFDOlW52l1ncQr69LH3PQXlB6FpHhnYptpvNhSyxewjNzhrH5KquPE89S7kgWnAys56mvRiatETfBX6iRKlBBHE5wZcBqqc0LoNXod/8aDDS8B4jWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710010344; c=relaxed/simple;
	bh=MyNC45uRjWeqHPxToNPt7Rbb8FNwYCXJPH3FWBAIT+4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gp89H5lJrHlGn0DNB7x7hDdD+szM8elhq1KOEMR7xVRv7dc8qH5blhU8FhMO1+w5nouKcX0ua6Asdvud1tSyFmNQLUtHzhYPlimj1MWpJQDLmtKD369zbDg6fXGrCHKPzuoPiiWEVZEHijrR4m8qNs0QoKgK2dg1HG6jtNJkalA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rqmQ5iGx; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-41317cc388dso12521125e9.2
        for <devicetree@vger.kernel.org>; Sat, 09 Mar 2024 10:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710010340; x=1710615140; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kvMYCtrSN6RntJWgY25brHBXsAYkKqkya5I6DZzP5+0=;
        b=rqmQ5iGx0AnJFmP9RKHFXUYvmPQoMI7EJCARRXU+sBjHvZJ1aSOIUo7DPNbghMkkTt
         jsvegm+u76hKrWrqIO5rwnhJ/0pQB3bqKUzUHVCI1Wr8D1fRINEflnwbjl9pYQIxmNT0
         SG8F6NAMyuyxNRZDDXqX4p/AqNrRe+/rEWx6rDrfJb1XWO6re3wgcWm0SY/bozuzPmbh
         M5l2yV+eBtGyWHDdJb6z+vxermHLLg7WypxIflX7wnba7fDug5ryN2pTAVH9U+sg8o3w
         uVs1eO+doIlsnJ50DZvJgmJ3caW0sk66J1jV9dRahw+nSgdkZF1IqaX3ry4PK2bJuMCT
         ot+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710010340; x=1710615140;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kvMYCtrSN6RntJWgY25brHBXsAYkKqkya5I6DZzP5+0=;
        b=Dnd9nBCh9FglcI4zGgZSq0o1vWTrTPv2HLvIP489tpnkP6QQsrxeVWABHBklOLhuZV
         2OdhYSYgOfgKC18lfza422dUWsIneu7tX678servTbXhQzg7stVX9lb0oqckF0BgoGaM
         EDw/gKKNguv8BECKZP5OV/Rb71Una9CgxHxe1kYNLQijnFAfMlmFGQnE502NbsN4kChc
         /jB+/kW3tvY0hj+uqctw/HSYgHHxUxbET3UkqWhwNgFpcbvqf1BX+1q3qfqamlb/hzSl
         EizCKJ//06nku1vQTP3qiEFo5qkwKYmlwHPlTxS2q6eKv3syGxgl/BQkvUx/fFyTM7r5
         eanw==
X-Forwarded-Encrypted: i=1; AJvYcCUhWnf8LySwpdxmsjY54I/wrtWmxe3tqNXOaOrF2pdooXjTN59kMjrsBOu/d0CC9kuvbtmQDf+6hz0uArCuVY4ehzIGPS/F4GxvAQ==
X-Gm-Message-State: AOJu0YzxiKB9QOjweofaPtWMQ8L2xlojxyGvN+eK4wx2P7US48CNm5Zg
	d/x6sVljNzKv6KVCr95y91rnZCxomo3CgCmZqO23vSrJLJhytrE86vabNnXK3SA=
X-Google-Smtp-Source: AGHT+IHrTz1RzB3h4kOfd5NR+5I9D/R1U3OHR4K9rOGsc0wg0Kk/NLW2B4mJlvxYxHpuNmBub/bNjg==
X-Received: by 2002:a05:600c:46ce:b0:412:e847:a346 with SMTP id q14-20020a05600c46ce00b00412e847a346mr1963274wmo.33.1710010340523;
        Sat, 09 Mar 2024 10:52:20 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id iv17-20020a05600c549100b00413160baa9bsm7026270wmb.10.2024.03.09.10.52.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Mar 2024 10:52:19 -0800 (PST)
Message-ID: <24c63f34-43d3-48f8-a171-22971218f4aa@linaro.org>
Date: Sat, 9 Mar 2024 19:52:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: backlight: Add Texas Instruments
 LM3509
Content-Language: en-US
To: Sebastian Reichel <sre@kernel.org>
Cc: Patrick Gansterer <paroga@paroga.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, Lee Jones <lee@kernel.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20240308215617.1729664-1-paroga@paroga.com>
 <cb220c6f-086c-4995-b2e2-bce78b9a4b04@linaro.org>
 <f97b4a8e-7944-496d-9bed-20e8076a327b@paroga.com>
 <4f3cf3c2-c5ff-475b-af5b-3fb698325c60@linaro.org>
 <iuhmiozrfeepftq2hyvt3i6fcwgtllw7imex2tkxmvyrph6qmu@bpygt3i3awoh>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <iuhmiozrfeepftq2hyvt3i6fcwgtllw7imex2tkxmvyrph6qmu@bpygt3i3awoh>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 09/03/2024 19:49, Sebastian Reichel wrote:
> Hi,
> 
> On Sat, Mar 09, 2024 at 01:22:28PM +0100, Krzysztof Kozlowski wrote:
>> LED strings are true in case of... well, LED strings, but I just
>> wonder if such setup is applicable for backlight. Anyway, if you
>> think it is, I don't mind.
> 
> LED strings are being used as backlight. Either from the edge, like
> shown here:
> 
> https://en.wikipedia.org/wiki/File:IPod_Touch_2G_Backlight.JPG
> 
> or like this:
> 
> https://de.wikipedia.org/wiki/Datei:DiodyTV.jpg

Indeed, thanks for sharing!

Best regards,
Krzysztof


