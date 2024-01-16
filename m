Return-Path: <devicetree+bounces-32161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEB582E786
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 02:49:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C1883B221AA
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 01:49:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64C8D43ABD;
	Tue, 16 Jan 2024 01:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lcbQT3/P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA55A43AAD
	for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 01:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-50e7d6565b5so11000370e87.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 17:08:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705367321; x=1705972121; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MEpBpePk2Fe+evg+9+5KRmYVDZRaE7AM1j+je/ds5Vw=;
        b=lcbQT3/PsMhZv805Uuicw5KLBibiPJkXNXINN/UQxmwJRXqwBPJHPLMv81OUDfmyl5
         vka46ommIqadXYHFxeAPd4ASnvoXO+fiTxymjBCjhJtsO6R6ku+3MyntL0DMv2mO77YY
         d2RRbwzBVDuag2RYMK6ik/rjwFAXyw2vTtyGxCl/eApbz4g4S/vSKOk12wWbM+jJums3
         8y/o3bO1bLeXE0AbLLSyiCQt4AisGxQ+Zxexhk6XUzPaTCaEuFgwk2vtAWPasJYpTH8q
         aVGOYT6r2hYTDc1AYBmuW9oI0QhUNSrOLkDmdJkB7O9kpXibzIFTWPrXwRUzo5V+kCbl
         v6FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705367321; x=1705972121;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MEpBpePk2Fe+evg+9+5KRmYVDZRaE7AM1j+je/ds5Vw=;
        b=L/CbM9eeK1Du+xaicnswQzspM1ojjH9eAieb0+/NObHSdHmo+FRBhwqUIEU7qQCcmQ
         Ot2+DcOGSb9Ngq0ZLcO1w2otm+k6PHyxB8yHeZe+owJIUHq3L9Vpia0bhciNkJGdo3Wu
         ET3arYHhGXV5EeNAvX7HuhlDITfKbNDZ0ciRjFMf8tzWtswsYvNeqqyTmA4E+xRH7Ilc
         YlJVFKEvfmM+ArbGXuUvC10893j3u/1ePGLIc7vQdD1HzZolTQbYiTGblXDeY7DnMDzJ
         FMqHz3CXdZnenMA9FndGhpgVeuV0EUTilsAUXJIW+zYS1juRrYGYG0qpgblntUyM36nv
         amlA==
X-Gm-Message-State: AOJu0YzM9T57vYz7LjMd83rvk61/nkOYwuR4+trQrb14X3swg1bcFwLZ
	GWjyYWRPiPpthUNsjEdZqTuRxv6VxdrrkZ2BAE51wtox1mprag==
X-Google-Smtp-Source: AGHT+IF8x9G3m2kXw9P+9jtMN2XrPxmmiI8kKsSeCWAJ6wKGAJ04aH5sve/NkhfTih4N6yLfs6VctQ==
X-Received: by 2002:a05:6512:401b:b0:50e:d202:601d with SMTP id br27-20020a056512401b00b0050ed202601dmr3235141lfb.73.1705367320990;
        Mon, 15 Jan 2024 17:08:40 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t3-20020a056512208300b0050eb2325472sm1615507lfr.37.2024.01.15.17.08.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 17:08:40 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 16 Jan 2024 03:08:31 +0200
Subject: [PATCH 5/6] arm64: dts: qcom: qcm2290: declare VLS CLAMP register
 for USB3 PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240116-usbc-phy-vls-clamp-v1-5-73b2da7691c5@linaro.org>
References: <20240116-usbc-phy-vls-clamp-v1-0-73b2da7691c5@linaro.org>
In-Reply-To: <20240116-usbc-phy-vls-clamp-v1-0-73b2da7691c5@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1149;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=5s+C8l9HjeR5C9PMCkzn2M15yrFw6QVI1uh1HoQRbAw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlpdcUB5Y++cfi+p9OvDh9xSmKvHvrn1QVKX8p7
 Oh2qsjYNoSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZaXXFAAKCRCLPIo+Aiko
 1cPCB/4nTVJB8iCrE0+m/U4GPT2jleb1BIy0WpsHcERz38NcTplPem5Xekmt8JzdIbRytU2hLq4
 NY0qaS4PBhsBUo2hMLH4LCfc4o1QIKMSB01pLj3B7wl0H4wnlx46MX8NZ3MY46kxhIBLNa1NOjL
 g6QAhwM2aToZWXcOgvIB4OJgfMrxc6BUhMv1gYMmwj/UkattbENA/hjTDSNQb1rwrpUVgkbOlpM
 5nMruXaSA0z592WhsqGrlMWsBmnRN7sj2I9ArQT48kWeUGq+a0Ywt/wXrwRUtZCaV+H4nG6Va2M
 eNtEWrnBU+bGM/OkCp3aaW0iV33PLptzgBAhhmQzjmQ9OGLs
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The USB3 PHY on the QCM2290 platform doesn't have built-in
PCS_MISC_CLAMP_ENABLE register. Instead clamping is handled separately
via the register in the TCSR space. Declare corresponding register.

Fixes: 0c55f6229bc3 ("arm64: dts: qcom: qcm2290: Add USB3 PHY")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index 0911fb08ed63..68b52e8faba5 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -442,6 +442,11 @@ tcsr_mutex: hwlock@340000 {
 			#hwlock-cells = <1>;
 		};
 
+		tcsr_regs_1: syscon@360000 {
+			compatible = "qcom,qcm2290-tcsr", "syscon";
+			reg = <0x0 0x00360000 0x0 0x20000>;
+		};
+
 		tlmm: pinctrl@500000 {
 			compatible = "qcom,qcm2290-tlmm";
 			reg = <0x0 0x00500000 0x0 0x300000>;
@@ -690,6 +695,8 @@ usb_qmpphy: phy@1615000 {
 
 			#phy-cells = <0>;
 
+			qcom,tcsr-reg = <&tcsr_regs_1 0x6b244>;
+
 			status = "disabled";
 		};
 

-- 
2.39.2


