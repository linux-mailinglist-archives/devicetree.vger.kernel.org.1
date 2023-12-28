Return-Path: <devicetree+bounces-28743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9A681F543
	for <lists+devicetree@lfdr.de>; Thu, 28 Dec 2023 08:03:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3E9AE1C2096C
	for <lists+devicetree@lfdr.de>; Thu, 28 Dec 2023 07:03:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4B9533C9;
	Thu, 28 Dec 2023 07:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JTwGzPN5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F87F3C0B
	for <devicetree@vger.kernel.org>; Thu, 28 Dec 2023 07:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-554dbe1857dso3248897a12.3
        for <devicetree@vger.kernel.org>; Wed, 27 Dec 2023 23:03:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703746991; x=1704351791; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=emnI5JFzMVo2L0XLSL5k7+cYMnGdzGTtbUhsViY+Kzk=;
        b=JTwGzPN5psq56PDarXjQuceD7f0uInBJLX6zdQPsRKMAtXUNJjfMhRNYpMWqvrXfpR
         fvhwvFMfNLL8+ops22LczMI33CMvRvRTZLacnbvVqUaGzdEyB4KpTS4Kgdl8Dt4d5R4h
         YrNblSkEr8j4oWVIAHDonuiInRc6UCoYo5SHdITcobJLKSek0/Msp6f5uH8pcWOi6pxX
         sqgeMvyJjuHGdLwx9a54cfww26+/GkGjXQKVfFP0yb59k+2butv1myVe3BpC5K1BabHk
         tbcWr/gfn37b4eDl4CvFOEVuaRLkgjrJr8chqnjw5lhixFu/0ATwxeoDLbVZ9z30ztam
         mC3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703746991; x=1704351791;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=emnI5JFzMVo2L0XLSL5k7+cYMnGdzGTtbUhsViY+Kzk=;
        b=wcYFrBobvLXQP5b2xBicG/yVsnMbBC63yK0n5lfhI9PKJq0N+m5s14KKN3b+Pfhrvw
         872RkuycVTQLH1J5Yw3SniuKfCCF/N9vFNVuUwmINzbqSSHTXuZQx5pyZUqtBYtY3uEX
         0iuMTZfas9u5/knDdHWKd+0qJIG9K88OBjDZS+RMIkokony7vYMDNeNx5iM4krVIh+vZ
         GmXLLdvCD/fZvVbnEsE6wubRrBronXQWRC0MExMj6pwb7+Rre0WTj5xw9Sq6c3G6RM6p
         NmRWDVd/vMSNkdQLDWG2Bm6h2MK/HQSQIU4HcI47WqWAlZXpOVdpVU2bs20xoXbi5Q4T
         juCA==
X-Gm-Message-State: AOJu0Yz63i/JWPuCvCIuMPapBZVoOhtjZPzXQWFikxywE05vIqid7d1o
	wBxAXBqfScPRsINfZy4eIB8=
X-Google-Smtp-Source: AGHT+IGu/LdYzra6PZaeLXcy3WYpqM/pG52QEPB+wgFt+1nbXl6yloSex6mlLqH4Q778VHNPMG5gGg==
X-Received: by 2002:a50:f610:0:b0:555:937f:1c08 with SMTP id c16-20020a50f610000000b00555937f1c08mr154997edn.36.1703746991187;
        Wed, 27 Dec 2023 23:03:11 -0800 (PST)
Received: from [192.168.26.149] (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.googlemail.com with ESMTPSA id p12-20020a05640243cc00b0055493aa8905sm6053058edc.63.2023.12.27.23.03.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Dec 2023 23:03:10 -0800 (PST)
Message-ID: <d0734a8f-0b72-4609-a941-da4bdc3e323e@gmail.com>
Date: Thu, 28 Dec 2023 08:03:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt7986: fix reference to PWM in fan
 node
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Cc: Daniel Golle <daniel@makrotopia.org>,
 Frank Wunderlich <frank-w@public-files.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20231116130816.4932-1-zajec5@gmail.com>
 <a5113b85-e29c-454f-b776-ac7abbca771f@gmail.com>
Content-Language: en-US
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <a5113b85-e29c-454f-b776-ac7abbca771f@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

On 14.12.2023 07:43, Rafał Miłecki wrote:
> On 16.11.2023 14:08, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> This fixes typo and resolves following validation error:
>> arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dtb: pwm-fan: pwms: [[54, 0, 10000], [0]] is too long
>>          from schema $id: http://devicetree.org/schemas/hwmon/pwm-fan.yaml#
>>
>> Fixes: c26f779a2295 ("arm64: dts: mt7986: add pwm-fan and cooling-maps to BPI-R3 dts")
>> Cc: Daniel Golle <daniel@makrotopia.org>
>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> 
> I sent those few trivial fixes weeks ago:
> [PATCH] arm64: dts: mediatek: mt7986: fix reference to PWM in fan node
> [PATCH 1/2] arm64: dts: mediatek: mt7986: fix SPI bus width properties
> [PATCH 2/2] arm64: dts: mediatek: mt7986: fix SPI nodename
> [PATCH] arm64: dts: mediatek: mt7986: drop crypto's unneeded/invalid clock name
> 
> Could someone pick them up, please?

Anyone, please?

I did quick research and it seems Linus pulls mediatek DTS changes from:
git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc (from Arnd)


Arnd seems to pull mediatek changes from either:

1. https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux
(Most pulls so far from Matthias)

2. git://git.kernel.org/pub/scm/linux/kernel/git/mediatek/linux
(The most recent pull from AngeloGioacchino)


AngeloGioacchino, Matthias: can you pick up my patches, please?

-- 
Rafał Miłecki

