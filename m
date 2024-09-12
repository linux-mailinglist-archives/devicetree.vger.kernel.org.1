Return-Path: <devicetree+bounces-102241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D3C9760BA
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 07:57:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 267281F24D94
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 05:57:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F36BF18DF6F;
	Thu, 12 Sep 2024 05:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="MRWU5z6B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8049018C35C
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 05:55:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726120559; cv=none; b=kHQ+JGADFBXauxXsh/X2f6qwHiTq4/A+o55io1VEQaqqe07xFDyzzY5sDeKo+0m9kJc/oqNR0so338l5L33fS9oQlc7NB+SZxfjUCh9EL/QrHIJLk/FfdOG1I2urC6MQmZq9+Thw95BWfAxdBfwkXtXkrQmrxNAtxUHqask0mqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726120559; c=relaxed/simple;
	bh=/SkqORRprGraSlNdCA3N7P9uibYmHsQsfL3EwVWnJvg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=M+IX3e8g5Hajl9sotlSxRYXPwBhrtZExchLxgXrUVPO0v+cSMtLkq1WwSrF9wTcgqap90/zDpTFB34PND+ZW40NIr9f7NoLum6ojWyyzPkSY24RdF88U79/ILEccPGpIizwJepIBjn/1XwYwdu5h965qCdWTOgtDzUaF1PbS0kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=MRWU5z6B; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2068bee21d8so6561055ad.2
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 22:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1726120558; x=1726725358; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QC5zCLZI62pAjh3MZXl2DmzWweDYeenNtUhW+BVEweY=;
        b=MRWU5z6Br3fL+g+ubhPbJckpBT+ad+LTRiXRcqId48dwDaXwk2Fwm4WMu9dwkQAXiN
         c17/nV/1UDyOFZm2vUBIudctCd+9IJ2EjwPrYRFVDmqAHyzs8ahu/N3Su7Isb3Wifl6n
         umJu3J6+v8MvG2YW+5TcMrkU0IQ8QtzIFjqUgeioWAufFDvhbO+98TdEz50R2FIbg/gO
         P7Tmfi01e3cmgp/b3tf0e5r4mc7fIXlm90t8XiC3d9oq3oTQrERaC2hu28Id8zqxKxHC
         GflI3+QAH5VyLaMqsOxdRkpwz06pRFHUYarKsUVYmw4/W/MgndjYM7On2EU7RlfddPpZ
         QMTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726120558; x=1726725358;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QC5zCLZI62pAjh3MZXl2DmzWweDYeenNtUhW+BVEweY=;
        b=L+qfpODV21zcTvCZN8I3vp7BekpciVzmzA2hrpRWQOh1Md+6auwXiXdhT1Nw+4EIWy
         a7Onk0mg/SRXOF8eJR0VuUlCwT3vuPnXZCYlkUpHIRnBc1OM00VR6geOUe/s9eKIceP2
         V+ddKjtl/bWlCCutTdYilOseeV0JO/aWAd7N+kiSESmBeOXQaNOvYYXZz7PCbMJvGizI
         6TTHy5RUU92dLkkHnJRF+1sCFzdxXyN25m18VCZ3IAbJWv1ZYsBZ5+AIsvPc5pTrcwR7
         A1wxE+tQDsnSoQyf0XliRX5w98WcNYzCsnNHftnZh+TcbF7AOeo+sPMIImQcjzP9nPg3
         kC3g==
X-Forwarded-Encrypted: i=1; AJvYcCXoCt2xYYhLmeMFlK4qO9tSsIG/mrApMU/DiZAnzrqzl+5r9UyRPILB4uSHLdSi+dSmEnqFHYVY4ZaU@vger.kernel.org
X-Gm-Message-State: AOJu0Yzzw4JHyDlNwnAgtGEG8H7N9gq1m9aL/bWTEFhwc5RdaDOV6paL
	WPEe1i99o2zvstVLYWH9LDAkSlPwJMf/9HEAwiqXP14Lws2MBlBhU8bKLC9YgAs=
X-Google-Smtp-Source: AGHT+IGyDCzQZjkQHkJXtnWNtioMB6ctq+/3Xni39dhHW8vmk0vcTDkokS2omVuMqKCmz0Pis2iBfg==
X-Received: by 2002:a17:902:d50c:b0:207:1708:734c with SMTP id d9443c01a7336-2076e31f979mr25362825ad.11.1726120557914;
        Wed, 11 Sep 2024 22:55:57 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2076afe99b6sm7870465ad.209.2024.09.11.22.55.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 22:55:57 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Wed, 11 Sep 2024 22:55:14 -0700
Subject: [PATCH v10 06/14] RISC-V: define the elements of the VCSR vector
 CSR
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240911-xtheadvector-v10-6-8d3930091246@rivosinc.com>
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
 Charlie Jenkins <charlie@rivosinc.com>, Heiko Stuebner <heiko@sntech.de>, 
 Conor Dooley <conor.dooley@microchip.com>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=930; i=charlie@rivosinc.com;
 h=from:subject:message-id; bh=DIdTxrF0tPCTSVf2TD2d8xS0VDMxpxf73XTxU8DNXFU=;
 b=owGbwMvMwCHWx5hUnlvL8Y3xtFoSQ9qjpmjOUPYZ0uVTnX69zzU2OC36c3lXu8jeU+emTV3HF
 sS2tzW5o5SFQYyDQVZMkYXnWgNz6x39sqOiZRNg5rAygQxh4OIUgImUnGb4H/6mcBlT+5PDddcq
 mEIs/EWF7tvNM/wy2bNfgf/E2QyRCEaGKRJ9P6slZRemCE29I+349qW70NMJUx7HqUctlvt859w
 2JgA=
X-Developer-Key: i=charlie@rivosinc.com; a=openpgp;
 fpr=7D834FF11B1D8387E61C776FFB10D1F27D6B1354

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


