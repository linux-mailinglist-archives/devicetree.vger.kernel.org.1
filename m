Return-Path: <devicetree+bounces-21358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F8B80356A
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 14:50:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F105280F87
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 13:50:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DE6C25574;
	Mon,  4 Dec 2023 13:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ANnDC1nW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A718E5
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 05:50:41 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-40b4746ae3bso40160345e9.0
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 05:50:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701697840; x=1702302640; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dpmzJi4akvzbpZuzwJILp8O80QWxKU2Dnd8Kt1I41OA=;
        b=ANnDC1nWjd3YGlCq0+bBCxFY0fJzGjzxvYfO3exmHV9Re+WsI8LmE5LVUClgkVDNDx
         me0p1saeLWVhjewsw7DeOKohvtkf0S3ipnMRZ2W8kVGrJVFCVavrNCYXIXykQ7avsKXj
         7ZBXQZEwlF0v6DKnnoD6VnmgQvDiRzPYy0gkXNecUkTGnXchpDN+Im66LILZgzNemsH9
         RcZtYGKwvNIThaEe6COP2iwWEh58Zw6cd1uqhQho1A3jNTqvRVlXSx+oIWSesWZaytMp
         Bkrem3i199Y5MLYLzOuEnvsdx0tVFfdli2jF9/BXBq33LwgAYPAbze76VwZsS78CYGTg
         g/0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701697840; x=1702302640;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dpmzJi4akvzbpZuzwJILp8O80QWxKU2Dnd8Kt1I41OA=;
        b=l38xxFb+8A/eHn+9YznwVwJnNgnyS7znFdoyhUE3QnMTnSLlwpOuaeyH4bzRmF60gN
         Q4yC14Wioto/QRlSwx1CbkjTC0P4PQUf+e+w9emEXLeXg3iqZLmMKqZjCvrOWfMQ1iMp
         i5/31jZR2u9FSnf+PceclJtSUhhljASdaLPGnMJaAjqOOYvWoPkuZW1NDg9q64kcYjzL
         /28QS/UVQTY5GRxpURdJVWw8eD9VguXcLE9MYWEz5n7UOol8CukY5U8hodQv3nOd9QH2
         fk1M7wpoCSmyqwFdQHXbHFTM2YcnhkNUMbfLmhM5UmG9JjsQn4NA+Zdkdw/9iUYxrLxn
         XEig==
X-Gm-Message-State: AOJu0YxttpokLOI+neekug5KKyV+67gqLXVjkjg8Hi95pxy/bVO0q/U1
	3ZWkucxxTGikuU+axACHYJE2Vw==
X-Google-Smtp-Source: AGHT+IHnJHIBosD9vpCmfDZQxFbmh8mjVp6z59RUAq7uA8PJwYW35Q4MLv9j09YEiHnhm4JON9LRJQ==
X-Received: by 2002:a1c:4b0b:0:b0:40b:5e21:cc51 with SMTP id y11-20020a1c4b0b000000b0040b5e21cc51mr2266833wma.124.1701697839976;
        Mon, 04 Dec 2023 05:50:39 -0800 (PST)
Received: from [127.0.1.1] ([82.77.85.67])
        by smtp.gmail.com with ESMTPSA id w12-20020a5d680c000000b003333e09990dsm5908553wru.8.2023.12.04.05.50.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 05:50:39 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 04 Dec 2023 15:50:27 +0200
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add
 X1E80100 USB PHY binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v2-1-1a3e1d98564e@linaro.org>
References: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v2-0-1a3e1d98564e@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v2-0-1a3e1d98564e@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1362; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Xs+AR9omw6vA45imh5zdaLfjBg4ctH1dPKx1UPB8WBA=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlbdkqXuf2yH7Si9IzdLl7nAlCsTVPqUOgONQDe
 zxd0mNfbQeJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZW3ZKgAKCRAbX0TJAJUV
 VprdD/0YS+qbNkPE6ijUxkEeq9YCScrmkW2nw1o4gD7t8tFKS+2DDYLVP1LBHBKYGAuL2A6bT9V
 Ic5+d2EiBboV08hrOGrnRzKLpRgZ0WyHnwrJML0Xw+Sb1us1qeURbQvmQe7n9XmyzVX/2pasjzB
 I8dvFoiaJ0cs1Mj9djkV8nOmcpUBxtkT81Yt6L2LFuuIQJEf1sNXVoX8oIHpYNXJCRNGAOCKP3s
 FHXW6mMSDKpmnt5JTP+4S7Y7UBZvjpw6Py4Z5FUXtM1GEBd/YO4KBBZrVlIHu8nUdDDKE6sXy6s
 vhZ6v24O4mCUTDz3WM5yvL5+iF56t/v26dwnk0E7+5A6oHugNUmB656nOMqiQOZNP5CEROUSdx1
 w+nJgqw8fvGpuSAPll+mKpWDsFnhmhEVTBSh/RE1LsGaTy0QUrTm3E44TSyymNcNb8tALh8ndoB
 eWPysnieFWBx9HKOr5Of2BCNEaafmq4MscAwcIxrYnQLeiCc8hdliybhHAi0yqDWl2GAdp8UAPU
 LK6N2Jr3l19HVRq1P592faaiiSqwN1AdHmFAxEeSfoWp89fB3oKplDeGCk0ldkdF+WwEab9Ai9m
 ht/IUnvaREszdFdIlC+GqvdfvPO8qeA94j/S9jymdSqV7X+6HyzWhSNmPjXNnYHavUYedWmwQTb
 jGcLj9ufcT/lr1A==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add compatible string for Qualcomm QMP Super Speed (SS) UNI PHY found
in X1E80100.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 57702f7f2a46..15d82c67f157 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -32,6 +32,7 @@ properties:
       - qcom,sm8150-qmp-usb3-uni-phy
       - qcom,sm8250-qmp-usb3-uni-phy
       - qcom,sm8350-qmp-usb3-uni-phy
+      - qcom,x1e80100-qmp-usb3-uni-phy
 
 
   reg:
@@ -135,6 +136,7 @@ allOf:
               - qcom,sm8150-qmp-usb3-uni-phy
               - qcom,sm8250-qmp-usb3-uni-phy
               - qcom,sm8350-qmp-usb3-uni-phy
+              - qcom,x1e80100-qmp-usb3-uni-phy
     then:
       properties:
         clocks:
@@ -171,6 +173,7 @@ allOf:
             enum:
               - qcom,sa8775p-qmp-usb3-uni-phy
               - qcom,sc8280xp-qmp-usb3-uni-phy
+              - qcom,x1e80100-qmp-usb3-uni-phy
     then:
       required:
         - power-domains

-- 
2.34.1


