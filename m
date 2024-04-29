Return-Path: <devicetree+bounces-63655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 025858B5CF5
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 17:13:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8422F1F22FD3
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 15:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF71884A48;
	Mon, 29 Apr 2024 15:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="NIZjB5Pm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1F9581ABA
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 15:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714403193; cv=none; b=idoDu4cUweDIX6+IgJs3sZC1u49QLiEUpd572jIK7SlWcBGF+j3P5eX3f+hB6yT3ptICFklK5HM+Sf44aOIFS/Gn3TvEhL1iQkS2s4fnAGtWGRgE2tXTex8bLU7JejrcDLfT6CGhTLHYurnCtZ6mnUuNapaAdzIGLDyZUNcT/24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714403193; c=relaxed/simple;
	bh=ZVcAG+OzER8E5YrxGpABeX9SY2L97uaCD62n5fHEDC0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=jVn5gs/wCjP/6QfsvTEgxDzKmhv8B2kyiE8aG4mWlcaO25lHTKcNAu4lpvTmmOh8qGdkL3CuYB1ycveNFKs7WzBNgd138k12zCfAmRdUM7lyC9HRl6l6G2fylykR2c37FTx7t4H/kpaBeVld86m1irhI9my3Ub8lSqvI5ouerqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=NIZjB5Pm; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ddb69a9747so628471fa.3
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 08:06:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1714403190; x=1715007990; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9QQSGk0Y9Ubz9htfULcfpBCmdaYN6MR+rakpquodwmU=;
        b=NIZjB5PmwUuRqPa4NzQd0fJ4uDlI5Q6lVyUH6dtrFfpQkDk4iDy3ucmvrKcP/aFEzz
         aSwFZEWLnpSaJ0bVbqUK8fN84wENhAWzJ0NlnALF7RPfdqAxU649yzRqsUgXp3xRg+8w
         JARGW4hMoyFZ13rSflhoOELX6ByuWZDp+tMPCoeXh1803kXNw/fF1H37/fESNVpPON8e
         a0nKfAbLoc8AeEQsIaW536H6o8X0PwfZaRMYVKPJ7IMwoHc1hw/3tWUe6KVgiocDzoog
         NDNuCtqOn4hW7M4X/Rs3QA/p2qD4E3bSAtJHQQWjYMSNT+1zAxCttNe1TevBV9c1nlR2
         Bnlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714403190; x=1715007990;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9QQSGk0Y9Ubz9htfULcfpBCmdaYN6MR+rakpquodwmU=;
        b=pu1NGQ8ZDRhHCIJtaljolMQP5BqfPB2s0+A5t/FExGrbU+1hEqEJjg96lAbyAeHKdz
         tgZ0U3XKIEhf9AIdudwKRiqeuCYaaMdQMo7CFOAlvswxuU+MbEn15BcbyW5lqZewnPQ3
         BF+7ulRutbLIGQjfVS8UqkZdF0KAwPew0Ro8ydI3KHYGF8Cnhp5z0zb+UmoPxvZSMi9i
         mhLd0smZW2m4VGFwgdb1BnJHTaA0HwN+g6e65ie/rfZx3+yVnUWqD7sa5SxLJNsye07c
         jDkTIfRvXYbG0Ng83+RAjnF6OM1A5kbarU3Ap4t4E92kzYrhqBLdfEqaZOBBNITRK8HP
         1SiQ==
X-Forwarded-Encrypted: i=1; AJvYcCVB6Xske4bTYUXNr5czm7LYizPXQqMzxhRoCv0kNWnPNj6EEdCfPTUnHLRPfi5aVW0wRO6HLR83dREFK144lwGYy0N6shFYBGQYNg==
X-Gm-Message-State: AOJu0Yx+Mzd4H3YDDZa8Ntwq4XJOYq5jAkvoHoQACg+VPMxwbO2Zt7wk
	wzaNViM5sfegD9oGNtSY0LQW5GZhWEvMhNofQTGIY6cYTdyATkohPs2EFf69SO4=
