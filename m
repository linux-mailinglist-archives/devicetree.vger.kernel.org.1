Return-Path: <devicetree+bounces-230547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC6EC03861
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 23:24:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA25A3B33EB
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 21:23:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B32A2C21CA;
	Thu, 23 Oct 2025 21:23:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VcXrTnVT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B065C29DB61
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 21:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761254619; cv=none; b=RmGhnIdqYfm/7iOMiYOSoj0OpgQi9nKWXDgXxdaa6J0AWISAl51sLQjTukVlDu6Zm6z5lQgWg2E1GNgueDn3ErjF4n2XhWddcUdShiPJ24Ur197Q7iYxyO+smC3ko2CclNKyJlXPQv9Dc5fD6h9fEY0bVvXUBaB/x/OGE8gSvCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761254619; c=relaxed/simple;
	bh=Hfh9WjdEQxCZ8I0yJir8ZS0G45UxBabJOvg8vjvG368=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Bj7EHR08AUnK2PtjxWYjpMdCkb5JgKjr5TrtiSldlrquiFy5W4qM//PcLpzyvU5mjz7eyoFWPDTXk8TOnDRdsqmFt1INU2lK5z3sZcxMGeOiheee3aWWrqTlmTVEQYHaudGY7faclYRv/xZRvehi0dC0VWxUE0wyc7urb0dWLIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VcXrTnVT; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-b6ce696c18bso1153114a12.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761254617; x=1761859417; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sNkbd0UXLu9oXo0e+hPmN+PE9L6xmYQ4u41/uUExCOA=;
        b=VcXrTnVTrDviD0TYEGdEaPxNOc3SzOq0FF/w7RbBR/Fn+GamFkGcyuIzvaIq8UVD/F
         lASOW8oQr8D2ZEa5C4EQZL7HwIPsHWB3SMIeKG+SndarjTXVypGgEiI7CCyW55KdGFdO
         GNZn5wEiIQx9gYZ4gIf9tITZ3+rkOtcSSBgKeOrRzXApRsFNb2QoLUOsIBNUW3dgcf5n
         dj0MzVxCwtoXtvlDujq2hCt88Rh2IfXOK7CqHNUP8pQC/VOcAiPFFMwLPUoa40NxAhGE
         tx0us1hVgB6sMVDtKjPJU8rkceFAmFMoEJ8Tn2iyaRa1Pbas+437A4zm9m6YidVYVTzm
         7h1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761254617; x=1761859417;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sNkbd0UXLu9oXo0e+hPmN+PE9L6xmYQ4u41/uUExCOA=;
        b=aUvGvIpi7r7jnSU+sT2HfwD/WOMXABu4NzreV2Uid7+bDuO0c3TJ0hYdJnpYV4isUu
         v/LObRH+5dtTY41tT/emAZ/JLeigX7kzrQTYus7D0imPf2lf9HD9ueNbyWZ0vmouDEcG
         +1UEul3XqySigwIM1jVW8FjgpdOkrd8MMVL3VTfrxgRtMNsKsYADbQMvNdL41md2/UAE
         yfqGgfgJPAkcEfhObalef1h4Fl+OLdehkGh6BvjNvbYuaAIoXVSP3fRuIPMqFY/fuq2u
         c2GQCXIvztq2ay2OFVwn/wljWcZ/6YiWmU4A4ndGsoEdoWHYPa79IiYdo7wGDRMEkbzj
         LpFQ==
X-Forwarded-Encrypted: i=1; AJvYcCXj/iHFXY6Q4J2c94ZdnYMjmaRFLh2qXgMN6CJkmDw7d0vr/OFKtdobR1dpr1q7chg6Q+yZtSI2L/7N@vger.kernel.org
X-Gm-Message-State: AOJu0Yye1HXPatTPUxvgxI7tlQ+ZoVPJ5wixQBwaqmLgH1qzkR2fMCp4
	1Yaebf3m6Oi7OgCkrJ33B+GSghx3dQGUxsXBMRJHtn2VDP9C52hpKK4c
