Return-Path: <devicetree+bounces-275492-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDiaM+RQtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275492-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:01:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E35288707
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:01:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AB1B53044151
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:57:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDB623D666A;
	Fri, 13 Mar 2026 17:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ni5gyQtl"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B9B3D669D;
	Fri, 13 Mar 2026 17:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773424644; cv=none; b=lHb9j5l0qhp6HmbV1Y7oPdg/RoefSQdWH5Urt5J18k8PpCzJwn3rRWW7vUE0rRiT1yWfzn9mKPz1wJodQvJF6kLS50f1BY6x4pPT2e3OYL3iMLWEx3BqCkiSYpQDdMF+gY7iXMMJrOBXLZXPGeZkrGkjf/xG/BNeqzsXdgoMM3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773424644; c=relaxed/simple;
	bh=zoRJcc+9LulL0mfzN2JJ+x4jgcsK4gDEhoHOhad868s=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=XD2OPx5fPiYzp4CWfLsSo65cpXDAXm3MnboTl/eym2Tz4/phiVspR2HDOplpgoLdNinGXSvyLroDaVtANKIsqkKkcskZzhe1Qwa9Ix9qy3d3bR4hqLkJCPyoL2Kz5rypWEkcGkadaCooR6K0Xv8jl8qv57wFsCMvhnGm8FMObG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=ni5gyQtl; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773424641;
	bh=zoRJcc+9LulL0mfzN2JJ+x4jgcsK4gDEhoHOhad868s=;
	h=From:Subject:Date:To:Cc:From;
	b=ni5gyQtlBVHDrrjUKVh1j8mnsqSIUA+MVOmT53faStbFBl4hqZ3y9YhLleUH9E/MZ
	 dFk4jF06iv5Q2Ohzc5WF3AlCCOw5PAwGDrmXIKYkjNSXEMx+RYREYkkevi6hjQzUiC
	 YpmROe6eRSsNSVLdQUVPk2qMu4kBPanA871THdi5UyKKN/SjRimjcW/3bZziXRIP+B
	 2JTc0m+3Fp9V9eyfVqEWDeFA4u+SVlWtRVOLIhTE5xkO8ln4P3zBOfc5jaOcTofR2F
	 visyTMoKVLdQxY1jcz+J6QqAYQ5En5sMXijnDlNEWD+I3LAqRapMY3aif8sUsuKsyf
	 LXI1Q8gQVTNnQ==
