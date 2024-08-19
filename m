Return-Path: <devicetree+bounces-94968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6EE957678
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 23:26:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13324285CF2
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 21:26:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FD5515A86A;
	Mon, 19 Aug 2024 21:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="GvzmeBqY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463E115956E
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 21:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724102774; cv=none; b=jGnRT0jOG3glPMtf6dK7kvnRfs7JKo+p8AvwT/Ri3sk1We5U+T4DG1tpUga5bizzBnnLuHaqpylc3qXZ1vEj45oI9sDWRSiPmBPUNAOVm+msqME/sd6geijMaF+MqoVA0+lyNRVypR1zcMelDQAtekH2VY4X/ielzd2R16RveYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724102774; c=relaxed/simple;
	bh=JLqoMip9XKjZebRJAwAYbMNLU8bRcSzSaKdnqlzivPg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=o4skghHI/X0n2MSJasOR1ZY8aISBphkoj9YcHy/gfx57ZglMho2OA/tCe/JY9llvCWzQ/6OjdD+dI5hEXeb5d50Dh0Zf7DSgtl6ILuWxujMpQqmz6EBHiDE5OkjSjapFZDVcRm/ob+UOGLeMNDYu7cBJs8W15GSkBjWS78T0maE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=GvzmeBqY; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2021c08b95cso16012035ad.0
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 14:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1724102771; x=1724707571; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S9OfmERMsrZNq8P77Fjit70ippOj9+Ox6UHTCVXlfO8=;
        b=GvzmeBqY3cMWA17ZmPWC9OIL0GGI3zUSuY6oVdUSi3UVmlytPNJfImS6+VI1Vcowp9
         NSzAixC+6cLobrRp3OEtl+JfP4FdUSKxbOTWydkC0u/rHM6q5FIixBo1Pl9iro9lPMQs
         IKEY2lZpv/z2q/hjWFyJYWzbbwfmXGAwYXcyI2aV+jRoGST8T5C18R9FbgEMNEcHoi/J
         S0QAtX1vwnv88S7dJ62r6d4ydfUde4nisoNsq4wRDJSWut95B//uPrQDabWiakDB5+UK
         Bc3RQUdvmWGHRh9k9skvyvKwhvfUJsa+TrOg3uMq1zAxBy9VxbjO2mQOJI4XYEm9fpgl
         sP3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724102771; x=1724707571;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S9OfmERMsrZNq8P77Fjit70ippOj9+Ox6UHTCVXlfO8=;
        b=VAlwPQdqkkoDVkqKio8EWzxkJosBnCL0bQuCVjWxk9IaVY1APUvu4Birp8mK/vypsW
         MtPojZNs5cdMiBQwMrubLr8slxQyczgIsOiH2Rks14xzL+N6U9gFEIYA6Zltw7dScvmb
         UAYqFlEtNuAEH5hVPDJpm4VcxjQFkRgb8DSBGk7gJNjeJtPkyji66u7a4uct+37dWMV7
         hy9Z+eaqMGfkaYhC/9acWIhC9gnwksYRbFQSpW2RXdJ1obTHVlOEjJzYoUK4t9yXse+c
         QGoUpr2PwYpsm6815zTC71ri0rcf5rw5NjTjJtT0rdVKhDIpf2w9BaIHOkIrKEZScnFh
         zXmA==
X-Forwarded-Encrypted: i=1; AJvYcCVVNySkwIP0dbxBHmy1V6Jr4stAd1BfeeQxd05Wut89g/8y79T39teiQB6RBCbQJ1/YB1IZSAQ9zV5YvunkyGNSlC0BQXbmVefC7w==
X-Gm-Message-State: AOJu0YwJbZPZ8PpsqGdbK96Z+uCHGvF8wUzPDFTNelzyrJCPmAmTMiU5
	oIuF2Mx/f1Cj/t1HMlttJQvLNaTLUlJK+4sO9P3OuTBz+WI38/vRp5ageRs0nJM=
X-Google-Smtp-Source: AGHT+IFWdnJy6AnvrDBgMG+5m5iERxX/4Mb0i6suVZLV9/Qrn/VsQrVH+R+ghxL/IzVHWzB07ePziQ==
X-Received: by 2002:a17:902:cecb:b0:202:562c:f3dd with SMTP id d9443c01a7336-2025ef684d9mr12058455ad.3.1724102771442;
        Mon, 19 Aug 2024 14:26:11 -0700 (PDT)
