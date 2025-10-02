Return-Path: <devicetree+bounces-223252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D96D4BB273D
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 05:47:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7C9C619C6633
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 03:47:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FF892D9EF3;
	Thu,  2 Oct 2025 03:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="h+KLTpD2"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26396285C85
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 03:47:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759376840; cv=none; b=QfXfCq7nrpxajXRwOP4Kt9gZJ/8C8Ea10ousFjuLL3hWcnfqr2Dt5lgXLQwwCbKFSpCKxaeHHpkhd5qAYr9uF+LJbyhewM4A/sVvP+2/nb+Z64VChMGQn06+kruK6xgiTf0d4B6MI8SqDfq5cfwf+kjYThke9odLDQ2LF9kduwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759376840; c=relaxed/simple;
	bh=CqJTrZYTK3Z0ORhw23J/pfO/CDry02I1G+tj+KnzEhY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dATb66yvQYMF8GRVG/gA9Ot3gtA2/d/FjZJs9EPHZtAEg+NsOy4iU4lL2Pu0gX9PN7qCwZqd+ZNyyOHMdsNvwP1CQemt2xsxOoQpFit32cdD5RC8U484YfNgcHaV0Mu4MtJ8Ys75Z/NoZgQeC8dDWHba0JjNy+cEmNd4vskC2PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=h+KLTpD2; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 3146817D8;
	Thu,  2 Oct 2025 05:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1759376745;
	bh=CqJTrZYTK3Z0ORhw23J/pfO/CDry02I1G+tj+KnzEhY=;
	h=From:To:Cc:Subject:Date:From;
	b=h+KLTpD26CpYFaq7lCJm7HyNWgLavxGZpu5BXNFW5yNQtTZHVkdTE6ZaqsylAOo+r
	 j8qoIPSiHxcPIiV7yB22e6fFMz2HZmgIDOwtu61rDBNj1eddvr/LTLEvhIEm1zwhrt
	 oHGZGXbBB3jTfg1Bs0Lovjo6kOThluY/yCb4bjSo=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Algea Cao <algea.cao@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Muhammed Efe Cetin <efectn@6tel.net>,
	Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>
Subject: [PATCH 0/3] arm64: dts: rockchip: Add device tree for the Orange Pi CM5 Base board
Date: Thu,  2 Oct 2025 06:47:05 +0300
Message-ID: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.49.1
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

The series starts by adding a new compatible for the board to
arm/rockchip.yaml. The next patch documents a missing property in the
rk3588-dw-hdmi-qp bindings that the device tree needs. Finally, the last
patch adds the device tree.

Patch 2/3 may be slightly controversial as the new DT property could be
better named. It has been supported in the driver for a year now, so
there could be users in the wild. I have therefore decided to keep the
current name. I am open to alternative solutions.

Laurent Pinchart (3):
  dt-bindings: arm: rockchip: Add Orange Pi CM5 Base
  dt-bindings: display: rk3588-dw-hdmi-qp: Document enable-gpios
    property
  arm64: dts: rockchip: Add rk3588s-orangepi-cm5-base device tree

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |   4 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3588s-orangepi-cm5-base.dts    | 342 +++++++++++++
 .../dts/rockchip/rk3588s-orangepi-cm5.dtsi    | 450 ++++++++++++++++++
 5 files changed, 803 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-cm5-base.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-cm5.dtsi


base-commit: c17b750b3ad9f45f2b6f7e6f7f4679844244f0b9
-- 
Regards,

Laurent Pinchart


