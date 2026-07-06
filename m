Return-Path: <devicetree+bounces-320904-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hD3YLnRsS2qjRAEAu9opvQ
	(envelope-from <devicetree+bounces-320904-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 10:51:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3C970E4CA
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 10:51:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=einfochips.com header.s=NAESA-Selector1 header.b=MnclCUgI;
	dmarc=pass (policy=reject) header.from=einfochips.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320904-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320904-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0EFAD30EA323
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 08:11:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19BE33EFFB4;
	Mon,  6 Jul 2026 08:11:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from naesa05.arrow.com (naesa05.arrow.com [216.150.161.26])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E8534402B;
	Mon,  6 Jul 2026 08:11:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783325477; cv=none; b=SoL4JUZ2KZT4Y91i6rwCZI750gz6DzjwyGitLZ9YZ/aTWM/xy8DDmb3f1GZ/yT6/4cU2YqQTO+6PPlODrPldupAvCAKP/KxcsbKQD7oi11b9HHIwKRFFjiZpLV6YwKUvYqzX9xA9c1d/vEWGGdXh95gNMxlPE6GJRhOtPp+zBpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783325477; c=relaxed/simple;
	bh=Gu4BDqxS6JFWO6H4l2DoN2sdQebRLWK99ZceaJZbbnY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=iFbc1GeuKfeqB0zdAOAt4kDYFYOArKDI6ryGsib0nF2UK6YZyZAZQ4sfh2mGaEc1ssRciUsKSn+N+hxQiYAPe2Vp9Fw0XVhaOlOsDeKqI8qv5OJLYErj7E36Mmqhkk8nkBdodgL9AjP/JOsDiAj9N5g199q3//xnb3K+zua6Zmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=einfochips.com; spf=pass smtp.mailfrom=einfochips.com; dkim=pass (2048-bit key) header.d=einfochips.com header.i=@einfochips.com header.b=MnclCUgI; arc=none smtp.client-ip=216.150.161.26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=einfochips.com; i=@einfochips.com; l=1147; q=dns/txt;
  s=NAESA-Selector1; t=1783325471; x=1814861471;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=x/soSMzIMunRja4pBUpuatUbWTL33m22scGQN9bm8fw=;
  b=MnclCUgI+eqJdTvE1m1nOD2v9BbdtHHYZ27QVJKVVxFTl8WQb75EiJA0
   bFlehXWl7oEBYGX4dqjnFAuhqJ2+WhnkQAMiZZ1rIv54M9ndqEp9Gcp0m
   rYXNeSt7T61aLDOsptg9nBCuOnE+LjbLOQoD6DCg61WVu8s11Ws1KDMjM
   DMuYQrMCl6+4OrUHAi+Ev/1//pT+Ds5jUu45QtXYL9Lk9I4LHWaqwdbN9
   BVeiKPnTymP69Wwkqu377O2DRoJYjri3hMgNOnUoKO8vSH2uU2S+c0Ccv
   rLa13rW/LHmnu/pXY0xZFrVlny5AESl/HhajvpGaptZotWeI/o2KmU6jP
   g==;
X-CSE-ConnectionGUID: T3/7FAKCTUOuP9O9ejn8Gg==
X-CSE-MsgGUID: wbrKJ9ybQ5W7ISqYxRGupw==
X-IronPort-AV: E=Sophos;i="6.25,149,1779170400"; 
   d="scan'208";a="57540309"
Received: from unknown (HELO eicahmirelay01.einfochips.com) ([10.100.49.50])
  by naesa05out.arrow.com with ESMTP; 06 Jul 2026 02:11:05 -0600
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
Subject: [PATCH v2 5/8] riscv: dts: eswin: add hsp bus node
Date: Mon,  6 Jul 2026 13:40:52 +0530
Message-Id: <20260706081055.1126275-6-pinkesh.vaghela@einfochips.com>
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
X-OriginalArrivalTime: 06 Jul 2026 08:10:56.0097 (UTC) FILETIME=[F88A3510:01DD0D1E]
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
	TAGGED_FROM(0.00)[bounces-320904-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,einfochips.com:from_mime,einfochips.com:email,einfochips.com:mid,einfochips.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1E3C970E4CA

Add an HSP bus node to manage the HSP CFG clock used by HSP
peripherals. This clock is required for accessing both the HSP CSR
registers and the register spaces of HSP peripheral devices.

Signed-off-by: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>
---
 arch/riscv/boot/dts/eswin/eic7700.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/riscv/boot/dts/eswin/eic7700.dtsi b/arch/riscv/boot/dts/eswin/eic7700.dtsi
index a0fb82f4adca..08067d0c634b 100644
--- a/arch/riscv/boot/dts/eswin/eic7700.dtsi
+++ b/arch/riscv/boot/dts/eswin/eic7700.dtsi
@@ -252,6 +252,19 @@ plic: interrupt-controller@c000000 {
 			#interrupt-cells = <1>;
 		};
 
+		hsp: bus@50400000 {
+			compatible = "simple-pm-bus";
+			ranges = <0x0 0x50400000 0x0 0x50400000 0x0 0xa0000>;
+			clocks = <&clk EIC7700_CLK_GATE_HSP_CFG_CLK>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+
+			hsp_sp_csr: hsp-sp-top-csr@50440000 {
+				compatible = "eswin,eic7700-syscfg", "syscon";
+				reg = <0x0 0x50440000 0x0 0x2000>;
+			};
+		};
+
 		uart0: serial@50900000 {
 			compatible = "snps,dw-apb-uart";
 			reg = <0x0 0x50900000 0x0 0x10000>;
-- 
2.34.1


