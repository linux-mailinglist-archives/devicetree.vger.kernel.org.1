Return-Path: <devicetree+bounces-252155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 88073CFBB0A
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 03:16:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C8CC530A1AA8
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 02:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84EDD284672;
	Wed,  7 Jan 2026 02:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sc0uJRVf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA2E274B5C;
	Wed,  7 Jan 2026 02:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767751819; cv=none; b=ODFPH7GgrkbMN2JjfwgNicXaJ3cHYZ9dGStoUFBoG/8SztFZi/QkJgpEAPDhfTgd8cb+pOAp4mMxXfTMEMB4nj6wlclbfKDzG0E2Ha6EGtht1S5AljMK/FR2sKnPJTclTGW5CI7IVmfrj0C4lpuGq2ukTRCrX7wsdI1xuCbDMWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767751819; c=relaxed/simple;
	bh=fhg08yqc+4EARqb1gGn/pjIKfMLRt+25G01eZEiyKh8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q0oG3XKrUzpTrLquaH1OLg37Xwi/7+w2zN7ry1PUcYflzBME28b/hwzsLcBhqfFwoyJSPeZkRt8tiHneZEvmmxyNHKyyuiFy1/JagnQaJIngQyshi4Q9VfLLSBKoN2BMaB+BZkONF8ezIWoOcN/ieUPOM6xs8B867EPSzVRT7vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sc0uJRVf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B40D4C2BC9E;
	Wed,  7 Jan 2026 02:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767751818;
	bh=fhg08yqc+4EARqb1gGn/pjIKfMLRt+25G01eZEiyKh8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=sc0uJRVf/6sOheJQL0VHRXuDKD+pU7ao1Y1vxeGcY0pQbq5hPihbc+7ZX5At3vxfl
	 iJzgNx6QMbhhGBVBlI+nVrEpoUXBOveBUkp0Hn+MzJxlcukGsee1p36WzGGBHqqXJ0
	 o2n7WtuzUx1eIIsBBzW4chdu+PW9tXS3KC2I/jfHVTirTu9q3kZvu1ObETGkhyFAlC
	 LRvvZJG6SNVBP/T9B3RqXGTk2UHlhE1+ljmxba0RL/Sw0mLRlMp+qvKsg6MMIiKLab
	 5HqRHAD1wZkLaJTIl4G9FmHjh5xzTf2NUixXZEYg6w9oMvZ5kSQmwgthU0IqgEuaqo
	 t0RMud7zUV5ag==
From: "Rob Herring (Arm)" <robh@kernel.org>
Date: Tue, 06 Jan 2026 20:09:51 -0600
Subject: [PATCH 12/13] arm64: dts: broadcom: northstar2: Drop QSPI
 "clock-names"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-dt-dtbs-broadcom-fixes-v1-12-ba45874e4553@kernel.org>
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

The "clock-names" property is not documented for the "brcm,spi-bcm-qspi"
binding nor in use by the kernel driver, so drop it.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi b/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
index a187c8e788dd..85d997ab57a1 100644
--- a/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
+++ b/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
@@ -813,7 +813,6 @@ qspi: spi@66470200 {
 			interrupts = <GIC_SPI 419 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "spi_l1_intr";
 			clocks = <&iprocmed>;
-			clock-names = "iprocmed";
 			num-cs = <2>;
 			#address-cells = <1>;
 			#size-cells = <0>;

-- 
2.51.0


