Return-Path: <devicetree+bounces-35817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F18283EE5A
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 17:19:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 916D11C21F91
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 16:19:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D7822C6A9;
	Sat, 27 Jan 2024 16:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="YlWhVT0a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C2E2E635
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 16:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706372322; cv=none; b=BIAkxWrbg1Ziy31jFty2wX+oVMUDoOB9IqdY46+VA786nZ8bPLv1qtZc6wMGeqEOL+ksTeUQ+brCba1f9mmq/8Jr0EE8sHgVFjVxWY3807mm8xVCtslEwolH+7QkjaciBLNkRpOAxyiXGmELDmxUIJTtX/yk0covy1FW8CI2qbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706372322; c=relaxed/simple;
	bh=hwdbxbBInNPj0VlENEsXQFJ94f+VWjiGT5eul1EJNEc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=m6OjE+tb0sNBloFMjXHxvRhnrVS1/adIeSO6+MeSFdgvnF0bsFQACIB28xDP+HKmCfR/XWn53tX4APuwiXQjgI1jihArqCTgX+qUKCwqyDa6EugcSdUeajHc25Pr8wA+FoQdQw05nD10vFffwnyMNK4GwftIk0AlGLaDNBFqhk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=YlWhVT0a; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-28e79182570so1047111a91.2
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 08:18:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1706372320; x=1706977120; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dw82vi7M3z/WKRgMHK7xebZMSrAhDNqGfKMx5twouLw=;
        b=YlWhVT0aIm77fkbjX/o8m0jtTxvwQnGeFSrL35B0XZ0nE/k8Owybm066kLIAlZFQmX
         BicP/WAztitzkikLyWc9OSDoFff/XPdbURxNS8ypts1X3f1Nft0j3oLPw4rnWUhuBPWy
         wWreDpYqEB2EpYAyOOegq9+bBo7CBwE6A7N6nP0e8We+4XJu3PTXjFBgy352spImuivS
         vs6d6dZx0ZPhK/47EuDNQIY+ZTGUmAIBBONrsd6fk29IaSZhGxiaAcdqcux65GYGcCa4
         J25obdgunbJZJlPhsRnyW5ZfOmtQwh+FS1qF18CloVocCyBTSbEsPbDidjP34cLYgPTg
         woaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706372320; x=1706977120;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dw82vi7M3z/WKRgMHK7xebZMSrAhDNqGfKMx5twouLw=;
        b=I2t7V2G++kFjQ6WOuf2P7WNrCM50SfDhpiYQFRGf4PxYLvO0WOTPyiv1ahH6gKK6CZ
         k2xRm7gpMSFTE8415KM91Y7vMIChHoBdRWYdpunPAtdXN20mHzb6NSJJvECFeG3WbDlc
         4QjCcexKV9oIkyy/DzHxRhFxSlzcBjInUhNJh3mScSNn1kktCAvb1cBa30ejUgpbIe4b
         uldVpsaN9CbSJDxAMtflAh7R8hYBwa9ytzkv2ulZ4/F2L7dXWKI4v2P0djpZiEhFsAp1
         VW5VqMdXTR4+XcKyut61D8vXoUNCZ+1O/YFUqGJHvDTbP2grNUCP4JsRPfKGxM4fnyuD
         DC6A==
X-Gm-Message-State: AOJu0YzOgdviY4CE6YFUDszOO/GgibrdMgiGRz9HOrMbHNisp8DUn2R+
	o41ZcWn4h/GbxhHTuarax2ICuWSJzuDs3QP79YXZfcL3UH0WcXvqqAd6A/qb5v4=
X-Google-Smtp-Source: AGHT+IHJKOJDmtp2sr+zp+g3pTHNyJxSDz7IMo9av7dUmiD97kA3wWLzGZjAWdoUrJjJ38/Q4J8vEw==
X-Received: by 2002:a17:90a:d150:b0:290:b20e:125 with SMTP id t16-20020a17090ad15000b00290b20e0125mr1272094pjw.92.1706372320110;
        Sat, 27 Jan 2024 08:18:40 -0800 (PST)
Received: from anup-ubuntu-vm.localdomain ([171.76.86.17])
        by smtp.gmail.com with ESMTPSA id d11-20020a17090ac24b00b00290f8c708d0sm5091620pjx.57.2024.01.27.08.18.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 08:18:39 -0800 (PST)
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
Subject: [PATCH v12 04/25] genirq/irqdomain: Add DOMAIN_BUS_DEVICE_IMS
Date: Sat, 27 Jan 2024 21:47:32 +0530
Message-Id: <20240127161753.114685-5-apatel@ventanamicro.com>
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

From: Thomas Gleixner <tglx@linutronix.de>

Add a new domain bus token to prepare for device MSI which aims to replace
the existing platform MSI maze.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 include/linux/irqdomain_defs.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/irqdomain_defs.h b/include/linux/irqdomain_defs.h
index c29921fd8cd1..4c69151cb9d2 100644
--- a/include/linux/irqdomain_defs.h
+++ b/include/linux/irqdomain_defs.h
@@ -26,6 +26,7 @@ enum irq_domain_bus_token {
 	DOMAIN_BUS_DMAR,
 	DOMAIN_BUS_AMDVI,
 	DOMAIN_BUS_PCI_DEVICE_IMS,
+	DOMAIN_BUS_DEVICE_IMS,
 };
 
 #endif /* _LINUX_IRQDOMAIN_DEFS_H */
-- 
2.34.1


