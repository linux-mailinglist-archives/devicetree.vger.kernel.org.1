Return-Path: <devicetree+bounces-102242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B989760BE
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 07:57:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F6A41F25562
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 05:57:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4388A18EFC5;
	Thu, 12 Sep 2024 05:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="q38/obtw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B128018E03A
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 05:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726120562; cv=none; b=DMvyLaeawcg8ziXCONTxjrbjvjVKASu8j/rwLtFDIb+V8EC/QFqdX33dF5FvycrWllTmz7R5oxkpMLU0LgsxQu/etem0WtFBHmP+D8PNPjUVrS9ISI47vZ0DeWJGSv22QWxj7LamC2mzublIpARAiQbeSI+OfdKc6OYL28RTD1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726120562; c=relaxed/simple;
	bh=M4fQyJxhZ7NtPnQCPQfoncg1fbWtYe6qmsOGHrd6z/g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RUejaVe4UBu2GmbLBCN1ibbPOBDh+IccLajxY7h/RHEve2U9V2b2Mxt80spYEb9gW0DETiylUa7swJXXvbjiwyfnl2gZQfRxHj4aeqDFdEdTmSUpvoPIatpkCILnc9AOCvqGRUWChttxA3EAUkCNCgW96f30wDFnIFzdDVyA084=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=q38/obtw; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-20570b42f24so6799345ad.1
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 22:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1726120560; x=1726725360; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I6vSC44jl4CdBSHHJd2q6Sf8U8Y24j++yUJmo2Jtjkw=;
        b=q38/obtwjk/92IvamvOzYbfLFFwqngpL5DqSBnxyZT3w+R/9m0DhkmUdNg2tkiM0bE
         n1HWVl2ZpcO8We/ywkE7i5WaawoFJuDG9Zzg2F5Zcr5/+6wWpn5c6p8forBTYlQwqOdw
         MnXSLo8p+XkhSE5ZdFwTzvQhnd17TI+EBNv5bgdHh4p8PmPTbIwyX9dTzXzrNrZRXBp5
         1u9RfJD1J/bCNX+CrOocILqSTJ3wECfWcFr84TZz5lQ+vVkXVNoojpzCE/8GihqrH6Ms
         vO7p48KE+egPlj7c49wSajjwdC95kXzbn7Oksv6s0Xs/YJYjIZUzMkvskiAjBtQHmk9B
         oZWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726120560; x=1726725360;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I6vSC44jl4CdBSHHJd2q6Sf8U8Y24j++yUJmo2Jtjkw=;
        b=HspQpLFTk6Hb5YJQQoCRB+6OVRC+PVZ4S2HUiaBFozrkx78DHyzqR8D9TCG/v6FokW
         cWjk2fehc4QVUf9yNwuDHfMW5XefFm2tlbdPWCPOKr+XSUiUAbfbesRToVV2aVp/tAbp
         cxlolg+17AQ0SjbbM4c/I+I10f44yNiQCgfNDneXVexN7gLBFPfkIrkG0WehFyFVCsMV
         lBCURSHQVtD8ri6IFlXHY2F2NlVTbkmLqdflRPdjo6ohyhyBHtg5TaqLt7X056zEBVeg
         ok2qTqMaLi3RIQIYkSJRo1J5pjly4pHPLP8aqy8K9ZckK7ZqOAp6wZ0hAPTLAPNw1siK
         uuVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXR8is3RxDgb6/jjpFjIGD4h/juWMdHbmIbaPU9QDhyryksHhAXF5AOQUfehKCY3WSpMZYOrjhEQGXZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzKgmhEYdM7+Bj8neLXGiblIz3HBbbct5uzH9eDOwyl8pKESI01
	dKu0ngJR9mmQGgAsPZR4+Veh9MtTlOLpy0v7+kBz8MXVOVU7YWCbmy7Tmo1CmXw=
X-Google-Smtp-Source: AGHT+IEPAuMTwq96E1itGrD7jktU/8wAEcvnLz9ajoH5Z6N4peyxFR/uYKlbWT48re/ej30oK7FXSQ==
X-Received: by 2002:a17:902:e5c8:b0:1fc:2e38:d3de with SMTP id d9443c01a7336-2076e315577mr29117125ad.7.1726120560046;
        Wed, 11 Sep 2024 22:56:00 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2076afe99b6sm7870465ad.209.2024.09.11.22.55.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 22:55:59 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Wed, 11 Sep 2024 22:55:15 -0700
Subject: [PATCH v10 07/14] riscv: csr: Add CSR encodings for
 CSR_VXRM/CSR_VXSAT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240911-xtheadvector-v10-7-8d3930091246@rivosinc.com>
References: <20240911-xtheadvector-v10-0-8d3930091246@rivosinc.com>
In-Reply-To: <20240911-xtheadvector-v10-0-8d3930091246@rivosinc.com>
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
 Charlie Jenkins <charlie@rivosinc.com>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1045; i=charlie@rivosinc.com;
 h=from:subject:message-id; bh=M4fQyJxhZ7NtPnQCPQfoncg1fbWtYe6qmsOGHrd6z/g=;
 b=owGbwMvMwCHWx5hUnlvL8Y3xtFoSQ9qjpuhlprePJ7PoOP6JyDK7e+qIg/XFCBf7KI/47gTND
 TN8G390lLIwiHEwyIopsvBca2BuvaNfdlS0bALMHFYmkCEMXJwCMJEfWowMk5Qyeb/kX3u0ViT3
 QPelJQcOT96xynnJ0UM/uh1TPXavXszwP/L3LxeW9v9MaQ4WD9lfbH0/QXhWmvC5Gj1PfmMujgI
 NZgA=
X-Developer-Key: i=charlie@rivosinc.com; a=openpgp;
 fpr=7D834FF11B1D8387E61C776FFB10D1F27D6B1354

The VXRM vector csr for xtheadvector has an encoding of 0xa and VXSAT
has an encoding of 0x9.

Co-developed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/include/asm/csr.h | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 3eeb07d73065..c0a60c4ed911 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -300,9 +300,14 @@
 #define CSR_STIMECMP		0x14D
 #define CSR_STIMECMPH		0x15D
 
-#define VCSR_VXRM_MASK			3
-#define VCSR_VXRM_SHIFT			1
-#define VCSR_VXSAT_MASK			1
+/* xtheadvector symbolic CSR names */
+#define CSR_VXSAT		0x9
+#define CSR_VXRM		0xa
+
+/* xtheadvector CSR masks */
+#define CSR_VXRM_MASK		3
+#define CSR_VXRM_SHIFT		1
+#define CSR_VXSAT_MASK		1
 
 /* Supervisor-Level Window to Indirectly Accessed Registers (AIA) */
 #define CSR_SISELECT		0x150

-- 
2.45.0


