Return-Path: <devicetree+bounces-253116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 00ABAD07AF7
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 09:03:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ED01E3046FAF
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 08:02:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DBF32FB99D;
	Fri,  9 Jan 2026 08:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="feSC+4ZP"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A260C2D94AB;
	Fri,  9 Jan 2026 08:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.2
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767945723; cv=none; b=jViBfiaMoa8BAbLdUZ5qVcx1jlGE+NLG5DnDOQoZM70uyDyWDNhIz9Iyl6DdNrsubPdVqPF2g9fCZhEdG/9RkkfQEsxya8V5hcqj1PkAz3Swsp4SbsN4a2vY+HSdHlr242N2nRNpQLH6JUcOVD+qoZtiiuiIlry35njZvqMpotQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767945723; c=relaxed/simple;
	bh=HGRy6RzriX7QrqY6EcHWG8ZCK9XXvBFbQLWdEJ6Szy4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sxmSw+Bg3Qfe5+u7ap/hWa+gYZaM39h56ygtaTOgs69WrdJZN2SzQWKMXApGCDXJAs58JBQ+BhajGZnDP6WM1UTDgvHg+j1x1PTPMrXyGe17tlFWMJrk8sZxuAJ+BVj4RzEZbBxeHb4eV1qPii38uX7oM6lLFBSnhUtQkAVB6/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=feSC+4ZP; arc=none smtp.client-ip=117.135.210.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=kD
	MyRECl9vPZ6gF5nay3D+qJi3Oa8dG1g+AZOtiDcKg=; b=feSC+4ZPcVByuytRPf
	cx5N3QkZTGZlLqcZfxmlswgkAC7hRoJOyvIraDUI8Q7KlPisoAk0RvZfmek3RYng
	/fvMfdAK7qnBQWZChGX6tdwPoJcGMsY59zIbk9/njp+xO1vlRREK2Xd2UlgzYMHc
	uCX5d5KrZfGfqeFlzTEAJp2fs=
Received: from ProDesk-480.. (unknown [])
	by gzga-smtp-mtada-g1-0 (Coremail) with SMTP id _____wDnzlW4tWBpx1iBFA--.64397S3;
	Fri, 09 Jan 2026 16:01:01 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de,
	dmitry.baryshkov@oss.qualcomm.com
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	cristian.ciocaltea@collabora.com,
	Laurent.pinchart@ideasonboard.com,
	mripard@kernel.org,
	hjc@rock-chips.com,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	tzimmermann@suse.de,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 1/5] dt-bindings: display: rockchip: Add rk3576 DisplayPort
Date: Fri,  9 Jan 2026 16:00:44 +0800
Message-ID: <20260109080054.228671-2-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260109080054.228671-1-andyshrk@163.com>
References: <20260109080054.228671-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDnzlW4tWBpx1iBFA--.64397S3
X-Coremail-Antispam: 1Uf129KBjvJXoW7Zr1ktF4kXF45tr1ftFy3twb_yoW8AF1rpa
	9xCr1UX34Igr17W3yktrn5urs5Kw1kA3yjyr17Kw17tanxKF4F93Wagwn8Xay3JF17Aa9x
	CF4j934fJw42vr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jzCJQUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCxR0PbWlgtb299wAA3x

From: Andy Yan <andy.yan@rock-chips.com>

The DisplayPort found on RK3576 is very similar to that of RK3588,
but work in dual pixel mode. And itself does not depend on the I2S
clock or the SPDIF clock when transmit audio.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

 .../display/rockchip/rockchip,dw-dp.yaml      | 29 +++++++++++++++++--
 1 file changed, 26 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
index 6345f0132d43..1bfe1bd6404a 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
@@ -27,13 +27,11 @@ description: |
   * Pixel clock up to 594MHz
   * I2S, SPDIF audio interface
 
-allOf:
-  - $ref: /schemas/sound/dai-common.yaml#
-
 properties:
   compatible:
     enum:
       - rockchip,rk3588-dp
+      - rockchip,rk3576-dp
 
   reg:
     maxItems: 1
@@ -42,6 +40,7 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 3
     items:
       - description: Peripheral/APB bus clock
       - description: DisplayPort AUX clock
@@ -50,6 +49,7 @@ properties:
       - description: SPDIF interfce clock
 
   clock-names:
+    minItems: 3
     items:
       - const: apb
       - const: aux
@@ -95,6 +95,29 @@ required:
   - ports
   - resets
 
+allOf:
+  - $ref: /schemas/sound/dai-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3588-dp
+    then:
+      properties:
+        clocks:
+          minItems: 5
+          maxItems: 5
+        clock-names:
+          minItems: 5
+          maxItems: 5
+    else:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          maxItems: 3
+
 unevaluatedProperties: false
 
 examples:
-- 
2.43.0


