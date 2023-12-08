Return-Path: <devicetree+bounces-23231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 711EC80A82B
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 17:07:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A2BE01C208CC
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:07:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25FA9358AF;
	Fri,  8 Dec 2023 16:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNCU4cb3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B31E3528F
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 16:07:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E5EEC433C7;
	Fri,  8 Dec 2023 16:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702051633;
	bh=l+iYlhzI1V2FhQLYDTCT5LQFhsRaalvLOJQNHs8UnaY=;
	h=From:To:Cc:Subject:Date:From;
	b=KNCU4cb35WDwu93cB3SM8DcP2zbk9Rw4CA6C2Ax59i0IC27KNqmW9rRDdbtIn6edz
	 12FevqUToKn/8IkjVdUFCYyRli247ZNlzsbriwkEktEsdWon0RjsurX9eCI6NauqhW
	 gxnRgB6WAFhVN4C3iyCnloOxpAhKabVdRwTfftwRCKZh1Bqd8xvoBlJ3Ez4+PX3viV
	 JHzNhvX7p5DK1gSM8JPjJS3K+JCan4x8TEMXQgdOOfQg8n/wB4LEI4AYDDcoZUasxl
	 9oNWrVU5wvrh//wo4JfvqGxxCafVk3Ft9bc1TLkuThy7y1o3EvnCZMu5KqMMadcEUm
	 mIDxqdoMs2tPg==
From: Conor Dooley <conor@kernel.org>
To: palmer@dabbelt.com
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] dt-bindings: riscv: permit numbers in "riscv,isa"
Date: Fri,  8 Dec 2023 16:06:51 +0000
Message-Id: <20231208-uncolored-oxidant-5ab37dd3ab84@spud>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1382; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=Yfy+NplT1sN2TXz/zbddM1bvj8bnuuv0sxpAm2Qtv0Q=; b=owGbwMvMwCFWscWwfUFT0iXG02pJDKnF9pLhD9eWvDvKqHy4Rfbk8WOGT3O6V4fElvrM+TDFn /n+nfjsjlIWBjEOBlkxRZbE230tUuv/uOxw7nkLM4eVCWQIAxenAExkTRwjw7wHzheyokXmz9Qy +/FfQfnC3NO7njmVns8r/vVfyqkx1ZOR4aWQjcLsJzPvn3tX/zHv4BmxXxG9NaJ2K5vshNOvLZy 7kw8A
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

There are some extensions that contain numbers, such as Zve32f, which
are enabled by the "max" cpu type in QEMU.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
CC: Conor Dooley <conor@kernel.org>
CC: Rob Herring <robh+dt@kernel.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
CC: Paul Walmsley <paul.walmsley@sifive.com>
CC: Palmer Dabbelt <palmer@dabbelt.com>
CC: Albert Ou <aou@eecs.berkeley.edu>
CC: linux-riscv@lists.infradead.org
CC: devicetree@vger.kernel.org
CC: linux-kernel@vger.kernel.org
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index c91ab0e46648..92c31245d3fc 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -48,7 +48,7 @@ properties:
       insensitive, letters in the riscv,isa string must be all
       lowercase.
     $ref: /schemas/types.yaml#/definitions/string
-    pattern: ^rv(?:64|32)imaf?d?q?c?b?k?j?p?v?h?(?:[hsxz](?:[a-z])+)?(?:_[hsxz](?:[a-z])+)*$
+    pattern: ^rv(?:64|32)imaf?d?q?c?b?k?j?p?v?h?(?:[hsxz](?:[0-9a-z])+)?(?:_[hsxz](?:[0-9a-z])+)*$
     deprecated: true
 
   riscv,isa-base:
-- 
2.39.2


