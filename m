Return-Path: <devicetree+bounces-177815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 67664AB9465
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 05:09:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79EF63B58EB
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 03:07:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B831522F3AB;
	Fri, 16 May 2025 03:05:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="CzuL0Q9J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2047B22F74A
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 03:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747364739; cv=none; b=J6Joed0TNngCedV6MAuCMt5k2FJKpqzcMr/9l66xqa9Sn7sBVg75oiT384e1mkYFXKR+Bhk2LttfcDATblUVrs71h4atFiQs5km2gfMAj3C3TuwKt1zwjibaoBp555WERgTUlko6in4jQMbVDiIs7zLinIP2NZMwgSxScFrfUjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747364739; c=relaxed/simple;
	bh=N+R7MYI7KzIypIdB3/ZwoQxKrlb5u9Y8qGMUtdhagXo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=VcV5bSLr5ARNrNMfnREKUnLMFoquRZ22VsdmPR+rbfYP1x1sYCK2VnL07CzbBgitF2G95+2zZAfCuqPPTVHTl4EcWX4T2kdDYpuuutW1fD3qC5i+kGAOQ/OmfyLrIKUPNNfOo9iml8/Kg2sqN9wDq6TzOKXFmuXKGbE3Mcf0V4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=CzuL0Q9J; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-af523f4511fso1205562a12.0
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 20:05:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1747364736; x=1747969536; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fIGyh9W0JvoxjrKUR0AkLZUbqALah2Rv2i60UdP+uX4=;
        b=CzuL0Q9JkMa1eu4YDOFf7aPRU37LAwF+IHh0EOd4E32A3oRG2B9Lz+DyePGZ5sP5kY
         AgJgFAc361iHCZ1wc8wYmenPdQW3yrA7q2O3jld5Wx5M9pKcEsCf8wUIqSgFPgFv0VCO
         ZGAsJGS36tYY1UBBJ+9FLk7LDktDPc8WXfYqu/SKAc6tMzrevpDpxhSDkS0fESjqIz5c
         Vv9jBdZ6+En9ITIEGTbLFhvSvt8ER0DYvQ2Q0P+KrdDp2/18MDSxcQaLjq8dU4y6Ztwh
         b1dxVW0WLctYdgaYEEfab+/UkIarklqkXQhwXrnUXTYaDGp8QXUv4oWNuU/ZKInJGoC1
         MAKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747364736; x=1747969536;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fIGyh9W0JvoxjrKUR0AkLZUbqALah2Rv2i60UdP+uX4=;
        b=X8HzG3UNEzH1ofcpGGMmoSS2LYs3P948Z7bLlNzka0O+dQTc4LkXsGlJF85vLcjfWB
         8plDRBPe4udrm4t2DdD1ejYBC2Su3zHeb8HjCrlQcV87n1kOJWpji9AkiVqj1ZBdtTAi
         8kS4wjShzLv4NsJw5dB8cgJuy9Z2tIwKCx0cT8mO5RN6fuAVnOJr8/PACWUIG2roS+uP
         yMDQG40uo168Ax9p80OVA25LvExksrmklmivWsARFS8OE/KtefaCUal8TTQpAdQKtihG
         s4HoDjTK4eh9N0l0m8XR+K7UZ+2OKS4Zmgn7RN+4rHLpb7QkHvgThkCKAvKig003LZ4Y
         JIbg==
X-Forwarded-Encrypted: i=1; AJvYcCUmp36cObX9vOkmC2YEDpDj0UP9kom0HoVeyDJT3azxdyx7DpWmfVsre63Zr0zpktNkCdqq10iTS+rw@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7LClNaF9tFIp1J+dH7i5RoLt1tCDvj85D+qK0Meifu5jOC4sf
	Qq142fb7VveseE89iF5FOOP2EjLFrOy8nqEx3cBL/LBcBKzL+BhEVhXWuCZwabpubC8=
X-Gm-Gg: ASbGnct4sxN9EUtfEjFir+Ew851EvN21vk4emJ+2oj+eYe1IR7AHSaMVFV+tRhuPWHC
	tQIljoR56cLMChNi8t3AtsCLmjiCSYaneQQBX4Ftt3Bpcvz3mTyOgkZXOOOH+RDKVOYfTWIYc4Q
	h9PEpyfX+CbK27v0Pdd8VsXbjPX5kvLcjT+xXHr93Pppmc9e/B5oFP9FVedKyQRbEUl64Q9KD7c
	XIQwWbBvBSKRXHAXgEQSkoFI/kfOTEXPmV/8pwqE86Z3/tqECfcC/ZQuQ5n+42k7lgZ/x1rDsnJ
	enQyLyxHflERqR6dhcN+DyKHSdJ9dgg8L1TnGo/PgocidxXL0/GWkejBwbRYfZYacze1BOOUunG
	kBK8pe5lfSwM=
