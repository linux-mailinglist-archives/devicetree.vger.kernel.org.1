Return-Path: <devicetree+bounces-106376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E35989E5D
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 11:32:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A39AA1C22908
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 09:32:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CDF718A6DD;
	Mon, 30 Sep 2024 09:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="X/aRHf+X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E9F18A6B4
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 09:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727688705; cv=none; b=Cyhauhm7GYiL6m6byrHNRUtciH2vRwiyk6ZiEOGLM/i35HlJnl6D6vWdTJ7gkXVxiBX80NwLqbOHDaGCiu8tGpPyBYf9FEP7MDvbqTouGmQ16QtysHIEK6DUH4KBFR3BJKqMLFT2JKNfovegkX3H+t6oAc/XdYfctE3FIdiO8QY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727688705; c=relaxed/simple;
	bh=afFwjvtS4RlVspvmU+dLQI3MTGCkXQYZKUE8UXrgApk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lIKKQ2QdhrUhQEIceWMYKcULZnbqdzU47cv6AVEprKTPnVjWU4rGm9FB/x1K/wACIoPKjQ1q++SXUisfDDl0VqFatEu9wl0J+Uk+xxON7Z1/i6VJK8swhmGSBzd3j6Ex8YCXh7LSzFcUnl+fvC4Hzd7DLktE0bMtCgcREs6LlIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=X/aRHf+X; arc=none smtp.client-ip=209.85.167.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3e2a1049688so1943788b6e.1
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 02:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1727688703; x=1728293503; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7j9JMGTE7zEUsag9TZFQEVZQV+jJCL4nO3NZoqVd0Do=;
        b=X/aRHf+Xunl85KOKGxKoABEmqOVK3p8GZ2n13HYZPaG3ooJ8DMVPCEpT+bAdihM43R
         PcChO7wNrvDg+h5iqd7vapS7AKMdIsAr6NGTm3Wq8/NIdg9hp2/hq+Pj1t8FWJ3TU8vV
         ChUd07ET98DBQh+eOx6RH2SQ5Db0Xwt5O8/0g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727688703; x=1728293503;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7j9JMGTE7zEUsag9TZFQEVZQV+jJCL4nO3NZoqVd0Do=;
        b=M1jK/hmS9O+OgLIkOUFcw9ts3bYPnf9ZVICtaRAH0PTPd1iZs5NenUlsepsfSmryxU
         MV7j6PztzxU7ox+rrZ+0oHf61InlX/oqoiQRO6fyrO9fY/Aijo0UMY35vhYbR77zjPxG
         Iuue9Ck0SNuWMbd7lNXkXj+nQ1sm32g6VULzRgEfd+9RyZnGpghkGWZtdUWzvgLqLAjZ
         VYlKznAVcrEn9ln/XaHfTYrZQIKcj/qN4OIffiULDNZfVKogLd0zjGcNtZ5YNmdnPozV
         XodTi1NRwp4mkmRH/YeoSXkGqtyDK2nHlwug169HU3jxq7EMtSHtvBUNBUg9x81LIyv1
         9VLA==
X-Gm-Message-State: AOJu0Yx2ZqXA+Q24Mer7uJNuSt6rbsetXL8ALf2hS6QK7MLgh1PHfdVS
	nzhKU/JJ76+FjfITIMb3CYVgZltwrMnR1MIW2hg0JR3XaWXNqupFJ0XxDK/jxCN5saNIQPIkRre
	I
X-Google-Smtp-Source: AGHT+IHn7AguvG28Fk7shnHcczUWwr40vK7YIRskf1C5lB4e/2P7SxgCKtx5befNDJpRM9iMPo4zlQ==
X-Received: by 2002:a05:6808:10d2:b0:3e0:6809:ab27 with SMTP id 5614622812f47-3e3939e809emr6927128b6e.41.1727688702936;
        Mon, 30 Sep 2024 02:31:42 -0700 (PDT)
Received: from localhost.localdomain ([103.108.57.9])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b26499743sm6037482b3a.18.2024.09.30.02.31.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 02:31:42 -0700 (PDT)
From: Pavitrakumar M <pavitrakumarm@vayavyalabs.com>
To: devicetree@vger.kernel.org,
	herbert@gondor.apana.org.au,
	linux-crypto@vger.kernel.org,
	robh@kernel.org
Cc: Ruud.Derwig@synopsys.com,
	manjunath.hadli@vayavyalabs.com,
	bhoomikak@vayavyalabs.com,
	Pavitrakumar M <pavitrakumarm@vayavyalabs.com>,
	Shweta Raikar <shwetar@vayavyalabs.com>
Subject: [PATCH v9 6/7] Add SPAcc compilation in crypto
Date: Mon, 30 Sep 2024 15:00:53 +0530
Message-Id: <20240930093054.215809-7-pavitrakumarm@vayavyalabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240930093054.215809-1-pavitrakumarm@vayavyalabs.com>
References: <20240930093054.215809-1-pavitrakumarm@vayavyalabs.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add SPAcc compilation to crypto subsystem

Co-developed-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Signed-off-by: Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Co-developed-by: Shweta Raikar <shwetar@vayavyalabs.com>
Signed-off-by: Shweta Raikar <shwetar@vayavyalabs.com>
Signed-off-by: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Signed-off-by: Manjunath Hadli <manjunath.hadli@vayavyalabs.com>
Acked-by: Ruud Derwig <Ruud.Derwig@synopsys.com>
---
 drivers/crypto/Kconfig  | 1 +
 drivers/crypto/Makefile | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
index 94f23c6fc93b..009cbd0e1993 100644
--- a/drivers/crypto/Kconfig
+++ b/drivers/crypto/Kconfig
@@ -696,6 +696,7 @@ config CRYPTO_DEV_BCM_SPU
 	  ahash, and aead algorithms with the kernel cryptographic API.
 
 source "drivers/crypto/stm32/Kconfig"
+source "drivers/crypto/dwc-spacc/Kconfig"
 
 config CRYPTO_DEV_SAFEXCEL
 	tristate "Inside Secure's SafeXcel cryptographic engine driver"
diff --git a/drivers/crypto/Makefile b/drivers/crypto/Makefile
index ad4ccef67d12..a937e8f5849b 100644
--- a/drivers/crypto/Makefile
+++ b/drivers/crypto/Makefile
@@ -48,6 +48,7 @@ obj-$(CONFIG_CRYPTO_DEV_BCM_SPU) += bcm/
 obj-$(CONFIG_CRYPTO_DEV_SAFEXCEL) += inside-secure/
 obj-$(CONFIG_CRYPTO_DEV_ARTPEC6) += axis/
 obj-y += xilinx/
+obj-y += dwc-spacc/
 obj-y += hisilicon/
 obj-$(CONFIG_CRYPTO_DEV_AMLOGIC_GXL) += amlogic/
 obj-y += intel/
-- 
2.25.1


