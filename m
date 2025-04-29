Return-Path: <devicetree+bounces-171858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C70E6AA063C
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 10:52:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7BB94812A9
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 08:52:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 768622973BE;
	Tue, 29 Apr 2025 08:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="U6UvPs1p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A347529C342
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 08:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745916730; cv=none; b=na8BViNizOAPLxZV1T0p9BaBxFihXZ534RjPa0QPuP6iE/Xmx5Snn48pm36HtIZouWRlN3ODDEOfszCa232T3mF38v7+Lff5bVienMcS4CQETP5nKtr0+ts8Q6FUrNfz3WDxNC/vB5990c8SQuk3spbPa2ESrZ0SzP5Ubv0XJDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745916730; c=relaxed/simple;
	bh=+TPnSjs8Rsq4uRl5xcYrXceVeJccwtQIFJM7/CmqG6k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FSobT+jUjk9M4YjXxKlQUN8UBvyGN0F7rReB82hxho/fSO64XTEEJ7wQGdoKXRrC2BJ9iEVrKDiMUgRG4e0tOccOk+bpuW7iEznaECzvP4y0FpAlrN7SITJHQ2yQ59PUWENhOQj4QQNdaMeqIcIu1QZ48YBesR+ejRX4BP5TzII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=U6UvPs1p; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b041afe0ee1so5460544a12.1
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 01:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1745916728; x=1746521528; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gSBQlgtaQud3VdsTPycKFsE/56jYgj1sJoxgbag7Muo=;
        b=U6UvPs1paTyar70Oik57kCSUIKIxlb+rpkLmOPF98ua6rPQ2edpzu6DiGhK9jonCWb
         wOyzrJ1FZTgb/oxDZMRyzGECzG7rdryt5V00ztOwW6617Dtoz6pReEqGhk2tibMXUHZj
         RDaoM2PsfMf+xoITQItuDRvNnTbjHFGFMUGtBxYPeejwYjtJrJLPGutmiPiVHbQ6Chuf
         7ycUhj/D09sI9Yep/wYYZFXiVCl0T0wIB7I6sANbm7xdetNB7woH+o4VPx6R5ncLFWcL
         3MXnWhVaL59NxczQKiRqh5JGnQDgasjmMr/9i0FS/K+QtmVul4or3C15jJoIjtzzgb4k
         DqnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745916728; x=1746521528;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gSBQlgtaQud3VdsTPycKFsE/56jYgj1sJoxgbag7Muo=;
        b=uX3/zx3HuLbgzf/COYyxndXU16O2gVD5eKWZQnnrZu9EVA84/C5zlB7gDq8uJwXLVk
         gI8rHRTww5Pq1ao+huXP9VZSFRnx5tvLhwFT4SI+I63eEmJ2HMciZ37G3Uk/GwPd/wGB
         4fAS+7z0e/rNd478Apc6Bctm2IFSurNqt4YTSlAYPTu0j6K+OL6qv6xOrZaLH0ODvu7D
         SHl5nyxWPpQ7y516ROrIqfGwM/GDsvWesdPoyOKegMwDroZm1TDh+5o/3cBnMbbZ2Diy
         14Vnr65omtv9Ufm67xWUty6IzmD1zLgGizd/lYVXiUsrxk3cvdOd8re68412e5pAeXPu
         0B0w==
X-Forwarded-Encrypted: i=1; AJvYcCUaZ/CmgPmvUAqdv8dNfJc4D6PhaoOxFkiM5D6IU9M+F6RQqmfkMpySUziBRldVgJTAnZ/u6TL3BqD6@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9uGT/5HthTgy2/syocrphbip9ZWkc5ZaMe/lhnCkv4BORkwtM
	EvqMVy5zByl+BUWymiOoqv16IaPNDSVhJyiDU32w6s3bxkEnT5JiUJucIYDD7nY=
X-Gm-Gg: ASbGnctwcdr1KBmmHg9Wv8UvYqFveu8LpvnRpgNNDaihnsGw0DUxEgzF3Bmco2Wn1//
	w0rlYynqpmQUl5fEtRCYMBFxnf5ZdHADOMNzFBsOTXZTJJ2RdWwmBgPuixEwSs5M9RhD8JIrQzX
	e9A32Ka/ue2H6ahIRcCx3ZXv1UlONCsUJzj55niwUwQ0MtHB4uQV47LuDLBv9tfErNnjHaxJNCi
	QdQyopem8My//iYM1/SDoUmPjodQgK26C0dXbBf/jbofdh/4haTUTUOsQU2VnK0Au1a4gAv8/AC
	baPmUzzOUjUeXxYn4iFWrjfrbteUtaPtKv3Zr6Lo0vlvij+lxcosbV3UdQD6HakrkU5zzWcf4c0
	MkrzuY40juI/wRGQ=
X-Google-Smtp-Source: AGHT+IFKhORMMaDYdgpl/9rwoGwyfPRj2XbuzQCabPPPwxwDnPG2aYuvtb08xMFG1iEWZeP3qzi2Vw==
X-Received: by 2002:a05:6a21:3a44:b0:1f5:6e71:e55 with SMTP id adf61e73a8af0-2095907d1bamr3201920637.6.1745916728038;
        Tue, 29 Apr 2025 01:52:08 -0700 (PDT)
Received: from localhost.localdomain (210-61-187-174.hinet-ip.hinet.net. [210.61.187.174])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b15f8597e0bsm8550119a12.44.2025.04.29.01.51.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 01:52:07 -0700 (PDT)
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
	duje.mihanovic@skole.hr,
	heikki.krogerus@linux.intel.com
Cc: elder@riscstar.com,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	guodong@riscstar.com
Subject: [PATCH v3 5/6] pwm: Kconfig: add depends on ARCH_SPACEMIT to PWM_PXA
Date: Tue, 29 Apr 2025 16:50:47 +0800
Message-ID: <20250429085048.1310409-6-guodong@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250429085048.1310409-1-guodong@riscstar.com>
References: <20250429085048.1310409-1-guodong@riscstar.com>
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
v3: No change
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


