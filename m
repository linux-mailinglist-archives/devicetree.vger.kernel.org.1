Return-Path: <devicetree+bounces-252156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBA5CFBAB3
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 03:12:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 29F9E304422B
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 02:12:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E3AE286D7E;
	Wed,  7 Jan 2026 02:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDp8M6T3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA99F26F29C;
	Wed,  7 Jan 2026 02:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767751820; cv=none; b=h4zMg4qBDQAZn6p+b9jHcw44nxn9tvUCBpMMGlLh88v4Rrf/qJjG2WWhwCO4YjXlIuP5PYrhBXpGT/d7eZ32d7Jho3DxZCCrw+05ssfVjXDsHZkqQx4CreGUMywF842AMrhbMVdgw1Q9Hx8m3SnTvjawAsWmUZZc92/BNBrw5tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767751820; c=relaxed/simple;
	bh=ie60J03v4TX/7GV2V7dobRqaF0Gx1PdanyG9vMdm8xo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dkUmOss0N0EtDUw+eZXTBT27sn2XkSrJq29ShzKlNDy5G3mh2ef9d6aS3N8ahNUmXN57sxFz/ooX9hnoOfURewikXZK9/12HjY4Te3p6mH6NncK6Xk13X+3WFS1MHGzpJkTFyccsG3SKGS6fv7iLmnD0pb58J+UmRTyJcWJrvHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDp8M6T3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0D35C16AAE;
	Wed,  7 Jan 2026 02:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767751819;
	bh=ie60J03v4TX/7GV2V7dobRqaF0Gx1PdanyG9vMdm8xo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=JDp8M6T3BxVKPk0PRUQhcUypsxfTQrVdYoPaxvb9y7UxZ3w3cP4l9v0iEUGx/AVwg
	 j2+qJJR0j1Y+knkEXBdMpp/x+dIiaMMYCjpKAVS8mMBvEYMlp/7gyZEGMTcqshgJoF
	 WtXTmlaegoxIq9RZLMoXT+NwsVqJ46W+M8GXMNTEy+pKr6HeFRqxsITCSGHtrRTtXd
	 K9MU2zja1dqYFamBJiZUhIzzXZzO7M+ZXr/h94zSqOT8nAsrKoGembtsr51UdsQ5ts
	 n9CMtQlDZ/MYTlTrVzNFERdbJL6+7uG1pdzayMaPYNuyT/d3/uXm+39fuF6BuSRQcl
	 9ItPQ+bkNnrxQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Tue, 06 Jan 2026 20:09:52 -0600
Subject: [PATCH 13/13] arm64: dts: broadcom: northstar2: Drop
 "arm,cci-400-pmu" fallback compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-dt-dtbs-broadcom-fixes-v1-13-ba45874e4553@kernel.org>
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
In-Reply-To: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.15-dev

The "arm,cci-400-pmu" compatible is not documented as a valid fallback
nor is it used, so drop it.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi b/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
index 85d997ab57a1..f0374b90f6aa 100644
--- a/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
+++ b/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
@@ -505,8 +505,7 @@ cci@65590000 {
 			ranges = <0 0x65590000 0x10000>;
 
 			pmu@9000 {
-				compatible = "arm,cci-400-pmu,r1",
-					     "arm,cci-400-pmu";
+				compatible = "arm,cci-400-pmu,r1";
 				reg = <0x9000 0x4000>;
 				interrupts = <GIC_SPI 344 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 345 IRQ_TYPE_LEVEL_HIGH>,

-- 
2.51.0


