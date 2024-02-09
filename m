Return-Path: <devicetree+bounces-40119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A37AE84F4E8
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 12:58:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 546261F2759A
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 11:58:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3505B2E852;
	Fri,  9 Feb 2024 11:58:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 752F12E657
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 11:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707479895; cv=none; b=ZqmUkXUNMBq3bZTmGJF9iSYF/xL++pqvvoyHNZO29KzzNv2S0ZBQLem7EMMkL0aW50NLznSv5HQD94mhonREytULEIlAjtQWM7aSOtLdTcOl8V+fj2a02oLnk0jTQiE/9jWZ3qA8WF3jvw7kw4pZb82n0M1nMV/PWC91xrGSoVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707479895; c=relaxed/simple;
	bh=ziVQhHbq0fKd+mRLuz6aLD8afKCWIAh3B+dAx+f0ObI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MhM/LVVRhLl9E0lBB3iDuEK+P35QROaUnpbN9DHlcQtWryEKHf0+7uRDY1hAX/I3LA/wXH6n1QKxmTh8aBgb/CQFu53H/5H/FeibC3ihi4q1C3GSj6KL3t6wqylarrOvaYjFnLT/RKr3nn/Vyilx1dpXR8/K6AwZGixz/8XCWWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6A20FFEC;
	Fri,  9 Feb 2024 03:58:48 -0800 (PST)
Received: from donnerap.arm.com (donnerap.manchester.arm.com [10.32.100.28])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D018D3F5A1;
	Fri,  9 Feb 2024 03:58:04 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Samuel Holland <samuel@sholland.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Nick Alilovic <nickalilovic@gmail.com>
Subject: [PATCH v2 1/2] arm64: dts: allwinner: h616: Add 32K fanout pin
Date: Fri,  9 Feb 2024 11:57:58 +0000
Message-Id: <20240209115759.3582869-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240209115759.3582869-1-andre.przywara@arm.com>
References: <20240209115759.3582869-1-andre.przywara@arm.com>
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
 arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
index d549d277d9729..12ffabc79bcde 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
@@ -256,6 +256,12 @@ uart1_rts_cts_pins: uart1-rts-cts-pins {
 				pins = "PG8", "PG9";
 				function = "uart1";
 			};
+
+			/omit-if-no-ref/
+			x32clk_fanout_pin: x32clk-fanout-pin {
+				pins = "PG10";
+				function = "clock";
+			};
 		};
 
 		gic: interrupt-controller@3021000 {
-- 
2.25.1


