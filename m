Return-Path: <devicetree+bounces-77666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F028490F9FC
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 01:58:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3BE592857E4
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 23:58:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AB881607A8;
	Wed, 19 Jun 2024 23:57:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="pmulNJJn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89E4F15FA65
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 23:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718841459; cv=none; b=u9PJLt7mWiq1iB/aa5m9CQLBsYpDArxm3n84WY9INahnRFiPErXHFOwyqFXWq6bevlrbhk8sC2wiAqRAfw0R4HFge8egqF4O/+x7ULLoUj3GM8UCrd4ZyB4oVSPdc7dHCsR3NkpyY5/uvDLT5f7fhJpXEHYQwY32GI45E7/Dspc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718841459; c=relaxed/simple;
	bh=iVhHTovdfTsoH2OEOycIDBjVgs031JyJ35lxs4Fwvjw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MkKY3c4nAQ7nvLuRa9jsyf5A9x171IlhU8GpyItgVFYgi1g2ceEGyqWVIpCtxc5cUa8O8wYuMvdUhzwsBdrQ7FLa2CuYpGBpuu5ZqgQQH2hiLCPndT9T4nx8CEGk56REpfdvGAvXb1fNTRiseLbI3CaGCSo6M22mmdsN59SmNN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=pmulNJJn; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1f6559668e1so2323685ad.3
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 16:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718841458; x=1719446258; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uTwy8+5rnzy3gl73dMXkjs3dSWWWtlQ/UyJt8IClQYA=;
        b=pmulNJJnW12nxJ3hOTEKa1SzYPAXns6NhlX5ihVIX6/YrDKFEIxYEnSFzb9qtC7zQk
         UWwT6XT3BbCQXbOXM4R2RMMiRh8LtKgmE5jLrPf4sfEIqVi3qWmuXv2qrjZTMPT4g6pq
         5nrm+xTyLRi9CRmD05a94eSh9bS60XZ38K81D7m8Cfyso1R/A4/uAzvxU/ERnh4AcapZ
         DI7/WB6lQMOwOV2yiHzGEOFguHOtSr+x3MyjIUNC9r9RsFRl2M697Avp43Mu3SHBMSxE
         Ye9Upz7yJJ/dE4oZo4J597MQmEPjk6aS5fNj46NlR2PKu1FIOFSorby/7bxqClbnoh64
         lIQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718841458; x=1719446258;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uTwy8+5rnzy3gl73dMXkjs3dSWWWtlQ/UyJt8IClQYA=;
        b=CVKEnmYVZy2bhV+xE6zCEjKUcZyjscQQGdZmQw9QhhYI2tw0i5AtUX21AH5oTeUnHp
         4TbqTC+FKqc96lgVLyGhXGq9QqaJzPvQxCngSWtCiMfqJ10ysKGZuiyjIyqAMO6zaieC
         hUxcfvaAugfIbPLO9NU1Pn6KLXgfKMVopZIy/WJxgVuzpp7bBuomoFrQLE2iq18VREMd
         2wRyxfu2K70mDTQ+u5sZW4wsBQb1bufzV/FWC/TT77aTdgYJ4ti6wiM1nFyiPDHMMWB5
         tZs3QSQNkq7mcjdsDXugNYt0WSpXeER8o34KnbqWqlirmqHMThlylCG3ezkLSfvcEcn0
         wsEg==
X-Forwarded-Encrypted: i=1; AJvYcCXT03f6LWRL+Df6u0XOjNM9JkiMBL9QV8P5YZAAaRGD8jyNEIgo44JSne5CC2Uiow7ijp7sCUi0P3eN1tD7h+3WrPvkRrVGu8HOzg==
X-Gm-Message-State: AOJu0YxptiwQogF4lsXdYjrjSsHxzR5hpWvc6Ynf95Va/5IegMjQle1D
	H+rVwn0xBx8Jd2jHBYaTcMyvTDR7Ak7s0xcC2JSlugEaiZ4uI+6wY7FLyHsAmVI=
X-Google-Smtp-Source: AGHT+IE5GxcCbYVUqRQAYZB2fGalRM1/KcCVgJ4MPIDeYCRSoNUOvqpKzENG3PJ5PkMVuBWcY7ClxA==
X-Received: by 2002:a17:903:41c7:b0:1f9:aa05:879a with SMTP id d9443c01a7336-1f9aa461e71mr43504705ad.43.1718841457808;
        Wed, 19 Jun 2024 16:57:37 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855e70ae6sm123620745ad.71.2024.06.19.16.57.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 16:57:37 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Wed, 19 Jun 2024 16:57:19 -0700
Subject: [PATCH v3 06/13] RISC-V: define the elements of the VCSR vector
 CSR
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240619-xtheadvector-v3-6-bff39eb9668e@rivosinc.com>
References: <20240619-xtheadvector-v3-0-bff39eb9668e@rivosinc.com>
In-Reply-To: <20240619-xtheadvector-v3-0-bff39eb9668e@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Jonathan Corbet <corbet@lwn.net>, 
 Shuah Khan <shuah@kernel.org>, Guo Ren <guoren@kernel.org>, 
 Evan Green <evan@rivosinc.com>, Andy Chiu <andy.chiu@sifive.com>, 
 Jessica Clarke <jrtc27@jrtc27.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>, Heiko Stuebner <heiko@sntech.de>, 
 Conor Dooley <conor.dooley@microchip.com>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1718841444; l=954;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=UncKWDVsLq8cp22oK+C6VrFrX0H9dgX4jkpq4hmlQlw=;
 b=WbT1KOfNMU+zDjaO9lUICJklFM+CBWd14ygVC0UvezCEX23pEA8YTxFkTdvkWoeBTPH4UfPSH
 QPKAbtQJEsYD2JPv8TzVdBwyR2ZgJW/8on5XEWLAtlUAP34WCF85qPz
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

From: Heiko Stuebner <heiko@sntech.de>

The VCSR CSR contains two elements VXRM[2:1] and VXSAT[0].

Define constants for those to access the elements in a readable way.

Acked-by: Guo Ren <guoren@kernel.org>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Heiko Stuebner <heiko.stuebner@vrull.eu>
Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/include/asm/csr.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 25966995da04..18e178d83401 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -216,6 +216,11 @@
 #define SMSTATEEN0_SSTATEEN0_SHIFT	63
 #define SMSTATEEN0_SSTATEEN0		(_ULL(1) << SMSTATEEN0_SSTATEEN0_SHIFT)
 
+/* VCSR flags */
+#define VCSR_VXRM_MASK			3
+#define VCSR_VXRM_SHIFT			1
+#define VCSR_VXSAT_MASK			1
+
 /* symbolic CSR names: */
 #define CSR_CYCLE		0xc00
 #define CSR_TIME		0xc01

-- 
2.34.1


