Return-Path: <devicetree+bounces-216138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BE4B53BD0
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 20:46:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C211D566BC6
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 18:46:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D18225A322;
	Thu, 11 Sep 2025 18:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cVUr9HPn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ACCB258EC9
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 18:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757616370; cv=none; b=rmqLHuEkcvLyXFhsZipRhNZKtqPgviQYMZbey3roeq0g70Ptxzy/R6HgO1loWg855DL/qhVKCybcdk3xQtHpovNEh4Fr62efV29wDlLSdxfJSmOS+/uWCs06SyOS0G2l0ivZ2g77VLJs8gnmkSpT5MqWE+UiZ2wEXkZWGd2ierY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757616370; c=relaxed/simple;
	bh=F4qCo4MUS7J/EXXFY8/P4Blf39l8hgT0Sqf8jLdkBX0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=j4RdquwxSiEp3P8v/1McNIliFDmIinh1WJn+TeG5q4QN+IUUp4wBsl77LaOLnSZVzNu5fv0kgMdCZH3tMN0DCrn0Wee9S7fIgz1W0TaCxYlJCrWX5XtkN5mZZLO5h3PNLK9krAuAmNnKLpJSdRKCIDkKoBV2Q9FKQdSIkkRxcXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cVUr9HPn; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-76e2ea933b7so1091961b3a.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 11:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757616368; x=1758221168; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EhIVMGmaQb5kHljyJByX74pnoIVwtpe3D/VkqUSXrh4=;
        b=cVUr9HPnZsoA1oREq77EZnaflnrmom/y2TKKaMmq5hEhXuYq71aSOkp713xP5Cxzer
         X1NKVvEZLLK+cx2FPr/jhFJD4/XLPA3e+BLnOdkz4WNI00X3iJ8hTvD77S72ryaMhFzf
         V6EDBHy33n854K+Bhdi8nN5qrN/KYRCAkysQ3Fl1wP4cSQ52NDkq/9xh+3YDDYmfNc/Q
         bVMPu64xdnQGwE+6Qp7c9KtWHJcnFjKzAObaHYuipVVtjhTyUiWUoaylAKhvPJfCqCSS
         8hJ2RM8nLu2gVieMon1x9n/Yc0aW8XxQvQsgmZDXDEjNMzdM0f31JzvYq7erNq54pALI
         TICA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757616368; x=1758221168;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EhIVMGmaQb5kHljyJByX74pnoIVwtpe3D/VkqUSXrh4=;
        b=d6WSnnMBg0oz+VkbGBFWGdbK3NZaR5SwO7yd4sBHx4L+vIYh3xdS/6w4g0J5kboQEZ
         nyltVa39Ow0GVVqnCkKShZMYwp6r/XbCsXWBJyuDLsq8r3dqwM6s43Ht1c7n62XUAzrV
         O1w5LhiVE3PHMtdXH/z3Ci089eSEyMdt60BZQwv9djX59gP8I2ztix4lef+KWf0E5T5Q
         tlN7mRAaBVTPz8Zy0RrqvrWK4TK4ITtKmtoQtfM9R10O/jpsh89m1cVp6+XqUGeR3L+i
         UkJBWXXEno5OVtxa6a02q3/MwGEGpoLZ4kt2B84/Qb83X/q8FIjS5i8vTa78O0SJyjBK
         rtaQ==
X-Gm-Message-State: AOJu0YxYHqxbU1Xpux0h+h/nNoiCdIvIYSMpWlm0BMGv1E25BDamkaju
	ow7XiYJEPi6YVkLW89QtD75kZ98umNUTEYR0VQrJtOMULh6al6HFQaHaBiWqGTO1GY29tA==
