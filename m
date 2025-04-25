Return-Path: <devicetree+bounces-170959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7F2A9CC9A
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 17:17:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3DCD11B87ACB
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 15:17:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F6A9281370;
	Fri, 25 Apr 2025 15:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JiLx/ck1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A928F27B4E7
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 15:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745594260; cv=none; b=eG1yzYq7uy6oJi+VePZpIt7FDrkTewVwfM9/k/Dr+6xVIZVgH4K0uCh7XKm+MIlNIPgu6Q8ESGkEolvl0bEbFhe80Ar8iCIxsMEPiR/jg/h7qmH4uWAitYavhV6cyJ53aSyiYgAZbSWlUagvFbmdYxdCt1KLWeTqpGPuVAHXe8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745594260; c=relaxed/simple;
	bh=wcxEeIG/nILR9pbCjMso9yZS3cwzR9yIu9oGH3Xl5mg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cEvYUhZ1df8wcxBshGSax7cGsUDWrhNbqv86AunjEInhW4UtsTSIMKdQNjnzvTUwyYcLhtSxm9S+pCEK2cimXUwOOmYqc4l0GTSIC+1KTvNKlPKxbg50qkAjJtf9nzyOGXxn2HtkWNmDlqKoJLn6wdM036ywjHJohWr0nj2lXTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JiLx/ck1; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3912d2c89ecso1941869f8f.2
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 08:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745594257; x=1746199057; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HAQCWAaBVBZ9L8/5seSjJb98H17XEO01YnL9fUDtsAc=;
        b=JiLx/ck1tzAEVxJoK4ZtSFAfYXBk0AyE0gKqyyJvTf76OIlJEFql8wbd5+KG5qlgpd
         Zr6BBgsfTvzfwfg50feK2EsxWNxKORoNbPhoTW37yIhn5zxsIUQTZQDo5okQxmf/MSLg
         RRssJ0lVbKYofiWTjJxSdjQF1inY2MNk9ybFRl5DE/XVMaBgkHMkpcreD+hBb+6IWH+4
         jAnwNqRkd6hIZsxbCnOYPlplq6f4aSfXOUFBY6wL0tQCW5aHpp2m81hhptdKV8eH38gj
         NLqV/Ce1Yaf1NWDpCJMJ0V94bB0a4G/uPpC9zPK/qb4CPcZROK40r+V5HFIv9LyJIpPZ
         0T5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745594257; x=1746199057;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HAQCWAaBVBZ9L8/5seSjJb98H17XEO01YnL9fUDtsAc=;
        b=FIqbGb7y79c4mpL5pU6z7zWJaA+R7NrQNeei6AHPpEI/FtehyY/nKQLk3++TjD2E4h
         Y5UR/NKk46ZwqrEQFanp2lKBSd3IYa/3rr+0aKFiYFHAC1OJXu3WYA4OoP6vULJmuaIE
         9i236M8KKeVCmSPfch9yt3Gy4QsNzrfj5Z8XHtLJPhMOBYMsaaKDKtUnuL7rDX7G/H5z
         qVqlU8Eo+9kIDtTAVaW8ZrTC4UvfyQSnX0G+r5Bi8r9jqmTqfr8x3FYnoknN8jKHg3+D
         M+7wHQbQj/pnOsQ8NxEomOwXydefU+OoV8lnH4D5ILzpoVTgpdvKHEuSNjSH7W6KMHC0
         f8GQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2LgyWxauq+CDllExAtDFaY3IZvrTGsVhRFsDQJrOfY8li07Dm8HexdPV6M/p68zqgpubIf7xG9zlc@vger.kernel.org
X-Gm-Message-State: AOJu0Yyz9XfFVMgK9cgKRq76A0HLkc6CFK89fmWV6FLoIpidHShIYFQC
	v7LnIuLeaBff5MIVH1Sfn55Nd6nsUNLtBLKr7ntcrPXdUPOVUxlT6u01+PhQv+8=
