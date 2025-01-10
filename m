Return-Path: <devicetree+bounces-137253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D3743A08692
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 06:40:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C24683A9543
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 05:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 314192063EA;
	Fri, 10 Jan 2025 05:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uf3xfszF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08FD01714AC;
	Fri, 10 Jan 2025 05:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736487596; cv=none; b=CMOc/y89EP4OQymNqOnv88Iv+iH2F9M8myovG+iVG2k1UcS1HaxWnGFjiMv9LRndyS4Is3i0hyHN4nQbl0O5xVPNd7TePHpWhni1ntkf/thECOKLkd14MI0uaRetahTGyMxDwT6zj+Xj2SMPAhWrJESiF/Y2tmTdEV5usbkhqP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736487596; c=relaxed/simple;
	bh=VKVoKeBszJaQBYp+1nP1v5nM4InY/X3cRLrD0IhuQow=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ASNEWJgVmDm7Dezx8ThKa0DdEGw5oVnHI2D2B/ucxr1nQVNfSi/egVJQros0hWuZ88qaXZpRgN0MoXTYI8asmKPtZkKclGxNn73Snw468uXcceal5kuMKf4wvjpBI1iwD35N5eB8NG4JsfdI05XBfy84NwkI6px3ViC68U/Ca1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uf3xfszF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 895C1C4CED6;
	Fri, 10 Jan 2025 05:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736487595;
	bh=VKVoKeBszJaQBYp+1nP1v5nM4InY/X3cRLrD0IhuQow=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=uf3xfszFagXNyWvFS501Rb8G4Fx4zi7/UQcb/+rZOHyCdEV0Bmt/UMMLf2qM1V5YA
	 SqQYB6fROb56BQxC2Enn15QzQ2R3TwfLdu5lsqcAY5YU57x+sIdF+0ZWmd6IebmoCQ
	 G8L6jAWx2Fil1+qRZKd7a/3yJVqCNvJ/0eqfpYFUr7Mku5K5Gx0rR8XB+CWjrUrkvP
	 mJrfH9DnI+6EKruSrxWvqi0D+rkX9+Efypjl1f0bk6RTJuDMq7maKem2TZJsG+axZU
	 iDu0QU6XGhfcGVIyifvEblSCpnhky9y1DjiOAPgegfpKOr+E1NdhkXO2MaTQw3lO6I
	 TI48F+5uyp1eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 750AEE77188;
	Fri, 10 Jan 2025 05:39:55 +0000 (UTC)
From: Ao Xu via B4 Relay <devnull+ao.xu.amlogic.com@kernel.org>
Subject: [PATCH 00/11] Subject: [PATCH 00/11] Add DRM support for Amlogic
 S4
Date: Fri, 10 Jan 2025 13:39:50 +0800
Message-Id: <20250110-drm-s4-v1-0-cbc2d5edaae8@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKaygGcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDQ0MD3ZSiXN1iE91kS7NkC4ukVFOjVBMloOKCotS0zAqwQdGxtbUAfIW
 dnlgAAAA=
X-Change-ID: 20250110-drm-s4-c96c88be52e4
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Ao Xu <ao.xu@amlogic.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736487593; l=2879;
 i=ao.xu@amlogic.com; s=20250103; h=from:subject:message-id;
 bh=VKVoKeBszJaQBYp+1nP1v5nM4InY/X3cRLrD0IhuQow=;
 b=F3Mz88aVHJb35MqlLV7mcSGlYoAXJTxGxcX3PBI2E5jRY346NpbBCGN3qyXahNHofIwyZU18U
 dAo+IgFzxxrA0N4OsXeTdBgstJaxB7XTuHVW16NAqF25UNM4ttlpbOs
X-Developer-Key: i=ao.xu@amlogic.com; a=ed25519;
 pk=c0TSXrwQuL4EhPVf3lJ676U27ax2yfFTqmRoseP/fA8=
X-Endpoint-Received: by B4 Relay for ao.xu@amlogic.com/20250103 with
 auth_id=308
X-Original-From: Ao Xu <ao.xu@amlogic.com>
Reply-To: ao.xu@amlogic.com

This patch series adds DRM support for the Amlogic S4-series SoCs.
Compared to the Amlogic G12-series, the S4-series introduces the following changes:

1 The S4-series splits the HIU into three separate components: `sys_ctrl`, `pwr_ctrl`, and `clk_ctrl`.
  As a result, VENC and VCLK drivers are updated with S4-specific compatible strings to accommodate these changes.
2 The S4-series secures access to HDMITX DWC and TOP registers,
  requiring modifications to the driver to handle this new access method.
3 The register addresses for the video1 and video2 planes have been updated in the S4 hardware,
  and the DRM driver has been adapted accordingly.
4 The OSD, VIU, and VPP components remain unchanged and are consistent with the G12-series.

Signed-off-by: Ao Xu <ao.xu@amlogic.com>
---
Ao Xu (11):
      dt-bindings: display: meson-dw-hdmi: Add compatible for S4 HDMI controller
      dt-bindings: display: meson-vpu: Add compatible for S4 display controller
      drm: meson: add S4 compatible for DRM driver
      drm: meson: add primary and overlay plane support for S4
      drm: meson: update VIU and VPP support for S4
      drm: meson: add meson_dw_hdmi support for S4
      drm: meson: change api call parameter
      drm: meson: add hdmitx vmode timing support for S4
      drm: meson: add vpu clk setting for S4
      drm: meson: add CVBS support for S4
      arm64: dts: amlogic: s4: add DRM support [1/1]

 .../bindings/display/amlogic,meson-dw-hdmi.yaml    |    1 +
 .../bindings/display/amlogic,meson-vpu.yaml        |   48 +-
 .../boot/dts/amlogic/meson-s4-s805x2-aq222.dts     |   39 +
 arch/arm64/boot/dts/amlogic/meson-s4.dtsi          |  121 +++
 drivers/gpu/drm/meson/meson_crtc.c                 |   90 +-
 drivers/gpu/drm/meson/meson_drv.c                  |  127 ++-
 drivers/gpu/drm/meson/meson_drv.h                  |    6 +
 drivers/gpu/drm/meson/meson_dw_hdmi.c              |  244 ++++-
 drivers/gpu/drm/meson/meson_dw_hdmi.h              |  126 +++
 drivers/gpu/drm/meson/meson_encoder_cvbs.c         |   10 +
 drivers/gpu/drm/meson/meson_encoder_hdmi.c         |   19 +-
 drivers/gpu/drm/meson/meson_overlay.c              |    7 +-
 drivers/gpu/drm/meson/meson_plane.c                |   24 +-
 drivers/gpu/drm/meson/meson_registers.h            |   17 +
 drivers/gpu/drm/meson/meson_vclk.c                 | 1018 ++++++++++++++------
 drivers/gpu/drm/meson/meson_venc.c                 |  346 ++++++-
 drivers/gpu/drm/meson/meson_venc.h                 |    4 +-
 drivers/gpu/drm/meson/meson_viu.c                  |    9 +-
 drivers/gpu/drm/meson/meson_vpp.c                  |   12 +-
 19 files changed, 1865 insertions(+), 403 deletions(-)
---
base-commit: 6ecd20965bdc21b265a0671ccf36d9ad8043f5ab
change-id: 20250110-drm-s4-c96c88be52e4

Best regards,
-- 
Ao Xu <ao.xu@amlogic.com>



