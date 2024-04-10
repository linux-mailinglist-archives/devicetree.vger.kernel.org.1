Return-Path: <devicetree+bounces-57909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF9D89F2EB
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 14:52:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BDB751F27435
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 12:52:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0606116F842;
	Wed, 10 Apr 2024 12:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="aGrHU6uh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370D516E884
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 12:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712753231; cv=none; b=MDDC+Zp7KnU4sHVQ51xUJX99vmEMPG202TRmSA+qjnHpTJ+83ou+KUKVLvM4yjKNlWE7r4JbzmX6SJF3SunaRJepNWel02+cNgGChy6OXD+hcqOgIHhU0xpGFoRJQmcqoUwKgFPg4JHtsZQSl5KPv14/d9LJ+kRGSImBsFZ8Ge8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712753231; c=relaxed/simple;
	bh=2Y3Xvp2nR9CrqURawAV1boG93szDMz9XddJ62ra2nbw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Qpu0p1qlG5KeOcssRUqcAIW4rvD9UlOGMZByJQI8P31dDlyaLFxhrzFsP+3r38XxOAzoqmJuATvXwTgJ8HrcqIQEGVFyXQkbjwYJ4txwwL7nXXF2y0SN4OBHdXlctuCEcJHJxnxWgFQVLoizMP68P5HG+e3fvoC+nzhlBgetwVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=aGrHU6uh; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-416a208d496so13313375e9.1
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 05:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1712753227; x=1713358027; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a3VKydEHB8lHvIONMbgchmsCTkAjKSCt8ZGRsExnd9A=;
        b=aGrHU6uhyAXK0lc6uLYDSmp4ZoceevJGRArYfnkuaV24Ee5Fsot2RkqXst/DhysTP7
         2YSSE986wLin6HMG9KHaNAAIYDO+sEmz07jp3DaB0+FRhUmlX+zq4r6pfrFJCzEuqfJl
         ii0EctfqZHEKtL9jgaJTI2t5kvPrOu9qqMyj3cHT4VWDGdKaq4GppCFegsaizR4hAU76
         MVBHygPC1HYH8cRuHOLZunJfe1H5Rqzlm2bOuPD4WxMbnxI25780JUp0UI/uALDulaQo
         uEo2tB4nAWuUzJQfL28Hn+3qn9+CHJuBEJnhn93tTYZmK1hnVSvCQMIOmK37inawPHAm
         j/7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712753227; x=1713358027;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a3VKydEHB8lHvIONMbgchmsCTkAjKSCt8ZGRsExnd9A=;
        b=PtMUbhfAkkZYjGFcR4Q/F2m4sD16RfsSHhsKXQ3Y7HPd84mhr7cPdoGZSGM8zXiRqg
         g+qSrXPNPswSPg8Acm4hVWK5pwoA/QKgjZr10jp66633KcpYNro+b087y9+dHxDq5kGF
         aD/d1Zq/n0otiT8xZjPkx8PklMGilpVoS3fem7+vnfiO2AgZ4hynsGltfTrhdhtaX5Q3
         699JRGM4R7Fl3cVaFtC6NmmjQ52HNS94kb19LeUzz0mmGTT5q2M6dY1CB4Hj+hl/3kFp
         Sjynwh5TFWGKOo+9lzhGD0tVzpNTtPuBeBBsttj3uPBOoaqY/vJ5xdJ5PAUb6A3xfzrr
         sxHw==
X-Forwarded-Encrypted: i=1; AJvYcCUbkjSMHwgHWz52bo1X2jEmFxzQ42YpijRBJFJCpJgaYvd2rGwF6lgHNx5tlMTXyxA9007SkJelfPJkNsO7auDJDrxNP+dumJo+aA==
X-Gm-Message-State: AOJu0YwQuDpGxMSB3K4t+RB5D6sAoNj2mDQnRC/zQxYPfaEdZlfFPoh2
	AbjZtYjOSXRcFImKlqgpN8VdZj8X/an/YsJcGmbSiXktpDW7PeszKMbQXt2G324=
