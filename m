Return-Path: <devicetree+bounces-259624-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8ENhGoW9d2l8kgEAu9opvQ
	(envelope-from <devicetree+bounces-259624-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:16:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E15A38C737
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:16:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C3829303BB34
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 19:15:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7009827816C;
	Mon, 26 Jan 2026 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C005UX+a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9441F27B32C
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 19:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769454953; cv=none; b=RFFzz6r88zCBPFXSqbIWXfLICD0YSKadt4iy6g5syWokIRYFII4gHhTaQeYYArboNLXdqiGMSAkHr5PFul9pYoI/IQYEkDKCkgNv0WQI7ZXAiuoilRo0V85N4B4uEZFodYPvVAdEtHLeNMQ6DlKH2gowx7xBNfgEyStzUk4kJzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769454953; c=relaxed/simple;
	bh=mnECYxDi5qAt4CbVbEqLJQQNnuCcPGPXcaLcH68G2YU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WOur3wuZGXgzohzu8FFPNn/jSx1tUpq0hUxSTjFM+3b268Asb8R0VKxQXz1zAENABokqN2QQAzJNGX/O+FbnxRMRzUP/tUaH+X7WhONFAysH5XTGxyGE522sE48sqpmAzsXwu2hTFHL4u8g2Oy9Vhlmn0Nsuwi31+bXyRfrPD4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C005UX+a; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-432d256c2e6so4670980f8f.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 11:15:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769454950; x=1770059750; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6/Mlj96blry9ZyhwpAMaVj0DHbJ2yXiCQQSxiDRn6kg=;
        b=C005UX+a0+/EJfy9QT2CaUCqfkb8vf/lpxhGNGE0QzQXl3Z51WiybQdlV3NlKW0WOY
         WfQguCbAsIoLUxNrLBbjDOrrDS9yMatHPLQeFt05aotfjPu25S4bbcmPXe7Oi1km3WOn
         RFSll0bjqifXifqgsTLqfuM4TaOKxXS+Nadj6BeAohKJ8s2V1Cv4DW3VWCPz4zegzGiX
         tCeY5m6x0VvXqAmMLj61BNjBZkpHELYD5Pwun1lG5Xxy/A5C4EAN9B3ryyIRtfZz11i+
         mRaz557dVDdlTBm5TiIJtjOAVz5Q3Hs6Ey2eylABGG0NbifpKguDAkh3DnOmwHjtueoV
         rn1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769454950; x=1770059750;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6/Mlj96blry9ZyhwpAMaVj0DHbJ2yXiCQQSxiDRn6kg=;
        b=wM3j2Dn/qO9RX1sgoq9gUbJT3ynGYSrhl2bU3rFx/C4+hMlkz7J1iJ+7eN96BkWDw0
         1lO33/AGTzmotiDfD2Lrx8U27x+gA1vLIW/K74nQAGI5WMJmt6BQKWcMlBwSY5kuuILh
         7MliHbFrvHd0FM/KSRb1ZEjh+iKIXRyOnABdqps660ihH+xPbDV2nihf0PzswdTnoJ3O
         oGO1UNPl8QnAcGj2fCNx0d+MWWUh1BaKEgvlF7Uq7V4JDib7U8lna5osM9htQZ5nVbeY
         Vqr85BIE9v+g7AhvOzlets+ZgDfNCkFvQtWfZVOb6zURK25WfsAEI4fOlZ5W8sKNyoXu
         kqeA==
X-Gm-Message-State: AOJu0YzGa4AfkRJn3Uo9N0YjzTvyEIc6oqhsNwy2mGMQGdODufuDm+bD
	Zjan83zexzGbNU0zuH3JVA1+MTTyGk8xzxWtgUiRa0kWeDV45eFEZsYc
X-Gm-Gg: AZuq6aJpMwhrlpCE1l2ueTdAzCF/aiOeeZfIMIcF1hK2v6Nwi6zzL9Go7XGOSDhUK67
	DcE1GSDNCaqlVE6N6NpPX8czKvKqMpAz39rXZwoLCks6h77HOL/eam5Tsmrc6VduPbzj5OFRY6P
	j88PV+Fvn/tUdIeaOxoqGlbSg2xjMcIo3Hm8b1qZh0j2HxDu2dd2H+D7ycDtesUGdTpIuFSR4BV
	g/C+ZA8GDUbnbauq3aZhH5URKd7LkyiK1h+Hyzs112LNzEOfn3sL+h8ziPJiMuwWhG9gpKVl/OQ
	pkjEpZsWSqPnE1V/Y2+elV4FBpQzOTxVEe0T53Bq27adoN7FMMIy220OgLIXoUm9AMPDTjEd7SU
	XzKyd8Qtabd984Y4wD/EZsGEe7YuvDYNNHbKmyHnlAdq4Qc5tnjs+y7/FfnyRdgx42rB24DvByq
	5dhzJxZySa5BM=
X-Received: by 2002:a05:6000:438a:b0:435:a287:82c with SMTP id ffacd0b85a97d-435ca0ec933mr8285960f8f.1.1769454949833;
        Mon, 26 Jan 2026 11:15:49 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c02d0dsm30958219f8f.4.2026.01.26.11.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 11:15:49 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Mikko Perttunen <mperttunen@nvidia.com>
Cc: devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/5] ARM: tegra: Add EMC OPP and ICC properties to Tegra114 EMC and ACTMON device-tree nodes
Date: Mon, 26 Jan 2026 21:15:34 +0200
Message-ID: <20260126191536.78829-4-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260126191536.78829-1-clamor95@gmail.com>
References: <20260126191536.78829-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259624-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,nvidia.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[4.44.146.176:email];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[6000c800:email,4.44.103.184:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E15A38C737
X-Rspamd-Action: no action

Add EMC OPP tables and interconnect paths that will be used for dynamic
memory bandwidth scaling based on memory utilization statistics.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 .../dts/nvidia/tegra114-peripherals-opp.dtsi  | 164 ++++++++++++++++++
 arch/arm/boot/dts/nvidia/tegra114.dtsi        |   9 +
 2 files changed, 173 insertions(+)
 create mode 100644 arch/arm/boot/dts/nvidia/tegra114-peripherals-opp.dtsi

diff --git a/arch/arm/boot/dts/nvidia/tegra114-peripherals-opp.dtsi b/arch/arm/boot/dts/nvidia/tegra114-peripherals-opp.dtsi
new file mode 100644
index 000000000000..b40a1c24abab
--- /dev/null
+++ b/arch/arm/boot/dts/nvidia/tegra114-peripherals-opp.dtsi
@@ -0,0 +1,164 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/ {
+	emc_icc_dvfs_opp_table: opp-table-emc {
+		compatible = "operating-points-v2";
+
+		opp-12750000-900 {
+			opp-microvolt = <900000 900000 1390000>;
+			opp-hz = /bits/ 64 <12750000>;
+			opp-supported-hw = <0x000F>;
+		};
+
+		opp-20400000-900 {
+			opp-microvolt = <900000 900000 1390000>;
+			opp-hz = /bits/ 64 <20400000>;
+			opp-supported-hw = <0x000F>;
+		};
+
+		opp-40800000-900 {
+			opp-microvolt = <900000 900000 1390000>;
+			opp-hz = /bits/ 64 <40800000>;
+			opp-supported-hw = <0x000F>;
+		};
+
+		opp-68000000-900 {
+			opp-microvolt = <900000 900000 1390000>;
+			opp-hz = /bits/ 64 <68000000>;
+			opp-supported-hw = <0x000F>;
+		};
+
+		opp-102000000-900 {
+			opp-microvolt = <900000 900000 1390000>;
+			opp-hz = /bits/ 64 <102000000>;
+			opp-supported-hw = <0x000F>;
+		};
+
+		opp-204000000-900 {
+			opp-microvolt = <900000 900000 1390000>;
+			opp-hz = /bits/ 64 <204000000>;
+			opp-supported-hw = <0x000F>;
+			opp-suspend;
+		};
+
+		opp-312000000-1000 {
+			opp-microvolt = <1000000 1000000 1390000>;
+			opp-hz = /bits/ 64 <312000000>;
+			opp-supported-hw = <0x000F>;
+		};
+
+		opp-408000000-1000 {
+			opp-microvolt = <1000000 1000000 1390000>;
+			opp-hz = /bits/ 64 <408000000>;
+			opp-supported-hw = <0x000F>;
+		};
+
+		/*
+		 * T40X can work with 1050mV for 528MHz but T40T which is
+		 * in the same group as T40X requires 1100mV. If there will
+		 * be enough data that T40T can work reliably with 1050mV
+		 * for 528MHz then voltage for 528MHz opp can be lowered.
+		 * T40S should remain with 1100mV for 528MHz opp.
+		 */
+		opp-528000000-1100 {
+			opp-microvolt = <1100000 1100000 1390000>;
+			opp-hz = /bits/ 64 <528000000>;
+			opp-supported-hw = <0x000F>;
+		};
+
+		opp-624000000-1100 {
+			opp-microvolt = <1100000 1100000 1390000>;
+			opp-hz = /bits/ 64 <624000000>;
+			opp-supported-hw = <0x000F>;
+		};
+
+		opp-792000000-1100 {
+			opp-microvolt = <1100000 1100000 1390000>;
+			opp-hz = /bits/ 64 <792000000>;
+			opp-supported-hw = <0x000F>;
+		};
+
+		opp-900000000-1200 {
+			opp-microvolt = <1200000 1200000 1390000>;
+			opp-hz = /bits/ 64 <900000000>;
+			opp-supported-hw = <0x000E>;
+		};
+	};
+
+	emc_bw_dfs_opp_table: opp-table-actmon {
+		compatible = "operating-points-v2";
+
+		opp-12750000 {
+			opp-hz = /bits/ 64 <12750000>;
+			opp-supported-hw = <0x000F>;
+			opp-peak-kBps = <204000>;
+		};
+
+		opp-20400000 {
+			opp-hz = /bits/ 64 <20400000>;
+			opp-supported-hw = <0x000F>;
+			opp-peak-kBps = <326400>;
+		};
+
+		opp-40800000 {
+			opp-hz = /bits/ 64 <40800000>;
+			opp-supported-hw = <0x000F>;
+			opp-peak-kBps = <652800>;
+		};
+
+		opp-68000000 {
+			opp-hz = /bits/ 64 <68000000>;
+			opp-supported-hw = <0x000F>;
+			opp-peak-kBps = <1088000>;
+		};
+
+		opp-102000000 {
+			opp-hz = /bits/ 64 <102000000>;
+			opp-supported-hw = <0x000F>;
+			opp-peak-kBps = <1632000>;
+		};
+
+		opp-204000000 {
+			opp-hz = /bits/ 64 <204000000>;
+			opp-supported-hw = <0x000F>;
+			opp-peak-kBps = <3264000>;
+			opp-suspend;
+		};
+
+		opp-312000000 {
+			opp-hz = /bits/ 64 <312000000>;
+			opp-supported-hw = <0x000F>;
+			opp-peak-kBps = <4992000>;
+		};
+
+		opp-408000000 {
+			opp-hz = /bits/ 64 <408000000>;
+			opp-supported-hw = <0x000F>;
+			opp-peak-kBps = <6528000>;
+		};
+
+		opp-528000000 {
+			opp-hz = /bits/ 64 <528000000>;
+			opp-supported-hw = <0x000F>;
+			opp-peak-kBps = <8448000>;
+		};
+
+		opp-624000000 {
+			opp-hz = /bits/ 64 <624000000>;
+			opp-supported-hw = <0x000F>;
+			opp-peak-kBps = <9984000>;
+		};
+
+		opp-792000000 {
+			opp-hz = /bits/ 64 <792000000>;
+			opp-supported-hw = <0x000F>;
+			opp-peak-kBps = <12672000>;
+		};
+
+		opp-900000000 {
+			opp-hz = /bits/ 64 <900000000>;
+			opp-supported-hw = <0x000E>;
+			opp-peak-kBps = <14400000>;
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/nvidia/tegra114.dtsi b/arch/arm/boot/dts/nvidia/tegra114.dtsi
index 77ab17f397f6..9acba15fba25 100644
--- a/arch/arm/boot/dts/nvidia/tegra114.dtsi
+++ b/arch/arm/boot/dts/nvidia/tegra114.dtsi
@@ -8,6 +8,8 @@
 #include <dt-bindings/soc/tegra-pmc.h>
 #include <dt-bindings/thermal/tegra114-soctherm.h>
 
+#include "tegra114-peripherals-opp.dtsi"
+
 / {
 	compatible = "nvidia,tegra114";
 	interrupt-parent = <&lic>;
@@ -323,6 +325,9 @@ actmon: actmon@6000c800 {
 		clock-names = "actmon", "emc";
 		resets = <&tegra_car TEGRA114_CLK_ACTMON>;
 		reset-names = "actmon";
+		operating-points-v2 = <&emc_bw_dfs_opp_table>;
+		interconnects = <&mc TEGRA114_MC_MPCORER &emc>;
+		interconnect-names = "cpu-read";
 		#cooling-cells = <2>;
 	};
 
@@ -655,6 +660,7 @@ mc: memory-controller@70019000 {
 
 		#reset-cells = <1>;
 		#iommu-cells = <1>;
+		#interconnect-cells = <1>;
 	};
 
 	emc: external-memory-controller@7001b000 {
@@ -665,6 +671,9 @@ emc: external-memory-controller@7001b000 {
 		clock-names = "emc";
 
 		nvidia,memory-controller = <&mc>;
+		operating-points-v2 = <&emc_icc_dvfs_opp_table>;
+
+		#interconnect-cells = <0>;
 	};
 
 	hda@70030000 {
-- 
2.51.0


