Return-Path: <devicetree+bounces-112571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D4D9A2BFB
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 20:18:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A90BE1C2686A
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 18:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44A771DEFE1;
	Thu, 17 Oct 2024 18:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ja5jutce"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00BBE1E0483
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 18:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729189010; cv=none; b=P0rIegQzhUwTUYlwz18MJf4QY+OIEi6xoF818yT+9hhKKtyhx3eKpmT5TzHuoEy7owNbco+Gue/kyk2phHnOZ+3yvIPxfWuRhtGfDO/eBD7NkSeZlM1KOHtVsXnvKQ+LCX89NwnAt5+Qx5/SebIWQZpuivNiBHz/52qqPGQdCTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729189010; c=relaxed/simple;
	bh=ZeRMjlnVRmUDMpk2EIrTz9d7+YE0KuktlP3WHGpYyNQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=m1w9+wM/cS+cye3fPISejhSUWMtYptmLohzAWETCA8kQksVNO36ae10D1ZiNBm36kiQoKRKy9874cViweJqQmmNStDA+KeR5sZPSB2xm8shQPWqRRwzFuCKarEGWeqoJC3b9KLCNeBbvlLvrpyV2tKuFS8kGRyE4xmQ2xN8C21w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ja5jutce; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-539fbe22ac0so1573667e87.2
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 11:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729189002; x=1729793802; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/T7dWrrKHgZSyTLwnbzb1jxT+fEL4K0nUEDN61fcwoA=;
        b=Ja5jutce16WsxffkFyMmT2s1q8Zm3hD1juZWWq5SfK2Y9bEKGgwWxpIHw+RHQvsxn6
         b/6/cDVI8qyw3woQMwYBy/0RA9+a+N3rUF1pl0vA2lBmxt6AFA8eY5WwPdaMAM8q7Egv
         32WZAwRJsofB/8ErCVPCjFynxwozuifVs5Uj+bjj77g0wv8y5L7Vgr6XpBqkI49d/jPI
         419OI122sfaBEzQ8LZtNoshlS22TaxUFngoHKClQy0Sc/rBWOFCpFHRQqOc3MkCBdYGQ
         qNpig32qHqmraWSBgk0+tQrONs69MsFncK671/k9a7gPRfQGEzEVOduVeOsqBC1HEmKT
         v93Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729189002; x=1729793802;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/T7dWrrKHgZSyTLwnbzb1jxT+fEL4K0nUEDN61fcwoA=;
        b=R1pkWR8ZmVwiYs2f33rZo4Nc0a3UCt6pnVjjxYzHd2KGs1RfWNejv56l+Ru9ujh+3F
         824cgutvzzsZ3jG0N4xUQ/zdykrFh6tvwnDLXA4zDwBTFvfzO64VFJzFW2mXb73J9A5q
         G37hgkavhC25e7rEi8UW/i5K7xek04Eewm5ZdJN+XTATDaXAaLNqKdEKG/IfCmfg8RM6
         9MORL/zb5QAEzMA3TPJpejYDRdMhDAdN18gpk+tVPq2l4VIPbSsvOB6HGmBXqWwFp3fm
         3vZlQNLhRGeGsv7z/Z0fC0f/tTTqmYEMjDuvLsIJnEJL6f6izNU/KvxKaSndkjeSAkb4
         O3Jw==
X-Forwarded-Encrypted: i=1; AJvYcCXvlzFt/P8FB2xcIleBf015nxTyzNuJ+GVKZWIDhfQrmRVVvuAKq6hdoiezO05JnIrcMorZs/rb/01N@vger.kernel.org
X-Gm-Message-State: AOJu0YxfFTcnWuhQPcX040Lej84A0Z9M4T+iGSIvvZkJPBvJVyQlNDcr
	MrepxTbwN6Hz1t3OGe51bkfRo+hacbgWw4CprTB1x5s46BFTEf8vs1pTQDIMVg8=
