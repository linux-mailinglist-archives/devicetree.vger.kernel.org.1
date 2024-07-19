Return-Path: <devicetree+bounces-86840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC90937AC0
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 18:20:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A4591C22297
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2024 16:20:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CECCC250EC;
	Fri, 19 Jul 2024 16:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="yPFtWxCG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407F11487C6
	for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 16:19:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721405958; cv=none; b=BSs2c6deKcqVsyaRORLv05JXPDl/tt0IylAOnbSy85k34uP+Vt2jMR2nx8XLQvKu7qdbxh2obD6pfZ3R7052jMYpcrmbbk0sMeNogwm4uxAAvdwNQ8oUROjCnf9eHg0gCGwZs8QEYicKasdXV+n8l9Wj3+1IkgvsvgrWd8SQmIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721405958; c=relaxed/simple;
	bh=/awdvkpT37Pcv9l+R6WHhK0Ytr8TrWH5wurC23dujZY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=URDMt0JDG6FTrltTC9KIi9IJoWli5H30stnQ6NxQrI55Orfh22zxx23b3IbZ2KKyUEt/3UktD40vMDpTx4k/cNLEL7RMWSYMhGgRDNJD81V8fgl0c3EG88x9rXEJaYtYs4Wv1AZnA8n3xDsaNfkRWq1eqP32UlThF8mZ9GMrFRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=yPFtWxCG; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1fd65aaac27so4960105ad.1
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2024 09:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1721405957; x=1722010757; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7liFIbqG3XLVQtLXjuEuZ9H5FIup228+UAuRj2s502A=;
        b=yPFtWxCGAqlH3MxuCFadiTKWIvgSt8ptUQemtZBcXcrP0aXx2SkkDPCk3itxIhpFVE
         3wYR7Dr0H8o56tII0uo73kXblPfsdcFZfbZ06xi3cQ6YvV/N/R2gdoLpv+Aw98rsuv93
         ZQ4Vm+oFmeA9jcoUgSQZh5PSqgEODR+dE4sXNZfhSaympi1pn1ov7W+XFHtQScc+8s0o
         +Yknk9uL2tD2lLaV1Oe80tdEjSKRSEmd/Uo4clTgpLWwOxCP/oYljG9qLhrq2mTNCMrQ
         5IY19PIadlH+1sy0JlPuNYO1UTc3wt/RPXCZFxsCuyZWJgCT2fbeE/DHDKEeQ29B5aaW
         HxgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721405957; x=1722010757;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7liFIbqG3XLVQtLXjuEuZ9H5FIup228+UAuRj2s502A=;
        b=kfQmxdl+A3Rp8O6qccF95XIjUeYiRmf/FCZFSC461wT/uWyhVkZb9kYZqMrb/2XjaF
         BTEwcH1DN8dUxs0Y9o4w8y2Jrnqdm3HuZze7t08UPsPalcXZCo2MhHwDwtwnu8Q/lKRP
         SU9AM3jyU+chFr50O6WSkA8KY0+mOsKpG583MiUQAj3AhPvGLY8vEtpR8FcILOQg9SFL
         XvWi5oI0yPiuMeqiF9w6oVXAFcWrSzAM41LYH1lXYzE1lvg83RGRpktEOoKeJt5WTzy9
         j7yXhuxBOfCnSzMhoXarbLe7dWCwdEywYHBTuo42mkDpdrx1kY8n0Zgs5rJr8kYRi9/V
         Z2lg==
X-Forwarded-Encrypted: i=1; AJvYcCWt8YuEiu+opuoJzQD08gd3B16JN7tgDy8BPW3btduV4iJV+w9+RF+Zb5X2PRENOxTcxnnsKVSAPJ7c4mNf45yU98/Se8Il6Cvy4A==
X-Gm-Message-State: AOJu0YzxiqNvEGb33B81l3f91RD3Ea1HrXiVKy1ctSXApnzLYNWYr+kL
	PgEXCYRVJy1VeSABsV3IlIHh5nECJkYNu5OnCP2lG4/S67Blw+w17E7yEH7srsE=
X-Google-Smtp-Source: AGHT+IFPhJygvM7cOI2sFvOpJgwcTC6OzMCPu80xmtOCEp8XNQ6D5wygI1YJpk89nnaU6ND8ioVjQQ==
X-Received: by 2002:a17:902:e54e:b0:1fb:6e83:7cc5 with SMTP id d9443c01a7336-1fc5b58436dmr96085525ad.2.1721405956704;
        Fri, 19 Jul 2024 09:19:16 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fd6f490dcbsm6461435ad.297.2024.07.19.09.19.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jul 2024 09:19:16 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Fri, 19 Jul 2024 09:19:02 -0700
Subject: [PATCH v5 07/13] riscv: csr: Add CSR encodings for
 CSR_VXRM/CSR_VXSAT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240719-xtheadvector-v5-7-4b485fc7d55f@rivosinc.com>
References: <20240719-xtheadvector-v5-0-4b485fc7d55f@rivosinc.com>
In-Reply-To: <20240719-xtheadvector-v5-0-4b485fc7d55f@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, 
 Guo Ren <guoren@kernel.org>, Evan Green <evan@rivosinc.com>, 
 Andy Chiu <andy.chiu@sifive.com>, Jessica Clarke <jrtc27@jrtc27.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1721405940; l=1045;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=/awdvkpT37Pcv9l+R6WHhK0Ytr8TrWH5wurC23dujZY=;
 b=V/PMHUAjK0OP/Y/zQ4VqwTikKOoyDyb7MFDrNBGQKWmByMekzQweSn5mpBoX7qu1LxbxT4AQ9
 wY71YtPGHNrA18pqy6FN6yA9i9xO/a7HH4WJHKJw5sFUp5DfL89Zut4
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

The VXRM vector csr for xtheadvector has an encoding of 0xa and VXSAT
has an encoding of 0x9.

Co-developed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/include/asm/csr.h | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 3eeb07d73065..c0a60c4ed911 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -300,9 +300,14 @@
 #define CSR_STIMECMP		0x14D
 #define CSR_STIMECMPH		0x15D
 
-#define VCSR_VXRM_MASK			3
-#define VCSR_VXRM_SHIFT			1
-#define VCSR_VXSAT_MASK			1
+/* xtheadvector symbolic CSR names */
+#define CSR_VXSAT		0x9
+#define CSR_VXRM		0xa
+
+/* xtheadvector CSR masks */
+#define CSR_VXRM_MASK		3
+#define CSR_VXRM_SHIFT		1
+#define CSR_VXSAT_MASK		1
 
 /* Supervisor-Level Window to Indirectly Accessed Registers (AIA) */
 #define CSR_SISELECT		0x150

-- 
2.44.0


