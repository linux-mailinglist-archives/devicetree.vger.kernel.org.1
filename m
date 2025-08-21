Return-Path: <devicetree+bounces-207500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CEEB2FB67
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 15:56:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 156C2B6624A
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 13:53:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C0C120AF67;
	Thu, 21 Aug 2025 13:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Pv/oNVby"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2047C15E5DC
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 13:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755784413; cv=none; b=jf9fla86vtSAQKjPVVdYBdP4TNp6vM2jl41eARU7eJaanXcrrInjWHuEat24namz2Ve5ko2u2/YjsJJO5K01uUOe15NpNS3sACeHdbPDvcr+J5ZGPg3Le5E6cK/xBTwGDSQXIOC5zyWtr+FTdylZIazwTjc/IcBCUry48027ma8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755784413; c=relaxed/simple;
	bh=Aq4B8ubCvdna8UpVPGeOGxwN0aFnE91nXSAPqGRX4oM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nrScSe1fmjYfV2W3C2QAJX6dAGPs/2JcxQOIqsjNUiSU0lxnWR2KkxJyvEA2EWn4hXMDuHu1FMQgv+obuAI/dhrOhYWHBeAYW4OOzSICkQEsUii1YAU478dmF5M9jSh2PNpQruYX8RljYPldpxzoMKqG9zzFUHQrTsa8t3cflYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Pv/oNVby; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-45a15fd04d9so14319265e9.1
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 06:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755784410; x=1756389210; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4EIBQO1Gz3enJDEIRLN/ppBfRRD6TDZUCn9XNdLrwEY=;
        b=Pv/oNVby5CIy8h/e3pVCwo3ru1S7A8embIu4p8VKRYDyuL1v0oOsHijZJiZDFaX75E
         zbBAX0+nCxbJV3LIqsS7IvtCGoN60cKGDokXzZdimhRIrlGfqumgtXvtZTEB9WhZrCo8
         NIx/TLsyzNV30fJ3gIf8Qb7q5AzaHXskOOw9oA7+f0l89R5HLapShvwoBkYuJ2oCJuGE
         JkPwkhEBw9SrTJmcgyI91Sn8odCIRkv6MDqegntEQXf8Hq3grvwpkoq8l0JCk1ud5R9E
         XVqJnVUwlMnSpLta8U2ga6PKjruIFdaY2fDWDSA7g/DUW/lCHlpZqxGm/hni2T54E1pe
         cHTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755784410; x=1756389210;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4EIBQO1Gz3enJDEIRLN/ppBfRRD6TDZUCn9XNdLrwEY=;
        b=rgyjFPE8FF3snKZsFqkf7OaF0hT1GcbUQ3Twy2y5xLWUesIcNadtPM9tUXt1vJ+uX2
         kIrMdDtCeEziBP+TX2GZr0NSDgZ58f6HE1rLeuk6jSu+z7B8XETQQZ7W6Pqh5DuorFcx
         SjA5BQ1LjHLmMrs+rWCgUXRMITNNJEnicStGZEA/fPCbx9Iy00NKl7WKQUKJwm49GtuM
         s5+QTknrh/F+uGKZVJyHsYLoJCv7dMJHafyhk+hXfo6UQ8dRwmuBxm59mdo7jVj0A3PY
         GTixASllUWfgYJSB9swapvR0JiFELXTBzqHQK1CTWP9qEKUBIred9kh8PbwZhyXn8YGS
         gqzw==
X-Forwarded-Encrypted: i=1; AJvYcCXYOIJyxy2My4T32/VZakOB84e0T3nwPp1P2c876j0PcUxKOFpKcDXK07QUh2pvAW5yFZJnKk8o7TRy@vger.kernel.org
X-Gm-Message-State: AOJu0YzO4VQuTtmEIrA23XSUXfUO0e3j0cT9oJXBSQH3LUGZNOfWnVTF
	4laKJqN7Ofwgn1mRyuTNbl7F7IEZSNtqnKbb29ghesSoODkYdEtluzzXhWNxGmcvBs1c38QIFWn
	oLFdtIvQ=
X-Gm-Gg: ASbGncsT1X9wHp5VZNjvp1KYavjemeG0GC8sLkbvuPOgkH4wm8EZ9wqzx7aTTtN8NRk
	59cOnB7FFexeaRuVjCdzx2+x/7r1JDuu5oWvIQay6k02KvoWh2R3ZvIoxAAb6o3wyV2YrV9pibB
	/ML/JpgkZKPomxlSPKU0TE2Mqy17REeiFSvtZ20CBwZLClf5PY0Mp0ZZHJ5Jj0yX+lSkjejGMWU
	srzWpZ8J+3peEoE2w/nqt/QCKF+LftWl8i07/IC5me9Y6uI/gmAdd9yXI3AcGSQJBrathQXZV7b
	+bU4OfxNx0727WvfR7lx5Idc84Y7c6XevCCwuk5dzJ6zNNTeeuI4TkhWYIjibQm+M0q6ArPXU0V
	9jXdS0NlGyFKwCVoyr57Fo9YPlJqLJMQ1yurIsmqMhVTetvj7B1EiWQ==
