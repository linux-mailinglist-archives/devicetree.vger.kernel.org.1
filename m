Return-Path: <devicetree+bounces-129747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FA19ECB11
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 12:24:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B3F972868BD
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 11:24:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C3333DAC12;
	Wed, 11 Dec 2024 11:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BEw6J3FE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94C0623027F;
	Wed, 11 Dec 2024 11:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733916208; cv=none; b=omuzDUgS0yovpYTv3Zemaksd2HgvVCHBIpYTNQH82OnIFh3Nz5xBxK+n9Vrvu8xzIdGb2IPcGNfTKDsbQIxI7ysY161OIqepLzOtKth44VjDA7XQKmioKddC4qOHHNAPy8Ym+hvPyBdSxSvkoXGE6v3j8vAw1TJjCdZKqcWKwFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733916208; c=relaxed/simple;
	bh=7lcoJt3fEYxFRq8rAOGd84uCM/lkZcSDWF3TclaNims=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oVlC3NolRWRK4UNjtkj3BwoEiwKUTGLen8o4BsoU2niH3XEBx/UAwoAAasgD/ujmz3hGl8/HWCYaeE07LuguP+LV1oK7KitDk7ihUWzlDMTN89FneMFFD9/pRDVGJz8v4+8oqw78CHmSWoJYSUih4W95dDHNcbOUK9IE2foxb5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BEw6J3FE; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-7fc93152edcso467447a12.0;
        Wed, 11 Dec 2024 03:23:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733916206; x=1734521006; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qlxPth3W7wbrCgZl9TutY0yGCH/wT/pCGymBpz4R5/s=;
        b=BEw6J3FELZSeuRZzrAnEIaxmXxGCzhZHeYLKlLDhfI1/HJXLkm42PjGqA1/NnAkdhd
         XMSt7G4MnYUKTcTpxYrQh44gMEmesHeGjMDCd9it8VAU9AxzG2vrHgyuoGv9YmBdoCID
         zaM+lee2PhupBtvBDVsiRgwmi4EFtHd3sQJvlWR3uIA68Da4fGYRbHqOPNzIBAtTx7B7
         Ld2aqbujhFOG57HSTodlhFCk8AikOTQdtlaNTSBos2JR7n5D+yFqlDWaeTldcTZh7dGl
         6PkfPoM1GRrO1pZSBhHQKCygySyPyEBMslrjmUuLI3hRDbTYE5wX/pJ+w5xyfItkf27U
         hheg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733916206; x=1734521006;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qlxPth3W7wbrCgZl9TutY0yGCH/wT/pCGymBpz4R5/s=;
        b=oQPRsxPRo67FZ6IZKJ1fL/WQA/2pV7XdleOIfdnbRUzqLBcoB/Sy3tKn09N0FBH1JZ
         SIilY9f2cWOv1OxVxTbEiTQr/6pyEs7ru6FxJBI0A4f1jijs8Uf13pZViE4aQUPdSAVN
         2qmizV6Vj/UzvDN39YT8Is1JBa2IX019LkMltTx/4fWxIDAXZ/z82UFbS73ZfAVaFkiP
         9fGXbhdnTSpcIeSWjBQKUF+AD5x6boK9FAjzzNOznqYaBWfC02p3aUugtNqlDZXzeA8x
         P+z6GPYq/Ud3GehrXX9QUwE6JvP+Pv5jXzogPjhFRRhx6/Lf5D46CTUfWqkbyTK2msZj
         a6CA==
X-Forwarded-Encrypted: i=1; AJvYcCUAETTgDmt+YteL7p78vHyKs5WH/94WAc+lxsYQZkU0g3jObKCDNgyKI9lmZs+3vl5Ou0F15J5cZDw=@vger.kernel.org, AJvYcCW38Phe5oF8IzzyFN5MpDIkqCjtbqjktEJX160ucv0Whl5UH6r/8l0jfqNJcjpn8tsVjCrfkqHgAYH0@vger.kernel.org, AJvYcCXK17XtiP/2izXXRaHfvOl4cUKLVMEV9Wfy8Pj5AB7HxhycIqaisA2MNWaNEDjcSJUNtZa4z8Ms8UZkpOnU@vger.kernel.org
X-Gm-Message-State: AOJu0YynQDz/LEhlQDji9IdxahZC9aRpqExLuwGO+ebgz71yhICwt9ql
	CE422eK9Cplwru7mNTcZ2+NoDWPlIFtUuMsxvrFy7n/2ZoGRQLq9
X-Gm-Gg: ASbGncs4M1Y8FkDd1OLR0ba68bKxSP/SZ3f0DquAu+oc0gH94Q+Tqc9EYHfugP+LXO+
	9hUXhsWehW2mOOwY+mh2IChgEwzkpOSAWb98NgNaFS+lQkeiKEWV3ZhZfpY3zlNFnlucbV+quuF
	fBOMAoXq/dJ5BxU/GpzeF5pU0oSIcF8+9QIvrbYtENHh5Mr67BnFf1QA76JFcfT719v9UaHLgif
	FI7ELkXGjkNBylzv2QmO/btR0Azz7cr/IvwfgWHaNhBH3RutLG9Q8SlQ1mA5uQSiHgJCA==
