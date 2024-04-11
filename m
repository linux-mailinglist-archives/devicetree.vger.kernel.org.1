Return-Path: <devicetree+bounces-58303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C462C8A152F
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 15:02:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4C798B21520
	for <lists+devicetree@lfdr.de>; Thu, 11 Apr 2024 13:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DDAF1E4A0;
	Thu, 11 Apr 2024 13:01:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/X/UEdh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA69624
	for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 13:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712840518; cv=none; b=AGVFMp2jAOG8PhqXaGEdhX/Ujx5nxrLjZ4BBstxC0OJ2qthHCz1suwjsXTRoslbTokq17jnT2UX0COFQKLFwRS8W5RObRVrrs1CO9Qgr+qAivbwVS8GhJEHzRiKU1iQqHHTEfKNQ8/AIbPf/zZeK6/aasWhNOmBCOtJLY0U02iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712840518; c=relaxed/simple;
	bh=NmTuJ01mkdJ4M9SVkg9GPWdStss5bWliTugsuTs2VlM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=swaVDm4XXBSgjgEHNkNM34oHEgSjuQGWgIML4QkP/GLNc/o/EkwMArIHPuD84ZUZM9PNxl5fo76ZPeGIdWaBiIXf/fEQlMob6LF/B/WxyA6PHELg7sy4UwAw7YAGMAago75T2a8VmydPy+Y1HlxXeYSkuphOTHNsUHoLwkXLW3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/X/UEdh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7454EC433C7;
	Thu, 11 Apr 2024 13:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712840517;
	bh=NmTuJ01mkdJ4M9SVkg9GPWdStss5bWliTugsuTs2VlM=;
	h=From:To:Cc:Subject:Date:From;
	b=c/X/UEdh/jiwhdWH1yldKABp0w5pXUdODB2ZvPtWR9kT/vJ7l6NpKQlKp5q3Hmzqn
	 ZAdmGl7R1F/OxjKxz8d3AXCkuBm0yt2JPPh+iNRkvM4En+76SfAYjzGAYmObzKMc2P
	 tmeCBVKSLF3XSVKD7kc9UrZIQ190D57JhColEjyAINfnWSBdbUnEu7CREHzi7LtcW1
	 ye3wrZV//bk1quYBgXKNWtNrHMjP9v43vsrOPt442QxJ+cQDyFEoq5ZsfB5tScFcQB
	 w+mUH56YSVTuKZ6yT2D+E9IDBDG2EWR1xiJLBbvTLZQ4v2KcyC3EJ4r0dbBLlEO+wh
	 D2Nl+lq2Wnynw==
From: Niklas Cassel <cassel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Michal Tomek <mtdev79b@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Niklas Cassel <cassel@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 0/2] rockchip pcie3-phy separate refclk support
Date: Thu, 11 Apr 2024 15:01:46 +0200
Message-ID: <20240411130150.128107-1-cassel@kernel.org>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series is based on: linux-phy phy/fixes
(Since there are other rockchip,pcie3-phy changes there that have not
yet reached mainline and which would otherwise have caused conflicts.)

Hello all,

The rockchip,pcie3-phy PHY in rk3588 is by default configured to run in
"common reference clock" mode. (Which is a sensible default, as the most
commonly used clock configuration is "common reference clock".)

However, PCIe also defines two other configurations where the Root Complex
and Endpoint uses separate reference clocks: SRNS and SRIS.

Having the Root Complex PHY configured in "common reference clock mode"
while having an Endpoint connected which is supplying its own reference
clock (i.e. SRNS or SRIS configuration), will either result in the link
training failing, or a highly unstable link that continuously jumps
between link states L0 and recovery.

Add a rockchip specific device tree property that can be added to the
rk3588 Root Complex device tree PHY node, if the connected Endpoint device
is using a separate refererence clock. This way we will get a stable link
when using an Endpoint configured in SRNS or SRIS mode.


Kind regards,
Niklas

Niklas Cassel (2):
  dt-bindings: phy: rockchip,pcie3-phy: add
    rockchip,rx-common-refclk-mode
  phy: rockchip-snps-pcie3: add support for
    rockchip,rx-common-refclk-mode

 .../bindings/phy/rockchip,pcie3-phy.yaml      | 10 +++++
 .../phy/rockchip/phy-rockchip-snps-pcie3.c    | 37 +++++++++++++++++++
 2 files changed, 47 insertions(+)

-- 
2.44.0


