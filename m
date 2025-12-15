Return-Path: <devicetree+bounces-246520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF83ECBD6AA
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 11:53:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9074B3002FD6
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 10:53:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 232EC3168F1;
	Mon, 15 Dec 2025 10:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TLFjyRsN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5652D97BD
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 10:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765795989; cv=none; b=MVlN8LASzwCZytnKGJZK1QcHP1BuOfbICWMefoToYEQ3JjLUh1DZ7BNl3CV4tAM/ol2dU3G9X5fWSYeZi/Ftw76LMLd83i2VqHLoxTk1aODHcFNZFLuc4GonrQfT979r/TvaSfTlU/1G88vGoP2uQLbzs7TWobyyeEvnaLjawxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765795989; c=relaxed/simple;
	bh=++7rUWJpkECEQg4wupeMiwKYz+pXFswrFEdcXFrx8pI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WwqidqlNNHQCYnwuonSmeMJyBHQFUnPy1o6wmBpNKvPUfp6MeixXMA6LexOxEJj486syLdATYRw1fczxNrU42xentMaHM7TQ7EuMZVXD921+8LKVMHijJQR38pLsra4tt/qF6FMBTEeEI3hHvTaWwZNV7AAuj8YykUeIXKTb3mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TLFjyRsN; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-64312565c10so5752845a12.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 02:53:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765795985; x=1766400785; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zUe+EAE2SPiv7I6VGGrHkxtD3ndMq2VfMf1iJyqGTQM=;
        b=TLFjyRsNmHsrjyvq+cjK/ij91BKBhZ1gkU2G39MdwWNxaETEqxTlFLeNEqulP6F9sc
         J6ioZngQ+dA0X0E3pdXzDHezn5VxeKq6yOW1LDFIm+QL6Q2NMw4DCqgV0YXBUOc65Zat
         zbNVe9Nh4/znqB3rgyaE6BNv+iMcfIdt8vnVJRcL3VFlo+IBxCi/wmbNK5cinFf+pnhz
         MtNXt6p+AVyvQZecwaouFhB9IWIEH8xYVHpF/fM0cfEnwadgjjPmRTd/v+EHyHGoWhu8
         sNychfiQ6f6RDmLlyMauIBgj+eJ71suUxD+PEG+/3GH/R7jVA8gL0DBc2/TRjoHhakfF
         O1xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765795985; x=1766400785;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zUe+EAE2SPiv7I6VGGrHkxtD3ndMq2VfMf1iJyqGTQM=;
        b=VqBVF7vxV4o0vu/bdq0+JIN4e6EoRdsd5pd1oU55txAOAxKFdHf6EBnU1P8ZTYNoqG
         Up5JEjtdSFAD1RSNPnureA73ISu2i2bomi2jkAUHmYZfTQCo+vRjA6b5XKTrXV5CWXaP
         5MGtHKAf345Og4PK8iJXUqu7+friLh6YiI7aW3PgL+KclTvVAJmbHjIrXNYlAThphG6b
         uYnwdREm2R4GGP83RDHzr1WbRNtAOm6+6CNgHIUGQTUvAQs/vqirwJgA6GNoM8LiSOoW
         LpcMoGBE/tzCqIiwoRiheoNVnb2Rew1A1IRYFgzn+AAcj+kOaIpGxWe01/mwo6TQrLQq
         xJ4g==
X-Forwarded-Encrypted: i=1; AJvYcCWuX3/a5DJ7q/QhakLnQeehVXXQghdN+PLb/wJntKNzfz4Ja/UfWMkNZy0MqiCL6UmHorAOpfYtAnQv@vger.kernel.org
X-Gm-Message-State: AOJu0YzqV8CqeJ2kX7VROF6n8H39PrtDTJ6kw5/ATMzrWuDgOVTgQNtF
	E7uaClO/OXsKNzmTo/fSgzXBxNX/Zrqy/dwyHgIn2tKJKCIzZiFE+9UG
