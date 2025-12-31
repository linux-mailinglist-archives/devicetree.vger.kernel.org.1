Return-Path: <devicetree+bounces-250786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDECCEBCEE
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:48:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ABA3B3018944
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 10:48:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22103263F2D;
	Wed, 31 Dec 2025 10:48:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pardini.net header.i=@pardini.net header.b="Cr64tRig"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06ABE25BF13
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:48:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767178084; cv=none; b=CUA1ZelkTvYym1FK00jgdRygz7h0OdY/OwCVYw7wrRjxQCXZ7iQ/h0Zlg4BbjaSOchkBVbLgJmcMhv5TVNWWE4nV8dyu+quehJ2KFtSMqWjEasvfX7TOZty8JCu0whxkEPAgMhMIOb0a4a5a9tsXc/7pM45n3ibevirBjpJ1Z6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767178084; c=relaxed/simple;
	bh=aUhgaj0pGDvPj+sveRC4dkQqg4UJydEkIWaX/UF6/4o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hdZ9N3VehP4A9hKsm6CNO3hVoi26bI74n5aaG3AO/2C8nUYisnFs0XdpZ0XPaoKZaHlZCkblYxoBV1duRhmChqBx5t0HFjRaQfn8dQCbPibBYd4YqdSARNFLXAQp24s6+pgsRwjxhqsBlCi1C8Zh6A+07t6STt5t+/uKRKDkFgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pardini.net; spf=pass smtp.mailfrom=pardini.net; dkim=pass (2048-bit key) header.d=pardini.net header.i=@pardini.net header.b=Cr64tRig; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pardini.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pardini.net
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-64d0d41404cso13042556a12.0
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 02:48:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pardini.net; s=google; t=1767178080; x=1767782880; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F93O35PumyM940gks6WuFLpakwWFLPgJeDsUaIQB1m8=;
        b=Cr64tRiga08FEeRe1MSxFvD+oOwKV9aYnhSj2ZRAAG09BXl2LpHlCifkzsVLhJlDBL
         CGPp0tCawPOzWH6L9LEH78/WlPNkfdunD8m8qCY/x/sUprcuz42/UZc/ETWs9V1AemzW
         W67YVGINY+UpIz/h/OLZdXWetvYuLRE1pNya3p1ZVVHLjqCW5lDtn1Z1MXuhJoLS8e5L
         ajH3fVlyRPvC92oZeefrdBA8e0aYp+5BDTtjY6S5t3E3jqlW8HTc6+BMpP5xhmWUKSna
         SLDXzyJcMcIRyESBoUnIiW3/lgzx8nyLuRVE6ljLfCTelhK3nzyS93uW0mot8z8P1+oV
         KgIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767178080; x=1767782880;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F93O35PumyM940gks6WuFLpakwWFLPgJeDsUaIQB1m8=;
        b=H3/42+oKzoz9lxGeqyUlw7fW9ncCnAdpAP/07p908WHQENFgVyrDEq6et141Gor65i
         EVDRFymZbC56vXIIjR7B5riQdOzpxIqSWMenr1m1ugPHwoz/BYRkf0BrUBIprsp9YBmM
         mC4ZhtrZ7m+LnJtAmBcWiSM8aaY4JyDsbggsPcxgksjMr7q48Uno9kP1WoO36GAdqwpM
         ZyCKlo16WyajCHgPCSpO31xkqmT8y4kC3soXwfgY36vIfYLml3VHLX2n9mBirUqQu0xV
         0CfXLS/30udZUJEfSU6ppWDPPKS689BznRwHFGNqUxSXbiX4MR7zDXIQzSx1GKDKaFFP
         Rq9w==
X-Forwarded-Encrypted: i=1; AJvYcCWJdjApS7gTEwjKUB6MTlez7VuFE9Lm1HNm1KEJmdnE2Dc5Px9rZOrtlM2jYLGa1iq65ndbnokF/gEO@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+RVj0aOqJtR0DhFqtBsBeaVs4wkm3LZmYaihf4RTh+wtgfX6Y
	x6HpYviyrZzGa9pfi2/LpD7FteauGpDFG/2XTi4tT337WeL9kP9PzCzBpR7CjVfdgw==
