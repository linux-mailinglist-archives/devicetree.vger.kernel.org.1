Return-Path: <devicetree+bounces-132626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7829F7A17
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 12:10:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD9C61656C2
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 11:10:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 192B0222D6B;
	Thu, 19 Dec 2024 11:09:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="buLi9nq+"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9806A221D8E;
	Thu, 19 Dec 2024 11:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734606598; cv=none; b=AzaPz+nE94AQ4eHz0LxkJAiekXwwdmya/VtWrkOMJoZyCjI+ZqTnMe1vVDFTnhKVvzY81if4feMmZ4PxSex7wDoTjjuJnYBT7+Psn2Wt2sebwaQTN5/XuP3Hp60AzoH5Bxz+yKFF13NctVUtOXgGuk5KJs+VEjGELZvOeC8m5Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734606598; c=relaxed/simple;
	bh=0arSN+ejbNxnapjrbQiLEUStjChiAuTl6JrFXXXpcUU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=srl2pNdsBXVXU6js7DW4lkG7BeJuMWbVFIVryTSlySW9HoufOFd5emWQoXU4+XI/GtT7dI6mx6oeTwbSCIutvaEOLkid26A2z25aLRScCqfa60nlBjz24BoH0MT6HeqysMXibvfWPhUmLzdZXm3cyDk5zJXEQJmHsM5yrb//r4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=buLi9nq+; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1734606593;
	bh=0arSN+ejbNxnapjrbQiLEUStjChiAuTl6JrFXXXpcUU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=buLi9nq+OCoBZJowmY4W6AkR4JdD7GxHQq9GckVJ1VY7AI8sqCxrep0EAQVb5Z8+v
	 Qjm9TTQ9SKdSa+U+9sa0xGE2i6CZoUpmekIPB6enfigGV8lWInx4lGOFZOfpQ6nwLf
	 lL+QPqXW9aEI4gFDcrBoSd4BPxMJVi9PGzp8ma3lA7ZKpMIvVwSVGCdPoHnkF2RSVV
	 FuSEj0nYHniVGvJRmWcn0Zsu/zy86tlTbiRV+OS0kQwd0S+S5wjTkelv28O4U/MKoU
	 gH6Wj3DjLwNhzjlI3PiNXXcfV4eN1qLcW4YXze3bWRcCEkK/5g2dY4/B0PTQeC6pBB
	 TMZEB6aUzpH9g==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CED7717E3615;
	Thu, 19 Dec 2024 12:09:52 +0100 (CET)
Message-ID: <6f92c81f-84d0-4306-96d2-1cfc2ddb72e0@collabora.com>
Date: Thu, 19 Dec 2024 12:09:52 +0100
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


Jason, while doing MDP3 bindings for MT8188, I noticed that the binding for OVL is
missing; can you please add a commit on top of this series adding the following
snippet?

       - items:
           - const: mediatek,mt8188-mdp3-ovl
           - const: mediatek,mt8195-mdp3-ovl

...with a suggested-by tag it's going to be fine :-)

P.S.: Please refer to 
https://lore.kernel.org/r/20241218105320.38980-1-angelogioacchino.delregno@collabora.com

Thanks,
Angelo

