Return-Path: <devicetree+bounces-22918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB49480977B
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 01:44:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 283FA1C20C81
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 00:44:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D001D840E4;
	Fri,  8 Dec 2023 00:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PFfLYC1f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C7181723
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 16:44:23 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2c9ea37ac87so20368311fa.3
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 16:44:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701996261; x=1702601061; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9FxxKaDUsdyAhtM0TQDYaT6yIXjFwrV30U0/OXy94P4=;
        b=PFfLYC1fBTMXLO8UAP+egxpWzGHQXtXgFNgS/gv2k0W0Xw1BSow8s0z2GIGk/jrxWf
         /0ELLbewr3eHkQHQsNKTcPER/rPML4uwNxvVvpZ04pY5NWpsDRP7fAF3BZLkzDPKxuTE
         17GyADZ0oNrFRfsEOznbAZdtv97yibf1mFrbqPjCS8nFvDPOKV6Bp/22VRrPwvL/okuc
         brmcGXMJHVMpTP++/cZYOatywE/iBcBsZJI90DFXZEiN71+/uO1TJN8pGcKjiYSF/JZH
         lik8pmYhn8IGIXX9u0oUPLkUOPoEuZPKLc2dYsi0XVk0zh+e9QYGtTzIu9vPQ+crrb+o
         zJLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701996261; x=1702601061;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9FxxKaDUsdyAhtM0TQDYaT6yIXjFwrV30U0/OXy94P4=;
        b=SgBtkzKtIlSatyI4vrI54gajN1q7zONfCGNMcT2tq4ofr/dwFRMMSEWG7RfoPAm1rk
         N/XrPqC15NNhHtrq7le+0Hob5TUdNQKncA2s/oKe8gCMsitKEYbC4CPeGvoJxTss6rET
         40+3IGXEX+v1Ey45IOz4tTaomiSBbYeuPWUmKMZr7u9il4GBXYhbTQmpBXw4avSNrp8k
         hl8vpz0hTxCL7RFh5//o/cK5l6WdBEGBQ6j9rbQ8R0wEKJgJp83DUyThfxq1fh9b/wgu
         QJihcoNwYUegCyZOnjexFZcTHFoLsOBvqXxCBjIBl+meZVxutYfMHy0nbVCHJ/WqFFFJ
         CFtA==
X-Gm-Message-State: AOJu0YzycLYFfvayopYIXJzA/RaFPQIffVO+w48g/WVgkIpgrytPaDQM
	MqAzRALaKxIsiszPcmuXmujoOg==
X-Google-Smtp-Source: AGHT+IEb1TuGAuKYk/57mCoIoYoEjKGqHj46oGSc8ZF+9ZA7yMaoR1KUQ+5Mby0OqwmLH62LjMlSYA==
X-Received: by 2002:a2e:9898:0:b0:2ca:1d0:498f with SMTP id b24-20020a2e9898000000b002ca01d0498fmr1799899ljj.102.1701996261658;
        Thu, 07 Dec 2023 16:44:21 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d1-20020a2eb041000000b002c9f2c7cdecsm82645ljl.22.2023.12.07.16.44.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 16:44:21 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v6 05/11] ARM: dts: qcom: apq8064: rename SAW nodes to power-manager
Date: Fri,  8 Dec 2023 03:44:11 +0300
Message-Id: <20231208004417.3393299-6-dmitry.baryshkov@linaro.org>
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

Per the power-domain.yaml, the power-controller node name is reserved
for power-domain providers. Rename SAW2 nodes to 'power-manager', the
name which is suggested by qcom,spm.yaml

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index 95ac25e1a3b4..6832030c2c88 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -365,25 +365,25 @@ acc3: clock-controller@20b8000 {
 			#clock-cells = <0>;
 		};
 
-		saw0: power-controller@2089000 {
+		saw0: power-manager@2089000 {
 			compatible = "qcom,apq8064-saw2-v1.1-cpu", "qcom,saw2";
 			reg = <0x02089000 0x1000>, <0x02009000 0x1000>;
 			regulator;
 		};
 
-		saw1: power-controller@2099000 {
+		saw1: power-manager@2099000 {
 			compatible = "qcom,apq8064-saw2-v1.1-cpu", "qcom,saw2";
 			reg = <0x02099000 0x1000>, <0x02009000 0x1000>;
 			regulator;
 		};
 
-		saw2: power-controller@20a9000 {
+		saw2: power-manager@20a9000 {
 			compatible = "qcom,apq8064-saw2-v1.1-cpu", "qcom,saw2";
 			reg = <0x020a9000 0x1000>, <0x02009000 0x1000>;
 			regulator;
 		};
 
-		saw3: power-controller@20b9000 {
+		saw3: power-manager@20b9000 {
 			compatible = "qcom,apq8064-saw2-v1.1-cpu", "qcom,saw2";
 			reg = <0x020b9000 0x1000>, <0x02009000 0x1000>;
 			regulator;
-- 
2.39.2


