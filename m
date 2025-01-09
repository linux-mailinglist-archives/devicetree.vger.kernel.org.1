Return-Path: <devicetree+bounces-136904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4EF6A06C77
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 04:44:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A7F503A7C39
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 03:44:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC0C7165F16;
	Thu,  9 Jan 2025 03:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="DEjkMKD+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m19731109.qiye.163.com (mail-m19731109.qiye.163.com [220.197.31.109])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7710E13D52B;
	Thu,  9 Jan 2025 03:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.109
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736394224; cv=none; b=YmdokBvHVymwn7KdtEKrIzgLWuvTNYx9MGlp8EwmbC4/MZIZ5UKClCWVg7NkQNnh4LTDN8XgN+V7LEouAAbS0Hw+uJdMhwH6Ha0+loud+6/+QFM/wjeLr524CF12Ti9j4KmTb18MjCHzkXd9Ovz8r9ZEt200O9l+HRK2Saoosho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736394224; c=relaxed/simple;
	bh=zSILhSzqfiF0494h3E/y1Fuac02klFA0FQzMz4A7LJk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=U7q/aPJKTbLuJFK9WufyCgB1mHbipjYt3b6q04GSGS5vrHjoEyEiUAIgV3wqUQWveRe3s/O/XiIJN4LA/9zXReTRVfHUCh3nt/6tyhtqRMLcl2dBShrN7XrLeZ6siSNjwLF4I+rXSP29zg4B+9M4XgNIF3lE1SBzYkIm9Gqx34w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=DEjkMKD+; arc=none smtp.client-ip=220.197.31.109
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 82c01a9d;
	Thu, 9 Jan 2025 11:28:22 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	rfoss@kernel.org,
	vkoul@kernel.org,
	sebastian.reichel@collabora.com,
	cristian.ciocaltea@collabora.com,
	l.stach@pengutronix.de,
	dmitry.baryshkov@linaro.org,
	andy.yan@rock-chips.com,
	hjc@rock-chips.com,
	algea.cao@rock-chips.com,
	kever.yang@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v5 13/20] dt-bindings: display: rockchip: analogix-dp: Add support for RK3588
Date: Thu,  9 Jan 2025 11:27:18 +0800
Message-Id: <20250109032725.1102465-14-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250109032725.1102465-1-damon.ding@rock-chips.com>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkpDQ1ZCS09OT0xLSEIZGk5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a94491b20ef03a3kunm82c01a9d
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PE06PSo5LDITKRQLS1YUQywT
	K0MKCz9VSlVKTEhNSEJISEtIQ01LVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJT0hONwY+
DKIM-Signature:a=rsa-sha256;
	b=DEjkMKD+mN98AV+36oiYZzyre3vIRLBL40Ptaa2Uz/zPUb5tFXEjHYmVg5hxEERni64WRlt0b6k5+1Fkpz5Um8X4TPqJuJ4q+wQiBl9a0nPCKbg0OIXJeltbZIaDaDJxW2pEnWNqIgfdkU/9tdQqsfF0rAFq9K2hoLGQlC5GfXE=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=ao8k9gwtGMU7WrnpCl4HFcUPyAik3QHdJeSVA9XU5fY=;
	h=date:mime-version:subject:message-id:from;

Compared with RK3288/RK3399, the HBR2 link rate support is the main
improvement of RK3588 eDP TX controller, and there are also two
independent eDP display interfaces on RK3588 Soc.

The newly added 'apb' reset is to ensure the APB bus of eDP controller
works well on the RK3588 SoC.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v2:
- Add the main defferences of the RK3588 eDP and the previous versions
  in commit message

Changes in v3:
- Expand the property clock-names, resets and reset-names

Changes in v4:
- Remove 'spdif' clock which added in v3
- Add the comment of newly added 'apb' reset in commit message

Changes in v5:
- Put the differences between RK3288/RK3399 and RK3588 into 'allOf'
---
 .../rockchip/rockchip,analogix-dp.yaml        | 37 ++++++++++++++++---
 1 file changed, 31 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
index eaf4e67e232e..3cdea9e63522 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
@@ -15,6 +15,7 @@ properties:
     enum:
       - rockchip,rk3288-dp
       - rockchip,rk3399-edp
+      - rockchip,rk3588-edp
 
   clocks:
     minItems: 2
@@ -30,12 +31,6 @@ properties:
   power-domains:
     maxItems: 1
 
-  resets:
-    maxItems: 1
-
-  reset-names:
-    const: dp
-
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
@@ -55,6 +50,36 @@ required:
 allOf:
   - $ref: /schemas/display/bridge/analogix,dp.yaml#
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3288-dp
+              - rockchip,rk3399-edp
+    then:
+      properties:
+        resets:
+          maxItems: 1
+        reset-names:
+          const: dp
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3588-edp
+    then:
+      properties:
+        resets:
+          minItems: 2
+          maxItems: 2
+        reset-names:
+          items:
+            - const: dp
+            - const: apb
+
 unevaluatedProperties: false
 
 examples:
-- 
2.34.1


