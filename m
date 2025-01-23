Return-Path: <devicetree+bounces-140655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1A6A1ACAB
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 23:29:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E83BA3A4781
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 22:29:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D31EB1D0B8E;
	Thu, 23 Jan 2025 22:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="g+TO+Qu+"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD2B935280;
	Thu, 23 Jan 2025 22:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737671351; cv=none; b=sk98eJcMdWPqZRpNSWzsXX01tWP0I1aXNCb5dQRiLs8chtzByOpimpH/WiaFT6jOqDzRD56C78HHuBOldPQH3fei2iHwICAhVH4UtyxCwGuVK6MITGL+/L1qfoyS2I6CW8QspuQfa4fUD7oi/TRBkC2d9Pe2lCYhrCWAMfnX4KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737671351; c=relaxed/simple;
	bh=lhdPIRPV1EIPaxeK+CehOf2BLDHtI+qHEjmo6IGSujQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kA3dN8QgcFylHC8EgOoB8DU0Di/w6KqqfE5R/YL26f6OiEqiogOZT8j7S2RlJsohexywfqv/qQTX/RhbJwRQW8ZZbuxaO+8rnCRo2txKWSzYACGESFmbfsDGwSrpV1GSiPGHsVG8a3OWiPlJRhnfDSBXG6cDLXXpyZaF4kCJ2N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=g+TO+Qu+; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1737671347;
	bh=lhdPIRPV1EIPaxeK+CehOf2BLDHtI+qHEjmo6IGSujQ=;
	h=From:To:Cc:Subject:Date:From;
	b=g+TO+Qu+FchNW09ozcweoOY27PIzeRQd1sA61HjvjuFCx/jM185aHDLWgh9gukSNi
	 xC8D2BkdWRpwvU4BXyBauf3BJFY9NBUufuJo9ADwI1ClcAQr4ywpZVdtLnV4bjOwU/
	 Hfs997D977jAOKfXFmlUzkG3oARIjP1cTKzEMC7z1Fc2KB6XO550s5pPxV9ksoSc3g
	 Rny3tN4RR5rp83L6cNNCJh94nZWODlOoxATUIop/zReHy/B+BgFJ2FHMLYFUmKAZV/
	 HdghJU+ntrl52PF/M3Yq1IUKqwvOvpxMDCbQG5cAjhJdp2Xk7i1+H3JRpuADPLmrnO
	 n7v9K6PKNHsNQ==
Received: from earth.mtl.collabora.ca (mtl.collabora.ca [66.171.169.34])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9BD5017E0E9E;
	Thu, 23 Jan 2025 23:29:03 +0100 (CET)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Alexey Charkov <alchark@gmail.com>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Algea Cao <algea.cao@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	kernel@collabora.com
Subject: [PATCH v2 0/2] Add HDMI audio on the Radxa ROCK 5B
Date: Thu, 23 Jan 2025 17:28:05 -0500
Message-ID: <20250123222850.223255-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To support HDMI audio on the rk3588 based devices, the generic HDMI
Codec framework is used in the dw-hdmi-qp DRM bridge driver.

The implementation is mainly based on the downstream driver, ported to the
generic HDMI Codec framework [1] recently merged in the DRM tree.
The parameters computation has been kept as is and the data stored in the
dw_hdmi_qp struct as been cleaned up.

The downstream kernel also implements a machine driver for HDMI audio but
it is doing exactly what the simple-audio-card driver does, so use that
instead in the ROCK 5B device tree.

Based on Linus' master branch.

Changes since v1:
 - Remove useless audio_mutex (was used downstream for multiple drivers access
   to audio functions)
 - Let hdmi_codec build and setup audio infoframes
 - Only access audio registers when connector is connected
 - Rebased on master branch

Detlev Casanova (1):
  arm64: dts: rockchip: Add HDMI0 audio output on rock-5b

Sugar Zhang (1):
  drm/bridge: synopsys: Add audio support for dw-hdmi-qp

 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |   1 +
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |  19 +
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c  | 424 ++++++++++++++++++
 3 files changed, 444 insertions(+)

-- 
2.48.1


