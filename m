Return-Path: <devicetree+bounces-141461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F0AA20C61
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 15:56:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC36F1882D01
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 14:56:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 887C81ABEC5;
	Tue, 28 Jan 2025 14:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="EsBDeLi/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86270F9F8
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 14:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738076183; cv=none; b=iwBNZzu2zKn6NwATKd94JECTdfTO9bcJY1CqtSjxjZs8rqg3pSn80e3OXQHWxrjeupa2FK02LUVhyW1XfAXBvF98qBkLfV0zBy/cBlHJCcwPbYafvvdK6FLLjVk75jRutX2JDWjxnt4rUxwE2IBifXvTpavidWNCbVRanwJwJIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738076183; c=relaxed/simple;
	bh=21SeOvY6ByRxcSIZlyqX+loE2MHZLG32rVl6AvrXtEs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ABy9isxfoHkZaZPVlgRO59lcPH92gX4qOqlu4J57onzm9ra1wHfBQoSzs5jr1HFMLZ1h5dpos9mt2Du7z6M8EgLbsxYF2WHR50Sx13aUVXojRMzpy9DpD/Qnvhc0pKyB9xSU7awBELwDdJ1nZqsx8EYh55bIWdUa9adknUf+mBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=EsBDeLi/; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-385ddcfc97bso4872899f8f.1
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 06:56:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1738076180; x=1738680980; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3Z9cpUaPuDjruyZksgeQTZRAe8TrBK168phW1N9vCcE=;
        b=EsBDeLi/DblKPXHCd05B5FAY6IPTWeB/L6nNE9PYJJWoBFFjGOG9NbYQ9t+3QD3xYR
         9QDd/G/xcLrv7yustgHb31KbbzEKYIlX7y6VUeXpLt/fGjx4eIrfXLxfM3Vmq1Ic+ovZ
         JcPE0UAs7G5ItXMDQ2u2SZMMwmhYswEEuiMYArWZKXIYrYNljwDkffnSi2SRq3ddC/sh
         YPf65iQ+EU8jWVWIywlR+1mR1zv8+64R6xGt3UCPtsBelYuZtgqiN5u0rVsusdi3wro/
         wOZimZJWt26xFOTiTx/s+ForcBx8EB4sOJZOVSoG0e3rEGq2oziflwQo7ZdPPQPS5juE
         cCLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738076180; x=1738680980;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Z9cpUaPuDjruyZksgeQTZRAe8TrBK168phW1N9vCcE=;
        b=Cvqlgwws+IAHdmX7v9fshPpijYANt6/gcZBENZ7p/IK2wevnBg5URRoosj/amgP8i9
         7jwgH5NWnZvXwHG/M1h9RTsIjmhU8qbNps7cNv+o0AXsMAlzjEwbmrwc7fgOD5P/3lpj
         75wava+WHkEDOx/q+dW925ygg6uCXyJKVl1DQOyi79oRhlMOV3cZsXny+Ql1QC2cUtfd
         n0TrU7J3tKjJIMPg3cSGjObYo7Fx5DquyR+/uwBBn5v+fDnoU67OyoTFPj1vuXZx1dXO
         n9FV/CAYdeXG+JWoC/Jw/5d5/nY5sre9vBCMJjAegkJknsNoTUbA+f7E8KRBb2g5E8Mt
         2G9w==
X-Forwarded-Encrypted: i=1; AJvYcCWuy9qA54orSnWxNk7PIgajyFLya8HBY5bJ9uW0AIuWctvKHGCmt8KT2E+PyZObLlCr7LLtORQIn/sV@vger.kernel.org
X-Gm-Message-State: AOJu0YwP2tbKYQNcKG9PeGq5iFGdu933V5wGkvb5jWy3k6Hc6r55q18E
	laF5Z1XbQoDAPu2t5HoNieM0Jozi8ePjOJcMrhgpwPets5BcN9h4Uw1S5pVMmow=
X-Gm-Gg: ASbGnctSUEGGkxknfh1xU8pNzX6rn5oBZhRA6C9SVhpC/xlVY8GGlDmktj/PzDHnH51
	aTR8NVp/DdUntmLgAVII8Jn62N4vs8sRYTZXPbYUOIaowguyq8iEdmxgK7Fvgol61l8YJAGvqN2
	KoE40/6Uq+HglHULhNmUaO5/t7uZJ/mJjEayx57pZh0cnsQHOGNDG6x7KsP2E9k/A4fFmFJReKN
	HQhyM+vJJhXe1X1yrg2stystOVr5+yOHvfsYao9UAYkoaVFUsZLkeE82SeQjveR2gmvBO/nbZ1B
	75DFf9SR/LDKWcv5XMxUjvWPNEueh0LzKU70prMabPR7
X-Google-Smtp-Source: AGHT+IFYMJChOkt/kFCW+/q8vsYKRCAw6Yd1NDX9sbpzO9pAWrOvoTf8g8sQJF9vogfk3sA3X96PWA==
X-Received: by 2002:a05:6000:2c5:b0:37d:4647:154e with SMTP id ffacd0b85a97d-38bf5655bd3mr37377205f8f.9.1738076179649;
        Tue, 28 Jan 2025 06:56:19 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.35])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd47f0fdsm175317175e9.5.2025.01.28.06.56.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jan 2025 06:56:18 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	magnus.damm@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH] arm64: dts: renesas: r9a08g045: Add OPP table
Date: Tue, 28 Jan 2025 16:56:16 +0200
Message-ID: <20250128145616.2691841-1-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add OPP table for the Renesas RZ/G3S SoC.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

This depends on https://lore.kernel.org/all/20250115142059.1833063-1-claudiu.beznea.uj@bp.renesas.com

 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 28 ++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index a9b98db9ef95..50cdad52ca75 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -28,6 +28,33 @@ audio_clk2: audio2-clk {
 		clock-frequency = <0>;
 	};
 
+	cluster0_opp: opp-table-0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-137500000 {
+			opp-hz = /bits/ 64 <137500000>;
+			opp-microvolt = <940000>;
+			clock-latency-ns = <300000>;
+		};
+		opp-275000000 {
+			opp-hz = /bits/ 64 <275000000>;
+			opp-microvolt = <940000>;
+			clock-latency-ns = <300000>;
+		};
+		opp-550000000 {
+			opp-hz = /bits/ 64 <550000000>;
+			opp-microvolt = <940000>;
+			clock-latency-ns = <300000>;
+		};
+		opp-1100000000 {
+			opp-hz = /bits/ 64 <1100000000>;
+			opp-microvolt = <940000>;
+			clock-latency-ns = <300000>;
+			opp-suspend;
+		};
+	};
+
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -40,6 +67,7 @@ cpu0: cpu@0 {
 			next-level-cache = <&L3_CA55>;
 			enable-method = "psci";
 			clocks = <&cpg CPG_CORE R9A08G045_CLK_I>;
+			operating-points-v2 = <&cluster0_opp>;
 		};
 
 		L3_CA55: cache-controller-0 {
-- 
2.43.0


