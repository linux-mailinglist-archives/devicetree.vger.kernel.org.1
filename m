Return-Path: <devicetree+bounces-19223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBA17FA0EC
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 14:22:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7F45CB20CB5
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 13:22:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84E322DF8F;
	Mon, 27 Nov 2023 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="po8G/Jd1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668CC1A593
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 13:22:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21A3AC433CA;
	Mon, 27 Nov 2023 13:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701091372;
	bh=GAarMoewnkwJp9XLJQmcej2YbN3Q4NV+hfVw+jdVqdE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=po8G/Jd1b5AVxwfM7ACP6l3yi12wgDzzx5ru7waF6zgVpdZN39rWzCrIOAWLsSdGm
	 N9rZ1yj6R1P8kCHvJxyS5qGtRQb6iJ2l0GWZZJX1NrpZ5vIIlaCiRyPOf2N7MPcGbD
	 JU9imQ+VOMoYL2lj8HVUDSL3qTSApsBVQo45xWuJuaHk9+GyNhQiXfC2+RzX1ZNe5v
	 AwlPtiHDdiwSonfwUeMkwxVLD9Wkvylt21nBNInPfQXgLORhP09ns4ptcDk7zF9wCV
	 2DTCdcNfSFdjw0xMEDAkbNPZpDgSo0NLtK7v+0PkxrbhKZ/uZdNyNOu3a2ij+Eq9yA
	 LWjaZ/qRhA8OQ==
From: Vinod Koul <vkoul@kernel.org>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Jitao Shi <jitao.shi@mediatek.com>, Xinlei Lee <xinlei.lee@mediatek.com>, 
 Michael Walle <mwalle@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
In-Reply-To: <20231123133749.2030661-1-mwalle@kernel.org>
References: <20231123133749.2030661-1-mwalle@kernel.org>
Subject: Re: (subset) [PATCH 0/4] drm/mediatek: support DSI output on
 MT8195
Message-Id: <170109136570.42627.4378174652499590897.b4-ty@kernel.org>
Date: Mon, 27 Nov 2023 18:52:45 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Thu, 23 Nov 2023 14:37:45 +0100, Michael Walle wrote:
> Add support for a DSI output on VDOSYS0. Luckily, there is a new
> feature to support dynamic selections of the output (connector).
> Use it to add support for a DSI output.
> 
> Apart from that, this is pretty straghtforward by just adding new
> compatibles and add the correct DSI nodes to the SoC dtsi.
> 
> [...]

Applied, thanks!

[2/4] dt-bindings: phy: add compatible for Mediatek MT8195
      commit: fa50920b4f82993941e0aac349eb8081ce11e38f

Best regards,
-- 
~Vinod



