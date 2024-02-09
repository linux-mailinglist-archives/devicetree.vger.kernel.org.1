Return-Path: <devicetree+bounces-40168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B3584F84E
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 16:14:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 03365B23472
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 15:14:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6476F71B55;
	Fri,  9 Feb 2024 15:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mnUFL1gl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BA36BB5F
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 15:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707491666; cv=none; b=gQkQSyGKTXLXRub1yEZ0PHJwyqvVfj8IfdCb/An484kq0x5RQt9Gr71f0MCH7Pb+3iz0cUwnQivTB+nANIb4W2btBNeYLfnvtic+eS3mCXB1ty359rUJXOHsQQCUmnVAkEJD3/wi64fDVEB7OYfTjbpiLfsco2B5WIdr6zD2elA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707491666; c=relaxed/simple;
	bh=nlvI7EZuEJ/t7vpE1HQr6Bfm+OHJLNdD1aQwrjw/DeQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CpuRhWzm621YR5AOf43M0I80T0e4OqkFogTUinV8FbbcJz3Th8oaqfPfcWjIjXtWsjrWhoWeZg76HmJCyn/ZvTJdEQ7SNny19/TLMKOnF4lUzjsBFc7hrhDhCc/GpnPMp1Ojqvn+Edw/N+MOY4VmR+ldlr2CFas75NEdRQpgQ74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mnUFL1gl; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5600c43caddso1312236a12.2
        for <devicetree@vger.kernel.org>; Fri, 09 Feb 2024 07:14:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707491661; x=1708096461; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z1/il2Q9wQBYKmAz0nVoOh3RcRm83j20v/creeLYcwA=;
        b=mnUFL1gl4JouPrFdd+JerbPAvtCY00uUe5wLD/wdBY1s6v/U6vWRaffJOG5zIGPjcC
         7al9SGHqp87t4J+7J8LicU7I+hPYQUnD1z61yR5I2G+Pg6OOA51KmQDswuooOPG9XSfr
         u6AgIVe6IRfFflnGeIiIWyMgmiEQ8koY+lUZH4Ftm7k/xjdIipUqXf2BgRECeQQubQVj
         bgE+eBxYVjsvtuA2HEY8aCZ2vShRIH+WSY7noGXYei0pzfQWvApWOeqQy66LPZuKAz+i
         k3scHFemZ5p8t95VpvVXH6dxerrniMkSFSuz+b3OdMPle7caagDf1PMaUb9Cmvhlg26j
         0CbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707491661; x=1708096461;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z1/il2Q9wQBYKmAz0nVoOh3RcRm83j20v/creeLYcwA=;
        b=eA6bv3RWfseWIRntZ341AqL6FHJ6lmdReOl7Q9XCLmhk9vqwdod98deuf7hbcQTdAb
         mdysb4imUQdW9lKcioDhOZoTl+b19xtcRRveboBEz7GmTSyQXypebHDMpyeBZ7LGgf8E
         Sv8dlxJoXGyx2QQ5dRzvlSBjJvB4AwHO9FRTngBGwKR8llgOrFEcmrQp5TJ6iie5LUCz
         0kRSz8FX5wqBoFUVmmHmQtKelB6DimzUw2TbJlO7TqXtvB/WWOhECqCTaqdmcmqLryDf
         5h2E+5WTyhp64XmQtM9R1ZCVZTqtXoClBkL9ePIVOwH6YDKxDn50Wy4KGjI/VHQlcXA0
         /lLw==
X-Forwarded-Encrypted: i=1; AJvYcCXmwkKbouxF6jNFfyTeWfg78CyiqAWMebMSUTo6rewr8NvzhUQSNbJtVV1iLQJ0cJSB+cJXLicivkF+8OQ7gFzYW3/JYrxD3mxH5A==
X-Gm-Message-State: AOJu0YzYPRmGrJMOxKl2LJlw9gXudIrxjXm3SFxUJo5qdM0bY1lROmOC
	1r1yTgq3IuTSlpcBDAiMET5M8RrrNm/uUtdC0iXi3PGGdtFi43I7ArHinrVadQk=
