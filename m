Return-Path: <devicetree+bounces-158402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 58986A66480
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 02:03:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0DC0D17C0D9
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 01:03:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7450285260;
	Tue, 18 Mar 2025 01:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b="sQ2czcFm"
X-Original-To: devicetree@vger.kernel.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D0C3A1B6
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 01:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.60.130.6
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742259815; cv=none; b=ppCc52sBtgp3wFvY7zcKwLvAtYj+3dfNJiiVGw8tCOARrNfM5W0KZ/nVDcGgJdPP23yhrbtNDt4aUWnYyKSPQbNX2kkYDcM7HgrcLdzT15V1pbnY3mRtJhlyCTw+snRHS0N+mP70olVOcMA/H0cC2DcMnSLjg0jzRmxaG4yNx44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742259815; c=relaxed/simple;
	bh=zKZJzKY6RBIblG+HaU1TSymw7gAwaYDkeyuUq0Jp3sE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=JUzSQyvkvnbU1XXOWUfjctyq1VYgMhjXPyEhJixrYbj4irn8enKHcB046oKnbJ82FUw9EGA56BBvrNaEXiKpzcDb44avkw0lrHt5U+r40l8y4ijC9iRV13kKo445i/CvNrri7mSGRjbNPm8rSisegAnxS3ahusZwa2ZlHOkBh0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com; spf=pass smtp.mailfrom=igalia.com; dkim=pass (2048-bit key) header.d=igalia.com header.i=@igalia.com header.b=sQ2czcFm; arc=none smtp.client-ip=178.60.130.6
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=igalia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=igalia.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Cc:To:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-Id:Date:Subject:From:Sender:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=uKx0EXBXjGB+XDf86hg8kIK56BXmynSkeLAlgh4rIEA=; b=sQ2czcFmniUABlnhAGgPeYX40Y
	I/CDm8pnUGIV91ofohcPkjV+qigDbDzg6SFWB7yvUUljjWJS/Mz6Zi8+Y80yYVD9UcU4chk4/GAts
	2+W/y0Jtp0dwVAZBV1YsE2znACe7FwEAcz5EwHjqTTDPrNWlsojyu9R2uD+8pV9wPKmu7Exi3Dpe5
	VlCGoSJUKndAUG7DBXAHjxBaqbeP1q17v6ws8RBnl7L7Nrrb9DB3H2Mt8STpuCqIROcM3EFs2IsWw
	kQIite2ppoc1zGOnw+JcTPmQm9Q7L6hh8kzqjcxK0Cbfg7f99RPkR8d40QxDwdm6EI3fSZV81rnUH
	pNLc6ZZg==;
Received: from [189.7.87.178] (helo=janis.local)
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
	id 1tuLMS-002UCS-Oi; Tue, 18 Mar 2025 02:03:17 +0100
From: =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Subject: [PATCH v6 0/5] drm/v3d: Fix GPU reset issues on the Raspberry Pi 5
Date: Mon, 17 Mar 2025 22:01:08 -0300
Message-Id: <20250317-v3d-gpu-reset-fixes-v6-0-f3ee7717ed17@igalia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIANTF2GcC/3XQwWrDMAwG4FcpPs9Dkp047mnvUXbwbDk1bE2xO
 9NR8u5zC2MZyY6/xP8JdBOFc+Ii9rubyFxTSdOphf5pJ/zRnUaWKbQsCKgDIi2rCnI8f8rMhS8
 ypisXSYEwegMGMYjWPGd+LFrx8NryMZXLlL8eRyrepz9ev+lVlCAH5WxvYwjW40sa3Xtyz376E
 Hew0i+iYNhGqCFklfUKInivV4haIIjbiGpIr6NxmrRhDytELxG1jeiGeGQzQBgYbL9CuiXyz0+
 6hlhjrA9vSBH+IvM8fwO6Fx3/ywEAAA==