X-Gm-Gg: AY/fxX44JzUyjnMD+JPAfTm/SSCAwRXdOlGTPMkmx8K4GHQ6IPmsZi7oSoSy9FAXIfG
	VxLwqiQsGhUVuCkkER6MYdZNrjTkEM5VdVbBNHykV19RtrTDCxuJNENuGc6fywoNUhejkAbKb/i
	IAUmp5pCM2Ncpi3R/Qlfok30yq/3ANCJYjTsEELsTXwkPzMtLzE+JuIDkTU3S3v0jUE2la9zzuE
	KnFZZ3vkgLK6oyTSQ2kDSUW62CBPMqqeutuB1qHI2bJkjNpj1H6YEZ54yiP7dYbqdFPIhZcOzJR
	zhw9h/kqvO13r7sMFsNQiWOxXxtXMCVvFu1/CCIRh0n7fRc2YR+tBn/GeaLgC99BUKgM4MQ29ym
	UTzU21IfAXyOrRKnFrIbwBVY8lERZ94A5y9/2KYBEhXiwUNpr+qVe6PnRAD3TvRmO2fgDEVxgtk
	YGh7cWnGkn2ngUmsUb6w==
X-Google-Smtp-Source: AGHT+IHQaUbyuIBHaup4o4JPs479YX310x1U5GJT7nC5JbUCCXXFujhyKYNJmlWKJ25qA/DRS5VM+w==
X-Received: by 2002:a17:907:9494:b0:b73:6534:5984 with SMTP id a640c23a62f3a-b7d2364c4e1mr1105313066b.16.1765795985215;
        Mon, 15 Dec 2025 02:53:05 -0800 (PST)
Received: from [192.168.33.7] ([89.151.31.85])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b7cfa2e70c2sm1345912866b.15.2025.12.15.02.53.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Dec 2025 02:53:04 -0800 (PST)
Message-ID: <424704d3-eb9a-4af3-828c-96645e347907@gmail.com>
Date: Mon, 15 Dec 2025 11:53:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] ARM: dts: mediatek: mt7623: fix efuse fallback
 compatible
To: Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20240617094634.23173-1-zajec5@gmail.com>
 <20240617094634.23173-2-zajec5@gmail.com>
Content-Language: en-US
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <20240617094634.23173-2-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

W dniu 17.06.2024 o 11:46, Rafał Miłecki pisze:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Fix following validation error:
> arch/arm/boot/dts/mediatek/mt7623a-rfb-emmc.dtb: efuse@10206000: compatible: 'oneOf' conditional failed, one must be fixed:
>          ['mediatek,mt7623-efuse', 'mediatek,mt8173-efuse'] is too long
>          'mediatek,mt8173-efuse' was expected
>          'mediatek,efuse' was expected
>          from schema $id: http://devicetree.org/schemas/nvmem/mediatek,efuse.yaml#
> arch/arm/boot/dts/mediatek/mt7623a-rfb-emmc.dtb: efuse@10206000: Unevaluated properties are not allowed ('compatible' was unexpected)
>          from schema $id: http://devicetree.org/schemas/nvmem/mediatek,efuse.yaml#
> 
> Fixes: 43c7a91b4b3a ("arm: dts: mt7623: add efuse nodes to the mt7623.dtsi file")
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

I noticed this patch got missed.

With AngeloGioacchino's review, can we have it accepted now?


> ---
>   arch/arm/boot/dts/mediatek/mt7623.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/mediatek/mt7623.dtsi b/arch/arm/boot/dts/mediatek/mt7623.dtsi
> index 9c5a52ce9351..748f9b366897 100644
> --- a/arch/arm/boot/dts/mediatek/mt7623.dtsi
> +++ b/arch/arm/boot/dts/mediatek/mt7623.dtsi
> @@ -328,7 +328,7 @@ sysirq: interrupt-controller@10200100 {
>   
>   	efuse: efuse@10206000 {
>   		compatible = "mediatek,mt7623-efuse",
> -			     "mediatek,mt8173-efuse";
> +			     "mediatek,efuse";
>   		reg = <0 0x10206000 0 0x1000>;
>   		#address-cells = <1>;
>   		#size-cells = <1>;


