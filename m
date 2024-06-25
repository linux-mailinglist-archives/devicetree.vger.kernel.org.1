Return-Path: <devicetree+bounces-79679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D044B9166ED
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 14:06:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB3AE283174
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 12:06:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA35314D294;
	Tue, 25 Jun 2024 12:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="ZYROpbqq"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60441494CB
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 12:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719317178; cv=none; b=oD/wp1l3+nAjF61Ai8khZIsK1lPE4CTmClPdTJOfRqOAU2pCtFBXeQHQ6GGGbyZd0EH4NLZvHAo5Zb0szDVmQOcMuVtNhmB5B4Pz58CJVy3ket0v1Xq3uNN04cFCBi57i/ym+A4t9S2Xt5rh+y/V05T+yDQ2fgQoLjmXk9mQs1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719317178; c=relaxed/simple;
	bh=EfFcpvrCpUfeuBT31M5STcTrh2VqsXbyzwt7xvPoZM8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=g6yzkVDrEAT+WvLbLCASqfRRmJyYqPFhjoOmQq6ECsdBz+uAKJ5/TW0c0v64B4062sLWJIqzdkgqahDX7gs/rzDdQpRajlRujfZWh2bQf0I+WX1mmr8GKaAIt8joP+fsVwE0BIKOACGY8+fhpVwct7/eZkHe35KcSWfnjB+vF3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=ZYROpbqq; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 54D5488387;
	Tue, 25 Jun 2024 14:06:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1719317174;
	bh=/c6ynjJk6jJLhARA3rqhjYq6avEqujmKzCgRxLD/RdQ=;
	h=From:To:Cc:Subject:Date:From;
	b=ZYROpbqqFxX5nqzujI8mSuZszRzYTumI51b6syKXjC8hVoxpk5AFedAmMGXhmjU2O
	 Kit6M42vQIwXr9Vlc0Fi/XWrL2Rqo4QByHmPgv8M9IMsHkWWb4YQnJimId35hwoePE
	 KJzQaARyNsDzasadjvkISDOsHnjtheM81dMC6xMjeC/ktgXw11idgkUv0saTLIC7fZ
	 rdIzXdQSIXFhM9ERkiHfol/2DxEvFFl57/GP7ooxZkb+/0M1wtkK3YfiaOFYoGvqIp
	 ZrkwJiJsvZw4ydRJj+pP/8AeDfEJ24a1kgt4u1fsJe5pfQIVuGPf2uMeAH7+m4NIOD
	 ZY34RULzjciCw==
From: Marek Vasut <marex@denx.de>
To: dri-devel@lists.freedesktop.org
Cc: Marek Vasut <marex@denx.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	kernel@dh-electronics.com
Subject: [PATCH v3 1/2] dt-bindings: display: bridge: tc358867: Document default DP preemphasis
Date: Tue, 25 Jun 2024 14:05:14 +0200
Message-ID: <20240625120552.145389-1-marex@denx.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

Document default DP port preemphasis configurable via new DT property
"toshiba,pre-emphasis". This is useful in case the DP link properties
are known and starting link training from preemphasis setting of 0 dB
is not useful. The preemphasis can be set separately for both DP lanes
in range 0=0dB, 1=3.5dB, 2=6dB .

This is an endpoint property, not a port property, because the TC9595
datasheet does mention that the DP might operate in some sort of split
mode, where each DP lane is used to feed one display, so in that case
there might be two endpoints.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@gmail.com>
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: Jonas Karlman <jonas@kwiboo.se>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: kernel@dh-electronics.com
---
V2: - Fix the type to u8 array
    - Fix the enum items to match what they represent
V3: - Update commit message, expand on this being an endpoint property
---
 .../display/bridge/toshiba,tc358767.yaml       | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
index 2ad0cd6dd49e0..9490854c22f3b 100644
--- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
@@ -98,6 +98,24 @@ properties:
             reference to a valid eDP panel input endpoint node. This port is
             optional, treated as DP panel if not defined
 
+        properties:
+          endpoint:
+            $ref: /schemas/media/video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              toshiba,pre-emphasis:
+                description:
+                  Display port output Pre-Emphasis settings for both DP lanes.
+                $ref: /schemas/types.yaml#/definitions/uint8-array
+                minItems: 2
+                maxItems: 2
+                items:
+                  enum:
+                    - 0 # No pre-emphasis
+                    - 1 # 3.5dB pre-emphasis
+                    - 2 # 6dB pre-emphasis
+
     oneOf:
       - required:
           - port@0
-- 
2.43.0