X-Change-ID: 20250224-v3d-gpu-reset-fixes-2d21fc70711d
To: Melissa Wen <mwen@igalia.com>, Iago Toral <itoral@igalia.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Saenz Julienne <nsaenz@kernel.org>, 
 Stefan Wahren <wahrenst@gmx.net>, 
 Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Phil Elwell <phil@raspberrypi.com>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, kernel-dev@igalia.com, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Emma Anholt <emma@anholt.net>, "Rob Herring (Arm)" <robh@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4874; i=mcanal@igalia.com;
 h=from:subject:message-id; bh=zKZJzKY6RBIblG+HaU1TSymw7gAwaYDkeyuUq0Jp3sE=;
 b=owEBbQGS/pANAwAIAT/zDop2iPqqAcsmYgBn2MZHWgPJRoZZuBk7oxMXqXZT7KbfuWx5i3sP+
 ioBt3TyTxmJATMEAAEIAB0WIQT45F19ARZ3Bymmd9E/8w6Kdoj6qgUCZ9jGRwAKCRA/8w6Kdoj6
 qpk7B/9u8pMyM8J68DFwXguD2MIFjKxugbXNlaC+0vbS0uoobvlNhldpnLSmR3WgFzRzzrJivk6
 q1OsIVLLRMo27zFlnq8Av4wSb66uHWzTc8cBhGCvi5tMHSz+H+TVFiNXtHfpAG/mCb5cIeku81F
 5S4F3IKXv0/aKnub08JyByi1btc0Mj5/nbmU8ftozjPX5J1uPbmtF/jX91v9QNAXWrankzsjWGo
 6iOXyuCEsVjAZcIt37Fr53N1onlsKUmVFTzVkdJbs6anUTfuGceOUDll+T8qvT6Bn6WOKRxhyWx
 JXeVS8Wx5d1xEo6zG4VggHqps/h66o2W3fxRxlf+UsLBMlCq
X-Developer-Key: i=mcanal@igalia.com; a=openpgp;
 fpr=F8E45D7D0116770729A677D13FF30E8A7688FAAA

This series addresses GPU reset issues reported in [1], where running a
long compute job would trigger repeated GPU resets, leading to a UI
freeze.

The patches that prevent the same faulty job from being resubmitted in a
loop were merged in drm-misc/drm-misc-fixes in v4.

However, those patches don't solve the issue entirely. Even with a single
GPU reset, the UI still freezes on the Raspberry Pi 5, indicating a GPU
hang. Patches #1, #3, and #5 address this by properly configuring the
V3D_SMS registers, which are required for power management and resets
in V3D 7.1.

Patches #2 and #4 are associated changes related to the robustness
of the DT bindings. Patch #3 added a new register bank to the DT binding
and during the reviewing process, we identified points that could to be
improved in the DT binding.

Patch #2 started by adding per-compatible register restrictions to ensure
that the DTB accurately reflects the hardware design and #5 updates the DT
maintainership, replacing Emma with the current v3d driver maintainer.

[1] https://github.com/raspberrypi/linux/issues/6660

Best Regards,
- Maíra

---
v1 -> v2:
- [1/6, 2/6, 5/6] Add Iago's R-b (Iago Toral)
- [3/6] Use V3D_GEN_* macros consistently throughout the driver (Phil Elwell)
- [3/6] Don't add Iago's R-b in 3/6 due to changes in the patch
- [4/6] Add per-compatible restrictions to enforce per‐SoC register rules (Conor Dooley)
- [6/6] Add Emma's A-b, collected through IRC (Emma Anholt)
- [6/6] Add Rob's A-b (Rob Herring)
- Link to v1: https://lore.kernel.org/r/20250226-v3d-gpu-reset-fixes-v1-0-83a969fdd9c1@igalia.com

