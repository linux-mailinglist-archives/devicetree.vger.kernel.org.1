Return-Path: <devicetree+bounces-188166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 271C0AE2FC0
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 14:07:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A91C41893183
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 12:08:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 678211E00B4;
	Sun, 22 Jun 2025 12:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mF5hz75y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FFC1990B7
	for <devicetree@vger.kernel.org>; Sun, 22 Jun 2025 12:07:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750594074; cv=none; b=YStrRLWWyTAPCdEplx5ZP51T4qd5Qt3iHZhODExdgInBreQ14RWfYnH/qLt2mxDueI2+M/MuNBS0+0ogNMkk3dryCg417TPEJwUlq6xzuE4nv8+7fDZGoS3hpukOzUif+9tf518l0nwWMfhCyIrAyQQoAv5cVByeLWLoGyI2ivM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750594074; c=relaxed/simple;
	bh=1PU1Pt5KoAJ1YW8g73w/Ld9h8syXwSEUUUhf2GQFCMg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ueWq4Lc/KiuIewYQ1UgAMqOTe8xEM7KSZ41CDNZNTd5HTKa8yn8whTjZzz25kXx+JBDGXT8dr+w5fuxAuXEtuZ/jwEZoANsLS624jd8wByumFf3mMEuQxXjt96+yI7NDskMV2uZgPo+kCOqOiJg0meT2MEZvsn6s1v3f8Dt5Hv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mF5hz75y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D96CC4CEE3;
	Sun, 22 Jun 2025 12:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750594073;
	bh=1PU1Pt5KoAJ1YW8g73w/Ld9h8syXwSEUUUhf2GQFCMg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mF5hz75y/jEntR7VRhMGgUxnY3VD08xyfT3Ye11maSrwTLBOrv2RFIkft2314/brQ
	 FMGwsc0HmherghjjmByh3MiLhGLCY24Gi+0dd+iUuldBwl5nXIhMjdqy302ONgjYPI
	 rS1DERNO4f5b7aRWSMsUU20PolN3VbSBg1ROGfxERv+9SFoWYHZ/LABImjV/xyFxyW
	 9S3bOygullFxBgmel96nmC5ZQjj6hytJDLxOXEuLhxFpWtyMCoCZLKBkBiKEctKMNz
	 VhCgsXhWH34Lnp7+l1psifx755MhuG8BNc4i8VSZmCRH8pYiZ+YlbGr0E6FdCp8dMB
	 VdNcGUtPcfPNQ==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowskii+dt@linaro.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 6/6] arm64: dts: socfpga_swvp: remove phy-addr in the GMAC node
Date: Sun, 22 Jun 2025 07:07:37 -0500
Message-ID: <20250622120737.600336-7-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
In-Reply-To: <20250622120737.600336-1-dinguyen@kernel.org>
References: <20250622120737.600336-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This addresses this warning:
socfpga_stratix10_swvp.dtb: ethernet@ff800000 (altr,socfpga-stmmac-a10-s10):
'phy-addr' does not match any of the regexes: '^pinctrl-[0-9]+$'

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts
index 6b9fe154f677..ad52e8a0b9ba 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts
@@ -68,7 +68,6 @@ &gmac0 {
 &gmac1 {
 	status = "okay";
 	phy-mode = "rgmii";
-	phy-addr = <0xffffffff>;
 };
 
 &gmac2 {
-- 
2.42.0.411.g813d9a9188


