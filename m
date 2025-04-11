Return-Path: <devicetree+bounces-166027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DDBD7A8625F
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 17:53:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB2091BA1876
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 15:52:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACAD920FA9C;
	Fri, 11 Apr 2025 15:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="MYmOgcCv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69CF0213224
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 15:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744386750; cv=none; b=klTkr/IwD62lL7XzalbDCa2QiAVAU84odcGVv6V2RpzrDCFcaRkncqKaCsvhMsjIa4Y1Bh10cV1EZN/39UvkRHYvVCx7uBEEfFfR0tgk023hTBbP0aJCuod4wSoc8Xk40LJSpjsA4vHlSUhIjJT5nhjf6zNPlk4U7g5RcCOLGPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744386750; c=relaxed/simple;
	bh=4MuygCxGmwbiYOgtlDoYQIS1nrN+OR8Pf+4AYFZm/FY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ODSAmIyr9E5YXvrBV3C+ICV9zPNPiP0SUHnNCFt4VWs2Hh2tlZQMjCAIvdzoDsBQ/eo39YAL3bSPe7Cr+MVf3u/lE7b6rB/wejTqorim/7/sYffL8p8WC0B/oUcc/3fcZHOZwCVBuzVE0sDRQCpFraeLZdYQCmWNiM60eDzKT2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=MYmOgcCv; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=meW/N3a37av8EP
	DxYBGIfMUIvjBe5XDYmCBv0Z+7gvk=; b=MYmOgcCvPs6qrccJ2ZnaCG6n6w6GDb
	xSmC2p+ILtf7ZX7fTEPrECexBkB+6j9pwn7gpoiFb6PHzHw4Eiuuoaiqp7gTn5oe
	FkqpO0xyNVOOW6Ibe3vJS/GS8mjh2o/5uyI/KD3YtGdCUhBu44cWVKfw8+Skk6gs
	tU7SW19Le72GLvqPhiT5uiQ6xb1sslfmBvgfnamSL2uRr6GxWJKo1XcwDWxsB/am
	fpzdqLOXaMB5kEErQkawAFBo9rERwEmJx3+HNEGm6t/KiYJWRobELHOBm9gqZiqP
	Qk9K7ejkYTQ52/E68W//iqDL/fiBXDVSoBQxvwZhaBeN3MAWTawLB8pw==
Received: (qmail 1349721 invoked from network); 11 Apr 2025 17:52:24 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 11 Apr 2025 17:52:24 +0200
X-UD-Smtp-Session: l3s3148p1@6hBEsIIy9KIujnsS
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: serial: snps-dw-apb-uart: remove N1S binding
Date: Fri, 11 Apr 2025 17:51:06 +0200
Message-ID: <20250411155220.5940-2-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is one of four (quite randomly) added bindings for Renesas RZ/N1S.
Essential bindings like clock support are missing for 8 years. With 6MB
of internal RAM only, N1S is not a prime candidate for running Linux,
unlike the DDR-RAM capable N1D. I could not find any further activity in
upstreaming N1S support, neither for Linux or any other OS. So, remove
these half-baked dangling bindings which are incomplete and look
unprofessional. We can happily add them back if somebody offers complete
support for it. Until then, let's enjoy the easier handling of a single
'const'.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---

This would render Geert's cleanup unnecessary:

https://lore.kernel.org/r/90c7aa143beb6a28255b24e8ef8c96180d869cbb.1744271974.git.geert+renesas@glider.be

 .../devicetree/bindings/serial/snps-dw-apb-uart.yaml | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 1aa3480d8d81..1ee0aed5057d 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -17,9 +17,7 @@ allOf:
       properties:
         compatible:
           items:
-            - enum:
-                - renesas,r9a06g032-uart
-                - renesas,r9a06g033-uart
+            - const: renesas,r9a06g032-uart
             - const: renesas,rzn1-uart
             - const: snps,dw-apb-uart
     then:
@@ -45,15 +43,11 @@ properties:
   compatible:
     oneOf:
       - items:
-          - enum:
-              - renesas,r9a06g032-uart
-              - renesas,r9a06g033-uart
+          - const: renesas,r9a06g032-uart
           - const: renesas,rzn1-uart
           - const: snps,dw-apb-uart
       - items:
-          - enum:
-              - renesas,r9a06g032-uart
-              - renesas,r9a06g033-uart
+          - const: renesas,r9a06g032-uart
           - const: renesas,rzn1-uart
       - items:
           - enum:
-- 
2.47.2