v2 -> v3:
- [3/7] Add Iago's R-b (Iago Toral)
- [4/7, 5/7] Separate the patches to ease the reviewing process -> Now,
  PATCH 4/7 only adds the per-compatible rules and PATCH 5/7 adds the
  SMS registers
- [4/7] `allOf` goes above `additionalProperties` (Krzysztof Kozlowski)
- [4/7, 5/7] Sync `reg` and `reg-names` items (Krzysztof Kozlowski)
- Link to v2: https://lore.kernel.org/r/20250308-v3d-gpu-reset-fixes-v2-0-2939c30f0cc4@igalia.com

v3 -> v4:
- [4/7] BCM2712 has an external reset controller, therefore the "bridge"
	register is not needed (Krzysztof Kozlowski)
- [4/7] Remove the word "required" from the reg descriptions (Rob Herring)
- [5/7] Improve commit message (Rob Herring)
- Link to v3: https://lore.kernel.org/r/20250311-v3d-gpu-reset-fixes-v3-0-64f7a4247ec0@igalia.com

v4 -> v5:
- [1/7, 2/7] Applied to drm-misc/drm-misc-fixes
- Changed the commit order to aggregate all DT binding related patches
- [2/6] Add the widest constraints to `reg` and `reg-names` (Krzysztof Kozlowski)
- [2/6] Only declare the registers that exists in a SoC, don't declare all
  the possible registers for a V3D generation (Krzysztof Kozlowski)
- [2/6] Enforce register order by ascending address/offset (Florian Fainelli)
- [2/6] Fix the example to match the new stable ABI
- [3/6] Add Krzysztof's A-b (Krzysztof Kozlowski)
- [4/6] New PATCH: Add more examples to the DT binding
- [5/6] Add "v3d: " to commit title
- Link to v4: https://lore.kernel.org/r/20250313-v3d-gpu-reset-fixes-v4-0-c1e780d8e096@igalia.com

v5 -> v6:
- Drop "[PATCH v5 4/6] dt-bindings: gpu: v3d: Add additional examples
  to improve binding checks" (Krzysztof Kozlowski)
- [1/5] Improve commit message to mention cases where unexisting V3D
  generations were replaced by supported generations (Stefan Wahren)
- [2/5] Don't break the ABI, enforce the order established by reg (Krzysztof Kozlowski)
- [3/5] Add SMS's functionality in the description (Stefan Wahren)
- Link to v5: https://lore.kernel.org/r/20250316-v3d-gpu-reset-fixes-v5-0-9779cdb12f06@igalia.com

---
Maíra Canal (5):
      drm/v3d: Associate a V3D tech revision to all supported devices
      dt-bindings: gpu: v3d: Add per-compatible register restrictions
      dt-bindings: gpu: v3d: Add SMS register to BCM2712 compatible
      dt-bindings: gpu: v3d: Add V3D driver maintainer as DT maintainer
      drm/v3d: Use V3D_SMS registers for power on/off and reset on V3D 7.x

 .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml      |  90 ++++++++++++---
 drivers/gpu/drm/v3d/v3d_debugfs.c                  | 126 ++++++++++-----------
 drivers/gpu/drm/v3d/v3d_drv.c                      |  62 +++++++++-
 drivers/gpu/drm/v3d/v3d_drv.h                      |  22 +++-
 drivers/gpu/drm/v3d/v3d_gem.c                      |  27 ++++-
 drivers/gpu/drm/v3d/v3d_irq.c                      |   6 +-
 drivers/gpu/drm/v3d/v3d_perfmon.c                  |   4 +-
 drivers/gpu/drm/v3d/v3d_regs.h                     |  26 +++++
 drivers/gpu/drm/v3d/v3d_sched.c                    |   6 +-
 9 files changed, 271 insertions(+), 98 deletions(-)
---
base-commit: 83a0237859bc5a9e0a716e1db8e7fd3cafd63259
change-id: 20250224-v3d-gpu-reset-fixes-2d21fc70711d


