Return-Path: <devicetree+bounces-230465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE7AC02D37
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 20:00:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AB5C14ECD96
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 18:00:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9161D34B40B;
	Thu, 23 Oct 2025 17:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="lGqkZzZr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A235D34CFB0
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 17:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761242376; cv=none; b=juFYFnI9ZpEgFxzVszxHd578FqHVgsPpilBLPNNCT7kwSTtMJyJjvqrvfolRT377qE5KdqL7OYCdrYbWKa/5A4ULykhKkVVIX0QKGO6rW1jhlzZSXpCeE6z19VAqI3R4gws+pBW8AiFeJLRfAYyUOvqOHHCZtFkGJFpao1/jf8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761242376; c=relaxed/simple;
	bh=b5TthaVgozjRNo6oynm9yNvs9UvZId9+fMO7VfpmIr8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=I/+V5j8rRnAJNIH3H6pjkmJzIOdzRuoZpUX1kr5cQCnGdSHmz7Vi4VWDdvxMJ5VVqUh28sVSYNqXISIzw54ZOwdXIBu1yJNVfkFyDxhPjlOzyil1NBkZ7FVO5AORaTzGBTfugsJamI+dHReDWC1vWOqiYY6LbkEy/EgEv3Xymwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=lGqkZzZr; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-33e27a3b153so1204334a91.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 10:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761242374; x=1761847174; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j/0R3e5CbG34zw1DZffq6WeOG5UrZqNxxyPe6S2P55U=;
        b=lGqkZzZrkB2kdXbGFwzOP6yyONdR0Z91W1Sa98ejEF9y1KKfy48o9VLnypkW9QQAio
         VJeqGkn0N5cXFlZ8hsQxtbfNiYny7oNiB5AqXrMLGA9nHWgQ7h8rOtLUcht5Akwzywrh
         X2lbNTydIhxT5NF7yP0vDzGNVw5ypfGAFhckd3npc3lOi0DkgwYmDVN5s6Vvyg8ctKR6
         3Wdrg6001DLeG6Oi1LMgmRCfTzTd92zYiLoTDesX1Y3szf5isyNf+qsotc+uVHLA/eDB
         4MzBSLyPW+2l+N7L3cZAf+eH4C6kmBejZTLMN+6mPhiCu83JtF8S+b54oVdH+6HAKOEI
         PW/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761242374; x=1761847174;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j/0R3e5CbG34zw1DZffq6WeOG5UrZqNxxyPe6S2P55U=;
        b=Lmje4Mr6AGg+gNnEZNlNZfpYmCDjx0sa1kF/6Kx5zRhkgjEgl79qNwAR5jj/RLM7xp
         PqBA8E2IHpQ7aRBjlcoreWMlScngb2o0+tbU7unHV/MhlWq9iimVthigOY9wQOZjibx0
         2Pmh/V5lUeqWngeaVRXV3q5zU0DVoS2Rt0lG1A26YOJlbNoCn2lNKajGeTfGhpRfASoo
         S22DiTCQp+U77ntUdOzTM1ZVmYBG0+oFosv+0+11IKAkwM7gf86jOdSGHWPIx4cJ+c61
         El1UgA/VZr/kILhZ1O8EeeJqkVVrpFTxCjFzil/b2nKGQ3urKoOIKVveaCVtB1Td2w5h
         Wtxw==
X-Forwarded-Encrypted: i=1; AJvYcCWbo3AGUE4pbY5iqzn6KJGcQkyzFRqg/ao2RmWYEGlXd5dXRIIu4a0jeZl6mUFNyBPbGdbJSdXM4Qjk@vger.kernel.org
X-Gm-Message-State: AOJu0YzMZduj4Kt6FNkxr6F84gQ8ZiPGLl31PrWIzI0ts2swrCPKtJ4o
	5ztTGVPSYJnZBi0YZurn4pg9Qo6hafzrTUf3J4ocGzZY07+KxzZj9e6aTMuqz7/I9QdBoql+0ED
	RrXiliSU=
