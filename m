Return-Path: <devicetree+bounces-8835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BC37CA46D
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 11:42:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 58616B20C53
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 09:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3F221CAAF;
	Mon, 16 Oct 2023 09:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O46nt9Z5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D2B1C28C
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 09:42:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB327C433C8;
	Mon, 16 Oct 2023 09:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697449335;
	bh=1I7dIX7GqvLMEA2fUJIzQxzuYe7pwiH/zksIhIJbzKY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=O46nt9Z5kLfZ/tmbUT2RnKqug8FypN/I1SAQ0LGt4hMHOz5FwMe6B32iPr2WVwpOe
	 numa1CDNR/IKeSY1+1a2cKRhcPtyqNByqLDLMm1qX+3MzT12UE2Z6ZDJL4OTBFeuB9
	 JCYW0FVo5nO+37tD5jogG3tWwZusWbpa9aejHSomcki3eOBOUA4fIdMujZKZNRroqu
	 761J/wnGI1xSToYuWpHHx5zAAHOE8e9PbteLUiGIaKXBbDXK6lMHXYtuczhL8TL7vm
	 vWKNM9T4X4xrusTsU3a8I2QSFwZ/yVmJ4G4uzL/Ry06SyFs/wqe7QLQQiiPuro3iEU
	 WNn+p9kIPT9Hw==
From: Robert Foss <rfoss@kernel.org>
To: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Liu Ying <victor.liu@nxp.com>
Cc: yannick.fertre@foss.st.com, hjc@rock-chips.com, festevam@gmail.com, zyw@rock-chips.com, conor+dt@kernel.org,
 daniel@ffwll.ch, shawnguo@kernel.org, raphael.gallais-pou@foss.st.com, andrzej.hajda@intel.com,
 jernej.skrabec@gmail.com, alexander.stein@ew.tq-group.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 neil.armstrong@linaro.org, heiko@sntech.de, kernel@pengutronix.de, jagan@amarulasolutions.com, jonas@kwiboo.se,
 sam@ravnborg.org, philippe.cornu@foss.st.com, Laurent.pinchart@ideasonboard.com, airlied@gmail.com,
 s.hauer@pengutronix.de, linux-imx@nxp.com
In-Reply-To: <20230821034008.3876938-1-victor.liu@nxp.com>
References: <20230821034008.3876938-1-victor.liu@nxp.com>
Subject: Re: [PATCH v3 RESEND 0/9] drm/bridge: imx: Add i.MX93 MIPI DSI support
Message-Id: <169744932839.577518.15289591083022609443.b4-ty@kernel.org>
Date: Mon, 16 Oct 2023 11:42:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.10.1

On Mon, 21 Aug 2023 11:39:59 +0800, Liu Ying wrote:
> This series aims to add MIPI DSI support for Freescale i.MX93 SoC.
> 
> There is a Synopsys DesignWare MIPI DSI host controller and a Synopsys
> Designware MIPI DPHY embedded in i.MX93.  Some configurations and
> extensions to them are controlled by i.MX93 media blk-ctrl.
> 
> Add a DRM bridge for i.MX93 MIPI DSI by using existing DW MIPI DSI
> bridge helpers and implementing i.MX93 MIPI DSI specific extensions.
> 
> [...]

Applied, thanks!

[1/9] drm/bridge: synopsys: dw-mipi-dsi: Add dw_mipi_dsi_get_bridge() helper
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=ec20c510ee2d
[2/9] drm/bridge: synopsys: dw-mipi-dsi: Add input bus format negotiation support
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=0de852d4c23a
[3/9] drm/bridge: synopsys: dw-mipi-dsi: Force input bus flags
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=d5116fb29dc0
[4/9] drm/bridge: synopsys: dw-mipi-dsi: Add mode fixup support
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=5a67ec8c64ec
[5/9] drm/bridge: synopsys: dw-mipi-dsi: Use pixel clock rate to calculate lbcc
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=ac87d23694f4
[6/9] drm/bridge: synopsys: dw-mipi-dsi: Set minimum lane byte clock cycles for HSA and HBP
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=d22e9a6df2db
[7/9] drm/bridge: synopsys: dw-mipi-dsi: Disable HSTX and LPRX timeout check
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=743bf594a3b1
[8/9] dt-bindings: display: bridge: Document Freescale i.MX93 MIPI DSI
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=db95a55ccec7
[9/9] drm/bridge: imx: Add i.MX93 MIPI DSI support
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=ce62f8ea7e3f



Rob


