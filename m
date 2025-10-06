Return-Path: <devicetree+bounces-223822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 11398BBDE9C
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 13:50:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 97D0234AD46
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 11:50:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C294272E56;
	Mon,  6 Oct 2025 11:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="EnPnT/iP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay04-hz1.antispameurope.com (mx-relay04-hz1.antispameurope.com [94.100.132.204])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A2A26A0AD
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 11:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.132.204
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759751407; cv=pass; b=sOI0foH+0JIlM/Xe0mtvniQkaQyBk7Tt093ixN+kNJypNZ4YDKCHrWQcuaLFtYfY0OG1utanTQKTt3RyoAAcm2COXbQIolxOdLxHfqGqDvAlvvT7/moJ2lVi86M/PsimalZYWRhderydeRNvdTTRc4XNVmMfc4yjVfjES6uBGSs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759751407; c=relaxed/simple;
	bh=qarvGPIXqA4kc0VRJVXX2DsO6Wnlroa5YHsjyH+FLN4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ajSbeiFtKx+Fsfmpqr4f3SlZeorkiqZ4vePtDCC037MGoJM4iyPoihxlj0+nHroqiCz7i5VXoT7LLsSwrj+Odr+b7HjDZX9iBsCtBm+cLvXPUhGjSdN7wrpLzezE62cJ/aGwSCgmODOjd2WL5dlSU/FTzCuKEiK0ZTm3gcXEz1s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=EnPnT/iP; arc=pass smtp.client-ip=94.100.132.204
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate04-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=KYptHwQxYppzTfCWVdL/R5bMHuCmx/luf6VVt6namUI=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1759751352;
 b=ctJSGR38CVFSm0WsqkwryF1iifqCdq02dmnkDi4EewOe6YbteYUbXtY2cXet+y3Ei5+9n6xx
 oCS7iLJeY+X0pNSnNMVujyd+/3uFaKB4o2WPPSyyR6MnFIbWto49w2nSXMIhutNcNyDfZ+0eVYU
 g/gLy54d6NkuBW6ZKDzKR6Jgjfqx4Gt+yFgfJINqSWQ8cuIiR2iq6PCXOQaRtsgv9E5n0zdn+iT
 kTlfc1vTBdmGkY3N/pT4oKUG1e7XF7lPApRY59KAyeH2jr8euFCDPQ64o5um/40A43dRNwz7blQ
 puu4UOmPwxTVf7TNSBkRaVd0nF4RsAojxNvUor7iNwgoA==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1759751352;
 b=KBHwfqUYTkOu2t/PgGUTQ6dTl760+XTrwdZFNq/sN0f8HCON3YbRmAOq0WDvmB/GPtOG4xEP
 xYbc7GpWFFUSO5yYKcGTZrkvTNxHbW7IB8/BTTKHfrzai/LAcT6nbReJGTCTvO7/3m+A92ODn52
 MXtSAx2LeyvTWBZOIZbteWoeg+0TynyATjRFOk7DIv63sKkotR9A2fuOb7y3ePghviciocs/8rW
 SVPFgUqgJdc0WzKfQdFiabaeNB7OG0c9kLZRb2bQrYJQvVxJtunYWyRsyWe6PBqkUrVhIExJP4V
 FId84cP2q4/05+SoEwJgruOGZtUal7QVBBQ9mvYzUMJzQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay04-hz1.antispameurope.com;
 Mon, 06 Oct 2025 13:49:12 +0200
Received: from schifferm-ubuntu.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: matthias.schiffer@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 4F5EC220CF2;
	Mon,  6 Oct 2025 13:49:03 +0200 (CEST)
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
Subject: [PATCH v3 1/2] dt-bindings: arm: ti: Add compatible for AM625-based TQMa62xx SOM family and carrier board
Date: Mon,  6 Oct 2025 13:47:47 +0200
Message-ID: <7691a2ca5ed49da6276d406e5dd986c91f221c9b.1759749553.git.matthias.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <cover.1759749553.git.matthias.schiffer@ew.tq-group.com>
References: <cover.1759749553.git.matthias.schiffer@ew.tq-group.com>
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
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay04-hz1.antispameurope.com with 4cgHc010rQzS0jY
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:b8a1cefe5a1b3338a1f745c2baa9dc55
X-cloud-security:scantime:2.278
DKIM-Signature: a=rsa-sha256;
 bh=KYptHwQxYppzTfCWVdL/R5bMHuCmx/luf6VVt6namUI=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1759751352; v=1;
 b=EnPnT/iPYdLFkDEFOx+HvDZ3Te0r7Y08Frtrv5Z9JhxwJMkvU0Z/bGowLPEwwmDrvkxAhtB0
 O7C9xmdrpfVFGdiepf5yj9VdITHxcrl8wc9PsRus3aw5hMc+ArMSyd89YUCf1KeoR2X5osaWrKQ
 CumVWvtmxoRG+lbsMCeahoBcVdLRT5YRGMdCIe/25CgR2wQqLwXszH5f/k22a5wJKH2Q47G8Jcs
 E1GwoU26RN9b2wDSNNkoC1riSh/i33AjMNQGiiysUeTeoFXov9q/wSnNF754ZMfoqcuyVTU/kZC
 VX1Rxpar0tRX7dLPtCmP0DBlrlc1OVDmilb/hmHODrPIA==

The TQMa62xx is a SoM family with a pluggable connector. The MBa62xx is
the matching reference/starterkit carrier board.

Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/ti/k3.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index 0105dcda6e04d..ed89a7a36e1f8 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -89,6 +89,13 @@ properties:
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


