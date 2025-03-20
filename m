Return-Path: <devicetree+bounces-159309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A2DA6A567
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 12:53:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E4FE8A05F7
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 11:50:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13548221F16;
	Thu, 20 Mar 2025 11:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b="kWXhecZu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00376f01.pphosted.com (mx07-00376f01.pphosted.com [185.132.180.163])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA57527701;
	Thu, 20 Mar 2025 11:49:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.180.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742471392; cv=none; b=bNllbm/fQRJuje6ZY5eQ0k5XoiDdEBZVFc89zPAcea3Wzr5xmM6uONfGimgJ/8hxWF0NRGrwNFsKqViK+FbOGkOg6UxffbrCSY+wFGTdrk68sY3mRVloceZ3x4DNVV+ZuxLcFv/Tr1LrJQyFyRgFvuCxc41MhnaALtFzv63HxBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742471392; c=relaxed/simple;
	bh=/drBQ+EY8V4wxyvc0vjx/Oygt083Vv7P4Uspc/5c/Ec=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=e3ZzCF1Ov41VjWXUQklq4AHsNYwP5G6Q0hV+ZJfJ6Vc+DE8z2UHwhAiwJIGfaDvbhxX6uwJ6wPV57PyGW1pun1zsI1xcQ5tGGiXSH7rVM0t94sbo5UMicYmzMqhhE19nkScPF0HXpl8+7bFdB4TQ/vIy9rrFS/LBU3763oMaYlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imgtec.com; spf=pass smtp.mailfrom=imgtec.com; dkim=pass (2048-bit key) header.d=imgtec.com header.i=@imgtec.com header.b=kWXhecZu; arc=none smtp.client-ip=185.132.180.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=imgtec.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=imgtec.com
Received: from pps.filterd (m0168889.ppops.net [127.0.0.1])
	by mx07-00376f01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52K7I9lO006831;
	Thu, 20 Mar 2025 11:32:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imgtec.com; h=cc
	:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=dk201812; bh=gaiSg/UQRCv0UtztXX61BGs
	qxfLRtDkme/gJHd1mFzw=; b=kWXhecZuImuBNAnH+ojcvthHCGqAx8kECQWWy4y
	TWzGT6hBFvYBpG8st0Wh83HfJ7RpUQ1uxdjyjdhfWelIrkAPIciCnQu4Ew8XxQEJ
	P4l4QADgapFolFpBzUaQBsBm+exa7f+8MCvUXgOdA6x6sCiDWQjWcIWRDPhMQrMk
	2qMYnj4uRdIqBRwT6L1OIHGdytnVz1P78X1DvXPlcxYkGpRFhOSB7WFm2lFAggid
	BzTM3qUrZFQrBUcDb054i4e31cukzZt5uNWJhvUS7gl9292d4GP5hJ154VFHM907
	1YAJTqx9IyqEcdEcZDp5+K4a9cwAaS73klEN/W/m1srXEOw==
Received: from hhmail05.hh.imgtec.org (83-244-153-141.cust-83.exponential-e.net [83.244.153.141])
	by mx07-00376f01.pphosted.com (PPS) with ESMTPS id 45d2h1kwg1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 20 Mar 2025 11:32:24 +0000 (GMT)
Received: from
 1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa
 (172.25.0.133) by HHMAIL05.hh.imgtec.org (10.100.10.120) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 20 Mar 2025 11:32:22 +0000
From: Matt Coster <matt.coster@imgtec.com>
Subject: [PATCH v4 00/18] Imagination BXS-4-64 MC1 GPU support
Date: Thu, 20 Mar 2025 11:32:10 +0000
Message-ID: <20250320-sets-bxs-4-64-patch-v1-v4-0-d987cf4ca439@imgtec.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALv822cC/3XNzQrCMAzA8VeRno2kbSqbJ99DPLg23XrYB+0Yk
 7F3tyqCIoNc/oH8sojEMXASp90iIk8hhb7LQfudsM2tqxmCyy0UKpKoJCQeE1RzAoIjwXAbbQO
 TBCLrfGmtMcaLfDxE9mF+wZdr7iaksY/3159JPrdvUqLZIvMgEDuNXBxNUapzaOuR7cH2rXiak
 /pyZLHpqOxo78i40ldo/Z+jP45BLXHT0dmRpCvtKvaofp11XR8AtdtcTQEAAA==
