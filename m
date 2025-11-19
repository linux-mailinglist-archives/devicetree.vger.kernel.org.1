Return-Path: <devicetree+bounces-240170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 76ADCC6E28C
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 12:12:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 482534E9DD5
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 11:06:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3421F354ACB;
	Wed, 19 Nov 2025 11:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QKEMcxe3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A89350A2F
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 11:05:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763550322; cv=none; b=CA9jE8Q1Fx7QujGqZsl6QFX3bzf4wqrRFpsQy5GTM7bcXGEsjycHI0/ppj3OBH5D6CZCQFIspR7Wr+SVQuchmDDymZuiq+Pe2KXJaPYUnm3sRasMXcgxMZhvqm1kNaB/qZ1SKtaW1QGvHl3rG/fzTaoz4cVpjxrW1eNLfQZzojc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763550322; c=relaxed/simple;
	bh=40Mb/4irtQljGF9gYZfr/Rpdwacajfl7uxiy72U3bs0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=h9OIR+p54WB68fA1EAStJFcq4sQD+y+uN8Nb7WVskbOssYYvlYwifyEYDmc2cJIbUCNsVQih45RdPZY3kfcfd0NERyK8Y6Oz67SfzMtWwveIaCu8br+xBK9EeyHMRVPXG/ya8H34nBLV/npsEBsxE3q4IkE+lgi64zZH+jPEHCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QKEMcxe3; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-47775fb6cb4so47602235e9.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 03:05:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763550316; x=1764155116; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7HGU80H0HC+PV00Zhq9VfTL5cxvVJfcWWieERbAVklg=;
        b=QKEMcxe3xbn2mCs7J5bQPtuF25sxy4zvQ8a5vvOzU09ShoA7/p1fzrWkmWeXcF+NSK
         yBeqteGMBDdM4DOMovVwDX/J/8K2a78mK7e+PLl3cSTQAI98rpP0zYiFlB9VqgsqYCjp
         wUzBBWoGATJB5myGvc0OkWDvh52F1XIP0d9+W6lIar74Fam7ZQXk9NqHvBbRq3V4Lm+1
         RY9Gc7X3dCSUPwU2qiKlS46BDqX/ZROHsZ6kGZNooNdOyd8viRvAbxLgWKRD0JkkszJv
         p6nMP4mTZnTAjeMqOAWeNKc+d2LnCKZwGwjBTFWoiMgLv4WIyj0ZZJGPwPmvFoEGpLE6
         av5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763550316; x=1764155116;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7HGU80H0HC+PV00Zhq9VfTL5cxvVJfcWWieERbAVklg=;
        b=FYRROpaOTkJxP5fXq/a3OZnoagFGxBRILrMnqwYOku0xDbOir+vSSguIVbuIPlYT+u
         6EQpZJAYBmkbngCjxPGHs78dI1tw6AHd/IW2+fG/v1t5/O6x+EfyUmDhN2dV3wHgGE8J
         mhghwZCT0i6ILRBCe6w/M0vpeIqZH7MToPfEj7hJiyRWGocjp3Tyv9gkxblx3zzvWUb0
         u48CkKlW556ZSloUqFZakyQB8b6+Eqc6E+5LI2OwgeklFEF4XQcXoc0+YQs51Ac9kAcc
         1VhHldlUGnX1nwkjZVx+ARlOXY7PqZ8/x0HSR0dpdnS48+L+x7aLqDuaxWbAAk+GqC+O
         BZ1w==
X-Forwarded-Encrypted: i=1; AJvYcCWTqNm+AvP4l0z3ROtqJvX0KUxJz3ZehuSvhFPWjUiqFc2oQ3IrK4x6jjcMY8+IlHT/1CeWdcjtkpUZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzmQ1oCoHYgJgGWopU0LKp0EI/Jdj+uEp3RZw4IFehUAYgepO06
	Se/aVvX2T/xvpCz7wPzpOpbj9NSlCzsGwRj4OHujA746+EKL1aRi5Mtr
