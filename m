Return-Path: <devicetree+bounces-234463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D3FC2D415
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 17:51:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 58EA11899C2D
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 16:50:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19BAB31A57E;
	Mon,  3 Nov 2025 16:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UeUb1BK1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74BBF3191D1
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 16:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762188607; cv=none; b=A5YyruzRXSsRAdHQG5OeoBDI7duS9V7ouetOp3Q/fawElcsgZA8V4XfrEQegIyK5SoUz/C1HV/dGzknuieht0u1Ear/0pw8ZLDT1UQRaU0AHjs0JWNkcGAonDkqr7PPj5mXzawl2dk2sRsY7Gpy9UOi2BdIGFv9RkOfYCd7+yTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762188607; c=relaxed/simple;
	bh=ko7lB3r9pVr9dkY2BmFRFzraWZf018hcoS0HId+I4M0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=dc2TqcTWURqhYoL2UH7gJM+Hn3VtE5QpIIS6tv4wNEW2pjftZgVuOFxhNjAaOwYf8QnhvWolFIpZc/LcnGxcZiHXKfkkPpBJ3GnIBTbkfkQ0r/R4LI5N0y+HnFd6D2FupLQOFh2NuX1ESq6D4DB1ilpB3BDg5rMe1m4T2lQou4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UeUb1BK1; arc=none smtp.client-ip=209.85.219.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-88057f5d041so12297476d6.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 08:50:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762188603; x=1762793403; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zJCa++upS3Lwr+ZLn+k/k89isaF3M2n4b8YOGE+2huU=;
        b=UeUb1BK1WAnhvzAKtkI7B4IPTqQrNNExqAL9jJcWgda822sALW7i59fyVKRZubNluB
         3I4csk150vyMZ0OQnpZksrNsQAKgZyon0u3Wevr4mVxveb8nm8qJeIkJd4fA2p+ov3jv
         P5fncmTjhHVGeiL7dYpH9SA/TVJ2z6R4GSbeYYbt9RdFNtG0NQQWfPIkVgCT9lm5t8Ud
         sds4bfGzAJYVUolHkK6QK7Q33NbnyjHy+O3LV/jAfJFgI1Ivn8AzLY8ZV5YhIq07moLV
         HLYisbwbl/n9Ys2UOzLwsdYlliBW9LUUTzCzEIiKf29OWtcVe4NpIH4CW3zz+4Vql5Q0
         PKlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762188603; x=1762793403;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zJCa++upS3Lwr+ZLn+k/k89isaF3M2n4b8YOGE+2huU=;
        b=tOGYvdW0Bw8dNAiL3AM/DODoXI27HOHkMilwYU9nQLgnqDd/gDsLmnXWOtJcXWB95s
         AhSGwExIQ3tjHczTWyhwRc3+tmCRNRpiBHPU+gA2oA5XZYpl8RRAkyneJYGZe69ZsdJa
         v2KwVepca8axSckuZTjnin+bOt1+2xBQv4DSOuKHuaJkYjttNtMCbHN2wzTChNhX3eFU
         X5whMwgcoJhMZxZoHdFM1fytCFtDzFT0lp8U32xuIT1tVRoiihyRCJ52UEuZOi1el8RD
         UQE31cgPOV1d6zZn0sCeAoaFBVsOfJOOegqQyOnrqOzZff1n9JqDjMQM6A4WSlp1ANkT
         qBsA==
X-Forwarded-Encrypted: i=1; AJvYcCWJkGxUDSVtY7G2Q4q9YiyPYy6xphTfHrArgju6Npf5FooH3/8K3sH4emtC3UBjNRDdDu7JDMVxJFg7@vger.kernel.org
X-Gm-Message-State: AOJu0YxO/mS7XBpdqENI8lvlzFysIBUc6FSYFNz5Dkm0o2LnNKAieSEW
	N6lap7RUgbLG3Y4HkNDAJlx5b8eWX48GLJoMa0Qi9RuTaP1bsAHKPSi7
X-Gm-Gg: ASbGnctiwLetaW0UMsYGYXAGvi3pTBvu5fs9gWeR5vGZzyuKONzpcwAP0d6+Zrl0i0v
	JOUBi1UG7GWZbQZMfBWGHfTPWhMYXPRw/Eq4Ge8QWNMcMHPc5OszO81DqOWeoUtFfGJiR3qrmp3
	666cu1gZ/m20yC8vRccymxXJAHvg0QWxETkSuXm/IyDPmaxLOv0ypJuyTZjVbLR7X2Q1OuxVctl
	VuHNl4zvXgaGQLrkIuxGXVEpt3z+TNL5+BrKXqMTzpJu/hvtCH78c3NRXNP1kotbWiKEOZ9JGJX
	gcYsgwrQJzZzkTUy6rjnt5zkn4KTPcIVg8+O+O7iXIAIiaUQ9aNFW14A5X8EeUFsUgFXfHujNtX
	vW7ZFBegmo10l3J4zKqeM75M7eXG8R7HsAr7MKXld0D1g50VtjWCNlM7Ufm8M/EREUXDZP5P1QL
	7i1+WJc8TIkF3r92ehMmWZLPZ4rWM=
X-Google-Smtp-Source: AGHT+IFni8jZUvZP39hkL45Jl+M1HXL8vO6F1udbgLnU65rMefyg3UKyqfPWUZEunlxBVuwBiSpv6w==
X-Received: by 2002:ad4:5944:0:b0:7d2:e1e6:f79f with SMTP id 6a1803df08f44-8802f4c82e8mr219322526d6.47.1762188603195;
        Mon, 03 Nov 2025 08:50:03 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88060ded862sm4878056d6.25.2025.11.03.08.49.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Nov 2025 08:49:59 -0800 (PST)
Message-ID: <6edb4435-e641-454a-9722-70b25c775151@gmail.com>
Date: Mon, 3 Nov 2025 08:49:56 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/1] dt-bindings: net: ethernet-phy: clarify when
 compatible must specify PHY ID
To: Buday Csaba <buday.csaba@prolan.hu>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <b8613028fb2f7f69e2fa5e658bd2840c790935d4.1761898321.git.buday.csaba@prolan.hu>
 <64c52d1a726944a68a308355433e8ef0f82c4240.1762157515.git.buday.csaba@prolan.hu>
Content-Language: en-US, fr-FR
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <64c52d1a726944a68a308355433e8ef0f82c4240.1762157515.git.buday.csaba@prolan.hu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/3/25 00:13, Buday Csaba wrote:
> Change PHY ID description in ethernet-phy.yaml to clarify that a
> PHY ID is required (may -> must) when the PHY requires special
> initialization sequence.
> 
> Link: https://lore.kernel.org/netdev/20251026212026.GA2959311-robh@kernel.org/
> Link: https://lore.kernel.org/netdev/aQIZvDt5gooZSTcp@debianbuilder/
> 
> Signed-off-by: Buday Csaba <buday.csaba@prolan.hu>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

