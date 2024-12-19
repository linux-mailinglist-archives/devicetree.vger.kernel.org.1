Return-Path: <devicetree+bounces-132639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FBB9F7AA2
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 12:46:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6A82F7A3B00
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 11:46:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C9A6224B0E;
	Thu, 19 Dec 2024 11:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="n/uCD5Bf"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A373224AF7;
	Thu, 19 Dec 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734608755; cv=none; b=mmbP7pu7p6sZzOgQ3WSPOBhHGP2PJAviCUQgUl0PQDrrEVzNIwpzIbiJ86yIoO7YqmHklGSMlWD/XMSxljhT4fiR2mIhIvlmEI0cfBmtH0muhTVLYD1M0xfkmzjir8TU9v0fG2MoFJXgZJH75drf8RP0aKUtLTGtI/qOJy4Wa1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734608755; c=relaxed/simple;
	bh=FvKWY5Dn+EtwsvTCeNjgb22EUTjVTToaIGGtR8PVDzw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gxRD1v4if9Btj5i2SGpWphTyQQ9v3NKh50y8ZnqYror0kYcxecwrfgy1dWfTJDQoUKwpgbw85rWXw5wFEqoB3/2QQEIkB8NNYT+Lo6xyaviQWREnSO37wpJXhMfvVzr5lsK9UQSIaq1hL5KheJ3HPwmF4GH6rUvm9ykSqO6jCYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=n/uCD5Bf; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734608751;
	bh=FvKWY5Dn+EtwsvTCeNjgb22EUTjVTToaIGGtR8PVDzw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=n/uCD5Bf3PoU6OGg8Mt3+dzkqzWNGmA0X7gfQCaNW9362gD82+rSVeSPT8VXKAoQX
	 /CmHljsjP8pZZBOpK7uS7PFCWg1fqdtL7OZjAdK7eHOgJUc17F/EMPZHaNFmIp6/X3
	 E3sY/1UlqLub5xDJoPHS2lB41y7pXpvB6+yxSW46frhch1ZIurchvuXrfYCZ0hLVpK
	 cQGR3XOMrCawCFr/fpx6GUHYnD7reGTKJroLLmnrJqGxSGEBUnDFWTps3vA5EFoefD
	 5twGdU41/o4FfA55SQReozlghVxfsfGpyjoRftbHifXJFUBPf7a1j9XT7UnobmVFif
	 dZui3XDJRaXKg==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9145A17E362A;
	Thu, 19 Dec 2024 12:45:50 +0100 (CET)
Message-ID: <ba260dd3-a487-4b80-b52b-83cf8a45be79@collabora.com>
Date: Thu, 19 Dec 2024 12:45:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: display: mediatek: ovl: Modify rules
 for MT8195/MT8188
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>,
 Shawn Sung <shawn.sung@mediatek.com>, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com,
 Fei Shao <fshao@chromium.org>, Pin-yen Lin <treapking@chromium.org>
References: <20241213095044.23757-1-jason-jh.lin@mediatek.com>
 <20241213095044.23757-2-jason-jh.lin@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20241213095044.23757-2-jason-jh.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 13/12/24 10:50, Jason-JH.Lin ha scritto:
> From: Hsiao Chien Sung <shawn.sung@mediatek.com>
> 
> Modify rules for both MT8195 and MT8188.
> Hardware capabilities include color formats and AFBC are
> changed since MT8195, stop using the settings of MT8183.
> 
> Acked-by: Rob Herring <robh@kernel.org>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>

CK, can you please Ack this so that I can make it go through the mediatek tree
along with the devicetree changes?

Thanks,
Angelo

> ---
>   .../bindings/display/mediatek/mediatek,ovl.yaml          | 9 ++++-----
>   1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
> index 9ea796a033b2..8ca8e5966b9a 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,ovl.yaml
> @@ -26,6 +26,7 @@ properties:
>             - mediatek,mt8173-disp-ovl
>             - mediatek,mt8183-disp-ovl
>             - mediatek,mt8192-disp-ovl
> +          - mediatek,mt8195-disp-ovl
>             - mediatek,mt8195-mdp3-ovl
>         - items:
>             - enum:
> @@ -36,16 +37,14 @@ properties:
>             - enum:
>                 - mediatek,mt6795-disp-ovl
>             - const: mediatek,mt8173-disp-ovl
> -      - items:
> -          - enum:
> -              - mediatek,mt8188-disp-ovl
> -              - mediatek,mt8195-disp-ovl
> -          - const: mediatek,mt8183-disp-ovl
>         - items:
>             - enum:
>                 - mediatek,mt8186-disp-ovl
>                 - mediatek,mt8365-disp-ovl
>             - const: mediatek,mt8192-disp-ovl
> +      - items:
> +          - const: mediatek,mt8188-disp-ovl
> +          - const: mediatek,mt8195-disp-ovl
>   
>     reg:
>       maxItems: 1




