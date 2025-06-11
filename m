Return-Path: <devicetree+bounces-184863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92495AD5657
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 15:02:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 656721E170F
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 13:01:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24F5F28368F;
	Wed, 11 Jun 2025 13:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="eS4L6Oud"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D29283CAA
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 13:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749646851; cv=none; b=lDcWEutyDTNoeO8GuzlAl500EqI0CCbc1vjrU5Sd+nNApAewytH7UObwZl//TD9c+U/Kw6LWkFdgbmkIuRrjm9TcZLMzgOzHV+iTiIbHMsPkQ+rGdW6/EKn8IYvZBC/2JuAwaoCuPhWKN3mD/5T8ZNPqBleJGkZt2phjMUuVDog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749646851; c=relaxed/simple;
	bh=BsrvoibobNdRj5bx2FV7FFPriwpl6oIPTWKF+TJb8js=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IUMcaaFjtX8Mmrr+iKAAtufvFhyLibefHuPM8zkKd7BWdnoatjc9Uepdy+sA8pNq46n3HJVQ/k5oGB42EbFZaFac3VDAkKnsLffeCCw6b6+kaLHSRKKGK9pTxSr9/qkOXAIy/+HVVFY1NC5UhzoRiHY7jcAapzx6FNks4rJHirE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=eS4L6Oud; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-234bfe37cccso80672595ad.0
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 06:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1749646849; x=1750251649; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l3Hj23NsfOD62jCqYZdTyo05Iy3n4LV0OoIjBt95NQs=;
        b=eS4L6Oud2XZqymAcK9cWsBA58MUdJwHnOAKjUBMAHBedEb/rJsHMyAqwAfCZYxGCbw
         ohON8Qudxhb4TmZVqYjp6hjl7GBOvILNAq1kOgSpMPlubG9zbr466afYz0IVzV6vb3Ge
         Nc5deyJkuuARgIuoOlErfV9TSAxQ/sBfLJHVcF3G9GmaP+egEhtPEe3BDj6MaejoCTbI
         DU26bIZ05CwEU6XjocTZgjGP8by9JeSWbOHsgMA9j3WbXPKoqi5WGWhtxoP+tjhDOk5u
         cX31cpD3oHAbSqq2aR7gCB4Vk7G2YEJ6w1LtmC/Kxf10QFv2a5QvF/l/6HsNKxrCyB8+
         kgMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749646849; x=1750251649;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l3Hj23NsfOD62jCqYZdTyo05Iy3n4LV0OoIjBt95NQs=;
        b=iOq/O09QpM+YkrPIwBoNBWyG8vPKROhJn661evLWU7zPdS3TVde5JnQRYrStqB9Oc/
         ihjIs2vYLYoUkkkjbi4rVCcVPCn1/hjnw6nEY52E3HNxBfNdDmtIx77Rs43oTtZpFL+6
         dhka8+HYsMEAZhmC/y7Cs3WiWVQH5I56CVSmN6sj/qGlmBrBPqtyzs5UPOYw9zNFGOgz
         FDAJQAAJCW/AZtA6fylER7CTWKO9NWTGH8ov9QHCsHoSvmOKSrtHqRteGemFI49C5skq
         7JJs3JosoyRbJIkiwqRxQ2uIMmkyppiWt92gYD9B+vqchlMCp0K5LOZqxkQi16Wqp8ug
         Ky8A==
X-Forwarded-Encrypted: i=1; AJvYcCWMuUjVjNakLoSs5YeAJOA+oxJjGSvFJhCTOKocXveLwFdwTGW4JpGvc73Qnzpi8bxwTSUweT6dP8IK@vger.kernel.org
X-Gm-Message-State: AOJu0YzzUdzJwWxjFVf/4/hbdO/O9frGLkuXwJeiQij8iGQlshIZOzgQ
	fpULF+l1PZ7Mx/JicEcoPDgIGc5nlmmGawCa40seogx+C0Dr9KiHhC2OPlMAd18vsro=
X-Gm-Gg: ASbGnctNSw4YaMsE52183Fw9fsLuhw+KM/Qnt3MlPtrGYr7RDo7Pbyv+3K5gHu2u1F3
	kZpXH8W71KqiA8NY4/o8eEw0pIr537GAd8h/HhNmwzZASEMMKCT8ys1wQ1b1muvwrTNc1vDEmKq
	qYx0W70BOeAb6aN2cSDHtuUVgQQ+Ht0Klcn8+XRoVnKcvkVSGKOSVqhMUis3UrOGy/a1B0RtYgf
	d33/cF+WHDoqN78bfT2vrleC5YWHgmVZMFVJ5L0BN/m7tEU1v24zSjY+DWfeFF7y0v5c1Bw667O
	DuRTOiNEg8GLKyGOOzcMAnZMCdfYHU/4XnHMNsnlBKMVn/J8PreIlYePef9ssx/DxrIU502cdRN
	5Fh4RzF/mB5UGXXUivKUyZg==
X-Google-Smtp-Source: AGHT+IHVBo9LkzNee2JKYrKdwtZHZLkreGBOXP7vX/U81FjBHvUbwcdU17sovy3MyAgANjjIbprzmQ==
X-Received: by 2002:a17:902:fc85:b0:234:d1f2:da31 with SMTP id d9443c01a7336-2364260d38amr40073705ad.2.1749646848615;
        Wed, 11 Jun 2025 06:00:48 -0700 (PDT)
Received: from localhost.localdomain ([2409:8a00:31a4:6520:3d67:ceb1:7c60:9098])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-236030925e3sm86984115ad.53.2025.06.11.06.00.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 06:00:48 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: vkoul@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	drew@pdp7.com,
	emil.renner.berthing@canonical.com,
	inochiama@gmail.com,
	geert+renesas@glider.be,
	tglx@linutronix.de,
	hal.feng@starfivetech.com,
	joel@jms.id.au,
	duje.mihanovic@skole.hr
Cc: guodong@riscstar.com,
	elder@riscstar.com,
	dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Subject: [PATCH 7/8] dma: Kconfig: MMP_PDMA: Add support for ARCH_SPACEMIT
Date: Wed, 11 Jun 2025 20:57:22 +0800
Message-ID: <20250611125723.181711-8-guodong@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250611125723.181711-1-guodong@riscstar.com>
References: <20250611125723.181711-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Extend the MMP_PDMA driver to support the SpacemiT architecture
by adding ARCH_SPACEMIT as a dependency in Kconfig.

This allows the driver to be built for SpacemiT-based platforms
alongside existing ARCH_MMP and ARCH_PXA architectures.

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 drivers/dma/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/Kconfig b/drivers/dma/Kconfig
index db87dd2a07f7..fff70f66c773 100644
--- a/drivers/dma/Kconfig
+++ b/drivers/dma/Kconfig
@@ -451,7 +451,7 @@ config MILBEAUT_XDMAC
 
 config MMP_PDMA
 	tristate "MMP PDMA support"
-	depends on ARCH_MMP || ARCH_PXA || COMPILE_TEST
+	depends on ARCH_MMP || ARCH_PXA || ARCH_SPACEMIT || COMPILE_TEST
 	select DMA_ENGINE
 	help
 	  Support the MMP PDMA engine for PXA and MMP platform.
-- 
2.43.0


