Return-Path: <devicetree+bounces-34926-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C41D83BB6E
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 09:14:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CD275B278CC
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 08:13:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77E7D1759D;
	Thu, 25 Jan 2024 08:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QrdtUkCE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A31F18E08
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 08:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706170422; cv=none; b=SvLGhumC0lXsT8nXCO8E2/epyiKYRCwvPf+gpJwmiI6ycYNNfMK9XISFGMWqTR7D1pRtq50a7iHE6KRDfd1yheR8FfX/4Dtiw4ZHZeOxj/ilSWGJuJzaYuKpGq1PXB39DCg1qxbERL7E2jxU28xZhorY1TH3K0JDQ0lAcu/F7Fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706170422; c=relaxed/simple;
	bh=Birw2FBzwSDn0GBRM0cV81du2Djl/F79xx37WiTlH+A=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=F/Av1A6mPMdNJQ7Zr8eBJif6LxpQK5aeiWWeXPKrUIAoujaEsLB848Rz5Q4hTfiikRZQF6C/cc7NQjG8ipAy5GYEqwlTC55q6HNs53xGcZJ+G1tTTcETPSsPHyW4g3AIXpKcyVcKunioqGr2Sgt9zI95IArNiGUGqxabw3tLjHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QrdtUkCE; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-40e775695c6so62954095e9.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 00:13:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706170417; x=1706775217; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mj+7iHZ0krt8H5G06zvjOCxGiJvGpM5g2sJyT8K8KRc=;
        b=QrdtUkCERYQp5oCPwevCdH8C76Vk57Iy+wWwtwI+ZgTdOfiDX1seL9/igGH+4cMnVB
         lnL9DjJpntKG7usfX9RhXkkvvrIp+Z+3trM4o5UOwWK+lB3vdT59RiQNYv3PCsn6+628
         TS+XWEZlEaObtdjfR706VnUcgc66d1576a0JORdyCQdlO3qEye2azEuZKCyd8oLXMutn
         wR0f7SQznx1yf/Jqea6VrvI1CjDpSD3OsTh05RyjWIOk5lSHMqlIHEkcj/UGfzJ5GeRl
         MOxVBP6StjFqSrj449ymTf0/LG5KI2ImVgBZfsMSqGBVPAueULSDjmOJY7UZAqM8F9i3
         lvvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706170417; x=1706775217;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mj+7iHZ0krt8H5G06zvjOCxGiJvGpM5g2sJyT8K8KRc=;
        b=n57KBREfAa23k6744FzR8srwar2V/JDpPi7ycZCuQ0Jpx2wkeqyGh3adVwsy/SSUNx
         r9aCShrmG/UO+eLzMXGhfSn956Mec4sCahsnL6YSVihXfFQ36eE2sziMN+CnW7wvQJkO
         Zt2Azb5BytG5vhcSbzO4jmjfGubBJczLq8Dxlhbwx7Ado0PZ2T5DNelFJqLcIrzFm6QP
         mp07UloEpZzvgbD+XH8UJVmHoug5Y2mt3BoRCbkm56QKCu9c8p7aIwO85Wa5RuVjlriJ
         gvirA6SlbEK+3BaOJ4xdbpS/iOB6KRjeeh/oPTFtkqDuQtUNPxphnI3OACoGJ26OqFS5
         hXbQ==
X-Gm-Message-State: AOJu0YzKslqczU05hBxfoZFiQMOCEd+dHWQCFrXnHc54iTOQYqReMCfW
	g3fxRPjsobtrnkVvZFL+E7B5WpoRWhVXjxOzYMJbElIbOsVtT3SCZoexmYuJuzk=
X-Google-Smtp-Source: AGHT+IFj13E5f/78ERVecZ2cUbV8hXdQ5yrC3gurz+yDaxxTpxfm7oQweWOyjyLcxr/QIUOy/RYdwg==
X-Received: by 2002:a5d:664a:0:b0:337:c383:932e with SMTP id f10-20020a5d664a000000b00337c383932emr344190wrw.28.1706170417252;
        Thu, 25 Jan 2024 00:13:37 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id i19-20020a05600c355300b0040e4a7a7ca3sm1638350wmq.43.2024.01.25.00.13.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 00:13:36 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v3 0/2] arm64: qcom: sm8550: add support for the SM8550-HDK
 board
