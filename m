Return-Path: <devicetree+bounces-127653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3969E5DDD
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 19:02:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 191B51885A61
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:02:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BF6F22B8A9;
	Thu,  5 Dec 2024 18:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bK6pr/7o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EDA5227B9A
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 18:02:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733421730; cv=none; b=isnFHrdPJVXVJCfqtKHeiKUjxvtWgmoOi17JZVq39fhF0gQZrYsQBaZA+0ZW2EWHi1OnGoBe/UlLEduPwiS+khp9M/ZhcJWX8USxEUCjv+Gnu+eTVyGC1mTtRNwFXHjzB30yagi9jaZIIU8OZC/ix14a7wi5P1OsA7xFCC8tYOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733421730; c=relaxed/simple;
	bh=IUPkXPm8C/w63Brb8YlUvk50wh9QYwPKoutZ4V9uyMY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HPqCUbxI1DCZg2Hw3thU1Vx9OWRhpDYs3687Y+60uHk6Yt+xe2SKjn187UBN2SzPWIKnu+hXSubQC160bT76ngzB68DeoNiXjNxpUIEh2A/6/DTqWHJ+7RwI2ysl92YQfCdSaHteCS0e5Mvh30M5SZ7W+WxAjfR7B+qPhhqn/Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bK6pr/7o; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-434a852bb6eso12299295e9.3
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 10:02:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733421727; x=1734026527; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0fwQWQ8p4fSiVsjGQYWImVyS0fCQtF0Xd9Qrli2C/FI=;
        b=bK6pr/7o77tSMIAuzPNEQNk6I6ZlKh6qlR/HrC8JJqd5ByaPrRuuCrF4Jm6x72SWI5
         YFuXgzHIoCtWYcz2itXPjFODig7WtCv1a1DYtiT89MGs/CGUPEXjjtISgIv22wkbvA/Z
         k45MKjqh184LlNQdTwi1dSO3SXH4xyOrJVQWJQDzAkdisruHo74k16wqnkoh54kfsI3R
         9cb57LUWhGeRPU5bYl8utRLhmb3ulRKKpkRNREMlqdKXdTYxc32w3CGZ0Mao228up2v/
         Bjvlkfq6ge1WZSM7t+1W+pAUQ4KZlrnT/jRIuvH6eYrxEMyktNGIBLc3ycvm7Yybld+K
         7eJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733421727; x=1734026527;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0fwQWQ8p4fSiVsjGQYWImVyS0fCQtF0Xd9Qrli2C/FI=;
        b=pnnOejIfIp4HiIxNGrQAnNgMi4TmrixXdU3vw9My1kS8jqIf7Qyr6HpiJm9cSdChfY
         GI8KgGHodOYe4Rkc00cypOouKHyAO7VUgwDNGPyr/H6Bx+Bnzlkm6ePrRIHFasfPNQ1n
         Tx/sh8xqTPKygqjRWLHuwLSDhyadOIpdIJmel0ThHIxYY0sOWfeK1yfiK6xZZPCmtYyO
         VEWmAWc0JKqNvHPtAYlbNGzh7e+s1eKdYgv6gwMH94iEsw9ifm9f2NrGBDP6rUZRp0oW
         AqaGcCsnNo0grOQtcd8oVN8kJiSXT5QjCV76pq35v3DuYcgNdhQSayhXDuKgbzqV1kIe
         csOQ==
X-Forwarded-Encrypted: i=1; AJvYcCXk1WviqTR6gM6l0kx0cslocXxKLQ3KvoAGt/xtTzkFJP17haUzF8qfraM5QrMqkObUC3pRWEIVc5kn@vger.kernel.org
X-Gm-Message-State: AOJu0YzeVNeMc50uFqAAXc/lEwiU6mpdXSr4v1KdWF9lrErsU9IKfrMt
	ffA6PP0tt9DV5AWQr5V0j1ud0z1mGN1LR83mg6jnpiV43SWQJ+E2x0e8iB7VnVQ=
X-Gm-Gg: ASbGncv1bW2GR4Yi+7StSHX3eH4ScwIcEeVddpx50FMqIDo8ix4R6NKzXX3LkRMjVt/
	yqHwlJMoK6ZqcntnFJ40qWfD91wCsMf4jx2fHBGQ6zFVvGsxQ7WTWNElgRTEwIk5ajQD0ClVazY
	gWpYtmJg9mjlZirfj7+y9wPDmyDdifDSniKp1vknrFYk06JAuHKaQ0Y1rla9F4qECmb7BBZhIAH
	0VI2MeyMiGvYf2sJugcLgMq/3WBx5OYPqlUsqIZzvksdkEjcDucY1fmXHOQPUbRfEmcsgVDuZ60
	bI0JlfLOEB5PATqiSoyRCdiLUCwREAba
X-Google-Smtp-Source: AGHT+IEF0Sy2Q+DDxTeCkIQlhde+ymelj1BdzVhOSZd3iGZysiBbmVwX72aWK/Yxm+/ZlbdpgcXp2g==
X-Received: by 2002:a05:600c:5125:b0:42c:b5f1:44ff with SMTP id 5b1f17b1804b1-434dded663dmr2047465e9.24.1733421726692;
        Thu, 05 Dec 2024 10:02:06 -0800 (PST)
Received: from ta2.c.googlers.com.com (32.134.38.34.bc.googleusercontent.com. [34.38.134.32])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-386219098d3sm2618228f8f.70.2024.12.05.10.02.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 10:02:06 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com
Cc: linux-kernel@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	peter.griffin@linaro.org,
	javierm@redhat.com,
	tzimmermann@suse.de,
	daniel.lezcano@linaro.org,
	vincent.guittot@linaro.org,
	ulf.hansson@linaro.org,
	arnd@arndb.de,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH 4/4] arm64: defconfig: enable ACPM protocol and exynos mailbox
Date: Thu,  5 Dec 2024 18:02:00 +0000
Message-ID: <20241205180200.203146-5-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
In-Reply-To: <20241205180200.203146-1-tudor.ambarus@linaro.org>
References: <20241205180200.203146-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the Samsung Exynos ACPM protocol and its transport layer, the
exynos mailbox driver. Samsung exynos platforms implement ACPM to
provide support for PMIC, clock frequency scaling, clock configuration
and temperature sensors.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c62831e61586..91139b1cf813 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -262,6 +262,7 @@ CONFIG_IMX_SCU=y
 CONFIG_QCOM_TZMEM_MODE_SHMBRIDGE=y
 CONFIG_QCOM_QSEECOM=y
 CONFIG_QCOM_QSEECOM_UEFISECAPP=y
+CONFIG_EXYNOS_ACPM_PROTOCOL=m
 CONFIG_GNSS=m
 CONFIG_GNSS_MTK_SERIAL=m
 CONFIG_MTD=y
@@ -1378,6 +1379,7 @@ CONFIG_HWSPINLOCK_QCOM=y
 CONFIG_TEGRA186_TIMER=y
 CONFIG_RENESAS_OSTM=y
 CONFIG_ARM_MHU=y
+CONFIG_EXYNOS_MBOX=m
 CONFIG_IMX_MBOX=y
 CONFIG_OMAP2PLUS_MBOX=m
 CONFIG_PLATFORM_MHU=y
-- 
2.47.0.338.g60cca15819-goog


