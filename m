Return-Path: <devicetree+bounces-252647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7F0D01FEC
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:01:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C0B2133E3B56
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 08:53:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 855C835504E;
	Thu,  8 Jan 2026 08:23:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lgeamrelo13.lge.com (lgeamrelo13.lge.com [156.147.23.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3E203ACF04
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 08:22:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.147.23.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767860578; cv=none; b=sPc66skjH0lpzMG0aFbdAkrb4BaQXU78+xVsuK+kP8rtjbcgkLT9kPZ116d6W30YpiYESJgl8xDp4SeykOF/BcQ6f+Y12kzQZjG0I2ns52Fvx+7HC+0Bk2C/EtS31YJauxeP2a6TqXAFjHP/ez/o4sqiRNygwPn19vNTFPbQXws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767860578; c=relaxed/simple;
	bh=0pXxzRKiDQjai+ajBhKT84pD8dthkgw/pT19nUhMkE8=;
	h=From:To:Cc:Subject:Date:Message-Id; b=eWp6bg0t07JkeWc0Ib5QbdXb1U9GXr3uAV4j0eGeo4G2UvL8DU6Jx6GaOQ7s4fRZ74F8dvSnHRuHCVdMJVGgcZoUczJpGK8H4T6M8k/PYQu71P5RBHd4fxlzfK+gubqH21FesXvm/azZ1Q0MQ4UEG55RN1bQyQgkxmnGhTLaQzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com; spf=pass smtp.mailfrom=lge.com; arc=none smtp.client-ip=156.147.23.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lge.com
Received: from unknown (HELO lgeamrelo04.lge.com) (156.147.1.127)
	by 156.147.23.53 with ESMTP; 8 Jan 2026 17:22:40 +0900
X-Original-SENDERIP: 156.147.1.127
X-Original-MAILFROM: chanho.min@lge.com
Received: from unknown (HELO localhost.localdomain) (10.178.31.96)
	by 156.147.1.127 with ESMTP; 8 Jan 2026 17:22:40 +0900
X-Original-SENDERIP: 10.178.31.96
X-Original-MAILFROM: chanho.min@lge.com
From: Chanho Min <chanho.min@lge.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>,
	Kael D'Alcamo <dev@kael-k.io>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Cc: Chanho Min <chanho.min@lge.com>,
	Gunho Lee <gunho.lee@lge.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] arm64: dts: Initial support for LG1215 TV SoC
Date: Thu,  8 Jan 2026 17:22:10 +0900
Message-Id: <20260108082213.6545-1-chanho.min@lge.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

This patch series adds initial device tree support for the LG1215
TV SoC and its reference board.

Series overview:
  1/3 - dt-bindings: vendor-prefixes: Add 'lge' prefix for LG Electronics
  2/3 - dt-bindings: arm: lge: Add compatible for LG1215 SoC and ref board
  3/3 - arm64: dts: lg: Initial support for LG1215 SoC and reference board

 .../devicetree/bindings/arm/lge.yaml          |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/lg/Makefile               |   1 +
 arch/arm64/boot/dts/lg/lg1215-ref.dts         |  51 +++
 arch/arm64/boot/dts/lg/lg1215.dtsi            | 304 ++++++++++++++++++
 5 files changed, 363 insertions(+)
 create mode 100644 arch/arm64/boot/dts/lg/lg1215-ref.dts
 create mode 100644 arch/arm64/boot/dts/lg/lg1215.dtsi