X-Google-Smtp-Source: AGHT+IGpsgfHeGU47OML9OlpyOLM1Fu89w8RTY/kpzyJSvnqOjqxI7tIAWzXykio3VNUfhS0z6TjLg==
X-Received: by 2002:a2e:9547:0:b0:2d6:c59e:37bd with SMTP id t7-20020a2e9547000000b002d6c59e37bdmr6422086ljh.3.1714403189917;
        Mon, 29 Apr 2024 08:06:29 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:2fec:d20:2b60:e334])
        by smtp.gmail.com with ESMTPSA id l23-20020a05600c1d1700b00418f99170f2sm39646638wms.32.2024.04.29.08.06.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 08:06:29 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Anup Patel <anup@brainfault.org>,
	Shuah Khan <shuah@kernel.org>
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Atish Patra <atishp@atishpatra.org>,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-kselftest@vger.kernel.org
Subject: [PATCH v4 00/11] Add support for a few Zc* extensions as well as Zcmop
Date: Mon, 29 Apr 2024 17:04:53 +0200
Message-ID: <20240429150553.625165-1-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add support for (yet again) more RVA23U64 missing extensions. Add
support for Zcmop, Zca, Zcf, Zcd and Zcb extensions isa string parsing,
hwprobe and kvm support. Zce, Zcmt and Zcmp extensions have been left
out since they target microcontrollers/embedded CPUs and are not needed
by RVA23U64.

Since Zc* extensions states that C implies Zca, Zcf (if F and RV32), Zcd
(if D), this series modifies the way ISA string is parsed and now does
it in two phases. First one parses the string and the second one
validates it for the final ISA description.

This series is based on the Zimop one [1]. An additional fix [2] should
be applied to correctly test that series.

Link: https://lore.kernel.org/linux-riscv/20240404103254.1752834-1-cleger@rivosinc.com/ [1]
Link: https://lore.kernel.org/all/20240409143839.558784-1-cleger@rivosinc.com/ [2]

---

v4:
 - Modify validate() callbacks to return an 0, -EPROBEDEFER or another
   error.
 - v3: https://lore.kernel.org/all/20240423124326.2532796-1-cleger@rivosinc.com/

v3:
 - Fix typo "exists" -> "exist"
 - Remove C implies Zca, Zcd, Zcf, dt-bindings rules
 - Rework ISA string resolver to handle dependencies
 - v2: https://lore.kernel.org/all/20240418124300.1387978-1-cleger@rivosinc.com/

v2:
 - Add Zc* dependencies validation in dt-bindings
 - v1: https://lore.kernel.org/lkml/20240410091106.749233-1-cleger@rivosinc.com/

Clément Léger (11):
  dt-bindings: riscv: add Zca, Zcf, Zcd and Zcb ISA extension
    description
  riscv: add ISA extensions validation
  riscv: add ISA parsing for Zca, Zcf, Zcd and Zcb
  riscv: hwprobe: export Zca, Zcf, Zcd and Zcb ISA extensions
  RISC-V: KVM: Allow Zca, Zcf, Zcd and Zcb extensions for Guest/VM
  KVM: riscv: selftests: Add some Zc* extensions to get-reg-list test
  dt-bindings: riscv: add Zcmop ISA extension description
  riscv: add ISA extension parsing for Zcmop
  riscv: hwprobe: export Zcmop ISA extension
  RISC-V: KVM: Allow Zcmop extension for Guest/VM
  KVM: riscv: selftests: Add Zcmop extension to get-reg-list test

 Documentation/arch/riscv/hwprobe.rst          |  24 ++
 .../devicetree/bindings/riscv/extensions.yaml |  90 ++++++
 arch/riscv/include/asm/cpufeature.h           |   1 +
 arch/riscv/include/asm/hwcap.h                |   5 +
 arch/riscv/include/uapi/asm/hwprobe.h         |   5 +
 arch/riscv/include/uapi/asm/kvm.h             |   5 +
 arch/riscv/kernel/cpufeature.c                | 259 ++++++++++++------
 arch/riscv/kernel/sys_hwprobe.c               |   5 +
 arch/riscv/kvm/vcpu_onereg.c                  |  10 +
 .../selftests/kvm/riscv/get-reg-list.c        |  20 ++
 10 files changed, 337 insertions(+), 87 deletions(-)

-- 
2.43.0


