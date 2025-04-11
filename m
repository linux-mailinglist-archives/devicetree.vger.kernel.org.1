Return-Path: <devicetree+bounces-165991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC11A860AF
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 16:33:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF7893B7333
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 14:31:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E8361F3FC8;
	Fri, 11 Apr 2025 14:32:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="lx/X9mL3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727851953A9
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 14:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744381924; cv=none; b=bG8xcBQoreEqE5kdPQr3aHJU/Tr85yBY1F6s0kIWaSS7Xo2wckJOdPCbtu6uH3xGsnn60PsI5SsILDp/YxRRc6PjMX45cMApqJM17cx6/DPkAhdX/ufOrpywJ45rZbIE9I1lEJVtVorZVUB9qezOzB6H7nirOFtDPA55CuS31K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744381924; c=relaxed/simple;
	bh=Qu0wFXDX3C/Q8/zwIin6LRpHUPLIc0gKz6BVKt5DOMc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ljkifYeB0X6dE+KIFGFacdymzfgqKCmIhzgRMR2FO/qrhvZB1UYtL/brzbjp7D5/c7sa4qje5wlyrlEG5Q0YqV2E8QF0gmokzGlsco0krBCFhP+wk1rlDuXwbCtqHd8u8HYbrTL9yy8v1M3rNWH/Kj6HOcNZntyV3Ku3QKHhn7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=lx/X9mL3; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-30613802a6bso21249561fa.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 07:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1744381920; x=1744986720; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pzr1/LCeDjoMJ0N5C1aRla0oheJiiPXfPIMQCa/fFDo=;
        b=lx/X9mL3tfsolwmN4+2TyVPku4j85vjx52hN5xACk2UBTRRaQS0iNxW1I6XcoKzLPp
         7RFaqKNtvaLsbKe7B7QNGufqDr/MVFfMR1lbsC4+i3saWkRZNrGapj0CUPr2tlHHu9vo
         Opz0js5SGjIZeTDbCnEpOyVY8Tx3lPBTpW31v3x9mem+Oaw39bf6cgeMGE4O4+AdEs8M
         chy57/YW0MzdjbsVGm2a/Qhkl5VDVPNyzZ82ZqBCHlrZRSrydOsdBy131D/4nAHOc085
         WQQuw5nhCsM7/c719aXoqZSRMBfMHiEHGgN1Nz9annl0JU5T+Z40OhTamXsdm+DPAOOj
         1v1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744381920; x=1744986720;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pzr1/LCeDjoMJ0N5C1aRla0oheJiiPXfPIMQCa/fFDo=;
        b=dkhUMyhXxQIE8OgLuj1F/eI3Z/G1csMBUAPEqk0fr4Zfg197yH1lL74jmw6uKRbadR
         yXMJAFtc3at3iMX5AXMmojjUgub7dmOqGHYV3APKBg7qWgEp4/f113XRjNdknWVUfinp
         /EK3DcZlibL28U2hm8Se3dNgt47pBM+BgnsNcRk7oLugXdN6CSGuTLGfITOfEmp/Vxkx
         QYJGoMn0hN/zfIkFO4MLSDaKAuGYR5KyEhBL8vfEWVIE616uUAHg1wgf6xpP7VVLSNUG
         kUWqetKHCP6cR4clUrqmXrlsyq2uYwglnFmBfJBWyjUx5z9v6lR4/SSreHUZXwaLZgMB
         IfNw==
X-Forwarded-Encrypted: i=1; AJvYcCWhUN+6ikjxU7FRswTpo0mTgZxAeoDFGKK1fbe5DNfQQiGAWlBBIzvBXpER4VBHWm1rat/a5ASX1r9L@vger.kernel.org
X-Gm-Message-State: AOJu0Yws8gvh0tm7jTT6idp3+c1iKk7gMEc7dgM8jFsfJu4Kp/tItZd5
	T1PtyzBNQbNbMT5ywLOk8xo6PxsUZxn2KVv5X55WZgEnwh969/xIo+9rNtVal0E=
X-Gm-Gg: ASbGncuIRpUQPkEJfHevPfGp9sbhvVxnva4qoav28Cub/Pze5ZjOqKw2QyGgdg46lfO
	H//X/OZoq5WykXc8XFMveY8/Otu65BXUKveu1knL0bAI93ni4/Lj+Dz80DZ8BKUNfMA+pbOIqY9
	6suljZYoBsYSbPZKpYPgRxKh5d+0f+KMQ2R/H2GEwVHAD2mDU05tIzH0eyyfu5a1rezbl9e/9Rn
	WHIHUjPWMdz07TQdOOlapk2AWXTlCunLMd80Ng26p/oUNKIvGv0/fp8eOwNrdX0BXJaz56dRfN0
	bPeEFS6nraTPTaT9L6g6dz4s+8itbW8phxHdiMiaLu774xYm
X-Google-Smtp-Source: AGHT+IHOzCHjOnVKGRcbNyn16xCquzdj4Kl/HVE05/XzIT+ZPMUlJvq12GGJqLlhzPFSjUm/j/9RXg==
X-Received: by 2002:a05:651c:2203:b0:30c:d32:aba8 with SMTP id 38308e7fff4ca-31049a67e57mr10002121fa.30.1744381919526;
        Fri, 11 Apr 2025 07:31:59 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.57])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f465f87f3sm7952451fa.108.2025.04.11.07.31.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 07:31:59 -0700 (PDT)
Message-ID: <7380a752-b77d-46ad-9b7d-e38e77e86089@tuxon.dev>
Date: Fri, 11 Apr 2025 17:31:56 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: at91: usb_a9263: fix GPIO for Dataflash chip
 select
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-arm-kernel@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>,
 devicetree@vger.kernel.org
References: <20250404112742.67416-2-wsa+renesas@sang-engineering.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250404112742.67416-2-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 04.04.2025 14:27, Wolfram Sang wrote:
> Dataflash did not work on my board. After checking schematics and using
> the proper GPIO, it works now. Also, make it active low to avoid:
> 
> flash@0 enforce active low on GPIO handle
> 
> Fixes: 2432d201468d ("ARM: at91: dt: usb-a9263: add dataflash support")
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Applied to at91-dt, thanks!

