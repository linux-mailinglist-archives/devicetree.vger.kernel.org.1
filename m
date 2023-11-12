Return-Path: <devicetree+bounces-15212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 522787E8F10
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 09:01:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0D4F1280CCF
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 08:01:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 703AA63CA;
	Sun, 12 Nov 2023 08:01:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cBmwDQGr"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3C46D3F
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 08:01:44 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C182930D0
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 00:01:42 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-507a29c7eefso4625284e87.1
        for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 00:01:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699776101; x=1700380901; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1YkEVGPbnVHL4DFLlBtIPj1GLSIh3cepxMx8cCgbs64=;
        b=cBmwDQGrTkmSdSKV6sa+N1dNC1QkNQchWndIs2HhImACMyeNPD4C7O7WwAMpGS1BX2
         9sjIL3vx6yNhlOdrJ5HeOWqB/rZOxPIJX4ocoI+rKHi7zBFIPQZepaZZyxpQSlPbif1l
         1+ACwjiQ2gpGiFE/3kgy7AHzI0dBGjFUjda8hWnh3s2sCS09Zs1ARFVJkQtIDnZsUhmJ
         zo1ogYtdkZDMiS9yco9pT4privbXvIUAgF10MRGghvRktkq4GXnk8Z5DkToxgNoBP7C8
         37pAU7/x1eyphQbauCxL84BW21lwSBJCeK7d1SCAdP0wt1ELlX/NtCoGe6rT+nn5zjQ3
         IBBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699776101; x=1700380901;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1YkEVGPbnVHL4DFLlBtIPj1GLSIh3cepxMx8cCgbs64=;
        b=UDS0YtWGTVvW1VCVkgos7OohmsE4W1bYprfDYpWEGuowLftTxpdQB+31BOa4CFQtn6
         T4ePgIxaChNMWoPHBCrXnKWNmOBd5oEgy5Ptfw4Ytrg1oWWDh3ZZXbymWFNzHQg9h0XN
         iXfV8Um3Lyr6DmT2xuQ9KOa4rb32OGWJ7+vKhcH5JxxfdJrYYgVar4FKwZIuxkQSidMd
         PG18GBDftMP1+nOUy0pfMfo+McXd5EaAcfbJ+tSKotTln5fIEyq00dKGXb3XgoLgMuGq
         Z30SE/fs5zEHt6WtFyDpKrUCVJRubhs/K2Sn9LFyW3XxmjNzJzyq0Cn2xrZcglfNuiU8
         05wA==
X-Gm-Message-State: AOJu0YyGnsVVgZyx5MoldwZZ1rTmbuAOsEkZQ60/k8R5U6FOeKimngCO
	wUaf/eGvtIc4Nduut5OgnrNaag==
X-Google-Smtp-Source: AGHT+IHckzJzCr9O+a6Q5rN/TZclctvopWIQCNS9enTdQVVVfe+8kPGEh77l+iGTPFvs3Szh6kwycQ==
X-Received: by 2002:ac2:54b3:0:b0:507:b14f:e3bc with SMTP id w19-20020ac254b3000000b00507b14fe3bcmr2230278lfk.33.1699776100696;
        Sun, 12 Nov 2023 00:01:40 -0800 (PST)
Received: from krzk-bin.monzoon.net (46-253-189-43.dynamic.monzoon.net. [46.253.189.43])
        by smtp.gmail.com with ESMTPSA id bf17-20020a0564021a5100b0054351b5a768sm1940853edb.82.2023.11.12.00.01.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Nov 2023 00:01:40 -0800 (PST)
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
Subject: [PATCH 2/3] ARM: dts: qcom: sdx65: correct clock order in DWC3 node
Date: Sun, 12 Nov 2023 09:01:35 +0100
Message-Id: <20231112080136.12518-2-krzysztof.kozlowski@linaro.org>
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

  qcom-sdx65-mtp.dtb: usb@a6f8800: clock-names:3: 'sleep' was expected
  qcom-sdx65-mtp.dtb: usb@a6f8800: clock-names:4: 'mock_utmi' was expected

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-sdx65.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
index 49c16ee2e169..7a86bcb52cfd 100644
--- a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
@@ -496,10 +496,10 @@ usb: usb@a6f8800 {
 			clocks = <&gcc GCC_USB30_SLV_AHB_CLK>,
 				 <&gcc GCC_USB30_MASTER_CLK>,
 				 <&gcc GCC_USB30_MSTR_AXI_CLK>,
-				 <&gcc GCC_USB30_MOCK_UTMI_CLK>,
-				 <&gcc GCC_USB30_SLEEP_CLK>;
-			clock-names = "cfg_noc", "core", "iface", "mock_utmi",
-					"sleep";
+				 <&gcc GCC_USB30_SLEEP_CLK>,
+				 <&gcc GCC_USB30_MOCK_UTMI_CLK>;
+			clock-names = "cfg_noc", "core", "iface", "sleep",
+				      "mock_utmi";
 
 			assigned-clocks = <&gcc GCC_USB30_MOCK_UTMI_CLK>,
 					  <&gcc GCC_USB30_MASTER_CLK>;
-- 
2.34.1


