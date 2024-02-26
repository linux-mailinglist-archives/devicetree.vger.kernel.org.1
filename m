Return-Path: <devicetree+bounces-45747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD9B86693C
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 05:11:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA7A82847A9
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 04:11:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 936AF1BDEB;
	Mon, 26 Feb 2024 04:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="dwc7GpKW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9141CABF
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 04:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708920592; cv=none; b=I0aWK90HxohA5s/nyuj7zPzTgR+qmCvw1wuZL7fjQhOvls4+Q2o5/5rRlr8qi37Cz01yvCMi810/UeScm5vLF4lgTA8TfNO57jLrCnc1VuMZ0f7Q/B8gQ4drcOCKzRjhw2r6dltPrDFtlrYGrDcox9ndfREBy0wAzkHpZbjLWg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708920592; c=relaxed/simple;
	bh=hb7lwuFLB9UuIJTL//kIhghW1ugqaGYSY/RdRY1h8Zc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CyRyW/HxeWIIIKdYsP8gueUCazKUHFf+zs4HB9HGFcyx7uSw7RtowA5A1vLrZ3wL44mJGdC5VXVp2uYHrfyvaxRr/1ACcrW7rEFX5dTp3TMLn7ci1n+fN/HKX3fm0Gizg7Mv6Wx8xVvK1uV7yj2c7i+meyel0xFUQ/6A487fDbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=dwc7GpKW; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1dc139ed11fso15912145ad.0
        for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 20:09:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708920590; x=1709525390; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=71v8gbBOdtXGvo9g+2jtAQQQGBX8E4yEXl9JiWYqu5c=;
        b=dwc7GpKWBVvr3lmulYldeZrdTRsDcwFfVDeQWMYhulBzM7SxNS15jjFrqSAoyAcGqC
         CnMNcakNaD9FZwIGMEyL5i1lbsnptZw+eXDplL88JpLPVz4uSnRQrQLuVpVaXj+stTZZ
         AcDMftbvmVCvh2ij4noangbxzdG9gS9kd8dK1XMvNuYpheOjdSi2TKo/mPMsbakzdfsG
         KjnDzZPl55+NLOqFS4LNdo4KsI9LRqJgjyPKkiIeC57qmnyYMWY8KPTRbHT9sdv8H/v7
         /Qk7m2ywIwQCsQMtRRX0eHVl76To0PiKnfHBc7hlndwW/cjPwzP894++kEOtphVqQ5bx
         iGyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708920590; x=1709525390;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=71v8gbBOdtXGvo9g+2jtAQQQGBX8E4yEXl9JiWYqu5c=;
        b=UdBmOg/ursdHiOC2cYa6raO86AoJyojzjg85KZntMHG2Vtk5oF4Q0Yf+5HID5qXsTk
         UuooYxZdloL6/id7OrLFNIw5/TJPdZqkWvHoU38yjfY/kOdjq+vzljCg9SmUegQcWf1h
         /bMYjFZS8t5NtqOwk2+Miej/u9Iy1Hev8owU5BhwgmYwCwUzRliES3Zqz4sGZ1flWXHE
         5jIiKWNGrus1eHVJ8wF3yZ7WB+WATtVVpyEI0fCrhzo504OVIyg1YYDP4CMa0gQpcWqD
         YkClL9d8KUbYOQX3I6GkFxeQcsKmQhr8BIXzb6DLg10Pypt2NVqyeXuojs+wK066XpyP
         88Xw==
X-Forwarded-Encrypted: i=1; AJvYcCXO2SOkOc0d0jVx1rULPZr02PDB5qCXR9f9yB4dkJv6lqleKoC3PkBlWMrmV/mTETMJAMq/ijfiwRBv2ttB/k/QAOhNc1ARhieplg==
X-Gm-Message-State: AOJu0YxEky3uaL6Vz3dHC5GUN4BcPDSECysXmaQweA9GF7pzU+1HI8MZ
	ryx9zF873+Y/zOr8A5K9yG0u+6Z32+gJuq+2rd3tsRJwbvwZWHZzJZUny+vGcK6ArhavPKtszkN
	2
X-Google-Smtp-Source: AGHT+IEwlanO4JPKzdgN6wkOm19zbqiNyltkZpN8bf1Fq3GRBwTmQiinNj/aHk9GOAdxbUx2fEyhNA==
X-Received: by 2002:a17:903:120c:b0:1dc:1df6:48d3 with SMTP id l12-20020a170903120c00b001dc1df648d3mr6878693plh.17.1708920590363;
        Sun, 25 Feb 2024 20:09:50 -0800 (PST)
Received: from localhost.localdomain ([171.76.86.62])
        by smtp.gmail.com with ESMTPSA id d11-20020a170902654b00b001dc6f7e794dsm3023258pln.16.2024.02.25.20.09.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 20:09:49 -0800 (PST)
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
Subject: [PATCH v15 09/10] RISC-V: Select APLIC and IMSIC drivers
Date: Mon, 26 Feb 2024 09:37:45 +0530
Message-Id: <20240226040746.1396416-10-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240226040746.1396416-1-apatel@ventanamicro.com>
References: <20240226040746.1396416-1-apatel@ventanamicro.com>
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


