Return-Path: <devicetree+bounces-3717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 559527AFF30
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 10:58:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 06A4D2815CD
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 08:58:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E24581DA5C;
	Wed, 27 Sep 2023 08:58:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA33D13ADF
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 08:58:22 +0000 (UTC)
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com [IPv6:2001:4860:4864:20::2c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F8A1193;
	Wed, 27 Sep 2023 01:58:21 -0700 (PDT)
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-1dd54aca17cso2559845fac.3;
        Wed, 27 Sep 2023 01:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695805101; x=1696409901; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YZTi49m1tRqik4s4OIHpvu+DZ0pGT5ycjrh8hjwTA/U=;
        b=aDF7+gdCEH4nyH72m9/EVkkUlDwJY/EfZuQun+GC4CkZFlEkg1y/zFiSBoiZzQuN/e
         x7aty8NEOpxPUyPUnYsKiE4etNEmOr2Bdx3SZ3drKvv9WRc/mU9qseDcFwddTfjfXf0D
         XWIhhIoAUydQcw90a/GC1YG0RCC8AIwSLh0AjUBb97lCF1s0U7P+xWvMzMEn9hLPxgs5
         iJ0SMoCwfjsFdJaLqKvZtp69YAVQS1TLZhP57QxYQq1xfq9dYoOkN7ntMK8nw3zAqTzL
         gbzG9mh+RiSuptTWpGISE9WLnvvXM9mLShH3Oa7LZ0RKnlSj4tNiAFkQbkZDnWUYsSeR
         Ikww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695805101; x=1696409901;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YZTi49m1tRqik4s4OIHpvu+DZ0pGT5ycjrh8hjwTA/U=;
        b=YVYSm2LsOrdjqhX8mz/bLaBXHJ5aKaYKjhV0s3zzxtvHBD3w126U0WEUxNu2/MWWcO
         JaLiHSsUvXrRdCnmO26r9eOz+YKfTva9Y0kMbFhXX/8ia//uI/cNpyzb8l2YfAiQhumA
         qrUKEdM+hb2+Bu+5zmUvg9q33HrQGRM0FCJ7gAlpWf6GeBoNjRDiPtKk7a0VwvGTbgZY
         DLjvQ/6DChx895aoyXfdMLDchPisAnH5fUNQIc5UI0AJ+wJz2akIHFgmdEKTP5cCpy1j
         pe9vyHoGBQGdQU/U+Of9Icb0MB+TaXydZDec+X2nydsB1B49hB791IbwTGhmi7XDUvMd
         teyA==
X-Gm-Message-State: AOJu0YxplEZEJSNZLKcNpKZcPaebWsrw1p+JbKQwyWQW6aVYI7hTSgXQ
	vS50h+Ns8mXVbbg7s4mBXxY=
X-Google-Smtp-Source: AGHT+IFNIFoEp/iqGlH0vzf3/98sK4WLJfvo5ZvA9UZ3xKUBz6DBslOPOxQslranSCHUMX3oMfyKhQ==
X-Received: by 2002:a05:6870:46a5:b0:1dd:651a:7398 with SMTP id a37-20020a05687046a500b001dd651a7398mr1767181oap.2.1695805100614;
        Wed, 27 Sep 2023 01:58:20 -0700 (PDT)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id v3-20020a056870e28300b001dcde628a6fsm1962325oad.42.2023.09.27.01.58.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 01:58:20 -0700 (PDT)
From: Chen Wang <unicornxw@gmail.com>
To: aou@eecs.berkeley.edu,
	chao.wei@sophgo.com,
	conor@kernel.org,
	devicetree@vger.kernel.org,
	guoren@kernel.org,
	jszhang@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	robh+dt@kernel.org,
	xiaoguang.xing@sophgo.com,
	apatel@ventanamicro.com
Cc: Chen Wang <unicornxw@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Chen Wang <wangchen20@iscas.ac.cn>
Subject: [PATCH v3 01/11] riscv: Add SOPHGO SOC family Kconfig support
Date: Wed, 27 Sep 2023 16:58:12 +0800
Message-Id: <bfa07dce9eb268b312bd64059773acf055727f17.1695804418.git.unicornxw@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1695804418.git.unicornxw@gmail.com>
References: <cover.1695804418.git.unicornxw@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The first SoC in the SOPHGO series is SG2042, which contains 64 RISC-V
cores.

Reviewed-by: Guo Ren <guoren@kernel.org>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Acked-by: Chao Wei <chao.wei@sophgo.com>
Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
Signed-off-by: Chen Wang <unicornxw@gmail.com>
---
 arch/riscv/Kconfig.socs | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 6833d01e2e70..d4df7b5d0f16 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -22,6 +22,11 @@ config SOC_SIFIVE
 	help
 	  This enables support for SiFive SoC platform hardware.
 
+config ARCH_SOPHGO
+	bool "Sophgo SoCs"
+	help
+	  This enables support for Sophgo SoC platform hardware.
+
 config ARCH_STARFIVE
 	def_bool SOC_STARFIVE
 
-- 
2.25.1


