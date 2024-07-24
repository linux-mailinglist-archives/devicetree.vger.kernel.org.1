Return-Path: <devicetree+bounces-87706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CE893AA43
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 02:57:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5597CB22BD3
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2024 00:57:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B1D9290F;
	Wed, 24 Jul 2024 00:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="z61IjGKi"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321B8A927
	for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 00:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721782657; cv=none; b=ZfKBlcsXeICL12RgUX2fa8Ior4gMIeUfLU18MVV5yQMm3BOQ9mBeniKRAeUY/z7Amb9PKYQ+4bIJY8anSVHDJYVv3utwDYrSCTGs/gK8EZdnbY/DL0GmFq1zqCx8rfVTqScopTxQQzB1ZsmYK5ZwDvHrQH0kUi513vRGlCiO1s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721782657; c=relaxed/simple;
	bh=lwfEGsbfiaFYIb2eHKTOnJ6Vxkfv8ExDvtoiiE/9b7E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Xzy12+CF44niA3h+BIKh8HlG801ontgeAgrKKwmye9GF6cS4OB2TWhYQAELAI2xH22MecrVoXmomWspJVthfYhUwP+r2Dy/RkCZ2AwXF5wRgtEZ9AqWUSar6XWOXSU96BVzTAzVUTOO63TTh0Q9nzvzyZ5qTJIjBkWzyBLK0Flo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=z61IjGKi; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 8B20C8872F;
	Wed, 24 Jul 2024 02:57:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1721782654;
	bh=A39mZzllZV6/ShSKezblTRxpvBFCpvUULRt0hj/cTj8=;
	h=From:To:Cc:Subject:Date:From;
	b=z61IjGKiWS9A5PVOTh8eHrGHF9haK6xwHROIDo1jwqVx1Fp8/Thq7yWL0JtPiObVv
	 cl6/ZKF9KyluQROaSTfYegwsEjn5NayWcAXPLMRgk1+T1u/c5ESlM5Zuetqaj4CR5O
	 AGldDUgmUf6nGpt3eLzDeqxVb7Dtat2u5okhqH//QCSWAojFec65VamXLdBpYnZzgZ
	 RMR2s40+dt8zyoAUV1UKXq6P95YdWjSpf9uy5HwY1HdK8CJse9lHHAaf9joYrKCrSN
	 eFFnyArg4LPEmIab4Ak+hADCWsRnNmr2zeveNxqhtRlvRHp0ZJpgAlG+wRnvX1dEdd
	 tgX/dve4dj8sQ==
From: Marek Vasut <marex@denx.de>
To: dri-devel@lists.freedesktop.org
Cc: Marek Vasut <marex@denx.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Michael Walle <mwalle@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: display: panel: Document Densitron DMT028VGHMCMI-1D TFT on ILI9806E DSI TCON
Date: Wed, 24 Jul 2024 02:55:52 +0200
Message-ID: <20240724005700.196073-1-marex@denx.de>
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

Document Densitron DMT028VGHMCMI-1D 480x640 TFT matrix 2.83 inch panel
attached to Ilitek ILI9806E DSI TCON in the ILI9806E bindings.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@gmail.com>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Michael Walle <mwalle@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
---
 .../devicetree/bindings/display/panel/ilitek,ili9806e.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9806e.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9806e.yaml
index cfd7cc9c87257..f803075794854 100644
--- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9806e.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9806e.yaml
@@ -16,6 +16,7 @@ properties:
   compatible:
     items:
       - enum:
+          - densitron,dmt028vghmcmi-1d
           - ortustech,com35h3p70ulc
       - const: ilitek,ili9806e
 
-- 
2.43.0


