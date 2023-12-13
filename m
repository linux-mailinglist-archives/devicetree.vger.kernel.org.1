Return-Path: <devicetree+bounces-24723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4B1811011
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 12:33:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 91B981F21369
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 11:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C5662420A;
	Wed, 13 Dec 2023 11:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="OSKnrqJg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB98811A
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 03:33:13 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-50bf18029c2so1879552e87.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 03:33:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1702467192; x=1703071992; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1Atjvu7OpzxGHnkPKQqqXLCnjWBuSkCnCszNZgaSB4s=;
        b=OSKnrqJgH19YrIIAPWS75xo34p2ioAIwMXE+I1DXvozttVQeL0NALcKpVnB1nsEAQc
         7HOQLQu5x2l0H645yjf3zWYf1bLCKZwY//8v2Yky7K+SkS0RvaUhljcyjxxTz0jVBfAT
         bJAW1caZFxTy+XcJaAYxoUyuw4QAkNTFokCZCS0DphgUTKVcdgvv/jh9ENWpgfvyRRXB
         5mfic6L9olBpaI8mropePCVLkiryylGnlIbdwrzubn9iCKFpXLybpkVsUtq4ADOyECyh
         BeMkLluuxBtss233mxpLUiIgQGmbZgisugGpVNISjYAPzEVOlam0+eVGyuE8ctTfOQcm
         PRUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702467192; x=1703071992;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Atjvu7OpzxGHnkPKQqqXLCnjWBuSkCnCszNZgaSB4s=;
        b=hvbQyYSlV5U8sjTEc4j612EsRdisZR6q8AmQk251bNdO5F0g6rCllptR/nRiLlZI3X
         sF64dFqlLo6rVRjA0ok0lTsB0C/54oU0b4vSG4bnUr9lxjVCgVaNydZaRz4b4lsP0xYb
         HFDYFOd76RczRiwhuwrcXWsXH/34cLXeJBH0qFV5DcUP5A38nQ606Jyn7CzcL+NTZypR
         zhjw2jZ27x1suWkZT8ag+QDHTY5P6zGpOMHgt8bPUJyd3X3OKA7hCRqxJlRCk3sHPA3G
         vuQs/Rm7gCWcWgD9lkiGPtj0sC6R/xtcHAFti5S7Po+2VRhNVGPQWnNVnY19AjrSwX9t
         sGrw==
X-Gm-Message-State: AOJu0Yycp8wswmuSg8CcZevbzNecMMf+MZp6YlcjvJV7zOKdGT5zzl2o
	fPz43FiHawWhcmozi8VMebUoMg==
X-Google-Smtp-Source: AGHT+IF28n7Q47rA9vhQP7ckQSu28DeDIVuzSbICtoXTbPIgLDR3icG5MBbRpeB8E8SvlKm6RVJPvA==
X-Received: by 2002:a05:651c:211e:b0:2c9:e7cb:fe8e with SMTP id a30-20020a05651c211e00b002c9e7cbfe8emr8509940ljq.2.1702467191993;
        Wed, 13 Dec 2023 03:33:11 -0800 (PST)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:c564:f167:d072:5672])
        by smtp.gmail.com with ESMTPSA id m27-20020a05600c3b1b00b0040b38292253sm22433137wms.30.2023.12.13.03.33.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 03:33:11 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Robbin Ehn <rehn@rivosinc.com>
Subject: [PATCH 0/9] riscv: hwprobe: add Zicond, Zam, Zacas and Ztso support
Date: Wed, 13 Dec 2023 12:32:56 +0100
Message-ID: <20231213113308.133176-1-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This series add support for a few more extensions that are present in
the RVA22U64/RVA23U64 (either mandatory or optional) and that are useful
for userspace:
- Zicond
- Zam
- Zacas
- Ztso

Series currently based on riscv/for-next.

Clément Léger (9):
  riscv: add ISA extension parsing for Ztso
  riscv: hwprobe: export Ztso ISA extension
  dt-bindings: riscv: add Zam ISA extension description
  riscv: add ISA extension parsing for Zam
  riscv: hwprobe: export Zam ISA extension
  dt-bindings: riscv: add Zacas ISA extension description
  riscv: add ISA extension parsing for Zacas
  riscv: hwprobe: export Zacas ISA extension
  riscv: hwprobe: export Zicond extension

 Documentation/arch/riscv/hwprobe.rst             | 16 ++++++++++++++++
 .../devicetree/bindings/riscv/extensions.yaml    | 11 +++++++++++
 arch/riscv/include/asm/hwcap.h                   |  3 +++
 arch/riscv/include/uapi/asm/hwprobe.h            |  4 ++++
 arch/riscv/kernel/cpufeature.c                   |  3 +++
 arch/riscv/kernel/sys_riscv.c                    |  4 ++++
 6 files changed, 41 insertions(+)

-- 
2.43.0


