Return-Path: <devicetree+bounces-77660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3688D90F9E3
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 01:57:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB113283AA1
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 23:57:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D132C15665A;
	Wed, 19 Jun 2024 23:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="oYSLOI/7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444A615B15F
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 23:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718841449; cv=none; b=Eg44luyDYxT1B/3awqSsr7lQoyjAKYA4Jod5H3VrBE8GdgUY392Tnr4QP7hPG9A98lkp4RN+m0kKAUulreiiNvc/qnsz8wyNxOsYNtnKLIBDNi9AK7SqM7MK8zcvVL729BjmqSBc+nLHxsrS8fyAlMtTCJfWrEEYTvkJqxjsqB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718841449; c=relaxed/simple;
	bh=SQ74wkUYiydiV4kKCgWwaFdmfmpGnTrvzoti3qC9ofs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=bnkvGMdibhtb7KRNEBvMAWdECeeg2QX0+Uu8hslBToOFZdOTxeL98DJ7FE5cOgTihARmXgjmpDg+Ro4TWcDlMlZSG8zyTAhDEv0cvcW/ey8bWnolj1OijdnjwQF4HbdawT3oTc/CHcYlk4r+Ymcywmq21+QuB0XSYPPMytpRSCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=oYSLOI/7; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-7041ed475acso364049b3a.2
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 16:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718841446; x=1719446246; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MY9gNtYxIY7P55WK3l92dSyii7grPULlgAdQCTwrkwM=;
        b=oYSLOI/7+QIrImlbWmNS8xD8+NM9ip2qxfyVvj4CslT92VQtnFRgkyKIjfEvITkqoL
         ju3uGcCyLz0YxM0Mo5wFzDVFSRhPYjEtuBmNPhyBovQ0GIEobQfNdWhsa/dutjzJBwSP
         XLQTPYbF8EhSzMKSSg4e3a3C/OzlCBfeT3tKlF+8GRhO4SacSfbgFHXSX/jgDM2DlA7L
         JagRdTVRzxXE6ydqPHAXaPww9m9gZk8Dw7D55uJyMYT7SuDTwXD8/oB02iN1qib8vbz5
         YkN/exP9q0vdSgQIzQygS6H8Og7xo1llB8mfsdkOxB0KRXCmNN2AAH4RQ0XF5H+CruIe
         igKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718841446; x=1719446246;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MY9gNtYxIY7P55WK3l92dSyii7grPULlgAdQCTwrkwM=;
        b=wbqj/M61fM5YJQBrgaqvtJwjPIJS/cVP/QLOzWh6XBaygoiq7zM6jdHWSeBzPkdKRu
         vEMrTZj6j3mw/zyGNPXzhx0ngDpRB6cZY5z7xrd9Ag0L2VPOgNuEBmqk3lEzWQO/ZiC+
         FI2Giy97SAe/pF22H4DgRzrxmvSqm5DSXJa0zckBz1oH7Hm8nKPWGe/N3PxmMiCprFBd
         G0hIZN/s82rSa1PTRhr7a1yfdfCOXM0fmx+tOQmMmem/HN6Ub7C3ihT8pa1TG1pbbyRl
         nHAHR6NSWThWe8lSdWPDMvlbSA6V4rzyoiWR1KQ3SbZGqacCeGo0B+74jt/Ndxn98lDg
         rYKA==
X-Forwarded-Encrypted: i=1; AJvYcCUgyrrUGmXxdaaoHxdlFxWkenbD/+d4ikTGC7fMhqKjllBmkpWphuFUxGgSyvB6zzNLD+htUBssXaSZfZZhw8nOOXCbPmduGBmYdQ==
X-Gm-Message-State: AOJu0YwtwvMcTZGi7g88knMzgCBZxCvSZSDDrFcpbi/VUgfcbpLu0CIu
	TMeH8erCtyRanG8vuXh4n7BEbM73f3Pzi039HK+FWk5VY8IWiaVAwGC37eJhUDM=
X-Google-Smtp-Source: AGHT+IGbUoAHmp9L8GOOQzzT1+2vkfoDoVr/n3oI76ok2wfPdsYHdImgZafKQcKFXAxghbhbD+3Plg==
X-Received: by 2002:a05:6a20:a992:b0:1b2:3998:404 with SMTP id adf61e73a8af0-1bcbb421d05mr3401223637.4.1718841446346;
        Wed, 19 Jun 2024 16:57:26 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855e70ae6sm123620745ad.71.2024.06.19.16.57.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 16:57:25 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Subject: [PATCH v3 00/13] riscv: Add support for xtheadvector
