Return-Path: <devicetree+bounces-249659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F90CDDA7F
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 11:26:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EA5F3301CD0C
	for <lists+devicetree@lfdr.de>; Thu, 25 Dec 2025 10:26:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FC3431A053;
	Thu, 25 Dec 2025 10:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="haN5wIAG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8275531A7FA
	for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 10:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766658385; cv=none; b=AnYxb8LEJWSgEFwHuVu9vch9wHqF/RQ1a4Syc5eKj4MGQ6O0WaFvivtNvtXhLesdMkwlIeuf14Sjh3V2yGIJcAqFEArnNw4opZ8DizEdVd1+y5K0qjg64UXttRhmnfbiovtdaOH1Qn83FWxUAfKFpekaBoFX18+RRmsVJUoNO2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766658385; c=relaxed/simple;
	bh=XDw0CicUcDyUIbwIo5vVTd2jTNcmyLEasGp4m1GbB4k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TLIznOLdfESSccT3Iql+H0DvJgXwNBGW+pUqpsqptY5iW4PaeA7Vsy4NM18VcFtjju/1iiD1fyw/Nv3Pw4dI7pM+Q2SMP8eDxRrTqF77aEcLfuvbzXm5FNkIzLNeZzujn/9Glr0tLGY1XOjACcSKDQyvBWe8PLaPEbwM22UCJlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=haN5wIAG; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b7a72874af1so1120363066b.3
        for <devicetree@vger.kernel.org>; Thu, 25 Dec 2025 02:26:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766658380; x=1767263180; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bbdavY/KGPzS+o6sMh5gv5dV0PnkFU7uBfyVWtnqgmE=;
        b=haN5wIAGmIrPGmfirNaQHf+y8vIG8KfOrBx/mCeVC8Zg5UIkeJR1MmVWjiJylOjQv9
         RA6IUdN7hMIWoI1LQXOo/xv/ymf+MgtWWjNkBCWGMJ1UJHO3gEi78kv9dEjdcI5pWGoK
         3HnURzEKEiNNexq6bnjyTLaaWt+W4kd2bgytA7cn5IaIxTcH1mQPvh2DAp0EWXdKeVqn
         dYpKadiLtDXACoT7nLmHB7hbsKqDBLKvcQM5+1XiLwXKTWR4ogdc7/VHPsmhtL3X8Hyx
         2tbuZzvTFsL8hhpdLrZ2BO8J/G1khzE7wo8oDSSgfm/hFVDly4RpOKQLauPWvlPI9CNB
         5CgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766658380; x=1767263180;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bbdavY/KGPzS+o6sMh5gv5dV0PnkFU7uBfyVWtnqgmE=;
        b=de1Q1oW/8rcDq5G9LKD/MuQyllxyB2IjVwrSE2Ps1WkbDczebSetgiO6U9KNDMkJiK
         532niydoe88zNC7pjcNiNfD2WZiJ944v3dsjV//oEwAjN5y7vuAv3spvEychtGi+wjMb
         4l5syqG6K8ewjRGiYELL6DqGONC8NC3W+/jwbVrVCWEhq6VnvvJQeXXLKJzOMwtNaC40
         jD90f99KKLbh+c0FB2BbBsAhN+paopkzuBzvPAFSfGpocWH7JEB726KNol78PFSqRSO4
         HYlGGnwflYWMe1210l9feD/DyMWJbpchVRvpz6Q+iEzEEXdDcVmiQKg84EaV+ZhmgLHo
         EjrA==
X-Forwarded-Encrypted: i=1; AJvYcCUFR6ip5pqvxTVVKeCqIARRhyCX8Al/YfD2ojvX4y37MJ1rfz42oPPadO/yvboIIwuiKe9QCff+8RiM@vger.kernel.org
X-Gm-Message-State: AOJu0Yzcj1FS0JGgYkKOFE0o2Z52vx+pY+vnDWadgcfSLwoJIvBk8i0H
	uKz/RQfv1heyg34XpQXQQa9w+YWSy+EH14JUOs8NdZ8jT9tKxxPF6Vak
