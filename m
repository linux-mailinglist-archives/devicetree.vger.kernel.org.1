Return-Path: <devicetree+bounces-78570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E24912AB4
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 17:55:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6FC591C20852
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 15:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D599215EFD4;
	Fri, 21 Jun 2024 15:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="A7mHq8Qw"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A23F5FB8A
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 15:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718985296; cv=none; b=rC+BVSByoFKdLkuEbiFFwqLYGAcNNVxL6KrO4hfsFWYsEr7pFfhob1SRFCah80UonGLtuVzKIp3WBMxe4+3Skt2ETcv890nhDAB3xYushK018sM8KnMlITW0MIOj6DjQ1R4cXEIxbOkUscS2LXhJINOnTFBfCaNkdbB0CRLky1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718985296; c=relaxed/simple;
	bh=iOBars2ahPBnETtvl7be4zl2blkYOblNcBW/pVY3E7s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sqDFw9Z8mY7v7dg2GLFy5ZT59C4stTRJjsZMCdiZvoiwiEUswsEgvKrUmBUBZ0N99J1lspOdWjYGVjP9e4zcRS++nsyb6FEkGn4t0N/8yhWhNJtEir3AuBCJ9ubTHrnktCaCzO2OIP8167BiBXZ3kUV89JhOhcmqcHwFC8qQVwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=A7mHq8Qw; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 61DB7831A1;
	Fri, 21 Jun 2024 17:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1718985293;
	bh=xHndJ9ER1I1CwqdtytlCmkZaVqKOVbGUobKWj+eJSpw=;
	h=From:To:Cc:Subject:Date:From;
	b=A7mHq8Qw02OFec9VrQkZVJqCeNKaYi9zcGy+JEL0V8n9NZBfMugZmnfwy4dzZ6rFJ
	 Mq/qxPQN6q1LoKTEljM/6xUuoi/GncjMfRimxD2xh4xBYCYjSuo3T91t0YLEzO0xhz
	 XJcvvEUr2keji1L8nwBBMQzJMR0OMLpCn+hTdGQsk3ed0LumPIN2AhEXcdv0kX/b0C
	 nUXAMoYDiG4yhGqKXhQK7++pNmo2BrXX+GCktvDeKcFMAuDNszLsB8giNO9crjpWa2
	 yM18x6nGpYloDmV1qmaMlWD8kH6ODZckKHKj+IdfAJUQsBPiNaG4Tp2s6ACDm+lroR
	 66WHIntMlQbEA==
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
Subject: [PATCH v2 1/2] dt-bindings: display: bridge: tc358867: Document default DP preemphasis
Date: Fri, 21 Jun 2024 17:53:53 +0200
Message-ID: <20240621155430.92894-1-marex@denx.de>
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
---
 .../display/bridge/toshiba,tc358767.yaml       | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
index 2ad0cd6dd49e0..6287eb2b40908 100644
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
+                  Display port output Pre-Emphasis settings for both ports.
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


