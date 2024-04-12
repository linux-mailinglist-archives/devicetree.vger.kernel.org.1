Return-Path: <devicetree+bounces-58497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE868A24C8
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 06:12:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9955282F97
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 04:12:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A4E83AC0F;
	Fri, 12 Apr 2024 04:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="tf6s4Wj1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7BD1CD00
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 04:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712895104; cv=none; b=W2KQHZYcKI2jDI4N6zO/Cf05dYOu8f76P1s3TnW5XQ/hnp5QQwTaOO6QC3wWgORxbFhNvqz+rp7/buY9A3c1pglX5r1SSQ0RT0TQUfRtUHd/4mr0L/c97AH4KqnK1dtNI13vQB5hMAVOCNhQWZs0RJ/WQgYCAqPv+5NXosBg3Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712895104; c=relaxed/simple;
	bh=WDb56Qzs+x7qgry7ohRR7vfqZXbErIkQr8CN2awdr1k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RT5hLC0OirRpG2JFjE0nOGKtvQBXyyFxbtLbzAuWJ60Orb6CVOgq5IdvvsI9SjJlTxMCt+heHc70N5gNmtRspaCb4aEQpWR5we+jDPDGIg4f11BW1m8N/hSz1E33cwa7khtiXl6EYL0PzL2Nsnw9Cunf/7fvcdErTrgTeyh/0+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=tf6s4Wj1; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-6ed627829e6so532890b3a.1
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 21:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712895102; x=1713499902; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wB7ZUsYFAipUnqatnSlT79/6WrFmpwXquit13SzfcsE=;
        b=tf6s4Wj1uBYyqO/XksWa7u28Xk4S3Qk0MyaZ/zLn9UhjU6sFGCWVYCEQ8DBE5T66UD
         HQdYedy5/rSJJhOoaJoVXELdUccSKOr3dEtPaysE/i6uF4gxPrlj6Gy2KvYGYXNpZuxW
         QFpZTgEcwatWt+eicLnuNYUe0to58/Mg7+kIresHo/4DUkMS5nCPGWHXC6ELx7xKMCir
         nkYSyIu2B3LUgUQFDnD3t8vADGKFl7f0u8wkjhBf7dCTAxVjtDM0e1YYvI6BuLslvo2p
         211kQAdpzprT9VNHMuC15TZTbE4h007zXq+yKoub3olNGnd01Cp0ttYEMp7mIDRXaJCL
         1CvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712895102; x=1713499902;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wB7ZUsYFAipUnqatnSlT79/6WrFmpwXquit13SzfcsE=;
        b=T5DMAtmSQlAhxJ/ESjBDP49JMy7HGtPrtbrTAprAaJb4eoU5IldI0bZ9Bhk4isZg+4
         IxKUyKBynIomfWz7Vi5lDvEMLiy/qYNp0X4LTcGR/ZAQiju7zxgtjMep3SmOxnBdQeXG
         h6TP5izGjvhRQtzh+jahvUfAPD6vDWMnvyLLc15YN2qstsQDKeUIKHJyKpedvOiGuSeV
         cvtiBFp9Kibo9+e8vkWMI2f0owYRCu8n7idwSkujkmtOQulWoha0sWBY1ewj3l3tM3cL
         EarkFP32XgZlCIdEdUAqRoyHTizpYWxjlV+g1rBGk2c7LfzyUtAT6yI3J4ZphAjenz8g
         D+qw==
X-Forwarded-Encrypted: i=1; AJvYcCU5FyBG1z0PDatu4ZJ7tTAhfodiWE3RhszeDoBwqPieGCgy3c8Lw7I3vNFbteIiIMND2+Odbfl96dG9Fvebwn/y+XCU80dH54a6vQ==
X-Gm-Message-State: AOJu0YxlUTRldumjaDxD80Z67ivtt/m4hda8dFipNUEXcpJezDVjFaP5
	NcTxldJUoPksq7txgNLtvX34ASN8PGvBk35PPMy4wjkRTSb0ddJ0XRVX41Fa6jE=
X-Google-Smtp-Source: AGHT+IEbXTdjwKLaPoBheBbgei3pXYbfSWchIDinY7tvcECrUoBINHI4reVXQnWJo28mfWEnV9kXkg==
X-Received: by 2002:aa7:888b:0:b0:6ea:bf1c:9dfd with SMTP id z11-20020aa7888b000000b006eabf1c9dfdmr1790213pfe.27.1712895102592;
        Thu, 11 Apr 2024 21:11:42 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id ka13-20020a056a00938d00b006e57247f4e5sm1949712pfb.8.2024.04.11.21.11.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Apr 2024 21:11:41 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Thu, 11 Apr 2024 21:11:11 -0700
Subject: [PATCH 05/19] riscv: Fix extension subset checking
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240411-dev-charlie-support_thead_vector_6_9-v1-5-4af9815ec746@rivosinc.com>
References: <20240411-dev-charlie-support_thead_vector_6_9-v1-0-4af9815ec746@rivosinc.com>
In-Reply-To: <20240411-dev-charlie-support_thead_vector_6_9-v1-0-4af9815ec746@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Guo Ren <guoren@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Conor Dooley <conor.dooley@microchip.com>, Evan Green <evan@rivosinc.com>, 
 =?utf-8?q?Cl=C3=A9ment_L=C3=A9ger?= <cleger@rivosinc.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@rivosinc.com>, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712895091; l=1009;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=WDb56Qzs+x7qgry7ohRR7vfqZXbErIkQr8CN2awdr1k=;
 b=DqPs9x4+xKLxKyU/GrR0haiJT1ooRWwhD1976AoD+11P4Z8zzQJKe+3G0zIGEYtipbwIx+Bxe
 QzUI0P7hfTcDieR1B1pNbhgYYul8C9wqM7AqldfpgtiC+2APKsFh8HR
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

This loop is supposed to check if ext->subset_ext_ids[j] is valid, rather
than if ext->subset_ext_ids[i] is valid, before setting the extension
id ext->subset_ext_ids[j] in isainfo->isa.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
Fixes: 0d8295ed975b ("riscv: add ISA extension parsing for scalar crypto")
---
 arch/riscv/kernel/cpufeature.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index cd156adbeb66..5eb52d270a9a 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -617,7 +617,7 @@ static int __init riscv_fill_hwcap_from_ext_list(unsigned long *isa2hwcap)
 
 			if (ext->subset_ext_size) {
 				for (int j = 0; j < ext->subset_ext_size; j++) {
-					if (riscv_isa_extension_check(ext->subset_ext_ids[i]))
+					if (riscv_isa_extension_check(ext->subset_ext_ids[j]))
 						set_bit(ext->subset_ext_ids[j], isainfo->isa);
 				}
 			}

-- 
2.44.0


