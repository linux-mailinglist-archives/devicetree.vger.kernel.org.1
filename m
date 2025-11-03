Return-Path: <devicetree+bounces-234512-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ACC7C2DFC5
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 21:06:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 159F43BF03B
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 20:05:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96CF92BF015;
	Mon,  3 Nov 2025 20:04:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CFPHBCqC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E7E62BF000
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 20:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762200275; cv=none; b=kNfMYFtPL14RoTuOCpl6bFqqRdFXhktZrCzl/zTK/alMZBv2bnnHUmGhbraqWyFwBdWWhRoKboSGgP/KmnULej6B7puynvQYBvxUdHX1cQ7Iz+jv0YOr+DEry/5ecpLcx2GUvlmydlFnvX4wDkdLWEP7hEcHTFsYfOIIobfUWL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762200275; c=relaxed/simple;
	bh=QLYFPz+iYP5CjA9fN/raAFqjs9deftRM7H/UAUtODdM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fosFV6YLUANCk6WbTQXmRyc0QEOuap71N3N+q/g+nKw14SOKn0kQrA7fUujt+ZrNneRsyR6lLbMrFoY1890NdzmHWFyJcH8q90G9ZDI+OOVJ2VjbkGG9We2JWPvfVrPX72hJ/HVl5Q+7iS7nBE5C2eKUxdUqT8LW0DgcVR6bjY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CFPHBCqC; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-294fb21b160so33861805ad.1
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 12:04:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762200273; x=1762805073; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jh3uwPLmYR07dlhjkDymOyq+/CPc5KFjXFc3K+Rn6uQ=;
        b=CFPHBCqCYM8YJGJTmO6oZUo+Gi7BXzq6lDr9zmg1//y1rr1o7HlecgSVWodxiO8R4O
         nKkLe3/RJoRrnHU3BVx4O3KoHspir2QyBuijKEJ5iytpMXZ4DL41UuRB4B9pCEuXO4Do
         t4IIQnL7IuUD5eIwMA/PQbwydVCz/YVZV/LfPmWldv8XfF+58SD88LbW7PSWZ4n/KDTE
         F72zwEbzK3ZXV1g1dnD/0Qjb+EaIVcvi7Mn0d6O9YNPiK7cQ1AG64VkGIF3vMz3iHbdx
         3wk7MCn1h8eXIcTVrkK5t2r36qBIEf90fd06R+6biCSncJQrhxIIo762//5c7FZwzifT
         VwSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762200273; x=1762805073;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jh3uwPLmYR07dlhjkDymOyq+/CPc5KFjXFc3K+Rn6uQ=;
        b=V563BzhAj1w1ApY/smi9FgCZr/gyC4F9lV8Zdm7ZVHLKyOoD4PsqGDrZ+WkAM98sXA
         zME38nXzJh9lFVlTNrm/pPbeaBXFxGuRzJgjXdjCVY+sfT2x7bfS8leObFBOyH/Mc5JX
         SB5AmsEJZ+Z63kAFa36duoXUlzq1/2JagzOwWi7Z7sfkNnlFv24zjsQyEQm61kkH3KRb
         xZn0fwewGVbcsuHTG06PcM8X+RmPp8TlRmbgOlXJ0Nb+yMktIfvK0+d3buZYk7FGQae/
         XUjk2K0BtV/fkxNLY2DH9AmVA+r9At36S+5YXmVCja2u92gXZMvOzQOWhKrwJDBQxVLc
         GJGQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhoyegGNBuX/cIFyyunEuBchRPuSPNrRlAYHMKt6XJ3IMFmvP1iDbabaWkrw9WcrJaISE7wgxGk8Wz@vger.kernel.org
X-Gm-Message-State: AOJu0YxTFof1yIAEwSjgoX+CxbD1/HGTEmsjyRGmd3SyVLbKkTSjUIlA
	H48PsKa2Eh0uEo1GC729TQOZgcvHSyOAsqFA8YGsg8+mj2D3qtAvCeQe
X-Gm-Gg: ASbGncvKFJeaB6PfB3XrdwpExVMsBnGZO9qoTiDspfn1UJOO7Zs3FrgUWOaax+Vezvn
	stsd7GDH7OPgBhTIp1qght5yxTdrUTAGccF3blVHigS7oIHl6rBXdY6DnwLsBG6rHMPreGwP7hp
	t+oQSVdr/mfniBdSt4JqbJKb0PSfLsFtM6D+YXp56mNNuvnFo/d2Xm4qBBwOYWBpaVgvxtY7X5x
	E5FrGeIJc5zAtv3bpejuKWBNwrCUPloGdQlPEEfR0Du0e4z13NgdqF3cIX9qQz55Vt+6G+5pQyy
	45Dotxsv+laFwLGYx64+4/muoveoQmZEWxByIRUY8W+0//2G/sLHQWeeanXEOfpuglnD2XoTIdW
	KCIRpPTHCs3a8Czu2aLq8af/nHfkl2ljSzEp5+DYkqK000J1aBhQX8gdD6CnCcWRTrqH0wWb6DI
	EWGowpfhvCLSbz30CvJgAiWTjJf8aSXVh99vMnG2f9vQ==
X-Google-Smtp-Source: AGHT+IHUWa64MAKdOLu6VI/4meUcfZ5QKprxUjp2FXrj9UBY+kBU1nKWPbnLHdfg53QEZjhB1qdhsg==
X-Received: by 2002:a17:902:ec81:b0:288:5d07:8a8f with SMTP id d9443c01a7336-2951a3d0b6amr160180325ad.24.1762200271921;
        Mon, 03 Nov 2025 12:04:31 -0800 (PST)
Received: from iku.. ([2401:4900:1c06:600d:df45:8e1:7a61:1482])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2952774570bsm127494895ad.99.2025.11.03.12.04.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 12:04:31 -0800 (PST)
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
Subject: [PATCH 2/3] arm64: dts: renesas: r9a09g056: Add DU and DSI nodes
Date: Mon,  3 Nov 2025 20:03:48 +0000
Message-ID: <20251103200349.62087-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251103200349.62087-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251103200349.62087-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add DU and DSI nodes to RZ/V2N SoC DTSI.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g056.dtsi | 65 ++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
index 32a8005058f8..68f7a8b68d91 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
@@ -958,6 +958,71 @@ queue3 {
 			};
 		};
 
+		dsi: dsi@16430000 {
+			compatible = "renesas,r9a09g056-mipi-dsi", "renesas,r9a09g057-mipi-dsi";
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
+			compatible = "renesas,r9a09g056-du", "renesas,r9a09g057-du";
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
 			compatible = "renesas,r9a09g056-fcpvd", "renesas,fcpv";
 			reg = <0 0x16470000 0 0x10000>;
-- 
2.43.0


