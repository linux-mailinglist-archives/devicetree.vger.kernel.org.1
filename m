Return-Path: <devicetree+bounces-29111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C4E821749
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 06:21:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0D3F21F2284B
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 05:21:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8882A3D7F;
	Tue,  2 Jan 2024 05:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l0ElC/f5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4869EFBE4
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 05:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-50e9e5c97e1so569542e87.0
        for <devicetree@vger.kernel.org>; Mon, 01 Jan 2024 21:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704172657; x=1704777457; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qYsFiIpWrc4BIxXKOne7VG9wtKzsVeNKWc1rPsU0p94=;
        b=l0ElC/f5EIP49dlH/MFcDXPZm/29Qppnp1XbRbzqafOvsxCd7UxSkMqz8rh0i0i5Ab
         t1/jgkj5Xm9Gam1w8948CtsIy2UbKEpY9/bZyVzoi5k0RPEl8aSqYaSwryi47LqMrOX/
         9/oi3hc+NH4L5AzfdJqTKQGSxWhVx9XnBPxz78IyA8e7109ZnDknIpTojiIATNLUlBF3
         yhzsgc/U2RG2JsHaIKH2djiQ/eA+kXTG/FOfTNPFCjsi86Lwxb5xONbKogOkmuGlTNRP
         VS9M9+bqZKxbeDxU4zFvOJoMgzFOVbbr2AvnNgtgQPY4Fz2uhPesbOCUX5oRkMyobuS0
         XbEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704172657; x=1704777457;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qYsFiIpWrc4BIxXKOne7VG9wtKzsVeNKWc1rPsU0p94=;
        b=JZbrN0PMBmKr/eWpMPOYxuiSqY8piy827sKwDIZrCf+1TbA/w6WLKOPMpmL33KeOYx
         kdID4KSM5Ohg8otIJvLhsjrK70GUmYyX9pratuU0JD36uFweQ0ZpG6x9r555rSzSNK6J
         jMsEpJQl1FF02OuAaw4CobSol1K5WfNxeciqcElFA/5PcufTwA38DyUJZ/FiEZMf660v
         eIjO8XArgg+NhXOK8CuuCEQ3h3W5OMMBsxE4XNYuuLgcNi0crPRjhuk21XNeg4Q855V/
         HOF0wE77zS8gGwiN+ObjLgPrF/Lk80XVjkqe0NFZALU84p4pxgvNejUiqG8/MPOdy9tM
         tv8w==
X-Gm-Message-State: AOJu0Yz/zc663t9LqQOGolUgg3xDigJ51TG17DXTgzG+uB6Xun0v6MyT
	LjkK6QAKDx/uh40OTkCBLsPz0tyzq/icOA==
X-Google-Smtp-Source: AGHT+IG3QMNOtAejc1VAnWNHZfxLC+VVcsM4K4ahbLzSYkg5T7erU2tuwhZk2oOakUWvxidNCdeQTQ==
X-Received: by 2002:a05:6512:3404:b0:50e:9e5b:497 with SMTP id i4-20020a056512340400b0050e9e5b0497mr534408lfr.137.1704172657537;
        Mon, 01 Jan 2024 21:17:37 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id r25-20020ac252b9000000b0050e810689e5sm2081827lfm.33.2024.01.01.21.17.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jan 2024 21:17:37 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 02 Jan 2024 07:17:35 +0200
Subject: [PATCH v7 15/22] ARM: dts: qcom: ipq4019: rename SAW nodes to
 power-manager
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240102-saw2-spm-regulator-v7-15-0472ec237f49@linaro.org>
References: <20240102-saw2-spm-regulator-v7-0-0472ec237f49@linaro.org>
In-Reply-To: <20240102-saw2-spm-regulator-v7-0-0472ec237f49@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1745;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=XVou/NnyWvS3EHe+IFLMBNA2Nv7Te161u7cedLfvtoY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlk5xlShXIbS/y+ae/hWdoHH3NTkMb1qF85YgfR
 +TFs/+KS3mJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZZOcZQAKCRCLPIo+Aiko
 1dZaB/9ixJJeJVH5VlscDvxqMVW7dsWftAIb/mbsoFUC6KYoy8MqgrGUdIikFfBX5f3ADEtN+Jd
 kI1z3juktUztKZ1ST1gBRMlTXGVfyInlLBTRvC5ZQRHn8ErVtU+jzhjZkvin7KvLifZlsQ3/ISs
 y533UXmGDV8DjDSr4gMji4Tb6vWchHaH3oSEDqk2Svc0FccDWYcWOowxg5zMNnVeSIfP8x7eJd1
 emSDRZhhHx1mN2JQAt3nG0sq9P4ZyacazKapqBskg5PdQB3f73ZgrbT3hPhAYRLbZJgoDWHf03U
 hbfw+8SAoYjPCwW7RB4Lr/T1J2pp8dTX9rZvdCXw+Hu8zqq6
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The SAW2 device is not a regulator. It is a frontend to the PMIC, which
handles voltage control, automatic voltage scaling and low-power states,
Rename SAW2 nodes to 'power-manager', the name which is suggested by
qcom,saw2.yaml

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi b/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi
index 948c6fd91f62..cc94942db468 100644
--- a/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-ipq4019.dtsi
@@ -350,31 +350,31 @@ acc3: power-manager@b0b8000 {
 			reg = <0x0b0b8000 0x1000>, <0xb008000 0x1000>;
 		};
 
-		saw0: regulator@b089000 {
+		saw0: power-manager@b089000 {
 			compatible = "qcom,ipq4019-saw2-cpu", "qcom,saw2";
 			reg = <0x0b089000 0x1000>, <0x0b009000 0x1000>;
 			regulator;
 		};
 
-		saw1: regulator@b099000 {
+		saw1: power-manager@b099000 {
 			compatible = "qcom,ipq4019-saw2-cpu", "qcom,saw2";
 			reg = <0x0b099000 0x1000>, <0x0b009000 0x1000>;
 			regulator;
 		};
 
-		saw2: regulator@b0a9000 {
+		saw2: power-manager@b0a9000 {
 			compatible = "qcom,ipq4019-saw2-cpu", "qcom,saw2";
 			reg = <0x0b0a9000 0x1000>, <0x0b009000 0x1000>;
 			regulator;
 		};
 
-		saw3: regulator@b0b9000 {
+		saw3: power-manager@b0b9000 {
 			compatible = "qcom,ipq4019-saw2-cpu", "qcom,saw2";
 			reg = <0x0b0b9000 0x1000>, <0x0b009000 0x1000>;
 			regulator;
 		};
 
-		saw_l2: regulator@b012000 {
+		saw_l2: power-manager@b012000 {
 			compatible = "qcom,ipq4019-saw2-l2", "qcom,saw2";
 			reg = <0xb012000 0x1000>;
 			regulator;

-- 
2.39.2