X-Google-Smtp-Source: AGHT+IFMuiaI6I3IF80U3p4jkCdMcH2pHwrnp13N4Jra+xHLG9sBJnqMa1fKJOB7LKNxTMS5auBS3g==
X-Received: by 2002:a17:903:186:b0:215:742e:5cff with SMTP id d9443c01a7336-21779e6245amr31917835ad.16.1733916205923;
        Wed, 11 Dec 2024 03:23:25 -0800 (PST)
Received: from localhost.localdomain ([59.188.211.160])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-21650ccdc7esm48956615ad.133.2024.12.11.03.23.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 03:23:25 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
To: Hector Martin <marcan@marcan.st>,
	Sven Peter <sven@svenpeter.dev>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Nick Chan <towinchenmi@gmail.com>
Subject: [PATCH 7/7] cpufreq: apple-soc: Add Apple A7-A8X SoC cpufreq support
Date: Wed, 11 Dec 2024 19:19:34 +0800
Message-ID: <20241211112244.18393-8-towinchenmi@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241211112244.18393-1-towinchenmi@gmail.com>
References: <20241211112244.18393-1-towinchenmi@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

These SoCs only use 3 bits for p-states, and have a different
APPLE_DVFS_CMD_PS1 mask value.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 drivers/cpufreq/apple-soc-cpufreq.c | 30 +++++++++++++++++++++++------
 1 file changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/cpufreq/apple-soc-cpufreq.c b/drivers/cpufreq/apple-soc-cpufreq.c
index 0af36f911bea..12ee9123a1c2 100644
--- a/drivers/cpufreq/apple-soc-cpufreq.c
+++ b/drivers/cpufreq/apple-soc-cpufreq.c
@@ -22,12 +22,14 @@
 #include <linux/pm_opp.h>
 #include <linux/slab.h>
 
-#define APPLE_DVFS_CMD			0x20
-#define APPLE_DVFS_CMD_BUSY		BIT(31)
-#define APPLE_DVFS_CMD_SET		BIT(25)
-#define APPLE_DVFS_CMD_PS2		GENMASK(15, 12)
-#define APPLE_DVFS_CMD_PS1		GENMASK(4, 0)
-#define APPLE_DVFS_CMD_PS1_SHIFT	0
+#define APPLE_DVFS_CMD				0x20
+#define APPLE_DVFS_CMD_BUSY			BIT(31)
+#define APPLE_DVFS_CMD_SET			BIT(25)
+#define APPLE_DVFS_CMD_PS1_S5L8960X		GENMASK(24, 22)
+#define APPLE_DVFS_CMD_PS1_S5L8960X_SHIFT	22
+#define APPLE_DVFS_CMD_PS2			GENMASK(15, 12)
+#define APPLE_DVFS_CMD_PS1			GENMASK(4, 0)
+#define APPLE_DVFS_CMD_PS1_SHIFT		0
 
 /* Same timebase as CPU counter (24MHz) */
 #define APPLE_DVFS_LAST_CHG_TIME	0x38
@@ -36,6 +38,9 @@
  * Apple ran out of bits and had to shift this in T8112...
  */
 #define APPLE_DVFS_STATUS			0x50
+#define APPLE_DVFS_STATUS_CUR_PS_S5L8960X	GENMASK(5, 3)
+#define APPLE_DVFS_STATUS_CUR_PS_SHIFT_S5L8960X	3
+#define APPLE_DVFS_STATUS_TGT_PS_S5L8960X	GENMASK(2, 0)
 #define APPLE_DVFS_STATUS_CUR_PS_T8103		GENMASK(7, 4)
 #define APPLE_DVFS_STATUS_CUR_PS_SHIFT_T8103	4
 #define APPLE_DVFS_STATUS_TGT_PS_T8103		GENMASK(3, 0)
@@ -72,6 +77,15 @@ struct apple_cpu_priv {
 
 static struct cpufreq_driver apple_soc_cpufreq_driver;
 
+static const struct apple_soc_cpufreq_info soc_s5l8960x_info = {
+	.has_ps2 = false,
+	.max_pstate = 7,
+	.cur_pstate_mask = APPLE_DVFS_STATUS_CUR_PS_S5L8960X,
+	.cur_pstate_shift = APPLE_DVFS_STATUS_CUR_PS_SHIFT_S5L8960X,
+	.ps1_mask = APPLE_DVFS_CMD_PS1_S5L8960X,
+	.ps1_shift = APPLE_DVFS_CMD_PS1_S5L8960X_SHIFT,
+};
+
 static const struct apple_soc_cpufreq_info soc_t8103_info = {
 	.has_ps2 = true,
 	.max_pstate = 15,
@@ -99,6 +113,10 @@ static const struct apple_soc_cpufreq_info soc_default_info = {
 };
 
 static const struct of_device_id apple_soc_cpufreq_of_match[] __maybe_unused = {
+	{
+		.compatible = "apple,s5l8960x-cluster-cpufreq",
+		.data = &soc_s5l8960x_info,
+	},
 	{
 		.compatible = "apple,t8103-cluster-cpufreq",
 		.data = &soc_t8103_info,
-- 
2.47.1


