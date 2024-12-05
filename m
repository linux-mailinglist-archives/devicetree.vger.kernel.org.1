Return-Path: <devicetree+bounces-127507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 600A19E59A3
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 16:24:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE3DB1885208
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 15:24:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0539D21C177;
	Thu,  5 Dec 2024 15:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tfIkMmFr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2574E218EA5
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 15:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733412247; cv=none; b=QvAGcbrmU8VBwcQQ8qX1ePSlTds2c0GPRShxPMrgUeMwEUAd15uZUXpR7QbHYUhudMNnL/lvIFBN3tCdWmNF6oU9/jk/hOY9+plZ92xV7jSChj+I7qnGX/JOLqf6ScQcRel6rnV1jYVCIgZ+7iPZjyEk1QRuWCE/A4B4j4QEffM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733412247; c=relaxed/simple;
	bh=LSC/jgyiVOrbbgktq3eRgmmvGdLPsyKU+lKVt6o5sZs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jvQqhOrVnVY+7cuC319NbOH3mVgSiBgLB494Q+PBCPyApOlTLIsfLmkW98pwX+bzgpGpSKK927mVs4y6dRAFiHtEbjMG8BUyH6TTgD3JQcA65Cznl+XOLDlwIk4fXG5AvdAY6KdzcuIg5N0MCjmeJmxSw5fRw/V+rJ8LG0AbkfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tfIkMmFr; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-434a29ecbceso1257315e9.0
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 07:24:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733412244; x=1734017044; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=TeU21f2/gzBOxQVVYAFoJs6zNxfWr5ZjMAtgv/QGkUY=;
        b=tfIkMmFrjICRlVnGgL2fSSWbBhsGw+DHtwZdHR3dXfhpmlt2KwuKM031h9D7nJaJPf
         hBrtwq3TUy1QxXmfagCnh3zfJCzuTTy4iN2RE5fcjToSg9USnja3mmmLwpy/KRdOJjEE
         A5PPtbE9EIoJlCEY+DEtVQ82JQmYRskE+ZkFw9Kw2BEZMGlZU497X/etTcwcR5TdjF3d
         tz345dA/Z4u83WQ4nXXal/CyJMQGp3RFAc+XMZSpZ3jEAqlPIEhb4omkPf9WKodESATm
         WPGXaY5DPgaDOIn+kDVzHNBbtgyihamHw8/eBY6WpVaO5hYjVRfahvoHzkAtP7Mtxpkr
         qcHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733412244; x=1734017044;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TeU21f2/gzBOxQVVYAFoJs6zNxfWr5ZjMAtgv/QGkUY=;
        b=gI7/V3bmqzipZKcxZqWUpUuFbcN/5MuPnj3hLzyVbgcfoA1VY+uBwHOVVbp1VuWvyf
         MEqQg0EA3Y/lYw9aiyAipBGw5ubxonb0KCBoxvqPSzcxg08iKGzzwWOG95NR97B4Zt+n
         WXGlr7pvmX0zV8d/2h6HF78USTdJvDc1q4jaHEH9sLXKrt0W4g0vlh7tjkaNkBsOKXGF
         hAVP4fLsHVwatTdKShCEq31Nwr56cTHsw+iJJIED9wXmR2vyAukrSnPufC8vs7phL5tl
         TfopTijeGDePQel1rPt2L11ACkBtz2HJp2idR7b0b1KmwhKm15Ft7Rt8hkdPjJfnQueR
         vvXA==
X-Forwarded-Encrypted: i=1; AJvYcCWZowmdJ172jOaGzTkMLlDsWovLKawy0LxuJVjkOLAGkoOQ9aeO1AtG5FJ3Zb71sH1JfzGKhlLrH8NE@vger.kernel.org
X-Gm-Message-State: AOJu0YxldyRMGoTIYHbxkwyZXpilCP+auaFq75gx17+CKR9a0LsRJOYS
	o/+Ij75DY1s8KaOWZ5EsNL4ePzRJUhi/PEw+Y4bsMm3k6xB+TNBgHscbS75h+tw=
