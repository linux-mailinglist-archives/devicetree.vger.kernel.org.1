Return-Path: <devicetree+bounces-49890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC81878672
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 18:42:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE01D1C21141
	for <lists+devicetree@lfdr.de>; Mon, 11 Mar 2024 17:42:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE4D64E1BE;
	Mon, 11 Mar 2024 17:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cX9H46js"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2C174D9E9;
	Mon, 11 Mar 2024 17:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710178949; cv=none; b=NJlO1L4MKpLnQAuhqtUO9Pr7RvDaUTTR4vNSJedskkTpqflsVfpfKuLmutwRCnz3EBoC2YAuqd3uvE+/IVkbrEiMAMMhHqkddF2zRf5niO13R+N9aW5TwvQr71Sh2r/ooPEYB2s0RtIkIlKQkaGFSJoUaBtd7/IEA/2/YvMEvPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710178949; c=relaxed/simple;
	bh=TOmNFqdlEX5eUciRb+hCt2fH1EdaZIZ/19dwpuQ7yR4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZubsisBR7xBHBD99u7mgTcHC6tY3Hgdos3U/WaWL61Y8aHGUoOqySLBFv7NZqxyoa6jGbedlhZjpraFkUDOLS8bvaoHqiupUgzs1/2xLsAtHwztUah+WKKJ1jxw+zMvFPRtnxw6o5t3dWYzbu+iAMElcoDY9wg1TsYYbQp8w2Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cX9H46js; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF7E7C433C7;
	Mon, 11 Mar 2024 17:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710178949;
	bh=TOmNFqdlEX5eUciRb+hCt2fH1EdaZIZ/19dwpuQ7yR4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cX9H46jsv/qMGAFYT+F0QsCE2NSRwHon+tUf7M2uQPrMLIr1ogZmBNBonbfniFje7
	 chpPKgJPAaq3aQmuMhvRgtYN0515QtnDOok+WxryHtWMICoPzIqjL+ILBlBRW21wQV
	 mPjKZy7aNNeYHMnLI4iGiF7WymKK6dv3UUkCqkgwyM/pTX8BR5ELnD36NvDQa0whsU
	 tJwkVD3Vy+7uBdtw8rayFoGcIaUhpPg63YASuaE6/5rBzxaL0mPVF91r3PGzhFA0gB
	 dgRbzk12QhjFmNyXC9ro2zcUpspESpSFfW93AujKPG3P0Lcx7Fqg292uhbX7HOkATP
	 VLh6sbW3TtXTA==
Date: Mon, 11 Mar 2024 11:42:26 -0600
From: Rob Herring <robh@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	devicetree@vger.kernel.org, David Airlie <airlied@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Chris Healy <cphealy@gmail.com>,
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 02/12] dt-bindings: display: imx/ldb: drop ddc-i2c-bus
 property
Message-ID: <171017894651.1474788.10522684449729794066.robh@kernel.org>
References: <20240311-drm-imx-cleanup-v1-0-e104f05caa51@linaro.org>
 <20240311-drm-imx-cleanup-v1-2-e104f05caa51@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240311-drm-imx-cleanup-v1-2-e104f05caa51@linaro.org>


On Mon, 11 Mar 2024 13:20:10 +0200, Dmitry Baryshkov wrote:
> The in-kernel DT files do not use ddc-i2c-bus property with the iMX LVDS
> Display Bridge. If in future a need arises to support such usecase, the
> panel-simple should be used, which is able to handle the DDC bus.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  Documentation/devicetree/bindings/display/imx/ldb.txt | 1 -
>  1 file changed, 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>


