Return-Path: <devicetree+bounces-152221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 56578A4861F
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 18:05:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 163D218836B4
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 17:01:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED0EC1D63CE;
	Thu, 27 Feb 2025 17:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="LbbTlbjw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.denx.de (mx.denx.de [89.58.32.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C37401AB6DE
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 17:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.32.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740675654; cv=none; b=Ld0INTbJz0ZjmBBVdlNbbHUmLSVUTew9gBIcXg0jtfLCT2zIv7yK57YCyKP5EiheRJ6qtZTE7pgF/0/I82Qp1D91SxJ3P33ZhHCg4+fS1mXRfe71ekLyC+PHeSVyhL0+49kDUGzX66e9MVr+MgO12yH0G+K1hkrxf0OrqxHMo3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740675654; c=relaxed/simple;
	bh=Wb7l2NxkfTb4lFzMz+B7+c0N20iip7NoPTO771zlIEY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RSkAQ3YH79JiUgSPewueP+HrFrtDTMrYHzd1uolvmfjrU8hF9bcFqR7cs8LJfQ8TF34r1k0oTew9tWR9900IU1znEN1oKK3mxTIE3M3kUXKNMVrUR2T4InaWjbfDiQK8g9wYFFuL6KchaIb1lKVEE+Rjum/F4UBkgOJUi2F5cfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=LbbTlbjw; arc=none smtp.client-ip=89.58.32.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5215110382F20;
	Thu, 27 Feb 2025 18:00:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de; s=mx-20241105;
	t=1740675648;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rBr0cQee0ICtEgGCoLJb0hDKj8AQwhHIxt049wAgmYA=;
	b=LbbTlbjwQbsg6PEnktAyQeVoYU26GGNb16ZmQXDCe6pl4IpTdNp2N2HM0+vc6riTm6O9Tu
	grDd/Cn/6jEVDpbgY++QH4Pdg1xtgHz71iD8+HzFoyuzGhRBBrHgZtoYxyP74MotFWV/TI
	LbhZdNPYPKbqXDVkDc5BzpAv7BANHjTrGwKuxx6YavDfl+69SkZJW6oT/X8i+IZGW7XPEx
	NHBGiKX6hbcQSttm/DLwNfIT60VtkLBCZH9RPN33HtezfL7nhbuMLH5seRJB/xxstQTUx5
	TiLo8INRhoSlLsWqPt3w1MVBBou/rGRr8APk2inl1qqezMiMzZ1HIi0RlhVaZA==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Sebastian Reichel <sre@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Steven Price <steven.price@arm.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	imx@lists.linux.dev
Subject: [PATCH 3/9] dt-bindings: gpu: mali-valhall-csf: Document optional reset
Date: Thu, 27 Feb 2025 17:58:03 +0100
Message-ID: <20250227170012.124768-4-marex@denx.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250227170012.124768-1-marex@denx.de>
References: <20250227170012.124768-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

The instance of the GPU populated in Freescale i.MX95 does require
release from reset by writing into a single GPUMIX block controller
GPURESET register bit 0. Document support for one optional reset.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Boris Brezillon <boris.brezillon@collabora.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Sebastian Reichel <sre@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Simona Vetter <simona@ffwll.ch>
Cc: Steven Price <steven.price@arm.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: imx@lists.linux.dev
Cc: linux-arm-kernel@lists.infradead.org
---
 .../devicetree/bindings/gpu/arm,mali-valhall-csf.yaml          | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml
index a5b4e00217587..0efa06822a543 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-valhall-csf.yaml
@@ -61,6 +61,9 @@ properties:
     minItems: 1
     maxItems: 5
 
+  resets:
+    maxItems: 1
+
   sram-supply: true
 
   "#cooling-cells":
-- 
2.47.2


