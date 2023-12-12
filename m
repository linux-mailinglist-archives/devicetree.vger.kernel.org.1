Return-Path: <devicetree+bounces-24360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9AA80ED87
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 14:27:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 077641F21614
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 13:27:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5000461699;
	Tue, 12 Dec 2023 13:27:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="VcDJV83C"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8864AF7;
	Tue, 12 Dec 2023 05:27:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1702387646;
	bh=rWUWqFii2qLJ/wFkk1X0U1NddSTTuFmDH1RdkO8pl70=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=VcDJV83CJx62T0Er/BJFObiPtwNf7CDLhBv3PmPkjY2gn/0g0yX8GYBsf9XnQChXe
	 7KV4OoxoWgkah35n3xF/AT80gvOt2ZxEqJNyYXVAPIj1r7Gj24Shi1hq8eU+5Hd/2Z
	 P4OlLiYaxSrbtJNdgDoPgSyNMGbKqo2BhW+Phy1vhfMC/z3PUYt9Etj7yU1qAtDreW
	 9KqcIXX3FcIKMvQ91WTeSrSVpbSSGk9CHOy5cq9APd32QHFc75QVX6Mx6luXCAqX4J
	 FisH/Fakgsj7/9qjY2sYVDfULOH/G6YKVE0wePSG4YLzDOyqfwRgLymChOgXaVC2i1
	 Fa1z4xfnZj9wg==
Received: from [100.113.186.2] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D16963781464;
	Tue, 12 Dec 2023 13:27:25 +0000 (UTC)
Message-ID: <5d9e6f6c-604d-4e2d-a448-fc5b8bd24a75@collabora.com>
Date: Tue, 12 Dec 2023 14:27:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 03/17] dt-bindings: display: mediatek: ovl: Modify
 rules for MT8195/MT8188
Content-Language: en-US
To: Hsiao Chien Sung <shawn.sung@mediatek.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, CK Hu <ck.hu@mediatek.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Chen-Yu Tsai
 <wenst@chromium.org>, Sean Paul <sean@poorly.run>,
 Fei Shao <fshao@chromium.org>, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20231212121957.19231-1-shawn.sung@mediatek.com>
 <20231212121957.19231-4-shawn.sung@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231212121957.19231-4-shawn.sung@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 12/12/23 13:19, Hsiao Chien Sung ha scritto:
> Modify rules for both MT8195 and MT8188.
> Hardware capabilities include color formats and AFBC are
> changed since MT8195, stop using the settings of MT8183.
> 
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Hsiao Chien Sung <shawn.sung@mediatek.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



