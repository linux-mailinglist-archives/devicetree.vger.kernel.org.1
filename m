Return-Path: <devicetree+bounces-160113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1A3A6D85B
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 11:34:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0B03C7A69E0
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 10:33:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7CBD25DCFB;
	Mon, 24 Mar 2025 10:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="KlYHZBq7"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.5])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59D2C25DAE9;
	Mon, 24 Mar 2025 10:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.5
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742812457; cv=none; b=lHJQWtaNapGyAEMD/yTMqtCtOSXUqQmokDvXgtnOXN2Dpl1g+YB+cFGHNZ8HRQ6SQf+pQ+VNgmslnxB0suiy+5ni0RKBq949ZDdAB5O0XDaCPaPoGP69iiENX7oN9vjshUu87m5m7nKRJzirKQfwr9CVivIUFJN5SL7MSEJfTes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742812457; c=relaxed/simple;
	bh=/qLi6q7LEG6G+gTysNKTm/VHDb6U6FHfd5xdcOKhZRY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Xqd+PEl1zQS7+dQxvoMnenK5lNS5UIE4KMWM0KLrzizEqz6130VrLXSlo/mFeEd/MjlO/jLaPUDF4wthfCgEsBzugtK325NJXgEyd1WUaOpSGELrCpz31V41jeaynk3jXFjyx5oRczbexTp2t1sV3aL3HF/1rD+FERRcxKYcJbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=KlYHZBq7; arc=none smtp.client-ip=220.197.31.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=CsxSq
	wIllapJ8LuBOULZiZ9puOmcXb0kK/lST1rS3uI=; b=KlYHZBq7R/W2BQ7zdJVkV
	WUzZkIu6+L5n1kfRPJM2QD5nNS68FYaF7EFfZ14B+liGtLfSfhvmIkKrbNzr4vlC
	nTa3hHaTE65m8EAyVZTg+Nq9zRyocLrP5rfM0PfCZRQ2v7tdUEc49Oy7e7jMnsww
	cnHiYLOS2BFbo9MCO/N1Dc=
Received: from ProDesk.. (unknown [])
	by gzsmtp3 (Coremail) with SMTP id PigvCgA3TEH9NOFnDTbjAg--.63654S2;
	Mon, 24 Mar 2025 18:33:37 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	hjc@rock-chips.com,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 1/2] dt-bindings: display: rockchip,inno-hdmi: Fix ref clk Document of RK3036 compatible
Date: Mon, 24 Mar 2025 18:33:27 +0800
Message-ID: <20250324103332.159682-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:PigvCgA3TEH9NOFnDTbjAg--.63654S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7tw45GrW5ur4xJFyrWF45Wrg_yoW8WF43pa
	93Cw1kXr1Ikr1UXw1ktr18CrZYya4kAa1Ykry2q3W8Gr1j9ayDKa1agr1DZay3Ar47Aa9F
	vF47GFy8A34SvrJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07U_3ktUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0g0aXmfhMHZKxwABsX

From: Andy Yan <andy.yan@rock-chips.com>

The RK3036 HDMI DDC bus requires it's PHY's reference clock to be enabled
first before normal DDC communication can be carried out.

Therefore, both RK3036 and RK3128 HDMI require two identical clocks.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 .../bindings/display/rockchip/rockchip,inno-hdmi.yaml | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
index 5b87b0f1963e1..9d1e7f894ea54 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
@@ -23,13 +23,11 @@ properties:
     maxItems: 1
 
   clocks:
-    minItems: 1
     items:
       - description: The HDMI controller main clock
       - description: The HDMI PHY reference clock
 
   clock-names:
-    minItems: 1
     items:
       - const: pclk
       - const: ref
@@ -87,11 +85,6 @@ allOf:
             const: rockchip,rk3128-inno-hdmi
 
     then:
-      properties:
-        clocks:
-          minItems: 2
-        clock-names:
-          minItems: 2
       required:
         - power-domains
 
@@ -106,8 +99,8 @@ examples:
       compatible = "rockchip,rk3036-inno-hdmi";
       reg = <0x20034000 0x4000>;
       interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
-      clocks = <&cru  PCLK_HDMI>;
-      clock-names = "pclk";
+      clocks = <&cru PCLK_HDMI>, <&cru SCLK_LCDC>;
+      clock-names = "pclk", "ref";
       pinctrl-names = "default";
       pinctrl-0 = <&hdmi_ctl>;
       #sound-dai-cells = <0>;
-- 
2.43.0


