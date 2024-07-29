Return-Path: <devicetree+bounces-88875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D2793F38A
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 13:05:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 13DD31C21B72
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 11:05:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41396145A0D;
	Mon, 29 Jul 2024 11:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Drthm67q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B2214534D
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 11:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722251096; cv=none; b=L8S7X9Uu0PieB3KNR5/9pvvwOoIp8Y4q1QM2WsBf1aRURC+kAV1F0lP3AC5bNgKlxvJ05EChIKJfrAXg5+zep42Tq4Wtoo6AtcoSLjBhGpNL6mULUFIq/rz1Oj2u6Bmy4s7slKZdRl1BNkEPM+RynlY928j6myaWy8iGWAPurlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722251096; c=relaxed/simple;
	bh=7hXerL1IiWVUTXqdgSPGGoH3EsZvPPHNEeO6LvFBZgk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Mo2NIix/L+p7ejH3a18tZskyK2zu+L2eNRf2otrX+WTDFifplLPZYwbxlt4ro/7U3bIpMOJ34wsrpW5EJjFGXf0zhLC7+oTZTv2hgvV261WBFuWeEznI2BlXFv3eUTxf4msGzMJeAPyB1Ehm5GboPbS929BP+FhXb8jSmKYbgQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Drthm67q; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52efd530a4eso5181438e87.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 04:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722251092; x=1722855892; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JyKToe6TxBmz/YWrLy6w0oK844kg41jA+g/8mxCxauk=;
        b=Drthm67q+bhS9qeWeiqN9qc6sdXCA4nVaUgVn0ynHFOXE5Ac0wV9GkqHVEQP66zhul
         R9uF+UJbUFS9c8dET/KTNbSBwGeEltbkiROxNbWDjXyMygr6eDnzLkaArHEV91CFl6DE
         FIKLkbSQ8W0lcExERbKfibHFr4HIWRzIjM+XT3b7aLTXgVgmMQh48c65TDtPZnk9+mJg
         ephaTKhTLi5C+OaBYQBfq+czKp7l0jasU3FuwVTsT6BsZkLzx3Yf8TlECq+xAXBtzGkY
         GJLOmJ653zc1KdKqF3sCV56mODytX+9QFYghkHzAvJyxMxazkAdXtWUm9QTRrLs86cuU
         mBbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722251092; x=1722855892;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JyKToe6TxBmz/YWrLy6w0oK844kg41jA+g/8mxCxauk=;
        b=GUH4QkeFHmPem4CbiM079LyrAciskaLlmsP9AkATRmHJejmJo0X65rEGAuMtGLpznr
         KbG7pqHireycSjYOgYsVT3N25NfzCOQIKNxXUNEj9G1QnP2QhPZ4LWekPzsDtKnDETmI
         L6BxbSBEFB1qWjyWs1Od+uAyM6vu8SKbSUQ7UCC/MzyndY8IIZcSevdck50F+34v5dBX
         PKVVdsWa2eFYyFl5sLfBoo5FCfWTSU6tlEi2JKFQqp0NrI5f3zlh09Wg5nSKeZ3GXuUM
         J/RsUkcepbdHqThbIAkIDIYAqsrvTrbjISNazRGnHKTXnALsvJRnXAJ/XpO2nepf/xqO
         f1ig==
X-Forwarded-Encrypted: i=1; AJvYcCUcbBOkt2FksVOqjlswt6i9On+vi9GaqBbOgVQ/AC1ZSCJKJFRtFn64q8Tg71VUD6VO4vLuhYofJUxMD6ugME24FpF7t/joIBsbaw==
X-Gm-Message-State: AOJu0YwcFnSH4kwIYKMRLLMWsgy/cg0jTnKtwpwUys4wf6VMhCJlnmcT
	Hpdbtnd/RCaC06vnx2r/isGVt8sUsOMu+3ENK8jZkm928Du81KTiikE0sVW8Mu8=
X-Google-Smtp-Source: AGHT+IFxG6yGKfSxUTwgDL1UDjMZblrWSXE6WEn9r2KI7bws9zhWzus1HrT8Zfm/hZFVU3+n7458bw==
X-Received: by 2002:a05:6512:39c4:b0:52f:159:2dc5 with SMTP id 2adb3069b0e04-5309b2ca468mr5408080e87.42.1722251092487;
        Mon, 29 Jul 2024 04:04:52 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5c09093sm1457806e87.172.2024.07.29.04.04.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 04:04:52 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 29 Jul 2024 14:04:45 +0300
