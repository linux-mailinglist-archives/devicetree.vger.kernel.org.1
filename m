Return-Path: <devicetree+bounces-84741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A6E92D588
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 17:57:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EECE51F2372B
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 15:57:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EE14194AE0;
	Wed, 10 Jul 2024 15:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cwJC/PHz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9532B194126
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 15:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720627044; cv=none; b=ZQG7B9DAQ0GCohxykzIObdBRkdTCHHDcOyPcxPoKl1AdhYySpsZbuYip5b7/IvOIf3kfaoTV0uljCdo9hqNC5zNDD2O3/udzoZGeUuVtj5I9YLV3Y3iPmt8/IKKfzcIqttA7S9eoEzZFLAnOMmg+Q57+lukNGu10vgjnkU/dTkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720627044; c=relaxed/simple;
	bh=ckjcHD3fkP8UGIBWxU1ZMaTjWw9VjUn/fMjmY62VgFc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Mo4oY7aLLIpxPc6wT3/bUHTOh95cILfyf+qV9x47UHU7QQddfg6sCiF06w2zzqROYc0ABff54oA0zUac0Dc5ufpnOBKiGr24EIB/jXCAIQB9148BpOJIVcHGVCyPulD3JcrpldpwnT3PJMOec7HfvWRm2q2ezuFW0jLVSHfqyF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cwJC/PHz; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-367b0cc6c65so3225676f8f.3
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 08:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720627040; x=1721231840; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HnfobWpsEh1CTQ1nMG8bJe9u9N98dynELs2GKuprvwc=;
        b=cwJC/PHzYOm0nuf1mX2cGU9atU4xcdCj9PHpScJRxxTuY9G5QI6QjsVFxX/DfPjcYM
         Sla/eqSXBWs6XMGGi1h1R60V01TSsnHZeM1TRPxtxixFtny3Npc2c02iB+zKY57RYWtK
         EWaBSTEnYN1UzIdul7Ia3erMdSl1FTySFLRbc4J4gKqIdjMBjtUfTy9KvFoSW9Gv8ds5
         GoqQATUq3SV4v9Zr0Uagjxx+WrePv7wt6SUPTdrKqp8KYeU+V3AbBdeiTdjFU7pEJR7L
         4yQSEugGfkPg/I6pftFUYM+2uQJjrgLVK5+wwwIMRZE5Y+suhe1in8YXZlDU26lKiDCQ
         gLAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720627040; x=1721231840;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HnfobWpsEh1CTQ1nMG8bJe9u9N98dynELs2GKuprvwc=;
        b=Pom3MpsIvi/XzIW1o2yJdNhNYnhwdh77bgHdkFJSlZvEt5UQMuoijse++ZfpdOpSMt
         ahZXR5dogJqh41L5vj6TiS3R7FfcGxtb1spzXM8oKnlnCTqcHwIwZPosrSNFtPKOoi52
         mDWG73zeyKsMp3A5YjuYVc8UdigPTy60U6RcwmZS5ypZm4nahtFmHWEr0QaXJMGSYDJX
         HkjjEyM1Pc287KuH6Pa6w/TLw+nUYpA+njZFWDbTal+LzGqL1xls7dAgPNLGyvOwa1L7
         UwUMPN86diYncFzwIo3PlWW+IXaX6LpzLMO9YCLRFUBT9TxHxMQaKBV3+wgeyzCauU+5
         yDSg==
X-Gm-Message-State: AOJu0Yz4D65v2RjMEvgk9SPPxlrAxdU56Row8ugVRRbR7/2Ac0YxBnDs
	uWDs5bxCRZAI5ZmS0sZBYyN3060DGlubedgxfMuVRW1neV3dknSFi+kqPQyBtK0GR6bE2hQupr8
	0
X-Google-Smtp-Source: AGHT+IGxWJ+uQVCF1vScgzbj2bCdlzRN6GNu5flmFzxZ33UHXWfSYIOVihzegxxgknjCW1PWHA/VvA==
X-Received: by 2002:adf:f84e:0:b0:367:8459:a56c with SMTP id ffacd0b85a97d-367cea73576mr3670317f8f.15.1720627040274;
        Wed, 10 Jul 2024 08:57:20 -0700 (PDT)
Received: from rayyan-pc.broadband ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cde7e02esm5668009f8f.3.2024.07.10.08.57.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 08:57:19 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
To: devicetree@vger.kernel.org
Cc: Rayyan Ansari <rayyan.ansari@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: power: qcom,kpss-acc-v2: add qcom,msm8916-acc compatible
Date: Wed, 10 Jul 2024 16:52:23 +0100
Message-ID: <20240710155226.130086-1-rayyan.ansari@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add compatible for "qcom,msm8916-acc", used in msm8916.dtsi, to the dt
schema.

Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
---
 Documentation/devicetree/bindings/power/qcom,kpss-acc-v2.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/power/qcom,kpss-acc-v2.yaml b/Documentation/devicetree/bindings/power/qcom,kpss-acc-v2.yaml
index 202a5d51ee88..3fa77fe14c87 100644
--- a/Documentation/devicetree/bindings/power/qcom,kpss-acc-v2.yaml
+++ b/Documentation/devicetree/bindings/power/qcom,kpss-acc-v2.yaml
@@ -18,7 +18,9 @@ description:
 
 properties:
   compatible:
-    const: qcom,kpss-acc-v2
+    enum:
+      - qcom,kpss-acc-v2
+      - qcom,msm8916-acc
 
   reg:
     items:
-- 
2.45.2


