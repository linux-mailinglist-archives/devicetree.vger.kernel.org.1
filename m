Return-Path: <devicetree+bounces-198863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BD428B0E982
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 06:14:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 618F01C240F4
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 04:14:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D575720F070;
	Wed, 23 Jul 2025 04:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THC1ndyP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A94B71DA23;
	Wed, 23 Jul 2025 04:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753244064; cv=none; b=Z3dVAPQ3w7n0MS5vj6MRRyGTWYg1hnzJhes5vXoDT0Kvb4egdlDZZCFH6Lr+KhfLRvkI1LfwHW3UiYllwM4GojWDrCaQzk8WRhWcAZyp/7/dcu7W6EZYNGRwgOrfFrGC3DGhTbsEQr5GStPNiOl/c2t3rYtSQ/ChhkQKJEsAFFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753244064; c=relaxed/simple;
	bh=068U/3dDptn488fVfNI5p67qmkycirBJvcbEN1F+XJc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o89BZFTkqulSfZBM8BmQpsspZOwEui1Er4rjYnvZejNxaHmDpXRbyTEy8jUDm2gW2VLu8mikdS59YZq6aHDuJzvUly76gxVMmrO5o+HYJbTlil0Jlr3viJp5w9vYJnSPHZXcqYvjsRkvj1PTUGtH6pw4r9oHHvLUaDce/hDYGss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THC1ndyP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61B4FC4CEE7;
	Wed, 23 Jul 2025 04:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753244064;
	bh=068U/3dDptn488fVfNI5p67qmkycirBJvcbEN1F+XJc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=THC1ndyP2UGYfBCIVUWwFaz+1yFzznPLRhhgpkTwTMB2X9BapuDAO3Equa57tdCI3
	 gWYyIxnAc1eoSMg9fbt9MYsAmXfJOVQDTQQG/lsMcQGZYNzLTr/6qpnm/SoiB4uo+b
	 Xqs3SBatmCVbuFMwwFsvbhYCpAPYfkplKpGmz6gX3C7EytaPK0GoPZKooNBMSlmQcL
	 vssP0BW98eH/Qn3lurKWjwGPRQRqrfvXGbhWYAqSpkHs5RFiKHJrFkj+VTaA4jJcoh
	 rvRas4q7Y76u15bx6yiHHtSYUFqhhR+sRlIZPDKa0J04JM610pJlw/eKwQNpH1Dxyw
	 R9dCd32hpD6aw==
Date: Tue, 22 Jul 2025 23:14:23 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
	Maxime Ripard <mripard@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Orson Zhai <orsonzhai@gmail.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Simona Vetter <simona@ffwll.ch>, Conor Dooley <conor+dt@kernel.org>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	David Airlie <airlied@gmail.com>,
	Kevin Tang <kevin.tang@unisoc.com>, dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH 2/2] dt-bindings: display: sprd,sharkl3-dsi-host: Fix
 missing clocks constraints
Message-ID: <175324406286.1120502.4383159624545428520.robh@kernel.org>
References: <20250720123003.37662-3-krzysztof.kozlowski@linaro.org>
 <20250720123003.37662-4-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250720123003.37662-4-krzysztof.kozlowski@linaro.org>


On Sun, 20 Jul 2025 14:30:05 +0200, Krzysztof Kozlowski wrote:
> 'minItems' alone does not impose upper bound, unlike 'maxItems' which
> implies lower bound.  Add missing clock constraint so the list will have
> exact number of items (clocks).
> 
> Fixes: 2295bbd35edb ("dt-bindings: display: add Unisoc's mipi dsi controller bindings")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../devicetree/bindings/display/sprd/sprd,sharkl3-dsi-host.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!


