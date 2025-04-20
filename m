Return-Path: <devicetree+bounces-168806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DFCA946F1
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 09:06:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1F05B18971AD
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 07:06:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF4BB1D7984;
	Sun, 20 Apr 2025 07:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="ds6SLhtd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 641C91D5CF2
	for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 07:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745132756; cv=none; b=ugwErfbcSX5ldfXEkMvSod+6MlooeoihQd8sAkOUx8T9vqiBhZjX8pbk351Ko+StQRExVYaYi8TR7vGbmzFIO5gLpzVnNKasGDI7mAe0yM+u3THf3CxgR7B3cGGKSo/sIikEc0jpgu5v7CB20BL2b+F4j4Gp09s7QHs0ZKXvBA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745132756; c=relaxed/simple;
	bh=naU+Nm6I+OWCRU692DlZpNGwp9uIvhKLLXB6jext1Rs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=flC0XLpB62hwHFHsrD9Y0/JhM5XaMLspPXVrgE/nfy6NT+TwgCrMj7lwHIbdiFMojJnbQ3FRewlqHu54Io4hZkCGyLxfVSfSlOnHTuKUAv38RbmzNWBZBcDTop5dHKtWRbFOEg0nqjwE25chnBG6FT/P4BKU6hOfTUFLwb55sjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=ds6SLhtd; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-736b0c68092so2505824b3a.0
        for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 00:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1745132755; x=1745737555; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=82p2hGF43l3nHL3xd1lQgBU5B0CP4KmhX25rKqULFWk=;
        b=ds6SLhtdBs+dZkHyP321JSs2pMtIxje9edOKxL9iI9qIzVqUAoKUgNHT2MmxQ0CgDr
         VxvmJv8pmofcIUwEm0TlBIztezhIYlJVtFyQHBywgirmClymDz1W+CWhXgNdluj+T2eT
         P5p+e5yjQuO0kWKxAetx7Yy8IGOJyHR+CdItp7HL0UdJilRLrBfGL1LXUCy9tuQFWR32
         2ajZ24KKkcPqeklJ0o0lhG8WrJ3/EnAqkdppowt15K81O6hOeo4TDILAjJc18hywZa7j
         gyjbV0NSNpb9F28qadAvk4wzMvX61izXVuJvblroSwUIXDYcTNCaqnIKmMS5HgdVnWE1
         +2mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745132755; x=1745737555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=82p2hGF43l3nHL3xd1lQgBU5B0CP4KmhX25rKqULFWk=;
        b=vtjJEIuNs45s5hxFDw2VQOYL8QfGRYzGwrVygob51e5/Ui1w6ysslEa/XrcY1XTUkP
         rffG2sZEAUe14tMYeVWSPPK4pfevmENUTwpF8BfeKk3oBJFqQ3xR0E/kQZcO+sODlNA4
         l+frc3/nsP8ddcJiUpb1aG1PAKpMNtz4H80iL8tea2UGnvMlwqoXm8dtEJT09a6688ew
         i0ORB2aYp4Xd7tiA2W66GhEc4hsOa7PvsvoOJ7a5kUD2jOCJMsH8FkWc9fR2AXAJukoZ
         el6c0JBD3P1akQ61pC2W2al2kFdnpbVHk7BK7/HLGQStbZvcEHStUT8rLyYwFLn7A2CD
         I7mQ==
X-Forwarded-Encrypted: i=1; AJvYcCVmD1o1YbrAFCtgvs/xGj3vzQXoqnEIGk4j8+Cgl47OY7iiWJEYcOfiyzypl4BNxYqRIH6Jt1Mi7JFy@vger.kernel.org
X-Gm-Message-State: AOJu0YytRW/Ir7DwMoY7zn5UbeC7rVsRrcHJfcZzIl/o8Ihp4Vt/VBlt
	SBKyT2v8wABpiT1GJcZB2STdXGBv0dTToYR43kLQp/H8QbICOtns8mHPrASZUM4=
X-Gm-Gg: ASbGnct6OsEQEwDFz2NU9EfHY8uZ8ZgdbMl8O2B60/GPwqBtaVjpuHmuwcaSOeYr7nS
	19HEfgZAkHsXh/0y8n0K+l+bt66BDoxGRrUCV6mJRbK82noNAXD6AdmBwi0lRzIKwhBi4CxTgUU
	gHYvlGNiLXmoF3bSkFGAmBFhVJ2aXJmIKgM1BST599x5VXkt/2g4yAzhqSJUuN5mkXChnigOxqm
	46ck0S4DV0bKJhLp3MZ2nK1Vn2gvunAhYePzRVeLcjkvEV3aLnfisulRY58xAE3DkSahK9wzMyO
	X+Pn0RguwCk+WkNTyKPhlywsY1iqQg==
X-Google-Smtp-Source: AGHT+IGlKkNRMGUbwKmTBceKff072Fm/DzOacdnjFvDMw7BvjtUfzlAQ7rY/VZVOV3UNRwKeqrDsWw==
X-Received: by 2002:a05:6a20:6f92:b0:1f3:4427:74ae with SMTP id adf61e73a8af0-203cbc75495mr11575555637.25.1745132754866;
        Sun, 20 Apr 2025 00:05:54 -0700 (PDT)
Received: from localhost.localdomain ([2a11:3:200::40b3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b0db12743afsm3742626a12.16.2025.04.20.00.05.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Apr 2025 00:05:54 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: ukleinek@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	dlan@gentoo.org,
	p.zabel@pengutronix.de,
	drew@pdp7.com,
	inochiama@gmail.com,
	geert+renesas@glider.be,
	heylenay@4d2.org,
	tglx@linutronix.de,
	hal.feng@starfivetech.com,
	unicorn_wang@outlook.com,
	duje.mihanovic@skole.hr
Cc: elder@riscstar.com,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	guodong@riscstar.com
Subject: [PATCH v2 5/6] pwm: Kconfig: add depends on ARCH_SPACEMIT to PWM_PXA
Date: Sun, 20 Apr 2025 15:02:50 +0800
Message-ID: <20250420070251.378950-6-guodong@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250420070251.378950-1-guodong@riscstar.com>
References: <20250420070251.378950-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SpacemiT K1 SoC uses PWM_PXA driver.

Update the Kconfig file for the PWM_PXA driver to allow
the SpacemiT K1 SoC to use it.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v2: No change

 drivers/pwm/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
index 4731d5b90d7e..6731669e724e 100644
--- a/drivers/pwm/Kconfig
+++ b/drivers/pwm/Kconfig
@@ -493,7 +493,7 @@ config PWM_PCA9685
 
 config PWM_PXA
 	tristate "PXA PWM support"
-	depends on ARCH_PXA || ARCH_MMP || COMPILE_TEST
+	depends on ARCH_PXA || ARCH_MMP || ARCH_SPACEMIT || COMPILE_TEST
 	depends on HAS_IOMEM
 	help
 	  Generic PWM framework driver for PXA.
-- 
2.43.0


