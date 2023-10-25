Return-Path: <devicetree+bounces-11941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E14267D71E8
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 18:51:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A87C28176E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:51:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E5FB27ED6;
	Wed, 25 Oct 2023 16:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="LMKgg6/X"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C47827EFB
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 16:50:56 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E35E1182
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 09:50:53 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 78A62669;
	Wed, 25 Oct 2023 18:50:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1698252639;
	bh=7K1olaVKCwfA8ZPuGeuySDhYia+lM9SqFRJEvSWL0QE=;
	h=From:To:Cc:Subject:Date:From;
	b=LMKgg6/XTtJ4HovsVcBk+5iGbKpaJu9wx5GOug3Yt+ewhLi1hjqc/N/jtnRoRBxCu
	 YbwJ2wSuFDxgU6pm7FQp7+w7Xk+G9n+eeWfAanKvleA0xSme/4TI7Pv9GBisVEB3lr
	 UbphT9kgblUVhzh4Nn/t9JmNxcM3KBWvUqhStRck=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Li Yang <leoyang.li@nxp.com>,
	Marco Contenti <marco.c@variscite.com>,
	Nate Drude <nate.d@variscite.com>,
	FrancescoFerraro <francesco.f@variscite.com>,
	Harshesh Valera <harshesh.v@variscite.com>
Subject: [PATCH v2 0/4] arm64: dts: freescale: Add Variscite i.MX8MP DART8MCustomBoard v2
Date: Wed, 25 Oct 2023 19:50:54 +0300
Message-ID: <20231025165058.31697-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

This patch series adds support for the Variscite DART8MCustomBoard v2
carrier board with a DART-MX8M-PLUS module.

The device tree code originates from Variscite's BSP, and has been
heavily refactored to adapt to mainline DT bindings. Some features have
been left out:

- Camera: cameras should be enabled through overlays as they're not part
  of the carrier board itself. I have successfully tested both camera
  ports with modules that currently require out-of-tree drivers, so I
  haven't included them in this series.

- HDMI: I have successfully tested this with DT bindings and drivers
  that have been posted to mailing lists but not merged yet. I will
  submit a patch to enable HDMI once the dependencies will be available
  upstream.

- USB OTG: the carrier board has a PTN5150 but doesn't route its
  interrupt pin to the SoC. It should be possible to work around that in
  the driver by implementing polling, but that requires more work that I
  can perform at the moment.

- WiFi, Bluetooth and audio support: those are part of the DART SoM
  itself, for which schematics isn't available, so I can't easily
  troubleshoot them.

- PCIe: I lack test hardware for this.

The LVDS display panel is integrated in the carrier board device tree in
the BSP, I have split it out to an overlay in this series as it is
shipped with the development kit but isn't an integral part of the
carrier board.

May I tempt someone from Variscite to submit patches to enable at least
WiFi, Bluetooth, audio and PCIe ? :-)

Laurent Pinchart (4):
  dt-bindings: arm: fsl: Add Variscite DT8MCustomBoard with DART
    MX8M-PLUS
  arm64: dts: freescale: Add support for the Variscite DART-MX8M-PLUS
    SoM
  arm64: dts: freescale: Add support for the Variscite i.MX8MP
    DART8MCustomBoard
  arm64: dts: freescale: Add panel overlay for Variscite DART

 .../devicetree/bindings/arm/fsl.yaml          |   6 +
 arch/arm64/boot/dts/freescale/Makefile        |   3 +
 .../imx8mp-var-dart-dt8mcustomboard-v2.dts    | 500 ++++++++++++++++++
 .../imx8mp-var-dart-panel-gktw70sdae4se.dtso  |  99 ++++
 .../boot/dts/freescale/imx8mp-var-dart.dtsi   | 305 +++++++++++
 5 files changed, 913 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-var-dart-dt8mcustomboard-v2.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-var-dart-panel-gktw70sdae4se.dtso
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mp-var-dart.dtsi


base-commit: 05d3ef8bba77c1b5f98d941d8b2d4aeab8118ef1
-- 
Regards,

Laurent Pinchart


