Return-Path: <devicetree+bounces-248361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8422CCD1D86
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 21:52:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 85BF930173AC
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 20:52:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 954112D4B68;
	Fri, 19 Dec 2025 20:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jq1tQtSS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC49283C89;
	Fri, 19 Dec 2025 20:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766177531; cv=none; b=d9GCEOjGkDqpRVFadCyhqEgM4s8aaNQECafxdUqgYhD1+1t5JEcYuBl/CKD/GVHm28CkMGtIv5RolxjzYqCx5cZiAkld9UlMrPtipZWt3X38cJyberSyPCrOhuofvUeNVnAvsDIOYIkYo19VnU08P6BOZR2IPQBLn4+5XXDad3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766177531; c=relaxed/simple;
	bh=IfN5Dcnu7w/fq70aai0mm7T/3vR0HXA+EKmz+kfT6XU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GrAWVDkcmaJ4ZLU1yniorv5BkCWKbY78sIcYabvCYdEFTRVLsfFFKCNbeKv+ogbG40P7jhIpHsIjkRLEOtOJKeOseYZItaEuzlJIdDhf+U8FXtzfjF5Li7HeLb1j0v65F6xmWhYdbjFvuPcrIPkM2KGFopf+Ehu0FacFIyzCibQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jq1tQtSS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7098C4CEF1;
	Fri, 19 Dec 2025 20:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766177531;
	bh=IfN5Dcnu7w/fq70aai0mm7T/3vR0HXA+EKmz+kfT6XU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jq1tQtSS/JSCOocX/vIVsiOD5D9gS1yjIp+Grqn/3RTPO307bYj+41/DcUdH6/GRe
	 YIVF7sjtezyVdaSW1ztPfWvX2kXCnfnd7QwoimHJGaZDeVUDmBvd0TE2jCCoqPY3Q0
	 Y5GeDEipTvoQOAzB3uRM81xTft9LfvBxybKkCteBjB1woJ47kbihrI8NJ+mql6jQX0
	 3kYNT8JCuQ0aKutiRFVaZkfXGnRMPBrwXF36aNPqxNyQZqoeEf78p0WVaK2C7YKc7f
	 uuoa294UBUMFCp9e+GdvHgPulI5N1UmQY9BJG24oJgTMlixqXdN14Bp8KGSpd6XLLv
	 D3vyQsVNbdGsg==
Date: Fri, 19 Dec 2025 14:52:08 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Guillaume Ranquet <granquet@baylibre.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	linux-mediatek@lists.infradead.org,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	linux-kernel@vger.kernel.org,
	Chunfeng Yun <chunfeng.yun@mediatek.com>, kernel@collabora.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 02/12] dt-bindings: phy: mediatek,hdmi-phy: Add
 support for MT8188 SoC
Message-ID: <176617752769.3912550.11182398487708653155.robh@kernel.org>
References: <20251217-mtk-genio-evk-hdmi-support-v2-0-a994976bb39a@collabora.com>
 <20251217-mtk-genio-evk-hdmi-support-v2-2-a994976bb39a@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251217-mtk-genio-evk-hdmi-support-v2-2-a994976bb39a@collabora.com>


On Wed, 17 Dec 2025 11:19:01 +0100, Louis-Alexis Eyraud wrote:
> Add compatible string for the HDMI PHY IP on MT8188 SoC, that is
> compatible with the one found on MT8195 SoC.
> 
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
> ---
>  Documentation/devicetree/bindings/phy/mediatek,hdmi-phy.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


