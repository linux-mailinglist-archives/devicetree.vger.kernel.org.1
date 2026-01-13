Return-Path: <devicetree+bounces-254305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CE9D17142
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 08:47:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A2233019182
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 07:46:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0735F30F922;
	Tue, 13 Jan 2026 07:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="On/Uzie+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD3A2E093A
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 07:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768290375; cv=none; b=MdHk98lXX9ujTDp8eIaZShH4oCuvD30DiN0DwXHQegpQ1lgPc0bTXkEvisZXLkN1+4uQcFK/JmBHDRGXzGWwNp0jDRMopHOf28qvSvp2d+4QM4NQyapqqKBems2IEfoq/JubTiXa9REpUYglTBlCSNorj51qTVPJWH0dbqAMfw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768290375; c=relaxed/simple;
	bh=G/wZDvuQOJ/sIgMSogrhCI0LOUdTTDMoWlE7v4CDGBw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=TZ3tjWEAEEw+agfzOMVmwUPV8o3PAG1SP5Gr8zPvu3aYq7JD7FzqVnOutDgV5Lf5ofEeFZnb4Z/991+8xq4HEH2xnuZjwfsmuXXlNwAmfHdcAlK8G1yiRThg56hdAUBtdj0p3LZb7mya1CgejfF95bUwQJIQsgZqX73lYmbWb7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=On/Uzie+; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2a3e89aa5d0so56452095ad.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 23:46:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768290371; x=1768895171; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sVxSFr5roBVYFLRhnAgNNp/8sMao7GowEf9CUckDDWw=;
        b=On/Uzie+HCknzvJKw6z4ikjUIKR+F4aes6QTrWNxTQ61gXuF/H+G00dZIJUDAOEWjD
         WDSbuVEYNMP0P1MXUbgmG/lnVDwekQWHQ2+Lg5wtW7EaTD65DK3HulnGY5R1tMT16C3d
         SggF/SREUlGSAfMDLhdhYuGJPTUMjLj0gGIenP+CersPCCl4U1CbskPUmQrdztYvCaLM
         uCW9s9fn8dojVdbk/q48zT4KkFkMcm2J3W0wX9vcEgZOCDXGIQEeiOA62W6p/McNXiYQ
         qTA7GnnZjrcFegjBejoy50MhPUOmcyfk8Jzq9xgotbmVMwQr5qyvPQg/0vnpKyhZDZQ5
         n5BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768290371; x=1768895171;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sVxSFr5roBVYFLRhnAgNNp/8sMao7GowEf9CUckDDWw=;
        b=p8QaL4JBfWy+3PWaZk8grmT9V0bZKwtpi84+k8tot30VipR/X2QeMImXFDSZR7osoQ
         DF/ywFLp/CsamMIFLZ8aseEIpmnsB4pvjutENDTLP5FoLD2zisv2+kmpYqrW5mSdxEIK
         1kfdJ8SUF56to4QuyyDu+AUcY6NwTBW/zKDqCdX8uv6L02a5lYnjTYd35d4DV2qZmrif
         t3gVFr5Yj/upR98NENdatiAHMl5MioldcjpOVFP2rI9Jays1MSZUFmzzgVj/UvcDfSik
         /QlPAcLGk258EcRRVe03a3tGOJ1VcIR66CuTCAgVHB5fAZFxUg/FaPVXuzw6TopTk25N
         nk1g==
X-Forwarded-Encrypted: i=1; AJvYcCVb+zMHp+U5UlmC8Wwesc8ADRImLm9AcEHk/5xLJxeuEnQLCrD8I4ADNYtK/NkTWJkX7vAQc6fWMBcc@vger.kernel.org
X-Gm-Message-State: AOJu0YzBiAUq9y95A2y8DC7Xxgc8zofTY+xOWakc3CPjDdaxHGworIpd
	4JBXaVvOD8/SpStdvjrSHsIc6vOpvGuFdoZZuxpMMPCjLEkgZUGfJ2moj3cJtU636uM=
X-Gm-Gg: AY/fxX5QaJro1GvktJMoOeSjm7afPzpjSpoc1B229rHB59RhzpCCWXT4nNehbesrcTR
	0i8ufBcFbQr9/1AsC2G5YoSMBep3E576EWdS3K77folYAIYvV+BUfnuC5g0YC1VODv+Tr6B2M76
	AxKEoiNgMnCepHhhBtmQFfHe3RaoyhrzczXzOnXwoc2ZfHHaZ0ue80T4cJw0DSzi0XY+9t6+g3r
	A/i2mYKoagwouiBwldSz9TxzWMDAfA4HYB27JXUqaIy/JfZ2Nghwaa6xz2CeigVdbl6G7vUdpfz
	7aVMm5kN/0V7jeB3nlRHHN0BKE+GLR0T5uyxN9s/7TsEqB5+io5kJZNqIZrFvvk/CFndtlIZNsx
	mOn155YS+KvlsEdLF8c8eOoknSbdle3IhYvLX/1UAXYR8hZkdRI9o4jXYpCl3K5vKP/pNc93B2o
	/ViIsHIhKr4Oten+QK6Sdb7yRhDLCPLUwfNhMp9A/U4J4EdEM1hNJFow==