Date: Thu, 25 Jan 2024 09:13:33 +0100
Message-Id: <20240125-topic-sm8550-upstream-hdk8550-v3-0-73bb5ef11cf8@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAC0YsmUC/4XNTQ6CMBQE4KuQrq3pjwTqynsYF4W+wotCmxYbD
 eHuFuJCV2wmmVl8M5MIASGSczGTAAkjujEXeShI2+uxA4omdyKYODHOFZ2cx5bGoS5LRp8+TgH
 0QHtz34ZaKVBcVmAYJ9nwASy+Nv96y73HOLnw3u4SX9evLMSOnDhltLG2gkZqnvPywFEHd3ShI
 yudxC8n9ziROaVso1kOa/QftyzLBw8lAlUaAQAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2154;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Birw2FBzwSDn0GBRM0cV81du2Djl/F79xx37WiTlH+A=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlshgvdyt8twf9vcNecWwgIE7rUL7uu83WzOeQheaZ
 Sv7mJ/2JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZbIYLwAKCRB33NvayMhJ0ZIiEA
 CecIhp/QQvbak7rqKE+NvsDkcvuiL2jsolX33tLqkX5UnGhwZ2S4qXvu1dyNdyPTQC/LV3HpjbUl+j
 ZMLH3PWqj74WWK/w7/tsCw03NQ6NSu3RdVcz7YSbTD0OHIiN8EH6ybS2VARscGrIxatzG5GLGPnfSq
 dxac7icjPhnqRvNS9TGoOhCDjN5fPJT1qSe1eJsrXCBU7RTPtU0bPf4/C0mwNKWGtaGXBtuTDpl657
 v4xPvVzdcaR3x55aWgW2z04Nk8v7RYA+HD05LdPbXP/t4H976Y105tfrXEN/Ph/0hvsHXNp2dj/Vrb
 8X/LTNGUn1CybCfbudmGhjiQXuyOBo2Ut6Xf64+tgFogNt88CmOBeQnZXB2O2dfdgmkQi8vAOY2Tlp
 5+lyiDYpGGLzKSD5MUMespVHW2emxY3z72+bUOBEu3hJEqUMPUy/07OigrLRb1vCIAT8k/441hSmex
 ZxEUpsV/QfcDEAFls7Fek5onBrzN8mscQK5KbIkIKRwjmXC8skdUhy4DZleuY6YE/v0M2q9JbKHWk0
 A53LRikw/8YJEp1O+5xl0PqPh2RZXB3xeXFDjZzYeWm7OcUbvVgCUfF41M2WgE/vkXrkqrUUQZoLvK
 jXPDaxwf72m+6j0TFmAZljhhtCKvG2h9XVOqpOlvBI5k6tgnJrxnyRoDfHWg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The SM8550-HDK is an embedded development platforms for the
Snapdragon 8 Gen 2 SoC aka SM8550, with the following features:
- Qualcomm SM8550 SoC
- 16GiB On-board LPDDR5
- On-board WiFi 7 + Bluetooth 5.3/BLE
- On-board UFS4.0
- M.2 Key B+M Gen3x2 PCIe Slot
- HDMI Output
- USB-C Connector with DP Almode & Audio Accessory mode
- Micro-SDCard Slot
- Audio Jack with Playback and Microphone
- 2 On-board Analog microphones
- 2 On-board Speakers
- 96Boards Compatible Low-Speed and High-Speed connectors [1]
- For Camera, Sensors and external Display cards
- Compatible with the Linaro Debug board [2]
- SIM Slot for Modem
- Debug connectors
- 6x On-Board LEDs

On-Board PMICs:
- PMK8550 2.1
- PM8550 2.0
- PM8550VS 2.0 x4
- PM8550VE 2.0
- PM8550B 2.0
- PMR735D 2.0
- PM8010 1.1 x2

Product Page: [3]

Dependencies: None

[1] https://www.96boards.org/specifications/
[2] https://git.codelinaro.org/linaro/qcomlt/debugboard
[3] https://www.lantronix.com/products/snapdragon-8-gen-2-mobile-hardware-development-kit/

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v3:
- renamed regulator node names
- re-ordered regulators, i2c & pcie nodes
- Collected Reviewed-by
- Link to v2: https://lore.kernel.org/r/20240123-topic-sm8550-upstream-hdk8550-v2-0-99fba09fbfda@linaro.org

Changes in v2:
- Fixed ordering in bindings
- fixed typo and spurious blank line in patch 2
- Collected Reviewed-by
- Link to v1: https://lore.kernel.org/r/20240122-topic-sm8550-upstream-hdk8550-v1-0-bff7eb3a17eb@linaro.org

---
Neil Armstrong (2):
      dt-bindings: arm: qcom: Document the HDK8550 board
      arm64: dts: qcom: sm8550: add support for the SM8550-HDK board

 Documentation/devicetree/bindings/arm/qcom.yaml |    1 +
 arch/arm64/boot/dts/qcom/Makefile               |    1 +
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts         | 1293 +++++++++++++++++++++++
 3 files changed, 1295 insertions(+)
---
base-commit: 29a509493dd4da77c9109aa54cc4c145ca64ec23
change-id: 20240119-topic-sm8550-upstream-hdk8550-899e9137ed01

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


