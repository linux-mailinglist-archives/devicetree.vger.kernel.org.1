Return-Path: <devicetree+bounces-216139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A442FB53BD2
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 20:47:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A7DA05A282C
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 18:46:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D6002DC79B;
	Thu, 11 Sep 2025 18:46:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Tteshu4q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C938025F798
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 18:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757616378; cv=none; b=dE7hWU5kEyen/f3fTXivyoAQ1b88pv9lviwaPTHNXl5nnzff9ubTu1FsS3QjqmnUDP35dj/xSx0jfJuj38wEgBTqxpepi5LrfeuofVpjgjvWLo1zg29zPK/fnmtzp104bjR4naem8lw3CebGcZ0sQu1Qid3dYh8Xy915VWIw5+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757616378; c=relaxed/simple;
	bh=lWN68uun6xuXeo157g9OXPRAmAt3+0h3gT2xvoHGcV4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rHPq4tRwK6Qhh5+k3XtbwhDFsP4qpLoFx8kwOVWGOiX5odgkZGPh0+AEsXZnUv8BO8tT/5XxE4gSnSkgm+9NEctCLD5brExeFvhSeG7u/xWEuqCRik856+CC3Kyke/FEqzKXpoCMthXoyCUxX9BjLYM1L3Z+no6MpmzriqZB8b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Tteshu4q; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-7722bcb989aso754551b3a.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 11:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757616376; x=1758221176; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UlAH/xgNhtYxUmFSrUeEXv9Zp05waRSL1IRqf/r2VPc=;
        b=Tteshu4q+MQSkSmlJZVzu5kC+FR+hCYo/wos78IaQzBWFjnnYWjHCYTN7T4QCJn5dM
         yR1LH+VuJFnMLcZzJU/jGXNwz8EH+XTL/89VCS0luAP3W5SYvARRcpErD5ftQH9PFWoa
         UyYaZIJlQ+b6VAvFPHbpsti1i9L00z+VFBKUrBxVY3AE9jGmv/LwvsoiMHP5Ln4vb8OT
         zVaPirKg8wc3v+2v8CckvmmmEQ+fnfI+C87UJfMA7hLmw0noFNT6jAl4aNo6k0/YpW3y
         pHyl/CzG11FJf9+5QWPOV8T0vRb3ifXttrI8446mbmJY2fZlK/leWRb60UGhOH94eVtz
         sD8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757616376; x=1758221176;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UlAH/xgNhtYxUmFSrUeEXv9Zp05waRSL1IRqf/r2VPc=;
        b=CSqDNOi7/wSDISjJRuZS2G630tEfRKBjh/LSyVwVwyntHFBcR/Ni4+akSDRpteemic
         JdCppkluojRPtaGmITNkZsydififaiVC2NLabY1N2x5su4E2ixqP1NdIX1Inc3hmwe1l
         VNlumYgIP+e7tYsijv+WqN+NDjGg7fZSsQlNZ7OVxe/W6y63+/4iQ07ptyozsI62lV14
         cqiqJbrLmYL7SxpC0YxzIa9t3r6BNHpoApqHTnOg26UI7eN+9Two0Epu7w/coovnKnrK
         mNG47wqEvC2lJABv8iX3Yk0mI9STUytt7BvCZ/Yd2rFzii3vtBBGSUEFNTdYL946TfB+
         O08Q==
X-Gm-Message-State: AOJu0YyMXo2qg3V44gYUEFmbfmGEZCpHLPFTi9W65BUwUMWNJ2aV19Xo
	ua/OaRnBmLzxuJf+wNFKbjnq4mK6RtBS2bLF1LDGZbud9uaUgOUKxljMmrrRqt+mTP0B1Q==
