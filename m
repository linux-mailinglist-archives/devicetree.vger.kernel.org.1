Return-Path: <devicetree+bounces-28227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B784981D3DF
	for <lists+devicetree@lfdr.de>; Sat, 23 Dec 2023 12:56:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 183A6B21E41
	for <lists+devicetree@lfdr.de>; Sat, 23 Dec 2023 11:56:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 392C3CA5F;
	Sat, 23 Dec 2023 11:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IrholNb9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB25DCA6C
	for <devicetree@vger.kernel.org>; Sat, 23 Dec 2023 11:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-40d4d70eca6so9171465e9.3
        for <devicetree@vger.kernel.org>; Sat, 23 Dec 2023 03:55:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703332542; x=1703937342; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s6BgZXk2Z2EdsOWLkN8A9CQXodyxdbtKQobwp6o/jO0=;
        b=IrholNb9ZoAcBNcmv2gAfyK5ESqT9fQ/wOMZ9WJ2vuquVVQf51MRWqQ5FwihobvSBv
         7enzSr+WrurTp9V0qYBBEMwt2WoAUAsks7LGK9bFGBDVhqrqsa5v3ddP0GF3b1diCCNg
         A/VfF2wYy7gQlJ2q+ykKX+F7UjaFAXvZ3FcXLzmhHaEMzW3LFnqs7r6ma7LoeI+CL5m8
         RO6feIxQ9q/yHqXYIdxrOHfOlP/bQTMLq62dARnWXKLRSoxn0Z3uhiX38cEH+qLozwXh
         joTYwiNkNQ9evwMRcerxsqOnsyMfuKvOfyQ8DsYrYdclZaWmxXgFf7cDcoHJF5Px3+3v
         EBNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703332542; x=1703937342;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s6BgZXk2Z2EdsOWLkN8A9CQXodyxdbtKQobwp6o/jO0=;
        b=Kjt4CstCEF78FbrmCZiBUVVjv0lcLCi69Hw7jjg0rbT1yPVuE6Ah+thrCtdwzCSYHT
         UeA23F3Fs79vWqV78xyeff53UjXfUcwGc9VANBZjBZm1mILfLyX6Gt1MZ3qS1G+LJ0QR
         nXoe7J9NEQ9u5xbStTLTgPIrBfW5yw2Iil67Gz6qveYlQrIg34mpwZdh59tiud4H1IJF
         5bCbPIN8oEasgquFGfa1oVgvGAv07SM/K31/NVLYUOig/RjNVKsltvxfpLw2U0tv7VfV
         WoCmlFj9r6itAubJr/yxWHh1tb4afxXvRy1+wkDPJSBLe5qpY2BdBxAPqDw9FrhuaBZJ
         lE4w==
X-Gm-Message-State: AOJu0Yy5lO4yAsh2ZycxdzM3+rWOFDvuxX4Q/3d1bip+4U/YO87e4Mqz
	5q4GW1XZ0TSGnYxlZ4B3fMfLhEbNphR6gg==
X-Google-Smtp-Source: AGHT+IFbKKaDUzDOTV7tg27SW7s49hsl8UxjmsVqHgSUFLade7q7Lz04XuCiV+7QgzJCtZ2iEIONjQ==
X-Received: by 2002:a05:600c:3f94:b0:40d:34ec:8809 with SMTP id fs20-20020a05600c3f9400b0040d34ec8809mr1048362wmb.270.1703332542096;
        Sat, 23 Dec 2023 03:55:42 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id r10-20020adfce8a000000b00336781490dcsm6351525wrn.69.2023.12.23.03.55.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Dec 2023 03:55:41 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Sat, 23 Dec 2023 13:55:21 +0200
Subject: [PATCH v2 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHYs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231223-x1e80100-phy-pcie-v2-1-223c0556908a@linaro.org>
References: <20231223-x1e80100-phy-pcie-v2-0-223c0556908a@linaro.org>
In-Reply-To: <20231223-x1e80100-phy-pcie-v2-0-223c0556908a@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1569; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Cjd737+0WvbPLfzwP1kvLLPld4NW6uZ8Tvfpkvgqv2U=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlhsq2k0cPV01Jw/I8SkjK5Ygnbi5XDM2jUyHL9
 bS05EY/5RWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZYbKtgAKCRAbX0TJAJUV
 Vmi5D/9f1U4t+GjBZxjU8iax36NUu3PaOld9Whjbrtds0OLfkX4Nof2QRKGeTud00FYbpSXcv6X
 HEGPebTsn3LZIkDvB3CadQlFZEWVH2mNVGMsmNvuSi+Rp+JgRLbLdF2a08My/MCu8g/Qy8nyw0v
 BOte3qBVbceO4CcXbpysQgjVlQE4OEFMCNCmnInFSbvrmXrnoQs7awAeqRwfpQG0XvrRfIE7SdJ
 Ume6hn+wGy0mZb1dPEjV7EZGesWXMeC3xk5DYjSwLGxGP9x8izsqcI1UGuM0R8EZ+CTASipIp99
 4JpRXt0DqaavGLhRC1EhV6x3hmNPlO/UNPCQmqGo8KzYi/tE2aK/Tx49BRXoWbjn1cizI0I2Ezs
 0K09HAsfYsivgqRHSrFKf+bPmg1rlj4e+Bmq9m/GMWhVprdMDpl3fdvX1p/vW/3e9srRzZPtkej
 U4PyNI1bt68c66+7JDohm/xL6AaNhn9JtVXT1/oWt99UFIZ/QPS/2ZmHtd15OqmX3pp8S4zibgG
 OpjQDDiY82tfotlBJDojtCMvDqQ/LXQDhcEfVVKydoaiZFwhoRrtAhYoHYIGdxeG2zBC+d1OJBS
 R8rzwZXNZacCHgTp5UyBD8kA7haNNYkSLtFX6Bs1HXWx+Kqy62Vub97kDGI8VzfsS919E2jXNId
 FgidTucH4UwCLGA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Document the QMP PCIe PHYs on the X1E80100 platform.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 6c03f2d5fca3..ba966a78a128 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -38,6 +38,8 @@ properties:
       - qcom,sm8550-qmp-gen4x2-pcie-phy
       - qcom,sm8650-qmp-gen3x2-pcie-phy
       - qcom,sm8650-qmp-gen4x2-pcie-phy
+      - qcom,x1e80100-qmp-gen3x2-pcie-phy
+      - qcom,x1e80100-qmp-gen4x2-pcie-phy
 
   reg:
     minItems: 1
@@ -151,6 +153,8 @@ allOf:
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen3x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
+              - qcom,x1e80100-qmp-gen3x2-pcie-phy
+              - qcom,x1e80100-qmp-gen4x2-pcie-phy
     then:
       properties:
         clocks:
@@ -194,6 +198,8 @@ allOf:
             enum:
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
+              - qcom,x1e80100-qmp-gen3x2-pcie-phy
+              - qcom,x1e80100-qmp-gen4x2-pcie-phy
     then:
       properties:
         resets:

-- 
2.34.1


