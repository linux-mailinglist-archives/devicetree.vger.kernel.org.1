Return-Path: <devicetree+bounces-142294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E817A24DD6
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 13:16:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 50AFC3A525A
	for <lists+devicetree@lfdr.de>; Sun,  2 Feb 2025 12:16:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AF481D86C0;
	Sun,  2 Feb 2025 12:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JL4GkBxB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3E21D798E
	for <devicetree@vger.kernel.org>; Sun,  2 Feb 2025 12:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738498569; cv=none; b=iBruuoGTHSxF/8uAJITfgs4B8y7duKKNBQXhCkB4w0nMndkeu8CNvOhlLLmMd0cR+huE/g+2uVaqqzeQIJnuTj8nopQpjNuaVR/Rs8k3qpynTa33uda7C4POELOAEdC+jaUNs0mSUr3Q1l5s6KVXKHDEsPrchG1xdws3Rjo+6yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738498569; c=relaxed/simple;
	bh=/d/geU3OxC4Nkibrq9A3Ew2gwBiXmZo2CHTH+6Gy0Vc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EG4jkhCu3v7FMuH144sfJG+mh7yFdo37nZpE8cnp3fResEO3qtqrdKFSwDLht/9WDd+DLhYFTbDBdzlL8+om/bi063VsUAYCI266kp3/ch7iN8cdyd7m5Y+5tIuO4tri0960kvHQ9ndV5lkwrpadzawcwVd1SG/reSLsv5yhWJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JL4GkBxB; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5401c52000fso3356729e87.2
        for <devicetree@vger.kernel.org>; Sun, 02 Feb 2025 04:16:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738498566; x=1739103366; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Dk7ljpeNS9WkTUfxOFg/JBajDxdcbPw39k3Tq9ImKI=;
        b=JL4GkBxBbSlI0/wHjLKBhSuaSJ7t9Q5DiBXxkc2u7JVhuPzfIJmz+/8PyI8M9iPwmw
         mONIP0VSf14x83Fa0R+DdYEtJjFgaXA79df7H4YznQbYSNhFy6QUBzVNQ/GWuIdMBJjy
         Lbly12zucWNvw46adQ8K1j8i/GgK+It/NmHP53rNrno1VwHFbynshx5hmUq8ejmzTj9v
         F1qVnuLWZCEcU2LyXAJWgIb3DEHNPwNNHt/nWF3NCNyEyeWwKV1whoMLY8Do+16UBgIA
         GYrj/9yRNeX52FeeXe3/Pu9f6c4BLj2cJvmoD/VD1wXTHToADggvtH4uMBOMkDlrqeUf
         EukA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738498566; x=1739103366;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Dk7ljpeNS9WkTUfxOFg/JBajDxdcbPw39k3Tq9ImKI=;
        b=rDNgBjV7cejpED7q7ygCU1l4QyzBNxkF/NYyb7a9F7bV9LCLllBC59X8ciKKK8IpuA
         Q90bBOWG27v2w15kCCCc9YyCdQDsjva63Wv0UtZ+S1OFo3E8/vEL9/sp91/DC50yg24y
         pe0yj+K9KFguolyA5qE3VExmQyzjNrfGKBZPHz79jWPML878qdYrKoaUgWAYNLsOhiI9
         HIFNVra6K3BUS4DXbdsVm2YUyUd5pnKluNcihFuI4vWFfNEaO6I/ePQfYPn3IUzj+OLf
         uado8/Z9jOcbMUmg3eBcLLDQ/mDcNNqRn+g8jjmNAO4/omTHvpivTShe3I14wWEaMUgR
         MXrQ==
X-Forwarded-Encrypted: i=1; AJvYcCWczPMYTeK7qR6xWvKNcsnZnSN1jvp13qCaTeQ3nZRFpARxtZOyhGup69ec8Zvd6N3O61yIwYp9S6T+@vger.kernel.org
X-Gm-Message-State: AOJu0Yzex5iLT2P1csmkKln1n69CDDx4SMhBqDIdC4z/eLug8iCDD2mQ
	N2HEZVp6k8mxvgdDVEqdMbCG+5x5EFMDk/6+xm5XUy/KYx/iFZvkaNbowcUWyn8=
