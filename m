Return-Path: <devicetree+bounces-20126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD7D7FDE42
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 18:23:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7CB301C20BE2
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 17:23:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7F4C481C1;
	Wed, 29 Nov 2023 17:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r+B9JsFd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49BBDD4A
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 09:23:02 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2c997447ff9so752361fa.0
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 09:23:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701278580; x=1701883380; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eXGa7bSQ7Dh/xlQXLCiIqwu0jh+a/kOUDdTadTRA+es=;
        b=r+B9JsFdYGBjOCf8BqSiXLTtenNm/p1/pq1JZUQgBpOwB1/apGPJ329/w1QSa7VXSr
         p3T6bobV+6AlysWg1j7c4SN9g4yyIvfTQFvtf6MS/qRQWuvqPEb+g3a4nim4CURRjT9h
         A6reZzYWTBgocERYDzWWuEXrH+GfvkczuTI0vAaQncmSTtiaX3ifYrqxCqL1SeOha9U6
         1/25W5diffZtAWUDL3L9dVQVSQ4GIKSK9VbbwdDSs4PgUw3c2znFNwBmGsAOTITONIkG
         W+ZSh0YZG/9QhFognNoOWMwFdPwxrAzwNzAk51gHfqL071W9E0MiKuqTUrk1SgjFMKwy
         8tSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701278580; x=1701883380;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eXGa7bSQ7Dh/xlQXLCiIqwu0jh+a/kOUDdTadTRA+es=;
        b=k/wv1fvjsyQrn5rxikIDfcGuJaUio6pt/BcBx7GA9DI9coDW0L1OF/8sRT+U+WFNvE
         PwymBIKz8iqp8GzsvUVEWr1bXJZFDFzXp5roZP1k9QR80eWzSeY7ar7ATqxWqgPUoHd1
         rPz7cnksKmZ6VQmIGktbEVb8KSwYJP9Su7BRfHPO3KJjLF3w6UAJIJS8Afy3KFSpdlT3
         CUSuAmQEyJMO1AA2z8FXm63O4jYzPz0CCSld6IEaqq/V16Rh835hfGOaECFl8sghEnz+
         GTtJvQevK4SQuJviTlfNfyvloLhOXYVhbkp2/PFOkov41c4fk8jD6Fq3o+hiOgidyug9
         /0lQ==
X-Gm-Message-State: AOJu0Yyicoxtbt3Fx1Ek7X0v3FSpxdLCi08ItdROPKWJN3W5A5uD7Wb+
	rpyNAt73yFGUvpnNQ51dB5fbxw==
X-Google-Smtp-Source: AGHT+IER6Cl/d4MD6OqgkdQAg6vEXVoVK4JZglhzHg1miJp531LLd3j1a3CQTenCK62R+I3/U7Wsrg==
X-Received: by 2002:a2e:9f4f:0:b0:2c9:c348:5260 with SMTP id v15-20020a2e9f4f000000b002c9c3485260mr1161607ljk.38.1701278580319;
        Wed, 29 Nov 2023 09:23:00 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id t13-20020a05600c198d00b003feea62440bsm2856049wmq.43.2023.11.29.09.22.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 09:22:59 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 29 Nov 2023 18:22:58 +0100
Subject: [PATCH] dt-bindings: net: qcom,ipa: document SM8650 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231129-topic-sm8650-upstream-bindings-ipa-v1-1-ca21eb2dfb14@linaro.org>
X-B4-Tracking: v=1; b=H4sIAHFzZ2UC/x2NwQqDMBAFf0X23IUkpTHtrxQPUbf6DsaQVSmI/
 97Q48Awc5JKgSi9mpOKHFCsqYK9NTTMMU3CGCuTM+5urXvytmYMrEvwD8N71q1IXLhHGpEmZeT
 IoYqt8d4G11MN5SIffP+Td3ddP9S85fl0AAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alex Elder <elder@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1633;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=o8xig82rjh29g1YR2tft59ttywpVEwUjXy7a6/IvzCM=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlZ3Ny0bIaIeooNeuKZ+WAH6b+yziEKCVtfUICSjS9
 KRh4jaOJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZWdzcgAKCRB33NvayMhJ0eiKEA
 DIpsOR5nkaKqMbLKxrWVZV+kEvwH79DS56mRxH9P/6G7lafLyG+rpCMoO7Do0eGM7sd5OSXJTcNd25
 hMAzBC2jODUzkJmOOM57TKgjLGgVlFomj2oiytfaPHxsOL7YTsTiWhrL/BvL3ifgjYKmNMDRCoQbdj
 7YeA8G+RrYvnmI+IlGHdWh6PKJPz3kttihu9bbfg/vGgvELK0lGr+JjSRD/4bFHT7rwzcr3anP3zPq
 DOEMsksoz5sPNks5o6YKfHP6ROs207N2XeoDHpy1O6E9kpK1wNoawVhW4dUX2Sp39NQdIFjEVW1J1z
 My1C0ZuGcFKiTr5UMncjg/2ncBrXN1Cnc6tGPmByBRbxWDDgL4wIUmDAXqwtphOLmEoQluoUoXAlXh
 /7JGHFirqMHY4UyAoLHFxXIC2iKYeRffn3akBA3RIi7+c+/bIWHoDNIIZPQIrPcZsOHEfNd1NhcxIi
 RFlHk34QU07x/loeOYTzJHYEbRmARiJHWI0lGiGB0OO+kcTTzxhAot9TBWrLaSzW9ng/7N/sXLW3X1
 zV32dVXoxpd+nHVtbRTV97DccF9fA1Q065FCXOrIpmzxcsfYPQ7QY4ynGekhcpl7o/G3k3ed0iYOBb
 KXdjE3uk2P4XyzALw+bSkV6/LHRjIvikLfbuloykIwdMFqilRUqetrsdFsPg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the IPA on the SM8650 Platform which uses version 5.5.1,
which is a minor revision of v5.5 found on SM8550, thus we can
use the SM8550 bindings as fallback since it shares the same
register mappings.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../devicetree/bindings/net/qcom,ipa.yaml          | 25 +++++++++++++---------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/qcom,ipa.yaml b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
index 702eadccdf99..c30218684cfe 100644
--- a/Documentation/devicetree/bindings/net/qcom,ipa.yaml
+++ b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
@@ -43,16 +43,21 @@ description:
 
 properties:
   compatible:
-    enum:
-      - qcom,msm8998-ipa
-      - qcom,sc7180-ipa
-      - qcom,sc7280-ipa
-      - qcom,sdm845-ipa
-      - qcom,sdx55-ipa
-      - qcom,sdx65-ipa
-      - qcom,sm6350-ipa
-      - qcom,sm8350-ipa
-      - qcom,sm8550-ipa
+    oneOf:
+      - enum:
+          - qcom,msm8998-ipa
+          - qcom,sc7180-ipa
+          - qcom,sc7280-ipa
+          - qcom,sdm845-ipa
+          - qcom,sdx55-ipa
+          - qcom,sdx65-ipa
+          - qcom,sm6350-ipa
+          - qcom,sm8350-ipa
+          - qcom,sm8550-ipa
+      - items:
+          - enum:
+              - qcom,sm8650-ipa
+          - const: qcom,sm8550-ipa
 
   reg:
     items:

---
base-commit: 48bbaf8b793e0770798519f8ee1ea2908ff0943a
change-id: 20231129-topic-sm8650-upstream-bindings-ipa-81127066182b

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


