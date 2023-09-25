Return-Path: <devicetree+bounces-3281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 071F57AE0BD
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 23:27:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 194011C20831
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 21:27:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04D02241EC;
	Mon, 25 Sep 2023 21:27:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E886A224F0
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 21:27:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F28BDC433C8;
	Mon, 25 Sep 2023 21:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695677245;
	bh=ttt9MxqlXu8nD2JgUN9u6TOQN+41IkV1ecAtDT3N474=;
	h=From:To:Cc:Subject:Date:From;
	b=kYnloxV/57uAVpHewX8XeuFQPLiTF2QIJwR0cP+ubSh+Jx6ve4QYl+vRxwIp1BshC
	 nvlL3Jqc63g61QjTGgGm/6AfydVlM+FMEagcyDPX04Km1rjPfNX9f11AfahfOAyJCu
	 Sf4EtAb5DSS0GSkbtBII0jf3EfkACJf2tv7vhTRZU2XbVdbTclfy8HDeSGCdGhAJr7
	 j4JJP1n2KZtDHbuH5oBJWz+wrl6Y7tN/U0HuyXP5S001xOEvMYkaw/fFPUTcLHaPDd
	 nvM/48XZgpcbSmqU6KpQPj5JkTS1JSpjAKN2XpeHTQSP9RU8RA7ZNfKmD+S8Utl/76
	 K+u3kLdH8dn1A==
Received: (nullmailer pid 1976042 invoked by uid 1000);
	Mon, 25 Sep 2023 21:27:19 -0000
From: Rob Herring <robh@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Linus Walleij <linus.walleij@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, Magnus Damm <magnus.damm@gmail.com>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>
Cc: Konrad Dybcio <konrad.dybcio@somainline.org>, linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH] dt-bindings: pinctrl: Add missing additionalProperties on child node schemas
Date: Mon, 25 Sep 2023 16:27:10 -0500
Message-Id: <20230925212713.1975800-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Just as unevaluatedProperties or additionalProperties are required at
the top level of schemas, they should (and will) also be required for
child node schemas. That ensures only documented properties are
present for any node.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/pinctrl/qcom,mdm9607-tlmm.yaml         | 3 ++-
 .../devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml     | 1 +
 .../devicetree/bindings/pinctrl/renesas,rzv2m-pinctrl.yaml     | 1 +
 .../devicetree/bindings/pinctrl/rockchip,pinctrl.yaml          | 2 ++
 4 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-tlmm.yaml
index 2aedb7e7bc8b..5ece3b9d676b 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-tlmm.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-tlmm.yaml
@@ -43,7 +43,8 @@ patternProperties:
   "-state$":
     oneOf:
       - $ref: "#/$defs/qcom-mdm9607-tlmm-state"
-      - patternProperties:
+      - additionalProperties: false
+        patternProperties:
           ".*":
             $ref: "#/$defs/qcom-mdm9607-tlmm-state"
 
diff --git a/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
index 145c5442f268..4782f96feb7e 100644
--- a/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
@@ -73,6 +73,7 @@ properties:
 additionalProperties:
   anyOf:
     - type: object
+      additionalProperties: false
       allOf:
         - $ref: pincfg-node.yaml#
         - $ref: pinmux-node.yaml#
diff --git a/Documentation/devicetree/bindings/pinctrl/renesas,rzv2m-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/renesas,rzv2m-pinctrl.yaml
index cb81a17bd0b1..5fa5d31f8866 100644
--- a/Documentation/devicetree/bindings/pinctrl/renesas,rzv2m-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/renesas,rzv2m-pinctrl.yaml
@@ -53,6 +53,7 @@ properties:
 additionalProperties:
   anyOf:
     - type: object
+      additionalProperties: false
       allOf:
         - $ref: pincfg-node.yaml#
         - $ref: pinmux-node.yaml#
diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index 10c335efe619..20e806dce1ec 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -115,6 +115,8 @@ additionalProperties:
   type: object
   additionalProperties:
     type: object
+    additionalProperties: false
+
     properties:
       rockchip,pins:
         $ref: /schemas/types.yaml#/definitions/uint32-matrix
-- 
2.40.1


