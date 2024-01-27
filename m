Return-Path: <devicetree+bounces-35839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D77883EE88
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 17:26:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57919284AC3
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 16:26:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C7762EB06;
	Sat, 27 Jan 2024 16:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="DDRLWHGD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A914C60B9F
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 16:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706372443; cv=none; b=jP3B4KmyW7kXWHmOCSQsCDUvm+xp/33RmGu4mS4epBGdnAg/RMfPZsMOFxSU+JgA6um9BtOBi3jOOSt4gwHCAbLcZw3FD1AQ+8eXOeahQKWU5KBc3SjE0hgg0z7kHEcxxb4BsSzLtmCa27bx1CaNNdur5Yx4rDt+962pN+jvX3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706372443; c=relaxed/simple;
	bh=+vDB89SzfaGeLw+TC2EaAQbpjiB5TaXXYi4Ec04MFkg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oCqitnVvdfrHFAWM5RgUmwbo68Y3aM4r3IrVXQmOQ1ShWYYh008ohCSxRbRjwJ91Xf0tkNFJHQRAhd/YXZCs1JVncAtmDqtbHqPdlu82a6ZH1cPINHdGmkFvqo4btxv1hpGNKQLzUiqbELqufVVz9AJaamZpU2My3ColDjP2tj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=DDRLWHGD; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-2906fd62cb2so689852a91.2
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 08:20:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1706372441; x=1706977241; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HC6ciBL1O4iGBio2d1au61PVhJtzF6Er8tF32HGbqHI=;
        b=DDRLWHGDoabF/ZxbxECgcg3k7qjvjUydILCbG8qVqzY+qdOUxMCerb0dAEX3MQ0YJ0
         TUmEQTBXtpAvNAsrDQqdqBBu6NHAV9zvk3sFSS3/6/uUObMv3/Ox3mYcvlZCzWgxX5bf
         I4myZFovHfl6n7yJ2wmom+cxOIdTwwa+kRqGGNOuwHaJNne+Fyl5S0kay23HE2Rd1Ecm
         rdVBw+ld5DdiirdTxPy0sGNMGrwr6T0KW2zjAEWsNynjiUGhkT83I1ZOR8d0qRNqsCuY
         iVxvAw3NKHds+xvClzWoBx2Id191FtQXNqU5E3Q7joHLVd8CUUVdZKEiKxKVGgmMSZWK
         rBwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706372441; x=1706977241;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HC6ciBL1O4iGBio2d1au61PVhJtzF6Er8tF32HGbqHI=;
        b=tDp8gy1ptNJqfiZY37MDl36t7fwTdEdwBb2sfPhD5/i9ZGxIHVmhP6oESp3lfFTKjs
         +V7ULeUTdFe/RBrA/RniXcLgIxhompHOFdzUFjCURKPc9V8s72zsiIHgz6jLXcmM/4GI
         Cs5Z5aGxnFHNBlN8UIvSV45srAglCDsUil3ZI2PWLHIVymp0ZE385gx54GmjiU9mVCSR
         1lhB+KNb9KiN1rXc4jvsQ+v6IO4NXyJzCw2/KNsr1lix/63HmkP8Pp/mocXh1HeLMfQ5
         9br2eogdAsv1bvQtnYNi16RKQGGWHEGtdgPEyRKB3/vmJfWKnWVDKtj5aSPGZqrn2Gvj
         kQSw==
X-Gm-Message-State: AOJu0Yx/fnOpXgKYsB8WjefkcwahqqKIdC4iIM+IDP55hEjQEUb/iNRM
	ZFs+YQSzz3LmjI2NcCOMqiiJCv07ruMswadefxn4U63gJ7OpPyYYLK7Lkw6Bxmg=
X-Google-Smtp-Source: AGHT+IFSOUWlua21LZ+ZlYrE47zhwA4hUbK2IiPKJDlMaTp5UgCAuO4/WnvSs3iZZMJltrIhvxlurg==
X-Received: by 2002:a17:90b:184:b0:28f:ef30:804a with SMTP id t4-20020a17090b018400b0028fef30804amr795532pjs.35.1706372440990;
        Sat, 27 Jan 2024 08:20:40 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.86.17])
        by smtp.gmail.com with ESMTPSA id d11-20020a17090ac24b00b00290f8c708d0sm5091620pjx.57.2024.01.27.08.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 08:20:40 -0800 (PST)
From: Anup Patel <apatel@ventanamicro.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>,
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@kernel.org>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Saravana Kannan <saravanak@google.com>,
	Anup Patel <anup@brainfault.org>,
	linux-riscv@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v12 25/25] MAINTAINERS: Add entry for RISC-V AIA drivers
Date: Sat, 27 Jan 2024 21:47:53 +0530
Message-Id: <20240127161753.114685-26-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240127161753.114685-1-apatel@ventanamicro.com>
References: <20240127161753.114685-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add myself as maintainer for RISC-V AIA drivers including the
RISC-V INTC driver which supports both AIA and non-AIA platforms.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 MAINTAINERS | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 8d1052fa6a69..49dd12e90609 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18792,6 +18792,20 @@ S:	Maintained
 F:	drivers/mtd/nand/raw/r852.c
 F:	drivers/mtd/nand/raw/r852.h
 
+RISC-V AIA DRIVERS
+M:	Anup Patel <anup@brainfault.org>
+L:	linux-riscv@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
+F:	Documentation/devicetree/bindings/interrupt-controller/riscv,imsics.yaml
+F:	drivers/irqchip/irq-riscv-aplic-*.c
+F:	drivers/irqchip/irq-riscv-aplic-*.h
+F:	drivers/irqchip/irq-riscv-imsic-*.c
+F:	drivers/irqchip/irq-riscv-imsic-*.h
+F:	drivers/irqchip/irq-riscv-intc.c
+F:	include/linux/irqchip/riscv-aplic.h
+F:	include/linux/irqchip/riscv-imsic.h
+
 RISC-V ARCHITECTURE
 M:	Paul Walmsley <paul.walmsley@sifive.com>
 M:	Palmer Dabbelt <palmer@dabbelt.com>
-- 
2.34.1


