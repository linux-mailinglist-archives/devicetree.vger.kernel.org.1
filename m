Return-Path: <devicetree+bounces-24114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A94D480E0B5
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 02:09:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DA45A1C21449
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 01:09:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F1F0A23;
	Tue, 12 Dec 2023 01:09:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 59606AB
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 17:09:13 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DDA2A1713;
	Mon, 11 Dec 2023 17:09:59 -0800 (PST)
Received: from localhost.localdomain (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 945AA3F5A1;
	Mon, 11 Dec 2023 17:09:11 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: Icenowy Zheng <uwu@icenowy.me>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Subject: [PATCH 2/3] dt-bindings: arm: sunxi: document Transpeed 8K618-T board name
Date: Tue, 12 Dec 2023 01:08:58 +0000
Message-Id: <20231212010859.11571-3-andre.przywara@arm.com>
X-Mailer: git-send-email 2.35.8
In-Reply-To: <20231212010859.11571-1-andre.przywara@arm.com>
References: <20231212010859.11571-1-andre.przywara@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Transpeed 8K618-T TV box is a Chinese Android TV box, using the
Allwinner H618 SoC.

Add the board/SoC compatible string pair to the list of known boards.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 11c5ce941dd7e..5e91110cc9eb8 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -868,6 +868,11 @@ properties:
           - const: topwise,a721
           - const: allwinner,sun4i-a10
 
+      - description: Transpeed 8K618-T
+        items:
+          - const: transpeed,8k618-t
+          - const: allwinner,sun50i-h618
+
       - description: Utoo P66
         items:
           - const: utoo,p66
-- 
2.35.8