X-Gm-Gg: ASbGncuc7Ka3bPaULOCwbAY/o8gEfzf7zQZIjefdc158TgRUeb7+pzCzsHEoNRfmWGl
	sAwCbmGFaYCbbIUWN9jTxVLNlAedTAiWkIO5IfLroZzUG7+D1eprEdFJXBWlvTGy7gVfXewFhwj
	xfOdmlCnZyO7Fw2qUlOqnQJeDSAlVtP4x6vq9cHwj/FZr36qcNy4TRzNh+Xts8ZUx850/y2yzz7
	HytIgaDTYZX/OLevQ2O5IqA2u3CjVthLQD9o1QFw6EjLTosWsVmvza0h8iwd/W9Q36CVzN47Dfz
	Byjx5P2icHWYiNCpoJILsLj20ZvFNOl4m18hYPv/svmU+PBf/rlJXcz+IVt9Ckv0gMTSLu+7ca5
	P+FvN/WWnyQWFCuJrVaD4/Km/szIcHzZzbto5VwvSedF1s7DDLL6nlmUAtYceLmKM5rQOgsZvUJ
	PZ6uaHo0m2zzYeNcnbqWuEsbzR2K5j1aXVlwoNNWPN3w15BcKtQC/eDtV9
X-Google-Smtp-Source: AGHT+IE67484p71NEh2FIcbLA9OJMEthml3cSpH2dhprDbDEcfdU9ZC9o/d3dSYWlN1avNYXA06q+w==
X-Received: by 2002:a05:600c:468f:b0:477:b0b8:4dd0 with SMTP id 5b1f17b1804b1-477b0b8505cmr29146875e9.17.1763550315268;
        Wed, 19 Nov 2025 03:05:15 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:4b7e:3ed7:e0b3:cf30])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477a9d198a0sm39884505e9.1.2025.11.19.03.05.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 03:05:14 -0800 (PST)
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
Subject: [PATCH 3/4] arm64: dts: renesas: r9a09g056: Add USB3 PHY/Host nodes
Date: Wed, 19 Nov 2025 11:05:04 +0000
Message-ID: <20251119110505.100253-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251119110505.100253-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251119110505.100253-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add USB3 PHY/Host nodes to RZ/V2N ("R9A09G056") SoC DTSI.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a09g056.dtsi | 30 ++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
index 68f7a8b68d91..5832aea664b1 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
@@ -696,6 +696,36 @@ usb20phyrst: usb20phy-reset@15830000 {
 			status = "disabled";
 		};
 
+		xhci: usb@15850000 {
+			compatible = "renesas,r9a09g056-xhci", "renesas,r9a09g047-xhci";
+			reg = <0 0x15850000 0 0x10000>;
+			interrupts = <GIC_SPI 759 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 758 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 757 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 756 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 755 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "all", "smi", "hse", "pme", "xhc";
+			clocks = <&cpg CPG_MOD 0xaf>;
+			power-domains = <&cpg>;
+			resets = <&cpg 0xaa>;
+			phys = <&usb3_phy>, <&usb3_phy>;
+			phy-names = "usb2-phy", "usb3-phy";
+			status = "disabled";
+		};
+
+		usb3_phy: usb-phy@15870000 {
+			compatible = "renesas,r9a09g056-usb3-phy", "renesas,r9a09g047-usb3-phy";
+			reg = <0 0x15870000 0 0x10000>;
+			clocks = <&cpg CPG_MOD 0xb0>,
+				 <&cpg CPG_CORE R9A09G056_USB3_0_CLKCORE>,
+				 <&cpg CPG_CORE R9A09G056_USB3_0_REF_ALT_CLK_P>;
+			clock-names = "pclk", "core", "ref_alt_clk_p";
+			power-domains = <&cpg>;
+			resets = <&cpg 0xaa>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
 		sdhi0: mmc@15c00000  {
 			compatible = "renesas,sdhi-r9a09g056", "renesas,sdhi-r9a09g057";
 			reg = <0x0 0x15c00000 0 0x10000>;
-- 
2.51.2