X-Gm-Gg: ASbGncvgLxxn700XSyCd/UZ3cVsO3iFjJNxQZ2f5JUPL0zNtRMgfKpNtsmy7T9k1/eS
	DU6yDRvFRZBa8Uczwg9QCF7yriQ9PFMTG0IRMFGEqBthEjuN6gI5/5E/Sp4csx6RXbaXbxn9e5H
	roff8VpHo4L4pfu0fhQS8elE/sVLSFd0XjwUeJhySieUQhvMQxlY8nrsGBKtZtJoV0rIzGvp8HJ
	ePZ3myU0bL1DjlvNEuoYE8gSmWHcdm2pAeTs51JKl4j1L9DB7uiHURtQ7qJ6dwUMfjIjIRAJxg0
	h+t91JBkVXad9QTVUzCejcofy9vTUlibXbdr2HhACeoBIlmHJKD0XvPtVxr8aDHVgQhK6LYLmK1
	Fp5cH/Q==
X-Google-Smtp-Source: AGHT+IHPnUJZKu1uWSc7Yc7UKfpd8ifRHajKhLkpvor4eEcE4Bfo34C+hxP3Ocv6ugZpsKzWHcoOtQ==
X-Received: by 2002:a05:6000:1ac5:b0:390:f0ff:2c11 with SMTP id ffacd0b85a97d-3a074e146c6mr2005656f8f.2.1745594256896;
        Fri, 25 Apr 2025 08:17:36 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073ccf44csm2684738f8f.60.2025.04.25.08.17.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 08:17:36 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Fri, 25 Apr 2025 16:17:33 +0100
Subject: [PATCH v2 1/2] dt-bindings: media: qcom,x1e80100-camss: Fixup
 csiphy supply names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-b4-media-committers-25-04-25-camss-supplies-v2-1-8c12450b2934@linaro.org>
References: <20250425-b4-media-committers-25-04-25-camss-supplies-v2-0-8c12450b2934@linaro.org>
In-Reply-To: <20250425-b4-media-committers-25-04-25-camss-supplies-v2-0-8c12450b2934@linaro.org>
To: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dmitry.baryshkov@oss.qualcomm.com, loic.poulain@oss.qualcomm.com, 
 vladimir.zapolskiy@linaro.org, krzk@kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3102;
 i=bryan.odonoghue@linaro.org; h=from:subject:message-id;
 bh=wcxEeIG/nILR9pbCjMso9yZS3cwzR9yIu9oGH3Xl5mg=;
 b=owEBbQKS/ZANAwAIASJxO7Ohjcg6AcsmYgBoC6eOVgILuVdiW/rdoXVAPa8Hid0qCNNOb4rf+
 1EI7p1ll32JAjMEAAEIAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCaAunjgAKCRAicTuzoY3I
 OinCEAC22rg67uCiMIQHrV8hUxpc7DcmXiQNrFo637kHhmvfllAYEYnf6g+OuEWiSOWMOUB/PQs
 SvJQKuzX950QQPkQOPOOCiA1QZvUnSz94suaiV5ZvSK7vI2/1GV54Zm+7fjDo6f2vnnCUrutuD2
 Fnhj+/aDuV8k8cZ26YTzOgziLzt9FuS848s5mGJbO+rG0LsMHtJIYg+ylY8eVeplVSBetUiVNC0
 y/ywjwMZSvGTRci2S9FqXpP7WlRJX92Agbun0OsEsQ+y3gJmIdK2QaLXcG1S/4hGRiyuUhOgMtj
 aEsBWtHqY61PN6BXlBM3aNgZcRvYs3kjcvefNj6YOaV58u6MUdRZIyXR9VgY+sK6UzIv5r4qACc
 SKAVcUEP2pA2TsT7pi/cj2tZ8iyyyZmtbKP8cMCQ4Nm8+ve6fgRgrMO20rRLdrYDmR9HC0L2VTF
 Hy20I9ahNKbD5UysFuRkfOWju6VwJwPzgxe28tVuZyGVOzCMOd5tFbQHiR94no1paJT4vqWX8fE
 XCmGrrpNhudwRWtLtTrhCRm2Qomc9zu0Ndmx6adeamn8UDisPE0hTerHhTxeSx2S5PyCnmcNdVe
 bLt87HwR5yYDYpclg/yZOXAE/rky4Ff+DYbxLcMacOQkAJeLEv8UHlXvU2DwmikwLKC4g4xd0Nm
 Oe1u2wN9R8wy+/Q==
