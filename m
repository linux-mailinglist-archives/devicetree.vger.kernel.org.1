Return-Path: <devicetree+bounces-231782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F3AC11967
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:57:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5A20A1895F21
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 21:57:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D398A31DDBC;
	Mon, 27 Oct 2025 21:57:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="taEpqCIy"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 912DA2DE71C
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 21:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761602222; cv=none; b=qYYelypDCd2KYNg/gvzAONfPo5Dvs1/VVuS3aa7uhHAysEt298w9xxoEubUEyeGHRoXq1wmbkpxzUn+lmHl2SZys9sucxBw4I/+1FIagYOc0Y/T0rPdwtlkjF2Ee2ffLcV7sSD5JphC9D4Qrf9OO9ayWQmai9Kbbt0MqMLUOZSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761602222; c=relaxed/simple;
	bh=+K+gUmZB3sJXbuD9oZaHn/RXL88yKQAGTqo6IXebcCA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CqJD2gsKDn/cQP2Z2HsIQUj+DwM/FYdOJIMCFIO4sDHwAyIqSIRHpeihZSci++8HwXvpcIxQG3GLvbGCCALABElDbvTgf6KhpRS9Pby0mAjt2xefsDLD5EWKtXZyI9S13y/IIZ0/66j6jHo/LXnx1s/6zLLT10Jy3XKCff+uP4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=taEpqCIy; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (82-203-161-16.bb.dnainternet.fi [82.203.161.16])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id B711B1858;
	Mon, 27 Oct 2025 22:55:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1761602104;
	bh=+K+gUmZB3sJXbuD9oZaHn/RXL88yKQAGTqo6IXebcCA=;
	h=From:To:Cc:Subject:Date:From;
	b=taEpqCIyc9yIB+cDO+IBAfhE5FTWMx5vcrePdu8BF+kAqPO6E45jWfnjm1hhOG3hf
	 XVDYuEEuD/LNZED5UJqD9Ee7vyoojj9cWI2edLciogB8TQftWJPra7HsqdKM/Xd7rf
	 7sxwRFfcfijATSgdmU3k8yryJflNp2G52iqLwAVc=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v3 0/2] arm64: dts: rockchip: Add device tree for the Orange Pi CM5 Base board
Date: Mon, 27 Oct 2025 23:56:34 +0200
Message-ID: <20251027215637.20715-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

This patch series adds a device tree for the Orange Pi CM5 Base board
from Xunlong. This is a combination of a compute module and a carrier
board, so the device tree is split in two files.

The work is based on a combination of upstream device trees for other
RK3588-based Orange Pi boards and the downstream device tree, all
checked against the available schematics for the carrier board. The
compute module schematics is unfortunately not available.

The series starts with three patches that add a new tmds-enable-gpios
property to the rk3588-dw-hdmi-qp DT binding (1/5) and update the driver
accordingly (2/5 and 3/5). Those patches have been authored by Cristian
Ciocaltea as part of a larger series, I have incorporated them here
as-is.

The series is quite straightfoward. Patch 1/2 adds a new compatible for
the board to arm/rockchip.yaml, and patch 2/2 adds the device tree for
the board.

Compared to v2, I have replaced the tmds-enable-gpios support with a
pull-up on the signal in the device tree to unconditionally select TMDS
mode. FRL mode will be brought back once it gets supported by the HDMI
driver. This should allow merging this series without any dependency on
driver changes.

Laurent Pinchart (2):
  dt-bindings: arm: rockchip: Add Orange Pi CM5 Base
  arm64: dts: rockchip: Add rk3588s-orangepi-cm5-base device tree

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3588s-orangepi-cm5-base.dts    | 355 +++++++++++++
 .../dts/rockchip/rk3588s-orangepi-cm5.dtsi    | 473 ++++++++++++++++++
 4 files changed, 835 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-cm5-base.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-cm5.dtsi


base-commit: dcb6fa37fd7bc9c3d2b066329b0d27dedf8becaa
-- 
Regards,

Laurent Pinchart


