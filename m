Return-Path: <devicetree+bounces-259182-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEnPFP78dGk7/wAAu9opvQ
	(envelope-from <devicetree+bounces-259182-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 18:10:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2767E37B
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 18:10:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4F908300ECAE
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 17:10:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB9E72517A5;
	Sat, 24 Jan 2026 17:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Cm1Aurr9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4AF1C3314
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 17:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769274613; cv=none; b=TmWaLvM4rB/PsDUf0qDLEcBRTrWE+BehPnSxXjDvR7fZc4dPaUCA2bBEZeah02bfYMpV5xPZUDVwT0sf5gJRIhLxzs0vQf7Zn6WF515e7g2sOjRn20Yl3m0P0VGMw8KohV7BqOfjawEEEeRq0bdpSl13DDVjQOpKHiluOpOKA5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769274613; c=relaxed/simple;
	bh=RnZnHJ18fDqVsEwNPaA2WiUlZTCGKnUZ6u053T8HQLI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=feFHzFvMsLOhZWK1Re7Ww+EaglW3WhY/mrBNNpht2Dy5PTHDX0WUXsJVukccerLsC3n7F6X2f922lo04xy2pjP+mcF8mYFz+YKYCjCwqJC1f0kxcSliysv7UzjEE8AeZuuuaPH1X1XmDP2hNuOmEC1dkdaiEd/NVKkIbVmpnb80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Cm1Aurr9; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b885a18f620so365927266b.3
        for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 09:10:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769274608; x=1769879408; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pCr4Z+KNekDJl9rNVi/bQ/zDL8gFwd9M77DGpXezgFo=;
        b=Cm1Aurr9Mryc3cO1NBVYrS6JYF9PIg52hHR+Ss/irc5ZO4qAYUfTr0MpuzBaWrC3SI
         KQv1dsWqEpVapwdilpyIOOqiigMj9pJYr2XWnXXdIYs2m8igP1ugs3ja0OvPmGMzHKCE
         obW8Rh8h/EiAA6UPH3OCCoBJDxakdlbujcPnfcqa3riiSQnvG0XP6a5SvFTMS0ldAbIo
         oFkPNGwJuZWhww8ZTgKqhE6lBrS6CaemmQddkwAmG7iheRNhGC1iNfkmqK/eGI4CT9td
         tAa2QUvmNz1qGLdi20WODUuSMMBfnygAkvnYUtbw9kexh8N3rYZJbTVcakuy7kRBDf1Y
         HKbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769274608; x=1769879408;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pCr4Z+KNekDJl9rNVi/bQ/zDL8gFwd9M77DGpXezgFo=;
        b=oajEsUuOMp3OfHoyiu/CvGMUonHh81akNN4GMhy98bMTQ2QL/BnU3nt4RaE+nOsORO
         0iw+Rr341Gpzsfja2jcHt1OxjPm1w5O7eYXcAjqr38V8FXYF+6cmZ0EG9vo6CC2PEs5N
         Aim1epOuxjV5Mlm0FkvLkM+YpOw4YOq9T4rcGOBFW1J9cI/dfglCKHGlNWl7TfECA3ck
         PzQYFDnmbmhimqGWxNUNeTaECEvefqgJaDEP9nukuAOpt7ACXVWKW/ZoOT7OY6aLi6vX
         PsGqbCnMGargIg47Spxfe/2oRDu4Est4joMjTmzjkDIb/iGCuMBGWqTwVmT+iBBvne4p
         IrpQ==
X-Forwarded-Encrypted: i=1; AJvYcCXheDDWGn67aQum/P8wQlJAPu7ZOW098sumw3JoDXRpm0Rz54WC/wan/S5Px34sWxwm6lCXa99uCzUs@vger.kernel.org
X-Gm-Message-State: AOJu0YwU/1YNqB6fjJQ1PjBRObwpGVurbzUFfKck2B2Wl3Yj0ebadnB0
	x3M7RfIVRxYqrPtq3ZkUMK1SeV+D70+nNIFYfrhXsMJnV7Lv+FbZbBTN
X-Gm-Gg: AZuq6aLfvJe8JzJFhkg8KYrd3FkvTv1ZErDEQit1cSevClLfEQItHtUB6RrGQrd76Ak
	0Ck0YpayOA3SSXKJ+wo3RB55FK4fYHDtzVnyRtdzAlezx1u2WOxhwadzBx0/aAg+9KNFnbK+01a
	S6w+C/t4HkXF5hN3hPu0V/mFJ6l3qLoSMMQ/6wQaTZddQoUuYHs4dO2rRQ+CSgO8Ivb3oufp1FE
	rk48TP4sobkGfsOF1hmNETpB60xOzuPodWx35tgiLaNuDr9kbUcET4qzXghBMnN13saxBL0Hr6O
	sRLE8/EzORvKgLDTBbbjhLaro2j3gW6pyMONQJOQQwmzTyIDtJyIhdpjyOAwaTQ//reRKBRaAEQ
	BfGbbUkqLe+CRysYxRStZiDo/Br3gJ76eMOCwlADCqTW6TWIiWPc0WM6vl/HKXvQP9ypmmTx7gb
	nYRGt9C63Ld1ni4fdWhiH8/xe665z8Xlw+fJjrhaZwxJHYQqUoR7Vq7yKMOZVXXgjJUNomcUW0o
	0p18AqUStZ/ATotKFI/A7NHg6y4TyyowzQ=
X-Received: by 2002:a17:907:a0e:b0:b87:3174:9bdd with SMTP id a640c23a62f3a-b885acf8808mr447577066b.28.1769274607425;
        Sat, 24 Jan 2026 09:10:07 -0800 (PST)
Received: from tablet.my.domain (2a01-114f-470e-6200-4c6a-9244-66ab-7c8e.ea.ipv6.supernova.orange.pl. [2a01:114f:470e:6200:4c6a:9244:66ab:7c8e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b885b3dac6esm302680866b.7.2026.01.24.09.10.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Jan 2026 09:10:07 -0800 (PST)
From: Artur Weber <aweber.kernel@gmail.com>
Date: Sat, 24 Jan 2026 18:10:01 +0100
Subject: [PATCH RESEND v7 1/7] clk: bcm: kona: Move CLOCK_COUNT defines
 into the driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260124-kona-bus-clock-v7-1-9dffe1bdc08d@gmail.com>
References: <20260124-kona-bus-clock-v7-0-9dffe1bdc08d@gmail.com>
In-Reply-To: <20260124-kona-bus-clock-v7-0-9dffe1bdc08d@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Alex Elder <elder@kernel.org>, 
 Stanislav Jakubek <stano.jakubek@gmail.com>, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, linux-arm-kernel@lists.infradead.org, 
 phone-devel@vger.kernel.org, Artur Weber <aweber.kernel@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=6586;
 i=aweber.kernel@gmail.com; h=from:subject:message-id;
 bh=RnZnHJ18fDqVsEwNPaA2WiUlZTCGKnUZ6u053T8HQLI=;
 b=owEBbQKS/ZANAwAKAbO7+KEToFFoAcsmYgBpdPzr1FfqMnbLwusKMWrFf9hyK50C1HihRKIDm
 VXJZSKRX1uJAjMEAAEKAB0WIQTmYwAOrB3szWrSiQ2zu/ihE6BRaAUCaXT86wAKCRCzu/ihE6BR
 aCNPEACRa37WLyXaHqvqbwQAIll5LXDadSUTIlgrnwipH5Xj0Ogo5qg2N9Rf5PUrYR4xytOry/N
 /TLk65+/qtUelfI/7aX+v6uwPe+7lTGlu0FV0bIrtrsWU/sfpk6QwHY50jPtTZRVO9cUCHmqpnD
 BOyZCninlm4HT9+HvChhFY9FDkB0N1EmpYec/Fi+ai8hvzXK7nKt572n/OwfuPG9N5HMLkTNCEu
 7h4MAID0AWjOIR7fJquhV63bwecRCrhih8a8qZ7YntgauIyTE9G0XzZRKCP5m5nt2bzAenlwsf8
 mW4JTk20WIMQ7lFn3whGcGQw+Vcs8wkVBMicMKrulmJFWnQ8OdpJ8r+SwGSLZtXnJOKUIvx3rwm
 gE9owDqetotvhHVUl2dAWhSOu8vqAqcsJhAAZB/T+rRYaugEL2pnG243+Ru5Z1PwHJTWb2Ajnoc
 Brg/i9RpjEzRAkyIjOI4L5JZJtXagWxG4ToAkXf4DTKkBfufbVDM3+boBjjd0y7DK8fITxryTGd
 eMbVK4Wr3jDOcc8UGVOWd3GJtSFemT+pYu25uvnaNchAkU5iok0UA+ALYZiDSyfzdkxSHPlUWtH
 0ai3PiIDLRRR/FGB2H8NcH3I+wQmeiozETzgSmTKkkdJnk656/AFALFy/I6oF4347t/rfLFdRFI
 5xyO320dS4ZIauQ==
X-Developer-Key: i=aweber.kernel@gmail.com; a=openpgp;
 fpr=E663000EAC1DECCD6AD2890DB3BBF8A113A05168
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259182-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,lists.sr.ht,lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aweberkernel@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,broadcom.com:email]
X-Rspamd-Queue-Id: AF2767E37B
X-Rspamd-Action: no action

CLOCK_COUNT defines for each CCU are stored in the DT binding header.
This is not correct - they are not used by device trees, only internally
by the driver.

Move the CLOCK_COUNT defines directly into the driver in preparation
for dropping them from the DT binding include. To avoid conflicts with
the old defines, rename them to use the CLK_COUNT suffix.

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
---
Changes in v4:
- Rename CLOCK_COUNT to CLK_COUNT to avoid redefinition

Changes in v3:
- Add this commit
---
 drivers/clk/bcm/clk-bcm21664.c | 16 ++++++++++++----
 drivers/clk/bcm/clk-bcm281xx.c | 20 +++++++++++++++-----
 drivers/clk/bcm/clk-kona.h     |  2 +-
 3 files changed, 28 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/bcm/clk-bcm21664.c b/drivers/clk/bcm/clk-bcm21664.c
index 520c3aeb4ea9..14b7db824704 100644
--- a/drivers/clk/bcm/clk-bcm21664.c
+++ b/drivers/clk/bcm/clk-bcm21664.c
@@ -17,13 +17,15 @@ static struct peri_clk_data frac_1m_data = {
 	.clocks		= CLOCKS("ref_crystal"),
 };
 
+#define BCM21664_ROOT_CCU_CLK_COUNT	(BCM21664_ROOT_CCU_FRAC_1M + 1)
+
 static struct ccu_data root_ccu_data = {
 	BCM21664_CCU_COMMON(root, ROOT),
 	/* no policy control */
 	.kona_clks	= {
 		[BCM21664_ROOT_CCU_FRAC_1M] =
 			KONA_CLK(root, frac_1m, peri),
-		[BCM21664_ROOT_CCU_CLOCK_COUNT] = LAST_KONA_CLK,
+		[BCM21664_ROOT_CCU_CLK_COUNT] = LAST_KONA_CLK,
 	},
 };
 
@@ -39,6 +41,8 @@ static struct peri_clk_data hub_timer_data = {
 	.trig		= TRIGGER(0x0a40, 4),
 };
 
+#define BCM21664_AON_CCU_CLK_COUNT	(BCM21664_AON_CCU_HUB_TIMER + 1)
+
 static struct ccu_data aon_ccu_data = {
 	BCM21664_CCU_COMMON(aon, AON),
 	.policy		= {
@@ -48,7 +52,7 @@ static struct ccu_data aon_ccu_data = {
 	.kona_clks	= {
 		[BCM21664_AON_CCU_HUB_TIMER] =
 			KONA_CLK(aon, hub_timer, peri),
-		[BCM21664_AON_CCU_CLOCK_COUNT] = LAST_KONA_CLK,
+		[BCM21664_AON_CCU_CLK_COUNT] = LAST_KONA_CLK,
 	},
 };
 
@@ -122,6 +126,8 @@ static struct peri_clk_data sdio4_sleep_data = {
 	.gate		= HW_SW_GATE(0x0360, 18, 2, 3),
 };
 
+#define BCM21664_MASTER_CCU_CLK_COUNT	(BCM21664_MASTER_CCU_SDIO4_SLEEP + 1)
+
 static struct ccu_data master_ccu_data = {
 	BCM21664_CCU_COMMON(master, MASTER),
 	.policy		= {
@@ -145,7 +151,7 @@ static struct ccu_data master_ccu_data = {
 			KONA_CLK(master, sdio3_sleep, peri),
 		[BCM21664_MASTER_CCU_SDIO4_SLEEP] =
 			KONA_CLK(master, sdio4_sleep, peri),
-		[BCM21664_MASTER_CCU_CLOCK_COUNT] = LAST_KONA_CLK,
+		[BCM21664_MASTER_CCU_CLK_COUNT] = LAST_KONA_CLK,
 	},
 };
 
@@ -225,6 +231,8 @@ static struct peri_clk_data bsc4_data = {
 	.trig		= TRIGGER(0x0afc, 19),
 };
 
+#define BCM21664_SLAVE_CCU_CLK_COUNT	(BCM21664_SLAVE_CCU_BSC4 + 1)
+
 static struct ccu_data slave_ccu_data = {
 	BCM21664_CCU_COMMON(slave, SLAVE),
        .policy		= {
@@ -246,7 +254,7 @@ static struct ccu_data slave_ccu_data = {
 			KONA_CLK(slave, bsc3, peri),
 		[BCM21664_SLAVE_CCU_BSC4] =
 			KONA_CLK(slave, bsc4, peri),
-		[BCM21664_SLAVE_CCU_CLOCK_COUNT] = LAST_KONA_CLK,
+		[BCM21664_SLAVE_CCU_CLK_COUNT] = LAST_KONA_CLK,
 	},
 };
 
diff --git a/drivers/clk/bcm/clk-bcm281xx.c b/drivers/clk/bcm/clk-bcm281xx.c
index 823d5dfa31b8..62c3bf465625 100644
--- a/drivers/clk/bcm/clk-bcm281xx.c
+++ b/drivers/clk/bcm/clk-bcm281xx.c
@@ -19,12 +19,14 @@ static struct peri_clk_data frac_1m_data = {
 	.clocks		= CLOCKS("ref_crystal"),
 };
 
+#define BCM281XX_ROOT_CCU_CLK_COUNT	(BCM281XX_ROOT_CCU_FRAC_1M + 1)
+
 static struct ccu_data root_ccu_data = {
 	BCM281XX_CCU_COMMON(root, ROOT),
 	.kona_clks	= {
 		[BCM281XX_ROOT_CCU_FRAC_1M] =
 			KONA_CLK(root, frac_1m, peri),
-		[BCM281XX_ROOT_CCU_CLOCK_COUNT] = LAST_KONA_CLK,
+		[BCM281XX_ROOT_CCU_CLK_COUNT] = LAST_KONA_CLK,
 	},
 };
 
@@ -57,6 +59,8 @@ static struct peri_clk_data pmu_bsc_var_data = {
 	.trig		= TRIGGER(0x0a40, 2),
 };
 
+#define BCM281XX_AON_CCU_CLK_COUNT	(BCM281XX_AON_CCU_PMU_BSC_VAR + 1)
+
 static struct ccu_data aon_ccu_data = {
 	BCM281XX_CCU_COMMON(aon, AON),
 	.kona_clks	= {
@@ -66,7 +70,7 @@ static struct ccu_data aon_ccu_data = {
 			KONA_CLK(aon, pmu_bsc, peri),
 		[BCM281XX_AON_CCU_PMU_BSC_VAR] =
 			KONA_CLK(aon, pmu_bsc_var, peri),
-		[BCM281XX_AON_CCU_CLOCK_COUNT] = LAST_KONA_CLK,
+		[BCM281XX_AON_CCU_CLK_COUNT] = LAST_KONA_CLK,
 	},
 };
 
@@ -80,12 +84,14 @@ static struct peri_clk_data tmon_1m_data = {
 	.trig		= TRIGGER(0x0e84, 1),
 };
 
+#define BCM281XX_HUB_CCU_CLK_COUNT	(BCM281XX_HUB_CCU_TMON_1M + 1)
+
 static struct ccu_data hub_ccu_data = {
 	BCM281XX_CCU_COMMON(hub, HUB),
 	.kona_clks	= {
 		[BCM281XX_HUB_CCU_TMON_1M] =
 			KONA_CLK(hub, tmon_1m, peri),
-		[BCM281XX_HUB_CCU_CLOCK_COUNT] = LAST_KONA_CLK,
+		[BCM281XX_HUB_CCU_CLK_COUNT] = LAST_KONA_CLK,
 	},
 };
 
@@ -172,6 +178,8 @@ static struct peri_clk_data hsic2_12m_data = {
 	.trig		= TRIGGER(0x0afc, 5),
 };
 
+#define BCM281XX_MASTER_CCU_CLK_COUNT	(BCM281XX_MASTER_CCU_HSIC2_12M + 1)
+
 static struct ccu_data master_ccu_data = {
 	BCM281XX_CCU_COMMON(master, MASTER),
 	.kona_clks	= {
@@ -189,7 +197,7 @@ static struct ccu_data master_ccu_data = {
 			KONA_CLK(master, hsic2_48m, peri),
 		[BCM281XX_MASTER_CCU_HSIC2_12M] =
 			KONA_CLK(master, hsic2_12m, peri),
-		[BCM281XX_MASTER_CCU_CLOCK_COUNT] = LAST_KONA_CLK,
+		[BCM281XX_MASTER_CCU_CLK_COUNT] = LAST_KONA_CLK,
 	},
 };
 
@@ -301,6 +309,8 @@ static struct peri_clk_data pwm_data = {
 	.trig		= TRIGGER(0x0afc, 15),
 };
 
+#define BCM281XX_SLAVE_CCU_CLK_COUNT	(BCM281XX_SLAVE_CCU_PWM + 1)
+
 static struct ccu_data slave_ccu_data = {
 	BCM281XX_CCU_COMMON(slave, SLAVE),
 	.kona_clks	= {
@@ -324,7 +334,7 @@ static struct ccu_data slave_ccu_data = {
 			KONA_CLK(slave, bsc3, peri),
 		[BCM281XX_SLAVE_CCU_PWM] =
 			KONA_CLK(slave, pwm, peri),
-		[BCM281XX_SLAVE_CCU_CLOCK_COUNT] = LAST_KONA_CLK,
+		[BCM281XX_SLAVE_CCU_CLK_COUNT] = LAST_KONA_CLK,
 	},
 };
 
diff --git a/drivers/clk/bcm/clk-kona.h b/drivers/clk/bcm/clk-kona.h
index 348a3454ce40..d7cae437333c 100644
--- a/drivers/clk/bcm/clk-kona.h
+++ b/drivers/clk/bcm/clk-kona.h
@@ -483,7 +483,7 @@ struct ccu_data {
 #define KONA_CCU_COMMON(_prefix, _name, _ccuname)			    \
 	.name		= #_name "_ccu",				    \
 	.lock		= __SPIN_LOCK_UNLOCKED(_name ## _ccu_data.lock),    \
-	.clk_num	= _prefix ## _ ## _ccuname ## _CCU_CLOCK_COUNT
+	.clk_num	= _prefix ## _ ## _ccuname ## _CCU_CLK_COUNT
 
 /* Exported globals */
 

-- 
2.52.0


