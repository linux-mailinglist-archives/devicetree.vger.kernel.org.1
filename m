Return-Path: <devicetree+bounces-230406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E64FAC024E0
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 18:05:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BB933A1CAA
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 16:04:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0261C26E71F;
	Thu, 23 Oct 2025 16:04:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XD1O3/eK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E86D26E165
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 16:04:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761235459; cv=none; b=d2hKXEeEpz0sxiRvy58zk/7TgYv231uCZNFWa5r1xrMCnE9UbMa9wfsPFGn3hufGy0xUKojGsqmKtoe4LNDmh7rwVd6Cc0Cq9CK6QUczaQ20yXy72vpB5rcmg19cy9N/Fx2rsaWHoaBAT+FbqQDdDd1be6TAE4zHmZmx8m0zyFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761235459; c=relaxed/simple;
	bh=BZs/EKkft0iiyczp7niO50EAP/xvjEqxKm4Yz1szu7Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kadq2NvfH2LhlTgFm0kVZhWAVMePguwm5DKzF15+zcsfJxjH+lG8+kitf+FYIijRuWBOpIThFmenJ47HSHJJJ2V2b4YrdqtJnkymsQ11jaJ/6vJfJmM64xgh6UpuIfHTusczmkH0qiC9smpRuKoUIOSNTNu5Qnj71t6zkz2ISAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XD1O3/eK; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-33082c95fd0so1103364a91.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 09:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761235458; x=1761840258; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=qh+XTkdUsVoqfUCJ1tlaETEztr9dvLetJyhEnaoDJ2E=;
        b=XD1O3/eKCa9gtdjCCVrb9cUSrznkvswSr8ngKuov0cBWSsv5U63026rt1l5WXuadh0
         JW3iiUY1LroUhuv1ZZpTwQlIky47u1MX5dybUuv1Ow30/O+8JDp7SOWNhkKVMqZtX/3C
         9D5zo/DIsXcf5g1yDjzRRZ2qSsvuOgv97EEUW5JNkWWW6DgX0vCcf7iW6DmLOvnWlxMw
         fNzoURuBqTe/EMSn8gOS3bOjjV+B84xKZFWzNK6Rat1eq5z7JW0RjlKhGABRNuSfHVbw
         sBMy4/4TCWGyFQ8R1bGWSucPPxGhkUI7xYycpDpKmKYCs3tAlHT8UGT5BS8FGPbMlGmk
         d9KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761235458; x=1761840258;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qh+XTkdUsVoqfUCJ1tlaETEztr9dvLetJyhEnaoDJ2E=;
        b=ZlHrnotdB8jwnsZrHkgONeowp2kJROuPDSMoEubeWYK2I4zGjnQ9n4RCcjv7VSWzaN
         u9kX6J+dwYLVespIM9Uu6FgkKBQcSl8umc+pqcTsQLma9i3hPwYSb+jILJd1/Y2nwJFH
         2Rcs6tIdiOHfm1wiDSzrxYeArok3Yf8dNlseH9i4oJmZFdGhYdCSt/2tPfCegISZIxqi
         bPZ3Jk8K2ezbXx9b0Gkjh7da9fwB64kfuCEHUQsXAEOg1f27iXv6NHFgV7T88DRVz49T
         D7tVN03j5q2gB95mIsQsK9rl33Rsi4f998Ht51XBGHlTpEFSXsk0yzzE5yGoZH2PYbNR
         Hj8g==
X-Forwarded-Encrypted: i=1; AJvYcCXxNdjc1BQG3fOs0cu1zjnLCBY/KFv62DbhIO1Fj0cjFCv8QOfbkcBVyBjLW/pbiDBK0mo73Xu8cBWj@vger.kernel.org
X-Gm-Message-State: AOJu0YxqbvugdKr9SmXA7f1RmB0ChXhsdMXzibT61grr9rG0MbTmLF18
	/LCp2bBQlt9iXbTJUyc2jrDQSZ02alEXX3AQKCv6ljisrX8d+11qxS8c3hAKHg==