X-Google-Smtp-Source: AGHT+IGAIzsMBvakvxJeKR4kacsmerciP2sEoorpYm9uAOK1lVz1iyXKtDjbXi0GfpWXuuUcYEAuhw==
X-Received: by 2002:a05:600c:5249:b0:439:4b23:9e8e with SMTP id 5b1f17b1804b1-45b4d8de696mr24534735e9.3.1755784409986;
        Thu, 21 Aug 2025 06:53:29 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4e269d20sm14825015e9.2.2025.08.21.06.53.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 06:53:29 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 21 Aug 2025 15:53:26 +0200
Subject: [PATCH RFC 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document default phy mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-topic-x1e80100-hdmi-v1-1-f14ad9430e88@linaro.org>
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
In-Reply-To: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1974;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Aq4B8ubCvdna8UpVPGeOGxwN0aFnE91nXSAPqGRX4oM=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBopyTXldbpm4aBJ2CsjXkwQ24ndf393shGxX332QEv
 OXcBGm6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKck1wAKCRB33NvayMhJ0cV9D/
 9Ki7JcUNOAeH+4OzoHkHUP+vqAWxGIqz0PI1mKTURjsY+W1XGqbumr63HVm10/uPe+ctdQpVLJcfuf
 P7Zlp2uzHtdNuvdNHUFWiFP2jIOxEK1HkwmTMmw04jj7RMUxj3Wd9+cf4pJJ+1DFLxkM/wCkuIU0lR
 MMhrQWmsHBgI6On5U/7nYJr5EMepeTV8P3nyWYklErdKvijuWm1GRgjNnl57Ff6gNMu+2tmn7Cz5Ct
 8oJjm9W7Tx99PeMsMx2ypyWeLqMpRmOTpxSRN5WerUHcl0OJ3CNkuapZ3JLT8IgF4rU2KTKCE0Z36+
 CDoahhIPvFO17Tz7Zy7jk6vqQMXHNi7SJKyFST/kGfgtfuM/9SNI698IsBScm+pLMxvtPCSB1FUqQY
 oon8yBV31VcPp1385R5sJHfckSgYKihZDz1iAKFMbVvtKFNEEwqgGF8WJR4/VXBbmVaKi+Dif9hFEP
 2bB2O/nFsHUGhu8EEv3ghfexcSnnYKoH3Wydbwal/eXBmPuN1Kh8GPY4knHmqO8MrbbwXfyIgEOvsq
 nDIXQLPzsOzvQHY6XRmSL8bb5NRdxqYBT0dVa/VXLHVW5WsJPHPAArX5opq+p6a/vYUQ9e+y0zRT4S
 WDm4iqLuQx9488Xz1o0C46fbw0xJYmU7qt4CgLdUy/BaJHDfyvp1krYTiS9w==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
of a combo glue to route either lanes to the 4 shared physical lanes.

The routing of the lanes can be:
- 2 DP + 2 USB3
- 4 DP
- 2 USB3

And the layout of the lanes can be swpped depending of an
eventual USB-C connector orientation.

Nevertheless those QMP Comby PHY can be statically used to
drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector...

But if a 4lanes DP->HDMI bridge is directly connected to the
QMP Comby PHY lanes, in the default routing 2 or the 4 lanes would
probbaly be USB3, making the DP->HDMI bridge non functional.

Add a property to hint in which layout mode the QMP Comby PHY
should be as startup.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index c8bc512df08b5694c8599f475de78679a4438449..129475a1d9527733e43ded5a38aad766f9810fe7 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -76,6 +76,19 @@ properties:
   mode-switch: true
   orientation-switch: true
 
+  qcom,combo-initial-mode:
+    description:
+      Describe the initial mode of the Combo PHY configuration.
+      The Combo PHY is a wrapper on top of a DP PHY and an USB3 PHY,
+      sharing the same SuperSpeed lanes with either DisplayPort over
+      the 4 lanes (dp), USB3 on a pair of lanes (usb3) or both
+      technologies in a 2+2 configuration (usb3+dp) as default.
+    default: usb3+dp
+    enum:
+      - usb3+dp
+      - usb3
+      - dp
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
     properties:

-- 
2.34.1


