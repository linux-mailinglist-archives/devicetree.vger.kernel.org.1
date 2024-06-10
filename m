Return-Path: <devicetree+bounces-74138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AF49890219B
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 14:28:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 099D2B20B7B
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 12:28:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31AB47FBA1;
	Mon, 10 Jun 2024 12:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cNCjm9jU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 719C47E766
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 12:28:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718022485; cv=none; b=mx812iKcia0Yxu52A2AJk5XLZSEXbh59kJ0CLzPrzK5SmXvPSsA238mnQxvLG2a7ZtmlIsDQPjqQpTDpbF5Ux4kmtVhpO3ZjRTNelY9P0IZCyMiMqUW4sRHfZTnskz1o8TQdrB9N8jGz8Yw+HROyBmI1y+YwoESyByFwpxFVgqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718022485; c=relaxed/simple;
	bh=E4HhaWSrfChuK+AFfOFfWL+kTIf2PvgBxh22wAhJBdk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uvxDIdePrv6fcSC24Dah7YwGJx07s//bMYyQZYcTilqqWVvbItHgFO+1qmKoyYMKCBhqmrT6sdVSZLU83ub0UuonLnpZYQlX+s4WLNmEoacKgMP4lfyb772xet003WK8eXqw+7nlbjhjEQYf+OVNSWXl9sB/hVVVL1onAVBBJNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cNCjm9jU; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a6e349c0f2bso356568866b.2
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 05:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718022482; x=1718627282; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=wlIpn5WdH/08Kvt9ZvSkBm6R/DJgI6946Y8EIE7Nqng=;
        b=cNCjm9jULm8oPQjs8omnDbFDX5oWAp++ABcVKlcu4Y2hUwoV4rtjfKirReJK8vZuBO
         V4/jTxTfnJh7k7ZmGQKSTLHcEWugsl/bd536w0FFhumqKwUFsaHt63y7gVLMWCGOQB+t
         XoZJ6cpvsyQU3BOZi9g+HfVmB+ndZWvCxZLHRQixNcmFgIwz+4Kf2qV2RfISnLxEHKXC
         vGWd6dHg07Hc8rGKpV/1Pc4dk5e44IHDTfNWdVriJV2BWI3FuSSMxDS02fyiZARyX1TW
         wX15Xl99rVI99Qd2088n2FhwcCSYdtA+e75iFGMzd0UqV9EKtLPFzxNBxHa9Xc2Piepf
         ctcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718022482; x=1718627282;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wlIpn5WdH/08Kvt9ZvSkBm6R/DJgI6946Y8EIE7Nqng=;
        b=Pr7AHpAoMXB9rrw43GW+bNLAQkfgd3Kirryt1p32tGb7BsSzePMOFc5XrE0pUj/d8y
         YrBkEX2Ug2CPKWMhY+ew8+at46u8+l4G88azGI9JoVabt9sP28YTILHwfn9c9l2h/JWi
         ZRIE1rtvHJ/6kzyHqMe0zraeEolVtvF6ahLATPJSbT1QvV+7v9jdx0i0R3bKsXIG8ntN
         COtil4WdhtiDZPzthY6jfj2UutDMjAsSoziud2W+o8+r74xevc5gzS0amE1ImdUVW5tZ
         6KgPMCIEQskDl30mXcsdtzkjOnpnjV9NxWV6M0bmvGgmCphZzAOAZTqjCnfL4F7XXVdi
         Pv+w==
X-Forwarded-Encrypted: i=1; AJvYcCX/b/RufgOzNVG+x79fzFmgLsA0QszDEQSHzWc+rgpVj2wiY22RSx5z+6i4uIApDk0pjM9Rh+4oaLjcRvvoMhiMHo8R16P+E9oZkw==
X-Gm-Message-State: AOJu0YzqMvRoT3UMcLG7sVSGYLjKvv0pLatt3ZJ5rIt86JXuCjSfCYkt
	OPZYmZicpnnI3v+dRppa6AO06CDot3dxWgfRGDDe7L8kzDZE+SfCuoD6V0IFQiA=
X-Google-Smtp-Source: AGHT+IGLO4q9AFXQ4noQ4QP1C+eRP27S9HYvMhN/Xt5BeOQATrg8C1LkiARojsivZibUXJf6uYZLDQ==
X-Received: by 2002:a17:907:6d22:b0:a6f:201a:299a with SMTP id a640c23a62f3a-a6f201a2c1bmr185225766b.60.1718022481713;
        Mon, 10 Jun 2024 05:28:01 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f1e6795b9sm139051866b.174.2024.06.10.05.28.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Jun 2024 05:28:01 -0700 (PDT)
Message-ID: <e7f1ea08-41af-47e0-b478-652e67e5aebb@linaro.org>
Date: Mon, 10 Jun 2024 14:27:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] ARM: multi_v7_defconfig: Add MCP23S08 pinctrl support
To: Christophe ROULLIER <christophe.roullier@foss.st.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Richard Cochran <richardcochran@gmail.com>, Jose Abreu
 <joabreu@synopsys.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Marek Vasut <marex@denx.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240610080604.291102-1-christophe.roullier@foss.st.com>
 <06703c03-e1ce-4a94-942d-b556c6084728@linaro.org>
 <ef4d2ebb-dd2a-423d-acd1-43fdb42c1896@foss.st.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <ef4d2ebb-dd2a-423d-acd1-43fdb42c1896@foss.st.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/06/2024 10:14, Christophe ROULLIER wrote:
>>> @@ -469,6 +469,7 @@ CONFIG_SPI_XILINX=y
>>>   CONFIG_SPI_SPIDEV=y
>>>   CONFIG_SPMI=y
>>>   CONFIG_PINCTRL_AS3722=y
>>> +CONFIG_PINCTRL_MCP23S08=y
>> This is not an on-SoC pinctrl, so it should be module (=m).
> 
> The stmmac is in built-in, if IO-Expander (MCP23S08) is on module, we 
> have huge of message during kernel boot
> 
> because stmmac driver is deferred several times. (need to wait that 
> module are ready)

Which is normal and not a reason to change defconfig. It it was a
problem, you should solve it not in defconfig but in kernel. That's just
defconfig, an example, reference or debugging tool if you wish, so
fixing issue here is not a fix at all.

Best regards,
Krzysztof


