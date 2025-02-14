Return-Path: <devicetree+bounces-146567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC49A3571B
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 07:31:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A0F4A16E3FE
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 06:31:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8869200BA8;
	Fri, 14 Feb 2025 06:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GTq+bIyv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D82201487DC
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 06:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739514683; cv=none; b=g+3TTn1I2B3DY1cm5UY6cpQVdaAX314d7u3rZvENWzh0gDWhMWm27PQjYjyeygHhbHZ5+CfTU+tciPe0cK55sfdJO7nZK6cv4V1+oxfFTdsaOJpIaGJafZNpEnBtcQi1Qj0nsSZuns84lSI5Et60yhw4ZBa3b0KcYgeSQ63B62c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739514683; c=relaxed/simple;
	bh=bd3Ix1OlxqfISy3/YXIyFe4/qznReagdpNKuiCq9fzM=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=jXLB2Kf8tdzKc+no2dZmbcDQDHNVYN3vlkqN238flJwBAO5aVJi6FFSh7baVQxrqQNe62jlwMwiRsboawTrgzcZl/0qSfhqeK+x9cUIcbMe/KwEKjf4L0dVHYTFbvG6NVldzDvK1KKoBqQrM00IQVbmURtd3kBDdP5/gXPI/QWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GTq+bIyv; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ab7cc0c1a37so312976966b.0
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 22:31:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739514680; x=1740119480; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RS4NhYdSKIq0ZCVoddU4UM3ba+/5N5wTfgewbJrHpVM=;
        b=GTq+bIyvVaCw26jlpZ9dhBnWI1Scr3lEuVZhWSEHpar+mQi4qnTNxJiM18DPvM44V5
         vLaw7lAvoZ5HT3MgnNDZ+q8apl0N2jj1zU22I8OME9DaKcylJ6ZnlQj+wFErF/xYxlf0
         hdEKG9Q5ZagUhG2331Ixj6hSuLvKgOUuLP4GFD6J7846BqgHTFxwIyALqhU2rBb6dQw1
         1YHCAthQuli0sOuix8qqKsIbotyIr9QvNu5Ubrl6/0NtYxoTi6FaRsslYgaKK1BAf7ww
         B7xcpEItFgdl8g3zGMsYD09bL3PBGyl2OpQaVJevPjB0hKqs19dtkStQyxAIOs6c81ji
         OyqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739514680; x=1740119480;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RS4NhYdSKIq0ZCVoddU4UM3ba+/5N5wTfgewbJrHpVM=;
        b=V6jywsr0eWDHQX07JYVTohhzAlng4sfTZ+Kz6xhf2CGN9/1JhYXnfwKOPPcPCuoNxO
         RIqjWhtU/KSBnDMAcBoqVYoIZkR9BNZeMaEsv/UctEddjwjnTF3+0FiQ66wrPpvOFaQl
         Utqw4t86oiDFpOX52E7CoYCwBNE465ajNrccoK+8kehXfsp1ptObmxw0aYIux77kWYfz
         8oPVha1Q72Hv3rVGODgSHMUpZSPKAYkiVBmT71hzVYqgZSgEWwwadNuJktbAJZusJnob
         nG9nkboQSNIolywBSzmdUz3MHjvqp3z/WnJCtT0iOSY5q6y7gFCEbTVWCJY7s0/x0G48
         +CkQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLmHm3NqF61xNDTob+L4Bo6WPezly/sONKfg4bq/kW1sJ7704zpzCCjsD2Y/D8Jh5DI5cdst6OMdOs@vger.kernel.org
X-Gm-Message-State: AOJu0YwXSqm5VlCVO8ZVfEZKgx6xl2hEqa42+KDrltrx83s37gF1w6Ot
	NBA8HEFAl4YS5QL1QyiHeg9S4u52h3NF+WO439aiZeUfCjZn2FJwCGsbdviiczE=
X-Gm-Gg: ASbGncvl2yihrpMGxkydad7kOWz16hCIjIweafDCupSjep8HLdFQ6bTSHImsVo2Bsip
	+mQG5F8gQNtIf0wf6SOs0O1otqUXueAxi8fYB7hYeszf9syIkhhLTQGXgDMGYaZPrzM1NUXUnDS
	G5dPBxSH/tie+eMbVRsIuCsntLb/3hvpGCGicrFZPU0YZgbNzPeJN+i8lZrjaPa51ljhyjkTXmM
	+quB9X+SC/ZozveVF48wrBvXkwaF2fVkX6YlktZb6TNiHVKQcAI407o4Kqyc9WpIPJsKY3dNU01
	1u10knO3Bpy+iKkS0F0WY9eA
X-Google-Smtp-Source: AGHT+IEN/RRE5hxQ5xNZNtT7rJsPTV3GPjWwm8qrFkScK0MAqhU1b09AXyINMIOW8g0Zg6OABiY4tw==
X-Received: by 2002:a17:907:3da8:b0:aa6:79fa:b47d with SMTP id a640c23a62f3a-ab7f336d454mr924285066b.1.1739514680163;
        Thu, 13 Feb 2025 22:31:20 -0800 (PST)
Received: from [192.168.0.14] ([79.115.63.124])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece288e38sm2350948a12.79.2025.02.13.22.31.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2025 22:31:18 -0800 (PST)
Message-ID: <49ce4bf7-fec2-4d1a-aff0-e342b31c4f57@linaro.org>
Date: Fri, 14 Feb 2025 06:31:16 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] spi: s3c64xx: add support exynos990-spi to new
 port config data
To: Denzeel Oliva <wachiturroxd150@gmail.com>, andi.shyti@kernel.org,
 broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, alim.akhtar@samsung.com, linux-spi@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20250213204044.660-1-wachiturroxd150@gmail.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20250213204044.660-1-wachiturroxd150@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 2/13/25 8:40 PM, Denzeel Oliva wrote:
> - Added a default "fifo_depth = 64" to prevent crashes when "fifo-depth"
>   is missing in the device tree (avoids divide-by-zero issues).

no, you shouldn't use fifo_depth as a fallback, it's misleading.
fifo_depth shall be used only if all your SPI instances use the same
FIFO size. If that's not the case, as in yours, you specify the FIFO
depth via DT.

You need to determine whether your IP works with 0 sized FIFOs and if
not, make the the DT fifo-depth mandatory and check that its value is > 0.

If the IP works with 0 sized FIFOs, you need to update the driver to
allow that and let the fifo-depth property optional in DT.