X-Gm-Gg: ASbGncvPtb+L+jUy+TgQdQL6VNrMcX1KDerdzpxbgqB6JuBjQ5F0KW3UCeAY1x+qojM
	v2w7QS9GS5NWVAWSXHSaH376av/UDALZHRmsUOeRpSNG+4W5nytEFaMo/a4Ydf51jjKKw8IxhNe
	xT75yxZCW79EWPpPaxQDBXCoJMSHunIttIKUwdZDwyA/okgNH7nSBUx5P3O7DQesL71c0keutYy
	T2FRh6iWiQaLdfVLF7p4a3/0UbQMblXuhwN+HOUnL9+bIy488MUb1zGhf/chF/eQvkdwX3BxqsY
	UZUROjJBK1EE+2Fq7/0JZhtaMCOlRLRhc6baI6WxvV8NDunSVFU21Mex/ip0tAxgc2/c6LezZa/
	VHBpmP9x7o+uOFlpWJSGXxmXQehGDeOeilPuzoXQmMmm59tG+Q5dp5J66MLCA08E6vl7Aroh53s
	WAcSX2Z/lPMyLZoI1J1G4BScieu+3jEerluA==
X-Google-Smtp-Source: AGHT+IEZI4ev2IBH4muhdtA8NDFE8NYLvVDhQkEqcYXbzc7+4M5oYKr1bimv/qoYUS2iAVBmMesOAA==
X-Received: by 2002:a17:90b:3144:b0:335:2b86:f319 with SMTP id 98e67ed59e1d1-33bcf919094mr34693477a91.35.1761235457698;
        Thu, 23 Oct 2025 09:04:17 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33faff37afesm2815913a91.1.2025.10.23.09.04.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 09:04:16 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
To: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Guenter Roeck <linux@roeck-us.net>,
	Han Gao <rabenda.cn@gmail.com>,
	Paul Walmsley <pjw@kernel.org>
Subject: [PATCH] of: Skip devicetree kunit tests when RISCV+ACPI doesn't populate root node
Date: Thu, 23 Oct 2025 09:04:14 -0700
Message-ID: <20251023160415.705294-1-linux@roeck-us.net>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Starting with commit 69a8b62a7aa1 ("riscv: acpi: avoid errors caused by
probing DT devices when ACPI is used"), riscv images no longer populate
devicetree if ACPI is enabled. This causes unit tests to fail which require
the root node to be set.

  # Subtest: of_dtb
  # module: of_test
  1..2
  # of_dtb_root_node_found_by_path: EXPECTATION FAILED at drivers/of/of_test.c:21
  Expected np is not null, but is
  # of_dtb_root_node_found_by_path: pass:0 fail:1 skip:0 total:1
  not ok 1 of_dtb_root_node_found_by_path
  # of_dtb_root_node_populates_of_root: EXPECTATION FAILED at drivers/of/of_test.c:31
  Expected of_root is not null, but is
  # of_dtb_root_node_populates_of_root: pass:0 fail:1 skip:0 total:1
  not ok 2 of_dtb_root_node_populates_of_root

Skip those tests for RISCV if the root node is not populated.

Fixes: 69a8b62a7aa1 ("riscv: acpi: avoid errors caused by probing DT devices when ACPI is used")
Cc: Han Gao <rabenda.cn@gmail.com>
Cc: Paul Walmsley <pjw@kernel.org>
Signed-off-by: Guenter Roeck <linux@roeck-us.net>
---
 drivers/of/of_kunit_helpers.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/of/of_kunit_helpers.c b/drivers/of/of_kunit_helpers.c
index 7b3ed5a382aa..f6ed1af8b62a 100644
--- a/drivers/of/of_kunit_helpers.c
+++ b/drivers/of/of_kunit_helpers.c
@@ -18,8 +18,9 @@
  */
 void of_root_kunit_skip(struct kunit *test)
 {
-	if (IS_ENABLED(CONFIG_ARM64) && IS_ENABLED(CONFIG_ACPI) && !of_root)
-		kunit_skip(test, "arm64+acpi doesn't populate a root node");
+	if ((IS_ENABLED(CONFIG_ARM64) || IS_ENABLED(CONFIG_RISCV)) &&
+	    IS_ENABLED(CONFIG_ACPI) && !of_root)
+		kunit_skip(test, "arm64/riscv+acpi doesn't populate a root node");
 }
 EXPORT_SYMBOL_GPL(of_root_kunit_skip);
 
-- 
2.45.2


