Return-Path: <devicetree+bounces-5886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2424B7B83F6
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 17:45:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id AB4CB1F22937
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:44:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A79A1B27E;
	Wed,  4 Oct 2023 15:44:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0C414261
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 15:44:55 +0000 (UTC)
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5E5CBF;
	Wed,  4 Oct 2023 08:44:54 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-6c496719a9aso11881a34.0;
        Wed, 04 Oct 2023 08:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696434294; x=1697039094; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kwHNGoN1oEuVN/+gC7YBu4Zfb31gkQocRcnObhIezIA=;
        b=d6nDYOum5YolPH/sYYh3agvMp6vyV8hUndBoS1pTmHF6fKOu9cEF9YGj4McJT17W1v
         /kMFHJ6oLG/J436NMKR72uY2HqWZ+XQkVFnr0ktWXvEsEscfVGtXaxQFfE5vFsMijnfc
         ehlEpJ7M2yAWf/eMqCTcWT/NrMnhyRrcPYbVHF1U9NHh4TiG3r0rfaX34JCXwJQhxfm6
         LQh0hSbwHj1ryfuBkaX+7ko7wNkCUmSmsxtatRaoM5Vp4awlENDMK+0lZeh+qKdFpW9M
         HeHhFzx+UdSd3Tugdxujm/EPV2wem3BTwOUq2hDO+sLNiPWyh1d+qJQJ95F8SCFyKIj6
         AMJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696434294; x=1697039094;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kwHNGoN1oEuVN/+gC7YBu4Zfb31gkQocRcnObhIezIA=;
        b=v3o3cvXvAHe0p4cynI+yXc+ZSKXl0GexXGMZlmN4ZkX0j6/gQnGWyctJmZJ6gp+0cK
         Oki3WDrJ8Tjoo4ONS/XeWMue49of2md7gAd1jeZPUF8iNU4fXezaRs53weMQ56MGFjCS
         TWbtlR36X8WimVVaddZctR31BzaVepe36ggV1LAYOgWeVuaEnI3kioJqFPZ0eR5TlyDz
         DdFU24NX8ek/ARhg6VN8at08WCnLJOr8i/L+TUQoMijDlfAks/wN7En9sUyZ6Yr+HETE
         kQR2tFZKIj3N7CQc7uW+yglih/DQfOGrPmhP7YdnlW63y/9AnkpLeumWd7kIJ1Rm7xfg
         O0qQ==
X-Gm-Message-State: AOJu0YzicAy6q/ntFvy6a44CrYQ3+tQ0yo3uszmfxpNiiKSiXa+Z5Uk+
	J32sBIeWngz//8zGs3QXYG0=
X-Google-Smtp-Source: AGHT+IHGDDRxpV/qn3OPuFLyzArlhshBtITnJ27A864nZkqqFJtvwGuAVG0g+WparjujNcqwpJR9eg==
X-Received: by 2002:a9d:469e:0:b0:6c7:af2e:bf6d with SMTP id z30-20020a9d469e000000b006c7af2ebf6dmr1608528ote.19.1696434294052;
        Wed, 04 Oct 2023 08:44:54 -0700 (PDT)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id m2-20020a9d6ac2000000b006b96a4287d4sm492050otq.5.2023.10.04.08.44.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 08:44:53 -0700 (PDT)
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
Cc: Chen Wang <unicorn_wang@outlook.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 10/10] riscv: defconfig: enable SOPHGO SoC
Date: Wed,  4 Oct 2023 23:44:46 +0800
Message-Id: <f7dea860fcb0e69203fba9b084a6fb8d84cdef96.1696433229.git.unicorn_wang@outlook.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1696433229.git.unicorn_wang@outlook.com>
References: <cover.1696433229.git.unicorn_wang@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Chen Wang <unicorn_wang@outlook.com>

Enable SOPHGO SoC config in defconfig to allow the default
upstream kernel to boot on Milk-V Pioneer board.

Acked-by: Chao Wei <chao.wei@sophgo.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Guo Ren <guoren@kernel.org>
Signed-off-by: Chen Wang <unicorn_wang@outlook.com>
---
 arch/riscv/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index ab86ec3b9eab..bf737cfa1d2c 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -32,6 +32,7 @@ CONFIG_SOC_SIFIVE=y
 CONFIG_SOC_STARFIVE=y
 CONFIG_ARCH_SUNXI=y
 CONFIG_SOC_VIRT=y
+CONFIG_ARCH_SOPHGO=y
 CONFIG_SMP=y
 CONFIG_HOTPLUG_CPU=y
 CONFIG_PM=y
-- 
2.25.1


