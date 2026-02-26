Return-Path: <devicetree+bounces-268874-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gNNnA11XoGkNigQAu9opvQ
	(envelope-from <devicetree+bounces-268874-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:23:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5BA1A771C
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:23:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DBBE53170927
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:08:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49A2536B043;
	Thu, 26 Feb 2026 14:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fVwlm1yQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62303612FE
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772114927; cv=none; b=On+GAcRUcFjzE3V8yGOutz0MLlZht6m0sWEWlFGGbVYMOvBv8k3HJu0OF5JnTGclG6//zyhUKL4CErbpSkKKB5dkCOGfy+BuS4eHmTwIgGLxUfXRUkVa/zRsnT9a26o6XOf/z8t5McyztfqY8GcH6VESqi+VU8x2HTIS893fxaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772114927; c=relaxed/simple;
	bh=zOozJ3zv4ZVEOtjpoT9fTG9xriUnw/ZReMGwbHGkXqE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=UOdUquFtgFaqyyeRCEUY15rZPr4La4jlExgxJSxuEYR9ZQO/sLUoMrrCyHVbsjJobBUVRp9RB1oEDClaJPNrwARD7ZRHGuGDTP2QZd1Wd7gIRY7dt62OehdpRspl9VUGB17252ZLCJyv9861hbLZGMq1sso6qsxkiZF4S/MZeeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fVwlm1yQ; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2ad9f316d68so4073445ad.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:08:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772114925; x=1772719725; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=C5lmdRrYKAkps9LQDtVzFXDdak8+cj9tclXWqs/XbLs=;
        b=fVwlm1yQijdKi6Dog9KHsZ4KWo1WEes0N/rtxtUQfe00W5S6DU9XwIW3DH8wA2iox4
         tQH0uITR0cjHGiT18jZCG+T8PptIU3AuRSyV6lNf6uE57E21stY6cSFz2Qo+MpSptP6u
         tsx+dRivVZPW4WzMkMoJcK75Q4BCyKKzsnGpAdwoxw78W9n6WIJc1t38VOwKt3bIxM0p
         PmVYybknySLU0x/sf17FUHWaiaQIYSGFdu9weXgA9gtAuZqLjGvOquKDORtuWAlDLh5h
         qOpiJUCxcJCIEkXSttpC5846ycA0iKrX79+BAWwQXMESWUuCwXeWKkaB7XN97uaZWOea
         iDbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772114925; x=1772719725;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C5lmdRrYKAkps9LQDtVzFXDdak8+cj9tclXWqs/XbLs=;
        b=cfT+wNwwaORiTQpxKU0yYI2GtjI407K6rcpLM6jVAHEhdwxIsB+Lmc0CG5gHPTfLoB
         +sLBy6TjpetnqhvWMsrufKyQG48ghnnnL9h9L4eZdVn8tvvilfoZypl/l73/IBAMI6CA
         FRGaiBnXCJ2fL8zCQmBrtfSSRaldeVo9Z8Hs6uafnKBVjnWZaJrgQ7DCpGD5hW8uynqo
         qKA9MEiTNtYBpYXU0RdAPO9EgjytAVMXrGCT16qUyge4hmyck+TFTJPMhciaaArBL7ia
         KTemoAEPZBaoRCQ1nRU5hTzqvkpxjoa4pj2dCojRFtYpC6yIuchzMg19GGPSCRNnzMtG
         HDtQ==
X-Gm-Message-State: AOJu0YyaMIXh+l1l4GIjEhbCvucUl7CylYb5hCzA63f9hIvvCuxYCqXt
	dRhcLElZmFMrLbi9Nqgj3TUnbk80kRfuIelaUElkzWGsLudQSze2vEIbYMK6RTgA
X-Gm-Gg: ATEYQzxnKqMhVW2jznXhL+9+qET0bQNbshcN0cjP9dSbgltAr9G5KppIDXV3w7MdWwc
	AJ6UudPAmBTI1JEm29d8T92Rlh//6VIAtcCDKjmayIHArKGxZP0pKJjJy11qxP37P5/fZWpz6QW
	NgOC3qz1/OyWGZoTYwLkUtZgpDINdNdwhRIl7BzzB2I2BdzarBpU1BPlrdgDM2edDmgw54euPpf
	SAl4geTZnzqGWfZWFf2dFpz1heCPkBYTGUFS+DPLuwYgBeo149A/Ug14iQJY4wh4p4ICHqJZ7py
	8sUYbRt2jqRfM6moWkOGZ8m4DnAbdWDaRRRYP4xmhaAXRErIu//v8vtrWpv4YzVKMgqiN/ODn5t
	2mCEF87TQpp+yQm2y0Ia11ZPelOXnKrDXc2lvQJLx/Dj9lHAHSySSJ9cdcDxoNFgbUaBR5OZk5P
	5UULoPKdddQaerGc2TmbcBF0uhPgxGgA==
X-Received: by 2002:a17:903:3848:b0:2ad:cede:3a1a with SMTP id d9443c01a7336-2ae03495f6fmr26068205ad.39.1772114924973;
        Thu, 26 Feb 2026 06:08:44 -0800 (PST)
Received: from [127.0.1.1] ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb6e190fsm28037205ad.82.2026.02.26.06.08.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 06:08:44 -0800 (PST)
From: Colin Huang <u8813345@gmail.com>
Date: Thu, 26 Feb 2026 22:08:16 +0800
Subject: [PATCH v2] ARM: dts: aspeed: anacapa: update SGPIO and PCA9555
 settings for DFT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-anacapa-dts-sgpio-v2-1-fd76828616b8@gmail.com>
X-B4-Tracking: v=1; b=H4sIAM9ToGkC/32NQQqDMBBFryKz7pSY1lq68h7FxSQZ40A1IRFpE
 e/e1AN08+F9+O9vkDkJZ3hUGyReJUuYC+hTBXak2TOKKwxa6ZsqgTSTpUjolozZRwnIV1aGGqu
 ta6DsYuJB3ofz2RceJS8hfY6Ltf61/2xrjTXShVqjjLq3g+r8RPI62zBBv+/7F9hMW2SyAAAA
X-Change-ID: 20260202-anacapa-dts-sgpio-e4e0ba5c2cd5
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Colin.Huang2@amd.com, Carl.Lee@amd.com, Peter.Shen@amd.com, 
 Colin Huang <u8813345@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772114922; l=8780;
 i=u8813345@gmail.com; s=20260202; h=from:subject:message-id;
 bh=zOozJ3zv4ZVEOtjpoT9fTG9xriUnw/ZReMGwbHGkXqE=;
 b=FPqErmaXHAqA92QS3zYhsA6YIjvUzR/2fJt5KhjFcR9qgDGYtiJvJlo2Zi02Xg35kWutD0MEo
 cF5byFwicGlD1gJ+XHDQlwjR+iLQFU6GKETWF86db6p6IBdbtgflcHl
X-Developer-Key: i=u8813345@gmail.com; a=ed25519;
 pk=Zlg0WqpCw4qbswOqamTBTXIchwR/3SnYZpy7rjaGMdQ=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,amd.com,gmail.com];
	TAGGED_FROM(0.00)[bounces-268874-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u8813345@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.24:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4D5BA1A771C
X-Rspamd-Action: no action

This update adjusts SGPIO mappings and enables interrupt support for the
PCA9555 GPIO expanders. These changes are required as part of the DFT
(Design For Tooling) integration and are aligned with the SGPIO signal
definitions provided in Helios_SGPIO_BIT_MAP.xlsx (rev: 2026-02-16).

Updates include:
- Add interrupt-parent and interrupts properties to PCA9555 nodes to
  enable proper interrupt handling required by phosphor-gpio-monitor.
- Correct placement of LEAK_DETECT_RMC_N.
- Update SGPIO line-name mappings per the latest Helios SGPIO bit map to
  reflect leakage channels, presence pins, module power-good, and other
  DFT-related monitoring signals.

Signed-off-by: Colin Huang <u8813345@gmail.com>
---
Update SGPIO line names for the Facebook Anacapa platform and enable
interrupt support for PCA9555 GPIO expanders. These changes are part of
DFT (Design For Tooling) integration and align the device tree with the
latest SGPIO bit mapping used during board validation.

The updates are based on: Helios_SGPIO_BIT_MAP.xlsx (rev: 2026-02-16).

The following changes are included:
- Add BMC_AINIC0_WP_R2_L and BMC_AINIC1_WP_R2_L
- Correct placement of LEAK_DETECT_RMC_N
- Add PRSNT_NFC_BOARD_R
- Add IRQ_NFC_BOARD_R and RSMRST_N
- Add DC_OFF, EAM_MOD_PWR_GD_TIMEOUT, CPLD_AMC_STBY_PWR_EN
- Add FM_MAIN_PWREN_RMC_EN_ISO
---
Changes in v2:
- Add interrupt-parent and interrupts properties to PCA9555 nodes to
  enable proper interrupt handling required by phosphor-gpio-monitor.
- Clarify DFT motivation in the commit message and mention the source
  mapping (Helios_SGPIO_BIT_MAP.xlsx rev: 2026-02-16).
- Minor wording cleanups in the commit message (line names vs. mappings).
- Rebase onto the latest tree to account for intervening commits.
- Link to v1: https://lore.kernel.org/r/20260202-anacapa-dts-sgpio-v1-1-a3a7b0b087f0@gmail.com
---
 .../dts/aspeed/aspeed-bmc-facebook-anacapa.dts     | 147 ++++++++++++---------
 1 file changed, 88 insertions(+), 59 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
index 2cb7bd128d24..aa53ae8eb61f 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
@@ -500,6 +500,9 @@ gpio@24 {
 				gpio-controller;
 				#gpio-cells = <2>;
 
+				interrupt-parent = <&sgpiom0>;
+				interrupts = <174 IRQ_TYPE_LEVEL_LOW>;
+
 				gpio-line-names =
 					"RPDB_EAM2_PRSNT_MOS_N_R", "RPDB_EAM3_PRSNT_MOS_N_R",
 					"RPDB_PWRGD_P50V_HSC4_SYS_R",
@@ -546,6 +549,9 @@ gpio@24 {
 				gpio-controller;
 				#gpio-cells = <2>;
 
+				interrupt-parent = <&sgpiom0>;
+				interrupts = <174 IRQ_TYPE_LEVEL_LOW>;
+
 				gpio-line-names =
 					"LPDB_P50V_FAN1_R2_PG","LPDB_P50V_FAN2_R2_PG",
 					"LPDB_P50V_FAN3_R2_PG","LPDB_P50V_FAN4_R2_PG",
@@ -864,87 +870,104 @@ &sgpiom0 {
 	gpio-line-names =
 	/*in - out - in - out */
 	/* A0-A7 line 0-15 */
-	"", "FM_CPU0_SYS_RESET_N", "", "CPU0_KBRST_N",
-	"", "FM_CPU0_PROCHOT_trigger_N", "", "FM_CLR_CMOS_R_P0",
-	"", "Force_I3C_SEL", "", "SYSTEM_Force_Run_AC_Cycle",
-	"", "", "", "",
+	"L_FNIC_FLT", "FM_CPU0_SYS_RESET_N",
+	"L_BNIC0_FLT", "CPU0_KBRST_N",
+	"L_BNIC1_FLT", "FM_CPU0_PROCHOT_trigger_N",
+	"L_BNIC2_FLT", "FM_CLR_CMOS_R_P0",
+	"L_BNIC3_FLT", "Force_I3C_SEL",
+	"L_RTM_SW_FLT", "SYSTEM_Force_Run_AC_Cycle",
+	"", "",
+	"", "",
 
 	/* B0-B7 line 16-31 */
 	"Channel0_leakage_EAM3", "FM_CPU_FPGA_JTAG_MUX_SEL",
 	"Channel1_leakage_EAM0", "FM_SCM_JTAG_MUX_SEL",
 	"Channel2_leakage_Manifold1", "FM_BRIDGE_JTAG_MUX_SEL",
 	"Channel3_leakage", "FM_CPU0_NMI_SYNC_FLOOD_N",
-	"Channel4_leakage_Manifold2", "",
-	"Channel5_leakage_EAM1", "",
-	"Channel6_leakage_CPU_DIMM", "",
-	"Channel7_leakage_EAM2", "",
+	"Channel4_leakage_Manifold2", "BMC_AINIC0_WP_R2_L",
+	"Channel5_leakage_EAM1", "BMC_AINIC1_WP_R2_L",
+	"Channel6_leakage_CPU_DIMM", "CPLD_BUF_R_AGPIO330",
+	"Channel7_leakage_EAM2", "CPLD_BUF_R_AGPIO331",
 
 	/* C0-C7 line 32-47 */
-	"RSVD_RMC_GPIO3", "", "", "",
-	"", "", "", "",
-	"LEAK_DETECT_RMC_N", "", "", "",
-	"", "", "", "",
+	"RSVD_RMC_GPIO3", "RTM_MUX_L",
+	"LEAK_DETECT_RMC_N", "RTM_MUX_R",
+	"HDR_P0_NMI_BTN_BUF_R_N", "",
+	"No_Leak_Sensor_flag", "",
+	"", "",
+	"", "",
+	"", "",
+	"", "",
 
 	/* D0-D7 line 48-63 */
-	"PWRGD_PDB_EAMHSC0_CPLD_PG_R", "",
-	"PWRGD_PDB_EAMHSC1_CPLD_PG_R", "",
-	"PWRGD_PDB_EAMHSC2_CPLD_PG_R", "",
-	"PWRGD_PDB_EAMHSC3_CPLD_PG_R", "",
-	"AMC_BRD_PRSNT_CPLD_L", "", "", "",
-	"", "", "", "",
+	"PWRGD_CHAD_CPU0_FPGA", "",
+	"PWRGD_CHEH_CPU0_FPGA", "",
+	"PWRGD_CHIL_CPU0_FPGA", "",
+	"PWRGD_CHMP_CPU0_FPGA", "",
+	"AMC_BRD_PRSNT_CPLD_L", "",
+	"", "",
+	"", "",
+	"", "",
 
 	/* E0-E7 line 64-79 */
-	"AMC_PDB_EAMHSC0_CPLD_EN_R", "",
-	"AMC_PDB_EAMHSC1_CPLD_EN_R", "",
-	"AMC_PDB_EAMHSC2_CPLD_EN_R", "",
-	"AMC_PDB_EAMHSC3_CPLD_EN_R", "",
-	"", "", "", "",
-	"", "", "", "",
+	"L_PRSNT_B_FENIC_R2_N", "",
+	"L_PRSNT_B_BENIC0_R2_N", "",
+	"L_PRSNT_B_BENIC1_R2_N", "",
+	"L_PRSNT_B_BENIC2_R2_N", "",
+	"L_PRSNT_B_BENIC3_R2_N", "",
+	"", "",
+	"", "",
+	"", "",
 
 	/* F0-F7 line 80-95 */
-	"PWRGD_PVDDCR_CPU1_P0", "SGPIO_READY",
-	"PWRGD_PVDDCR_CPU0_P0", "",
-	"", "", "", "",
-	"", "", "", "",
+	"R_PRSNT_B_FENIC_R2_N", "SGPIO_READY",
+	"R_PRSNT_B_BENIC0_R2_N", "",
+	"R_PRSNT_B_BENIC1_R2_N", "",
+	"R_PRSNT_B_BENIC2_R2_N", "",
+	"R_PRSNT_B_BENIC3_R2_N", "",
+	"", "",
+	"", "",
+	"", "",
 
 	/* G0-G7 line 96-111 */
-	"PWRGD_PVDDCR_SOC_P0", "",
-	"PWRGD_PVDDIO_P0", "",
-	"PWRGD_PVDDIO_MEM_S3_P0", "",
-	"PWRGD_CHMP_CPU0_FPGA", "",
-	"PWRGD_CHIL_CPU0_FPGA", "",
-	"PWRGD_CHEH_CPU0_FPGA", "",
-	"PWRGD_CHAD_CPU0_FPGA", "FM_BMC_READY_PLD",
+	"L_PRSNT_EDSFF2_N", "",
+	"L_PRSNT_EDSFF3_N", "",
+	"R_PRSNT_EDSFF2_N", "",
+	"R_PRSNT_EDSFF3_N", "",
+	"", "",
+	"", "",
 	"", "",
+	"PRSNT_NFC_BOARD_R", "",
 
 	/* H0-H7 line 112-127 */
-	"PWRGD_P3V3", "",
-	"P12V_DDR_IP_PWRGD_R", "",
-	"P12V_DDR_AH_PWRGD_R", "",
-	"PWRGD_P12V_VRM1_CPLD_PG_R", "",
-	"PWRGD_P12V_VRM0_CPLD_PG_R", "",
-	"PWRGD_PDB_HSC4_CPLD_PG_R", "",
-	"PWRGD_PVDD18_S5_P0_PG", "",
-	"PWRGD_PVDD33_S5_P0_PG", "",
+	"R_FNIC_FLT", "",
+	"R_BNIC0_FLT", "",
+	"R_BNIC1_FLT", "",
+	"R_BNIC2_FLT", "",
+	"R_BNIC3_FLT", "",
+	"R_RTM_SW_FLT", "",
+	"", "",
+	"", "",
 
 	/* I0-I7 line 128-143 */
 	"EAM0_BRD_PRSNT_R_L", "",
 	"EAM1_BRD_PRSNT_R_L", "",
 	"EAM2_BRD_PRSNT_R_L", "",
 	"EAM3_BRD_PRSNT_R_L", "",
-	"EAM0_CPU_MOD_PWR_GD_R", "",
-	"EAM1_CPU_MOD_PWR_GD_R", "",
-	"EAM2_CPU_MOD_PWR_GD_R", "",
-	"EAM3_CPU_MOD_PWR_GD_R", "",
+	"FM_TPM_PRSNT_R_N", "",
+	"PDB_PRSNT_R_N", "",
+	"PRSNT_EDSFF0_N", "",
+	"PRSNT_CPU0_N", "",
 
 	/* J0-J7 line 144-159 */
-	"PRSNT_L_BIRDGE_R", "",
-	"PRSNT_R_BIRDGE_R", "",
+	"PRSNT_L_BRIDGE_R", "",
+	"PRSNT_R_BRIDGE_R", "",
 	"BRIDGE_L_MAIN_PG_R", "",
 	"BRIDGE_R_MAIN_PG_R", "",
 	"BRIDGE_L_STBY_PG_R", "",
 	"BRIDGE_R_STBY_PG_R", "",
-	"", "", "", "",
+	"IRQ_NFC_BOARD_R", "",
+	"RSMRST_N", "",
 
 	/* K0-K7 line 160-175 */
 	"ADC_I2C_ALERT_N", "",
@@ -957,10 +980,14 @@ &sgpiom0 {
 	"PDB_ALERT_R_N", "",
 
 	/* L0-L7 line 176-191 */
-	"CPU0_SP7R1", "", "CPU0_SP7R2", "",
-	"CPU0_SP7R3", "", "CPU0_SP7R4", "",
-	"CPU0_CORETYPE0", "", "CPU0_CORETYPE1", "",
-	"CPU0_CORETYPE2", "", "FM_BIOS_POST_CMPLT_R_N", "",
+	"CPU0_SP7R1", "",
+	"CPU0_SP7R2", "",
+	"CPU0_SP7R3", "",
+	"CPU0_SP7R4", "",
+	"CPU0_CORETYPE0", "",
+	"CPU0_CORETYPE1", "",
+	"CPU0_CORETYPE2", "",
+	"FM_BIOS_POST_CMPLT_R_N", "",
 
 	/* M0-M7 line 192-207 */
 	"EAM0_SMERR_CPLD_R_L", "",
@@ -978,17 +1005,19 @@ &sgpiom0 {
 	"AMC_STBY_PGOOD_R", "",
 	"CPU_AMC_SLP_S5_R_L", "",
 	"AMC_CPU_EAMPG_R", "",
-	"", "", "", "",
+	"DIMM_PMIC_PG_TIMEOUT", "",
+	"EAM_MOD_PWR_GD_TIMEOUT", "",
+	"CPLD_AMC_STBY_PWR_EN", "",
 
 	/* O0-O7 line 224-239 */
 	"HPM_PWR_FAIL", "Port80_b0",
 	"FM_DIMM_IP_FAIL", "Port80_b1",
 	"FM_DIMM_AH_FAIL", "Port80_b2",
 	"HPM_AMC_THERMTRIP_R_L", "Port80_b3",
-	"FM_CPU0_THERMTRIP_N", "Port80_b4",
+	"cpu_thermtrip_detect", "Port80_b4",
 	"PVDDCR_SOC_P0_OCP_L", "Port80_b5",
 	"CPLD_SGPIO_RDY", "Port80_b6",
-	"", "Port80_b7",
+	"FM_MAIN_PWREN_RMC_EN_ISO", "Port80_b7",
 
 	/* P0-P7 line 240-255 */
 	"CPU0_SLP_S5_N_R", "NFC_VEN",
@@ -997,8 +1026,8 @@ &sgpiom0 {
 	"PWRGD_RMC", "",
 	"FM_RST_CPU0_RESET_N", "",
 	"FM_PWRGD_CPU0_PWROK", "",
-	"wS5_PWR_Ready", "",
-	"wS0_ON_N", "PWRGD_P1V0_AUX";
+	"AMC_FAIL", "",
+	"wS0_ON_N", "";
 	status = "okay";
 };
 

---
base-commit: 710dbb13377c80a6e39ef049a517665841e3221e
change-id: 20260202-anacapa-dts-sgpio-e4e0ba5c2cd5

Best regards,
-- 
Colin Huang <u8813345@gmail.com>


