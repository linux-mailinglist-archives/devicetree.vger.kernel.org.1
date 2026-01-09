Return-Path: <devicetree+bounces-253130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE36D07C61
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 09:23:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 41DF53034196
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 08:22:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D81DB31814C;
	Fri,  9 Jan 2026 08:22:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lgeamrelo12.lge.com (lgeamrelo12.lge.com [156.147.23.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343D33112B6
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 08:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.147.23.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767946952; cv=none; b=VMGNc0KwyRKhxIDWxbI2fqMvn4NkKin4FasSXo0rddYuVIhzpmINcdC1x0TzEP/Ny74ts9zjpyFVQWOWT/LKtCCY0upD+mwdDtwQ314exbHeFVcB3uGNuGdK3HwA677dtE4lx+uaPlpLZ3QCIot8vy7o370yraJJ3lXWaDMog3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767946952; c=relaxed/simple;
	bh=sV0CvQzL/cv9SkIj3m0GYgsGQ/IC74TlhqA1FiJlu/Y=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SgJhmeaerbL6j/vs9F8KtdWEfRc7cpS3fwPykZEGtMhi4z4byigqWVbo2kLr3JfgCvW0clEgF4kabgTWo+RvsRCExN+U38vI3sMHCMngsC5EYsfKs7EVB2iJeeqiYP3nVVaqKTDDQOfvlMITCV16kJ34qwyAODaRCIPBAVqw154=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com; spf=pass smtp.mailfrom=lge.com; arc=none smtp.client-ip=156.147.23.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lge.com
Received: from unknown (HELO lgemrelse6q.lge.com) (156.147.1.121)
	by 156.147.23.52 with ESMTP; 9 Jan 2026 17:22:18 +0900
X-Original-SENDERIP: 156.147.1.121
X-Original-MAILFROM: chanho.min@lge.com
Received: from unknown (HELO localhost.localdomain) (10.178.31.97)
	by 156.147.1.121 with ESMTP; 9 Jan 2026 17:22:18 +0900
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
Subject: [PATCH v2 0/2]  arm64: dts: Initial support for LG1215 TV SoC
Date: Fri,  9 Jan 2026 17:22:12 +0900
Message-Id: <20260109082214.1583961-1-chanho.min@lge.com>
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

 .../devicetree/bindings/arm/lge.yaml          |   5 +
 arch/arm64/boot/dts/lg/Makefile               |   1 +
 arch/arm64/boot/dts/lg/lg1215-ref.dts         |  50 +++
 arch/arm64/boot/dts/lg/lg1215.dtsi            | 290 ++++++++++++++++++
 4 files changed, 346 insertions(+)
 create mode 100644 arch/arm64/boot/dts/lg/lg1215-ref.dts
 create mode 100644 arch/arm64/boot/dts/lg/lg1215.dtsi

-- 
2.34.1


