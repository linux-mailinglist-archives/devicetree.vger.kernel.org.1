Return-Path: <devicetree+bounces-22925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E60809788
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 01:44:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 62BC628208A
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 00:44:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BB03380;
	Fri,  8 Dec 2023 00:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dXh0XOCK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBE7F1713
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 16:44:25 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2ca0715f0faso20601581fa.0
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 16:44:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701996264; x=1702601064; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o0J8cjOv5k8AIvIFhvZ5YWOKOlem3yXviyX9wh+j9fA=;
        b=dXh0XOCKyw8w0dFTSjYKRx1lZ/m5UjO4RkKPZrcaGAD5QDwIuH2rYd3BA/wNArl/5g
         v+H5LvXSSba24m11Ozewk/QXbF3FrCXJFSa2DQ+wz0yXmrz1rRutLldl9yFjcbJyQa6E
         2YnqZjjZexPT1CKZWS4MPqckZ0Z+/Owv6zbKtTK6jJE5TEtlaUnE07oSt8MOVwLzo+vu
         P0TiEmjPynPsUI/+JjNOPNjafAt3UfWNHHACphwhs796wdlQs4+0CaMT09J8HIsJyvFz
         IAIAASM/552vAuwqkDfKDls1NjKiFvKGFtcm925J+NCZsCY+ut2jND7om0m4h95ZcuWF
         8zmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701996264; x=1702601064;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o0J8cjOv5k8AIvIFhvZ5YWOKOlem3yXviyX9wh+j9fA=;
        b=oTyBfW6eooDx0vGWA8sNMyZnjndsBZIwUF+Lu36fVx5WQFnMvKHRktVuzSy6ZCL/zV
         NpHrMXi2mKgdvn2iYjZVBCDFhdlsOXnRPdCrSIZkbdHWRYZXUQbaaMffNvBuYHdDSE99
         PpeR/tKtrac4+t8vwI8TFrPAVqG1kjwwI1SIOcYI1unyNM5zqmLW3s/sTc9Ro3cklYTx
         LRRAl57mF3F9p+OG5jtHZPh8yarpygKov9rlCi9N04zlQrbmEjVcPoq5moYxNi2lSe+N
         IFa1PNT4wCsNfeXjtQvNRTjqFugZpYSlE9bW/J24E6yUwmjpA7XnksiJLBhf+LANW1g2
         pD4g==
X-Gm-Message-State: AOJu0Yz/1H1ivkUYq+9mxlxYabR1VvonjIr6pJmN8VE0IKtLX+aR/iWw
	wAQSqrwk4FAG/pV6saZuZmvuFA==
X-Google-Smtp-Source: AGHT+IGYu+cg77dg5gaAt49n8XWkheQjTjDEp7wT2CxZ4HVGA8RukUV5/g6B4yxBqBXBtUe0cnCuaw==
X-Received: by 2002:a2e:a410:0:b0:2ca:1009:7afe with SMTP id p16-20020a2ea410000000b002ca10097afemr1825777ljn.60.1701996264333;
        Thu, 07 Dec 2023 16:44:24 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d1-20020a2eb041000000b002c9f2c7cdecsm82645ljl.22.2023.12.07.16.44.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 16:44:23 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v6 09/11] ARM: dts: qcom: msm8974: drop 'regulator' property from SAW2 device
Date: Fri,  8 Dec 2023 03:44:15 +0300
Message-Id: <20231208004417.3393299-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231208004417.3393299-1-dmitry.baryshkov@linaro.org>
References: <20231208004417.3393299-1-dmitry.baryshkov@linaro.org>
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
implemented for this platform, proper regulator node show be added
instead.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-msm8974.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
index ee202f3f161e..3e1e88d69c2e 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8974.dtsi
@@ -349,7 +349,6 @@ apcs: syscon@f9011000 {
 		saw_l2: power-controller@f9012000 {
 			compatible = "qcom,saw2";
 			reg = <0xf9012000 0x1000>;
-			regulator;
 		};
 
 		watchdog@f9017000 {
-- 
2.39.2


