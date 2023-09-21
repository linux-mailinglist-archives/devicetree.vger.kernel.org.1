Return-Path: <devicetree+bounces-1968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 105D27A9536
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 16:29:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D94951C209C5
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 14:29:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C12A6BA2D;
	Thu, 21 Sep 2023 14:29:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3910BA26
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 14:29:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F2B1C4E766;
	Thu, 21 Sep 2023 14:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306555;
	bh=VLihWTTWDyRcN1oKbSXsMzwTgw3e5f2Nt4JgNqgjmHc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=SuLiY+Tf7wIE6HHdVRCxC/G1lDF/gX0c75BgE/AgAsn5nX2ZKPM3+Z++XNKC0svQJ
	 HfQbsEaMJh+rA+a0YH4xaqhnT4kOef4nrv9ecIYbjV+CSIDgJFM8q32cIE3Mbhtiev
	 f7dSWqUSt5OMbhSWI5Qae26S0NKOij9BSt1wBncwhEOVT3aA8hiWtoi7PrI/fVPcBF
	 cJowBwpV6q+fia1qTvE+4vML1ae0iosmzIw0YzMB9KxyO/z2rNAaZGBKQMMkRKEX14
	 bbqPeBFnkK0n8n3GPrVtOYfDpo3kEioTgoddzPejSuiASIRvVansYwxQXue70uQcOr
	 QbqdeBZ2sIQOw==
From: Vinod Koul <vkoul@kernel.org>
To: andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, 
 jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, 
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, 
 s.hauer@pengutronix.de, festevam@gmail.com, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 Robert Foss <rfoss@kernel.org>, Sandor Yu <Sandor.yu@nxp.com>
Cc: kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com
In-Reply-To: <cover.1686729444.git.Sandor.yu@nxp.com>
References: <cover.1686729444.git.Sandor.yu@nxp.com>
Subject: Re: [PATCH v6 0/8] Initial support for Cadence MHDP8501(HDMI/DP)
 for i.MX8MQ
Message-Id: <169530654998.106263.143064512083801166.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:29:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Thu, 15 Jun 2023 09:38:10 +0800, Sandor Yu wrote:
> The patch set initial support for Cadence MHDP8501(HDMI/DP) DRM bridge
> drivers and Cadence HDP-TX PHY(HDMI/DP) drivers for Freescale i.MX8MQ.
> 
> The patch set compose of DRM bridge drivers and PHY drivers.
> 
> Both of them need the followed two patches to pass build.
>   drm: bridge: Cadence: convert mailbox functions to macro functions
>   phy: Add HDMI configuration options
> 
> [...]

Applied, thanks!

[1/8] drm: bridge: Cadence: convert mailbox functions to macro functions
      (no commit info)
[2/8] dt-bindings: display: bridge: Add Cadence MHDP8501 HDMI and DP
      (no commit info)
[3/8] drm: bridge: Cadence: Add MHDP8501 DP driver
      (no commit info)
[4/8] phy: Add HDMI configuration options
      commit: 7f90516edb5cbfa4108b92bb83cbc8ef35a4cccd
[5/8] drm: bridge: Cadence: Add MHDP8501 HDMI driver
      (no commit info)
[6/8] dt-bindings: phy: Add Freescale iMX8MQ DP and HDMI PHY
      (no commit info)
[7/8] phy: freescale: Add DisplayPort PHY driver for i.MX8MQ
      commit: a2717f1d7c64660679441c407b96103abb7c4a8c
[8/8] phy: freescale: Add HDMI PHY driver for i.MX8MQ
      commit: 8e36091a94d2d28e8dccb9bfda081b2e42e951ae

Best regards,
-- 
~Vinod



