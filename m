Return-Path: <devicetree+bounces-320907-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qASlCmpsS2qhRAEAu9opvQ
	(envelope-from <devicetree+bounces-320907-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 10:50:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2BC70E4C0
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 10:50:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=einfochips.com header.s=NAESA-Selector1 header.b=ZGFIwVoa;
	dmarc=pass (policy=reject) header.from=einfochips.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320907-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320907-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C38BD30F8096
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 08:11:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADD833F44DB;
	Mon,  6 Jul 2026 08:11:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from naesa05.arrow.com (naesa05.arrow.com [216.150.161.26])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED9334B66F;
	Mon,  6 Jul 2026 08:11:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783325485; cv=none; b=t55MOeUSvu6BX00z4QvpXbCpBZ+tiRACS9rPKuvcv9GpnLQsC6fzOanXG/JvsxrlgbO0vq9LYrrRlu/azRcmjwPXYHhpG92NAzS//fpEFHh2UR0ZteEw+nzRbAtQFxDHSYzGj8HroKQTz+j6wWP3MSnNWVBfL7oQ+toBt38Ogko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783325485; c=relaxed/simple;
	bh=aU1XeTjJHibisFJtQpu4bte7fpmGO39LMPggiASSWdc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IxH4NtdUfUpz/EJ7sNSnXUc4v5gjnR50v967QqSwVhUsOTn1/a9GPfgoMWlXbbyqOhwazEszAszKKpf71k8QdIGhi0JMV8pgs++mLwrGWMolKOuyd96jz58wbHMT8PdaH4xgMrHHA1RD35ld8Hi9mzUwRUrlvXjMMfa+ski9Djo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=einfochips.com; spf=pass smtp.mailfrom=einfochips.com; dkim=pass (2048-bit key) header.d=einfochips.com header.i=@einfochips.com header.b=ZGFIwVoa; arc=none smtp.client-ip=216.150.161.26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=einfochips.com; i=@einfochips.com; l=2449; q=dns/txt;
  s=NAESA-Selector1; t=1783325482; x=1814861482;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=YKTvongmLvnHSqT7sT4p7hzN6oWaKfhKRdyQkInxBPU=;
  b=ZGFIwVoaLO0H2apXNH/KvelsJIahgKtV4MAYR4hVIx8o6fSphWwvFzTF
   Whra20FL0llX5efKnPS4zOHhUuri/mpg3hxBopnpx9FxouF/YcfKz7HCk
   tLJrpFlfPT0aAXov6ENRjyUS2YiuDHNyTPZyEYgvMbFk/GUKl858zk5ja
   fWchtKj+c81Ia3eHakcJdCeWVAjc/AsIij59eVwUKOxEF9J0Ncvaf25Jc
   jA201+uDrxEbjLxVvCKIxJJhCAPPSEiaKBWfStPUkmMj1FbiTO2yFxBbm
   7BixUmq9zFAE0xre2FE7vQCTZTPkPS7/ehtKsY+Yt2/vcDWDSj92P3KDl
   Q==;
X-CSE-ConnectionGUID: VoMPyqvmQ8KaAdjVC6XSpA==
X-CSE-MsgGUID: 2mFTkfRiQNmvKv2o8dUfRQ==
X-IronPort-AV: E=Sophos;i="6.25,149,1779170400"; 
   d="scan'208";a="57540321"
Received: from unknown (HELO eicahmirelay01.einfochips.com) ([10.100.49.50])
  by naesa05out.arrow.com with ESMTP; 06 Jul 2026 02:11:10 -0600
Received: from AHMCPU1888.localdomain ([172.25.5.100]) by eicahmirelay01.einfochips.com with Microsoft SMTPSVC(10.0.20348.1);
	 Mon, 6 Jul 2026 13:40:56 +0530
From: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Andi Shyti <andi.shyti@kernel.org>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Min Lin <linmin@eswincomputing.com>
Cc: Yulin Lu <luyulin@eswincomputing.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Darshan Prajapati <darshan.prajapati@einfochips.com>,
	Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>,
	Pritesh Patel <pritesh.patel@einfochips.com>
Subject: [PATCH v2 8/8] riscv: dts: eswin: add watchdog support
Date: Mon,  6 Jul 2026 13:40:55 +0530
Message-Id: <20260706081055.1126275-9-pinkesh.vaghela@einfochips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260706081055.1126275-1-pinkesh.vaghela@einfochips.com>
References: <20260706081055.1126275-1-pinkesh.vaghela@einfochips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 06 Jul 2026 08:10:56.0240 (UTC) FILETIME=[F8A00700:01DD0D1E]
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[einfochips.com,reject];
	R_DKIM_ALLOW(-0.20)[einfochips.com:s=NAESA-Selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320907-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[pinkesh.vaghela@einfochips.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:andi.shyti@kernel.org,m:mika.westerberg@linux.intel.com,m:linux-i2c@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:linmin@eswincomputing.com,m:luyulin@eswincomputing.com,m:samuel.holland@sifive.com,m:darshan.prajapati@einfochips.com,m:pinkesh.vaghela@einfochips.com,m:pritesh.patel@einfochips.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pinkesh.vaghela@einfochips.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[einfochips.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,einfochips.com:from_mime,einfochips.com:email,einfochips.com:mid,einfochips.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8A2BC70E4C0

From: Pritesh Patel <pritesh.patel@einfochips.com>

Add watchdog node for ESWIN EIC7700 SoC and enable them for HiFive
Premier P550 board

Signed-off-by: Pritesh Patel <pritesh.patel@einfochips.com>
Signed-off-by: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>
---
 .../dts/eswin/eic7700-hifive-premier-p550.dts | 16 ++++++++
 arch/riscv/boot/dts/eswin/eic7700.dtsi        | 40 +++++++++++++++++++
 2 files changed, 56 insertions(+)

diff --git a/arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts b/arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts
index 1e8c5a0da0b3..882c0e91733a 100644
--- a/arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts
+++ b/arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts
@@ -193,3 +193,19 @@ &uart0 {
 &uart2 {
 	status = "okay";
 };
+
+&wdt0 {
+	status = "okay";
+};
+
+&wdt1 {
+	status = "okay";
+};
+
+&wdt2 {
+	status = "okay";
+};
+
+&wdt3 {
+	status = "okay";
+};
diff --git a/arch/riscv/boot/dts/eswin/eic7700.dtsi b/arch/riscv/boot/dts/eswin/eic7700.dtsi
index 6d328befc623..d079bb337ecb 100644
--- a/arch/riscv/boot/dts/eswin/eic7700.dtsi
+++ b/arch/riscv/boot/dts/eswin/eic7700.dtsi
@@ -265,6 +265,46 @@ hsp_sp_csr: hsp-sp-top-csr@50440000 {
 			};
 		};
 
+		wdt0: watchdog@50800000 {
+			compatible = "snps,dw-wdt";
+			reg = <0x0 0x50800000 0x0 0x4000>;
+			interrupts = <87>;
+			clocks =<&clk EIC7700_CLK_GATE_LSP_WDT0_PCLK>;
+			clock-names = "tclk";
+			resets = <&reset EIC7700_RESET_WDT0>;
+			status = "disabled";
+		};
+
+		wdt1: watchdog@50804000 {
+			compatible = "snps,dw-wdt";
+			reg = <0x0 0x50804000 0x0 0x4000>;
+			interrupts = <88>;
+			clocks =<&clk EIC7700_CLK_GATE_LSP_WDT1_PCLK>;
+			clock-names = "tclk";
+			resets = <&reset EIC7700_RESET_WDT1>;
+			status = "disabled";
+		};
+
+		wdt2: watchdog@50808000 {
+			compatible = "snps,dw-wdt";
+			reg = <0x0 0x50808000 0x0 0x4000>;
+			interrupts = <89>;
+			clocks =<&clk EIC7700_CLK_GATE_LSP_WDT2_PCLK>;
+			clock-names = "tclk";
+			resets = <&reset EIC7700_RESET_WDT2>;
+			status = "disabled";
+		};
+
+		wdt3: watchdog@5080c000 {
+			compatible = "snps,dw-wdt";
+			reg = <0x0 0x5080c000 0x0 0x4000>;
+			interrupts = <90>;
+			clocks =<&clk EIC7700_CLK_GATE_LSP_WDT3_PCLK>;
+			clock-names = "tclk";
+			resets = <&reset EIC7700_RESET_WDT3>;
+			status = "disabled";
+		};
+
 		uart0: serial@50900000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x0 0x50900000 0x0 0x10000>;
-- 
2.34.1