X-Gm-Gg: ASbGncuXoDB86UDmd9Cjm6FGIy/odblxYTbkwiG+BqQyb+wZvrL86G54oyv67gm2+oB
	xI93/1A3zrsdB4C+qmMRg2qRXSCMGcqW4JQaqZIzgluQoLJJGQt4hIJEZhIP8hriWKUOUJxNO7P
	hoh/PeAfVt56vijsP4pBZ6rg5BtUywZYbQkcZbgMR937S7Q0SfKV6v5jSWo/zpGeI5E7jj/cLNj
	abroyta0FwSUfmIdHfq9iQX2wTse3kXdLqpx0k5OG7mNWTr7sMxFyH72qkTUzlnMqSNEOpKKTQV
	aJL8t4FiZ2ospzISpjIyvz7CE/JVakI0gt+WR1z940FoXL46UUgxUB373kBSm+Y/Sm8bBwf2/a9
	vThj75TZJzokJwJDKD+r3DRuu4k09WoNwwPypib0JHr7QOf5fHm12ShFUVmWo31x8evANjlNE07
	Z6br9CJaQBr3CAn6tapTFl1jt/pity02p8hA==
X-Google-Smtp-Source: AGHT+IHVBHP0VNMgL4i11Hlpfi39kzITsFSqD4nvg71vtIarn49Ipd8vSMUYzNOXYVvvOjEu2JoRZw==
X-Received: by 2002:a17:90b:1b05:b0:338:3789:2e89 with SMTP id 98e67ed59e1d1-33fafbab393mr4375317a91.10.1761242374092;
        Thu, 23 Oct 2025 10:59:34 -0700 (PDT)
Received: from zoltan.localdomain ([208.115.86.150])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e223d1265sm6447431a91.3.2025.10.23.10.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 10:59:33 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: dlan@gentoo.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: Frank.li@nxp.com,
	guodong@riscstar.com,
	pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 8/9] riscv: dts: spacemit: enable K1 SoC QSPI on BPI-F3
Date: Thu, 23 Oct 2025 12:59:20 -0500
Message-ID: <20251023175922.528868-9-elder@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251023175922.528868-1-elder@riscstar.com>
References: <20251023175922.528868-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define DTS nodes to enable support for QSPI on the K1 SoC, including the
pin control configuration used.  Enable QSPI on the Banana Pi BPI-F3 board.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../boot/dts/spacemit/k1-bananapi-f3.dts      |  6 ++++++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  | 21 +++++++++++++++++++
 arch/riscv/boot/dts/spacemit/k1.dtsi          | 16 ++++++++++++++
 3 files changed, 43 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 33ca816bfd4b3..2f3750f7fd6f3 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -258,6 +258,12 @@ dldo7 {
 	};
 };
 
+&qspi {
+	pinctrl-names = "default";
+	pinctrl-0 = <&qspi_cfg>;
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_2_cfg>;
diff --git a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
index 4eef81d583f3d..e922e05ff856d 100644
--- a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
@@ -73,6 +73,27 @@ i2c8-0-pins {
 		};
 	};
 
+	qspi_cfg: qspi-cfg {
+		qspi-pins {
+			pinmux = <K1_PADCONF(98, 0)>,    /* QSPI_DATA3 */
+				 <K1_PADCONF(99, 0)>,    /* QSPI_DATA2 */
+				 <K1_PADCONF(100, 0)>,   /* QSPI_DATA1 */
+				 <K1_PADCONF(101, 0)>,   /* QSPI_DATA0 */
+				 <K1_PADCONF(102, 0)>;   /* QSPI_CLK */
+
+			bias-disable;
+			drive-strength = <19>;
+			power-source = <3300>;
+		};
+
+		qspi-cs1-pins {
+			pinmux = <K1_PADCONF(103, 0)>;   /* QSPI_CS1 */
+			bias-pull-up = <0>;
+			drive-strength = <19>;
+			power-source = <3300>;
+		};
+	};
+
 	/omit-if-no-ref/
 	uart0_0_cfg: uart0-0-cfg {
 		uart0-0-pins {
diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index af35f9cd64351..47f97105bff0b 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -823,6 +823,22 @@ uart9: serial@d4017800 {
 				status = "disabled";
 			};
 
+			qspi: spi@d420c000 {
+				compatible = "spacemit,k1-qspi";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0x0 0xd420c000 0x0 0x1000>,
+				      <0x0 0xb8000000 0x0 0xc00000>;
+				reg-names = "QuadSPI", "QuadSPI-memory";
+				clocks = <&syscon_apmu CLK_QSPI_BUS>,
+					 <&syscon_apmu CLK_QSPI>;
+				clock-names = "qspi_en", "qspi";
+				resets = <&syscon_apmu RESET_QSPI>,
+					 <&syscon_apmu RESET_QSPI_BUS>;
+				interrupts = <117>;
+				status = "disabled";
+			};
+
 			/* sec_uart1: 0xf0612000, not available from Linux */
 		};
 
-- 
2.43.0