Received: from jupiter.universe (dyndsl-091-248-210-078.ewe-ip-backbone.de [91.248.210.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6AB5A17E0454;
	Fri, 13 Mar 2026 18:57:21 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 23B47480026; Fri, 13 Mar 2026 18:57:21 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v3 00/12] phy: rockchip: usbdp: Fixes, DP 1-lane support
 and cleanups
Date: Fri, 13 Mar 2026 18:57:09 +0100
Message-Id: <20260313-rockchip-usbdp-cleanup-v3-0-3e8fe89a35b5@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPVPtGkC/4XNTQrCMBCG4auUrI0kUxKpK+8hLvIzscHahMQGp
 fTupl2JIC7fD+aZmWRMHjM5NjNJWHz2YazR7hpiejVekXpbmwADyYC1NAVzM72PdMraRmoGVOM
 UqdCis04LyVVL6nFM6Pxzg8+X2r3Pj5Be25/C1/UvWThllEslXQdo+UGeTBgGpUNSexPuZGULf
 FD8NwWV0vKABkC4TuI3tSzLGwipEbMLAQAA
X-Change-ID: 20260203-rockchip-usbdp-cleanup-5b59dfb561a3
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 William Wu <william.wu@rock-chips.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2479;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=zoRJcc+9LulL0mfzN2JJ+x4jgcsK4gDEhoHOhad868s=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGm0UADABW9YDxyY68d7afn9D1cIo5jsgg45q
 VO38rNb9o0vi4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJptFAAAAoJENju1/PI
 O/qaG4EQAJzOGESyYslWAQIb4dMQ0kLRYZT3mv4tvLmYE+PalDRUV2Ps5nVMU5QJro3lk4Pv1/D
 SSoIP2TAPDFV7ftpEj4I1uMZIeqLi/n5oQPxiGnpoQSov0QE5ZxrCoNFZc0oN3GGvWkIEhKfxyq
 92UzdQ8VPc5hZia+UrOp+askt+aE3Qml2eptzbfJx9a4CqhKPzAIUSTXPfM3QvU1ixnIAl94OXv
 w/ZNd6vqoOmTQq8+733HhffwnglMG6bo9Gk6nmVaTVqLi2Y5Dx6IGU62ame+OBs6cMG6UpEptIe
 n9SO6fJt5SUYv56fwbXV8imc2H3OeWRnMPPY5nCdnzvPvcG86rGl5CjDXnfdRZcBgYoiwcpfDwA
 Ov9/kuacn3M3YAkp/1jth4NxcvC4xU5tV9+8QLpUp/jcjcKUWfqaSnEATCNBp1Gl3GFaUJnLD+H
 FzO+ncOcuzTbakC+ra6OGrv63JOmT3EwMyRmsAAQ9TlQfZctBaqXIjFtLYwuHjONvvK1pgFlmdr
 O/8g6miiKPl5krjtXwnOd7I6b5KJMMX+/vaTwIaIsOruFfxCy67j0Xb5Ym0kJtB9it4Alfsqr0j
 QpKbHcfzMPtR9VxUVI4+CRx518miuwLbefAb9fak0Ukf7dLh7Dg4PqM/FfEQRshClt5JD2IwTx3
 lO2PdK8IzQo0iTCuz5x42BA==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[rock-chips.com,kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,collabora.com];
	TAGGED_FROM(0.00)[bounces-275492-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,collabora.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 38E35288707
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series overhauls the Rockchip USBDP driver; apart from a
a bunch of cleanups and small improvements the main goal is to
get the driver ready for proper USB-C DP AltMode support.

Once this series has landed, it unblocks enabling proper USB-C
DP AltMode on the RK3588 and RK3576 platforms incl. runtime PM
for the Synopsys DesignWare DisplayPort controller.

Apart from this series, further changes are required on the
DRM side. There are no compile-time dependencies between the
DRM side and the PHY side, but the PHY side must be applied
to avoid SErrors once runtime PM is added to the DisplayPort
controller driver. Thus it would be really good to land this
series in the next merge window.

Changes in v3:
- Link to v2: https://lore.kernel.org/r/20260213-rockchip-usbdp-cleanup-v2-0-b67ec225f96e@collabora.com
- Add patch to register the USBDP PHY as DRM bridge
- Add patch to describe ports in DT binding (used by the DRM bridge)
- Add patch to drop HPD handling from the PHY

Changes in v2:
- Link to v1: https://lore.kernel.org/r/20260203-rockchip-usbdp-cleanup-v1-0-16a6f92ed176@collabora.com
- Added new patches to fix USB3 SError

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
Frank Wang (1):
      phy: rockchip: usbdp: Amend SSC modulation deviation

Sebastian Reichel (9):
      dt-bindings: phy: rockchip-usbdp: add improved ports scheme
      phy: rockchip: usbdp: Do not loose USB3 PHY status
      phy: rockchip: usbdp: Keep clocks running on PHY re-init
      phy: rockchip: usbdp: Add missing mode_change update
      phy: rockchip: usbdp: Rename DP lane functions
      phy: rockchip: usbdp: Use FIELD_PREP_WM16_CONST
      phy: rockchip: usbdp: Cleanup DP lane selection function
      phy: rockchip: usbdp: Register DP aux bridge
      phy: rockchip: usbdp: Drop DP HPD handling

William Wu (1):
      phy: rockchip: usbdp: Fix LFPS detect threshold control

Zhang Yubing (1):
      phy: rockchip: usbdp: Support single-lane DP

 .../bindings/phy/phy-rockchip-usbdp.yaml           |  23 +++
 drivers/phy/rockchip/Kconfig                       |   2 +
 drivers/phy/rockchip/phy-rockchip-usbdp.c          | 158 +++++++--------------
 3 files changed, 74 insertions(+), 109 deletions(-)
---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260203-rockchip-usbdp-cleanup-5b59dfb561a3

Best regards,
-- 
Sebastian Reichel <sebastian.reichel@collabora.com>


