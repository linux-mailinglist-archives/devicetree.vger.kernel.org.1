Return-Path: <devicetree+bounces-165250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C337A83CEF
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 10:30:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2CC318A4770
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 08:25:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3E9620B21D;
	Thu, 10 Apr 2025 08:23:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from michel.telenet-ops.be (michel.telenet-ops.be [195.130.137.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB751EF372
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 08:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.88
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744273429; cv=none; b=gAih20A52YJyi5C/M2JifnNmPbf1YufrkrvG1UJG6cujqtl3O/XikhQKq1xYoCmx9gbrwLBicgFxw/NsVAZx+tS0LnZPZlkuzbsYiv/2ft/AFooQhfTNdZRIEEzI80WCpl0IKLZRgPHTNPlO0MIHUis4vCnI2rNu/y73Q/wdxFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744273429; c=relaxed/simple;
	bh=jDXMzCGFtFDBoTcrxabt2a9M54AJhVzDoWKMD8H2qRc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=JtSJrkf7+ywDEC9N8NQvANY85yUX3Gs+3SGqAzmMCXsV2afJjhEIZbFGK5FEE99wIXhHbrIMROhJf+s5BnsSxVhxiWwQTVvEWSZgN3jt7LWTdie/ImtT/t6rQhOMpk73KDTkIbTu3B93ZLX+iCxYj+ejvoAwatfKV2nkdLGcW0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:9963:4e91:5683:bcc8])
	by michel.telenet-ops.be with cmsmtp
	id bLPk2E0080oWysV06LPkLC; Thu, 10 Apr 2025 10:23:44 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1u2nCJ-00000000Gls-0OKt;
	Thu, 10 Apr 2025 10:23:44 +0200
Received: from geert by rox.of.borg with local (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1u2mqJ-00000009Hw2-0InG;
	Thu, 10 Apr 2025 10:00:59 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] dt-bindings: serial: snps-dw-apb-uart: Simplify DMA-less RZ/N1 rule
Date: Thu, 10 Apr 2025 10:00:56 +0200
Message-ID: <90c7aa143beb6a28255b24e8ef8c96180d869cbb.1744271974.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is no need to repeat all SoC-specific compatible values in the
rule for DMA-less RZ/N1 variants.  Use wildcard "{}" instead, to ease
maintenance.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 .../devicetree/bindings/serial/snps-dw-apb-uart.yaml          | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 1aa3480d8d818e99..1ffe3834b0a85085 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -17,9 +17,7 @@ allOf:
       properties:
         compatible:
           items:
-            - enum:
-                - renesas,r9a06g032-uart
-                - renesas,r9a06g033-uart
+            - {}
             - const: renesas,rzn1-uart
             - const: snps,dw-apb-uart
     then:
-- 
2.43.0


