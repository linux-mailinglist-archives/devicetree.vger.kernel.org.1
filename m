Return-Path: <devicetree+bounces-3239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF637ADD57
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 18:44:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id ABA4D281D5F
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 16:44:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6290A1CAB3;
	Mon, 25 Sep 2023 16:44:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A0C10949
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 16:44:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2D5BC433C8;
	Mon, 25 Sep 2023 16:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695660257;
	bh=OSniNe/SEUwj5JtrJjV3mo40KgZweC+EN5DVdS+32V8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Tx2vsX3+bmbaJmQavOlsuRE97YZs+Tfad0mvFjzqoghAnsr99IgCTELCcGsFXK/tF
	 5SE21DNJRy/kCAsDACFgx5S5YPFRSvwdvNRNtSPv0drdZxHy4/z8B+wcJThmOYDwvq
	 4rpGU+KzSew2sBj8H99H3HB+rQc2ivg1u6rthJ5IVb1gXPPkWvjIICH/G3Dax1HDCq
	 7FXAcBWCH/dTXk7+tAUHt4m3Kck/EuSkhoDjFapTm4y+m3KqzuypPEIL84djKjXKyw
	 zd9nVFjM/sJFifaVSxjPYfA2Ttw4b77Lv4H/60eUCIWEk3/s7qu2EmtRUwxTZOqOpa
	 4U7CojDULiHwg==
Received: (nullmailer pid 1490675 invoked by uid 1000);
	Mon, 25 Sep 2023 16:44:15 -0000
Date: Mon, 25 Sep 2023 11:44:15 -0500
From: Rob Herring <robh@kernel.org>
To: xiazhengqiao <xiazhengqiao@huaqin.corp-partner.google.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, lgirdwood@gmail.com, broonie@kernel.org, linux-mediatek@lists.infradead.org, trevor.wu@mediatek.com, perex@perex.cz, linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org
Subject: Re: [v1 1/2] ASoC: dt-bindings: mediatek,mt8188-mt6359: add RT5682S
 support
Message-ID: <169566025430.1490621.9358539140957587506.robh@kernel.org>
References: <20230925083847.1496-1-xiazhengqiao@huaqin.corp-partner.google.com>
 <20230925083847.1496-2-xiazhengqiao@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230925083847.1496-2-xiazhengqiao@huaqin.corp-partner.google.com>


On Mon, 25 Sep 2023 16:38:46 +0800, xiazhengqiao wrote:
> Add compatible string "mediatek,mt8188-rt5682" to support new board
> with rt5682s codec.
> ---
>  .../devicetree/bindings/sound/mediatek,mt8188-mt6359.yaml        | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


