Return-Path: <devicetree+bounces-91549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 08146949CE0
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 02:33:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B1CD41F24567
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 00:33:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43B8B7710E;
	Wed,  7 Aug 2024 00:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="DlXn04nX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABAC274055
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 00:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722990719; cv=none; b=Oz0Eux3JtpMn4IGYj1YonrkqFxibfQyYlnLACWsvh/MOhlaGu7DMwHcv1n0xhhXWHBh1AiZwpxJyn+ygPZ9upXu8awVzIlx+6tB0Wj+AMrbEuDuqOgchfeH8v7l3NXdEHMlyBxYTO+O2PXlJaxnWjRfw4dXNWJp+OYP9VOnWqw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722990719; c=relaxed/simple;
	bh=/SkqORRprGraSlNdCA3N7P9uibYmHsQsfL3EwVWnJvg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=i3BFWvIES8FaaTNFD4+KMLU0han4URlH5NT0cj+hglA8pH9HfYlcwXSz8zwiMmXF8pjsJIkqhD54pwlF9u+W297QzmsvjZo8owwv6rPbXz+av0ELm5/VL5bYChSM3tOe/TmjUX5wHLFpr0lXDp92rTIirC3BzX4UOhfYAv0fETg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=DlXn04nX; arc=none smtp.client-ip=209.85.167.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3db1657c0fdso771893b6e.1
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2024 17:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1722990717; x=1723595517; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QC5zCLZI62pAjh3MZXl2DmzWweDYeenNtUhW+BVEweY=;
        b=DlXn04nXTJekVqRpwSIxNoQIGqEfhWnTh/eMWYD0aU4Gl2zc33AkIORxrxX1hcYr3/
         qnF62To0Sfh1L3ag86M/x5uMYD+iPPO7dnCkNuMX+5/ePZQFbZcNrl5xbEQM7tWoMSCF
         0iYgWxq4HRcpS6lT1IhXSgmlQMmvVsf9STLn/Y5Dm9FV71LN9KUPOZ6VrL3kq0RVa9v8
         Qd6VqXgw5jOg/jGG7GBIpdmVSVQh5QUrYwhDU+sfKo6btwCFgUjG52toppdQKF+z81mq
         VaxHzyOLTQl8xogN03bHJxSTSoFZT0P4k3E7V1o7KZR5BCMQK9jPDRurP4bGZmyNGE7K
         3E+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722990717; x=1723595517;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QC5zCLZI62pAjh3MZXl2DmzWweDYeenNtUhW+BVEweY=;
        b=I4AHsS/k2VEmlFRwQlAFTBT8YRAzhyieQHYZrZ7p5sj3LdaF+mW3TfHOTNWb525aPR
         ii4f1NE7yOwsEGe6zw5ncYQeSiY6hIFzWlEoBTtFeKzq5ihNAnZqNBka/5JwdDDdh0+f
         ENabtHzF64Lul9foUlUfxrBlMYndYgDPHa+s0RbktvKuulhuisp4TUNEaG3OS9ReXAYJ
         D+Zn7xKKsgPYt/Mmg3c0i05kviZvjnz6QNwAabrfdk3b5VKb6Ui2lodITiaiB7mWMdUF
         NBw6WxTe1JE87zPuNqjdiUYl1QAp80m/Zb5DiCEWfHuwXpfkjU289qkbGYt3NslEWunU
         pjkg==
X-Forwarded-Encrypted: i=1; AJvYcCWXpP5ru8QSW27wEB80x//fYLcxwiw5N5WW4/dRXolQgg1x78W8/aJMDShvpSvZegBxEmZq6AxiHCCoEW1P+6jWR+YrZoY0a+eG7A==
X-Gm-Message-State: AOJu0Yw5bF2mcV+1HMfEkzoOlSfEEz8Pz298c2cI5cmaizp8bddi9L+c
	sxVWEWjnMxfvzBLiE7u6R6PxqKZS3/Ntj9/XRjzx01TpBmW/UkAPAWLUZjHTzZo=
X-Google-Smtp-Source: AGHT+IEomO2rWS8N04dkJc59Kgkws+mWDwLUt7ddjCqe47b0HovPqN/7PDFgjz5yTN0u2e47G0ibbQ==
X-Received: by 2002:a05:6808:d48:b0:3da:e246:36f9 with SMTP id 5614622812f47-3db558310d3mr21688532b6e.31.1722990716821;
        Tue, 06 Aug 2024 17:31:56 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7b762e9f5aasm7476174a12.6.2024.08.06.17.31.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 17:31:56 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Tue, 06 Aug 2024 17:31:42 -0700
Subject: [PATCH v9 06/13] RISC-V: define the elements of the VCSR vector
 CSR
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240806-xtheadvector-v9-6-62a56d2da5d0@rivosinc.com>
References: <20240806-xtheadvector-v9-0-62a56d2da5d0@rivosinc.com>
In-Reply-To: <20240806-xtheadvector-v9-0-62a56d2da5d0@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, 
 Guo Ren <guoren@kernel.org>, Evan Green <evan@rivosinc.com>, 
 Andy Chiu <andy.chiu@sifive.com>, Jessica Clarke <jrtc27@jrtc27.com>, 
 Andrew Jones <ajones@ventanamicro.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>, Heiko Stuebner <heiko@sntech.de>, 
 Conor Dooley <conor.dooley@microchip.com>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1722990701; l=930;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=DIdTxrF0tPCTSVf2TD2d8xS0VDMxpxf73XTxU8DNXFU=;
 b=tCigg/1A4l8IsEtr1/y9NTwTRU5XH+2Tl9Svmx0pkqdzZuPXykgTqvIzRfkbgnNWcTMSLRxxz
 q60DgQzkkPUAT9JnB8p+nZJ8SdgxaBb3cQ8syWdxfgoAzaldKwS912B
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
 arch/riscv/include/asm/csr.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 25966995da04..3eeb07d73065 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -300,6 +300,10 @@
 #define CSR_STIMECMP		0x14D
 #define CSR_STIMECMPH		0x15D
 
+#define VCSR_VXRM_MASK			3
+#define VCSR_VXRM_SHIFT			1
+#define VCSR_VXSAT_MASK			1
+
 /* Supervisor-Level Window to Indirectly Accessed Registers (AIA) */
 #define CSR_SISELECT		0x150
 #define CSR_SIREG		0x151

-- 
2.45.0