X-Gm-Gg: ASbGncvMZJz6RP6NN7i9RPz/HK4UGr1+N3Inpc6hFmSSh2qwhNjc0S1rKHkz+jQkHTT
	sfZ8OKooMDeiag2fbtEeYop3+AhSvjtU0xGUqGUcbN60b9hW0USLdX4Sux4PcQmiUSHN9wqlBP8
	2fXKzD+I2uZRuEl//4GCFB5lTTqhMRvomICKOS7rHqiw1qbb8wvfWZvw47lNvAbmLB3IwvhzyTW
	gAKRSaC4+2X1gkJmnDCSSR16m0CuiUg4WVNT9n1XklqjIQb2rbazxVBMWC8yj+x/M8ovUEstdjE
	7LSxNdz4m9ewlWwKtC9XwPsIlqzdAtui+MBR1bH6wNQpcIyn2VXqZCCXZ6M+ztKGyQW1YmsyrZf
	sG+PFBDrPFGOtAe25WLaR5On3SjgenWLOgDdh7G0it6eg/+Ipz2JkjBhbta5LugOfpS/jUVRmHx
	fp2O0kNXROGe8=
X-Google-Smtp-Source: AGHT+IEWVt/7gbdNel0eKUlbw06kyfO3o98uOlJcnfbdgYss2Gsvlp8j+D58SPIYP2pLknnU33ifPw==
X-Received: by 2002:a05:6a00:b89:b0:770:4753:b984 with SMTP id d2e1a72fcca58-776125cd045mr354124b3a.16.1757616368063;
        Thu, 11 Sep 2025 11:46:08 -0700 (PDT)
Received: from localhost.localdomain (static.148.173.216.95.clients.your-server.de. [95.216.173.148])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77607b34790sm2762616b3a.81.2025.09.11.11.46.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 11:46:07 -0700 (PDT)
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
Subject: [PATCH 2/3] riscv: dts: thead: add ziccrse for th1520
Date: Fri, 12 Sep 2025 02:45:27 +0800
Message-ID: <20250911184528.1512543-3-rabenda.cn@gmail.com>
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

th1520 support Ziccrse ISA extension [1].

Link: https://lore.kernel.org/all/20241103145153.105097-12-alexghiti@rivosinc.com/ [1]

Signed-off-by: Han Gao <rabenda.cn@gmail.com>
Signed-off-by: Han Gao <gaohan@iscas.ac.cn>
---
 arch/riscv/boot/dts/thead/th1520.dtsi | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
index 59d1927764a6..7f07688aa964 100644
--- a/arch/riscv/boot/dts/thead/th1520.dtsi
+++ b/arch/riscv/boot/dts/thead/th1520.dtsi
@@ -24,8 +24,10 @@ c910_0: cpu@0 {
 			device_type = "cpu";
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm", "xtheadvector";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
+					       "ziccrse", "zicntr", "zicsr",
+					       "zifencei", "zihpm",
+					       "xtheadvector";
 			thead,vlenb = <16>;
 			reg = <0>;
 			i-cache-block-size = <64>;
@@ -49,8 +51,10 @@ c910_1: cpu@1 {
 			device_type = "cpu";
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm", "xtheadvector";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
+					       "ziccrse", "zicntr", "zicsr",
+					       "zifencei", "zihpm",
+					       "xtheadvector";
 			thead,vlenb = <16>;
 			reg = <1>;
 			i-cache-block-size = <64>;
@@ -74,8 +78,10 @@ c910_2: cpu@2 {
 			device_type = "cpu";
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm", "xtheadvector";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
+					       "ziccrse", "zicntr", "zicsr",
+					       "zifencei", "zihpm",
+					       "xtheadvector";
 			thead,vlenb = <16>;
 			reg = <2>;
 			i-cache-block-size = <64>;
@@ -99,8 +105,10 @@ c910_3: cpu@3 {
 			device_type = "cpu";
 			riscv,isa = "rv64imafdc";
 			riscv,isa-base = "rv64i";
-			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
-					       "zifencei", "zihpm", "xtheadvector";
+			riscv,isa-extensions = "i", "m", "a", "f", "d", "c",
+					       "ziccrse", "zicntr", "zicsr",
+					       "zifencei", "zihpm",
+					       "xtheadvector";
 			thead,vlenb = <16>;
 			reg = <3>;
 			i-cache-block-size = <64>;
-- 
2.47.3


