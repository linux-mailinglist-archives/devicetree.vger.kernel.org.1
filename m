Return-Path: <devicetree+bounces-15213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 714AE7E8F12
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 09:01:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A19D71C203B9
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 08:01:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6640E6D24;
	Sun, 12 Nov 2023 08:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zyqy7Kos"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070E76FCE
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 08:01:45 +0000 (UTC)
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 171D130D1
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 00:01:44 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-507a29c7eefso4625312e87.1
        for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 00:01:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699776102; x=1700380902; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TWIb1bx21KXA/e/moLxgTKfaIIIfJdvhi2i/+fjCaMI=;
        b=Zyqy7KosIWld1AAcDop2Fe0xR4u0ng2f4tP9Wefxo5LTVBei80vsxg7ZrPcZYoYpKO
         uG8Zkq1c3uVpqtXTGNt44mVVnHvt7LfUwhx8Kxrswp2WEdcBcdZEa1yOmC/DaoN7Z9Tl
         tzNRB8OpMRM5nE5Byci6IqEk3990c+qqfoMo5jbzYzcUEgysLwRnQbjM9jcDqEg66i6g
         BhBxHOcIYAzDeLqMnSYeUjpJ8OC6v2qflUwG76JCYOT4k2c+6okcf7igLqoheeNk7+HU
         dZhyOhGMxG9CxaTziGU4EMX+mCZbiWg6VEa1rhXmMkwhLJ3q06AkV08trSYqbuZ4JGPQ
         Zz3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699776102; x=1700380902;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TWIb1bx21KXA/e/moLxgTKfaIIIfJdvhi2i/+fjCaMI=;
        b=HjGqV0INM+/WcUqOKfXI1EoYKyipf44xPtkk9vqzkkskXKiFik3DZOnS4ANqv8zi+m
         zOae0vN4qIqxBUo7EqO+qRz6im0fITAnvKyRuEo9dKTxOU5fnofYIiy3TREgxjBk8yP/
         ute9FL+X+FnY7UkNC9JYriFt+RagBpcmFsmbTKGYJvDt1BW8oxzXQsWpWdFQOkfRFjYU
         fKMiLh0a2x50jmO2JCaRQPWjt3CPGb5bYLVZbzOCwzk1wbc0MZDbUTRLZgJ+8Ub9Iw9y
         f/00shZq3zgERyZbyWwlw+S731mrhidjmHPAoReutdcNBW70ONtGIDDqIa2QvobRFrIb
         39lg==
X-Gm-Message-State: AOJu0YwuL47bjGzCZlBokdqTCObWsd1NrRrlhnE05gF0Lq0+sKJck6pZ
	zouJZ1x4p4BwLU4xCNHbshBgSA==
X-Google-Smtp-Source: AGHT+IGn7yHakrWaPAN/7vTrfpqtai2xTB7Hn0e4NanBdRR9RU9Oh00G1L0zPbe4UogOqtyDxzn9pg==
X-Received: by 2002:ac2:424a:0:b0:509:4511:8ec4 with SMTP id m10-20020ac2424a000000b0050945118ec4mr2078179lfl.38.1699776102364;
        Sun, 12 Nov 2023 00:01:42 -0800 (PST)
Received: from krzk-bin.monzoon.net (46-253-189-43.dynamic.monzoon.net. [46.253.189.43])
        by smtp.gmail.com with ESMTPSA id bf17-20020a0564021a5100b0054351b5a768sm1940853edb.82.2023.11.12.00.01.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Nov 2023 00:01:41 -0800 (PST)
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
Subject: [PATCH 3/3] ARM: dts: qcom: ipq4019: correct clock order in DWC3 node
Date: Sun, 12 Nov 2023 09:01:36 +0100
Message-Id: <20231112080136.12518-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231112080136.12518-1-krzysztof.kozlowski@linaro.org>
References: <20231112080136.12518-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Align the order of clocks in Qualcomm DWC3 USB controller to match
bindings.  Linux driver does not care about the order.  This fixes
dtbs_check warning:

  qcom-ipq4018-ap120c-ac.dtb: usb@60f8800: clock-names:0: 'core' was expected

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi b/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi
index b93c7efda827..6357cd342b33 100644
--- a/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi
@@ -684,7 +684,7 @@ usb2: usb@60f8800 {
 			clocks = <&gcc GCC_USB2_MASTER_CLK>,
 				 <&gcc GCC_USB2_SLEEP_CLK>,
 				 <&gcc GCC_USB2_MOCK_UTMI_CLK>;
-			clock-names = "master", "sleep", "mock_utmi";
+			clock-names = "core", "sleep", "mock_utmi";
 			ranges;
 			status = "disabled";
 
-- 
2.34.1


