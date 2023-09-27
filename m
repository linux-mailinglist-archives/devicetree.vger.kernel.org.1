Return-Path: <devicetree+bounces-3644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFCD7AFAA0
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 08:05:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 3D3791C2093F
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 06:05:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B5CE1A27D;
	Wed, 27 Sep 2023 06:05:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B09154A0
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 06:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CAEC433CD;
	Wed, 27 Sep 2023 06:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695794706;
	bh=2pSJ5RtkTJUIWZtuMClF1MziyBCDcsQTg8O2HQnpmqY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=pmSUeoKyXx9xy2DrOtvyAGQ96W9bxjUyZMkARP9qB0R1dNEABZP/hqoCATgfAO94Q
	 YaoeK2y1/amoCrnlXYeS0onp5uW/wFobSUGvg9Qedibl3/0Gi4XnXp5v42DDcQV/J6
	 qLJ9tOmD8igvG1QDUadfQ6i/MPPdhizOsZ7Vv7VrYVvio/QOL4SyNpTQfe+eeqgJGH
	 bWOkVVmykh4vRODg+2QezRtuJRkxCki2pv/kfuYui+an00XrpIrvHnM0DS7cdjnOAW
	 +GbQpAGFAj/qmNZ6FWe2FgUDR1hTjfaFrCqEpyp6kla7lcR7yotK0yj/jRiANlMcHS
	 Qu+va6R+PFHFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C57EE80A95;
	Wed, 27 Sep 2023 06:05:06 +0000 (UTC)
From: Fenglin Wu via B4 Relay <devnull+quic_fenglinw.quicinc.com@kernel.org>
Date: Wed, 27 Sep 2023 14:05:03 +0800
Subject: [PATCH v7 2/3] dt-bindings: input: qcom,pm8xxx-vib: add new SPMI
 vibrator module
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230927-pm8xxx-vibrator-v7-2-b5d8c92ce818@quicinc.com>
References: <20230927-pm8xxx-vibrator-v7-0-b5d8c92ce818@quicinc.com>
In-Reply-To: <20230927-pm8xxx-vibrator-v7-0-b5d8c92ce818@quicinc.com>
To: linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, quic_collinsd@quicinc.com, 
 quic_subbaram@quicinc.com, quic_kamalw@quicinc.com, jestar@qti.qualcomm.com, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Fenglin Wu <quic_fenglinw@quicinc.com>
X-Mailer: b4 0.13-dev-83828
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695794704; l=1205;
 i=quic_fenglinw@quicinc.com; s=20230725; h=from:subject:message-id;
 bh=SwnogURbBf0S1flEa633BZvpsevy5nBnFae6M+y7bFo=;
 b=OC3LadE7dcAePnMUq3HehlEJzStc+e2KQjRogRLjcQ50SoEsfrF+YJ6CAWfrOzvLkas3XsiEE
 jiaN3oFrO/1Atv3vGNPO1IiugT1Ey4pgcQftw3RSya28Canvpih3lZm
X-Developer-Key: i=quic_fenglinw@quicinc.com; a=ed25519;
 pk=hleIDz3Unk1zeiwwOnZUjoQVMMelRancDFXg927lNjI=
X-Endpoint-Received:
 by B4 Relay for quic_fenglinw@quicinc.com/20230725 with auth_id=68
X-Original-From: Fenglin Wu <quic_fenglinw@quicinc.com>
Reply-To: <quic_fenglinw@quicinc.com>

From: Fenglin Wu <quic_fenglinw@quicinc.com>

Add compatible strings to support vibrator module inside PMI632,
PMI7250B, PM7325B, PM7550BA.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Fenglin Wu <quic_fenglinw@quicinc.com>
---
 .../devicetree/bindings/input/qcom,pm8xxx-vib.yaml       | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/input/qcom,pm8xxx-vib.yaml b/Documentation/devicetree/bindings/input/qcom,pm8xxx-vib.yaml
index c8832cd0d7da..2025d6a5423e 100644
--- a/Documentation/devicetree/bindings/input/qcom,pm8xxx-vib.yaml
+++ b/Documentation/devicetree/bindings/input/qcom,pm8xxx-vib.yaml
@@ -11,10 +11,18 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - qcom,pm8058-vib
-      - qcom,pm8916-vib
-      - qcom,pm8921-vib
+    oneOf:
+      - enum:
+          - qcom,pm8058-vib
+          - qcom,pm8916-vib
+          - qcom,pm8921-vib
+          - qcom,pmi632-vib
+      - items:
+          - enum:
+              - qcom,pm7250b-vib
+              - qcom,pm7325b-vib
+              - qcom,pm7550ba-vib
+          - const: qcom,pmi632-vib
 
   reg:
     maxItems: 1

-- 
2.25.1


