Return-Path: <devicetree+bounces-245671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 31EC9CB40AA
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 22:13:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B5A853058469
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 21:13:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D71B73019D8;
	Wed, 10 Dec 2025 21:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogTMVIEl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC3F123E334;
	Wed, 10 Dec 2025 21:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765401192; cv=none; b=XP8zAAGvK1ndV+obSu9dmYcSua+c5S53C4znGoTF69FWijGPh7eWv7KP/hZLio9RxKz5/O32rK3tDzEh9nCrAS4z6y+RQJ6lKEqAvpCdlM7YzeittWDcmhVHK/CXCnFG92Hgw2D4lYvKrOvc6uIHH41Zh0d6cbwfJwQQceQ5QGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765401192; c=relaxed/simple;
	bh=aoyauFYLJsKITX5t2VCmjFrbwcJN4/7MVdS0dVL08zs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TtWWYb9VCnCaOhcMDyj6Ou8SZO+BWmbe5l2BHtUeUvZ6vJTaTGadsweLffkN2SBbypuqTJtuEI4nyg/qBsWnSxQ0IJ7usDPVQvODxDnObnUT1UypTxTadsghMG0ze5zDznTDKh6vYIyU+ev9wnE7enzz0Kb0EDv02ood37AdWFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogTMVIEl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01E75C4CEF1;
	Wed, 10 Dec 2025 21:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765401191;
	bh=aoyauFYLJsKITX5t2VCmjFrbwcJN4/7MVdS0dVL08zs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ogTMVIEld+8E2EIFT3MZeHr2NYaQ1fE2HrZ6Oi7xyw7qYP2t+mVVmOPSI/rGF95Hh
	 cVVQ//NbvBMC+K6sLl8XuAZ5iPqi9ACzQ0tlsTkSlD0fIpiqkGLEC9Ma9C6b4M61jl
	 WNivE8HWCI7LJMKwR9TJ9i5Hedu3o7b4GGOVbEf4bIJXCSVsgqTXAkusc6FXrqu4ZF
	 GbqGIicMtSDG+llfICte7jJrUVCsLtrEdCldMLqC5mv7AAsNeFos9xUOW7qgBF4KCi
	 TEcQ07RMrg4dFm9BgRPhVoizMCMEhKlaUGF+9zX+eKJdGm4Gksg8Cur9VtqzCvpqNy
	 c30hNPsjGl3AA==
Date: Wed, 10 Dec 2025 15:13:08 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	linux-mediatek@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, kernel@collabora.com,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-phy@lists.infradead.org,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Guillaume Ranquet <granquet@baylibre.com>
Subject: Re: [PATCH 01/12] dt-bindings: phy: mediatek,hdmi-phy: Fix clock
 output names for MT8195
Message-ID: <176540118761.3352108.7929645042751556704.robh@kernel.org>
References: <20251209-mtk-genio-evk-hdmi-support-v1-0-9a6106effba6@collabora.com>
 <20251209-mtk-genio-evk-hdmi-support-v1-1-9a6106effba6@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251209-mtk-genio-evk-hdmi-support-v1-1-9a6106effba6@collabora.com>


On Tue, 09 Dec 2025 17:34:31 +0100, Louis-Alexis Eyraud wrote:
> From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> 
> For all of the HDMI PHYs compatible with the one found on MT8195
> the output clock has a different datasheet name and specifically
> it is called "hdmi_txpll", differently from the older HDMI PHYs
> which output block is called "hdmitx_dig_cts".
> 
> Replace clock output name string check by max item number one to allow
> the new name on all of the HDMI PHY IPs that are perfectly compatible
> with MT8195.
> 
> Fixes: c78fe548b062 ("dt-bindings: phy: mediatek: hdmi-phy: Add mt8195 compatible")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> [Louis-Alexis Eyraud: splitted patch, addressed previous feedback from
> mailing list, and reworded description]
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
> ---
>  Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