Date: Wed, 19 Jun 2024 16:57:13 -0700
Message-Id: <20240619-xtheadvector-v3-0-bff39eb9668e@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFlwc2YC/12OzQ7CIBAGX8VwFgMs/cGT72E8IGztHiwGGlLT9
 N2l9aI9zpedyc4sYSRM7HyYWcRMicJQAI4H5no7PJCTL8yUUFpUIPg09mh9RjeGyFsAD142d62
 AFeUVsaNpy11vhXtK5ey91bNc12+oFuY/lCUXHDqsjPRNJ4W5RMoh0eBOLjzZ2srqx5e7R7Iqv
 mmsbmsJ1td65y/L8gFE8XcF6wAAAA==
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Jonathan Corbet <corbet@lwn.net>, 
 Shuah Khan <shuah@kernel.org>, Guo Ren <guoren@kernel.org>, 
 Evan Green <evan@rivosinc.com>, Andy Chiu <andy.chiu@sifive.com>, 
 Jessica Clarke <jrtc27@jrtc27.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>, 
 Conor Dooley <conor.dooley@microchip.com>, Heiko Stuebner <heiko@sntech.de>, 
 Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1718841444; l=6325;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=SQ74wkUYiydiV4kKCgWwaFdmfmpGnTrvzoti3qC9ofs=;
 b=KgHCREa5GKguJPmSCNpSuG7+xp+IBGDhrMjH0sTJkp2zmQxlPYGDADJvJkEkfs7A1i5IVDj3W
 g3b93uhuYWWD7oMxWTko3IuKLdNMeTsCokouiED8IGOXGzhG3ggMuPZ
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

xtheadvector is a custom extension that is based upon riscv vector
version 0.7.1 [1]. All of the vector routines have been modified to
support this alternative vector version based upon whether xtheadvector
was determined to be supported at boot.

vlenb is not supported on the existing xtheadvector hardware, so a
devicetree property thead,vlenb is added to provide the vlenb to Linux.

There is a new hwprobe key RISCV_HWPROBE_KEY_VENDOR_EXT_THEAD_0 that is
used to request which thead vendor extensions are supported on the
current platform. This allows future vendors to allocate hwprobe keys
for their vendor.

Support for xtheadvector is also added to the vector kselftests.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>

[1] https://github.com/T-head-Semi/thead-extension-spec/blob/95358cb2cca9489361c61d335e03d3134b14133f/xtheadvector.adoc

---
This series is a continuation of a different series that was fragmented
into two other series in an attempt to get part of it merged in the 6.10
merge window. The split-off series did not get merged due to a NAK on
the series that added the generic riscv,vlenb devicetree entry. This
series has converted riscv,vlenb to thead,vlenb to remedy this issue.

The original series is titled "riscv: Support vendor extensions and
xtheadvector" [3].

The series titled "riscv: Extend cpufeature.c to detect vendor
extensions" is still under development and this series is based on that
series! [4]

I have tested this with an Allwinner Nezha board. I ran into issues
booting the board after 6.9-rc1 so I applied these patches to 6.8. There
are a couple of minor merge conflicts that do arrise when doing that, so
please let me know if you have been able to boot this board with a 6.9
kernel. I used SkiffOS [1] to manage building the image, but upgraded
the U-Boot version to Samuel Holland's more up-to-date version [2] and
changed out the device tree used by U-Boot with the device trees that
are present in upstream linux and this series. Thank you Samuel for all
of the work you did to make this task possible.

[1] https://github.com/skiffos/SkiffOS/tree/master/configs/allwinner/nezha
[2] https://github.com/smaeul/u-boot/commit/2e89b706f5c956a70c989cd31665f1429e9a0b48
[3] https://lore.kernel.org/all/20240503-dev-charlie-support_thead_vector_6_9-v6-0-cb7624e65d82@rivosinc.com/
[4] https://lore.kernel.org/linux-riscv/20240609-support_vendor_extensions-v2-0-9a43f1fdcbb9@rivosinc.com/

---
Changes in v3:
- Add back Heiko's signed-off-by (Conor)
- Mark RISCV_HWPROBE_KEY_VENDOR_EXT_THEAD_0 as a bitmask
- Link to v2: https://lore.kernel.org/r/20240610-xtheadvector-v2-0-97a48613ad64@rivosinc.com

