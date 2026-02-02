Return-Path: <devicetree+bounces-261655-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMmUE2pGgGkE5gIAu9opvQ
	(envelope-from <devicetree+bounces-261655-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 07:38:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D502AC8DC6
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 07:38:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3B079308FFDB
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 06:32:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE3B1308F3D;
	Mon,  2 Feb 2026 06:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XxGnPrty"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6297E2FD694
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 06:31:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770013876; cv=none; b=ZsHp0mBjrBj7WOtaGW7hkjGOIKUxQ7DTUNtA7UnF9p2eTwoRp//6I5P57vqUMuhkmUS+ix2+UsJfKy9xG67VqaEP4u86R9yHT8Gn0lkwj5AP8OoOYteiDMTw9qK2ltgCHifcGZKtYl4+JrR7KaCbBZPKuUzrwgKqfcgF5ObaQyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770013876; c=relaxed/simple;
	bh=rcsDqb46gaG3yFjHYrMozn3xXMZ6ng4if68dtMxMODg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=XJ+qB14c+DmRVMdzZMPnmOSViaEz1bfTTE8SGFDcu9vHsY6z1vCau3LOzismihRwwqD+UtBVeAkn0h9yPdxO/U8I60hXwMQSkCY6zNloGHwcuf3SvDrmvGq/mbUGbE+GJWnmngKynxhV9Yx8MQWvO/I17on9LkYOGuIahX2NdnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XxGnPrty; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-34c24f4dfb7so2096301a91.0
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 22:31:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770013875; x=1770618675; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sv3rE1ysKqQy3NPOcV7JVfxCOKmaA0B89vDL2+rHKJA=;
        b=XxGnPrtyb7OTWT8HuWhkbeWAR1/aVj7Q0cuyGu1jBsNOhoFnGpBH0GFnBvSQTlMULX
         /AnGyhsmSVcV6qFBaCkrxC0cfzOdI3Zl2qLDrVcIt/09uIddAX/ErDT7uOn5jk4qqPa9
         aSXya0Ugpqodz67T1Wsm7sM+FNPre3aAlHLQC7zAYFrypeq3a+StK+IVRa6uHYZF1vZI
         kOZPe+FdIRaGRRvwbRdEkQkNDNjljpkDqr5LEtjdJpJeRrwvS6iZCIjrBSnCDdQd2BWv
         lMuJZqgpx26nGBRpaHb8iYPxBCR5pwxFZqXNmYlDu9iil8/DjZcOvTFJLC6MAoDY5IVe
         ooMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770013875; x=1770618675;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sv3rE1ysKqQy3NPOcV7JVfxCOKmaA0B89vDL2+rHKJA=;
        b=gvzKL13esefyUp5ayJLAqdaG4oSEAX6KA9pIwXt4XXSV+rcBmaGLIgeJarMqpvCrun
         OQboANWBgkA8QW8Oe0+jBbF77cFUM5Jo8eM/OrVzbzNvUaWzvzckLlX5wj0402yF4lUq
         uNIQMkAdbIg0PImaEZ1gxuUNR+slxoTKt9bSXXvk3yQ2a0XlkFisDVb9LOyrGc6p1WEZ
         3yq6vf/q826x2bPRjXkZtMYkX81cjlCRyl63nU2TXY/j1EWxJudQG2DrJ1fcQ0waG9aV
         dpzDYlqYpcEg63aBhBLtkfLTZ0eWaJWQGoeixrkea6laWlYQXNu1ODejDUEX/K/aMghW
         Yccg==
X-Gm-Message-State: AOJu0Yzm4TC8HKYT4ZcxdWph26DfkL9rAqpYBhdAwTe+2vrxXrBglJyd
	foUylmLjOeESYlgAYjlP27HKJo5/fvWK1JfKalXBLOCdgStOVwdpxyuP
X-Gm-Gg: AZuq6aLi5ghHi6eNH9IO+VhZRWdpsPjI3RKB6HIm4isnXu5z9thfs+lkLXeckuTeB+m
	lUEWojgOR16MShpGIaVD6gdcmSqYhyYxJmyKmYA/mAO82i/s/xhdowMMrCwU+b3HRznZmC4/kAo
	yAqU2VvaPHZlqFuD6WJk/T+AWHoxrWNBUBgmpywme6qmoSU7W0GLMCXIRc3aJr1rT5XKPW5MC3z
	rKa5YMamp3SyZG7pOUyxYfGLFeC47N+8SqVEWkRUYtWWBU5NXkMdB81B4eVh7YsuVr7+lg1B3t4
	xq4ac8LebxdNuMA5SQO/nPtQvkniSh5dBNG1US0t/46Hb1QoGi+cuKCF+p7tmxpbrFBFAuRFqsr
	uZoMUwtSY9oQccGc2Jg7KwDvntEplPPg80uWZSa+7muiMWgAcVp/ug2oaxg/UOYMeZYAu7fIFpX
	+OQR5fcwA=
X-Received: by 2002:a17:90b:1d8e:b0:341:88d5:a74e with SMTP id 98e67ed59e1d1-3543b3b0485mr10527577a91.29.1770013874627;
        Sun, 01 Feb 2026 22:31:14 -0800 (PST)
Received: from [127.0.1.1] ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c642add5199sm12618288a12.31.2026.02.01.22.31.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 22:31:14 -0800 (PST)
From: Colin Huang <u8813345@gmail.com>
Date: Mon, 02 Feb 2026 14:31:09 +0800
Subject: [PATCH] ARM: dts: aspeed: anacapa: add new sgpio line names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260202-anacapa-dts-sgpio-v1-1-a3a7b0b087f0@gmail.com>
X-B4-Tracking: v=1; b=H4sIAKxEgGkC/x2MMQqAMAwAvyKZDdRiHfyKOMQ21ixtaUQE8e8Wl
 4Mb7h5QrsIKc/dA5UtUcmoy9B34g1JklNAcrLGTaUBK5KkQhlNRY5GMPLLZyHnrg4PWlcq73P9
 zWd/3A/yELQpjAAAA
X-Change-ID: 20260202-anacapa-dts-sgpio-e4e0ba5c2cd5
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Colin.Huang2@amd.com, Carl.Lee@amd.com, Peter.Shen@amd.com, 
 Colin Huang <u8813345@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770013872; l=2902;
 i=u8813345@gmail.com; s=20260202; h=from:subject:message-id;
 bh=rcsDqb46gaG3yFjHYrMozn3xXMZ6ng4if68dtMxMODg=;
 b=h0rG6nZWmvlMA1n0nv/vBTwPtlPrvH/aJySv3L2Cbby17HWgvqZhBr+hvbyix1LQVLmKOioT+
 p3TXHipXdM+AM4KQqBcgXkHTkppTmXNIFOmRPtf1WG5Iu/BXOecASMs
X-Developer-Key: i=u8813345@gmail.com; a=ed25519;
 pk=Zlg0WqpCw4qbswOqamTBTXIchwR/3SnYZpy7rjaGMdQ=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261655-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,amd.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u8813345@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D502AC8DC6
X-Rspamd-Action: no action

Updated items:
- Add BMC_AINIC0_WP_R2_L and BMC_AINIC1_WP_R2_L
- Place LEAK_DETECT_RMC_N in the correct slot
- Add PRSNT_NFC_BOARD_R
- Add IRQ_NFC_BOARD_R and RSMRST_N
- Add DC_OFF, EAM_MOD_PWR_GD_TIMEOUT, CPLD_AMC_STBY_PWR_EN
- Add FM_MAIN_PWREN_RMC_EN_ISO

Signed-off-by: Colin Huang <u8813345@gmail.com>
---
The following changes are included:
- Add BMC_AINIC0_WP_R2_L and BMC_AINIC1_WP_R2_L
- Correct placement of LEAK_DETECT_RMC_N
- Add PRSNT_NFC_BOARD_R
- Add IRQ_NFC_BOARD_R and RSMRST_N
- Add DC_OFF, EAM_MOD_PWR_GD_TIMEOUT, CPLD_AMC_STBY_PWR_EN
- Add FM_MAIN_PWREN_RMC_EN_ISO
---
 .../boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts   | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
index 221af858cb6b..37bccf64c77b 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts
@@ -852,15 +852,15 @@ &sgpiom0 {
 	"Channel1_leakage_EAM0", "FM_SCM_JTAG_MUX_SEL",
 	"Channel2_leakage_Manifold1", "FM_BRIDGE_JTAG_MUX_SEL",
 	"Channel3_leakage", "FM_CPU0_NMI_SYNC_FLOOD_N",
-	"Channel4_leakage_Manifold2", "",
-	"Channel5_leakage_EAM1", "",
+	"Channel4_leakage_Manifold2", "BMC_AINIC0_WP_R2_L",
+	"Channel5_leakage_EAM1", "BMC_AINIC1_WP_R2_L",
 	"Channel6_leakage_CPU_DIMM", "",
 	"Channel7_leakage_EAM2", "",
 
 	/* C0-C7 line 32-47 */
-	"RSVD_RMC_GPIO3", "", "", "",
+	"RSVD_RMC_GPIO3", "", "LEAK_DETECT_RMC_N", "",
+	"", "", "", "",
 	"", "", "", "",
-	"LEAK_DETECT_RMC_N", "", "", "",
 	"", "", "", "",
 
 	/* D0-D7 line 48-63 */
@@ -893,7 +893,7 @@ &sgpiom0 {
 	"PWRGD_CHIL_CPU0_FPGA", "",
 	"PWRGD_CHEH_CPU0_FPGA", "",
 	"PWRGD_CHAD_CPU0_FPGA", "FM_BMC_READY_PLD",
-	"", "",
+	"PRSNT_NFC_BOARD_R", "",
 
 	/* H0-H7 line 112-127 */
 	"PWRGD_P3V3", "",
@@ -922,7 +922,8 @@ &sgpiom0 {
 	"BRIDGE_R_MAIN_PG_R", "",
 	"BRIDGE_L_STBY_PG_R", "",
 	"BRIDGE_R_STBY_PG_R", "",
-	"", "", "", "",
+	"IRQ_NFC_BOARD_R", "",
+	"RSMRST_N", "",
 
 	/* K0-K7 line 160-175 */
 	"ADC_I2C_ALERT_N", "",
@@ -956,7 +957,9 @@ &sgpiom0 {
 	"AMC_STBY_PGOOD_R", "",
 	"CPU_AMC_SLP_S5_R_L", "",
 	"AMC_CPU_EAMPG_R", "",
-	"", "", "", "",
+	"DC_OFF", "",
+	"EAM_MOD_PWR_GD_TIMEOUT", "",
+	"CPLD_AMC_STBY_PWR_EN", "",
 
 	/* O0-O7 line 224-239 */
 	"HPM_PWR_FAIL", "Port80_b0",
@@ -966,7 +969,7 @@ &sgpiom0 {
 	"FM_CPU0_THERMTRIP_N", "Port80_b4",
 	"PVDDCR_SOC_P0_OCP_L", "Port80_b5",
 	"CPLD_SGPIO_RDY", "Port80_b6",
-	"", "Port80_b7",
+	"FM_MAIN_PWREN_RMC_EN_ISO", "Port80_b7",
 
 	/* P0-P7 line 240-255 */
 	"CPU0_SLP_S5_N_R", "NFC_VEN",

---
base-commit: 26705fad17bd111f062f4208df2dd60e7a9c2ecd
change-id: 20260202-anacapa-dts-sgpio-e4e0ba5c2cd5

Best regards,
-- 
Colin Huang <u8813345@gmail.com>


