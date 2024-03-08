Return-Path: <devicetree+bounces-49522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D65F7876CAB
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 23:08:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 116AE1C20B22
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 22:08:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A52160267;
	Fri,  8 Mar 2024 22:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Og1sRUtb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C615E5FBB2
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 22:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709935715; cv=none; b=sqzasknIB/+RKjNjYYYBTX1o6b+/jZfvpRs6xiM+zNu5kNfZmC6UBJac1tVgGSriFG5ZTBECJFm4bMY1DMi0Jnk2q7HAPCat3qBfii5H0MfzwcfMFdUVF3fCHmR7PBcve0Ou1TSCf9HjmbO9ZzeaLkLOuDfvjv1bbMF3CEtYKrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709935715; c=relaxed/simple;
	bh=Xh62d3byksWPc2df0T3ZNqEz0dwEInqwU4U7UsjCTrc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=M+lrrbmhqdxjyIblVbfcfQjyEuB02DKGFOWGYg2zaLKSmIwTEICB36Wp0+tLnlSFQ1JNxuzrNn64Tn85G9Ke7dCV7emk1MzcCMQ9XE56yYYGGmEslu6fGZPPhVifCXkhOHJFc+z709xvcYfgZXMYpTCVGAcLPRX3DvYx/NkFOFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Og1sRUtb; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-513173e8191so1897665e87.1
        for <devicetree@vger.kernel.org>; Fri, 08 Mar 2024 14:08:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709935712; x=1710540512; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XKdWQKffvL9ogBoto8xjFAnEMcASLQo+XFvTjrJ0feA=;
        b=Og1sRUtbqubEZMXJp0BA6xL7W+/pe4RBYBu3vuk2Zrcv300k6NSN0oPGxsLE9YIzfZ
         +K8xAr4VHIFZS80N1kmZnt1K+o1GV/c8SoFqHHzFzkNOSST4uX8olyga2zyfWHFUJx2E
         iZE91OLI/ItavcdJQP2hMOScESYVEGtWudAxc5HQzyaiaD0rJpupmDiJzXiYz0pagU0W
         Zf95QCSDIVAT/+WoUksIt51TRa1pn3ahek3saR1AQWTz8KbMyunnGiiEeXHLXbSxNypc
         q5G1loVYbmc2hV+HLB0fr9W5aeFom2Zi6jz50yyFA4u+x9nUpUuc2/0GM9dTZl9pLF/T
         s7ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709935712; x=1710540512;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XKdWQKffvL9ogBoto8xjFAnEMcASLQo+XFvTjrJ0feA=;
        b=B24gV3PTfUPIjqinG5OJq/BRKoHHYVznQeFj143uJy69c/aeTgjsQSazZX+Z8hPfyH
         TsKA7HJZWu5ZFNfle5mo+tP3lgESp2u6CRFqwxfW7hL4EzYFrBWGnSy4MEMw7oU3cN0h
         +M5BJVHtNhJnGcXJVIlP0mtMGfQPsJBhZpdhGWnKhmm14e4mdxctyRPZiSg7AuBEes1p
         6idbE0oA4JOEpUF/QybZBJgoxWxZBcQEBq7EST1Q6tpLOLdTXkyO2lL+06j4MbTgu8gh
         dT9Um5X/nj0Mt4zZkftsyYGlF2XWAMU22Mvlay56mulLOjxyZm4DnaGnVYwgb3XdyiMG
         yAVg==
X-Forwarded-Encrypted: i=1; AJvYcCV1fyIRIdP45fmnoGNsgkc8afcR87zXvZsi0bNm8Xz7d12S0HEXPSUXLAkB/TfUtTF/pXGWk5FvQZLEwIX4QkRMsbBLdxZX+0r/IQ==
X-Gm-Message-State: AOJu0Yyie2RT8WwQdgXvyVk7PmhANyR5YnqtXgmwWimhKXcyiBWYX08n
	2UqFd+WQr5sWY6rGNhAVoCQG9FrhwhIU2f7z7Ij06VmS8lVgSoQil6SSiOlZXTE=
X-Google-Smtp-Source: AGHT+IHyOWzOdU/BOxygotGUcPU3PGmZP/n8bQUUg76ajk1bHXE8sWsDIEq9hzck+GKyOHKJE9LSqA==
X-Received: by 2002:a05:6512:551:b0:513:588a:2614 with SMTP id h17-20020a056512055100b00513588a2614mr193982lfl.49.1709935711907;
        Fri, 08 Mar 2024 14:08:31 -0800 (PST)
Received: from [10.167.154.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id a14-20020a056512020e00b005130ff68b87sm78241lfo.109.2024.03.08.14.08.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Mar 2024 14:08:31 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 08 Mar 2024 23:08:20 +0100
Subject: [PATCH 1/3] dt-bindings: thermal: lmh: Add QCM2290 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240308-topic-rb1_lmh-v1-1-50c60ffe1130@linaro.org>
References: <20240308-topic-rb1_lmh-v1-0-50c60ffe1130@linaro.org>
In-Reply-To: <20240308-topic-rb1_lmh-v1-0-50c60ffe1130@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>, Amit Kucheria <amitk@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1709935708; l=956;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=Xh62d3byksWPc2df0T3ZNqEz0dwEInqwU4U7UsjCTrc=;
 b=byZXpm6wd+fbTpb+oGjeh0DovnEkW1bDomSmAaJJ4fk1Xh9XQQZYnLllxRTPWwJQaKfFYHS8Q
 dEjUf0cFVSaAlPESaOzUBwOU56Cja/kDYxXSrdTieha24IjB8SshJOg
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Document the QCM2290 LMH.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/thermal/qcom-lmh.yaml | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-lmh.yaml b/Documentation/devicetree/bindings/thermal/qcom-lmh.yaml
index 5ff72ce5c887..b815d8c5da51 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-lmh.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-lmh.yaml
@@ -17,10 +17,15 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,sc8180x-lmh
-      - qcom,sdm845-lmh
-      - qcom,sm8150-lmh
+    oneOf:
+      - enum:
+          - qcom,msm8998-lmh
+          - qcom,sc8180x-lmh
+          - qcom,sdm845-lmh
+          - qcom,sm8150-lmh
+      - items:
+          - const: qcom,qcm2290-lmh
+          - const: qcom,sm8150-lmh
 
   reg:
     items:

-- 
2.44.0