X-Google-Smtp-Source: AGHT+IHJF6LcSwDmHG05PJXSHj73CCP4M9gnnRg/+VfczmccvVGh4FNtbdoeulp4qepsLWmvHAhUNw==
X-Received: by 2002:a05:600c:1f0c:b0:416:c904:a26a with SMTP id bd12-20020a05600c1f0c00b00416c904a26amr1525110wmb.7.1712753226816;
        Wed, 10 Apr 2024 05:47:06 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:75a:e000:6908:7e99:35c9:d585])
        by smtp.gmail.com with ESMTPSA id v13-20020a05600c444d00b0041663450a4asm2150929wmn.45.2024.04.10.05.47.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 05:47:06 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kalle Valo <kvalo@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Saravana Kannan <saravanak@google.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Arnd Bergmann <arnd@arndb.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Alex Elder <elder@linaro.org>,
	Srini Kandagatla <srinivas.kandagatla@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lukas Wunner <lukas@wunner.de>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Amit Pundir <amit.pundir@linaro.org>,
	Xilin Wu <wuxilin123@gmail.com>
Cc: linux-bluetooth@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v7 11/16] PCI/pwrctl: create platform devices for child OF nodes of the port node
Date: Wed, 10 Apr 2024 14:46:23 +0200
Message-Id: <20240410124628.171783-12-brgl@bgdev.pl>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240410124628.171783-1-brgl@bgdev.pl>
References: <20240410124628.171783-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

In preparation for introducing PCI device power control - a set of
library functions that will allow powering-up of PCI devices before
they're detected on the PCI bus - we need to populate the devices
defined on the device-tree.

We are reusing the platform bus as it provides us with all the
infrastructure we need to match the pwrctl drivers against the
compatibles from OF nodes.

These platform devices will be probed by the driver core and bound to
the PCI pwrctl drivers we'll introduce later.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/pci/bus.c    | 9 +++++++++
 drivers/pci/remove.c | 2 ++
 2 files changed, 11 insertions(+)

diff --git a/drivers/pci/bus.c b/drivers/pci/bus.c
index 826b5016a101..3e3517567721 100644
--- a/drivers/pci/bus.c
+++ b/drivers/pci/bus.c
@@ -12,6 +12,7 @@
 #include <linux/errno.h>
 #include <linux/ioport.h>
 #include <linux/of.h>
+#include <linux/of_platform.h>
 #include <linux/proc_fs.h>
 #include <linux/slab.h>
 
@@ -354,6 +355,14 @@ void pci_bus_add_device(struct pci_dev *dev)
 		pci_warn(dev, "device attach failed (%d)\n", retval);
 
 	pci_dev_assign_added(dev, true);
+
+	if (pci_is_bridge(dev)) {
+		retval = of_platform_populate(dev->dev.of_node, NULL, NULL,
+					      &dev->dev);
+		if (retval)
+			pci_err(dev, "failed to populate child OF nodes (%d)\n",
+				retval);
+	}
 }
 EXPORT_SYMBOL_GPL(pci_bus_add_device);
 
diff --git a/drivers/pci/remove.c b/drivers/pci/remove.c
index d749ea8250d6..fc9db2805888 100644
--- a/drivers/pci/remove.c
+++ b/drivers/pci/remove.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <linux/pci.h>
 #include <linux/module.h>
+#include <linux/of_platform.h>
 #include "pci.h"
 
 static void pci_free_resources(struct pci_dev *dev)
@@ -22,6 +23,7 @@ static void pci_stop_dev(struct pci_dev *dev)
 		device_release_driver(&dev->dev);
 		pci_proc_detach_device(dev);
 		pci_remove_sysfs_dev_files(dev);
+		of_platform_depopulate(&dev->dev);
 		of_pci_remove_node(dev);
 
 		pci_dev_assign_added(dev, false);
-- 
2.40.1