X-Gm-Gg: ASbGncuok0c0U1a3fw9EYChX1Xub6bvQ8rURhDbfZDXgE8TbOpYQ5czw7aQZgc5iW6t
	HFbUJOBgkNbASLSQBhBZMG2atXNxBXPogEkXP7yEN5MP/4GYrIfDv/p+OtVuji+dArAxsU9EhjF
	VfNpMKah11/x4Ebr88BIi08Ihq8AKcuhBE/DO59S/3zSCSG0KYmoLTESn2ZyL6EGh5tTRdm5xy4
	h/xv4RcwJgA2rGhjSc8WfbW+pZtFCwdZH2FDd/iezADR9Kdjg/G1p3M/X2XnqfgWUrpeVPTHJ9Z
	JkT6wbK6r5xG4eRBi+MWBPg=
X-Google-Smtp-Source: AGHT+IGP98WumGAvva+L5oENy7ZtjMAo+pqO/eBrk6bMfEKIlWE1R/0IRGd/QpefZzWafsWgZy/y2w==
X-Received: by 2002:a05:6512:32c3:b0:541:1c49:26a with SMTP id 2adb3069b0e04-543e4c41038mr6109076e87.43.1738498566072;
        Sun, 02 Feb 2025 04:16:06 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543ebeb0a4esm950663e87.114.2025.02.02.04.16.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Feb 2025 04:16:04 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 02 Feb 2025 14:15:57 +0200
Subject: [PATCH v3 1/6] dt-bindings: net: bluetooth: qualcomm: document
 WCN3950
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250202-rb1-bt-v3-1-6797a4467ced@linaro.org>
References: <20250202-rb1-bt-v3-0-6797a4467ced@linaro.org>
In-Reply-To: <20250202-rb1-bt-v3-0-6797a4467ced@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1201;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=/d/geU3OxC4Nkibrq9A3Ew2gwBiXmZo2CHTH+6Gy0Vc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnn2IBFNJQoyc6Q4TD+Kypa+h8oMgJ1mr88BTN7
 iUCRw7nItiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ59iAQAKCRCLPIo+Aiko
 1dQvCACSiRQJBXKmOxljdACfeKHT2m75Y5VpbZRWKMkcI4H0buAMvopgfIgG9wPFTf/dek+VG6p
 lqKqBfxIV+KU99Dcb7wxL0JW5UBsMx23ADuVZLjUmdCSJq+tSakpNlbdkmaeXyV/PNUD/ULwhyZ
 MGX56kw39F9vBS3TgKHbv7ncPOqS1mNm006aKml/MWzxKqFLXt6mlofqI7V/K82io+gfHeSK9am
 Rnln3hHL6poko2ReUQcMCvpYBAcF7RmwaYk9th1OWVNRCsz9QpGgjdzztVW0T5JFUbjNWxd5VvI
 hen+Oa3myvAKVNmTcGGAZt6U1MMoI4lAB/6hVDsISJPP0Mgz
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

WCN3950 is another member of the WiFi/BT WCN39xx family of the chips. It
requires different firmware, so document it as a new compat string.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index a72152f7e29b490003114dae1e36df85cba384df..6353a336f382e4dd689d1f50a624079aa83b2ffa 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -19,6 +19,7 @@ properties:
       - qcom,qca2066-bt
       - qcom,qca6174-bt
       - qcom,qca9377-bt
+      - qcom,wcn3950-bt
       - qcom,wcn3988-bt
       - qcom,wcn3990-bt
       - qcom,wcn3991-bt
@@ -138,6 +139,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,wcn3950-bt
               - qcom,wcn3988-bt
               - qcom,wcn3990-bt
               - qcom,wcn3991-bt

-- 
2.39.5