X-Developer-Key: i=bryan.odonoghue@linaro.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A

Declare a CSIPHY regulator pair 0p8 and 1p2 for each CSIPHY.

Name the inputs based on the voltage so as to have a consistent naming of
these rails across SoCs and PCBs.

There are no upstream users of this yaml definition yet so this change is
safe to make.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 .../bindings/media/qcom,x1e80100-camss.yaml        | 52 +++++++++++++++++-----
 1 file changed, 40 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
index 113565cf2a991a8dcbc20889090e177e8bcadaac..dc7c1a9394c3b547f5e0885bf501ed42dfbeba88 100644
--- a/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,x1e80100-camss.yaml
@@ -118,14 +118,6 @@ properties:
       - const: ife1
       - const: top
 
-  vdd-csiphy-0p8-supply:
-    description:
-      Phandle to a 0.8V regulator supply to a PHY.
-
-  vdd-csiphy-1p2-supply:
-    description:
-      Phandle to 1.8V regulator supply to a PHY.
-
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
@@ -157,6 +149,30 @@ properties:
               - clock-lanes
               - data-lanes
 
+  vdd-csiphy0-0p8-supply:
+    description: Phandle to a 0.8V regulator supply to csiphy0.
+
+  vdd-csiphy0-1p2-supply:
+    description: Phandle to a 1.2V regulator supply to csiphy0.
+
+  vdd-csiphy1-0p8-supply:
+    description: Phandle to a 0.8V regulator supply to csiphy1.
+
+  vdd-csiphy1-1p2-supply:
+    description: Phandle to a 1.2V regulator supply to csiphy1.
+
+  vdd-csiphy2-0p8-supply:
+    description: Phandle to a 0.8V regulator supply to csiphy2.
+
+  vdd-csiphy2-1p2-supply:
+    description: Phandle to a 1.2V regulator supply to csiphy2.
+
+  vdd-csiphy4-0p8-supply:
+    description: Phandle to a 0.8V regulator supply to csiphy4.
+
+  vdd-csiphy4-1p2-supply:
+    description: Phandle to a 1.2V regulator supply to csiphy4.
+
 required:
   - compatible
   - reg
@@ -170,10 +186,22 @@ required:
   - iommus
   - power-domains
   - power-domain-names
-  - vdd-csiphy-0p8-supply
-  - vdd-csiphy-1p2-supply
   - ports
 
+anyOf:
+  - required:
+      - vdd-csiphy0-0p8-supply
+      - vdd-csiphy0-1p2-supply
+  - required:
+      - vdd-csiphy1-0p8-supply
+      - vdd-csiphy1-1p2-supply
+  - required:
+      - vdd-csiphy2-0p8-supply
+      - vdd-csiphy2-1p2-supply
+  - required:
+      - vdd-csiphy4-0p8-supply
+      - vdd-csiphy4-1p2-supply
+
 additionalProperties: false
 
 examples:
@@ -347,8 +375,8 @@ examples:
                                  "ife1",
                                  "top";
 
-            vdd-csiphy-0p8-supply = <&csiphy_0p8_supply>;
-            vdd-csiphy-1p2-supply = <&csiphy_1p2_supply>;
+            vdd-csiphy0-0p8-supply = <&csiphy_0p8_supply>;
+            vdd-csiphy0-1p2-supply = <&csiphy_1p2_supply>;
 
             ports {
                 #address-cells = <1>;

-- 
2.49.0


