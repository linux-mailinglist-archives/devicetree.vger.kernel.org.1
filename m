Return-Path: <devicetree+bounces-22059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8313806487
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 03:04:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 15B58282279
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 02:04:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00A4153A0;
	Wed,  6 Dec 2023 02:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egn/geSJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2702539D
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 02:04:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0C59C433CA;
	Wed,  6 Dec 2023 02:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701828269;
	bh=FYvgiOWGESDkZFht1/V+6iNU6aLyW260toT2yX1jdzE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=egn/geSJq2ZXWwvfJXq2eVnRoNZp05IDbs5AMcMSsvEM9arAol7uabH5cv5S9wwke
	 QQZL2KuYWSBgWjY4RY4owhhiWV7hp4WaO8rygnXmIH3z4Y1GokiRqQxgsymRlKGEFP
	 OiIxjcCPJ2Qeyc14I3FAAm2CtKq/+FQnNObn1UQFC3WMAei5wx0A6sgJ2n5gXt+7SX
	 roEe05vUUjXvU2r4acGNCq6cHVkHEAvxkAW4j2qRI/eSx/FEmKrPHe8c7THFOC7zgR
	 +h2eJ97A2StbpCjB2WB+MPL3jeWNc3rKNt3/SuPC4tdZGi6Pv4zHBHbJFIxHm4TNqK
	 SJBIXsKhzvHGw==
Date: Wed, 6 Dec 2023 10:04:21 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Roland Hieber <rhi@pengutronix.de>
Cc: Inki Dae <inki.dae@samsung.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH 2/2] ARM: dts: imx7: add MIPI-DSI support
Message-ID: <20231206020421.GG236001@dragon>
References: <20231127-b4-imx7-mipi-dsi-v1-0-7d22eee70c67@pengutronix.de>
 <20231127-b4-imx7-mipi-dsi-v1-2-7d22eee70c67@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231127-b4-imx7-mipi-dsi-v1-2-7d22eee70c67@pengutronix.de>

On Mon, Nov 27, 2023 at 05:12:29PM +0100, Roland Hieber wrote:
> From: Marco Felsch <m.felsch@pengutronix.de>
> 
> This adds the device tree support for the MIPI-DSI block. The block can
> be used as encoder for the parallel signals coming from the lcdif block.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Roland Hieber <rhi@pengutronix.de>

Applied this one, thanks!