Changes in v2:
- Removed extraneous references to "riscv,vlenb" (Jess)
- Moved declaration of "thead,vlenb" into cpus.yaml and added
  restriction that it's only applicable to thead cores (Conor)
- Check CONFIG_RISCV_ISA_XTHEADVECTOR instead of CONFIG_RISCV_ISA_V for
  thead,vlenb (Jess)
- Fix naming of hwprobe variables (Evan)
- Link to v1: https://lore.kernel.org/r/20240609-xtheadvector-v1-0-3fe591d7f109@rivosinc.com

---
Charlie Jenkins (12):
      dt-bindings: riscv: Add xtheadvector ISA extension description
      dt-bindings: cpus: add a thead vlen register length property
      riscv: dts: allwinner: Add xtheadvector to the D1/D1s devicetree
      riscv: Add thead and xtheadvector as a vendor extension
      riscv: vector: Use vlenb from DT for thead
      riscv: csr: Add CSR encodings for VCSR_VXRM/VCSR_VXSAT
      riscv: Add xtheadvector instruction definitions
      riscv: vector: Support xtheadvector save/restore
      riscv: hwprobe: Add thead vendor extension probing
      riscv: hwprobe: Document thead vendor extensions and xtheadvector extension
      selftests: riscv: Fix vector tests
      selftests: riscv: Support xtheadvector in vector tests

Heiko Stuebner (1):
      RISC-V: define the elements of the VCSR vector CSR

 Documentation/arch/riscv/hwprobe.rst               |  10 +
 Documentation/devicetree/bindings/riscv/cpus.yaml  |  19 ++
 .../devicetree/bindings/riscv/extensions.yaml      |  10 +
 arch/riscv/Kconfig.vendor                          |  26 ++
 arch/riscv/boot/dts/allwinner/sun20i-d1s.dtsi      |   3 +-
 arch/riscv/include/asm/cpufeature.h                |   2 +
 arch/riscv/include/asm/csr.h                       |  13 +
 arch/riscv/include/asm/hwprobe.h                   |   5 +-
 arch/riscv/include/asm/switch_to.h                 |   2 +-
 arch/riscv/include/asm/vector.h                    | 249 +++++++++++++----
 arch/riscv/include/asm/vendor_extensions/thead.h   |  42 +++
 .../include/asm/vendor_extensions/thead_hwprobe.h  |  18 ++
 .../include/asm/vendor_extensions/vendor_hwprobe.h |  37 +++
 arch/riscv/include/uapi/asm/hwprobe.h              |   3 +-
 arch/riscv/include/uapi/asm/vendor/thead.h         |   3 +
 arch/riscv/kernel/cpufeature.c                     |  51 +++-
 arch/riscv/kernel/kernel_mode_vector.c             |   8 +-
 arch/riscv/kernel/process.c                        |   4 +-
 arch/riscv/kernel/signal.c                         |   6 +-
 arch/riscv/kernel/sys_hwprobe.c                    |   5 +
 arch/riscv/kernel/vector.c                         |  25 +-
 arch/riscv/kernel/vendor_extensions.c              |  10 +
 arch/riscv/kernel/vendor_extensions/Makefile       |   2 +
 arch/riscv/kernel/vendor_extensions/thead.c        |  18 ++
 .../riscv/kernel/vendor_extensions/thead_hwprobe.c |  19 ++
 tools/testing/selftests/riscv/vector/.gitignore    |   3 +-
 tools/testing/selftests/riscv/vector/Makefile      |  17 +-
 .../selftests/riscv/vector/v_exec_initval_nolibc.c |  93 +++++++
 tools/testing/selftests/riscv/vector/v_helpers.c   |  67 +++++
 tools/testing/selftests/riscv/vector/v_helpers.h   |   7 +
 tools/testing/selftests/riscv/vector/v_initval.c   |  22 ++
 .../selftests/riscv/vector/v_initval_nolibc.c      |  68 -----
 .../selftests/riscv/vector/vstate_exec_nolibc.c    |  20 +-
 .../testing/selftests/riscv/vector/vstate_prctl.c  | 295 ++++++++++++---------
 34 files changed, 911 insertions(+), 271 deletions(-)
---
base-commit: 11cc01d4d2af304b7288251aad7e03315db8dffc
change-id: 20240530-xtheadvector-833d3d17b423
-- 
- Charlie


