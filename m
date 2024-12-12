Return-Path: <devicetree+bounces-130266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C84069EE6B4
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 13:27:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 635D2162410
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 12:27:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CA39209F59;
	Thu, 12 Dec 2024 12:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="RiGiY0wR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.denx.de (mx.denx.de [89.58.32.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384E120967D
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 12:27:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.32.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734006450; cv=none; b=f2WUriZOpPe/2vMcTs1wHfUeuBjtnDBPUP2oXef+htxOv8lSrjFI72hT/aqWYWJf4KgFChfR/KDMkKodugmezlyW5gaz0QIgb10Ad/yygTH7te0VMRb7MGdUn8edJHE4bkukE9qdZYV6Zw+UNOq2Mk0VSzzQiZOgDM7tBVTuSUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734006450; c=relaxed/simple;
	bh=boJGOcpUJG5is7luTqpPzrfc0xmAUWKQgfnCwOJ/uPQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KV/1EE9w3sivjo9cZHyF10A/gIc9ChPQxsaSjrdGaNm2Xb2/M90Kbxd91Ig4rJVXLwfsI/5xbJP7fTKgKYHxhexy6ySAR25JqrPHlrsqx89yWvGUZP2ew7wubkdCvRkEzA/VF4CRlCqTJ32gYbMM/ZqZPddDbPwIvJP+zNYFFgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=RiGiY0wR; arc=none smtp.client-ip=89.58.32.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 38E3B1048AF49;
	Thu, 12 Dec 2024 13:27:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de; s=mx-20241105;
	t=1734006444;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=UJjcysj7n/seQgSN9doFmoD03vVrxnlZKueiWg6k1XM=;
	b=RiGiY0wR3JMtqox2T4DYxW5IFrRrPxwTrV57f3HlheUMbW7P41eTSWevjUMseuar3Dmzy5
	r1gXZRTO//9qxdorkMGu86lNy83TGMRwtGWlflHyu+39g2BAEMaywicJSiXcvQuVaXhfft
	ryy5h8QbTIqFq01EEy/pzMkTwXGY2WrMy6MZxsyGXvOj3t4qKU1m8PiSMSbB43j8ZUhA/H
	E3/K2iYyP89fsK/36GmvCHkMskZ3/ALsMOKACfHOu5GdU+vfDIFZuPFgLiryC3mlAYiwLM
	QSfnYZ3XLULTK4wFBJ92kDELpEPL50G21bb0lleBW8tEvoCyHZHydHRhWhs3mQ==
From: Marek Vasut <marex@denx.de>
To: dri-devel@lists.freedesktop.org
Cc: Marek Vasut <marex@denx.de>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: display: simple: Document Multi-Inno Technology MI1010Z1T-1CP11 panel
Date: Thu, 12 Dec 2024 13:26:28 +0100
Message-ID: <20241212122701.25305-1-marex@denx.de>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Add Multi-Inno Technology MI1010Z1T-1CP11 10.1" 1024x600 LVDS panel
compatible string.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Simona Vetter <simona@ffwll.ch>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index ee2314857aaea..b8d557d2f5b8a 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -214,6 +214,8 @@ properties:
       - multi-inno,mi0800ft-9
         # Multi-Inno Technology Co.,Ltd MI1010AIT-1CP 10.1" 1280x800 LVDS IPS Cap Touch Mod.
       - multi-inno,mi1010ait-1cp
+        # Multi-Inno Technology Co.,Ltd MI1010Z1T-1CP11 10.1" 1024x600 TFT Resistive Touch Module
+      - multi-inno,mi1010z1t-1cp11
         # NEC LCD Technologies, Ltd. 12.1" WXGA (1280x800) LVDS TFT LCD panel
       - nec,nl12880bc20-05
         # NEC LCD Technologies,Ltd. WQVGA TFT LCD panel
-- 
2.45.2


