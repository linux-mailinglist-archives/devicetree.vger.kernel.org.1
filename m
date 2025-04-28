Return-Path: <devicetree+bounces-171548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 08887A9EFD0
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 13:56:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6DDD47AE846
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 11:55:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E04326463E;
	Mon, 28 Apr 2025 11:56:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from baptiste.telenet-ops.be (baptiste.telenet-ops.be [195.130.132.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BC5D263F52
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 11:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.132.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745841408; cv=none; b=pflQlbZYV3RRqRrGjLM8D3L/VMShsjj4cNzQwiRsBsQX0/9lW4Rx9LlB8JGbrVLIho0DXVOWSY1StWFcee2xXqs8tl1IN1SG5AyaiYZ6qPIu0es+wEihyEF1foIvM3OipnJ+MmrCVIaCOLhUsiG0F9FzX3gUCI5/zpkdSywzKzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745841408; c=relaxed/simple;
	bh=X/soWbhpO0FhwjjAyy73/ajqAZHPAbjphH0dMV3bQPY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pc1eeZo6Z7EaBi3zcGT6Gwtlw3g5jNlf5/SAqS/MpaBdalWeZIJEJlQ9huQpf69Cd/Nay15tOOtGETEUFiczRMBAZaw4yCJPGSzkYcHM6LOSjkg/852SdTaszNrG9iS5tYWAoy+YeDcoA6HByy3DvU+wxwi7G0eKVhQq3bWlErA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.132.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:b9c4:1670:abc0:a1fc])
	by baptiste.telenet-ops.be with cmsmtp
	id ibwc2E00G4Aed8c01bwcNZ; Mon, 28 Apr 2025 13:56:37 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1u9N6B-00000000F7Z-1V2M;
	Mon, 28 Apr 2025 13:56:36 +0200
Received: from geert by rox.of.borg with local (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1u9MrT-00000006x00-3C0e;
	Mon, 28 Apr 2025 13:41:23 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] dt-bindings: soc: renesas: Document RZ/V2H EVK board part number
Date: Mon, 28 Apr 2025 13:41:17 +0200
Message-ID: <c56db3497e678134fadf4851b236e3efd447d7f4.1745840308.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
To be queued in renesas-devel for v6.16.

 Documentation/devicetree/bindings/soc/renesas/renesas.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
index 5e6e6e6208dc552e..2088379a7eaeba4c 100644
--- a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
+++ b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
@@ -576,7 +576,7 @@ properties:
       - description: RZ/V2H(P) (R9A09G057)
         items:
           - enum:
-              - renesas,rzv2h-evk # RZ/V2H EVK
+              - renesas,rzv2h-evk # RZ/V2H EVK (RTK0EF0168C04000BJ)
           - enum:
               - renesas,r9a09g057h41 # RZ/V2H
               - renesas,r9a09g057h42 # RZ/V2H with Mali-G31 support
-- 
2.43.0


