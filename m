Return-Path: <devicetree+bounces-180289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 397F0AC32FA
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 10:47:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B6343B8EF2
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 08:47:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2459719FA93;
	Sun, 25 May 2025 08:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="kporrGeM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C7B6189B80
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 08:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748162858; cv=none; b=VJa1cf1yrPfXshdOz2d3IMBqy7uz1h13SKE7cunwIBXCUmfoyFJUI+Q/X6v+/zRNOQIpohjbbW42q9m+ep9BvNmSRVerXQxCzDICAVPAKNfAtfRo54lgweV2Xt1upuP3ZKCKGXsaZ3eZVBOM3PO4WYsJLFg3y6i0DwN5Av2dwY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748162858; c=relaxed/simple;
	bh=gv8a347ZgM8grLLMwGRczaN5bCj8XaY5cQilQ8vIa5k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uCLEs4MXhuiE2K+UrG1QBPkY8H90Xj/zHkblX0wNt8dWMre3N5/VljdpiU1iWkJdBLkAF8BeIAGyVmgcNbZYYqd+81d67NL19Gf62l20uQPQRTTM1WDghrPgilI5XBUYNa2SC4pi3z1VcstnkcViSoj53ZWn74BlEyBBeV2nC2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=kporrGeM; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-74068f95d9fso910313b3a.0
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 01:47:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1748162856; x=1748767656; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DVsERMSdIf5sKMRIf3zMFFXP9slyQDAj89Ix8Yi7kgA=;
        b=kporrGeMdkAM+QWKwpjiH+yBDkRDmRCYndsVeeMwYhZPrMPbt8HfW//1wKmFUSAzr0
         UzfEwY3amkLWYdtHaJoydXKJOq9alcNpX1g/laGnxcGGuEU831CfeLVzNlqWzZWBNl7i
         Y9ecDvM2T5cSBIHqnEDfl0njsDOac7fN53roeARoqoMSpOJS2NhidZrxRAdq00P/wkEw
         F4FKJ47P7D/sx46bdmk+7SI391lf9nLdOsjJaZUVi00aCC94+vBylLtF6uRgr0FstygQ
         J3+tTMt7x2NxS9gY05zuqMtIZ3Wp3zvUj2QzNY2T+vI3WoqWPiOMNxrNqeR3XsTqcdfa
         GVlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748162856; x=1748767656;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DVsERMSdIf5sKMRIf3zMFFXP9slyQDAj89Ix8Yi7kgA=;
        b=iyDDbtxtsmgj0Re0061+dMbNOiuulLZjIRUBTMM1dKo7MBtSC+gCyAwRaXF2qTWBHp
         cu231PBflBcVsE1hlDlBTY/LD34lIW71CAR+Q4ITIIZDLobSlb00DGFJN6b0Rh+WwJJu
         dpuAj2+dS2Rq0jh9cOkOzg76k3DNWMrj2RCW7Sl0XOL6mCup8exaeGQlaRPVy1OQoxbh
         W5C+V+PBRisN8rxO5xTjbGV9q50+NX6dkL0nRlo7aV79b9vHwz/1uPSGho1h1pntKgDt
         OtSPHVLRjo5x2+p0dsbXv7yOV4WKXvhlSwwYsZS22O67zclF6jQp7P4UpRrOPkLzD8iL
         ZdHA==
X-Forwarded-Encrypted: i=1; AJvYcCVm8mlxBdIhRHC/lpvtsFxW5D4yrDeOGrAe+1IVNAfU8K16gzliV7aXsZQqDXS3lWMjzLyJJEN2rSIO@vger.kernel.org
X-Gm-Message-State: AOJu0YxrwGE1Eyd0UYLEY1BnWdzVjOoQ71/ZuoLmXK8QPFIxw5UVlwAW
	LjKq7k84gBJafYt3Nwdp8wLq/a5asJDrwPiyVJI33Ct+OM8Pt3OgQks3xuqjNVghiW0=
