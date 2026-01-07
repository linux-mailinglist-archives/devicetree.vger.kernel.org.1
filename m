Return-Path: <devicetree+bounces-252225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 02113CFC8BB
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 09:15:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CB87C3027836
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 08:15:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8791A285419;
	Wed,  7 Jan 2026 08:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="F5bzWXss"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay49-hz3.antispameurope.com (mx-relay49-hz3.antispameurope.com [94.100.134.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE97B284671
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 08:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.238
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767773708; cv=pass; b=N0Mgt9SR54wZbJyj96FnG83LkhHvcY3ijn+L1Dcsni1w1U75V5dpv3MHKmNpYF+5aOBaBoGIBj5rZBoMD+4gMXS2jC7DQ+V5cM9wpkRRckL2qs0upe52yQsm3B2EnX9QMp30dA7yRvmTEdn9nfkQIVHAfmuz+uWhhqsbXrAmW78=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767773708; c=relaxed/simple;
	bh=ZpgnAP5wX6GgNZjloXb7hfCChu/j4seBkUO44tt6zPg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mqcuk6gzr3+DAc1sF3arib5cFi9BrVBd8p9jadwuCWU7UGpr1065s4B1JGRn9OZyaqmgVTHGeJw1nkJEwkbPBzssHFeTmyr9DnTAtmRC6R8xNFE+z/3gm0vPdO8sylEB58EAwN0KFIOFGqC1bFNFLTWKCQHtnOQevcTYgAvnAIY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=F5bzWXss; arc=pass smtp.client-ip=94.100.134.238
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate49-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=+vMvOlrPgjkIwmEXFdQz2Q2ubA3EDVESm5G8NqGI75c=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1767773669;
 b=VJMDxmJqztjTqi0sYeAREO8t1tz231iUU9Df6+jkxugx/zg/+AqHauY8z5gtZ1eGjEms64Vl
 y0yn7rwlfAY157UjgRQQ1LcKSMCbxi7v/dScd5+CgCsFvNCEDXljW70DeMHTV6sE9BnNNwVbx4k
 WlwcBJp+N2LxQshTUr5szhDlmhd9wlGE+DQ8sWpXnFsXJ4KSWGaIyZC84WrMwPrUBr350dugE7/
 2xPXFRsjPQgW/7ouCKKjYRCHns/H5W5FvFNi0DxkLFxcAjW9ttmkfoMlF3s0RQj7ttbLFPhhdxi
 2SRKthEDhuBBh8arGOWuMcMkGNaBUzn5tR/GZxm696xOg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1767773669;
 b=IU/YZgSrSppAAa8wEoz4rXAmMMF2fSpwDAdM2Ic/N9A9n18pFivU6IMDRv4CkmytV6c1H50Q
 A/ji1rkSvA2KHq3QDMO817yMUtnFU4W6fYdi6WMX6X/6z6KBeuE6CN9eCA9TTW/JbSl7ebdap19
 PoVKWUzgt+RIZVsTMsOwtiJ748xWcoks/efhklRH+fmWto3PFgDxvsErq8YKg1lvPZKEd8j+n01
 g9NAr9kkdPpIHnp/s1+IeGh1S+OBYpT5O47sa+DIgY3Z/m4wsHPr+JUoiOSg/zGmtWvEUMt5ik9
 OFq54OiFTSPjuTwVQaFsgt0nu8tXT29dkrhGKBO6I6aIg==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay49-hz3.antispameurope.com;
 Wed, 07 Jan 2026 09:14:29 +0100
Received: from schifferm-ubuntu.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: matthias.schiffer@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 673DD220CF3;
	Wed,  7 Jan 2026 09:14:22 +0100 (CET)
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Tony Luck <tony.luck@intel.com>,
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>,
	Andrew Lunn <andrew@lunn.ch>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	linux@ew.tq-group.com,
	Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Subject: [PATCH v5 1/2] dt-bindings: arm: ti: Add compatible for AM625-based TQMa62xx SOM family and carrier board
Date: Wed,  7 Jan 2026 09:14:01 +0100
Message-ID: <510c681c6428a9470c2b3710e4e3b399c2886d76.1767627010.git.matthias.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1767627010.git.matthias.schiffer@ew.tq-group.com>
References: <cover.1767627010.git.matthias.schiffer@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:matthias.schiffer@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: matthias.schiffer@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay49-hz3.antispameurope.com with 4dmLRM1WGdz3ybNh
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:bd7b7d3b06095a7435fa3d9b1d159766
X-cloud-security:scantime:1.841
DKIM-Signature: a=rsa-sha256;
 bh=+vMvOlrPgjkIwmEXFdQz2Q2ubA3EDVESm5G8NqGI75c=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1767773669; v=1;
 b=F5bzWXss+ha1YPUp7igH54ZfLkCeRB/kWJU2lzYsM8iQaDaOTe1/Z39O0GysgrvDdbr/Tx+T
 m5fG+/aTX8caemXCrbnF5dzk9GHXHFgOcGGnYTgEBLS2Adkc1UTjAYBhvQjF2ZWV0+rWFY3sf/B
 PLPoigwpCzrJ7M0WrZPa0PqXQxBUeFJ9IuOEU2wFkZZsScExWIWRu2hLkFTQzmFCtJhMMzZekJG
 ZhsNsSwTyqHhqRtqsMjnG2TYYUoV0tcl/ibrZ7sw0i8pE7/OMnyH/F7AxN8tp35fTiulddP93wG
 T7zHkQMqFvgdNl0NxIWozCYPJYe1zsY9Nq25dwfEJuQXA==

The TQMa62xx is a SoM family with a pluggable connector. The MBa62xx is
the matching reference/starterkit carrier board.

Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/ti/k3.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index 85deda6d42920..f1b6ef98714f3 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -95,6 +95,13 @@ properties:
           - const: toradex,verdin-am62          # Verdin AM62 Module
           - const: ti,am625
 
+      - description: K3 AM625 SoC on TQ-Systems TQMa62xx SoM
+        items:
+          - enum:
+              - tq,am625-tqma6254-mba62xx # MBa62xx base board
+          - const: tq,am625-tqma6254
+          - const: ti,am625
+
       - description: K3 AM62P5 SoC Toradex Verdin Modules and Carrier Boards
         items:
           - enum:
-- 
TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
https://www.tq-group.com/