X-Gm-Gg: ASbGncuOSDu6pI1lSpwao3WbT5KyAejPIsq86jpapc5l9lJod4TsDOxnTnWWMQFZURC
	rEIUaiVcVE7EZoO3GkoARa2Qhse8POITtiOnxfFj50bXqpBF2u2Pbr6cGszsgbjioR5fIPrfncK
	/YmoqJss4Im5ZfOjJme/9W8CEanJdhkaVaAKu9nQKRApXafC3eAJhNJLxZxg7Oc250nXL5zXmML
	g2UceQc6JrCEygjBwRXp4pj6Z6cmyXhsVseX7v2fpBn2DaitE7ON2awaiWUwZA++YhWIQ==
X-Google-Smtp-Source: AGHT+IHLXWIJves++ZMhfFZ9YnRFSus0l3v1nMxTqppBY8H9rgds0EQOScsxeweq65UPC5yR6ftVxA==
X-Received: by 2002:a05:6000:1787:b0:385:f479:ef46 with SMTP id ffacd0b85a97d-385fd42316bmr3426787f8f.13.1733412244461;
        Thu, 05 Dec 2024 07:24:04 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d52c12a4sm64628455e9.30.2024.12.05.07.24.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 07:24:03 -0800 (PST)
Message-ID: <97d7b661-8b9b-4c56-aa85-3833718f4e01@linaro.org>
Date: Thu, 5 Dec 2024 16:24:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: rockchip: increase gmac rx_delay on
 rk3399-puma
To: Jakob Unterwurzacher <jakobunt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Quentin Schulz <quentin.schulz@cherry.de>,
 Iskander Amara <iskander.amara@theobroma-systems.com>,
 Sasha Levin <sashal@kernel.org>,
 Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>,
 Vahe Grigoryan <vahe.grigoryan@theobroma-systems.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>
Cc: stable@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20241205151827.282130-1-jakob.unterwurzacher@cherry.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20241205151827.282130-1-jakob.unterwurzacher@cherry.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/12/2024 16:18, Jakob Unterwurzacher wrote:
> During mass manufacturing, we noticed the mmc_rx_crc_error counter,
> as reported by "ethtool -S eth0 | grep mmc_rx_crc_error", to increase
> above zero during nuttcp speedtests. Most of the time, this did not
> affect the achieved speed, but it prompted this investigation.
> 
> Cycling through the rx_delay range on six boards (see table below) of
> various ages shows that there is a large good region from 0x12 to 0x35
> where we see zero crc errors on all tested boards.
> 
> The old rx_delay value (0x10) seems to have always been on the edge for
> the KSZ9031RNX that is usually placed on Puma.
> 
> Choose "rx_delay = 0x23" to put us smack in the middle of the good
> region. This works fine as well with the KSZ9131RNX PHY that was used
> for a small number of boards during the COVID chip shortages.
> 
> 	Board S/N        PHY        rx_delay good region
> 	---------        ---        --------------------
> 	Puma TT0069903   KSZ9031RNX 0x11 0x35
> 	Puma TT0157733   KSZ9031RNX 0x11 0x35
> 	Puma TT0681551   KSZ9031RNX 0x12 0x37
> 	Puma TT0681156   KSZ9031RNX 0x10 0x38
> 	Puma 17496030079 KSZ9031RNX 0x10 0x37 (Puma v1.2 from 2017)
> 	Puma TT0681720   KSZ9131RNX 0x02 0x39 (alternative PHY used in very few boards)
> 
> 	Intersection of good regions = 0x12 0x35
> 	Middle of good region = 0x23
> 
> Relates-to: PUMA-111

Drop 3rd party tags.

Also you you CC-ed an address, which suggests you do not work on
mainline kernel or you do not use get_maintainers.pl/b4/patman.
Regardless of the reason, process needs improvement: please rebase and
always work on mainline or start using mentioned tools tools, so correct
addresses will be used.


Best regards,
Krzysztof

