Return-Path: <devicetree+bounces-37139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D0852843C54
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 11:23:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D43D2933D4
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 10:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 342587BB1E;
	Wed, 31 Jan 2024 10:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="XEVJrs2r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E66279DBF
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 10:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706696448; cv=none; b=itxmd91SfUVqOxHAOxwUf/yDRB76AJYvEIQednCw0PvEkW36OWj14dby6BPsyEAkS3cDQOSsdYYy4H/AiFSvtoBsCfVlN5xI3wLPqsOsWUuBOngC2END9WfKdy3PV3U4jz5XbiPwQICwgThQ2mA3tLgcHcEKCwfZiohW7Gf6nFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706696448; c=relaxed/simple;
	bh=0dftQtlTKzHuj9IWE9pWuTjh5YsJl4kUvn8K1blNlbI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nBi0SCwszzTWlljolHOp9Fh02jhS+/gul7x3KeSC62KDTUfRJeZuONVfIYgp6soEE3xu9kxkPAuGcQhB+e3ebP+MRdRFt/Vh1yyCRaS/OdeefswlDCyAu8u0Vl1czSSyp0vHMFtA3IutxCLpA4obYgjGG8rPgxbGXrEny8ZpxvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=XEVJrs2r; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a359e6fde44so389462566b.3
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 02:20:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1706696444; x=1707301244; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DmXpMcL+a4xK2EumucI6WpPkZvFjtLKso9wLeHqAGmQ=;
        b=XEVJrs2r+nuYOcX7zvgUVad15w4EXtJMwhuwpJ0Vxbv+TjPZZgaPabRXYCodA+zSo4
         1sxUAMmk0pf+6aaSbWiQvCLmkrRXsUi5WcOSkaKM7+HqEedwLKVAWf7xwq0JjLDv0RYp
         YIpBz1mA2o1YFtynVC0SR39xpdI3rVNBFG8UZ0rxVXw/MgxiilO/OmXLH9Zf68cbYR48
         kIgnT/cUYOCOI3DvipEWPBrGuu6gAKRpfMuL3ywUrNusCW7jhKzdeI5d55hEsKVYCxRt
         CRb9lRXEPVaqpPkGG95jrR4R++Mx+3VYiwb3I30lVjBiiWHAehQCBp+Et5K3rQ579kmj
         Fuxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706696444; x=1707301244;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DmXpMcL+a4xK2EumucI6WpPkZvFjtLKso9wLeHqAGmQ=;
        b=SsTuc0UI4aoapYaWxYpAI6Dwrv6ooaRjvtT2LCKxnTYsWs3ZKY6bZEAuZ5UcLuXUTP
         iVt6ENatkcSsU/hwBgs1RCYVcWsSJZHwtat1xbDCpDoC44vtar8/PsXnv8r0XlZMhxK/
         +RS9GaDgSlUpmaWkyQpDkgQD1N/a8b1jUZ9DPsH9kZpm2MNopJOXkCKjgPU/6RbZPP0o
         9bN8Mcsc8hrU7cHe7zbuMAPgA0WNJONkbH4+eaAMJPZBi+9Odk7x5HgPudXuZBRyEkKq
         guuKvUQ/pb6ZyyFWDJRUj3x6I2nIBSAWq2h0fO+Xe5j2Ynp6LdxFRgRelJOpuDFmRAj7
         gHfQ==
X-Gm-Message-State: AOJu0YxQVJFTowD8XheWnkP7DRWzer5w7GB6lZrguVpG6NS2PCPeLvSD
	0/iUoKHMJrZtF9rWBG80QgvbBJyovMQn6FHNLeg1khRUFIKzUXNAYb8qHvUysqI=
X-Google-Smtp-Source: AGHT+IFps8X5FH8Musfo5MwfimvlCJZcxx2As18CP6nyr/QE/sbS3BP5FnFDabOBEk/CWz+wioHuQw==
X-Received: by 2002:a17:906:c30a:b0:a35:86ce:688a with SMTP id s10-20020a170906c30a00b00a3586ce688amr831060ejz.60.1706696444399;
        Wed, 31 Jan 2024 02:20:44 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUJfiUSNwUPkkDT9D3tyFM9Vl9zLiMWZOUFyRM6rIof/uQXZIHtxFDLd+1FerYw8jj0kxcx9YU7IGgsNZCa77/VrgZvOode/K8hFwgmjAfa11j9mmq/LBTy4o6irjpFbtvK5JdtazAOPK2DIVsMba5qb8vmPEKU99XBucjzarnjigcIK+YXTvnkdyCFN/2gd3e0G4Sav+iFK/vgPSsbh7uVLBizEJ8S9sXReZbUoyaAaWos98XjA6CMpLXMuL9uIq4pjTw5c6ZcuUbITEhI7IyZSI7WZMm/bR06CgTZRz1lG7scFs/dZMycnStuUEEmjSFQEkoNL5f9aLNof9TZ78NaCDHBx8ddvciMqOljCBSBQMcS6XTI5qqPJh5joe6YfN/PH5E9qbWLZW+kduL42le+rYyahtx9ZStC1yFYx0eDlT0QizBm7LYcV4MjKXpBj1Q1EHkEUyTgjiLXB2LmhDwsVx/Zg9zT5mTe1krzRBBQ0gdUVJlLw86Nt6siU4Ngv3zBxwqIR6LIS0weJCWOgwsfqn23IP23N01/S3N87I+n5IheLHpGlber42dtwGi8fgSpNGYgyIsAIITETpf1wGHP82+UVtYxcu1R4/n7p4T7Mxo=
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.87])
        by smtp.gmail.com with ESMTPSA id vk6-20020a170907cbc600b00a3524be5a86sm5212966ejc.103.2024.01.31.02.20.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 02:20:44 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: wim@linux-watchdog.org,
	linux@roeck-us.net,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	biju.das.jz@bp.renesas.com
Cc: linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 10/11] arm64: dts: renesas: r9a08g045: Add watchdog node
Date: Wed, 31 Jan 2024 12:20:16 +0200
Message-Id: <20240131102017.1841495-11-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240131102017.1841495-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240131102017.1841495-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add the DT node for the watchdog IP accessible by Cortex-A of RZ/G3S
SoC (R9108G045).

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- collected tags

 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index 5facfad96158..dfee878c0f49 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -264,6 +264,20 @@ gic: interrupt-controller@12400000 {
 			      <0x0 0x12440000 0 0x60000>;
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_LOW>;
 		};
+
+		wdt0: watchdog@12800800 {
+			compatible = "renesas,r9a08g045-wdt", "renesas,rzg2l-wdt";
+			reg = <0 0x12800800 0 0x400>;
+			clocks = <&cpg CPG_MOD R9A08G045_WDT0_PCLK>,
+				 <&cpg CPG_MOD R9A08G045_WDT0_CLK>;
+			clock-names = "pclk", "oscclk";
+			interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "wdt", "perrout";
+			resets = <&cpg R9A08G045_WDT0_PRESETN>;
+			power-domains = <&cpg>;
+			status = "disabled";
+		};
 	};
 
 	timer {
-- 
2.39.2