X-Change-ID: 20241021-sets-bxs-4-64-patch-v1-44cdf9cc555f
To: Frank Binns <frank.binns@imgtec.com>,
        Matt Coster
	<matt.coster@imgtec.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter
	<simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
        "Vignesh
 Raghavendra" <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        Randolph Sapp <rs@ti.com>, Darren Etheridge <detheridge@ti.com>,
        "Michal
 Wilczynski" <m.wilczynski@samsung.com>,
        Alessio Belle
	<alessio.belle@imgtec.com>,
        Alexandru Dadu <alexandru.dadu@imgtec.com>,
        "Sarah Walker" <sarah.walker@imgtec.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6399;
 i=matt.coster@imgtec.com; h=from:subject:message-id;
 bh=/drBQ+EY8V4wxyvc0vjx/Oygt083Vv7P4Uspc/5c/Ec=;
 b=owGbwMvMwCFWuUfy8817WRsYT6slMaTf/nP43+LT7/elcCt3c8xeJrh9H9MR3sLGydftRCXOM
 nC/2rL0REcpC4MYB4OsmCLLjhWWK9T+qGlJ3PhVDDOHlQlkCAMXpwBMZP96hn8qTMcEVJeE5v9l
 2zN7m2hB2A+jb5783iu8v+Rm8rMdSu9h+KewLD1Zfar2jqvP+IXD1xqq3BBS+i9Sc/pD+czdran
 XjvABAA==
X-Developer-Key: i=matt.coster@imgtec.com; a=openpgp;
 fpr=05A40CFCE7269D61D97100A1747F0A9036F90DFA
X-EXCLAIMER-MD-CONFIG: 15a78312-3e47-46eb-9010-2e54d84a9631
X-Proofpoint-GUID: x8GmIMnDaCW7u_DZKY-t--TVfpC6FC8A
X-Proofpoint-ORIG-GUID: x8GmIMnDaCW7u_DZKY-t--TVfpC6FC8A
X-Authority-Analysis: v=2.4 cv=V8Z90fni c=1 sm=1 tr=0 ts=67dbfcc8 cx=c_pps a=AKOq//PuzOIrVTIF9yBwbA==:117 a=AKOq//PuzOIrVTIF9yBwbA==:17 a=ETbM1kImDFEA:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=e5mUnYsNAAAA:8 a=VwQbUJbxAAAA:8 a=r_1tXGB3AAAA:8
 a=4ypaFGEvw_zvJEgvs6UA:9 a=QEXdDO2ut3YA:10 a=Vxmtnl_E_bksehYqCbjh:22 a=t8nPyN_e6usw4ciXM-Pk:22

This GPU is found in the TI AM68 family of SoCs, with initial support
added to the k3-j721s2 devicetree and tested on a TI SK-AM68 board.

A suitable firmware binary can currently be found in the IMG
linux-firmware repository[1] as powervr/rogue_36.53.104.796_v1.fw.

No new UAPI will be necessary for this platform as it is sufficiently
similar to the already supported AXE-1-16M.

UMD support is close to being complete. We're now able to pass >92% of
Vulkan conformance on our Mesa development branch. The compiler has been
undergoing a significant rework needed to accomodate the BXS-4-64, as
well as to make it more flexible to support additional Rogue GPUs going
forward. The first part of this rework landed in Mesa in [2], and the
next chunk is currently in review in [3].

There are several dt-bindings changes at the beginning of this series.
We expect the result to be versatile enough to handle all Imagination
Rogue GPUs while being a strong foundation to build bindings for the
newer Volcanic architecture (for which we're currently developing
support).

The DTS changes at the end of the series are marked [DO NOT MERGE]. Once
the series is reviewed, we will request these be taken through the
relevant tree.