X-Google-Smtp-Source: AGHT+IFV+4ue4pHbZ3acCvgAnlMAR5bRIjj1Ic0kd5kGB0kSO79yQHTYUTk7y+Xm+spnNhWWuTTQiQ==
X-Received: by 2002:a17:902:c951:b0:22e:421b:49ad with SMTP id d9443c01a7336-231d454e4bamr23708045ad.46.1747364736303;
        Thu, 15 May 2025 20:05:36 -0700 (PDT)
Received: from cyan-mbp.internal.sifive.com ([136.226.240.168])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4ebb084sm4804405ad.201.2025.05.15.20.05.33
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 15 May 2025 20:05:35 -0700 (PDT)
From: Cyan Yang <cyan.yang@sifive.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	corbet@lwn.net,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	samuel.holland@sifive.com
Cc: linux-doc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Cyan Yang <cyan.yang@sifive.com>
Subject: [PATCH v2 00/12] riscv: Add vendor extensions support for SiFive
Date: Fri, 16 May 2025 11:02:58 +0800
Message-Id: <20250516030310.16950-1-cyan.yang@sifive.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch set adds four vendor-specific ISA extensions from SiFive:
"xsfvqmaccdod", "xsfvqmaccqoq", "xsfvfnrclipxfqf", and "xsfvfwmaccqqq".

Additionally, a new hwprobe key, RISCV_HWPROBE_KEY_VENDOR_EXT_SIFIVE_0,
has been added to query which SiFive vendor extensions are supported on
the current platform.

Signed-off-by: Cyan Yang <cyan.yang@sifive.com>

---
Changes in v2:
 - Fixed a sparse warning
 - Link to v1: https://lore.kernel.org/r/20250418053239.4351-1-cyan.yang@sifive.com

---
Cyan Yang (12):
  dt-bindings: riscv: Add xsfvqmaccdod and xsfvqmaccqoq ISA extension
    description
  riscv: Add SiFive xsfvqmaccdod and xsfvqmaccqoq vendor extensions
  riscv: hwprobe: Document SiFive xsfvqmaccdod and xsfvqmaccqoq vendor
    extensions
  riscv: hwprobe: Add SiFive vendor extension support and probe for
    xsfqmaccdod and xsfqmaccqoq
  dt-bindings: riscv: Add xsfvfnrclipxfqf ISA extension description
  riscv: Add SiFive xsfvfnrclipxfqf vendor extension
  riscv: hwprobe: Document SiFive xsfvfnrclipxfqf vendor extension
  riscv: hwprobe: Add SiFive xsfvfnrclipxfqf vendor extension
  dt-bindings: riscv: Add xsfvfwmaccqqq ISA extension description
  riscv: Add SiFive xsfvfwmaccqqq vendor extension
  riscv: hwprobe: Document SiFive xsfvfwmaccqqq vendor extension
  riscv: hwprobe: Add SiFive xsfvfwmaccqqq vendor extension

 Documentation/arch/riscv/hwprobe.rst          | 22 ++++++++++++++++
 .../devicetree/bindings/riscv/extensions.yaml | 25 +++++++++++++++++++
 arch/riscv/Kconfig.vendor                     | 13 ++++++++++
 arch/riscv/include/asm/hwprobe.h              |  3 ++-
 .../include/asm/vendor_extensions/sifive.h    | 16 ++++++++++++
 .../asm/vendor_extensions/sifive_hwprobe.h    | 19 ++++++++++++++
 arch/riscv/include/uapi/asm/hwprobe.h         |  1 +
 arch/riscv/include/uapi/asm/vendor/sifive.h   |  6 +++++
 arch/riscv/kernel/sys_hwprobe.c               |  5 ++++
 arch/riscv/kernel/vendor_extensions.c         | 10 ++++++++
 arch/riscv/kernel/vendor_extensions/Makefile  |  2 ++
 arch/riscv/kernel/vendor_extensions/sifive.c  | 21 ++++++++++++++++
 .../kernel/vendor_extensions/sifive_hwprobe.c | 22 ++++++++++++++++
 13 files changed, 164 insertions(+), 1 deletion(-)
 create mode 100644 arch/riscv/include/asm/vendor_extensions/sifive.h
 create mode 100644 arch/riscv/include/asm/vendor_extensions/sifive_hwprobe.h
 create mode 100644 arch/riscv/include/uapi/asm/vendor/sifive.h
 create mode 100644 arch/riscv/kernel/vendor_extensions/sifive.c
 create mode 100644 arch/riscv/kernel/vendor_extensions/sifive_hwprobe.c

-- 
2.39.5 (Apple Git-154)