Subject: [PATCH 1/4] dt-bindings: soc: qcom: smd-rpm: add generic
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240729-fix-smd-rpm-v1-1-99a96133cc65@linaro.org>
References: <20240729-fix-smd-rpm-v1-0-99a96133cc65@linaro.org>
In-Reply-To: <20240729-fix-smd-rpm-v1-0-99a96133cc65@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>, 
 Stephan Gerhold <stephan@gerhold.net>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2297;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=7hXerL1IiWVUTXqdgSPGGoH3EsZvPPHNEeO6LvFBZgk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmp3dSYL8kTG2g9+EtZGuToEqNO72f2kK5FXZwp
 UJvY2D5DxiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZqd3UgAKCRCLPIo+Aiko
 1eo1B/0bdIKiemgxtZMeDN5jdNF22rIXgGyV5wPRkYqEgDmwcL35weJXBcg/bNcUSRt5CK/uxuH
 QHuhwa8i+iX5PNnTrWkIRGhh9fqtPAewiq4STO+T0pmyRfeYZ3RC1zNCsclQsQOhRMGmJJmFFhd
 j/lXVX0GQAkJADBPjmIOqsDcMpTnrpszucvrSwy7ppDsixYbQrzGjdRCnJQ4Zgyt7oFPkljo6UZ
 CLnzuH5qnRUyWcvwTFpYc7F02vx84cal8sSAnwrb66gKU4Rydm8kcd1IkfC4sBt++Hz4tCDJno4
 i/+2IXjaTSMLFSxiBNJrCCwPMQStN7y3J9S4szPga4CVMQbR
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Add generic compatible to all smd-rpm devices, they follow the same
RPMSG protocol.

Fixes: bcabe1e09135 ("soc: qcom: smd-rpm: Match rpmsg channel instead of compatible")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/soc/qcom/qcom,smd-rpm.yaml | 52 +++++++++++-----------
 1 file changed, 27 insertions(+), 25 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,smd-rpm.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,smd-rpm.yaml
index 2fa725b8af5d..6f70683f84d9 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,smd-rpm.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,smd-rpm.yaml
@@ -30,31 +30,33 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - qcom,rpm-apq8084
-      - qcom,rpm-ipq6018
-      - qcom,rpm-ipq9574
-      - qcom,rpm-mdm9607
-      - qcom,rpm-msm8226
-      - qcom,rpm-msm8610
-      - qcom,rpm-msm8909
-      - qcom,rpm-msm8916
-      - qcom,rpm-msm8917
-      - qcom,rpm-msm8936
-      - qcom,rpm-msm8937
-      - qcom,rpm-msm8952
-      - qcom,rpm-msm8953
-      - qcom,rpm-msm8974
-      - qcom,rpm-msm8976
-      - qcom,rpm-msm8994
-      - qcom,rpm-msm8996
-      - qcom,rpm-msm8998
-      - qcom,rpm-qcm2290
-      - qcom,rpm-qcs404
-      - qcom,rpm-sdm660
-      - qcom,rpm-sm6115
-      - qcom,rpm-sm6125
-      - qcom,rpm-sm6375
+    items:
+      - enum:
+          - qcom,rpm-apq8084
+          - qcom,rpm-ipq6018
+          - qcom,rpm-ipq9574
+          - qcom,rpm-mdm9607
+          - qcom,rpm-msm8226
+          - qcom,rpm-msm8610
+          - qcom,rpm-msm8909
+          - qcom,rpm-msm8916
+          - qcom,rpm-msm8917
+          - qcom,rpm-msm8936
+          - qcom,rpm-msm8937
+          - qcom,rpm-msm8952
+          - qcom,rpm-msm8953
+          - qcom,rpm-msm8974
+          - qcom,rpm-msm8976
+          - qcom,rpm-msm8994
+          - qcom,rpm-msm8996
+          - qcom,rpm-msm8998
+          - qcom,rpm-qcm2290
+          - qcom,rpm-qcs404
+          - qcom,rpm-sdm660
+          - qcom,rpm-sm6115
+          - qcom,rpm-sm6125
+          - qcom,rpm-sm6375
+      - const: qcom,smd-rpm
 
   clock-controller:
     $ref: /schemas/clock/qcom,rpmcc.yaml#

-- 
2.39.2


