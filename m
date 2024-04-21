Return-Path: <devicetree+bounces-61161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE088ABE0F
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 03:07:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 486001F233CB
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 01:07:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBA2014AA9;
	Sun, 21 Apr 2024 01:05:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="x3W1c7Of"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33ACE18EB8
	for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 01:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713661507; cv=none; b=pDm3KrVTlo+YGr2q295sadwuzwmDOSaSbIkpgvDYThHNaCKHXwyeveXtf8S6Tm7DeLOgz/bDz/o9sZRzQSRTbJIzMgK01yS/HJqIo7fWZhL7YktUWqVTMBi3u4FrXcHouOkdKufljhn/PIQcbD/b0K+NxwvFso7sG9X6ASxg3/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713661507; c=relaxed/simple;
	bh=wcB/ebDhkfkPBVDQxoUt3AjUlhzpSXzz59SF5DkeLyE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZV0nJSy6irMu7i7alOAxQFdxgG9BOlOjrAuHAepigE3xh0CxS3XW4dD0J4Tt33Pej0xM4kYODS7YTnx8+HKylGZu26OZY7mCMjdu1hrlivxW1VbBR+qRby5WscZMN8apsP5J1sMtwj4BHq3dB2jw94f50+sJgCB5NfG3ctMVhvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=x3W1c7Of; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-222a9eae9a7so1704781fac.3
        for <devicetree@vger.kernel.org>; Sat, 20 Apr 2024 18:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713661505; x=1714266305; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bC8+jsiLZWKY+UGyCwiSu3stdoXyccUkl5+IF/7wAA4=;
        b=x3W1c7OfKrxYrdl53QKhXwkpvo6byzXT4tobcLGo5HPyo0nQzHPhJ0AYOu9kdhjCuw
         Ce7jP2bH+UdwZz9vVppnwO2Q9QaSsOPfKvIwyt14x6nYG9OKYXq9w+fZ83iKGk6/VwqA
         gAo2dZv3VyPWGp4BRU/m3V8FImRInf0xv5Xi3gLIJ25QWEg1DPJ99apSm6RCEedbVZk3
         QySFE9HMgMaHdxUSdBQcaHHNPuaxUE5gAky25XIpJ91fLPFeHKPsyq9xiy0nOSi9o01C
         a/RaCJJ07BS4ltCkZBim7VUPTkz0a7taT7XsMIzASa7cnh5/Tnyo0BbiMkmI5v/8wzoO
         2HKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713661505; x=1714266305;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bC8+jsiLZWKY+UGyCwiSu3stdoXyccUkl5+IF/7wAA4=;
        b=i3iCiWpatHjqqGUeOuLs6eieFJDFV9FSYOlg+c9JkOClFP3PPSYGhzPBnsjm0JRv/v
         mJL1kfrVQ/RykK52Xm+DVdYWDGKDmSBQmLequSi+CHP1Tvqm9YBWdOIuxLowgsGLMMPI
         AxYxuevK5/6dbvAeHTHdJKr9hjfm5bLYFRYIUi1uJo7o5JW8ZYcrhh6e5zgepY6FgiP4
         txO6Y1EUdH/Gxaj42gXwUxqEbhosfVO463OAhiS0rGbb/tQizZKOCqPVQGQjCj8UvH3U
         +LfIhUgaDIQVdxcvJiMbBOnKgYFLuJtCM79y3alZQQowonYp0QYP6xJYwE6z+ks33vvw
         JWgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUSxP4gHTVr0jaCZMLPCOwY8UGh+Ah5z1NoyJGkmxOm+BoG8cGFxIoMru4NcMVP5RGYg2tgrgB3stlYoJGZ8rTcZUhJnI35wYnwGw==
X-Gm-Message-State: AOJu0YyvK12tiHT693yMPE19bRI9axZJf/N+weKYbPmUd59BSjFSwiX5
	rIoIWXjXswlG33R9Rak9x68sXZPUDMWSwhxoMPyC9yA44Rmy8/ofru/tHXpwQ5Q=
X-Google-Smtp-Source: AGHT+IGbQ/vxSg+SM01gknEBQRR/q49/3qC6z4/xjDMc4YZpeoH8/vtpKwa4//R2pCwzOVNHIa6iZA==
X-Received: by 2002:a05:6870:9a0f:b0:239:8e67:6f10 with SMTP id fo15-20020a0568709a0f00b002398e676f10mr5008737oab.30.1713661505412;
        Sat, 20 Apr 2024 18:05:05 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d6-20020a63d646000000b005dc8702f0a9sm5249627pgj.1.2024.04.20.18.05.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Apr 2024 18:05:04 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Sat, 20 Apr 2024 18:04:42 -0700
Subject: [PATCH v3 10/17] RISC-V: define the elements of the VCSR vector
 CSR
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240420-dev-charlie-support_thead_vector_6_9-v3-10-67cff4271d1d@rivosinc.com>
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
 Charlie Jenkins <charlie@rivosinc.com>, Heiko Stuebner <heiko@sntech.de>, 
 Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1713661481; l=954;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=C7F1c584ODJM4qF9TPT5kMoM8fDlOPYyEMw6010Mea8=;
 b=7jmS1W1m0Q0AzX4wBIry9EylCG+Y3NoCPBcfRTlo9XfCGTiKUGeLKVQZD0sKpe6MXP57BC0/G
 7k6iLclC9/sAQ0QerwrjVwujrLIbftuilh6gclJQQmbPMW8YDHcSlr5
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
index 2468c55933cd..13bc99c995d1 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -215,6 +215,11 @@
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
2.44.0


