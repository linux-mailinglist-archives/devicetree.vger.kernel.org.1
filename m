Return-Path: <devicetree+bounces-246845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 16105CC0AA6
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 04:01:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E95FE3035D31
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 02:59:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 770BF2F3623;
	Tue, 16 Dec 2025 02:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ite.com.tw header.i=@ite.com.tw header.b="owQKTIFS"
X-Original-To: devicetree@vger.kernel.org
Received: from ironport.ite.com.tw (hc210-202-87-179.vdslpro.static.apol.com.tw [210.202.87.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BCBF2E8B9F;
	Tue, 16 Dec 2025 02:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.202.87.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765853988; cv=none; b=ao6r88Rx1ZtzuKnNhvlHns146F8mZsDbQBHboK2Ry1UseJQUByBaAAvS3jrak/7asCAP51yqfchH5dntQsGE4w59wkWcRWI27qvWUqkBrgVLFAEsjt2v400+iio5gFo3O46cqJ3RjM23u5NdDYw9bffhZdEUo+9ys7al4iqDJx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765853988; c=relaxed/simple;
	bh=6CBzwqaiiwA5jdq21rdA2+OaEod9uILSwQU1/16ghgg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=qJveX0eED0crAnbL9bGY69Zs5oWzPSfFnYVEtnNc9qfRUuGF400w2p6/fahfxBoR6Rf3UsXKLWBf9LRYy/geWs6hsHoiRtqJ2EF56fqZx56euUqxJNdaai3WsIOG5DCTB9EQccB/6xCfEadE6I7sVre/1Jf4v7lqtUm6tsyHEpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ite.com.tw; spf=pass smtp.mailfrom=ite.com.tw; dkim=pass (2048-bit key) header.d=ite.com.tw header.i=@ite.com.tw header.b=owQKTIFS; arc=none smtp.client-ip=210.202.87.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ite.com.tw
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ite.com.tw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=ite.com.tw; s=dkim;
  h=from:date:subject:mime-version:content-transfer-encoding:
   message-id:references:in-reply-to:to:cc;
  bh=TyIsVcwkcIFBSuyGAEWQRlk2lyFi7KjeX0BLprRa5Bc=;
  b=owQKTIFSR8iNjj8dU1KQdiIec4WDGld5yrROqv5cQ+BPOzI4KMVRZ7YK
   vHlVFlik2MdW85m7chqGW3SwNDgNIuZWVeK2e7GwyY6lvxXldrsFrJgvk
   /XbvhMjgS4RbhvOJAzNxS/Jyq1Ybdgnm4xX0gaW00Lv14OPFwZM+jI687
   IDCkKKGPun001twnIw/hOHl8Y/ptjJGQdjDeBp+toH7gMS5X3m6w493fP
   OXtZnsV1dr2k9wHgGq5e3o96tcemVGDH4m42tiht3YfIBHDS2nnSDpw1z
   H7c+OGgXQQNnBNx0JeA738Ibq4vWgEKTWNtpUCBwUHZA2lcZSMOa7907T
   A==;
X-CSE-ConnectionGUID: n7OWDQ6PQ2i4sWSpZRU8nQ==
X-CSE-MsgGUID: yLCPddCSTW+5Wh0uRHZmzg==
Received: from unknown (HELO mse.ite.com.tw) ([192.168.35.30])
  by ironport.ite.com.tw with ESMTP; 16 Dec 2025 10:52:21 +0800
Received: from CSBMAIL1.internal.ite.com.tw (CSBMAIL1.internal.ite.com.tw [192.168.65.58])
	by mse.ite.com.tw with ESMTP id 5BG2qCur088350;
	Tue, 16 Dec 2025 10:52:12 +0800 (+08)
	(envelope-from Pet.Weng@ite.com.tw)
Received: from [127.0.1.1] (192.168.72.40) by CSBMAIL1.internal.ite.com.tw
 (192.168.65.58) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.57; Tue, 16 Dec
 2025 10:52:09 +0800
From: Pet Weng <pet.weng@ite.com.tw>
Date: Tue, 16 Dec 2025 10:51:51 +0800
Subject: [PATCH v4 3/3] MAINTAINERS: Add entry for ITE IT61620 MIPI to HDMI
 bridge driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20251216-it61620-0714-v4-3-9d2fea7847ae@ite.com.tw>
References: <20251216-it61620-0714-v4-0-9d2fea7847ae@ite.com.tw>
In-Reply-To: <20251216-it61620-0714-v4-0-9d2fea7847ae@ite.com.tw>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765853533; l=1028;
 i=pet.weng@ite.com.tw; s=20250702; h=from:subject:message-id;
 bh=6CBzwqaiiwA5jdq21rdA2+OaEod9uILSwQU1/16ghgg=;
 b=DXe7hKA7VxYFFNZqNfV1/9AbCco1LGQ8fQ0WO1Vg4jFLxqSYMmm2wiOiGtpV7ysDKZGAtFDzc
 XczxdSuAYFsAzr9Kz5yNUXY+kAEAI1xhW3O/o9Jjk2PQlrKDooRUCWv
X-Developer-Key: i=pet.weng@ite.com.tw; a=ed25519;
 pk=wd08uBtTLb93x2ixbKVNsxiZPdMh1Ov4z5klodh2bqo=
X-ClientProxiedBy: CSBMAIL1.internal.ite.com.tw (192.168.65.58) To
 CSBMAIL1.internal.ite.com.tw (192.168.65.58)
X-TM-SNTS-SMTP:
	3DFDA0FE772A1F9B5D8E8D34B7480AE7D249644E2943FE39641A68C7E56A00182002:8
X-MAIL:mse.ite.com.tw 5BG2qCur088350

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


