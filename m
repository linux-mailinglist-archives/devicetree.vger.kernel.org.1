Return-Path: <devicetree+bounces-35161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A942583C6F5
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 16:35:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5FC791F21307
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 15:35:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97AEB74E32;
	Thu, 25 Jan 2024 15:35:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [195.130.137.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77B8974E3C
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 15:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706196908; cv=none; b=Dl9znKNCU97rkf+nUnJNVyhmOKliFYun1QQ5PYg4ZMDD4jyiyw7IcS2zhiyEman5Y3qspDWG1DvJUC467Px0L8lqmZ6ly59nNsgIYWGwlsGWQ4qu1sv8ePgSslqczMku7ruCqGA2ZfIaaUsDIjMk9Ffpid69q6ssinBwazJmaPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706196908; c=relaxed/simple;
	bh=sWacTy8fqdpm+liAekvyPvdRGwz5kCdbPHjdVjIHXmg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MROC+HsnZuTBj6V3NsdhG06eLgCEY7lHkIaSl68EkVx58MaQCRG1QJGCFsLfNphMTxmtX2uoz4BPdJC/NAo5HBTNitYNIrHB6cblzeraGEpcZrx6mYt55HKrHBTFiwQB3HAojbm9K3uGpC3BlsF+uqaCJPeb+JvfTnVSMJ+p954=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:bc9e:fcb8:8aa3:5dc0])
	by laurent.telenet-ops.be with bizsmtp
	id f3am2B00858agq2013amNd; Thu, 25 Jan 2024 16:34:57 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rT1jo-00GUw9-7Y;
	Thu, 25 Jan 2024 16:34:46 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rT1kc-00Fs36-6y;
	Thu, 25 Jan 2024 16:34:46 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Magnus Damm <magnus.damm@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: Cong Dang <cong.dang.xn@renesas.com>,
	Duy Nguyen <duy.nguyen.rh@renesas.com>,
	Hai Pham <hai.pham.ud@renesas.com>,
	Linh Phung <linh.phung.jy@renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pm@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v2 11/15] soc: renesas: Identify R-Car V4M
Date: Thu, 25 Jan 2024 16:34:39 +0100
Message-Id: <31e06d055aec1bc70c3e9a02f9268bcfc72b2204.1706194617.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1706194617.git.geert+renesas@glider.be>
References: <cover.1706194617.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Duy Nguyen <duy.nguyen.rh@renesas.com>

Add support for identifying the R-Car V4M (R8A779H0) SoC.

Signed-off-by: Duy Nguyen <duy.nguyen.rh@renesas.com>
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
v2:
  - Add Reviewed-by.

Changes compared to the BSP:
  - Use lower-case hex for literals in C source code.
---
 drivers/soc/renesas/Kconfig       | 7 +++++++
 drivers/soc/renesas/renesas-soc.c | 8 ++++++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/soc/renesas/Kconfig b/drivers/soc/renesas/Kconfig
index 2367385d84b5a17d..1b8a89ad4fd7e7a3 100644
--- a/drivers/soc/renesas/Kconfig
+++ b/drivers/soc/renesas/Kconfig
@@ -282,6 +282,13 @@ config ARCH_R8A779G0
 	help
 	  This enables support for the Renesas R-Car V4H SoC.
 
+config ARCH_R8A779H0
+	bool "ARM64 Platform support for R-Car V4M"
+	select ARCH_RCAR_GEN4
+	select SYSC_R8A779H0
+	help
+	  This enables support for the Renesas R-Car V4M SoC.
+
 config ARCH_R8A774C0
 	bool "ARM64 Platform support for RZ/G2E"
 	select ARCH_RCAR_GEN3
diff --git a/drivers/soc/renesas/renesas-soc.c b/drivers/soc/renesas/renesas-soc.c
index 67de980ec4244c41..083f6580cb5dae00 100644
--- a/drivers/soc/renesas/renesas-soc.c
+++ b/drivers/soc/renesas/renesas-soc.c
@@ -271,6 +271,11 @@ static const struct renesas_soc soc_rcar_v4h __initconst __maybe_unused = {
 	.id	= 0x5c,
 };
 
+static const struct renesas_soc soc_rcar_v4m __initconst __maybe_unused = {
+	.family = &fam_rcar_gen4,
+	.id     = 0x5d,
+};
+
 static const struct renesas_soc soc_shmobile_ag5 __initconst __maybe_unused = {
 	.family	= &fam_shmobile,
 	.id	= 0x37,
@@ -381,6 +386,9 @@ static const struct of_device_id renesas_socs[] __initconst __maybe_unused = {
 #ifdef CONFIG_ARCH_R8A779G0
 	{ .compatible = "renesas,r8a779g0",	.data = &soc_rcar_v4h },
 #endif
+#ifdef CONFIG_ARCH_R8A779H0
+	{ .compatible = "renesas,r8a779h0",	.data = &soc_rcar_v4m },
+#endif
 #ifdef CONFIG_ARCH_R9A07G043
 #ifdef CONFIG_RISCV
 	{ .compatible = "renesas,r9a07g043",	.data = &soc_rz_five },
-- 
2.34.1


