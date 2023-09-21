Return-Path: <devicetree+bounces-1972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9197A953D
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 16:30:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3D29A1C209F7
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 14:30:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64376BA2F;
	Thu, 21 Sep 2023 14:29:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BF3BA26
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 14:29:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AF82C4E76A;
	Thu, 21 Sep 2023 14:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306572;
	bh=+i068JrUC9snrrF/aptxkD1gDc/gyHcWbhpnMhJEpI8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KowGEjiCcgXvUWCBv0lqUoM9lhoukicU5tova2ahPaP7PLVe9Ad0a2ovAQFWB03/W
	 Qfdg0KP/xrlWZu7OyKWgpb4zb0BwlR27vpfJxMd3eAoTHcslw7asAfx66vU7ceWNTP
	 7TGS7pOLJbeqXxJjDeXOjVF6yWxUmkir5a2BOprqMnXwkdSdhaMTfmR2VY298pF0wy
	 DpjVD/GpJtWZepTope+ERXAAhaLhLD5VimnE0dvxjzpjF0F9J3YnOAkJdNZ4Gla+Vs
	 +9XhUhduxagNJ7xqTqIPeiQZ9YVU2amorBBoH+Luhs9K94JhPfT7eTxcXgqet13ixO
	 d5WX8llkEEoyQ==
From: Vinod Koul <vkoul@kernel.org>
To: andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, 
 jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, 
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, 
 s.hauer@pengutronix.de, festevam@gmail.com, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 Sandor Yu <Sandor.yu@nxp.com>
Cc: kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com, 
 alexander.stein@ew.tq-group.com, sam@ravnborg.org
In-Reply-To: <cover.1694047629.git.Sandor.yu@nxp.com>
References: <cover.1694047629.git.Sandor.yu@nxp.com>
Subject: Re: (subset) [PATCH v9 0/7] Initial support Cadence
 MHDP8501(HDMI/DP) for i.MX8MQ
Message-Id: <169530656692.106263.15400414640520611543.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:29:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Thu, 07 Sep 2023 09:05:27 +0800, Sandor Yu wrote:
> The patch set initial support Cadence MHDP8501(HDMI/DP) DRM bridge
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

[2/7] phy: Add HDMI configuration options
      commit: 7f90516edb5cbfa4108b92bb83cbc8ef35a4cccd
[6/7] phy: freescale: Add DisplayPort PHY driver for i.MX8MQ
      commit: a2717f1d7c64660679441c407b96103abb7c4a8c
[7/7] phy: freescale: Add HDMI PHY driver for i.MX8MQ
      commit: 8e36091a94d2d28e8dccb9bfda081b2e42e951ae

Best regards,
-- 
~Vinod



