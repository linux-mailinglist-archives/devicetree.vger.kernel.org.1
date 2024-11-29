Return-Path: <devicetree+bounces-123459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1199D4911
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 09:42:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5ED77B21DA2
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 08:42:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CDD41CB320;
	Thu, 21 Nov 2024 08:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLeksefi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC5113BC3F;
	Thu, 21 Nov 2024 08:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732178568; cv=none; b=DyfWjyGnIRyZ8DGpMCJstkw5lHKwpSXXeZ9tEeGLnLKpW6fGNvu1sKuG8JuqmYBfXTUyYQV8k/TIZuZJbm19VDCzKRRBMiH5t/UfsJTV7HBD7CZgXWew8ndu751mM2D1oBWi+CYmzX3UwDNoR9xWEdON6PJfe02tPCIm71ZF1LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732178568; c=relaxed/simple;
	bh=9Qn9Cr5JCK+4qWRIUMYaZH6DpbxN46AKQ4kwJoFcCxU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=soiqhjfMpmnnrAl9IdI+UvV4QsWSd4cAjhnmY6WDrfbSfKtd3JHiz/bCfLWl8ugQB9JewXYuCaUJx8TED653lhouHGj02zr8GPORKeyKNAiMO6t5r+xyhG6cxFyMZ3Urta+sJHRHqGFOV0//K52+K90naB3h5q2ATtFrvfuRlXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLeksefi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA7EAC4CECC;
	Thu, 21 Nov 2024 08:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732178567;
	bh=9Qn9Cr5JCK+4qWRIUMYaZH6DpbxN46AKQ4kwJoFcCxU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fLeksefilZqrfOa8sv725yVyhSiQH3UMWKyiLeM1ii++Y2aAdSY2MApGnqWlI8WQr
	 ijxvlhbqvsUwlSzkoBJM3+Wp1OyKBRBlcJPKnxqSoy2wnTtPMlGuN14a8LY95/jrZH
	 Cyu8ZTl3xFXfLrtzl0xpS3OR1Q+qutKUkpg/dLwuShdf5upH85E/T74guy1iwPwPAk
	 xZwi6rZz1Xm79XSz2/slbGzO7oLTQYCdr37QZIv8nytJbOWVkoaHwFR7PWPsJZdF68
	 OHXPZ/PhpCoFPS0RLarFwYVh2gs4r2w5jCTnORTgAxtBgdVHQXJyT7WWyi+ipwAuJs
	 zb+aQFTSEVTNg==
Date: Thu, 21 Nov 2024 09:42:44 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>
Cc: Jassi Brar <jassisinghbrar@gmail.com>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Moudy Ho <moudy.ho@mediatek.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, 
	Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, 
	Project_Global_Chrome_Upstream_Group@mediatek.com
Subject: Re: [PATCH 1/8] dt-bindings: mailbox: mediatek: Add GCE header file
 for MT8196
Message-ID: <57kqls2wa67nh4a5yyr4amthmro3bjvrhnrdbdolrhr2lnmf6u@2h3cbl4jip4y>
References: <20241121042602.32730-1-jason-jh.lin@mediatek.com>
 <20241121042602.32730-2-jason-jh.lin@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241121042602.32730-2-jason-jh.lin@mediatek.com>

On Thu, Nov 21, 2024 at 12:25:55PM +0800, Jason-JH.Lin wrote:
> Add the Global Command Engine (GCE) header file to define the GCE
> thread priority, GCE subsys ID, GCE events, and various constants
> for MT8196.

NAK, various constants are not bindings.

> 
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
> ---
>  .../dt-bindings/mailbox/mediatek,mt8196-gce.h | 1449 +++++++++++++++++
>  1 file changed, 1449 insertions(+)
>  create mode 100755 include/dt-bindings/mailbox/mediatek,mt8196-gce.h

Please run scripts/checkpatch.pl and fix reported warnings. Then please
run 'scripts/checkpatch.pl --strict' and (probably) fix more warnings.
Some warnings can be ignored, especially from --strict run, but the code
here looks like it needs a fix. Feel free to get in touch if the warning
is not clear.

This goes with the binding.

Best regards,
Krzysztof


