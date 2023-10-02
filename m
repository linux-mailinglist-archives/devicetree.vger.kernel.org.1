Return-Path: <devicetree+bounces-5177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0942B7B5890
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:00:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 55DB4B20A57
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 17:00:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85C9C1DDCC;
	Mon,  2 Oct 2023 17:00:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8F831CF83
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 17:00:13 +0000 (UTC)
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D45C1BF
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 10:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=t+zSPF3hzzUuEg
	cciilWdlzYm3kdo1yKdJ3sF92td0Y=; b=eas1VW/0YnbzNJr4nUhbX8/XUjsuXI
	ViM/5YCkBBt1JiZEFfTgCThoeIxfFawM//x5ALHS7JT2ejl4qPnN10Lynhn4ohvO
	0TREt5DdirL5e1VikD9/dtoWqJMSD9DoC/7+4k4TonoxtKuveJCaqWgu61tZB/Fh
	SSFa17q0VJuANqZKEWkv58aY553ZbWQ3lI8YEOWkH66DRiZ2+6FRYLBws1SomGbY
	Axh5+N4OybKJcUGkPYn0tZHZsuBw3cQBTg7rUb/QfFFyVb3wI9Xi7vl4VBtW52yf
	TQCVV3QTHwYS1bLiix3mIY8PF5P5jFmyUwHTC3LrcZlqov5c1CXo0TKA==
Received: (qmail 591902 invoked from network); 2 Oct 2023 19:00:07 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 2 Oct 2023 19:00:07 +0200
X-UD-Smtp-Session: l3s3148p1@ce+DtL4G6OsujntX
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: renesas: r8a77990: document Ebisu-4D support
Date: Mon,  2 Oct 2023 18:59:57 +0200
Message-Id: <20231002165957.11388-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.35.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Document properly that Ebisu-support includes the Ebisu-4D variant, so
there won't be confusion what happened with support for this board.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 Documentation/devicetree/bindings/soc/renesas/renesas.yaml | 2 +-
 arch/arm64/boot/dts/renesas/ebisu.dtsi                     | 2 +-
 arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts             | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
index 53b95f348f8e..af80358b5fd3 100644
--- a/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
+++ b/Documentation/devicetree/bindings/soc/renesas/renesas.yaml
@@ -302,7 +302,7 @@ properties:
       - description: R-Car E3 (R8A77990)
         items:
           - enum:
-              - renesas,ebisu # Ebisu (RTP0RC77990SEB0010S)
+              - renesas,ebisu # Ebisu/Ebisu-4D (RTP0RC77990SEB0010S)
           - const: renesas,r8a77990
 
       - description: R-Car D3 (R8A77995)
diff --git a/arch/arm64/boot/dts/renesas/ebisu.dtsi b/arch/arm64/boot/dts/renesas/ebisu.dtsi
index bbc29452d1be..f1a5778ef115 100644
--- a/arch/arm64/boot/dts/renesas/ebisu.dtsi
+++ b/arch/arm64/boot/dts/renesas/ebisu.dtsi
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Device Tree Source for the Ebisu board
+ * Device Tree Source for the Ebisu/Ebisu-4D board
  *
  * Copyright (C) 2018 Renesas Electronics Corp.
  */
diff --git a/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts b/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
index 9da0fd08f8c4..d5ac34a966f6 100644
--- a/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Device Tree Source for the Ebisu board with R-Car E3
+ * Device Tree Source for the Ebisu/Ebisu-4D board with R-Car E3
  *
  * Copyright (C) 2018 Renesas Electronics Corp.
  */
-- 
2.35.1


