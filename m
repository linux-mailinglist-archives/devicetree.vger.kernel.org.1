Return-Path: <devicetree+bounces-38375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E4E848C7D
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 10:33:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D106D2823E5
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 09:33:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E885618C28;
	Sun,  4 Feb 2024 09:33:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49DB918B02
	for <devicetree@vger.kernel.org>; Sun,  4 Feb 2024 09:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707039196; cv=none; b=AySugxi65O075IOKeEKZnjzD9iTxiGueLYlZ/cmcYDN14MRUzdkyr5p88zxq2h/l7JK+4oPwZUPHQvMBZvz/7h7+0WMl6A4VENtQzSWJdANYHL/nqI8WRHxH4VNC/MoffbyIzoen5pKHqVv5vU40b1fH4ip0jXvhc6J7syCYLuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707039196; c=relaxed/simple;
	bh=YYVhGRbWCtwXW7nZftJeupAIB/Gnlz1wWaOArvguRhQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Yi+f0p5KtJWYc7cNXDFG23V4DD0tFwlcLpVf7VyTPCpzuoW2LG8+wK07bJH0FZb5kJHooltSZyFGsRFREMnMnsRBvRFKeyNzOFOg4CKgRnqY9FBnLNRhdtFDRVSuKy/CPcQ6Q2kwTM261A64Afs+Nj2L1d2evd2WtTriF20ri2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D876CDA7;
	Sun,  4 Feb 2024 01:33:50 -0800 (PST)
Received: from e110479.fosdem.net (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8DACA3F738;
	Sun,  4 Feb 2024 01:33:05 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Samuel Holland <samuel@sholland.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Nick Alilovic <nickalilovic@gmail.com>
Subject: [PATCH 1/2] arm64: dts: allwinner: h616: Add 32K fanout pin
Date: Sun,  4 Feb 2024 10:32:54 +0100
Message-Id: <20240204093255.148972-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240204093255.148972-1-andre.przywara@arm.com>
References: <20240204093255.148972-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On some boards the designers saved on a 32KHz crystal for some external
chips, so the SoC has to help out, with providing a 32 KHz clock signal.

Add a pinctrl group node to allow DT nodes to reference this fanout signal.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
index d549d277d972..107256eeedc3 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
@@ -256,6 +256,11 @@ uart1_rts_cts_pins: uart1-rts-cts-pins {
 				pins = "PG8", "PG9";
 				function = "uart1";
 			};
+
+			x32clk_fanout_pin: x32clk-fanout-pin {
+				pins = "PG10";
+				function = "clock";
+			};
 		};
 
 		gic: interrupt-controller@3021000 {
-- 
2.25.1


