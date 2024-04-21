Return-Path: <devicetree+bounces-61162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3E88ABE17
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 03:07:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5ACD8280D1D
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 01:07:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF023179BE;
	Sun, 21 Apr 2024 01:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="YrgpFBIu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A9B1BC23
	for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 01:05:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713661510; cv=none; b=Phbq6/XbzTDSaiJhfJ7SwESC5YCP1IHFVKSOtooxdA4Bf2qwhuMzI7tosze7mr17fA+KtoLIUAdjAitBE+ubHjW5RdUBOrGOEIagdpooy6i6tTPi0T1wl1Dm0b8XaGH28WwWDenccthR7YYTQvamECMOuzNcrrPp0K4oyu3b/+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713661510; c=relaxed/simple;
	bh=hSZDQKNr3tkZT93AWiF+tJx7RzaJfBNyv2pzte748aU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TqnlmMNRmx3VJuWxiSlTY/5fw31IAIRjDxQKIovglrM1m0Ksg7a/kxTx8pogbHjA59RLddJ/mJ+lozbPcVvB3nnf+C2JVKi028i/OrgZXemcAkIZLXlEWGQ/AcyT58lICrCUI9lSVZQAoL7B/a4sQjushqWqW/3554OWK5xEOHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=YrgpFBIu; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-53fa455cd94so2540470a12.2
        for <devicetree@vger.kernel.org>; Sat, 20 Apr 2024 18:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713661507; x=1714266307; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i2nk2JCBk+l9WgkXKFxu/w/itsXmN0i69JJANxOESAA=;
        b=YrgpFBIuTk3VoLmuZ6zEHHzItuxE0rJ/hh9nJXs4E8wZKOcc214t12PBmwvmBDbOK2
         +x0zQW5aKty7DCJVYVBZqTCy+GuiZzZ7eTzuTQBLcWuzwoh1INkOSchF8AI9jSrMMbau
         4FvFUt9vAj2+EGIDZwvFO2X+BxyS0So4Mga7o6rEXMi0jG4rlty9cpvLXOEuwUmATyf3
         EW7SeddzdZIo5tw897dhgkhq2Uxni8qwwoN70/Lp5HObnCBqKcdF8n35askQKixyGzUG
         CQ6EQ4GzxosmoCfwuIvDGTyd0jou7+oOAzf+yNwZu7+52OWALvMB0ZQl+iQ+6cbbaVDn
         WCZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713661507; x=1714266307;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i2nk2JCBk+l9WgkXKFxu/w/itsXmN0i69JJANxOESAA=;
        b=MXfGVCuF/ufMo2CiSzi1///gZvOv0cmsy2j11qcm3PU2u5Dt8plUr9pld+Q0VTSmPu
         0C/q6Rg/GlGlEnDmYeHFRGkCcFwtLxGHolucdhMflsGHtd6Pa6DzS/iUwdxhRzZJs30n
         pGtaE0Y8MX1lVobdDy7FI7VPp/oWpnWzlhNN/nHjvFhc/MlKngJeA5MVGVn5mIFzRB3Y
         SxnqfegfVbwunikcqWXKSeNUNb9QktG8lv9CmZ4RWbEf5nueJTB0jvi82Lr/yeUULS+d
         vT1LzDGGtqEqdJDrhF8Ttk6l+dXLmT4ntNIbfgNr2aTxPzQ0fVkhuDz3TAHsx26kdGa6
         AutA==
X-Forwarded-Encrypted: i=1; AJvYcCXYJWB821vuIyK3sW8CO+ukcc0cag4Yh4+EPrQOgGzJE/7LH7jdUNdzkSIBQHQ5xbr4Cawn6e6EwOQmQqVVN6s5cQyUaOKEoI/Ddw==
X-Gm-Message-State: AOJu0YwVGq5tbFoBqOTI4J8Hv+F9XAgX8QUx7neS7O61I3s5e7fQ8Xnd
	g/Q+rTFl6EhdUR5E8BncBTWtDEU8HBnqk/9xyeaBSlEac1xEvi95MP8qEU99dpY=
X-Google-Smtp-Source: AGHT+IHHK0CmFEjUYa4B6mPQ0N1eaa44TysOKXGCa/Ivklg6CG4klOmrEKVYQ7lcoTnquYAd4o9XZg==
X-Received: by 2002:a05:6a00:3d05:b0:6e6:9552:cf33 with SMTP id lo5-20020a056a003d0500b006e69552cf33mr7165613pfb.31.1713661507603;
        Sat, 20 Apr 2024 18:05:07 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d6-20020a63d646000000b005dc8702f0a9sm5249627pgj.1.2024.04.20.18.05.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Apr 2024 18:05:06 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Sat, 20 Apr 2024 18:04:43 -0700
Subject: [PATCH v3 11/17] riscv: csr: Add CSR encodings for
 VCSR_VXRM/VCSR_VXSAT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240420-dev-charlie-support_thead_vector_6_9-v3-11-67cff4271d1d@rivosinc.com>
References: <20240420-dev-charlie-support_thead_vector_6_9-v3-0-67cff4271d1d@rivosinc.com>
In-Reply-To: <20240420-dev-charlie-support_thead_vector_6_9-v3-0-67cff4271d1d@rivosinc.com>
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
 Charlie Jenkins <charlie@rivosinc.com>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1713661481; l=706;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=hSZDQKNr3tkZT93AWiF+tJx7RzaJfBNyv2pzte748aU=;
 b=EaRHq+U6nQY6UMNHfwQt7VXjyHg2fLwFPXP1BAl3sVEmRMdMMwXIiKvRomtQPJzmqtJqOUvg2
 jdINbQQjXWJAPYzqwG9jFhZUzK57PzwK7Icxv/QOIMHdsf9Ai2sSDqo
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

The VXRM vector csr for xtheadvector has an encoding of 0xa and VXSAT
has an encoding of 0x9.

Co-developed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/include/asm/csr.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 13bc99c995d1..e5a35efd56e0 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -219,6 +219,8 @@
 #define VCSR_VXRM_MASK			3
 #define VCSR_VXRM_SHIFT			1
 #define VCSR_VXSAT_MASK			1
+#define VCSR_VXSAT			0x9
+#define VCSR_VXRM			0xa
 
 /* symbolic CSR names: */
 #define CSR_CYCLE		0xc00

-- 
2.44.0


