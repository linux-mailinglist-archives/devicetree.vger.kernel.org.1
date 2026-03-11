Return-Path: <devicetree+bounces-274263-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UF2CAn6psWmzEQAAu9opvQ
	(envelope-from <devicetree+bounces-274263-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 18:42:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FD826822C
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 18:42:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8F4B130AD93D
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 17:40:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C064A3DE42D;
	Wed, 11 Mar 2026 17:40:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BBD12C08CF;
	Wed, 11 Mar 2026 17:40:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773250822; cv=none; b=Jo+JMLuVYNLbofV1w3dVZ7puqsuZZqOm8EJptYdhVgo3V7WFHKyP2RV4XIfEp/MF6b+GJ0O7dU/R7ei/qp3EuZHqUEaFVZcJNJu4CajFFJ0h4OA2FZoGfX8DtdygDgyVcCImEzPSBPFS75q6hKBaj9TQq2/WBkvP6Fub+gAZ55o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773250822; c=relaxed/simple;
	bh=QO+iGABe+uv+M9n3+PZTO+e29elNJdHgVsCS1GlVwUc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LAx5kmhNEAWebsfq3nn8Xi8/FqP4Qfhkt95f/3l/c+cfOo1608K4EpkxgC/Ccv74+GZugjfpXf90a6TD0wFxZ70o/ag23AS89gTQ+z1G+vXUkg0ZmxwUTWC4rXEgFjeGEqiJhPYapxMN1rOZnnsZuSb7bAjM62b1bMKMphl6MdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 747741682;
	Wed, 11 Mar 2026 10:40:12 -0700 (PDT)
Received: from e137876.manchester.arm.com (e137876.arm.com [10.33.10.100])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D28E13F73B;
	Wed, 11 Mar 2026 10:40:16 -0700 (PDT)
From: Debbie Horsfall <debbie.horsfall@arm.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	liviu.dudau@arm.com,
	sudeep.holla@kernel.org,
	lpieralisi@kernel.org,
	linusw@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	debbie.horsfall@arm.com,
	andre.przywara@arm.com
Subject: [PATCH] arm64: dts: zena: Refactor Devicetree nodes
Date: Wed, 11 Mar 2026 17:39:48 +0000
Message-ID: <20260311173948.3478931-1-debbie.horsfall@arm.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.14 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274263-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_NEQ_ENVFROM(0.00)[debbie.horsfall@arm.com,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.817];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:email,arm.com:mid,0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,4.196.180.0:email,0.0.0.100:email,1a810000:email,0.1.150.64:email]
X-Rspamd-Queue-Id: 58FD826822C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move the SRAM node into the SoC node. Move the memory node out of
the include to make it customizable for each platform variant.

Signed-off-by: Debbie Horsfall <debbie.horsfall@arm.com>
---
This targets for-next/juno/updates in response to
https://lore.kernel.org/linux-arm-kernel/20260309-manipulative-inescapable-labradoodle-7a76e4@sudeepholla/
 arch/arm64/boot/dts/arm/zena-css-fvp.dts |  8 +++++
 arch/arm64/boot/dts/arm/zena-css.dtsi    | 44 ++++++++++--------------
 2 files changed, 26 insertions(+), 26 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/zena-css-fvp.dts b/arch/arm64/boot/dts/arm/zena-css-fvp.dts
index b75204a91882..53c5412d92b2 100644
--- a/arch/arm64/boot/dts/arm/zena-css-fvp.dts
+++ b/arch/arm64/boot/dts/arm/zena-css-fvp.dts
@@ -14,6 +14,14 @@ / {
 	chosen {
 		stdout-path = &soc_serial0;
 	};
+
+	memory@80000000 {
+		device_type = "memory";
+
+		/* ~2GB mapped at 2GB, another 2GB at 2TB */
+		reg = <0x00000000 0x80000000 0x00000000 0x7f000000>,
+		      <0x00000200 0x00000000 0x00000000 0x80000000>;
+	};
 };
 
 &soc {
diff --git a/arch/arm64/boot/dts/arm/zena-css.dtsi b/arch/arm64/boot/dts/arm/zena-css.dtsi
index 9899d2883337..0b41ee4bf4c6 100644
--- a/arch/arm64/boot/dts/arm/zena-css.dtsi
+++ b/arch/arm64/boot/dts/arm/zena-css.dtsi
@@ -634,6 +634,24 @@ soc: soc {
 		#size-cells = <2>;
 		ranges;
 
+		sram: sram@104000 {
+			compatible = "mmio-sram";
+			reg = <0x0 0x00104000 0x0 0x00001000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0x0 0x00104000 0x00001000>;
+
+			scmi_shmem_tx: scpshmem-sram-section@0 {
+				compatible = "arm,scmi-shmem";
+				reg = <0x0 0x100>;
+			};
+
+			scmi_shmem_rx: scpshmem-sram-section@100 {
+				compatible = "arm,scmi-shmem";
+				reg = <0x100 0x100>;
+			};
+		};
+
 		timer@1a810000 {
 			compatible = "arm,armv7-timer-mem";
 			reg = <0x0 0x1a810000 0x0 0x10000>;
@@ -748,30 +766,4 @@ timer {
 			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>,
 			     <GIC_PPI 12 IRQ_TYPE_LEVEL_LOW>;
 	};
-
-	sram: sram@104000 {
-		compatible = "mmio-sram";
-		reg = <0x0 0x00104000 0x0 0x00001000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		ranges = <0 0x0 0x00104000 0x00001000>;
-
-		scmi_shmem_tx: scpshmem-sram-section@0 {
-			compatible = "arm,scmi-shmem";
-			reg = <0x0 0x100>;
-		};
-
-		scmi_shmem_rx: scpshmem-sram-section@100 {
-			compatible = "arm,scmi-shmem";
-			reg = <0x100 0x100>;
-		};
-	};
-
-	memory@80000000 {
-		device_type = "memory";
-
-		/* ~2GB mapped at 2GB, another 2GB at 2TB */
-		reg = <0x00000000 0x80000000 0x00000000 0x7f000000>,
-		      <0x00000200 0x00000000 0x00000000 0x80000000>;
-	};
 };
-- 
2.43.0


