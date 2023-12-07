Return-Path: <devicetree+bounces-22696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E8E8087D0
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 13:34:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BF9531F223EC
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 12:34:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72A7A39AF9;
	Thu,  7 Dec 2023 12:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RkH6eTAx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82518D7F
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 04:34:27 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-54d048550dfso1215658a12.0
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 04:34:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701952466; x=1702557266; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pu5gT7dq+Lj5agumkZ3dAyGbeE9PHCB8yBb5zyxdgSM=;
        b=RkH6eTAxMrltjh1zww0iy5LCB1VLzOgg4HoIMECXJxTu4JbUTkvKw43yTbeS/B6xRJ
         nX9g37PAfn5vPFV3Uh2oy9USdEhDbRCfWLhjquyqSpl+vEbEyOe5WYZ28x2Lj1z6rNUq
         PcBbWTohOQeFsyxn7Vi8nlACw/10sWYR1OzsiJNRnGLEmNUU8ejCnwjByESbPHtv/xbZ
         iHw5NpEN9ZjBqP12d5LBfd2HO25xyNmRfSrprXA8e6K2/UzLQvZUI2PrifK5q21vK26n
         zpUpiNdKrZUIARLrKQxu1b5/SNzS6xy5FOH1T9O6LlHRyvkDXpo43pKop57moXc0dsPX
         mJIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701952466; x=1702557266;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pu5gT7dq+Lj5agumkZ3dAyGbeE9PHCB8yBb5zyxdgSM=;
        b=q1IY35o5MyW0nEuduBGCNbvD+atShfTdCMmsDuA9FCqiCZ66kdf8P+b/DZb8wvrsfy
         sVk6m3E6i3oygjg/7VfwoXfjV02KeDdgDFsGz+jLS8LJnRIHZTpfzRInTBrZ3HCEd0Pq
         qrOckcxyEqI9IvfSJYqW78ItdQySqCiFcWl7SZX0it+WZfx6ON/549OswVcw1w9oke9v
         eeS+NRmK/g358oqAzpoCoKOF5rDMcI2UJ5r2EdTeYOI7gD8tG7iAeyeHF337iHYGeJa3
         ok5MtZJNGpvw0v4DCJXzZFV/OsH8rFiXTn+OgakT/zca7MY27I/02KsU+5RzTuwI8U8V
         pa0w==
X-Gm-Message-State: AOJu0YzHVqIEulveIsFg2nnnWUWq9KC0CCQArFeh45v+IPTcXeP3yffR
	MnuEizFWofosgGgNeFxtyyYjvg==
X-Google-Smtp-Source: AGHT+IFQXnJxhcpwGfXd39k+g4OXZsoSvZ5FCNPnXv+BjqFlyKZR0KR6qnibt1pjaodhZGjhGgs+oQ==
X-Received: by 2002:a50:8e1b:0:b0:54c:47cc:caf9 with SMTP id 27-20020a508e1b000000b0054c47cccaf9mr1129012edw.63.1701952465967;
        Thu, 07 Dec 2023 04:34:25 -0800 (PST)
Received: from [127.0.1.1] ([82.79.186.233])
        by smtp.gmail.com with ESMTPSA id c69-20020a509fcb000000b0054c86f882bcsm747331edf.22.2023.12.07.04.34.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 04:34:25 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 07 Dec 2023 14:34:11 +0200
Subject: [PATCH v3 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add
 X1E80100 USB PHY binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v3-1-273814c300f8@linaro.org>
References: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v3-0-273814c300f8@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v3-0-273814c300f8@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1429; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=utB1T7I75v9LzfmJ59Je25V4HOmp9C94RGZ7SpNNIrE=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlcbvM2PkimcgCpgUdiXAzddwccxNGISsRWCJoX
 W7YfF+JfdGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZXG7zAAKCRAbX0TJAJUV
 Vo2qD/9WM7vGXEYy5h4ZV4pSOeVZGTbHj5Tn6iqCsjKLRg9a62S7IXm9leZzatgX2z3GE4a7mrU
 Y76K7BgRA1ufuGNAicMWsf599AW+Ul/I7HjfZ1hErgZPiYhjO8W60urLBGjeUcCVI3e1YaAZ3Zo
 e4OBd9FE7Q5z3vIWA0kXz+ZeGHy1/az1Z0cmfAeQCMMZN9/BLXZRG9HEWiVUVfo/T1yimK2DuqO
 ib/S4YTQs97oSPy21WIwRzHczLPgCuroUW3WmtvXlozxF2hWryKfchCjP1huwqMZ7USRWyTR7sm
 Wi/ImufPYkX+L0a6qNJ3XQd/UMwuD2HprId491XmuoTIv5dGUUihzgv9IYtSRWnprZ6Itegmjpw
 V1u/eCry1UXwxYOPvB9bBnNDAiSJf3UkTz2kvY5vKl3Su2MCWjwCTbR9y2DjrZOUMkhWZ2CZ2PN
 YIcmyRBNysWBOI6keDqdl9Ohv/ZxPJV74BaTpHHxOK4Ss1Dv/HKboYnLeEfMz0GaNM9DGYGxIxV
 03b0dnOP8HpWaSYAu5vOAUHin64uBh5UQwZoLgz4VWiZ9IMrJYh1Ti+pKR1tAxIdKo+MBg1UYgU
 lpGMk/IkfZ6fcOJGaMTSlHbXxCpZMcqTdt6tComNTqe9y8iye/TLT7NHWdnhE0Flj+rYeB6QFnF
 Qc8gUuU/8CvZWQw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add compatible string for Qualcomm QMP Super Speed (SS) UNI PHY found
in X1E80100.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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


