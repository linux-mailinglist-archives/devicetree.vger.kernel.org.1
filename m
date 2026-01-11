Return-Path: <devicetree+bounces-253527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E04D0E6A4
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 09:59:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 63F4B3013E89
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 08:59:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07219318BBC;
	Sun, 11 Jan 2026 08:59:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b="oN9hi+cB"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta1.migadu.com (out-186.mta1.migadu.com [95.215.58.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0C4318BBE
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 08:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768121952; cv=none; b=ADC7gtQZoCoJRy5Fnc6ag8pE/swio0SVq5PrYwBvexlSdJnCOChzm7c13tKZgsi/SHs3vxMX4yl9zAuYhb+tjYmBFvklz/k5K+MbAnN/x8FXx4LpGSJehlEYbmkXdPA/Xz3rm4G5THlrVaq9ci5VFIzjpuMSO+dbzM5ATYR7u1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768121952; c=relaxed/simple;
	bh=Z/ZXXD+gUPfmmPcd9YhlJk6IiVcIjuMXx25upXhGVsQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QpVnG1mT17chu94tfBQKEWK2i0mBDZ7gskMx3X/Ltybvt5TZnejc2tvjl73CP12u/7jJ9tl5BgyxzbT14zHDkp7oNR/W3BjIEz7zrcL92JZZ3oQNnhNvu6/7Fa7BsnTfwRRu/7XyJ9Cs31Xxm0X4wkVq3biZNzPi1Ym+wVTvnXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool; spf=pass smtp.mailfrom=packett.cool; dkim=pass (2048-bit key) header.d=packett.cool header.i=@packett.cool header.b=oN9hi+cB; arc=none smtp.client-ip=95.215.58.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=packett.cool
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=packett.cool
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1768121947;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=T2qIhBHdruxrsrN5s9W/Zj5ognfZkeHYHVmMGj3CpRs=;
	b=oN9hi+cBLu8Qx2bzZumQ3t99HWUQIPvficYZ4E2o/KSwnFtNE3ZZ7t+awUE+U/5MsA/X+M
	4aQSdISqktobutuKEhVJOYEpjRy5wYjibYIspnN74kAgUL1CBXLhqSwVApO21RSxOwPQVr
	n9HJ2/l0KXJPFfNvL4vseX2tNb0r14dr1fOIPL9mr3G9dSuJivo02yaF/lxGCnwfXYe+C1
	hDy28BGFtvluLlXnoAV2ZjXe1zlcLUgWOldOumBn7WkL0HuDAha5nAcO1YcnbDA6wHQc6U
	BzgJEa8cTV0VF7NCB6WqukkMNuVjexTffoaNavbU18z8puj8AyTiqfY7aQb8Mg==
From: Val Packett <val@packett.cool>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
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
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Val Packett <val@packett.cool>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] dt-bindings: display: bridge: simple: document the Algoltek AG6311 DP-to-HDMI bridge
Date: Sun, 11 Jan 2026 05:35:10 -0300
Message-ID: <20260111085726.634091-4-val@packett.cool>
In-Reply-To: <20260111085726.634091-2-val@packett.cool>
References: <20260111085726.634091-2-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

The Algoltek AG6311 is a transparent DisplayPort to HDMI bridge.

Signed-off-by: Val Packett <val@packett.cool>
---
 .../devicetree/bindings/display/bridge/simple-bridge.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
index 20c7e0a77802..e6808419f625 100644
--- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
@@ -27,6 +27,7 @@ properties:
           - const: adi,adv7123
       - enum:
           - adi,adv7123
+          - algoltek,ag6311
           - asl-tek,cs5263
           - dumb-vga-dac
           - parade,ps185hdm
-- 
2.51.2


