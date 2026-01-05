Return-Path: <devicetree+bounces-251419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 72192CF2BD3
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 10:27:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8740F30049FD
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 09:27:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF75A329C7C;
	Mon,  5 Jan 2026 09:16:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-79.sina.com.cn (smtp134-79.sina.com.cn [180.149.134.79])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B597D329E5F
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 09:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.79
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767604602; cv=none; b=buQ+wuEEWQ4d8wnQMsdERNJc5/p5kdo5nANg+l4eR2lUdOR4FvR4QKDq5J91iY9z2nGk0xo7tMNXFT6SvUWzx2VjCW4lFPkPsPhK4c5+wVYD8prd325z2HiJZLLKl84KWe9GLHcgzwRj1cZA8kyxCliMZwza14y+f3lhOwnoag4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767604602; c=relaxed/simple;
	bh=VmQeVIaLZY62OaL680YvbvJlEoAIIVmM+zLnwFNlDqE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=f7bxRXZolV9sKMWAMX/xs2/rT6ec63szFx2B0PEplJ+EoKWSFICcp4ia/g2sQB9Uxv2Mfn43QiWcpfoD2phCU48UgHdRe0FKaIIyZVskAQ17JzhSBRwSxEmBP8cS7CrCAoa0ucSgC0hXwAeyhHjzjCwKohZiVoYWRVE0bASUXLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.79
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.154.36.64])
	by sina.net (10.185.250.29) with ESMTP
	id 695B814B000044A1; Mon, 5 Jan 2026 17:15:56 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 22263D61B65940C5BE426C3B61AF3AD9
X-SMAIL-UIID: 22263D61B65940C5BE426C3B61AF3AD9-20260105-171556
From: Zhang Yi <zhangyi@everest-semi.com>
To: broonie@kernel.org,
	robh@kernel.org,
	tiwai@suse.com,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	lgirdwood@gmail.com,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	perex@perex.cz,
	krzk+dt@kernel.org
Cc: amadeuszx.slawinski@linux.intel.com,
	krzk@kernel.org,
	Zhang Yi <zhangyi@everest-semi.com>
Subject: [PATCH 1/5] ASoC: dt-bindings: ES8389: Add property about power supply
Date: Mon,  5 Jan 2026 17:15:44 +0800
Message-Id: <20260105091548.4196-2-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20260105091548.4196-1-zhangyi@everest-semi.com>
References: <20260105091548.4196-1-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add VDDA supply and VDDD supply

Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
---
 .../devicetree/bindings/sound/everest,es8389.yaml    | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/everest,es8389.yaml b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
index a673df485ab3..75ce0bc48904 100644
--- a/Documentation/devicetree/bindings/sound/everest,es8389.yaml
+++ b/Documentation/devicetree/bindings/sound/everest,es8389.yaml
@@ -30,10 +30,20 @@ properties:
   "#sound-dai-cells":
     const: 0
 
+  vdda-supply:
+    description:
+      Analogue power supply.
+
+  vddd-supply:
+    description:
+      Interface power supply.
+
 required:
   - compatible
   - reg
   - "#sound-dai-cells"
+  - vddd-supply
+  - vdda-supply
 
 additionalProperties: false
 
@@ -46,5 +56,7 @@ examples:
         compatible = "everest,es8389";
         reg = <0x10>;
         #sound-dai-cells = <0>;
+        vddd-supply = <&vdd3v3>;
+        vdda-supply = <&vdd3v3>;
       };
     };
-- 
2.17.1


