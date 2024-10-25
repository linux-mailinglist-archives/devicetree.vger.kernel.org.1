Return-Path: <devicetree+bounces-115724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BAE9B0845
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 17:30:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DACF2B26174
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 15:25:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2036D17BEA4;
	Fri, 25 Oct 2024 15:22:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from riemann.telenet-ops.be (riemann.telenet-ops.be [195.130.137.80])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A8C21A4A3
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 15:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.80
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729869721; cv=none; b=gptXZ+S60e9yGuepvRTEnu1AgbBB0U6X9j7zxscdm7qpkIDb2IhzlGWSKFn3iZP5IDWB8Qqxo7Rvq8nXfEeiYMTMDtcmmGzeBO4IW4hyuuPlw//Q2M91b/9IxHajN12aPvXvYExt0c3qXeztIZ538w14LSIaHBlbZplslR44TkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729869721; c=relaxed/simple;
	bh=Zw5LzwuhEUKiQEzoSZYvx6X6L5GiUzKRz/H836fxUqI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Fv3oItgFPo7AQqA03sYR7a4ufxcTO+g/9byD3gs0LIASARKv7qqyANBY29xaEL/F6rkR0W3GVx8uzW8G8nFbgj7VyQvf6KzQI8r5tsPMRoV+422cStwk1upq44JbOHsZdeQ5BC28GKFyuUrc3c8T6YEck56NP3FoW1EZIUtPbjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.80
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [IPv6:2a02:1800:120:4::f00:14])
	by riemann.telenet-ops.be (Postfix) with ESMTPS id 4XZmVb1w9mz4x2BP
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 17:12:39 +0200 (CEST)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:6cce:9fcf:3351:6a67])
	by xavier.telenet-ops.be with cmsmtp
	id UfCS2D00M54cQus01fCStU; Fri, 25 Oct 2024 17:12:31 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1t4Lyz-005Vqz-4L;
	Fri, 25 Oct 2024 17:12:26 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1t4LzG-00DnZc-B6;
	Fri, 25 Oct 2024 17:12:26 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Sergei Shtylyov <sergei.shtylyov@gmail.com>,
	Paul Barker <paul.barker.ct@bp.renesas.com>,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: netdev@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] dt-bindings: net: renesas,ether: Add iommus property
Date: Fri, 25 Oct 2024 17:12:24 +0200
Message-Id: <2ca890323477a21c22e13f6a1328288f4ee816f9.1729868894.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

make dtbs_check:

    arch/arm64/boot/dts/renesas/r8a77980-condor.dtb: ethernet@e7400000: 'iommus' does not match any of the regexes: '@[0-9a-f]$', 'pinctrl-[0-9]+'
	    from schema $id: http://devicetree.org/schemas/net/renesas,ether.yaml#

Ethernet Controllers on R-Car Gen2/Gen3 SoCs can make use of the IOMMU,
so add the missing iommus property.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 Documentation/devicetree/bindings/net/renesas,ether.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/renesas,ether.yaml b/Documentation/devicetree/bindings/net/renesas,ether.yaml
index 29355ab98569daf6..d6c5983499b87d64 100644
--- a/Documentation/devicetree/bindings/net/renesas,ether.yaml
+++ b/Documentation/devicetree/bindings/net/renesas,ether.yaml
@@ -59,6 +59,9 @@ properties:
   clocks:
     maxItems: 1
 
+  iommus:
+    maxItems: 1
+
   power-domains:
     maxItems: 1
 
-- 
2.34.1


