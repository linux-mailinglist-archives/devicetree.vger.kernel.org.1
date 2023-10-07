Return-Path: <devicetree+bounces-6670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E11F07BC5E8
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 09:58:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 362912821A5
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 07:58:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F1B215486;
	Sat,  7 Oct 2023 07:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BDIsyim1"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487F8E553
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 07:58:02 +0000 (UTC)
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D46EBF;
	Sat,  7 Oct 2023 00:58:01 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6c67060fdfaso1932620a34.2;
        Sat, 07 Oct 2023 00:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696665480; x=1697270280; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n4FXVyN5gTzbLetmafn65CKFetT69h/TQ9sNDnsnsoU=;
        b=BDIsyim1jkF7Q4MqsPzOCAmaX0SY5J9eSsY/8COVO/puAT7QTVXaEihR1OZJMndVTy
         olhceWQFVMjoShdp5+vYt+OcSmFQfWupz4eobh5a0rVtO4akjV86IRi+HiFYuI7z4Vwb
         QrzfD02JSi3MSOHPeA0HuxGQm7H+7Z3+epVAZoY/l0tRA3T6kmRU9A5IzZ+t1Z3KtF3C
         X5tu12Hj5lmtRbzq8MSlh/nWTlLfVh9uzF1gusD1dmIQmXjC6sh2VsqihQTiXK+GpI12
         d6ApMxFctgF1vVDxPs0y6Cau8AOItdOaahmU/5OVPvc3eHf5W5Hx7XMK7exjMrY9wQpK
         LQog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696665480; x=1697270280;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n4FXVyN5gTzbLetmafn65CKFetT69h/TQ9sNDnsnsoU=;
        b=V/yU6pCsTImRb1CRO3Q9WvrNNmyxgwNugEwomdb4EKqRvQbx8q3t99Kp6h5pozSPsr
         +zj8JizDK7lNnJiNvytcSJIcEWaMCu59IjudbPmJs2TtT791Jp/z5woHZKFHyrVXo/hz
         O5+TUyS3zlbvud+8L+AC3zELRiextybxQn74GB8u4e4cm1hmuornr9fZHRgsu9cEpENE
         XKB2XsqyuEQobAeU9FbBfZqZsYWr15BbBo33VxeaDKrEVJYvHRCNrdHYiEyJ9EeGzD94
         Pq08reqx5xs3QzYU2isMX0Al8wdD0s54TPYcbG8Ce7kr+MjvlyxI6MSTaoXOdWe1W3Nn
         V0Qg==
X-Gm-Message-State: AOJu0YzHYQ/qHEm8WCv/VIajRKHYSUuZK944hbeZOKYbSqyvs76IH5Ii
	C7j533A1YOnh1eYZ5HPaKbY=
X-Google-Smtp-Source: AGHT+IHEccQE4XHAgSZ2hfQK/cHeUv11vIoPi5s95iiPvHqfedlwnQ8rQsV/au2INVqdbO37/SnHYg==
X-Received: by 2002:a9d:6c0f:0:b0:6c4:d08c:6a2 with SMTP id f15-20020a9d6c0f000000b006c4d08c06a2mr10223004otq.9.1696665480022;
        Sat, 07 Oct 2023 00:58:00 -0700 (PDT)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id k7-20020a056830168700b006b87f593877sm832825otr.37.2023.10.07.00.57.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Oct 2023 00:57:59 -0700 (PDT)
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
Subject: [PATCH v5 10/10] riscv: defconfig: enable SOPHGO SoC
Date: Sat,  7 Oct 2023 15:57:52 +0800
Message-Id: <53553d9a75740f528c4ea22860055bfb642a2cac.1696663037.git.unicorn_wang@outlook.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1696663037.git.unicorn_wang@outlook.com>
References: <cover.1696663037.git.unicorn_wang@outlook.com>
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

From: Chen Wang <unicorn_wang@outlook.com>

Enable SOPHGO SoC config in defconfig to allow the default
upstream kernel to boot on Milk-V Pioneer board.

Acked-by: Chao Wei <chao.wei@sophgo.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Guo Ren <guoren@kernel.org>
Signed-off-by: Chen Wang <unicorn_wang@outlook.com>
[conor: fix the ordering]
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/configs/defconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index ab86ec3b9eab..1edf3cd886c5 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -27,10 +27,11 @@ CONFIG_EXPERT=y
 CONFIG_PROFILING=y
 CONFIG_SOC_MICROCHIP_POLARFIRE=y
 CONFIG_ARCH_RENESAS=y
-CONFIG_ARCH_THEAD=y
 CONFIG_SOC_SIFIVE=y
+CONFIG_ARCH_SOPHGO=y
 CONFIG_SOC_STARFIVE=y
 CONFIG_ARCH_SUNXI=y
+CONFIG_ARCH_THEAD=y
 CONFIG_SOC_VIRT=y
 CONFIG_SMP=y
 CONFIG_HOTPLUG_CPU=y
-- 
2.25.1


