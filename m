Return-Path: <devicetree+bounces-59590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BE18A6221
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 06:13:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 79D891C2277D
	for <lists+devicetree@lfdr.de>; Tue, 16 Apr 2024 04:13:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3C5422F14;
	Tue, 16 Apr 2024 04:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="KSolLaZD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332033BBF1
	for <devicetree@vger.kernel.org>; Tue, 16 Apr 2024 04:12:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713240732; cv=none; b=jM4vaXLTZLwa2owkRDCcKAdU5ZMOSU64fcUraSHgT9Tyu6zbr0ihRQeGuTpLecBE7WY2qBUW/uq7+2ZpwI9DoLNANCrKqbnhx0Vd/HkwSjRElVBE2TXCVQtgIieOEZ+gy8oolrqp2ONyaj2G71Yd/5hkDUGSFcc9MPJQh5UvbxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713240732; c=relaxed/simple;
	bh=m0plhmdNbdmA80gesn/7KnCdXtvm5F7fdW9kC5KptxM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tJXGjNTKdJncALKxRy0uKkfJFBDpDaPGOrbAS1loT108emGO6i2Cjulb8bXgnP7hwkvfxePbxEORIPmLz5ROYcod5AvjfJ/IeIcizlww/BeMacNk35VfKGVfvcShGPbPx+ko9Eaovew/sG1prod/4OTRJQUwRqmSfsBhsZfciVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=KSolLaZD; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-5aa1b7a37b3so2410785eaf.0
        for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 21:12:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713240729; x=1713845529; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uVSzHGFLNnrGti654VC11tvpK1bZGKmyJ0hbbIeQ45Q=;
        b=KSolLaZDORvmHMAd9QWBGgfyAEJoKPd8rzVkjMVt3vWlaJyoEMK5eTCfTK81uuyEEE
         OXdj1MyObjVj6eA7rXk+YbDXrVRiWXKFkhH9tFZ7o8vM4tYCuQakflIP9L42xHqOIdF0
         5cC5YWotZyBGWxSHqETdYDYTMbRt7y/MW84l2t0yz5TuOqXajtMXQ3DN40UqZyQNqBEm
         r2zd59hRDoEa5PakAihLudgBm1j0eBgK0B+V7nI5pcNx0qrgV0HJI2nwREWqq3p/0HO6
         QMM3PAacIcXKCj1T1zv2UaaDIpjZv/Lbq5W8DAeCRE58nfuBZmtignBPKpRfvLBSaZqW
         +uSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713240729; x=1713845529;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uVSzHGFLNnrGti654VC11tvpK1bZGKmyJ0hbbIeQ45Q=;
        b=GoOSHOtsK0J3cJkWfx6CT2v2syMKJX7zS/NYxLoUJrJc9vxBJ5RbB28r0BBd0ZZwYG
         hP6G/+kIi9XlOc0e53XYnWLHafkilSHmB123Na1gXwncyLIKi0i28TTkhN4aAiYbO8Xz
         MT95d86tUh6ED9vvaEEoCHhzTMbKtFmqoVBNAY9j+dXif2+acIV4d7ttDO9WkI6PX1LI
         mndObzcct42p0AxYBCibhs/hK3PAwuYFtE+QvPXi5fYED0uqSIha4VAH+TGZZ2LhO4bj
         m+yoNlYGfHzUxYJmJ0mgt64m/OmDK5vU8O/ViiWYyEAibiJnlBIyR88lifssrFHqCCod
         B74A==
X-Forwarded-Encrypted: i=1; AJvYcCUrIlCjNGG87xcuAMJpJrOeP/hEh4NoCmzmgfoDArPqOF1OQK7f2q8BVRlb8ANmk0Zp+/5I6cP/+0kpvDrBfuVLDUbxAfYBfNlOlg==
X-Gm-Message-State: AOJu0YyduDmORJez1VXYapdHbuC+W3QJbSnzNW5g9s9SpQb/GfcT5EsP
	kr+PC0ohMU2ro2F3v4Fo44+Udhc+xKaLYvBy+1Juxt46BP6eiTsbkhV47fN7Z0Q=
X-Google-Smtp-Source: AGHT+IFZkd9NDeZNRCG3hOkxXiBzQioQ5hVlHYi/wzn2zrou30bpeRqjwOjjzziMFEa1WsZ5xhufcQ==
X-Received: by 2002:a05:6870:315:b0:22e:8539:60a0 with SMTP id m21-20020a056870031500b0022e853960a0mr12983308oaf.46.1713240729449;
        Mon, 15 Apr 2024 21:12:09 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id z184-20020a6265c1000000b006ed4c430acesm8383149pfb.40.2024.04.15.21.12.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 21:12:08 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Mon, 15 Apr 2024 21:12:02 -0700
Subject: [PATCH v2 05/17] riscv: Fix extension subset checking
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240415-dev-charlie-support_thead_vector_6_9-v2-5-c7d68c603268@rivosinc.com>
References: <20240415-dev-charlie-support_thead_vector_6_9-v2-0-c7d68c603268@rivosinc.com>
In-Reply-To: <20240415-dev-charlie-support_thead_vector_6_9-v2-0-c7d68c603268@rivosinc.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1713240719; l=1065;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=m0plhmdNbdmA80gesn/7KnCdXtvm5F7fdW9kC5KptxM=;
 b=7DRonXaAgLJzhWvXE1qbRYS0I+BfU0oGsBOBG0My2i8BWoHww2ZulgK6Ne5SIPj9jjmGT1fAh
 WB/f+iRxM2uC9jcfHku9va0/Bg5wWaTVh/Ak3KRIWgDEL+7zSph3JfU
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

This loop is supposed to check if ext->subset_ext_ids[j] is valid, rather
than if ext->subset_ext_ids[i] is valid, before setting the extension
id ext->subset_ext_ids[j] in isainfo->isa.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Fixes: 0d8295ed975b ("riscv: add ISA extension parsing for scalar crypto")
---
 arch/riscv/kernel/cpufeature.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index c6e27b45e192..6dff7bb1db3f 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -607,7 +607,7 @@ static int __init riscv_fill_hwcap_from_ext_list(unsigned long *isa2hwcap)
 
 			if (ext->subset_ext_size) {
 				for (int j = 0; j < ext->subset_ext_size; j++) {
-					if (riscv_isa_extension_check(ext->subset_ext_ids[i]))
+					if (riscv_isa_extension_check(ext->subset_ext_ids[j]))
 						set_bit(ext->subset_ext_ids[j], isainfo->isa);
 				}
 			}

-- 
2.44.0