X-Google-Smtp-Source: AGHT+IFQx2zcDnsBKcteo9LmWHs24zhxEU+vtkb5S0F1UgsqpxC9T5bB794YwK49xQmk/LdIM4Dyrg==
X-Received: by 2002:a05:6402:281:b0:560:5fc:4c9e with SMTP id l1-20020a056402028100b0056005fc4c9emr1323018edv.41.1707491661569;
        Fri, 09 Feb 2024 07:14:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVc/SW1j2mzZQHl76VPOwGOQYPAS6PUbLDGZ/dNvVAx6FhHaZ8kQy10UH1kUwnOoBN5FHoOSx3UIRLGQA1+5CwXLynfTOkkCiVUvlX6yh9e01KJmqyw/lispncx1j7AizlPyn8kojQUslpIP6yuwFOdPlfrVync1/mhxGhiyRPvlKeHr8JbYLKDuooWfyIkAjraKInM1HKVcJyKvRR+VBhMCTabQMAOBBR24Q1DvyEebfcQf/7GkJUAtsVUiqCLmGT88BRZ72D9PiIHO3PZ6tQLpV0vwVyylCsU3PfFcw0Q4BFGrk5ObKpkpbdnAXqSbOdeAG+XeXfpLoGVUk9MG7YVGH+DaytxRepXjSpkBYTsxkZAo+y6mbq08exi4rr5vCxHHF51Mw==
Received: from [127.0.1.1] ([62.231.97.49])
        by smtp.gmail.com with ESMTPSA id k6-20020a05640212c600b0055ef56f4575sm860240edx.39.2024.02.09.07.14.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Feb 2024 07:14:21 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 09 Feb 2024 17:14:09 +0200
Subject: [PATCH 1/2] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 compatible for SMB2360
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240209-phy-qualcomm-eusb2-repeater-smb2360-v1-1-af2ca4d95a67@linaro.org>
References: <20240209-phy-qualcomm-eusb2-repeater-smb2360-v1-0-af2ca4d95a67@linaro.org>
In-Reply-To: <20240209-phy-qualcomm-eusb2-repeater-smb2360-v1-0-af2ca4d95a67@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=842; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=nlvI7EZuEJ/t7vpE1HQr6Bfm+OHJLNdD1aQwrjw/DeQ=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlxkFJpdc4rGZiRQnENaXSOF7rvgvpH8dOlcKuu
 NHk48bJM6CJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZcZBSQAKCRAbX0TJAJUV
 VhNuD/0djAOxaAZ2MlMyXYl5Gy47cInI9gLtan/9A8H8m3rsP+R6LgaS1PD+jxR/NG5de3zHkAV
 REa6Zu84k6MMNWNy5bcYJEfyqj+HEHcVHhDjqAL6D6xQhG/t0V583YeIiIKPamud2cTBXLjLUm8
 dfVD/Mr/ksA38SoXK6bFSArbFZ6/6921dYnNZ8tl3AuiAxhz8aiCfKObhFiMyUyxOXxYPEBzueo
 CjYjWpPiPLpjXmfJPpEvWGj8Vt7YLg+3LOJd/UEfs16O84Qo/9B32C3wZEX3bitU9Rqu/a7LChM
 AdaclbyURqPQ4Q7/YQ/55ODag8ftYHi5xSc+G+/9cC0dfguuHmnDJqrF5F5thE5qomPnUZ0k3g/
 NpfqxRV7QcRb2MGK+G6I235ChBS90CrdhmjL40o5wTf9KO2Y7exoW9/QX3JrxzE2fi+hDlw6EYC
 MSw6xN85IDxMhm1u8Czu46ub+EjU/FlqCycdzACLTOrlyE4aWC3U8Bt0OSROB4Lrj0YTnCwNPWz
 Z20rsJD0BdfVmukEo4wQVjWANngs2brR0SKM3i8pVBlkTy4hvwyfDzxL+4eyXxbTSIEmnohsoHD
 /PeiW4RIh3UaPGXqHsgs8RQ3Lk9beOUfnyoN3ZKTqgExo/AS/+MHbrYi3oX4l3CILisH2mQNsjW
 VVOt+gFYk3IlljA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add a dt-bindings compatible string for the Qualcomm's SMB2360 PMIC.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 24c733c10e0e..6be20c157568 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -21,6 +21,7 @@ properties:
               - qcom,pm7550ba-eusb2-repeater
           - const: qcom,pm8550b-eusb2-repeater
       - const: qcom,pm8550b-eusb2-repeater
+      - const: qcom,smb2360-eusb2-repeater
 
   reg:
     maxItems: 1

-- 
2.34.1