X-Gm-Gg: AY/fxX41zSLkYAdbGZDt5XLxFoR3o5yU+w+5ih0atil4qNPdG/4egfp4/EopIKLNZ9p
	A0os5aizL6Kl+TM20CFbGqK2+V6dI8c3szq5eNKsyPAo6sTvbzW7kyOCV0fu/fIzIbMEep405OG
	LoflbqqhK9DBQC+aWIurGdcoXHro++1YHBiuJ3wsxOIuxztfEukKWsgAv1CNKmhXVNgaFzImef1
	MBbaJZ+CrHJHuexu75UJu0TmTdlGa+ToT/R3XDFBKUjz8AHXJt+crWqSsxJR2tFPCS6ceSORhFG
	xqUAdKEeux5ddQ+ujCsx2wGg71g5P9lITNRZIF/rD7Uf+3T/UVTw0a/qdM2vrlsCh2vhBgZ8I76
	VAHL7V64p/Hy2cJ6k/82+gRcrr7nEle3IWXnKMXACkwbJsIIN0c3M4s9rL4zBug6ulpc5lzE/Sr
	Vgj1pbTslkI7dB4KrwdWBVoImtGNMZy60s5OGah3mLu6ENgxx7I141XsZeYGRclVhrOHY=
X-Google-Smtp-Source: AGHT+IGlygVhnf4kK96SyejVfTPYWiK9b3dzlGY8ni6rseZRXIsqfMGNRAnZDGe710l1R5Y4qNze3w==
X-Received: by 2002:a17:907:7393:b0:b80:40d3:1fc6 with SMTP id a640c23a62f3a-b8040d3232cmr1371363266b.54.1766658379530;
        Thu, 25 Dec 2025 02:26:19 -0800 (PST)
