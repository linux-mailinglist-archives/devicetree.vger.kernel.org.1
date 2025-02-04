Return-Path: <devicetree+bounces-142912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B3EA271FD
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 13:45:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9334D7A2D1A
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 12:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8F1521148E;
	Tue,  4 Feb 2025 12:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="aZy9MkAi"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87D5F20CCC3;
	Tue,  4 Feb 2025 12:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738672826; cv=none; b=KaisPynOvPylVfUjDkFdSmjUIAUc73ejbKWefTVG2Pq9S0zBgT60fOIXURB2IN045taGajZoTcUyU/9FoQUNznRb2ps0ZNzdW9hMeVa+dbrYAjLyDs+Y6P49DnqigxhHg82yH1IiYXNLM/XiR/cjh3QQITn+HbxkxCHVv6uK4oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738672826; c=relaxed/simple;
	bh=sCD3UAqTLlx31/Pe8SSEC1P6gHo0WdI2HK57DyCsFLA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=uPkVr/FWb3ACE4ZekxFnMwpHmNeHNHxWFPcRdNgGbZLqINzj8MuDxDQDhS2kEXQ9pdF0O3YRlq/jELy9WOVLgQVKZdImX3kEjfCL4CNdNeNbILLIis7D7RJrOq4h7jX8gu9v2ha7BAhCAlAOzaGmJJpV29bVPXBWl39TdMb7/jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=aZy9MkAi; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1738672814;
	bh=sCD3UAqTLlx31/Pe8SSEC1P6gHo0WdI2HK57DyCsFLA=;
	h=From:Subject:Date:To:Cc:From;
	b=aZy9MkAizdhNdDigZnoM4HwqQuIgR7jZ3Cz0mTPmTu/dbuJnFMPG20+QCFJCsqka/
	 8ZWsXVyTxt4aO4oE1Augpv/OpHCpJfM3ZmaFLvlQ7Lczhq0yokRVhX6iJo/c5z1rxM
	 HU+PWlG4dnkGQL5S5senHh1b+mubDBTtyQlnqmPadUfyeNWyDozY38F2aOElQrLFEx
	 q7dv1AFPXQUQF4F9aGaaddhvH5Cla92hoiDPp1Nu60uU00kXTS6D+V/28TtDnzkbHA
	 kzRNk9Kdn34n26Q4bsSGftIDS4yw2XuWSa30YKuiVon+3HGBTiWi0IWIFw+B8Tc1TF
	 QroCertfrGhTw==
Received: from localhost (unknown [188.27.43.189])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id 14DA917E0848;
	Tue,  4 Feb 2025 13:40:14 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v3 0/5] Improve Rockchip VOP2 display modes handling on
 RK3588 HDMI0
Date: Tue, 04 Feb 2025 14:40:03 +0200
Message-Id: <20250204-vop2-hdmi0-disp-modes-v3-0-d71c6a196e58@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKMKomcC/4XNywrCMBCF4VcpWRvJpOnNle8hLnKZ2oHWlESCU
 vrupt0Igrj8D8w3C4sYCCM7FQsLmCiSv+coDwWzg77fkJPLzaSQCgBqnvws+eAmEtxRnPnkHUZ
 uyg7LGrqmbnuWb+eAPT1393LNPVB8+PDa3yTY1n9iAi64NFZX4Ixqu/Zs/Thq44M+Wj+xTU3yI
 0mAX5LMkmrA9pUQgKr6ltZ1fQMvH9NECAEAAA==
X-Change-ID: 20241116-vop2-hdmi0-disp-modes-b39e3619768f
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 FUKAUMI Naoki <naoki@radxa.com>
X-Mailer: b4 0.14.2

VOP2 support for RK3588 SoC is currently not capable to handle the full
range of display modes advertised by the connected screens, e.g. it
doesn't cope well with non-integer refresh rates like 59.94, 29.97,
23.98, etc.

There are two HDMI PHYs available on RK3588, each providing a PLL that
can be used by three out of the four VOP2 video ports as an alternative
and more accurate pixel clock source. They are able to handle display
modes up to 4K@60Hz, anything above that, e.g. the maximum supported
8K@60Hz resolution, is supposed to be handled by the system CRU.

There is quite a bit of complexity in downstream driver to handle all
possible usecases - see [1] for a brief description on how was that
designed to work.

As for the moment HDMI1 output support [2] is not fully merged upstream,
the patch series targets HDMI0 only.

Additionally, please note that testing any HDMI 2.0 specific modes, e.g.
4K@60Hz, requires high TMDS clock ratio and scrambling capability [3].

Thanks,
Cristian

[1] https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr4.1/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c#L4742
[2] https://lore.kernel.org/lkml/20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com/
[3] https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commits/rk3588-hdmi-bridge-v6.14-rc1

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Changes in v3:
- Check the already computed clock instead of mode->crtc_clock in the
  conditional that triggers the switch to HDMI PHY PLL
- Rebased series onto v6.14-rc1
- Link to v2: https://lore.kernel.org/r/20241211-vop2-hdmi0-disp-modes-v2-0-471cf5001e45@collabora.com

Changes in v2:
- Collected Acked-by tag from Rob and Tested-by from Naoki
- Rebased series onto v6.13-rc1
- Link to v1: https://lore.kernel.org/r/20241116-vop2-hdmi0-disp-modes-v1-0-2bca51db4898@collabora.com

---
Cristian Ciocaltea (5):
      dt-bindings: display: vop2: Add optional PLL clock properties
      drm/rockchip: vop2: Drop unnecessary if_pixclk_rate computation
      drm/rockchip: vop2: Improve display modes handling on RK3588 HDMI0
      arm64: dts: rockchip: Enable HDMI0 PHY clk provider on RK3588
      arm64: dts: rockchip: Add HDMI0 PHY PLL clock source to VOP2 on RK3588

 .../bindings/display/rockchip/rockchip-vop2.yaml   |  4 +++
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi      |  7 +++--
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c       | 36 +++++++++++++++++++++-
 3 files changed, 44 insertions(+), 3 deletions(-)
---
base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
change-id: 20241116-vop2-hdmi0-disp-modes-b39e3619768f


