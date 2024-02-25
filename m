Return-Path: <devicetree+bounces-45638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2A686294E
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 07:22:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 959201F218D9
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 06:22:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 110B89445;
	Sun, 25 Feb 2024 06:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="i6nCIAap"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 823809460
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 06:21:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708842121; cv=none; b=qwFP6sUsEPjudUhYWZ0KYCtPABI7eV2k8VTgT7nUe0Bchj9HLNPt1MiXtliyfxF0KAOgAX2SUOQ2nqB3Rq3FQwjg1M+tHRtKeXJ7P8L5a3s2y9qt/MD2dwS/eYYprvbuCfgV9SjqavduwiOkKzqGBUEmqSp8QI6V5VwlstJIB7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708842121; c=relaxed/simple;
	bh=G85rRguQVGw4VsvfyNlOTWdpswFgEb4PNW04mzqncbc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rP6n9P/IKjnrRwkbP4KuWcJZmlol9RvpCs5JCWMfkgbk5QZpLnZgBMguylw+MjY0Sn2pbum/2l9iVisfs+nniHqQjASLdB8GGBW0Xy8SoqzEX+G+gOCzwkI4znVhLnFvsZcETeuNsn4SYxdt5bwzULB/wG9OJVV7n4gKpzAzZwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=i6nCIAap; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id DD1256058D;
	Sun, 25 Feb 2024 06:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1708842118;
	bh=G85rRguQVGw4VsvfyNlOTWdpswFgEb4PNW04mzqncbc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=i6nCIAapdAJMkf6ugNOsoAhSh8mkbBY8VQR0PwACEKmcV3dVD7ryXXaVEmeWSoqzz
	 pk68oTiBk6uc6Kdyk7irh5K6RxYYrihH2UEMK7wIpf1JYjKIn6NpPTGdI6P9pVIo8q
	 MveivjG3b/bEVszroC/k4W2oWvHj4UlTsgXr/vH09P3tvM12+IcvkfbW4BEOovtldt
	 n+Ix/JnvUOkG6IEDAxuEI29M/MQpakx+5wiGoRUNZ1Wz7SrAhRI6KP0aIWknUvih/G
	 D73wR3DPvD2+smv2lKBHbwT+1ms2sF97p8+XHHu4H/pNYnBMCvCV+Y9bGAyin/4B5I
	 4EOnx5K1jMg3g==
From: Tony Lindgren <tony@atomide.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Simha BN <simhavcs@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: Michael Walle <mwalle@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 01/10] dt-bindings: display: bridge: tc358775: make stby gpio optional
Date: Sun, 25 Feb 2024 08:19:30 +0200
Message-ID: <20240225062008.33191-2-tony@atomide.com>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <20240225062008.33191-1-tony@atomide.com>
References: <20240225062008.33191-1-tony@atomide.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Michael Walle <mwalle@kernel.org>

For a normal operation, the stby GPIO is not needed.

The reset pin is required because once the PPI (PHY protocol interface)
is started, it can only be stopped by asserting the reset pin.

Signed-off-by: Michael Walle <mwalle@kernel.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
[tony@atomide.com: dropped regulator related changes]
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 .../devicetree/bindings/display/bridge/toshiba,tc358775.yaml     | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml
--- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358775.yaml
@@ -70,7 +70,6 @@ required:
   - reg
   - vdd-supply
   - vddio-supply
-  - stby-gpios
   - reset-gpios
   - ports
 
-- 
2.43.1

