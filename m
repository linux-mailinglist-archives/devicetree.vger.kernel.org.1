Return-Path: <devicetree+bounces-8100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A44FA7C6AE9
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 12:23:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5D907282815
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 10:23:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D599522EF7;
	Thu, 12 Oct 2023 10:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="BGcdSAqm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C9322336
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 10:23:00 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A245BA;
	Thu, 12 Oct 2023 03:22:58 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4BF1B660730F;
	Thu, 12 Oct 2023 11:22:56 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697106177;
	bh=Ey91TshJ+ylbMillrbtBCs1yUKCBOsFzy68XsgWB48s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BGcdSAqm64lZdoMvJ3EyBtd6aENKWnnicrCfWdcs4vVbhd+mt3drqvYDnpNtdTzWF
	 JcdGKPanzA5MhfJpFNl6bOk1dEZ8hQ7pXTnVRYxZNJtV3G0xr6A8B1UosK64QrPMDx
	 oMpz5tSAWJJZwZhoHtU+m/tcEBHtDo4W1HaDob6GrQXrnoieZevmoj4nTGwPaKeenb
	 tRu0UnM47coN/ZKV790iEt9YO5DncC6qfPioqa+LSkAcZqy13O+7+0y0BJ9Y43igMJ
	 AgZDFWKqY+n26ECvvhg1qZQCXEG+8MfwB2KCJJggt1cfNb+nVTeXA/hhuDHBig343d
	 EGl7xnoIeUZ8g==
Message-ID: <2b735350-406f-e9e4-0e0d-8a12cbbfedd7@collabora.com>
Date: Thu, 12 Oct 2023 12:22:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v7 06/16] dt-bindings: media: mediatek: mdp3: add
 component FG for MT8195
Content-Language: en-US
To: Moudy Ho <moudy.ho@mediatek.com>, Chun-Kuang Hu
 <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20231012084037.19376-1-moudy.ho@mediatek.com>
 <20231012084037.19376-7-moudy.ho@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231012084037.19376-7-moudy.ho@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 12/10/23 10:40, Moudy Ho ha scritto:
> Add the fundamental hardware configuration of component FG,
> which is controlled by MDP3 on MT8195.
> 
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>
> ---
>   .../bindings/media/mediatek,mdp3-fg.yaml      | 61 +++++++++++++++++++
>   1 file changed, 61 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/media/mediatek,mdp3-fg.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/mediatek,mdp3-fg.yaml b/Documentation/devicetree/bindings/media/mediatek,mdp3-fg.yaml
> new file mode 100644
> index 000000000000..82f4c182c77a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/mediatek,mdp3-fg.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/mediatek,mdp3-fg.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek Media Data Path 3 FG

MediaTek Media Data Path 3 Film Grain

> +
> +maintainers:
> +  - Matthias Brugger <matthias.bgg@gmail.com>
> +  - Moudy Ho <moudy.ho@mediatek.com>
> +
> +description:

Film Grain (FG) is a Media Data Path 3 (MDP3) component used to add
the film grain according to the AOMedia Video 1 (AV1) standard

after which

Reviewed-by: AngeloGioacchino Del Regno <zangelogioacchino.delregno@collabora.com>