Received: from jesse-desktop.ba.rivosinc.com (pool-108-26-179-17.bstnma.fios.verizon.net. [108.26.179.17])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7c6b61e7bd1sm7004694a12.53.2024.08.19.14.26.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 14:26:11 -0700 (PDT)
From: Jesse Taube <jesse@rivosinc.com>
To: linux-riscv@lists.infradead.org
Cc: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	=?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Evan Green <evan@rivosinc.com>,
	Andrew Jones <ajones@ventanamicro.com>,
	Jesse Taube <jesse@rivosinc.com>,
	Charlie Jenkins <charlie@rivosinc.com>,
	Xiao Wang <xiao.w.wang@intel.com>,
	Andy Chiu <andy.chiu@sifive.com>,
	Eric Biggers <ebiggers@google.com>,
	Greentime Hu <greentime.hu@sifive.com>,
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@rivosinc.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Costa Shulyupin <costa.shul@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Baoquan He <bhe@redhat.com>,
	Anup Patel <apatel@ventanamicro.com>,
	Zong Li <zong.li@sifive.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ben Dooks <ben.dooks@codethink.co.uk>,
	Alexandre Ghiti <alexghiti@rivosinc.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Erick Archer <erick.archer@gmx.com>,
	Joel Granados <j.granados@samsung.com>,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v8 0/6] RISC-V: Detect and report speed of unaligned vector accesses
Date: Mon, 19 Aug 2024 17:25:59 -0400
Message-ID: <20240819212605.1837175-1-jesse@rivosinc.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Adds support for detecting and reporting the speed of unaligned vector
accesses on RISC-V CPUs. Adds vec_misaligned_speed key to the hwprobe
adds Zicclsm to cpufeature and fixes the check for scalar unaligned
emulated all CPUs. The vec_misaligned_speed key keeps the same format
as the scalar unaligned access speed key.

This set does not emulate unaligned vector accesses on CPUs that do not
support them. Only reports if userspace can run them and speed of
unaligned vector accesses if supported.

The Zicclsm is patches are no longer related to this set.

Changes in v6:
 Added ("RISC-V: Scalar unaligned access emulated on hotplug CPUs")

Changes in V8:
 Dropped Zicclsm
 s/RISCV_HWPROBE_VECTOR_MISALIGNED/RISCV_HWPROBE_MISALIGNED_VECTOR/g
  to match RISCV_HWPROBE_MISALIGNED_SCALAR_*
 Rebased onto palmer/fixes (32d5f7add080a936e28ab4142bfeea6b06999789)

Jesse Taube (6):
  RISC-V: Check scalar unaligned access on all CPUs
  RISC-V: Scalar unaligned access emulated on hotplug CPUs
  RISC-V: Replace RISCV_MISALIGNED with RISCV_SCALAR_MISALIGNED
  RISC-V: Detect unaligned vector accesses supported
  RISC-V: Report vector unaligned access speed hwprobe
  RISC-V: hwprobe: Document unaligned vector perf key

 Documentation/arch/riscv/hwprobe.rst       |  16 +++
 arch/riscv/Kconfig                         |  57 +++++++-
 arch/riscv/include/asm/cpufeature.h        |  10 +-
 arch/riscv/include/asm/entry-common.h      |  11 --
 arch/riscv/include/asm/hwprobe.h           |   2 +-
 arch/riscv/include/asm/vector.h            |   2 +
 arch/riscv/include/uapi/asm/hwprobe.h      |   5 +
 arch/riscv/kernel/Makefile                 |   3 +-
 arch/riscv/kernel/copy-unaligned.h         |   5 +
 arch/riscv/kernel/fpu.S                    |   4 +-
 arch/riscv/kernel/sys_hwprobe.c            |  41 ++++++
 arch/riscv/kernel/traps_misaligned.c       | 131 +++++++++++++++--
 arch/riscv/kernel/unaligned_access_speed.c | 156 +++++++++++++++++++--
 arch/riscv/kernel/vec-copy-unaligned.S     |  58 ++++++++
 arch/riscv/kernel/vector.c                 |   2 +-
 15 files changed, 465 insertions(+), 38 deletions(-)
 create mode 100644 arch/riscv/kernel/vec-copy-unaligned.S

base-commit: 32d5f7add080a936e28ab4142bfeea6b06999789
-- 
2.45.2


