Return-Path: <devicetree+bounces-14292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 502497E36A8
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 09:31:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8907C1C20A31
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 08:31:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4E85C126;
	Tue,  7 Nov 2023 08:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="H+0nBzSe"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599A612E4C
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 08:31:02 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F37011A;
	Tue,  7 Nov 2023 00:31:01 -0800 (PST)
Received: from [100.107.97.3] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 772F566074B9;
	Tue,  7 Nov 2023 08:30:59 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699345860;
	bh=yKQJD7ZBKcHGUWXd3GzZKFwSDEFqn99afjMFFcXUvPk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=H+0nBzSe19XoVpVr9bCgr39Iajf6iRKPqjdGq6A8H4pSYZqIpM+XWP3mAQgK/Zz4N
	 LGCTHH3czA+q6HGIyytlZt3SFEc2mQQ4AGpEib8j7oh9l+FW4kKv1HHDJVfxf41+BR
	 /TR0W80lq7GhqW81Nl/uRdvRjetw2oT9mNdbNT1Vdv8aPfKKhH3Y2HKGVEvPhYbubY
	 nze16TJlZyI0nwHXgxv5oLQR0hTIJLnFFzF2M671ejbIesIvbVgFPn7xeKlo616GLG
	 KV2POp7SS2UOONs6wzmCWqo1+fp+uREC8XmgN89y+cFWM6qaEPb67C5pPc7vJ5I+Mk
	 7IN6OqUK/8kmQ==
Message-ID: <9a30463b-3581-4738-9eea-b45e0c9a1d7a@collabora.com>
Date: Tue, 7 Nov 2023 09:30:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [v1 3/3] ASoC: mediatek: mt8188-mt6359: add two amps support
Content-Language: en-US
To: Rui Zhou <zhourui@huaqin.corp-partner.google.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, perex@perex.cz,
 allen-kh.cheng@mediatek.com, kuninori.morimoto.gx@renesas.com
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
References: <20231107031442.2768765-1-zhourui@huaqin.corp-partner.google.com>
 <20231107031442.2768765-4-zhourui@huaqin.corp-partner.google.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231107031442.2768765-4-zhourui@huaqin.corp-partner.google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 07/11/23 04:14, Rui Zhou ha scritto:
> Support codec rt5682 using two amps.
> 
> Signed-off-by: Rui Zhou <zhourui@huaqin.corp-partner.google.com>

Can you please change the commit description so that it's clear that you're adding
the two amps support to the RT5682s variant? As it is right now, it reads like you
are adding that globally.

ASoC: mediatek: mt8188-mt6359: Enable dual amp for mt8188_rt5682s

After which:

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

> ---
>   sound/soc/mediatek/mt8188/mt8188-mt6359.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/sound/soc/mediatek/mt8188/mt8188-mt6359.c b/sound/soc/mediatek/mt8188/mt8188-mt6359.c
> index e994faa3556b..917640939621 100644
> --- a/sound/soc/mediatek/mt8188/mt8188-mt6359.c
> +++ b/sound/soc/mediatek/mt8188/mt8188-mt6359.c
> @@ -1549,7 +1549,7 @@ static struct mt8188_card_data mt8188_nau8825_card = {
>   
>   static struct mt8188_card_data mt8188_rt5682s_card = {
>   	.name = "mt8188_rt5682s",
> -	.quirk = RT5682S_HS_PRESENT,
> +	.quirk = RT5682S_HS_PRESENT | MAX98390_TWO_AMP,
>   };
>   
>   static struct mt8188_card_data mt8188_es8326_card = {



