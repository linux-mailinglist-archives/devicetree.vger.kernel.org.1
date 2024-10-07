Return-Path: <devicetree+bounces-108532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5BA992E50
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 16:07:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F02A2812C9
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 14:07:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18DE41D47C1;
	Mon,  7 Oct 2024 14:07:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g19HgLP7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DAF1D54FA
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 14:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728310020; cv=none; b=anj+7VYOV6fMEjZhAebMGYfb8rfHTFwSpUcEsOnpkAzy3MKOBuRdeRo8rYUYt+BP2WhOQowvmM1jfE2tvCd/0qVgcLAjNSL2h+YTv7RBuws7+HO0K/wKBO/UH8tKfGobREz731iDQXNm/WTCPbXxu2SYm0RPUl/G86cE83rK1k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728310020; c=relaxed/simple;
	bh=oFiGAabka7Woqz+pFzlrMOHt874p/brOV+/VlSXd8dI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K/+aEZeJ1GyTTRRwAQKq+Wnzbfol407kMsJi8ThIh10Y0sbv+VyQN/CSFyohFDRXZmiXJChnMFz2D2fsYWSmiarLafSiJGSDT936IZJfDEMKF8PLRC3rPpztIZPs/RB6xHxbDKKFhlHX9i9Ko4+bWHlvVLbBz3W1JRRRct374AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g19HgLP7; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-37cdbcb139cso3526079f8f.1
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 07:06:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728310017; x=1728914817; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=8hWKSlLN+vsj3tUUn13M+s2s4IGGCFQ0f1niVzL4iyE=;
        b=g19HgLP7kN9FLLDWzhHRIONEA5nqDHSIgMaLwbxQ7agCYeoWZdmpIseh20FtT+09w/
         i9ZorztFrFv2OmGZ2WX99iovrdd1BCeJ34wZz5UeHvQNH1MFNA8Npk9t7l+qLTpOVr1J
         gLFxQuN7EmOLhejGxciRvJIoFVP71/fFSZLUnO6JqoVdSgSHYFDyhJ1yHtmA+TCwhIZ1
         CPv4GGV9JaHzNN9Ede2xl0Fx1afQTuPDWi1z+AaedQqbsJufq0AcEsfAmD8AIfaJAmuA
         uzPwodUC8nLvkBPD+zyXBDlIbUBOMyWigEfgw5QQe6Q86Buq8V/zLYWBsUf8wOTXQR/8
         XFNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728310017; x=1728914817;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8hWKSlLN+vsj3tUUn13M+s2s4IGGCFQ0f1niVzL4iyE=;
        b=cQ9jOurSejNX5p6Fcvs6X3+tgW2gIR6JaaMOgp0iK2rTjeFoFnjhjNYT/rINFNY2NX
         MbkPdIn8ON0EpDGYZZgf4ANfPbdRV7BTW3rmPyLBiK8tKdqN//ToPjLH+Qk3rrZhBZ5M
         Q7/tIXmEPohD46Ck1RgfKwwRmUug6lPUtannKi3P+chZdFWE+04m6nzyfqMm28JvE/2B
         PROm/cCQ6McguxUxtCyawGVZRB3q+ejyX0tX5z9raCEAjEkkO5aEZMhoN0HBZcrvCmg9
         24eesVwd3v9dP8Mpl1UWjwijXqmcHFGh/bBVIVrQXctjcamtqTS2Xy7HFXmMpTgSeDmH
         lkxA==
X-Forwarded-Encrypted: i=1; AJvYcCVD3ZELqtyVwHsZ/RwaDm8sm9TiP1qB15V5mlS8EpAfXzdrnfbAVXAU75exmcJ5Gv4i7ArowRxs1pJl@vger.kernel.org
X-Gm-Message-State: AOJu0YwLoN5vzNRtSnSppTHCHDI6/LpL5wWZwH9nKGYRjLeIuUnajJp/
	3H8LgNHzxCITX4fIMEmxKyk/xJJy0+/Oi1JWPmN+1Pviwrx2TQ7b
X-Google-Smtp-Source: AGHT+IG58jm7bgwH+mDspVRG9n3ZFKjtVsLB8evH6+znZi6hMLtB2++cSjr+HfWHycvINCijQghuYw==
X-Received: by 2002:a05:6000:dc6:b0:368:445e:91cc with SMTP id ffacd0b85a97d-37d0e74c802mr7260686f8f.21.1728310016473;
        Mon, 07 Oct 2024 07:06:56 -0700 (PDT)
Received: from [192.168.2.177] ([207.188.162.240])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d1691a48asm5780497f8f.32.2024.10.07.07.06.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2024 07:06:55 -0700 (PDT)
Message-ID: <d9565233-090b-4931-9e9f-89725db605e3@gmail.com>
Date: Mon, 7 Oct 2024 16:06:53 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] ARM: dts: mediatek: mt7623: fix efuse fallback
 compatible
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20240617094634.23173-1-zajec5@gmail.com>
 <20240617094634.23173-2-zajec5@gmail.com>
Content-Language: en-US, ca-ES, es-ES
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; keydata=
 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
In-Reply-To: <20240617094634.23173-2-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 17/06/2024 11:46, Rafał Miłecki wrote:
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

Angelo stated that we should move away from generic fallbacks. Although the 
binding states explicitly to use "mediatek,efuse" and deprecates the standalone 
"mediate,mt8173-efuse", which could the default fallback. Angelo, what do you 
think, take it or re-doing the binding first?

Regards,
Matthias

>   		reg = <0 0x10206000 0 0x1000>;
>   		#address-cells = <1>;
>   		#size-cells = <1>;

