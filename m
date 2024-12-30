Return-Path: <devicetree+bounces-134639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D179FE1FA
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 03:21:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2862E16048E
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 02:21:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D15878F37;
	Mon, 30 Dec 2024 02:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="UuxtOpUj"
X-Original-To: devicetree@vger.kernel.org
Received: from stravinsky.debian.org (stravinsky.debian.org [82.195.75.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DFFA8C11;
	Mon, 30 Dec 2024 02:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.108
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735525287; cv=none; b=kumJLscjARPMuMCVWH0G+3fXHYxw/imvnJv2nTr2zB0QWKFEUq/wl1Oh7koCxtn2i+Pro6QTgoduxMlleK1ARC9MqPDl3fDKtwiAM3giF/Mbosk8Nu3xhNNlgltX3z7WW4SrDtfcmszp6pT96f0KcRNx3ngyL6euk274RlaKLu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735525287; c=relaxed/simple;
	bh=aXF031yaPTqSYgrnvdF9i6IGHd0p8iDbaS5CWUkuC54=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gZrEkXYS/DRj272E0UI+Jo/I/LRo20oNf9A/mp4AVnYm+FK4hkpy95FMBjMiemn9N05OoCIe+KJelo30btgl/4q91D6B0Avd3ZFggDKtZ5nA1SLj98nY+c23JuC5H/0fcXfHQA8qcrSNN+tBijDq89QEko6BB8duvDAFOGjO0IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=UuxtOpUj; arc=none smtp.client-ip=82.195.75.108
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=BeWo63al5Q9jX6hi9OUFCf7WTwROUVRvfEBDDGUsRVE=; b=UuxtOpUjYXKk5/JoecKoQ3msk4
	F+Oljxs5RTcVAhtK+npvBAieFFYxYAhDVpKs15tdmNiu/SFuOG6/KxUkIGwcbfjgnpjT62dTNA4TX
	F9blddjoK/oa8yVfLbTjOUq23hObaMLDJD1cCgBmX2JFgPotpQEaAFDwikB8egvFPoipQ5jRWIwTe
	h+gxPqvsuybuw2IfwcpGkyvx7d8hugEGE9clxi5KDXbSc0Vi6SHHSbq7B5LqPjM+xAAlCW2nNqvAI
	ESRZNKlamxMxtlhphmh//+8D15akoxpsdKhTrCHxT3o+nsVSMGeEJKDYTSQyRusd0MLybo9b2Eyh4
	ogfVAjgQ==;
Received: from authenticated user
	by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.94.2)
	(envelope-from <zeha@debian.org>)
	id 1tS5Or-005cYz-TA; Mon, 30 Dec 2024 02:20:58 +0000
Date: Mon, 30 Dec 2024 03:20:55 +0100
From: Chris Hofstaedtler <zeha@debian.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, andrzej.hajda@intel.com,
	neil.armstrong@linaro.org, rfoss@kernel.org,
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
	jernej.skrabec@gmail.com, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	quentin.schulz@cherry.de, Heiko Stuebner <heiko.stuebner@cherry.de>,
	Daniel Semkowicz <dse@thaumatec.com>,
	Dmitry Yashin <dmt.yashin@gmail.com>
Subject: Re: [PATCH v4 1/3] drm/bridge/synopsys: Add MIPI DSI2 host
 controller bridge
Message-ID: <Z3IDh0TOAKqaovz2@per.namespace.at>
References: <20241209231021.2180582-1-heiko@sntech.de>
 <20241209231021.2180582-2-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241209231021.2180582-2-heiko@sntech.de>
X-Debian-User: zeha

Hi,

On Tue, Dec 10, 2024 at 12:10:19AM +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> Add a Synopsys Designware MIPI DSI host DRM bridge driver for their
> DSI2 host controller, based on the Rockchip version from the driver
> rockchip/dw-mipi-dsi2.c in their vendor-kernel with phy & bridge APIs.
> 
> While the driver is heavily modelled after the previous IP, the register
> set of this DSI2 controller is completely different and there are also
> additional properties like the variable-width phy interface.
> 
> Tested-by: Daniel Semkowicz <dse@thaumatec.com>
> Tested-by: Dmitry Yashin <dmt.yashin@gmail.com>
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
[..]
> +static void dw_mipi_dsi2_set_vid_mode(struct dw_mipi_dsi2 *dsi2)
> +{
> +	u32 val = 0, mode;
> +	int ret;
> +
> +	if (dsi2->mode_flags & MIPI_DSI_MODE_VIDEO_NO_HFP)
> +		val |= BLK_HFP_HS_EN;
> +
> +	if (dsi2->mode_flags & MIPI_DSI_MODE_VIDEO_NO_HBP)
> +		val |= BLK_HBP_HS_EN;
> +
> +	if (dsi2->mode_flags & MIPI_DSI_MODE_VIDEO_NO_HSA)
> +		val |= BLK_HSA_HS_EN;

For all three of these: is setting an ENable bit the right thing to
turn features *off*?

> +	if (dsi2->mode_flags & MIPI_DSI_MODE_VIDEO_BURST)
> +		val |= VID_MODE_TYPE_BURST;
> +	else if (dsi2->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
> +		val |= VID_MODE_TYPE_NON_BURST_SYNC_PULSES;
> +	else
> +		val |= VID_MODE_TYPE_NON_BURST_SYNC_EVENTS;
> +
> +	regmap_write(dsi2->regmap, DSI2_DSI_VID_TX_CFG, val);
> +
> +	regmap_write(dsi2->regmap, DSI2_MODE_CTRL, VIDEO_MODE);
> +	ret = regmap_read_poll_timeout(dsi2->regmap, DSI2_MODE_STATUS,
> +				       mode, mode & VIDEO_MODE,
> +				       1000, MODE_STATUS_TIMEOUT_US);
> +	if (ret < 0)
> +		dev_err(dsi2->dev, "failed to enter video mode\n");
> +}
...

Chris