X-Google-Smtp-Source: AGHT+IHAsmORAs9oNS+DfVSc3081ySAtsUrU2wNzoGE/lFlV3it3q1KaF5n6uqGqzYmopAsRyZtklQ==
X-Received: by 2002:a05:6512:3091:b0:539:f65b:401 with SMTP id 2adb3069b0e04-53a03f96b1dmr5898841e87.57.1729189002105;
        Thu, 17 Oct 2024 11:16:42 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539fffb1f81sm834571e87.80.2024.10.17.11.16.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 11:16:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 17 Oct 2024 21:16:38 +0300
Subject: [PATCH] dt-bindings: usb: qcom,dwc3: Add SAR2130P compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241017-sar2130p-usb-v1-1-21e01264b70e@linaro.org>
X-B4-Tracking: v=1; b=H4sIAIVUEWcC/x3MMQqAMAxA0atIZgNNFUWvIg61jZpFS4MiSO9uc
 XzD/y8oJ2GFsXoh8S0q51FAdQV+d8fGKKEYrLEtGepRXbLUmIiXLmh48D7w2lHooCQx8SrPv5v
 mnD8cO3h6XgAAAA==
X-Change-ID: 20241017-sar2130p-usb-0e9ccdef61d6
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1274;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=ZeRMjlnVRmUDMpk2EIrTz9d7+YE0KuktlP3WHGpYyNQ=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnEVSHTuXZ7hxnJUrblpVRDQMedes6L+ioPa2bT
 AVnUOSvDMWJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxFUhwAKCRAU23LtvoBl
 uBqMD/4i8l1zbQwsVc65HTzYq+0wYy1q/PtfjhAlG9fyT/O0jkCSdg6Xhrg4n4u1ZaBoApfgbRt
 Y/Z4yQj//Imt4JTwWg8npog6Hq8P4d8iAdTZMmAMNIxwo5cOnzoOlnoSuRRkT6WXs2zf1lZsap2
 8MHBVW+OeeSZMqNEu+AN3iiH9TMyFCzv4KnvKjd8nwyd3l/HkUHxEuxTIdGa12XhreZ2yKGITdE
 eP/rkPXh5HC3AN6S4IAtuPOlIHBJPFsFBcNwSO+bLtQkSHQQ4N5acQEJal43ZaWTE+cJ6EmqYRV
 YmBOqiLoGPzLY2+UP5wqHmHoG7b9zkgGr9DWhQliluw6J7sYEMpMDo2K12Pd/o2amf/7LDBuh8t
 4cdbMjN/N1SjPL0ks1jM7mVCt9NIq7twsY+Ak28cZoF/dYPuORf1nBOK32XNuRC6qeAT16Seh+p
 Ph5IPVJR6FijuB3dpntB7iLR7H3Tjm2Glf9VvsLR+t6kU/NX29ZEb2fOGnvL5v5pv1xh+Dqwpqu
 9U+KQqHq/7Urw5NQzfKHquq7rMGKpCzt/gGfS/zbrc4xqpOk/EUc5QRbCyQloIg8v8YQz9NMNtU
 mIcjoMPiAecH5Ihwa/2+qSqbV3cWUnPWnEEXeOhrwIQFouF5TWUi8DjX5edWgLWdm0I6ucT/adE
 gzVbCmKWhXBJwyQ==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Document compatible for the Synopsys DWC3 USB Controller on SAR2130P
platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/usb/qcom,dwc3.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
index f7be056419307069c67b8f2d53bc88417a19b9ce..935e204b607bbd3bc9bfbdcd03519202197c9eb4 100644
--- a/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml
@@ -29,6 +29,7 @@ properties:
           - qcom,qcs8300-dwc3
           - qcom,qdu1000-dwc3
           - qcom,sa8775p-dwc3
+          - qcom,sar2130p-dwc3
           - qcom,sc7180-dwc3
           - qcom,sc7280-dwc3
           - qcom,sc8180x-dwc3
@@ -340,6 +341,7 @@ allOf:
           contains:
             enum:
               - qcom,qcm2290-dwc3
+              - qcom,sar2130p-dwc3
               - qcom,sc8180x-dwc3
               - qcom,sc8180x-dwc3-mp
               - qcom,sm6115-dwc3

---
base-commit: 7df1e7189cecb6965ce672e820a5ec6cf499b65b
change-id: 20241017-sar2130p-usb-0e9ccdef61d6

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