X-Gm-Gg: ASbGncsO7P0ycGzH9Aiupnej++WUQfMIDdBpoYbHLE4lTk1s3j1f61f+R7rF0xQa04H
	+n76k8TKJh4Dd9PXQlR+0IjYC3EPAKSOBTzA9G0popjvGWdfCC+J202V8WHy59ofK9bgYcy+TBu
	aF7TWIA/bLcPsw8Lb4+MlFPOygdNDluA1c90VyQZy/8Yd/kxuFtG9Ik2+rR8oVd5W763rFurCke
	9iMhisaMjqNCd5sv/eBAI5vbYM2LUTD4nhVh9aIHnAmXSf4dy+wEUkE5p+g181/AhVDezno9JQz
	3wfGq9GGhj7lP8OJ9gto8mL/kZX0pQBA4ZA8IxGJBGtM6u3Pmo9yIhpqlc/y/y8zBXPwBT3er1m
	I6iNFKg7aFcZ+nCVBzV4g2gv+EfRmLHkm8P8ZcJtFlnybOG/+DMuezE42jxMBiPIX4055N5edVr
	Q/UwhhX6f6RwY=
X-Google-Smtp-Source: AGHT+IFWKQQ/DKkLEW8usdep20KmNQ9LFmSRyYY7L7+2Ba5k7KI4Z+F3I8SVvoorqXgeVdlQ3gDHqA==
X-Received: by 2002:aa7:88ca:0:b0:775:fadc:25f1 with SMTP id d2e1a72fcca58-7761209131amr452191b3a.12.1757616375382;
        Thu, 11 Sep 2025 11:46:15 -0700 (PDT)
Received: from localhost.localdomain (static.148.173.216.95.clients.your-server.de. [95.216.173.148])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607b34790sm2762616b3a.81.2025.09.11.11.46.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 11:46:15 -0700 (PDT)
From: Han Gao <rabenda.cn@gmail.com>
To: devicetree@vger.kernel.org,
	Drew Fustini <fustini@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Han Gao <rabenda.cn@gmail.com>
Cc: linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Han Gao <gaohan@iscas.ac.cn>
Subject: [PATCH 3/3] riscv: dts: thead: add zfh for th1520
Date: Fri, 12 Sep 2025 02:45:28 +0800
Message-ID: <20250911184528.1512543-4-rabenda.cn@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20250911184528.1512543-1-rabenda.cn@gmail.com>
References: <20250911184528.1512543-1-rabenda.cn@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

th1520 support Zfh ISA extension [1].

Link: https://occ-oss-prod.oss-cn-hangzhou.aliyuncs.com/resource//1737721869472/%E7%8E%84%E9%93%81C910%E4%B8%8EC920R1S6%E7%94%A8%E6%88%B7%E6%89%8B%E5%86%8C%28xrvm%29_20250124.pdf [1]

Signed-off-by: Han Gao <rabenda.cn@gmail.com>
Signed-off-by: Han Gao <gaohan@iscas.ac.cn>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index 7f07688aa964..2075bb969c2f 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -26,7 +26,7 @@ c910_0: cpu@0 {
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
 					       "ziccrse", "zicntr", "zicsr",
-					       "zifencei", "zihpm",
+					       "zifencei", "zihpm", "zfh",
 					       "xtheadvector";
 			thead,vlenb = <16>;
 			reg = <0>;
@@ -53,7 +53,7 @@ c910_1: cpu@1 {
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
 					       "ziccrse", "zicntr", "zicsr",
-					       "zifencei", "zihpm",
+					       "zifencei", "zihpm", "zfh",
 					       "xtheadvector";
 			thead,vlenb = <16>;
 			reg = <1>;
@@ -80,7 +80,7 @@ c910_2: cpu@2 {
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
 					       "ziccrse", "zicntr", "zicsr",
-					       "zifencei", "zihpm",
+					       "zifencei", "zihpm", "zfh",
 					       "xtheadvector";
 			thead,vlenb = <16>;
 			reg = <2>;
@@ -107,7 +107,7 @@ c910_3: cpu@3 {
 			riscv,isa-base = "rv64i";
 			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
 					       "ziccrse", "zicntr", "zicsr",
-					       "zifencei", "zihpm",
+					       "zifencei", "zihpm", "zfh",
 					       "xtheadvector";
 			thead,vlenb = <16>;
 			reg = <3>;
-- 
2.47.3


