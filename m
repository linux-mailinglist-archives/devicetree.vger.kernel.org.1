Return-Path: <devicetree+bounces-130125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 367749EE0C7
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 09:02:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2C9F282D11
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 08:02:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5986320B219;
	Thu, 12 Dec 2024 08:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHI+2dRV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D41E1FECD6;
	Thu, 12 Dec 2024 08:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733990568; cv=none; b=UcO2OCsvSd2JX1UJUcvpDgMRp+fMth0QSDclr6u9QwCYZ0irs9kkawicBb9mgnypw3L7eQ64NLQMyobsh1zdzKSZ0m5B0kV9Z7Cwpy+KzZFdliFVOMACa4Tga9WznQQadKqMvDtOsem7X3cU77oo7ZzxWW8cXVvgJzS03OYqrrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733990568; c=relaxed/simple;
	bh=buq2YfDCNnqDDY4VdlNh9UeBIdPGX2vT8DdJKHmmo+4=;
	h=Message-ID:Date:From:To:Subject:In-Reply-To:References:Cc; b=HjebU3jSjuF+QHr4inRmsBGGduAUbuUvopmgP38hd1OxP7TzGgQ60WrRFz++0jdjDVGGSuoGDnWherO3VmcKYtveCp+7py/SKgonSqknScGrVc34G9OovPELuRYkcK05e+d0BCzqR8ZKOog28CQ17VsvRcIdwYsFP8iboEeXQGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHI+2dRV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F65CC4CECE;
	Thu, 12 Dec 2024 08:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733990567;
	bh=buq2YfDCNnqDDY4VdlNh9UeBIdPGX2vT8DdJKHmmo+4=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=FHI+2dRVceqzA7+ClviUj8W8iC6LRGzm8ssbFU1dyWdSKl3ECY/lmoWMpGCkzZntz
	 2aS0F4PPDM9B9uyF/0mXHCTsoiayweGFTMPMoCmCfIaAaexhHuylEXX8h1EdQgLugI
	 BQqX43R9L1NGfRPylatrJBKhQhyVJssJvI31PSSQyTL3wFysVHgJJjRA2iIIHyndjy
	 BmCBowcbMq7h0sT8UYGTcb6/EKwlaLfML0ax0ydV4ra1BNyKxQIFiU3lMcV9ximzAF
	 /OYrk0lmuZnPNNrHYjMFRt+aFLY1Tw+GI8RGH7KImIMKagHXuk+0LwJNOgaT0FLUW5
	 mvbcE166qJrUw==
Message-ID: <f5e1154a6a3a60856553716cdb8f6fd2@kernel.org>
Date: Thu, 12 Dec 2024 08:02:44 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Liu Ying" <victor.liu@nxp.com>
Subject: Re: [PATCH v6 10/19] drm/imx: Add i.MX8qxp Display Controller pixel
 engine
In-Reply-To: <20241209033923.3009629-11-victor.liu@nxp.com>
References: <20241209033923.3009629-11-victor.liu@nxp.com>
Cc: agx@sigxcpu.org, airlied@gmail.com, aisheng.dong@nxp.com, conor+dt@kernel.org, devicetree@vger.kernel.org, dmitry.baryshkov@linaro.org, dri-devel@lists.freedesktop.org, festevam@gmail.com, francesco@dolcini.it, frank.li@nxp.com, imx@lists.linux.dev, kernel@pengutronix.de, kishon@kernel.org, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, maarten.lankhorst@linux.intel.com, mripard@kernel.org, p.zabel@pengutronix.de, robh@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org, simona@ffwll.ch, tglx@linutronix.de, tzimmermann@suse.de, u.kleine-koenig@baylibre.com, vkoul@kernel.org, "Maxime
 Ripard" <mripard@kernel.org>
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

On Mon, 9 Dec 2024 11:39:14 +0800, Liu Ying wrote:
> i.MX8qxp Display Controller pixel engine consists of all processing
> units that operate in the AXI bus clock domain.  Add drivers for
> ConstFrame, ExtDst, FetchLayer, FetchWarp and LayerBlend units, as
> well as a pixel engine driver, so that two displays with primary
> planes can be supported.  The pixel engine driver and those unit
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