X-Google-Smtp-Source: AGHT+IHbHcGmc6lMn+EQWcpZEtvrjvUz6htmK3Tb0lxfDS12q7Bh+oS5FfObSwVuTxLhekVSu4CkJg==
X-Received: by 2002:a17:903:1a6b:b0:2a0:de4f:ca7 with SMTP id d9443c01a7336-2a3ee41516dmr200714135ad.1.1768290371623;
        Mon, 12 Jan 2026 23:46:11 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cd4bd8sm190956165ad.102.2026.01.12.23.46.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 23:46:11 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Subject: [PATCH 0/2] riscv: dts: Add "b" ISA extension to existing
 devicetrees
Date: Tue, 13 Jan 2026 15:45:52 +0800
Message-Id: <20260113-adding-b-dtsi-v1-0-22d6e55d19df@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADD4ZWkC/y3NwQ6CMAyA4VchO1uzMRQhxvgehsNgHTaGoeskJ
 oR3d4LHv2m/zoIxELKos1kEnIhp9CnULhPd3fgegWxqkcv8KJXSYKwl30MLNjKBKk6lKg5aO1m
 KdPMM6Oizerdm64Cvd2LjNhQDMpuVrbPzX5Xw0NAapi6pMBUgwRZV7rTR0jlzDcQdRxP23Thcf
 m/SLkKKgWKdefxE2CRZiWZZvrj2++7VAAAA
X-Change-ID: 20260113-adding-b-dtsi-148714533f07
To: Jonathan Corbet <corbet@lwn.net>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Conor Dooley <conor.dooley@microchip.com>, 
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
 Yixun Lan <dlan@gentoo.org>
Cc: Palmer Dabbelt <palmer@rivosinc.com>, 
 Junhui Liu <junhui.liu@pigmoral.tech>, linux-doc@vger.kernel.org, 
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, sophgo@lists.linux.dev, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2

The RISC-V "b" (Bit-manipulation) extension was ratified in April 2024,
much later than its component extensions zba/zbb/zbs (June 2021). Recent
updates to the device tree bindings [2] enforce that when all three
component extensions are present, "b" must also be specified. Related
discussion can also be found in [1].

Patch 1 clarifies the ISA spec version for canonical ordering in uabi.rst.
It is a trivial update, but can help readers reference the correct
document version.

Patch 2 adds "b" after "c" in 3 device tree files (anlogic, sophgo and
spacemit), fixing the related dtbs_check warnings.

This patchset is based on top of linux-next, tag: next-20260109, and
depends on [2].

Link: https://lore.kernel.org/all/20251230-imprison-sleet-6b5a1e26d34b@spud/ [1]
Link: https://lore.kernel.org/all/20260110-k3-basic-dt-v4-0-d492f3a30ffa@riscstar.com/ [2]

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
Guodong Xu (2):
      Documentation: riscv: uabi: Clarify ISA spec version for canonical order
      riscv: dts: Add "b" ISA extension to existing devicetrees

 Documentation/arch/riscv/uabi.rst           |   4 +-
 arch/riscv/boot/dts/anlogic/dr1v90.dtsi     |   5 +-
 arch/riscv/boot/dts/sophgo/sg2044-cpus.dtsi | 256 ++++++++++++++--------------
 arch/riscv/boot/dts/spacemit/k1.dtsi        |  32 ++--
 4 files changed, 150 insertions(+), 147 deletions(-)
---
base-commit: 31d167f54de93f14fa8e4bc6cbc4adaf7019fd94
change-id: 20260113-adding-b-dtsi-148714533f07
prerequisite-message-id: <20260110-k3-basic-dt-v4-0-d492f3a30ffa@riscstar.com>
prerequisite-patch-id: 0c859b4d131b3360875c795c6148c6176b55fb91
prerequisite-patch-id: 2ed98dc1ab0f5ed923cc252415c345dc8caf6f17
prerequisite-patch-id: 1be1a031763fac029076a768f012af31e455be66
prerequisite-patch-id: 21bb8387c946e050910440e7a7622305d46d946d
prerequisite-patch-id: f3bdc2c74b230663710086bd770a755d56cb8b9c
prerequisite-patch-id: 1f162c02f8bdb5bbc8ce52ead4fcb76258f5c2b9
prerequisite-patch-id: 76e1ff26c2f1fe4019cfa574942b568000e6ca1f
prerequisite-patch-id: 77ddc9e5dc85495adc803cdc605bdda2ddc7fa47
prerequisite-patch-id: a75c798383b46a14d40436357c769c3671184768
prerequisite-patch-id: 781fc10dcae2c38c84c25bee887ef7474786dd36
prerequisite-patch-id: 5be5d3e62aa73024bf9e1de6aad155be6d618f40

Best regards,
-- 
Guodong Xu <guodong@riscstar.com>


