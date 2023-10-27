Return-Path: <devicetree+bounces-12530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6577D9D37
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 17:43:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 461431C20F49
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 15:43:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF67D37C97;
	Fri, 27 Oct 2023 15:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="lmqEV6ET"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9EC7D530
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 15:43:07 +0000 (UTC)
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5584AB8
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 08:43:06 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1cbf47fa563so19280485ad.2
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 08:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698421386; x=1699026186; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0NUEyjjvZD3sZIgVAZcZlQ2UsD1JGHJJKuO7MaTqPDY=;
        b=lmqEV6ET13z2PsKvwqudYfcrD7hjZDGYvjf5RsS4Zq8zTGJZeaOC10BM4NmeM0PFlz
         fnq8FKyZPhE1WlsiuG6Y1zCrhKLTGREN8AL2w+EDiVc6Lskhl8DytD20ExJpWEwQ9WrW
         mEwKYbfHidkIrGccDVpEi6OnLxL2XDpiCfMfUqHdQxEQVfOVLDeP1WkQBiwVyyUcXiWd
         ZEEDJplfkHHjksAw9sS7IK5nL/R4+p7AeyGmZAKFznuhB8Xbi3N0+fRxDPaex3SNA/QY
         wq/r6pMDIujIMxggb4z6ZSo32emgSLEGqaLLtmNbj4jw7L2oL8c2Epr4QfOsZe3FbysC
         2oTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698421386; x=1699026186;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0NUEyjjvZD3sZIgVAZcZlQ2UsD1JGHJJKuO7MaTqPDY=;
        b=Uce7ZUkH5d3sC5QEMTBxd9kdWwwHZ/Er1XxSabjztlHqRy9FCIIFJXSmseKgIVQ7LV
         Q2ak+W1X07eyovLt6AyKulhzEZVo319sGW8OmfAq4ztoNzBL8nhtE2Ty0OmaGvAwoo3y
         1pfor65PMDgjKCMfm0d84j1+tdICQBVh5VP1Hk1tOHcoQ6PlU8leDusi1/u9AhzIZxon
         xmI3WK1h9CkY30Np6CYyHqsM4j7pbkXCdExMtnBooyUulyoNsP8XF7v9cWQ+ylGVLBPL
         KmLq59wpccxyr0jyztSk8+We7kakcLmmVAumA8kWeYy3IxSWUIINAOo1PvEmEPD2wlKE
         UMYQ==
X-Gm-Message-State: AOJu0Ywt1Mlx84xSOQyFmKowBYE6Wct8IRMvl0oUEewhWjeqm2OexphK
	nzU8ipZgIfVCiq/kfxnKzSjigQ==
X-Google-Smtp-Source: AGHT+IEx/N0OUV5A9FXLided5UkCLjMqnc16wgrRBNTOukMY6YYFjgFSJXzCBeVlqx4V+2JX11pH3w==
X-Received: by 2002:a17:903:234d:b0:1c4:16f:cc3e with SMTP id c13-20020a170903234d00b001c4016fcc3emr2759246plh.35.1698421385688;
        Fri, 27 Oct 2023 08:43:05 -0700 (PDT)
Received: from anup-ubuntu-vm.localdomain ([103.97.165.210])
        by smtp.gmail.com with ESMTPSA id n16-20020a170903111000b001b9e9edbf43sm1729246plh.171.2023.10.27.08.42.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 08:43:05 -0700 (PDT)
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
Subject: [PATCH v2 0/2] Linux RISC-V AIA Preparatory Series
Date: Fri, 27 Oct 2023 21:12:52 +0530
Message-Id: <20231027154254.355853-1-apatel@ventanamicro.com>
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

These patches can also be found in the riscv_aia_prep_v2 branch at:
https://github.com/avpatel/linux.git

Changes since v1:
 - Use imperative wording in PATCH1 commit description
 - Dropped PATCH3 since it is already merged by Thomas

Anup Patel (2):
  RISC-V: Don't fail in riscv_of_parent_hartid() for disabled HARTs
  of: property: Add fw_devlink support for msi-parent

 arch/riscv/kernel/cpu.c | 11 ++++++-----
 drivers/of/property.c   |  2 ++
 2 files changed, 8 insertions(+), 5 deletions(-)

-- 
2.34.1