X-Gm-Gg: ASbGncti7lGyzDQQam//U7Tpd/7qSDIHQcH+QghjkFr125IXcd1wHR5gK0c62THvTT5
	xowCeTH9OnW152ZsVWkMg3XfWtYJVdv3lx+5670DhiD/aQLfYHraZjNeUhTyuSvmP6qzx1dxACJ
	Xv6yoaEPJCdlZ3BJqZKFcLX69E6d25sa8wJv/ENt7yCcLiNsFnpFb8/ZBmAOxmWON9R3k3pXA6x
	sZsKp/+IMhFga0Jig4aOZ0Z3OBO+F+q6UAJqWCCXJrMTGhoNL4tUHyeO2olHDrHUUCOeMvb3g+B
	LcJzhcEtoWwem4qhMVviXXLCo1CGEQTn+pqIXWN/+3jazg8fOOiCtwFHjqdaehP6WaSzTmNq3e7
	c4TaVFDQzaZzViblLVb8HWT9ILnpxn4l7SKx8eC+eO4ALeVff6EbSDTwkhgbFyVcDFzjOivCr1p
	qQ6U7yPsmsrom6Hqaq7/hZFYvjaEOLoQ==
X-Google-Smtp-Source: AGHT+IFbA+HgBU3XEoqT7F3d0RYSfLjXykzkXU9lhTkqF1pJY9BOP1ZqZxjjoRuBT4pvIA2X1rUqsw==
X-Received: by 2002:a17:903:1d1:b0:290:2a14:2ed5 with SMTP id d9443c01a7336-290c9c89fd2mr275593855ad.4.1761254616880;
        Thu, 23 Oct 2025 14:23:36 -0700 (PDT)
Received: from iku.. ([2401:4900:1c06:ef2:36b5:9454:6fa:e888])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946dda7949sm34306965ad.3.2025.10.23.14.23.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 14:23:36 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 2/3] arm64: dts: renesas: r9a09g057: Add DU and DSI nodes
Date: Thu, 23 Oct 2025 22:23:13 +0100
Message-ID: <20251023212314.679303-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251023212314.679303-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251023212314.679303-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add DU and DSI nodes to RZ/V2H(P) SoC DTSI.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g057.dtsi | 65 ++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
index 47b3502846f6..e2ab8ad9c605 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
@@ -1304,6 +1304,71 @@ queue3 {
 			};
 		};
 
+		dsi: dsi@16430000 {
+			compatible = "renesas,r9a09g057-mipi-dsi";
+			reg = <0 0x16430000 0 0x20000>;
+			interrupts = <GIC_SPI 874 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 875 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 876 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 877 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 878 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 879 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 880 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "seq0", "seq1", "vin1", "rcv",
+					  "ferr", "ppi", "debug";
+			clocks = <&cpg CPG_MOD 0xec>, <&cpg CPG_MOD 0xe9>,
+				 <&cpg CPG_MOD 0xe8>, <&cpg CPG_MOD 0xea>,
+				 <&cpg CPG_MOD 0xeb>;
+			clock-names = "pllrefclk", "aclk", "pclk", "vclk", "lpclk";
+			resets = <&cpg 0xd8>, <&cpg 0xd7>;
+			reset-names = "arst", "prst";
+			power-domains = <&cpg>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					dsi_in: endpoint {
+						remote-endpoint = <&du_out_dsi>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					dsi_out: endpoint {
+					};
+				};
+			};
+		};
+
+		du: display@16460000 {
+			compatible = "renesas,r9a09g057-du";
+			reg = <0 0x16460000 0 0x10000>;
+			interrupts = <GIC_SPI 882 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 0xed>, <&cpg CPG_MOD 0xee>,
+				 <&cpg CPG_MOD 0xef>;
+			clock-names = "aclk", "pclk", "vclk";
+			power-domains = <&cpg>;
+			resets = <&cpg 0xdc>;
+			renesas,vsps = <&vspd 0>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					du_out_dsi: endpoint {
+						remote-endpoint = <&dsi_in>;
+					};
+				};
+			};
+		};
+
 		fcpvd: fcp@16470000 {
 			compatible = "renesas,r9a09g057-fcpvd", "renesas,fcpv";
 			reg = <0 0x16470000 0 0x10000>;
-- 
2.43.0


