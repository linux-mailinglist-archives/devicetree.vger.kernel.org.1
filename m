Return-Path: <devicetree+bounces-5036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 065E57B4E54
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 10:59:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id B2852281EF7
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 08:59:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 880EE63C2;
	Mon,  2 Oct 2023 08:59:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 789B89CA44
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 08:59:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEE83C433C7;
	Mon,  2 Oct 2023 08:59:01 +0000 (UTC)
Message-ID: <5b1006ba-37d9-4dbe-ad21-b0bba454e97b@xs4all.nl>
Date: Mon, 2 Oct 2023 10:59:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] MediaTek MDP3: use devicetree to retrieve SCP
Content-Language: en-US, nl
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 mchehab@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, matthias.bgg@gmail.com, moudy.ho@mediatek.com,
 sakari.ailus@linux.intel.com, u.kleine-koenig@pengutronix.de,
 linqiheng@huawei.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 kernel@collabora.com, wenst@chromium.org
References: <20230919095938.70679-1-angelogioacchino.delregno@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20230919095938.70679-1-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 19/09/2023 11:59, AngeloGioacchino Del Regno wrote:
> Especially now that Multi-Core SCP support has landed, it makes sense to
> retrieve the SCP handle by using the "mediatek,scp" property (as already
> done in MediaTek VCODEC), both to select one specific SCP core for MDP3
> and to avoid walking the parent node to find a SCP node.
> 
> AngeloGioacchino Del Regno (2):
>   media: dt-bindings: mediatek: Add phandle to mediatek,scp on MDP3 RDMA
>   media: platform: mtk-mdp3: Use devicetree phandle to retrieve SCP
> 
>  .../bindings/media/mediatek,mdp3-rdma.yaml       |  6 ++++++
>  .../media/platform/mediatek/mdp3/mtk-mdp3-core.c | 16 ++++++++++------
>  2 files changed, 16 insertions(+), 6 deletions(-)
> 

This series no longer applies to our staging master branch.

Since Krzysztof also asked for a better patch 1/2, I prefer a rebased and
updated v5.

Regards,

	Hans