X-Gm-Gg: ASbGncvbkkAMcO3Wf0xJpVNMpbvefr9jO68Atd19QeK/ljzKwrTucCNxd16kGnJuGuC
	aluv0vjAGVyDI2W3PWiNvEL+EolivRPQNkgDIuTm5QHruLCBNVhWyhRswyeyDo8f88BSeRbOa7M
	qTnecDE761lH/YUaIf5/u8MuDtnZugz7S0dSPG//S6xEU7r7MyEMSs9uBUjIKzxYsiWFPCz4oDr
	j7nLfzbwJO50flxcwTJfI7ow7JSx2PHFqHQIzLydiBXbPGdIhXKS9CwTgYugP9UjOi9h98ob4cI
	1KJYxTpmFqg8ckoTb1SVH2TDt096lYB+k3P2f5Bwj/8kxo+EO5P2OEjAY98n0oRFVcoiBY7X5Tl
	71S+1rvqC
X-Google-Smtp-Source: AGHT+IGQHPec2LJhJmaigIN3uIwGsg4V11e5KIpc0AqaskyBljfcnDVD6dQRxT7Se/2KEmGryb0Yqw==
X-Received: by 2002:a05:6a00:240e:b0:736:4d05:2e2e with SMTP id d2e1a72fcca58-745fde87b30mr7373273b3a.6.1748162855765;
        Sun, 25 May 2025 01:47:35 -0700 (PDT)
Received: from localhost.localdomain ([122.171.22.180])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b26eaf6dd83sm15250627a12.18.2025.05.25.01.47.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 May 2025 01:47:35 -0700 (PDT)
From: Anup Patel <apatel@ventanamicro.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Len Brown <lenb@kernel.org>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Rahul Pathak <rpathak@ventanamicro.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Atish Patra <atish.patra@linux.dev>,
	Andrew Jones <ajones@ventanamicro.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Anup Patel <anup@brainfault.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Anup Patel <apatel@ventanamicro.com>
Subject: [PATCH v4 01/23] riscv: Add new error codes defined by SBI v3.0
Date: Sun, 25 May 2025 14:16:48 +0530
Message-ID: <20250525084710.1665648-2-apatel@ventanamicro.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250525084710.1665648-1-apatel@ventanamicro.com>
References: <20250525084710.1665648-1-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SBI v3.0 defines new error codes so add these new error codes
to the asm/sbi.h for use by newer SBI extensions.

Signed-off-by: Anup Patel <apatel@ventanamicro.com>
---
 arch/riscv/include/asm/sbi.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 3d250824178b..4dd6aafb8468 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -419,6 +419,11 @@ enum sbi_ext_nacl_feature {
 #define SBI_ERR_ALREADY_STARTED -7
 #define SBI_ERR_ALREADY_STOPPED -8
 #define SBI_ERR_NO_SHMEM	-9
+#define SBI_ERR_INVALID_STATE	-10
+#define SBI_ERR_BAD_RANGE	-11
+#define SBI_ERR_TIMEOUT		-12
+#define SBI_ERR_IO		-13
+#define SBI_ERR_DENIED_LOCKED	-14
 
 extern unsigned long sbi_spec_version;
 struct sbiret {
@@ -503,11 +508,18 @@ static inline int sbi_err_map_linux_errno(int err)
 	case SBI_SUCCESS:
 		return 0;
 	case SBI_ERR_DENIED:
+	case SBI_ERR_DENIED_LOCKED:
 		return -EPERM;
 	case SBI_ERR_INVALID_PARAM:
+	case SBI_ERR_INVALID_STATE:
+	case SBI_ERR_BAD_RANGE:
 		return -EINVAL;
 	case SBI_ERR_INVALID_ADDRESS:
 		return -EFAULT;
+	case SBI_ERR_TIMEOUT:
+		return -ETIMEDOUT;
+	case SBI_ERR_IO:
+		return -EIO;
 	case SBI_ERR_NOT_SUPPORTED:
 	case SBI_ERR_FAILURE:
 	default:
-- 
2.43.0