This version of the series depends on a patch[4] which exists in
drm-misc-fixes, but has not yet made it back to drm-misc-next (the
target of this series). That patch adds the function pvr_vm_unmap_obj()
which is used in patch 14 ("drm/imagination: Add RISC-V firmware
processor support").

[1]: https://gitlab.freedesktop.org/imagination/linux-firmware/-/tree/powervr
[2]: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/32258
[3]: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/33998
[4]: https://lore.kernel.org/r/20250226-hold-drm_gem_gpuva-lock-for-unmap-v2-1-3fdacded227f@imgtec.com

---
Changes in v4:
- Update status of UMD support (cover)
- Fix backwards compatibility of new compatible strings (P1)
- Fix power-domains property constraints (P1/P2)
- Fix power-domain-names property constraints (P2)
- Only invoke pvr_device_safety_irq_clear() if has_safety_events is set
  (P7)
- Use pvr_vm_unmap_obj() in pvr_riscv_vm_unmap() (P14)
- Fix formatting of pvr_riscv_fw_process() signature (P14)
- Link to v3: https://lore.kernel.org/r/20250310-sets-bxs-4-64-patch-v1-v3-0-143b3dbef02f@imgtec.com

Changes in v3:
- Reorder some patches to ensure the proper sequencing
- Update status of UMD support (cover)
- Don't use more specific compatible strings when not required (P1)
- Avoid ABI break by limiting new required properties to new compatible
  strings (P2)
- Move power domain changes to the patch in which they're used (P2/P5)
- Update register definitions (P3) [Thanks, Alessio!]
- Don't use more specific compatible strings when not required (P4)
- Enhanced commit messages (P4)
- Remove unnecessary example (P5)
- Add proper fixes for threaded IRQs (P6) [Thanks, Alessio!]
- Include fix for a separate IRQ issue (P7) [Thanks, Alessio!]
- Don't enable firmware debug module (was P13 in v2, also in P14)
- Change from a workaround to a regular codepath (P15)
- Drop platform overrides framework (was P18 in v2, also in P16)
- Mark DTS changes [DO NOT MERGE] (P17/P18)
- Link to v2: https://lore.kernel.org/r/20241118-sets-bxs-4-64-patch-v1-v2-0-3fd45d9fb0cf@imgtec.com

Changes in v2:
- Clarified justification for compatible strings (P1)
- Simplified clocks constraints (P2)
- Simplified power-domains constraints (P3/P4)
- Use normal reg syntax for 64-bit values (P8/P21)
- Link to v1: https://lore.kernel.org/r/20241105-sets-bxs-4-64-patch-v1-v1-0-4ed30e865892@imgtec.com

---
Alessio Belle (3):
      drm/imagination: Update register defs for newer GPUs
      drm/imagination: Mask GPU IRQs in threaded handler
      drm/imagination: Handle Rogue safety event IRQs

Matt Coster (14):
      dt-bindings: gpu: img: Future-proofing enhancements
      dt-bindings: gpu: img: Add BXS-4-64 devicetree bindings
      drm/imagination: Use new generic compatible string
      drm/imagination: Add power domain control
      drm/imagination: Remove firmware enable_reg
      drm/imagination: Rename event_mask -> status_mask
      drm/imagination: Make has_fixed_data_addr a value
      drm/imagination: Use a lookup table for fw defs
      drm/imagination: Use callbacks for fw irq handling
      drm/imagination: Move ELF fw utils to common file
      drm/imagination: Use cached memory with dma_coherent
      drm/imagination: Add support for TI AM68 GPU
      [DO NOT MERGE] arm64: dts: ti: k3-am62: New GPU binding details
      [DO NOT MERGE] arm64: dts: ti: k3-j721s2: Add GPU node

Sarah Walker (1):
      drm/imagination: Add RISC-V firmware processor support

 .../devicetree/bindings/gpu/img,powervr-rogue.yaml |  81 +++++++++-
 arch/arm64/boot/dts/ti/k3-am62-main.dtsi           |   4 +-
 arch/arm64/boot/dts/ti/k3-j721s2-main.dtsi         |  12 ++
 drivers/gpu/drm/imagination/Makefile               |   2 +
 drivers/gpu/drm/imagination/pvr_device.c           | 126 ++++++++++++++--
 drivers/gpu/drm/imagination/pvr_device.h           |  31 +++-
 drivers/gpu/drm/imagination/pvr_drv.c              |  16 ++
 drivers/gpu/drm/imagination/pvr_fw.c               |  28 +++-
 drivers/gpu/drm/imagination/pvr_fw.h               |  85 +++++------
 drivers/gpu/drm/imagination/pvr_fw_meta.c          |  23 +--
 drivers/gpu/drm/imagination/pvr_fw_mips.c          |  82 ++--------
 drivers/gpu/drm/imagination/pvr_fw_riscv.c         | 165 +++++++++++++++++++++
 drivers/gpu/drm/imagination/pvr_fw_startstop.c     |  17 +++
 drivers/gpu/drm/imagination/pvr_fw_util.c          |  67 +++++++++
 drivers/gpu/drm/imagination/pvr_gem.c              |  10 +-
 drivers/gpu/drm/imagination/pvr_gem.h              |   6 +-
 drivers/gpu/drm/imagination/pvr_mmu.c              |   8 +-
 drivers/gpu/drm/imagination/pvr_power.c            | 114 ++++++++++++++
 drivers/gpu/drm/imagination/pvr_power.h            |   3 +
 drivers/gpu/drm/imagination/pvr_rogue_cr_defs.h    | 153 ++++++++++++++++---
 drivers/gpu/drm/imagination/pvr_rogue_riscv.h      |  41 +++++
 21 files changed, 896 insertions(+), 178 deletions(-)
---
base-commit: d034e6f7ea8ddc866d4ac59c104e18675b13975b
change-id: 20241021-sets-bxs-4-64-patch-v1-44cdf9cc555f


