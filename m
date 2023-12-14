Return-Path: <devicetree+bounces-25205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C96812A02
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 09:09:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A8591F218A1
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 08:09:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41E0215EB7;
	Thu, 14 Dec 2023 08:09:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from relmlie5.idc.renesas.com (relmlor1.renesas.com [210.160.252.171])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id E4215E0;
	Thu, 14 Dec 2023 00:09:35 -0800 (PST)
X-IronPort-AV: E=Sophos;i="6.04,274,1695654000"; 
   d="scan'208";a="186463884"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie5.idc.renesas.com with ESMTP; 14 Dec 2023 17:09:35 +0900
Received: from localhost.localdomain (unknown [10.226.92.242])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id DDB9C4004CEE;
	Thu, 14 Dec 2023 17:09:30 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Lee Jones <lee@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Support Opensource <support.opensource@diasemi.com>,
	Steve Twiss <stwiss.opensource@diasemi.com>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	linux-renesas-soc@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 3/8] dt-bindings: watchdog: dlg,da9062-watchdog: Document DA9063 watchdog
Date: Thu, 14 Dec 2023 08:09:06 +0000
Message-Id: <20231214080911.23359-4-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231214080911.23359-1-biju.das.jz@bp.renesas.com>
References: <20231214080911.23359-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document DA9063 watchdog device as it is similar to DA9062 watchdog.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
---
v5->v6:
 * Added Rb tag from Guenter Roeck.
v4->v5:
 * Added Rb tag from Geert.
v3->v4:
 * Added Ack from Conor Dooley.
 * Updated title DA9062/61->DA906{1,2,3} as it supports DA9063.
 * Retained Rb tag since the changes are trivial.
v2->v3:
 * No change
v2:
 * New patch
---
 .../devicetree/bindings/watchdog/dlg,da9062-watchdog.yaml      | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/watchdog/dlg,da9062-watchdog.yaml b/Documentation/devicetree/bindings/watchdog/dlg,da9062-watchdog.yaml
index 9192315e559d..c8f698120597 100644
--- a/Documentation/devicetree/bindings/watchdog/dlg,da9062-watchdog.yaml
+++ b/Documentation/devicetree/bindings/watchdog/dlg,da9062-watchdog.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/watchdog/dlg,da9062-watchdog.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Dialog Semiconductor DA9062/61 Watchdog Timer
+title: Dialog Semiconductor DA906{1,2,3} Watchdog Timer
 
 maintainers:
   - Steve Twiss <stwiss.opensource@diasemi.com>
@@ -17,6 +17,7 @@ properties:
     oneOf:
       - enum:
           - dlg,da9062-watchdog
+          - dlg,da9063-watchdog
       - items:
           - const: dlg,da9061-watchdog
           - const: dlg,da9062-watchdog
-- 
2.39.2