Received: from localhost (dslb-002-205-018-238.002.205.pools.vodafone-ip.de. [2.205.18.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ab86cesm2034844566b.19.2025.12.25.02.26.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Dec 2025 02:26:19 -0800 (PST)
From: Jonas Gorski <jonas.gorski@gmail.com>
To: Kamal Dasu <kamal.dasu@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Cc: Kamal Dasu <kdasu.kdev@gmail.com>,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org
Subject: [PATCH 4/4] mips: bmips: dts: fix qspi register order
Date: Thu, 25 Dec 2025 11:25:33 +0100
Message-ID: <20251225102533.30772-5-jonas.gorski@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251225102533.30772-1-jonas.gorski@gmail.com>
References: <20251225102533.30772-1-jonas.gorski@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Align the register order to the schema. Fixes warnings like:

arch/mips/boot/dts/brcm/bcm97435svmb.dtb: spi@41d200 (brcm,spi-brcmstb-qspi): reg-names:0: 'cs_reg' is not one of ['hif_mspi', 'mspi']
	from schema $id: http://devicetree.org/schemas/spi/brcm,spi-bcm-qspi.yaml
arch/mips/boot/dts/brcm/bcm97435svmb.dtb: spi@41d200 (brcm,spi-brcmstb-qspi): reg-names:1: 'bspi' was expected
	from schema $id: http://devicetree.org/schemas/spi/brcm,spi-bcm-qspi.yaml
arch/mips/boot/dts/brcm/bcm97435svmb.dtb: spi@41d200 (brcm,spi-brcmstb-qspi): reg-names:2: 'bspi' is not one of ['intr_regs', 'intr_status_reg', 'cs_reg']
	from schema $id: http://devicetree.org/schemas/spi/brcm,spi-bcm-qspi.yaml

Signed-off-by: Jonas Gorski <jonas.gorski@gmail.com>
---
 arch/mips/boot/dts/brcm/bcm7125.dtsi | 4 ++--
 arch/mips/boot/dts/brcm/bcm7346.dtsi | 4 ++--
 arch/mips/boot/dts/brcm/bcm7358.dtsi | 4 ++--
 arch/mips/boot/dts/brcm/bcm7360.dtsi | 4 ++--
 arch/mips/boot/dts/brcm/bcm7362.dtsi | 4 ++--
 arch/mips/boot/dts/brcm/bcm7420.dtsi | 4 ++--
 arch/mips/boot/dts/brcm/bcm7425.dtsi | 4 ++--
 arch/mips/boot/dts/brcm/bcm7435.dtsi | 4 ++--
 8 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/mips/boot/dts/brcm/bcm7125.dtsi b/arch/mips/boot/dts/brcm/bcm7125.dtsi
index dd1cc3cda694..81ee0f49b645 100644
--- a/arch/mips/boot/dts/brcm/bcm7125.dtsi
+++ b/arch/mips/boot/dts/brcm/bcm7125.dtsi
@@ -250,8 +250,8 @@ qspi: spi@443000 {
 			compatible = "brcm,spi-brcmstb-qspi",
 				     "brcm,spi-bcm-qspi";
 			clocks = <&upg_clk>;
-			reg = <0x440920 0x4 0x443200 0x188 0x443000 0x50>;
-			reg-names = "cs_reg", "hif_mspi", "bspi";
+			reg = <0x443200 0x188 0x443000 0x50 0x440920 0x4>;
+			reg-names = "hif_mspi", "bspi", "cs_reg";
 			interrupts = <0x5 0x6 0x0 0x1 0x2 0x3 0x4>;
 			interrupt-parent = <&spi_l2_intc>;
 			interrupt-names = "mspi_done",
diff --git a/arch/mips/boot/dts/brcm/bcm7346.dtsi b/arch/mips/boot/dts/brcm/bcm7346.dtsi
index 21c7418aaf0d..6efb6347a2e4 100644
--- a/arch/mips/boot/dts/brcm/bcm7346.dtsi
+++ b/arch/mips/boot/dts/brcm/bcm7346.dtsi
@@ -474,8 +474,8 @@ qspi: spi@413000 {
 			compatible = "brcm,spi-brcmstb-qspi",
 				     "brcm,spi-bcm-qspi";
 			clocks = <&upg_clk>;
-			reg = <0x410920 0x4 0x413200 0x188 0x413000 0x50>;
-			reg-names = "cs_reg", "hif_mspi", "bspi";
+			reg = <0x413200 0x188 0x413000 0x50 0x410920 0x4>;
+			reg-names = "hif_mspi", "bspi", "cs_reg";
 			interrupts = <0x5 0x6 0x0 0x1 0x2 0x3 0x4>;
 			interrupt-parent = <&spi_l2_intc>;
 			interrupt-names = "mspi_done",
diff --git a/arch/mips/boot/dts/brcm/bcm7358.dtsi b/arch/mips/boot/dts/brcm/bcm7358.dtsi
index 63b3a42a8dc6..527406a5fa4d 100644
--- a/arch/mips/boot/dts/brcm/bcm7358.dtsi
+++ b/arch/mips/boot/dts/brcm/bcm7358.dtsi
@@ -342,8 +342,8 @@ qspi: spi@413000 {
 			compatible = "brcm,spi-brcmstb-qspi",
 				     "brcm,spi-bcm-qspi";
 			clocks = <&upg_clk>;
-			reg = <0x410920 0x4 0x413200 0x188 0x413000 0x50>;
-			reg-names = "cs_reg", "hif_mspi", "bspi";
+			reg = <0x413200 0x188 0x413000 0x50 0x410920 0x4>;
+			reg-names = "hif_mspi", "bspi", "cs_reg";
 			interrupts = <0x5 0x6 0x0 0x1 0x2 0x3 0x4>;
 			interrupt-parent = <&spi_l2_intc>;
 			interrupt-names = "mspi_done",
diff --git a/arch/mips/boot/dts/brcm/bcm7360.dtsi b/arch/mips/boot/dts/brcm/bcm7360.dtsi
index 9d89da400104..7ed6dbd145bf 100644
--- a/arch/mips/boot/dts/brcm/bcm7360.dtsi
+++ b/arch/mips/boot/dts/brcm/bcm7360.dtsi
@@ -393,8 +393,8 @@ qspi: spi@413000 {
 			compatible = "brcm,spi-brcmstb-qspi",
 				     "brcm,spi-bcm-qspi";
 			clocks = <&upg_clk>;
-			reg = <0x410920 0x4 0x413200 0x188 0x413000 0x50>;
-			reg-names = "cs_reg", "hif_mspi", "bspi";
+			reg = <0x413200 0x188 0x413000 0x50 0x410920 0x4>;
+			reg-names = "hif_mspi", "bspi", "cs_reg";
 			interrupts = <0x5 0x6 0x0 0x1 0x2 0x3 0x4>;
 			interrupt-parent = <&spi_l2_intc>;
 			interrupt-names = "mspi_done",
diff --git a/arch/mips/boot/dts/brcm/bcm7362.dtsi b/arch/mips/boot/dts/brcm/bcm7362.dtsi
index a0d15fcd3b81..194b6dd34eab 100644
--- a/arch/mips/boot/dts/brcm/bcm7362.dtsi
+++ b/arch/mips/boot/dts/brcm/bcm7362.dtsi
@@ -389,8 +389,8 @@ qspi: spi@413000 {
 			compatible = "brcm,spi-brcmstb-qspi",
 				     "brcm,spi-bcm-qspi";
 			clocks = <&upg_clk>;
-			reg = <0x410920 0x4 0x413200 0x188 0x413000 0x50>;
-			reg-names = "cs_reg", "hif_mspi", "bspi";
+			reg = <0x413200 0x188 0x413000 0x50 0x410920 0x4>;
+			reg-names = "hif_mspi", "bspi", "cs_reg";
 			interrupts = <0x5 0x6 0x0 0x1 0x2 0x3 0x4>;
 			interrupt-parent = <&spi_l2_intc>;
 			interrupt-names = "mspi_done",
diff --git a/arch/mips/boot/dts/brcm/bcm7420.dtsi b/arch/mips/boot/dts/brcm/bcm7420.dtsi
index a38041451faf..be4c9ba3d509 100644
--- a/arch/mips/boot/dts/brcm/bcm7420.dtsi
+++ b/arch/mips/boot/dts/brcm/bcm7420.dtsi
@@ -311,8 +311,8 @@ qspi: spi@443000 {
 			compatible = "brcm,spi-brcmstb-qspi",
 				     "brcm,spi-bcm-qspi";
 			clocks = <&upg_clk>;
-			reg = <0x440920 0x4 0x443200 0x188 0x443000 0x50>;
-			reg-names = "cs_reg", "hif_mspi", "bspi";
+			reg = <0x443200 0x188 0x443000 0x50 0x440920 0x4>;
+			reg-names = "hif_mspi", "bspi", "cs_reg";
 			interrupts = <0x5 0x6 0x0 0x1 0x2 0x3 0x4>;
 			interrupt-parent = <&spi_l2_intc>;
 			interrupt-names = "mspi_done",
diff --git a/arch/mips/boot/dts/brcm/bcm7425.dtsi b/arch/mips/boot/dts/brcm/bcm7425.dtsi
index c2b3ea21410d..8c476a20aea5 100644
--- a/arch/mips/boot/dts/brcm/bcm7425.dtsi
+++ b/arch/mips/boot/dts/brcm/bcm7425.dtsi
@@ -485,8 +485,8 @@ qspi: spi@41c000 {
 			compatible = "brcm,spi-brcmstb-qspi",
 				     "brcm,spi-bcm-qspi";
 			clocks = <&upg_clk>;
-			reg = <0x419920 0x4 0x41c200 0x188 0x41c000 0x50>;
-			reg-names = "cs_reg", "hif_mspi", "bspi";
+			reg = <0x41c200 0x188 0x41c000 0x50 0x419920 0x4>;
+			reg-names = "hif_mspi", "bspi", "cs_reg";
 			interrupts = <0x5 0x6 0x0 0x1 0x2 0x3 0x4>;
 			interrupt-parent = <&spi_l2_intc>;
 			interrupt-names = "mspi_done",
diff --git a/arch/mips/boot/dts/brcm/bcm7435.dtsi b/arch/mips/boot/dts/brcm/bcm7435.dtsi
index 826731515f0b..328fafe7519b 100644
--- a/arch/mips/boot/dts/brcm/bcm7435.dtsi
+++ b/arch/mips/boot/dts/brcm/bcm7435.dtsi
@@ -501,8 +501,8 @@ qspi: spi@41d200 {
 			compatible = "brcm,spi-brcmstb-qspi",
 				     "brcm,spi-bcm-qspi";
 			clocks = <&upg_clk>;
-			reg = <0x41a920 0x4 0x41d400 0x188 0x41d200 0x50>;
-			reg-names = "cs_reg", "hif_mspi", "bspi";
+			reg = <0x41d400 0x188 0x41d200 0x50 0x41a920 0x4>;
+			reg-names = "hif_mspi", "bspi", "cs_reg";
 			interrupts = <0x5 0x6 0x0 0x1 0x2 0x3 0x4>;
 			interrupt-parent = <&spi_l2_intc>;
 			interrupt-names = "mspi_done",
-- 
2.43.0


