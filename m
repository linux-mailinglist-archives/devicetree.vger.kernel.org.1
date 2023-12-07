Return-Path: <devicetree+bounces-22726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABFD8088E0
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 14:07:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E34081F21140
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 13:07:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52389405EF;
	Thu,  7 Dec 2023 13:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EPfspUHA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE4C110E6
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 05:07:13 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-50bfd8d5c77so768443e87.1
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 05:07:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701954432; x=1702559232; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rzx9Bm824S2wRWYFO7S2MdJvHvf/jzSVekqRFumNr7k=;
        b=EPfspUHAaW2n2DMq53kC5SqD0ittU+JLEp5tHIdXq65MemzEH5REBYMtZvRyLSg4eC
         uU+O77mXMv+WpWrsX1gCM9veFNGfBnLeWB6PHMVtROx07NPmhN7kU0AHz5WL1aXdlcLd
         NPw9bHKbARoEqsSi58yOEfUGw4tsydFUl7mwYyzxb+5jdVqURtqM+wflJUy/tFQkiMWx
         45boftz/AFYH+GEdKpol3Ft3uaZiAUja8JAUAsQhT/N2OorZuNg7U8ylAI9QpOQFTDEm
         rGmcwoow+6s8hB84B+CBgNgX/jfnnUQOxWwpLHCdmD8BDrTiz9E7eRhtS24iLxRPbvQD
         3LvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701954432; x=1702559232;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rzx9Bm824S2wRWYFO7S2MdJvHvf/jzSVekqRFumNr7k=;
        b=W6jjeGLHIQ/igFicu/Ynew9dSJ9YcGvC4GQ6eJzIJzxd/SN5jr8yJBiZRlFkbmemfb
         Ic0Fy4y5i/DWr4k00ZCoSiJFmEPvNDacuB0i8IJ0YQxD4q8qWyIEY6JXEnFmqzeXOPNw
         IiRpxgHme23ZwT+A2YV7LKFCbpDso4cEoV7PM3jjBQkPJTcklEAFosL5gcfBQCdy+uAl
         AOokmUsuea93zyxoKUzbI0FnDaZ2IjsXuSuuw+MdYMwaZI3/x7B1ju4Vcsm2Rz/qSBcf
         LV5HPhXg04UiXEnCachDqDYG59r4WNGA4f2Q7ci8p5WeReWIsZTJGRMiyyH+jpatZULu
         9vMQ==
X-Gm-Message-State: AOJu0YyTlaxCgAykHXTqFP2R2UHzn414KqsttPRGwBaiS2BV7fS0P9v1
	28uYBfe5y78pTDnjTiS30SULmw==
X-Google-Smtp-Source: AGHT+IEixdCLjEiNkYl5kW0kOJkWUb5tlY3oudtq5QiueW8AwcUOjFVFYhCiOZUnstWypxs6Zc71WA==
X-Received: by 2002:a19:f018:0:b0:50b:e3c2:7e14 with SMTP id p24-20020a19f018000000b0050be3c27e14mr689094lfc.15.1701954432222;
        Thu, 07 Dec 2023 05:07:12 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j21-20020a056512109500b0050bc41caf04sm167685lfg.304.2023.12.07.05.07.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 05:07:11 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v5 10/10] ARM: dts: qcom: ipq8064: drop 'regulator' property from SAW2 devices
Date: Thu,  7 Dec 2023 16:07:03 +0300
Message-Id: <20231207130703.3322321-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231207130703.3322321-1-dmitry.baryshkov@linaro.org>
References: <20231207130703.3322321-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SAW2 device should describe the regulator constraints rather than
just declaring that it has the regulator.

Drop the 'regulator' property. If/when CPU voltage scaling is
implemented for this platform, proper regulator nodes show be added
instead.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
index c3677440b786..191d1cb27cb7 100644
--- a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
@@ -589,7 +589,6 @@ acc0: clock-controller@2088000 {
 		saw0: regulator@2089000 {
 			compatible = "qcom,saw2";
 			reg = <0x02089000 0x1000>, <0x02009000 0x1000>;
-			regulator;
 		};
 
 		acc1: clock-controller@2098000 {
@@ -604,7 +603,6 @@ acc1: clock-controller@2098000 {
 		saw1: regulator@2099000 {
 			compatible = "qcom,saw2";
 			reg = <0x02099000 0x1000>, <0x02009000 0x1000>;
-			regulator;
 		};
 
 		nss_common: syscon@3000000 {
-- 
2.39.2


