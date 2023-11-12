Return-Path: <devicetree+bounces-15211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC2F7E8F0E
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 09:01:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8AC9A1F20E2A
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 08:01:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4791D33E1;
	Sun, 12 Nov 2023 08:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VmS1ptkA"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB68063CA
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 08:01:42 +0000 (UTC)
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E89F72D63
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 00:01:40 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-54553e4888bso5145469a12.2
        for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 00:01:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699776099; x=1700380899; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wVy4gWuMugdV/2nkK2imd9WAk4KEtKIXGLzvxEIxyNI=;
        b=VmS1ptkAr5U/IqTEtm4FPs9xDg2uw4qI4hPt7acE/oLbgPd9lHo63JzIkU0IzdMaZh
         SqH0E0UHEUoZuUgf8VUuiAbKZsrYlQutiF55oYPbeElD0DM1oEQXlxIx65qGfCUY6bgX
         iKmGEg8gRKrCwNSmJ+0GSmgwuc7aJ+1BTSgHwu+XyDl16+vHe5Nml0qTo+XjmGDCq4ru
         RXUgB1H1LcdmMHhzwcXJX3bnu2lMvtVAKghK9KEegdl3gECwkhjjZlbgcBVOhREtYBAb
         nm8QYQGLZWHdSv2fuU75YCIjZ2MYIyWQZ2617Yo3/Ha4j2GPHTGOVwi9XJPZNTTh6djK
         QPUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699776099; x=1700380899;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wVy4gWuMugdV/2nkK2imd9WAk4KEtKIXGLzvxEIxyNI=;
        b=B/3hfRmnN2UBBpkxdNzxBTg9LOh8k1MBv5MCvrY7IekrjVmNuPFKIFLxpJ5Oqdc/d2
         X1EUDjAC/hVqceAyrUYLWeNf8c88ew0LCq03/Y2rGbQFuO17Odkasqf1KGc6bzokR54y
         3j8TNwn/2v2e5h2qDNtSuO2CLtpulj0K5zjHQWxZAyyuakWGBVpEJC0axM9UBO0i+PyQ
         BLTJtLKjoIsb7af8StmxEjtQ8c2bdp3KkfRGUevoP/fOuORzlMj+k3jy7APPcHg1MbrS
         /XI8hnyz7yMOEG/5Qr8eepn9v2bK7g+3PJFg+d+n9YGXOMi1ayudYA7d7H15Im6SnaS7
         6mkA==
X-Gm-Message-State: AOJu0YxhStZx4qk1rkIQzraknKvdjYO/O+xau4wCfPLwZtcCZT0BHvKA
	gReh/6UUzyGnedo7Aw9NzCPSNw==
X-Google-Smtp-Source: AGHT+IFk2SC/gCXF1vOoZcz1yCGI1DG9uN2HVqfrT0piI4SZh5LsA+fKVx4uH18X8czMh+xz0xD5dw==
X-Received: by 2002:a05:6402:681:b0:53e:7881:6bdf with SMTP id f1-20020a056402068100b0053e78816bdfmr2654868edy.14.1699776099431;
        Sun, 12 Nov 2023 00:01:39 -0800 (PST)
Received: from krzk-bin.monzoon.net (46-253-189-43.dynamic.monzoon.net. [46.253.189.43])
        by smtp.gmail.com with ESMTPSA id bf17-20020a0564021a5100b0054351b5a768sm1940853edb.82.2023.11.12.00.01.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Nov 2023 00:01:39 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/3] ARM: dts: qcom: ipq8064: drop unused reset-names from DWC3 node
Date: Sun, 12 Nov 2023 09:01:34 +0100
Message-Id: <20231112080136.12518-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Qualcomm DWC3 USB controller bindings do not allow "reset-names" and
Linux driver does no use it.  This fixes dtbs_check warning:

  qcom-ipq8064-ap148.dtb: usb@100f8800: 'reset-names' does not match any of the regexes: '^usb@[0-9a-f]+$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
index 40cfee17265a..d9771e8f9a1d 100644
--- a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
@@ -625,7 +625,6 @@ usb3_0: usb@100f8800 {
 			ranges;
 
 			resets = <&gcc USB30_0_MASTER_RESET>;
-			reset-names = "master";
 
 			status = "disabled";
 
@@ -671,7 +670,6 @@ usb3_1: usb@110f8800 {
 			ranges;
 
 			resets = <&gcc USB30_1_MASTER_RESET>;
-			reset-names = "master";
 
 			status = "disabled";
 
-- 
2.34.1


