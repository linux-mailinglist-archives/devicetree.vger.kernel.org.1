Return-Path: <devicetree+bounces-17867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD247F4557
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 13:05:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 764F3281389
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 12:05:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1918F584DE;
	Wed, 22 Nov 2023 12:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O7l+4JBa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BB80D53
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 04:05:33 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-5437d60fb7aso9562559a12.3
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 04:05:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700654732; x=1701259532; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bymm8ioFVVD3dhLMm++/IzfooTvBAxFVOSgxW0vP3RQ=;
        b=O7l+4JBawhFmrtkfqORuV0TIP5EqhOAHHf0S/rFVAGo6sAA0drkZfDu/zRahTDb818
         5k4ZLU0p82ktnLEw8x4+5aZ+6FUqj191+QMJK7FtaD9UoJ0Z5nIMMMjzYhRSIiSZrIfe
         ZXP1jWhGAZ4yTK7JJSj1A9HlZekyP0NdL1X97pkPSwpne4u/3XR4ms7asdtrEn636LJC
         Y/BWxlN42y62y25Ts0MfsLqy0u3QqeLt4a0So6V5RkOi/PDPEAlNiC81j2Xn48JWYxXW
         P3/p2ApyEQ5FXVI5Jsas0Q+2CCzLFj021NNaMaQmii4TA5o3c9tgOwFO9Vz1BvV9YnUj
         O5Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700654732; x=1701259532;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bymm8ioFVVD3dhLMm++/IzfooTvBAxFVOSgxW0vP3RQ=;
        b=s3ygW60qzGw6pC2V/ZDTT3LWS/b7AWoVT0ejeL5J181DCyVHmQRm1RLqMy10Su7Y8t
         fQSSMaFK75WC+bDaoMDX0NslNLsAzl8aq0ub6DW8SarsrYbF6XPuRoCbRHRWdEYa2Uh2
         ehZKbiFehugBS9gm98GNU5YLVL4+AQOHIkh0qIW9aVAfKzEsQ3qb6mJeIeKr+hJyACAc
         CIBorsQV+2C5zcXm/QuuQ9U6xdAdiSoRtcK5HGw7udngS09Y/ApKFlEGBh0OpxBfcEjn
         4EIN1H54+Bt0UxMUSA6kAZdU+UkRliiMX2FWT5x55pyAhYfK5eeYJdSc6e/x50by8R/G
         wXZA==
X-Gm-Message-State: AOJu0Yz6v/iWptufGKrFsILmvS85gzbLnKgUY+zUJmTImsGwf4NaxUO1
	+KAI8Mh01aItkT3QdmJn9T4pVA==
X-Google-Smtp-Source: AGHT+IFHxGuasn2hCVAywG1/40UpIxj4n1WBlznP+vAlUpkOgylTp/74MdCSST/XfRt80LCtIdPAHQ==
X-Received: by 2002:a17:906:9d14:b0:a01:c04a:b843 with SMTP id fn20-20020a1709069d1400b00a01c04ab843mr1330938ejc.41.1700654731851;
        Wed, 22 Nov 2023 04:05:31 -0800 (PST)
Received: from [127.0.1.1] ([86.123.99.122])
        by smtp.gmail.com with ESMTPSA id kq14-20020a170906abce00b009fcb10eecb2sm4383416ejb.84.2023.11.22.04.05.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 04:05:31 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 22 Nov 2023 14:05:21 +0200
Subject: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add
 X1E80100 USB PHY binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v1-1-3f5bd223d5b4@linaro.org>
References: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v1-0-3f5bd223d5b4@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v1-0-3f5bd223d5b4@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=843; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Ff/TzKsr6VAOQih2h47SXfwoazhLB1JbDRlKoZrC1AU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlXe6HIiyEgikpop1Wudnzf4cIJEHtKgxjpGy7X
 feKVqqm9OiJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZV3uhwAKCRAbX0TJAJUV
 VlM3D/4q4GqU7KihS6jouVBbYJL68SAuWdXSWijx9lTEkmWY1zKy/5+hTyhSCXwTaeK8M4VHuaw
 P6bw68odJ6BAzzfu+vLYtXH3snTgjk0L8MKXKOUrP+ndgFxCHnDi/wb9Xl3nYoOR9JmaQt7J9kI
 jtVER2C2wtBHwH9NI1txuT55Mujy2Kywh4AWzW+UyD/o+5OPBP0pz+UIeH/3bh4fM1o02+8+tZu
 HXI2w0gV75aAOQ/b8l88EI/g3axf36rnevsUeD8DmHvZoiZbBP7w8qvUPqmf0qXyjhw/4wAuOLj
 +cPw5D8rMm3V0O6T3aYnjudWrRBrox/+66kyVlCOHphusYUUGdGaAEHREBqjDc5WPLEecbkLErR
 T6L25nHaIxooyV1JcrSXHsf6OK68JHhNwrXAGuxPvYme6FF+yC/HBi4lKgvYY/gexOgvgEPbSk8
 PrqCB8Bh+UgBJ/566qzbhEKTbAZrwj1hSZ+2yk9qCnTqprP141H0Oav6cDFF1bLIsOIxr804a4y
 +7refNHwhj5KNG9n6fu3RRSnMcye4StU9J7uAcL0onArspVbis7lowN4LWa8VGg59tTOT3HGa20
 skOkzqPLUY1IixvV8sofVvPWhgvviQYtELdFD48RqY0nlPFCu/92D/OPIWMp9RsB3+IvtZpzFhY
 6aqESegYgGlFTRg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add compatible string for Qualcomm QMP Super Speed (SS) UNI PHY found
in X1E80100.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 57702f7f2a46..6041d17c0e2a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -32,6 +32,7 @@ properties:
       - qcom,sm8150-qmp-usb3-uni-phy
       - qcom,sm8250-qmp-usb3-uni-phy
       - qcom,sm8350-qmp-usb3-uni-phy
+      - qcom,x1e80100-qmp-usb3-uni-phy
 
 
   reg:

-- 
2.34.1


