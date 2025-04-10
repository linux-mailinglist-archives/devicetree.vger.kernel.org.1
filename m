Return-Path: <devicetree+bounces-165554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E11FA84963
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 18:16:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 25C653BA421
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 16:15:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B4FA1EDA12;
	Thu, 10 Apr 2025 16:15:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [195.130.137.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1971EA7D6
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 16:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744301756; cv=none; b=U68f+5sVW7pRs8YgW6cnfqxzuUd4gblmDydm1Wm2lVzZyFBpi6J6QabvP4IM4rDrGxucMbANlM8JMLDEYpw245X1M0sGUqXw3rgcT9MQYRJzpWqTuoaRpTe1t2CZ3hkcoHGUM3nuaKLbb2xFQdU1sHSQyFW1NkWe8KCEzJMtSaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744301756; c=relaxed/simple;
	bh=5RTZRHVu23/ymivW6ycTMalnIfxmagk+Ve3KOia2Mw8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Qt6thilbOLh83alqMj4G6X9hmXqQR5YKoV+uis26LlgW/AEocrEvwOvF/DsbJsXZ248lMnRxL4QA5a9DrkHxwUQqjZb00Dpv2I25D6rzyr1iZ65iF8huoCmeGx/3/D4tlS9wOVyvPHseYjzcXqu52v5R7O1QPCTO/vP7FxsvFtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([84.195.187.55])
	by laurent.telenet-ops.be with cmsmtp
	id bUFi2E0061C8whw01UFie1; Thu, 10 Apr 2025 18:15:44 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1u2uUj-00000000JQC-1k7S;
	Thu, 10 Apr 2025 18:11:14 +0200
Received: from geert by rox.of.borg with local (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1u2uUk-00000009pN2-1sLE;
	Thu, 10 Apr 2025 18:11:14 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Christophe Leroy <christophe.leroy@csgroup.eu>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>
Cc: linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] dt-bindings: soc: fsl: fsl,ls1028a-reset: Fix maintainer entry
Date: Thu, 10 Apr 2025 18:11:12 +0200
Message-ID: <185e1e06692dc5b08abcde2d3dd137c78e979d08.1744301283.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

make dt_binding_check:

    Documentation/devicetree/bindings/soc/fsl/fsl,ls1028a-reset.yaml: maintainers:0: 'Frank Li' does not match '@'
	    from schema $id: http://devicetree.org/meta-schemas/base.yaml#

Fix this by adding Frank's email address.

Fixes: 9ca5a7d9d2e05de6 ("dt-bindings: soc: fsl: Add fsl,ls1028a-reset for reset syscon node")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 .../devicetree/bindings/soc/fsl/fsl,ls1028a-reset.yaml          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/fsl/fsl,ls1028a-reset.yaml b/Documentation/devicetree/bindings/soc/fsl/fsl,ls1028a-reset.yaml
index 31295be910130c2b..234089b5954ddb97 100644
--- a/Documentation/devicetree/bindings/soc/fsl/fsl,ls1028a-reset.yaml
+++ b/Documentation/devicetree/bindings/soc/fsl/fsl,ls1028a-reset.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Freescale Layerscape Reset Registers Module
 
 maintainers:
-  - Frank Li
+  - Frank Li <Frank.Li@nxp.com>
 
 description:
   Reset Module includes chip reset, service processor control and Reset Control
-- 
2.43.0


