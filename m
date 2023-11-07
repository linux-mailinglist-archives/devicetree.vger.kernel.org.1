Return-Path: <devicetree+bounces-14277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB2D7E3638
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 09:04:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2E354B20C17
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 08:04:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F909D2E0;
	Tue,  7 Nov 2023 08:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qj8lAp25"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D846ED512
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 08:04:24 +0000 (UTC)
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C56E1FD
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 00:04:22 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-5446c9f3a77so4244314a12.0
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 00:04:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699344261; x=1699949061; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FB2VcHLhZHHgGwi+MjMB7tS8or/xAoujhJnXOAckqMM=;
        b=Qj8lAp25lG2Fgruy+JQzNjY1Rw/Aw1lgJVFC9UAYSuW2JGm0ONQskmFDg3qirVJwQF
         dN5IyV8IJXkWrB/wJkn0JWydMx9uR93wsE4hXmqAkgmmmgBpBcySZWVOccg6DWYgXBCv
         g0h3He2wU8MZqWV6XICIpHDftCf85oYSTCaZqL6nmLS6tRxENidR73DOca0oMGOUmQD2
         o2aM0ixzzWMqpLUxGockJfVx3Fj7vgDfY5XTmCnwzROoxTWdrvzqDiSEw2OSl3Bizk2l
         1eu5mlKSEibuAVIjLUiUcQ6+xR3hwHqVQbmmttG2Xjrw4oEBLM5iZlvt2W2a7kdPwTGb
         O0lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699344261; x=1699949061;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FB2VcHLhZHHgGwi+MjMB7tS8or/xAoujhJnXOAckqMM=;
        b=IPYwj8q2QiCQwZ+isYzCZQ1L9SK73TPYlymge0bRa9sJ/MbQAEhoIo9cK5V3jQbHKM
         +XhsgZexj/8Xns+Nm/gqOd4LXvSSdg5lxidVhdUbACAyBp8RNTuUJVQAAhDW4BYEOUh5
         yvm9kRcP9Dc8hRoIo85le7lI8Ti0Xa5nwDKg9ZFLEBwdyNzvnOKRkowif3G8jWEAohxo
         97h2VKSdBI5n+S90AOuQi4mS/kfL0acFlztK8AqNjZfXx5+64FOVi1jUKmQnBcNRAKmh
         LTUA9vd/TGahULpBuq7YGE4cGwojGkc+EuJPx4Q8Gfiel+RhmRe+rJAAeQHiJ9Y3TRJk
         tgdQ==
X-Gm-Message-State: AOJu0Yy206Uvb9PwPQlEHwxAE35Mk55c7NbWqxTn6SwnlmkSjbIc6mV6
	sKh9OKaGKpn8imHIsZ7mE/9/pA==
X-Google-Smtp-Source: AGHT+IFR+aJYWXhyvAFvm5RFoCOIyUrphvM/LPTdFXLLozBi7vigz5t/WcftOptI9fK95JruMkvELg==
X-Received: by 2002:a05:6402:520d:b0:53b:3225:93c2 with SMTP id s13-20020a056402520d00b0053b322593c2mr32412780edd.8.1699344261228;
        Tue, 07 Nov 2023 00:04:21 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id r15-20020a50aacf000000b00544f8271b5fsm83449edc.8.2023.11.07.00.04.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 00:04:20 -0800 (PST)
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
Subject: [PATCH 1/2] arm64: dts: qcom: qdu1000: correct LLCC reg entries
Date: Tue,  7 Nov 2023 09:04:16 +0100
Message-Id: <20231107080417.16700-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

According to bindings and Linux driver there is no
"multi_channel_register" address space for LLCC.  The first "reg" entry
is supposed to be llcc0_base since commit 43aa006e074c ("dt-bindings:
arm: msm: Fix register regions used for LLCC banks"):

  qdu1000-idp.dtb: system-cache-controller@19200000: reg: [[0, 421527552, 0, 14155776], [0, 438304768, 0, 524288], [0, 572293416, 0, 4]] is too long
  qdu1000-idp.dtb: system-cache-controller@19200000: reg-names:0: 'llcc0_base' was expected
  qdu1000-idp.dtb: system-cache-controller@19200000: reg-names: ['llcc_base', 'llcc_broadcast_base', 'multi_channel_register'] is too long

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/qdu1000.dtsi | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qdu1000.dtsi b/arch/arm64/boot/dts/qcom/qdu1000.dtsi
index 1c0e5d271e91..618a101eb53a 100644
--- a/arch/arm64/boot/dts/qcom/qdu1000.dtsi
+++ b/arch/arm64/boot/dts/qcom/qdu1000.dtsi
@@ -1446,11 +1446,9 @@ gem_noc: interconnect@19100000 {
 		system-cache-controller@19200000 {
 			compatible = "qcom,qdu1000-llcc";
 			reg = <0 0x19200000 0 0xd80000>,
-			      <0 0x1a200000 0 0x80000>,
-			      <0 0x221c8128 0 0x4>;
-			reg-names = "llcc_base",
-				    "llcc_broadcast_base",
-				    "multi_channel_register";
+			      <0 0x1a200000 0 0x80000>;
+			reg-names = "llcc0_base",
+				    "llcc_broadcast_base";
 			interrupts = <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>;
 			multi-ch-bit-off = <24 2>;
 		};
-- 
2.34.1


