Return-Path: <devicetree+bounces-139045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E8AA13C29
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 15:26:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2DFD3163F9A
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 14:26:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F084822B8A4;
	Thu, 16 Jan 2025 14:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="jVateGvY"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFD4A22B584;
	Thu, 16 Jan 2025 14:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737037603; cv=none; b=rZefACfZlJoZZSVDEzO6Wa77K5Ni4IE11o0LDsad0NOj7gIzQvimo1TUKkvkrQ8RioLH+52dMroW5ZfgIVqP+ax2Oz+nROZEVpNhJUvF4/FhWiMdTtTFeJEPQfKjcykc9ECvLGlRuBUKbPXIeYke2tDncXSl0jc+/ag0CSVkKkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737037603; c=relaxed/simple;
	bh=UeFDYPRgZQPn6MStyNT1pEJTaMhfDKZvOpT5RqokfRw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=kHnGcFg/vV4VpkIyxmIg64EhGCy31UMvrdzR6fgzClgwjbK2DY3LL7lpMISSQoAReylr0Xm/a4FhLnQeYLunAnufu+FfAeT2VD3GRI92gW4NFu04P796yEJ9dBdiHFxV5Wjq9FgH7/ZKog23aYPGDUXFv7iexvlSJWXvmMvspbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=jVateGvY; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1737037599;
	bh=UeFDYPRgZQPn6MStyNT1pEJTaMhfDKZvOpT5RqokfRw=;
	h=From:Subject:Date:To:Cc:From;
	b=jVateGvYT/rBze/xM8rXFqBD5jEYlAz4A9HtU1Aw5XXQVbbvUCPLpRP8mu1QG7Rn2
	 xObE/Bx+A6aojDzhpXE+KpXPw4c7fgwjkVH+IklCX2XJkj2e6EdiCe4LjW8T9yErzF
	 kyUbN0ZUvDnSWlHWl7oMDJnN271HW3YQaSBdKOwidV8lZ8KfW2GlJRUNV/M4b4zJqg
	 dPt/rcx4ZZ8nmTMA1mqYTw8l07x80UZVWv/Tato+oOaNu/T3S4QZbHTSS/6/QdQq9R
	 KcyeeXnWCdeEdR4wU4LmXbqEuyEHQIaHRteNIFkjYrelvaqhaNyUJAdmnw0ddew1OD
	 409rCe8jo4V9g==
Received: from fedora.home (lfbn-tou-1-1147-231.w90-76.abo.wanadoo.fr [90.76.208.231])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id F1E8F17E0E48;
	Thu, 16 Jan 2025 15:26:38 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Subject: [PATCH 0/3] Add Mali GPU support for Mediatek MT8370 SoC
Date: Thu, 16 Jan 2025 15:25:56 +0100
Message-Id: <20250116-mt8370-enable-gpu-v1-0-0a6b78e925c8@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPQWiWcC/02O2wrCMBBEf6XsswtJ02xrf0VEsummBuzFphah+
 O8G9cHHMzAzZ4ckS5QEbbHDIltMcRoz6EMB/urGXjB2maFUpVVaWxzWxtQKZXR8E+znBxqmYI8
 2ODId5N68SIjPz+bp/OVF7o88vX5DYJcE/TQMcW0LU2tDHKw3jgIxNdTVVah0vnFUKWLxxDV7+
 Fdqi5+QwW5Nl59UL2Oc0GqFxpLiRmnF7thuJZxfrzepNwwZ6wAAAA==
X-Change-ID: 20250115-mt8370-enable-gpu-3b6f595fa63d
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Boris Brezillon <boris.brezillon@collabora.com>, 
 Steven Price <steven.price@arm.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1737037598; l=2043;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=UeFDYPRgZQPn6MStyNT1pEJTaMhfDKZvOpT5RqokfRw=;
 b=+A3e6YxoGAsOpzEcB833b1garE16GHGcwIWmz2aTxLJds3c+EMOw1msKeJj1Bc7qYvpJH86/3
 dqZ+q00c9auAkdL2CE67hH8vrP/Mnt3DET6p5lMrIrlp7dFzWxz3vva
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

This patchset adds the support of the ARM Mali G57 MC2 GPU (Valhall-JM,
dual core), integrated in the Mediatek MT8370 SoC, to the panfrost driver
and to the mt8370.dtsi include file.

I've testing this patchset on a Mediatek Genio 510 EVK board,
with a kernel based on linux-next (tag: next-20250113) plus [1] patchset.

The panfrost driver probed with the following messages:
```
panfrost 13000000.gpu: clock rate = 390000000
panfrost 13000000.gpu: mali-g57 id 0x9093 major 0x0 minor 0x0 status 0x0
panfrost 13000000.gpu: features: 00000000,000019f7, issues: 00000003,
  80000400
panfrost 13000000.gpu: Features: L2:0x08130206 Shader:0x00000000
  Tiler:0x00000809 Mem:0x1 MMU:0x00002830 AS:0xff JS:0x7
panfrost 13000000.gpu: shader_present=0x5 l2_present=0x1
[drm] Initialized panfrost 1.3.0 for 13000000.gpu on minor 0
```

[1] https://lore.kernel.org/linux-mediatek/20250115-dts_mt8370-genio-510-v2-0-fc9b01d08834@collabora.com/

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
Louis-Alexis Eyraud (3):
      dt-bindings: gpu: mali-bifrost: Add compatible for MT8370 SoC
      drm/panfrost: Add support for Mali on the MT8370 SoC
      arm64: dts: mediatek: mt8370: Enable gpu support

 Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml |  5 ++++-
 arch/arm64/boot/dts/mediatek/mt8370.dtsi                    |  9 +++++++++
 drivers/gpu/drm/panfrost/panfrost_drv.c                     | 10 ++++++++++
 3 files changed, 23 insertions(+), 1 deletion(-)
---
base-commit: 37136bf5c3a6f6b686d74f41837a6406bec6b7bc
change-id: 20250115-mt8370-enable-gpu-3b6f595fa63d
prerequisite-change-id: 20250113-dts_mt8370-genio-510-3560b8010ba9:v2
prerequisite-patch-id: af53ae39240467340ac4c9cdbc8fdd949c5457a2
prerequisite-patch-id: ca07485956f81c1a40029b48d2b4bcf00d74fc13
prerequisite-patch-id: c34d9870b2c61d87ad8a6facba13d8970682e679
prerequisite-patch-id: 48784acdcdd8b886fdec9f21c9cb88abb327e2e1

Best regards,
-- 
Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>


