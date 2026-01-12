Return-Path: <devicetree+bounces-253697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD98D10A0E
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 06:35:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 631A1303BC18
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 05:34:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 776F230F7FE;
	Mon, 12 Jan 2026 05:34:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lgeamrelo13.lge.com (lgeamrelo13.lge.com [156.147.23.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64DDB30EF64
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 05:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.147.23.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768196097; cv=none; b=Y859WJ0Jt5rGyjPISrBrkYL4iM4PEW/Mdhp01e9NUSU5e3mfphjFwc0VNoK3br7yIamhdqf0AoyM1q0+ibZj2euKVE6EUenjpQLAkJK1i3XzIBgmp0qjCCy8fWD8VbQmXsGDp7XUT7T3cH1cJNpaotXwrGrquG4FFGDia3FVSOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768196097; c=relaxed/simple;
	bh=1zkctpn7Z5gf47uk1JMYjvxvO0JY2PaAwPW4UKE/iDY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=oCWuR8kDbhQHseSnOqqUNIN5bMJZD5k4ymncH1NGjnCwiassr+80afNQebs6qW3wRRZ892JSXnkamY/KM5bIWOZnrEg1sJbRZNQmg1e7Aj94McQa4fFEwPqjHypnyiiiXbjueRD+/oSQ8aKvbMZzwOUXuRoAZ9L3MS8Wi001BHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com; spf=pass smtp.mailfrom=lge.com; arc=none smtp.client-ip=156.147.23.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lge.com
Received: from unknown (HELO lgemrelse6q.lge.com) (156.147.1.121)
	by 156.147.23.53 with ESMTP; 12 Jan 2026 14:34:47 +0900
X-Original-SENDERIP: 156.147.1.121
X-Original-MAILFROM: chanho.min@lge.com
Received: from unknown (HELO localhost.localdomain) (10.178.31.97)
	by 156.147.1.121 with ESMTP; 12 Jan 2026 14:34:47 +0900
X-Original-SENDERIP: 10.178.31.97
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
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/2]  arm64: dts: Initial support for LG1215 TV SoC
Date: Mon, 12 Jan 2026 14:34:19 +0900
Message-Id: <20260112053421.3185738-1-chanho.min@lge.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series adds initial device tree support for the LG1215
TV SoC and its reference board

Chanho Min (2):
  dt-bindings: arm: lg: Add compatible for LG1215 SoC and reference
    board
  arm64: dts: lg: Initial support for LG1215 SoC and reference board

v2:
 - Switched to "lg," prefix
 - Dropped vendor-prefixes.yaml change
 - Fixed DT coding style issues (validated with DTB_CHECK=y make)

v3:
 - Removed changelog from commit message

 .../devicetree/bindings/arm/lge.yaml          |   5 +
 arch/arm64/boot/dts/lg/Makefile               |   1 +
 arch/arm64/boot/dts/lg/lg1215-ref.dts         |  50 +++
 arch/arm64/boot/dts/lg/lg1215.dtsi            | 290 ++++++++++++++++++
 4 files changed, 346 insertions(+)
 create mode 100644 arch/arm64/boot/dts/lg/lg1215-ref.dts
 create mode 100644 arch/arm64/boot/dts/lg/lg1215.dtsi

-- 
2.34.1


