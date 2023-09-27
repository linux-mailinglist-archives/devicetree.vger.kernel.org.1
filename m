Return-Path: <devicetree+bounces-3703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6677AFE5F
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 10:28:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id F0F2A2835BF
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 08:28:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92B541F611;
	Wed, 27 Sep 2023 08:28:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B671F616
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 08:28:29 +0000 (UTC)
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDE19192;
	Wed, 27 Sep 2023 01:28:28 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-3af57ce3d11so475546b6e.1;
        Wed, 27 Sep 2023 01:28:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695803308; x=1696408108; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YZTi49m1tRqik4s4OIHpvu+DZ0pGT5ycjrh8hjwTA/U=;
        b=EtBwKVQMdY6BlYCL/Yt43p6yAbcBvo/VUwU2XoptTJpks4Nadi4Zr144Ji0C2IW2vV
         8ZXifBqDbd0bINgnlismcaWSTlLVsaxMlhRw7cVIrO0OJvyx402jbPpKiLfesqqMSZpk
         HFzA0tsaJEKFK1sSUIr07M5LNGuaELueuO178HWAkEt7usqVE/3u9+QHFKZLg1cTRjJE
         NNac6ovyDlngPOVN5IizgEQyS+0OwGDe04QqNJ4FMlVbLzAUbGCeoilkSBKY4qlSfkLn
         LghjKVDKVEMfEXxd971sG8Id2eU6w1LqouORHijmNkX9jE6IRMZk8hvVX1LoAc0mgkWY
         exNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695803308; x=1696408108;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YZTi49m1tRqik4s4OIHpvu+DZ0pGT5ycjrh8hjwTA/U=;
        b=K9xfuuLd4WWSo+EK3IIJWxj0YC2DHtmk+/Y1CtmrOv/jPOsXC12LPQ30jtce4rYobI
         0Xp5AhdHT3bwM5le2quXiT145EdFubG2M7wY5JiQZnn8TsVhxm+Nhyn522A3Jqbkal8/
         f7JwYcZj4eHkkXzff6yB8b73w0D4yxORjj0qVmKpOUhshOEBsFE3YV59XUHROxGdnjks
         aek4azmEt3/+1aP2WK8KwKcWjZ8RcJahtHMTiy+3VOQ7F7WSstMnfRmO8VMUn6WZXQP+
         pqh+Mo7PpiI0iS2YWweBdH9jhdBiAsv4kNzb9BhnUbJ73AMUsZZ0NfRfebFdNWJPhNp6
         H54g==
X-Gm-Message-State: AOJu0YyXfHTYu2t1Ph+Lb6zmZMJTfVMlo6pJZSH2gyVPf/KhXBYHTLqV
	tGmHpYuadQFL3P0LBdYns8g=
X-Google-Smtp-Source: AGHT+IFWJGplOWqOpM2IFjOdrFg6ThLvBAE2KJ+l0wbkxriQgN9+p9DSzrcWzlgqMBpiqFYn+mQEag==
X-Received: by 2002:a05:6871:549:b0:1d6:6083:63a3 with SMTP id t9-20020a056871054900b001d6608363a3mr1630424oal.37.1695803308124;
        Wed, 27 Sep 2023 01:28:28 -0700 (PDT)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id eg46-20020a05687098ae00b001dd17c5356dsm1359148oab.11.2023.09.27.01.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 01:28:27 -0700 (PDT)
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
	apatel@ventanamicro.com,
	unicorn_wang@outlook.com
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Chen Wang <wangchen20@iscas.ac.cn>
Subject: [PATCH v3 01/11] riscv: Add SOPHGO SOC family Kconfig support
Date: Wed, 27 Sep 2023 16:28:22 +0800
Message-Id: <bfa07dce9eb268b312bd64059773acf055727f17.1695800389.git.unicornxw@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1695800389.git.unicornxw@gmail.com>
References: <cover.1695800389.git.unicornxw@gmail.com>
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


