Return-Path: <devicetree+bounces-49156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8075487514B
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 15:07:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B20D61C23F10
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 14:07:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12BFF130AD5;
	Thu,  7 Mar 2024 14:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="ez5WXNBd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A426A130AF9
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 14:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709820248; cv=none; b=ig+GeEdVvfL0qjaMXLwnOTuL4buRONGktC4Kbwgy079elKyT44WlDZG4nxvbnCms2NQuo4UqwCgOHmGqGO8/jh+FUiHvJCfsEee7C6wIC5+0lz99b9Izp3us8KEOckeFkAGdDC4UPvsR6nZwUjHrIs4aRaTe/YgjlHP3UymvPEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709820248; c=relaxed/simple;
	bh=hb7lwuFLB9UuIJTL//kIhghW1ugqaGYSY/RdRY1h8Zc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tVXRuNJsVhPj1loqJ5J53XU2dZGx60L4tDxS/R+DcOz3N2hDbxx0dgJvYNX6R6/wl7AwicYr7/sQRZMyG8Yr9bEzID/s70UPlQhR4B4evTT+sq+tNf/aNJJo/pT3Q8AfkxAoSgWSoSu88bENGRmjB+Cy73J41uw5v5VEt3Xl4ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=ez5WXNBd; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1dc0d11d1b7so7904755ad.2
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 06:04:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1709820247; x=1710425047; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=71v8gbBOdtXGvo9g+2jtAQQQGBX8E4yEXl9JiWYqu5c=;
        b=ez5WXNBdnXKh4h3Kwe2knqCZyLzPQFMjxJkpDM70I30x1/IWBTNgUzAb0inLS/COpM
         uEFw0C5MS4F/7i7Ew8qR6fYy4x2xyK6hzzkbv5n0Pd9ujoHXzni3sekHM8mGdB2Y7q2Y
         a/s2EqVnZKxBz8rPo7t1uP2FovyrUnjqGKkP2wknK0/QzYOZgdNJEXdsSd/6V2uA/eBv
         KaRMCirLJK07tXozbIFnNCJ+dIAaFIim/uQJqH+N8SRBYLGZq34adUjGzDsbXsH2M2Vb
         Z17nYJBirbRxrNxYNzEg7xFBsb47VlCjDL95R8RLLdkaYJ0tqq9LENoBNq8F3/vfxrHZ
         Dk5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709820247; x=1710425047;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=71v8gbBOdtXGvo9g+2jtAQQQGBX8E4yEXl9JiWYqu5c=;
        b=h6X8hy+bEA7t0LGviImMFiGRkOedZ3sblskKAIHA4ZFkgh5RTauvY4DCKUoekiIsuX
         sXZRpY/+sOfn1yOWcKOXTP+B324MWuZ9MDUOzpvXdlLw2YcInSV+GWj8y+VHUGEiVceb
         niqtpR6mgJ8eTq1ccfcoCbxqiufwbz9Qn0myKxEkm/RaDK4BQsJkJyXRXMQ3HkANTUAk
         Ih1AsixJgrzmr+IaSrVWWWxdQmDTOJH0jrX+lmtQdzapBRUHznm2sgIH9W3HT6/VQLIF
         s9ZKvkvwZkU5Zui4YvUHwqAcnkQxOakjJxmsOdZw1dCCFRBF86BN6wAUW3y0Jnf9vNkL
         bAXA==
X-Forwarded-Encrypted: i=1; AJvYcCW4WnTyOoXWFbRt36p75XPPGo4vo06lrC5Cl46UTA8y/Yz9+kdoFhHhEVXh03JaKAgETVIrxandgzG5WP3Tp3q5UqYd0IjnxgubVg==
X-Gm-Message-State: AOJu0YysPHhchH3R1FUNbnH3CtQ2qNONE1N3d8xscvY6RdElPwf7Q2HY
	T5I5iRatlRu3P7jM0EaDvps0Q1jGCqq1bG6rUYPTKQyKE+elZfqrIxvMd5XBa2w=
X-Google-Smtp-Source: AGHT+IGjk8k6lJiQgWsvoA8in7WgIeDNUhDqU2DUJ8JobYGSXor9EPcP/3FIsc4mVQbbZjN70ICcsw==
X-Received: by 2002:a17:902:f7c6:b0:1d7:8f22:62f5 with SMTP id h6-20020a170902f7c600b001d78f2262f5mr7040701plw.61.1709820246971;
        Thu, 07 Mar 2024 06:04:06 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.84.79])
        by smtp.gmail.com with ESMTPSA id w1-20020a1709026f0100b001dd6174c651sm386228plk.149.2024.03.07.06.04.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Mar 2024 06:04:06 -0800 (PST)
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
	Anup Patel <apatel@ventanamicro.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v16 8/9] RISC-V: Select APLIC and IMSIC drivers
Date: Thu,  7 Mar 2024 19:33:06 +0530
Message-Id: <20240307140307.646078-9-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240307140307.646078-1-apatel@ventanamicro.com>
References: <20240307140307.646078-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The QEMU virt machine supports AIA emulation and quite a few RISC-V
platforms with AIA support are under development so select APLIC and
IMSIC drivers for all RISC-V platforms.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index bffbd869a068..569f2b6fd60a 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -162,6 +162,8 @@ config RISCV
 	select PCI_DOMAINS_GENERIC if PCI
 	select PCI_MSI if PCI
 	select RISCV_ALTERNATIVE if !XIP_KERNEL
+	select RISCV_APLIC
+	select RISCV_IMSIC
 	select RISCV_INTC
 	select RISCV_TIMER if RISCV_SBI
 	select SIFIVE_PLIC
-- 
2.34.1


