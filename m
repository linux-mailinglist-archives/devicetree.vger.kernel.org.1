Return-Path: <devicetree+bounces-142057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CF29CA23F96
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 16:25:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6777C1885328
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 15:26:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B79671DF26F;
	Fri, 31 Jan 2025 15:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="LZ3GUwoW"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D1C1C1F29;
	Fri, 31 Jan 2025 15:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738337155; cv=none; b=iwOI1N5x6bv8+YfyC/xatpokYyWpUVeXIgUlmCTFiIDTP3hw41u1u6wr5sS2U5rsps78M+Q819J53hrhf+J9/00nDX2mD6ba57cdSVp3WgQLth5zpxcxuP9CBZgAHd+tGbTAhhQJnzuYAjAW61KiHfFidn2S0mK3yyXVUNf6JFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738337155; c=relaxed/simple;
	bh=Ht4nh+ceSywYcLNTQL84iEYXYJ0KQEw+LSoMn7rFgDk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oeg/zXH4N6rMFwiwdjqMDhE4Csmawyj/bMxQY1UpOeBd5vVahCzvHE7hWDFXcyz6Fw4rxD5R9FXXX9ccJAfZtCCsqocz7DWrBerRxhCkEcQuJ2sw6ZfKvukGzV6SWMHQWhEwgjUMJyBTLvE+14OfvnYOoSA3isIhGicw742CE7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=LZ3GUwoW; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1738337150;
	bh=Ht4nh+ceSywYcLNTQL84iEYXYJ0KQEw+LSoMn7rFgDk=;
	h=From:To:Cc:Subject:Date:From;
	b=LZ3GUwoWr3kPW2fA3CTP18cETdwgHVjVbQ3dl65LVWAiiaKPcprqRAcWHvYMgUM9v
	 D0b7w1Ky4cnhIP9ez8d4aD33p7l+4xRwXcV6GyJCljc0y+yL64QzGmLT9k2uck/wRO
	 ddAbV2kRvsUWxy3Zpztpl+I24kgqHQvqbWPsAnIWL3cbPFVIN/QNp+O7MGv7C3j1i+
	 gYw5N/Az0Iki5+r0PTy4ndjLrynji+Qj/eBawF3KNMdG91WB8d+f8TBesIoH+z8B0h
	 GGGIvNCPOEcvoQNnrFtbqkmmNo/Aun7oCh70U35BntBcfwOBEsrBlS7OaaNA38kYAT
	 5jeoyUej1biwA==
Received: from trenzalore.hitronhub.home (unknown [23.233.251.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3402917E0E99;
	Fri, 31 Jan 2025 16:25:46 +0100 (CET)
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
	Alexey Charkov <alchark@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Algea Cao <algea.cao@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	kernel@collabora.com
Subject: [PATCH v4 0/2] Add HDMI audio on the Radxa ROCK 5B
Date: Fri, 31 Jan 2025 10:23:20 -0500
Message-ID: <20250131152438.2891507-1-detlev.casanova@collabora.com>
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
generic HDMI Codec framework [1] recently merged in the master branch.
The parameters computation has been kept as is and the data stored in the
dw_hdmi_qp struct as been cleaned up.

The table for the N values has been edited to reflect N recommended values
as well as CTS recommended values.

The downstream kernel also implements a machine driver for HDMI audio but
it is doing exactly what the simple-audio-card driver does, so use that
instead in the ROCK 5B device tree.

Based on Linus' master branch.

[1]: https://lore.kernel.org/all/20241224-drm-bridge-hdmi-connector-v10-0-dc89577cd438@linaro.org/

Changes since v3:
 - Renamed function to start with dw_hdmi_qp

Changes since v2:
 - Also clear the audio infoframe
 - Write AUDI_CONTENTS0 to its default value in case it gets overwritten.
 - Store tmds_char_rate in the dw_hdmi_qp struct in atomic_enable
 - Clear tmds_char_rate in atomic_disable and only write registers when
   tmds_char_rate is not 0.
 - Do not use connector_state duplicates

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
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c  | 497 ++++++++++++++++++
 3 files changed, 517 insertions(+)

-- 
2.48.1


