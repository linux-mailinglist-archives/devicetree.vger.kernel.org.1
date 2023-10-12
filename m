Return-Path: <devicetree+bounces-8109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 340577C6B45
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 12:37:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D758D2828F3
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 10:37:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D97C208CB;
	Thu, 12 Oct 2023 10:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="DY1opsTg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B25D022F14
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 10:37:35 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23A5490;
	Thu, 12 Oct 2023 03:37:32 -0700 (PDT)
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 08666660733F;
	Thu, 12 Oct 2023 11:37:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697107050;
	bh=lNyFtEdQTDuc65MqDEMsAQSJCURe+5Hc0l5j1I+nClk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DY1opsTgYfOqAY8qFy2hg8GrEoAO+EuqCr6eiOsIX7kahRCO9NeYsDOkRL++LM2+5
	 pYwsdZTydV+3c+D9aiC89n2ZdVbD75x1yLpQ6gfs4JpSpJhuZrr5oaRo2oEYnOcnlS
	 B5zdVWt/vGDtuu7KGPU7VC38/eWQ/a1g99Hv1puyinQcm8FVMs6GulWGOSRuLbQcvl
	 oV0Kfs2A3UPoOeSFSAo8bdTOAUQ+cxCimjm/ZdUwc702CZmXGDGF6uW+hGHxYCDnEt
	 n+8HJgbe1VFusuXZj3exjWFUxN39PDEzfOhkAnQfds2Uvf6KQmcsK0quvxCs/AJi7S
	 lBuFyDvXYQPbQ==
Message-ID: <6d9bdf5d-e741-038e-3c5a-589b54d15846@collabora.com>
Date: Thu, 12 Oct 2023 12:37:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v7 01/16] dt-bindings: media: mediatek: mdp3: correct RDMA
 and WROT node with generic names
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
 <20231012084037.19376-2-moudy.ho@mediatek.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20231012084037.19376-2-moudy.ho@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Il 12/10/23 10:40, Moudy Ho ha scritto:
> The DMA-related nodes RDMA/WROT in MDP3 should be changed to generic names.
> In addition, fix improper space indent in example.
> 
> Fixes: 4ad7b39623ab ("media: dt-binding: mediatek: add bindings for MediaTek MDP3 components")
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>
> Acked-by: Rob Herring <robh@kernel.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


