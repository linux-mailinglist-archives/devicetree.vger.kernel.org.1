Return-Path: <devicetree+bounces-11660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C80837D64F1
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:25:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 709A6B20FCA
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F68B1CA8F;
	Wed, 25 Oct 2023 08:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tQ3kQywD"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E5E1BDC4
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:24:53 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40DA5136
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:24:51 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4083f61322fso42500145e9.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698222289; x=1698827089; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jGKLjx3luJGU+DnwzUn3Qi9imxdPkVHML+rqCOmAtck=;
        b=tQ3kQywDmMEZL7UJ5syurMPEeRrDE+NWi8oqlX7c24LwS84V8Rk994rPCXiq+wZd//
         xr96eaJvP+DJ9BNz/oQ1wA9UJ2OjUwCFN98V4U2VPYH3T2gzgVbIt2xB0pG0uoW2wjRR
         mSVp2nhd8DpMJr7tijgQo9nouUon6lCQNpt7eEVV9qZHcxqrZcQLPye7W3+6wljHHELY
         TezKD9g9+tg3SYXd2h+owq7gE1/NzcPjEwgrekKlwOMnDlsEKOH8+TOjBjF3mjwwAFye
         51CAYOJnjW3mmyHegM5JXZ7T7rebFObfvevgVFOitmc9uyvzsv4iKGKj6ju9Yk1XY9Ct
         u+oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698222289; x=1698827089;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jGKLjx3luJGU+DnwzUn3Qi9imxdPkVHML+rqCOmAtck=;
        b=gcoVzqWba99e9mM+Mzqa81OBdYR+pZ81pVIIgI4KSmgE1GOzL/M27ax8DywhGJIeNm
         mzTEQO8W9ajBJITdOdjOJ0Iy319TQtq9jiPs+ATafQwJnFjI5Dp5DnifRmSsIvNRCBWv
         i9c46BVvJxA0gExTE3YjCEMzGsCNEassIqC8odm2rwIywBQcB3miL5G9MMmz3yrNTiMn
         1unsxswuns3ioMWOEJJeFj1m0tSsc9e3TKB8sGnPsmhODypO+Nof5FuvEL0r/shBpIZU
         piF8Wi//82tg2sWmexUxgt6PlQ9PqcPkyuTKU6TyArZ5YUJYuZXaou6dUgt+ZgrlAVFC
         8Pfw==
X-Gm-Message-State: AOJu0YzrITa0rYTn1DkC4FaHMsgnMk8WzP1RJQB+WKHuFdJCi46gL9wU
	Quo/W5nzA3SW9R6zq54fErghUw==
X-Google-Smtp-Source: AGHT+IF1fnDU4K0NmB//9MEY/ePELmj+DoS0CnDFVDtZz+q/j1bGR7szThAcmbH8mcjSuYmmk78RQg==
X-Received: by 2002:a05:600c:4f12:b0:408:3696:3d51 with SMTP id l18-20020a05600c4f1200b0040836963d51mr11470050wmq.4.1698222289593;
        Wed, 25 Oct 2023 01:24:49 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id g38-20020a05600c4ca600b004078d71be9csm18470126wmp.13.2023.10.25.01.24.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 01:24:49 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 10:24:46 +0200
Subject: [PATCH v2] dt-bindings: thermal: qcom-tsens: document the SM8650
 Temperature Sensor
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-bindings-tsens-v2-1-5add2ac04943@linaro.org>
X-B4-Tracking: v=1; b=H4sIAM3QOGUC/43NTQ6CMBCG4auYrh3DFCjgynsYFvwMMIm0pFOJh
 nB3K/EALt9v8T2bEvJMoq6nTXlaWdjZGPp8Ut3U2JGA+9hKJzrFBA0Et3AHMpcmT+C5SPDUzNC
 y7dmOAkHICmRUZGWVpibTpOLV4mng18Hc69gTS3D+fagrftcfoPP/gBUBIamGvseiRURze7Btv
 Ls4P6p63/cPJRmIatkAAAA=
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Amit Kucheria <amitk@kernel.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1381;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=9N+6dBAkFtncfZi6ZHXGSHcpyq1NPV2HQpTLMM/rMdA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlONDQP/i/tc8pCSEDocvWnLw9xNMOPGrYNntZc3ud
 igAfrM+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjQ0AAKCRB33NvayMhJ0acLD/
 9QT27PstMbXQR2gObwx92Dj1/gj3KwZYmClibXzQzQQzgUdgXCp9m/p0QEfHlqW3hhb946wdWWDQw4
 D03iQqBfbultCVlXI0gYt+JSujdCZ55c52+Kwgx/TrmeeGGArTnMqr3PHxyEcho9E2gm3MFQPn6s59
 5ySiCZI3Hst6Bkp1CckuVNibguCtX6W6mN+zuk/MjKXRpHtJSFkIAvpU1hCZ2iBXM9mGqKbHMQ2B3G
 zZhVqXQhCngh/Vmn0lF1qcp7AFCyLiJcSAurukoA98hKDpJxc8HCdel1VzjfElibduwzJVJVpmel0p
 0+118yjMbl7IuH6rw32E6nFGBodjMsz7Q2NCWDy9PKYbwmoPfx67ugxWiNuAoYvhlGL/BsKL7mwX0i
 S3O4Etlf49mcPkruOA/QbhRxlrBDD9sF2USk2/W72THsSkVDa4oQSrPbmaoOjCBqIECTbSubbwPceO
 iVYtRRF5+U56mjD4T9B+ONbvNLAGU8qGuBbMjQ+xvQXZtlnaHzuad3ByZ1ocX9vBsxdIrkQdl8BYtP
 VFC5lz6rG0s6riqRlHKqjwR7WPYCeb2bxemmq3cPXLuEOiHVe1SrB4vxYSkkpo6YGTn496yOJ41x1D
 ucMbdX+tXb0ZCipKRHOj5/ti31oJDJ7nVmI/U9xgDCN58PV5sCAzu5vcC8cA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the Temperature Sensor (TSENS) on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
---
Changes in v2:
- Fixed typo in subject
- Link to v1: https://lore.kernel.org/r/20231025-topic-sm8650-upstream-bindings-tsens-v1-1-09fdd17b1116@linaro.org
---
 Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
index 437b74732886..99d9c526c0b6 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-tsens.yaml
@@ -66,6 +66,7 @@ properties:
               - qcom,sm8350-tsens
               - qcom,sm8450-tsens
               - qcom,sm8550-tsens
+              - qcom,sm8650-tsens
           - const: qcom,tsens-v2
 
       - description: v2 of TSENS with combined interrupt

---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-bindings-tsens-4e748933642e

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


