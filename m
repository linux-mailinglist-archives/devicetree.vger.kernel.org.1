Return-Path: <devicetree+bounces-11901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D91E47D6EAE
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:28:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 93BA8281B49
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:28:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2615E2AB20;
	Wed, 25 Oct 2023 14:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="aNIVV7LV"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA2D29430
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:28:36 +0000 (UTC)
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18845133
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:28:35 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-6b201a93c9cso4673543b3a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698244114; x=1698848914; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qEwjrIZXUzvnboalMTbBIVYhD3jIm+zf9phzakfFM5w=;
        b=aNIVV7LVubhMjpbKp2s1zpvHXSliz1YeOBJMCTvRE43ny5WEeJ61HZbq4PXFNFmsSy
         VWlmLGeoVSgrzYMRMWO62IEzCBtvYldphJid8Fus+YNsqJ5z603lytzZcY/oEC7FVnyA
         aY3oQuJJQ5Ee8zJT5vnFtw/MRGGesN8zlFAyeNIth1Wq0ar8l1qneElLpekYl++zBKPg
         WuvyxwFdXIj3ildQH48GuT2TCEl3KN5HwDGP0KIVuIyU6iQe1XtvySPYd3TJKG81ao4u
         8kXNBFr95yVM8nrR5VXVpmKElTX3RqGn1A2BCSPyRqxpkge+8hz+VC83K7/zrHiVEOBH
         vrxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698244114; x=1698848914;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qEwjrIZXUzvnboalMTbBIVYhD3jIm+zf9phzakfFM5w=;
        b=snQESoUJBHoOvF5cfkcDgjdzbAJN3JfxdxjNeO9zhj5NP8nr0Wgxk8lhmtnIAalxM4
         IJ28cJKPs3rt1fPF8+AY+vPb1GOQ+RYt+PtkBSMWH+eaKCASaPJMeItckedpLouO9eS4
         udjXZf426LSIya4520hIFc/i46rq30QpN4x49QWT2EmDw0+PioYbPhmlT/AI3v7ptqDH
         gL40840SA0jkt2vj4pwXLQhGQx8Rm0vE5VEK3ghZqfESRqa82FXEkay05QZQ29BCtYTr
         I5wLEqMxoYY5gU5QD9pl61d/KK8w8MXA0Adurdbz2C99EkjWoO6JUig2B5G3ZKEZRC+9
         Hoow==
X-Gm-Message-State: AOJu0YzZLByGT5APTTnPNU2LLzAyzzI2QRcfNwHGIbQeTWJA/SuVwlQi
	Ruv9g+dep2zplmdMIo1ytSImDw==
X-Google-Smtp-Source: AGHT+IGqHSfZyCCoNbFPfpUZAAjL1u1VHnmwQd86TL9A12x8J8QFDFGPslh4kvKAvGwIbEI0Ix5ZpQ==
X-Received: by 2002:a05:6a00:1a4f:b0:690:3b59:cc7b with SMTP id h15-20020a056a001a4f00b006903b59cc7bmr13717214pfv.32.1698244114269;
        Wed, 25 Oct 2023 07:28:34 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id g2-20020aa796a2000000b0068ff6d21563sm9817411pfk.148.2023.10.25.07.28.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 07:28:33 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Marc Zyngier <maz@kernel.org>,
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Saravana Kannan <saravanak@google.com>,
	Anup Patel <anup@brainfault.org>,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH 0/3] Linux RISC-V AIA Preparatory Series
Date: Wed, 25 Oct 2023 19:58:17 +0530
Message-Id: <20231025142820.390238-1-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The first three patches of the v11 Linux RISC-V AIA series can be
merged independently hence sending these patches as an independent
perparatory series.
(Refer, https://www.spinics.net/lists/devicetree/msg643764.html)

These patches can also be found in the riscv_aia_prep_v1 branch at:
https://github.com/avpatel/linux.git

Anup Patel (3):
  RISC-V: Don't fail in riscv_of_parent_hartid() for disabled HARTs
  of: property: Add fw_devlink support for msi-parent
  irqchip/sifive-plic: Fix syscore registration for multi-socket systems

 arch/riscv/kernel/cpu.c           | 11 ++++++-----
 drivers/irqchip/irq-sifive-plic.c |  7 ++++---
 drivers/of/property.c             |  2 ++
 3 files changed, 12 insertions(+), 8 deletions(-)

-- 
2.34.1


