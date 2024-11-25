Return-Path: <devicetree+bounces-124095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0029D79C9
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 02:34:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E199163381
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 01:34:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2779410F9;
	Mon, 25 Nov 2024 01:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="WQwpYf6w"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273F6BA2D
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 01:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732498479; cv=none; b=AvOYwoH4oc+KyoIGHOgWhN7ONIcVPHpAUDwCxvmVpiFHZkV2qLGs/FS6cvEaVHIw+7aInfXnihd51pQp/20VTSh6r5Anr8gslQ0xKWDOPxJNH6xuZPN30hCY701YrdRPGTS6IW83/pbQEPGwtek8qdo9FOd0LKNyQaPJaQJsluc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732498479; c=relaxed/simple;
	bh=FAHlL6LiPZOoqjHd/1iixBA6PWbz57ssTIyxqyPaqKo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bxomEdWczy9ZfGYDJH1Bb0KC/yJkBni4ffi/zNpS46lmuMtXew0OnJ4C9IQ2WaWxKawg38tQKFZXuiPupTKwnzSTt+E5BPzsf67aYZDCjdQm0jKkEfF85/N0GD+UCFVlngwlaxM5xcG3phbfo2BlrCYUkao0G42g3mfaofcxEl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=WQwpYf6w; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 7FDCA89323;
	Mon, 25 Nov 2024 02:34:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1732498475;
	bh=FVLuFCi5NJbfB719sovHrfI9B/DMo9YkCyNB5lsV91w=;
	h=From:To:Cc:Subject:Date:From;
	b=WQwpYf6wGWR6dgld69eRKvI/U3aglmyzgQVgFRvejWsRo+3Q0bKMAdrcTVtmzFLlR
	 PiOu/kp/vNrP428RtvBVq+tDeI3kIzG1WSBxvac7vYg7Y09nDC9//r/IqOm2LM/vyf
	 Pltlj1f/dsur70zW/iu95+mPxBjsx9vmeWvle8t+U1P1rSBFOIS+RkCyhaNRaYhcks
	 idWmdxEMULLbVywSaX5c0n//ALfX6qdCWX/gecjJ0weDwblnN7KHMDoYOhQt8PbXDv
	 vb1cNEgKCfwRqVjq+5X/MF/Tp/x69ROHtrXIOAuCdUZnjd2SN2+MhMTG7oOMVpihQF
	 X4gG06bkuGUgw==
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
Subject: [PATCH 1/2] dt-bindings: display: simple: Document Multi-Inno Technology MI0700A2T-30 panel
Date: Mon, 25 Nov 2024 02:33:35 +0100
Message-ID: <20241125013413.160725-1-marex@denx.de>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

Add Multi-Inno Technology MI0700A2T-30 7" 800x480 LVDS panel
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
index 18b63f356bb4b..ee2314857aaea 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -206,6 +206,8 @@ properties:
       - mitsubishi,aa070mc01-ca1
         # Mitsubishi AA084XE01 8.4" XGA TFT LCD panel
       - mitsubishi,aa084xe01
+        # Multi-Inno Technology Co.,Ltd MI0700A2T-30 7" 800x480 TFT Resistive Touch Module
+      - multi-inno,mi0700a2t-30
         # Multi-Inno Technology Co.,Ltd MI0700S4T-6 7" 800x480 TFT Resistive Touch Module
       - multi-inno,mi0700s4t-6
         # Multi-Inno Technology Co.,Ltd MI0800FT-9 8" 800x600 TFT Resistive Touch Module
-- 
2.45.2


