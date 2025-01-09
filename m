Return-Path: <devicetree+bounces-137032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE76A074D2
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:36:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A3A0188AE2D
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:36:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4235B2163BF;
	Thu,  9 Jan 2025 11:36:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B97C612EBEA
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 11:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736422570; cv=none; b=Q25wI6jRtrIgUBZ6COqjWuvv0rzulLPLSSra4QvuErcQHihtqewl6GhdBvOF6HqVUhSVzqtRl13wCpI0eyd72kAjC1w3LcquoTDqaBfCteuoYzfKnQTMVkEv/AtBgEJYvesA21ndcfCUyIUM+jm8330R1raWMWT1my8ItpNmPjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736422570; c=relaxed/simple;
	bh=X2lkeyxcjyoGU2GIdIOxvZRnpboxYAqentdeB9+WTOs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VpkU1rxTK663RkNyK/p/zRZodMYjJ5oQ8itY7O2vf58PLMNAsPnEDNaWfj3owjWsxFQEkMsuWvwIWXWTEzBLj1uhiY2TRNm188shxusihxUbflGFNgaQ2BGeLBTfL2gGcNEoALj/OmJPnkKQU35dDMPzvPYPAyJWgnQVPtjSu+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1tVqpC-0008AS-9z; Thu, 09 Jan 2025 12:35:42 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 09 Jan 2025 12:34:57 +0100
Subject: [PATCH 1/2] dt-bindings: display: simple: Add DataImage
 FG080016DNCWAG03 compatible string
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250109-panel-dataimage_fg080016dncwag-v1-1-0465603f6669@pengutronix.de>
References: <20250109-panel-dataimage_fg080016dncwag-v1-0-0465603f6669@pengutronix.de>
In-Reply-To: <20250109-panel-dataimage_fg080016dncwag-v1-0-0465603f6669@pengutronix.de>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1170; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=X2lkeyxcjyoGU2GIdIOxvZRnpboxYAqentdeB9+WTOs=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYkiv39It79C/km/2ZauZba4plvlpl1awnj1jX3iqqyZLu
 lZmnt29jlIWBjEOBlkxRZZYNTkFIWP/62aVdrEwc1iZQIYwcHEKwERsXzP8rxAWvy1Z47HNKTHm
 zZHVGia/J3O68Hz4emLH8qzi485r/RgZXp7IjvJKMhbUeC975FqV5w0WvsbWSfuX7Wng/mWyi6e
 QCwA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::ac
X-SA-Exim-Mail-From: jre@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Add DataImage FG080016DNCWAG03 8" 640x480 TFT LCD panel compatible
string.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 Documentation/devicetree/bindings/display/panel/panel-simple.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 18b63f356bb4bbf6d2c8e58b13ebb14c5f4004ad..be4ee40676a11616c0a20726b22e322ea85a3dc1 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -91,6 +91,8 @@ properties:
       - chunghwa,claa101wb03
         # DataImage, Inc. 4.3" WQVGA (480x272) TFT LCD panel with 24-bit parallel interface.
       - dataimage,fg040346dsswbg04
+        # DataImage, Inc. 8" WQVGA (640x480) TFT LCD panel with 18-bit parallel interface.
+      - dataimage,fg080016dncwag03
         # DataImage, Inc. 10.1" WXGA (1280×800) TFT LCD panel
       - dataimage,fg1001l0dsswmg01
         # DataImage, Inc. 7" WVGA (800x480) TFT LCD panel with 24-bit parallel interface.

-- 
2.39.5