X-Gm-Gg: AY/fxX7Idrb1ooLX+7oWuOPSTTF9w5ThjOoPZwvYZ66meScLpsgbdrwXFQArdVNvXL6
	dgTTEwKSthY0Pz11xL2R/YU3wyUOqbC9uJ/nE/x14DD6vReoxZ/B80noExygkD2xGpTfyhdttGe
	WIn1rLcILeg2xBLML6EBOMtUmk+fPeOUIzJsh6A3f52U11+gxqk/kON71wj0CdPBCTwFmAO8o31
	mKS4JGnD4Y9cLdl+9J9cPDabiU4bdGbfsMQwkxoX9qHmNTxIHp6HeO1dNcBit2j1KtMiOutsQzO
	M5jbJuL6cHidnnUe8N4F9Vo1Ywi3ohmXtlCU8g0fRpZiWkXIIZqrbz7/o4CWrzu8ckXaokgKH7s
	QALo/ZXNg3pQHo9NVA4OFSWDgkbJ0A8yKjitGmh49OFkdgVLATkDp+7HKRcbqgmnCREOKTVibBv
	cBacXPXdRE/4AIwRTUrloR9A3C6VT36Dbo2lV4kOlUJOk8mb/UAVqfNlPVsZGFQEqHJoz2qT4O7
	uGYj+r14r5VpkpAOXlUWwX9N9pOLJDp18QSOUh9Y3cSS8HfDoUM4mPSVGhOfNZZro4M
X-Google-Smtp-Source: AGHT+IF3qhSpzRRJ00xM16d/rHst6xExjWudsQHkK88MVOiMn97mRDN/nVNkVEeTmwCRmO4z98V2LA==
X-Received: by 2002:a17:907:d64a:b0:b7c:e320:5232 with SMTP id a640c23a62f3a-b8036f0ae81mr3704046166b.5.1767178079658;
        Wed, 31 Dec 2025 02:47:59 -0800 (PST)
Received: from ?IPV6:2a02:a466:4d7a:0:4db8:192e:8b05:7bd4? (2a02-a466-4d7a-0-4db8-192e-8b05-7bd4.fixed6.kpn.net. [2a02:a466:4d7a:0:4db8:192e:8b05:7bd4])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8080e2177csm2948161966b.68.2025.12.31.02.47.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Dec 2025 02:47:59 -0800 (PST)
Message-ID: <448acb0f-fa4d-45f1-83c1-7146cda9fc25@pardini.net>
Date: Wed, 31 Dec 2025 11:47:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Enable the NPU on some rk3588
 boards
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 nicolas.frattaroli@collabora.com
References: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-0-d38b182a59e3@pardini.net>
 <CALWfF7KHyKmDcEL9=mYzfCRWc_cymNscoFdeXr8P2frJeww5vA@mail.gmail.com>
Content-Language: en-US
From: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <CALWfF7KHyKmDcEL9=mYzfCRWc_cymNscoFdeXr8P2frJeww5vA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Jimmy,

>> This series enables the NPU on a few Rockchip rk3588 boards.
>> In every case here, the required regulator was already described.

> Now that the pd_npu has defined the dependency to the vdd_npu_s0,
> shouldn't the regulator-always-on be removed from the regulator? When
> the Rock5B enabled the NPU, it didn't define the regulator with always
> on. [1]
> 
> More specifically, the commit message for the introduction of the
> pd_npu label mentions how the regulator no longer needs to be always
> on. [2]
> 
> [1] https://lore.kernel.org/linux-rockchip/20250721-6-10-rocket-v9-10-77ebd484941e@tomeuvizoso.net/
> [2] https://lore.kernel.org/linux-rockchip/20250721-6-10-rocket-v9-7-77ebd484941e@tomeuvizoso.net/
Nice, I overlooked that. I'll send a v2 removing `regulator-always-on;` 
from the regulator.

And maybe a separate series removing it from the the other NPU-enabled 
boards that still have it?

Thanks,
Ricardo

