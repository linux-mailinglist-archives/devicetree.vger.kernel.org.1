Return-Path: <devicetree+bounces-248640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 678F6CD49B2
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 04:11:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ACFE93009973
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 03:10:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30139325701;
	Mon, 22 Dec 2025 03:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ite.com.tw header.i=@ite.com.tw header.b="Y86luv1q"
X-Original-To: devicetree@vger.kernel.org
Received: from ironport.ite.com.tw (219-87-157-213.static.tfn.net.tw [219.87.157.213])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCC23254A2;
	Mon, 22 Dec 2025 03:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=219.87.157.213
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766373053; cv=none; b=E+jXeTHi1Hzn482dy8p2hutf7a8S7/RuVph6Eta8iOsY21n1qNW5hVoYM07dafs2rZD8A7Ubt8yr4Ou/tyB0xgsVrLFT9KkpUlA4mPx6HJLpridw14+7TaihQDv58lV4P2xT1Gzwc5kvny07gI9GJQ0taJPbCkBL+3OtvxgJA00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766373053; c=relaxed/simple;
	bh=6CBzwqaiiwA5jdq21rdA2+OaEod9uILSwQU1/16ghgg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=EvX4Zux4oB/SpRzo+VMX33mkaoua8nhZ4vKX8aWBGI4vQB1DiFyXxg1nYAPPCJwI4BWTO4YWACxjuef4ecZB7fsDu9AG0+ox8SC5LmIKPZEvsNNTb47ywjtbPhmQXdf1ANCdP8Br1Px6gRmlbnj2D5r9SxuwAI/hNDE7VIO93VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ite.com.tw; spf=pass smtp.mailfrom=ite.com.tw; dkim=pass (2048-bit key) header.d=ite.com.tw header.i=@ite.com.tw header.b=Y86luv1q; arc=none smtp.client-ip=219.87.157.213
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ite.com.tw
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ite.com.tw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=ite.com.tw; s=dkim;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=TyIsVcwkcIFBSuyGAEWQRlk2lyFi7KjeX0BLprRa5Bc=;
  b=Y86luv1qR2OhrXeWcrKyY1dB1jM0/BXzafXOFOhDKKcKc2+7JWHdzRcq
   osPOXiAceygUVvArOu1hTFmQQ/ga3OHsRYFVd4zDyPXOhNTbf267oo+Wr
   YLN7LtRbY/JhUMRMuRQ3oSO85Q9L+FECsyp6h8yqQjTifvwgEaPT/wznx
   EQecCU7eT8+0o/hSO9xYRU5GqHk6cZy0XVFHbDGS2LvEwIWaWYqodGSw9
   Vvcz58xS8pJCz3mC8ax4lrrDKErTS1sllipTYZdRkXyfl0oMAeaNQyzEv
   vsYWs056vK7ztFI13MUo0s4VRd6KVxygFd1olJf7OEB+B702fU+We1dvG
   w==;
X-CSE-ConnectionGUID: mCZ4LObkT8OMx98FuvrQ9g==
X-CSE-MsgGUID: MvSZ4tiwSCu9JdD3hYskgg==
Received: from unknown (HELO mse.ite.com.tw) ([192.168.35.30])
  by ironport.ite.com.tw with ESMTP; 22 Dec 2025 11:10:32 +0800
Received: from CSBMAIL1.internal.ite.com.tw (CSBMAIL1.internal.ite.com.tw [192.168.65.58])
	by mse.ite.com.tw with ESMTP id 5BM3AZ8G076415;
	Mon, 22 Dec 2025 11:10:35 +0800 (+08)
	(envelope-from Pet.Weng@ite.com.tw)
Received: from [127.0.1.1] (192.168.72.40) by CSBMAIL1.internal.ite.com.tw
 (192.168.65.58) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.57; Mon, 22 Dec
 2025 11:10:34 +0800
From: Pet Weng <pet.weng@ite.com.tw>
Date: Mon, 22 Dec 2025 11:10:14 +0800
Subject: [PATCH v5 3/3] MAINTAINERS: Add entry for ITE IT61620 MIPI to HDMI
 bridge driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20251222-it61620-0714-v5-3-afb6479ad3ca@ite.com.tw>
References: <20251222-it61620-0714-v5-0-afb6479ad3ca@ite.com.tw>
In-Reply-To: <20251222-it61620-0714-v5-0-afb6479ad3ca@ite.com.tw>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong
	<neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart
	<Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej
 Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, Hermes Wu <hermes.Wu@ite.com.tw>,
        Kenneth
 Hung <kenneth.Hung@ite.com.tw>,
        Pet Weng <pet.weng@ite.com.tw>, Pin-yen Lin
	<treapking@google.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766373040; l=1028;
 i=pet.weng@ite.com.tw; s=20250702; h=from:subject:message-id;
 bh=6CBzwqaiiwA5jdq21rdA2+OaEod9uILSwQU1/16ghgg=;
 b=TH4yzXIrZM6h4g4UG+P2fse7mfY26D0Vs1RFjnZTj/CpU1EmuQrUWBCdvhyDBqcbvZu3bQo6V
 u2GFMXy3YtRAI1mc4NR0sQx7y0Qt49UMVmpBOocaR3uf9Wg2cPNp0lq
X-Developer-Key: i=pet.weng@ite.com.tw; a=ed25519;
 pk=wd08uBtTLb93x2ixbKVNsxiZPdMh1Ov4z5klodh2bqo=
X-ClientProxiedBy: CSBMAIL1.internal.ite.com.tw (192.168.65.58) To
 CSBMAIL1.internal.ite.com.tw (192.168.65.58)
X-TM-SNTS-SMTP:
	B0E9D362ABEA6BDD521AC2DF1A4226DDA6A91D8DC3973FBAD1FC7B719CB19C2C2002:8
X-MAIL:mse.ite.com.tw 5BM3AZ8G076415

Add a new entry for the ITE IT61620 MIPI to HDMI bridge driver to the
MAINTAINERS file, include the responsible maintainer, mailing list, and
file patterns.

Signed-off-by: Pet Weng <pet.weng@ite.com.tw>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index f980623f1479bb36d2c923597dc17e0ef8df32e0..1ca89de60c96110f270e635a68f2f42b985a0d2e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13484,6 +13484,13 @@ T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
 F:	Documentation/devicetree/bindings/display/bridge/ite,it6263.yaml
 F:	drivers/gpu/drm/bridge/ite-it6263.c
 
+ITE IT61620 MIPI DSI TO HDMI BRIDGE DRIVER
+M:	Pet Weng <pet.weng@ite.com.tw>
+L:	dri-devel@lists.freedesktop.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/display/bridge/ite,it61620.yaml
+F:	drivers/gpu/drm/bridge/ite-it61620.c
+
 ITE IT66121 HDMI BRIDGE DRIVER
 M:	Phong LE <ple@baylibre.com>
 M:	Neil Armstrong <neil.armstrong@linaro.org>

-- 
2.34.1


