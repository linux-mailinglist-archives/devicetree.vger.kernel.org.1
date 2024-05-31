Return-Path: <devicetree+bounces-71405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B35758D6AB0
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 22:30:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D0802862DB
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 20:30:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BA547D06E;
	Fri, 31 May 2024 20:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="g5BnpzDc"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E64E1103
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 20:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717187448; cv=none; b=fTU6KRQBX9DGe3d7WTS9c96WWdLuecgQo8guq8910h3faRoNP112c8Qay3bLSHJaiPxGEIPa3csQdgaaPesfblk9rTVdFNmn3pOa3Zr2WXlKQxiSyKeZpTkyJUn1jaLDV59/4HJ4v9XbHhSW3mzzA492YviOmEF5hIZmMWBw5fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717187448; c=relaxed/simple;
	bh=XRq9DsqmTENpYnz0kuPhGBUvzzd8ljF1qG9GoasLnrA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nqQoWU5yCTZCfnoRYOMWf5YdYmeRlPBbsxcTkjOqkert5QfXxVuVAg/9OmdGllh3bk2vBVup+jCAkUVcP66eIic1jItbBHdNA28lf41+199xfFVDUS92xV3vbj/jIWSJ9g+nIibCnXrUQ/6MUAqnLNPg87Zn81o89RybvsqXuTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=g5BnpzDc; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id EF664882CD;
	Fri, 31 May 2024 22:30:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1717187445;
	bh=qzD1t6MICgvd1YL3Mn1QtL9sgSSJbrpTcgP7gHsUP/A=;
	h=From:To:Cc:Subject:Date:From;
	b=g5BnpzDcPLiRxU3cq9MW4+6383SETT3JzplUPM9sicU2KoRYrTdPKRkkuoc1bZKGi
	 vzcZcbxw6mZVenF6pEMv7EPY9njMFK1iWYxIBHh24kwkwxZC5R0lNqWWfEqhO8jDGS
	 HsutYQ4wNQimbXKjnSbAQz5sRwU2/fFUizfMnYXZoX4CQO5nfnXn5c4FBvh6Fr7PJx
	 IB5yKzkusIj4aY8mmUyjQoHLUoFDFgf0cnJQSOBgql/sGhDpaZ9JxFOK37GK6/XI68
	 0y/LRDHmr2i20dO53Gfbo9WKxYjx3rqqMzIwvGcRRo13oob9CF69PAzZW0CVwu/f/A
	 gjisuQVmUqsuw==
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
Subject: [PATCH] dt-bindings: display: bridge: tc358767: Keep enum sorted
Date: Fri, 31 May 2024 22:30:18 +0200
Message-ID: <20240531203031.277334-1-marex@denx.de>
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

Keep the list sorted numerically. No functional change.

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
 .../devicetree/bindings/display/bridge/toshiba,tc358767.yaml    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
index ae894d996d21f..2ad0cd6dd49e0 100644
--- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
@@ -25,8 +25,8 @@ properties:
 
   reg:
     enum:
-      - 0x68
       - 0x0f
+      - 0x68
     description: |
         i2c address of the bridge, 0x68 or 0x0f, depending on bootstrap pins
 
-- 
2.43.0


