Return-Path: <devicetree+bounces-29112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8131282174A
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 06:21:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0CCA41F22986
	for <lists+devicetree@lfdr.de>; Tue,  2 Jan 2024 05:21:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8DA412E4D;
	Tue,  2 Jan 2024 05:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lv+M77gt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F5FFC0D
	for <devicetree@vger.kernel.org>; Tue,  2 Jan 2024 05:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-50e7af5f618so6254769e87.1
        for <devicetree@vger.kernel.org>; Mon, 01 Jan 2024 21:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704172658; x=1704777458; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dFrxViamUlcIECciiL3VBSp5M0WyZ7222XAdKdYgLuM=;
        b=lv+M77gtZeBdBmWTfVpS5v0kpNhXN3k0QayCG0SZ4t4H0FDXBtGVj0dC6seys5vRjh
         njMr1m8KhSbdNz/3cZj0gDzHppPioO2qlZtVZEHf6nhjTxTXW9LYLNceQHVNr4PCt3fv
         3HD3XTn9bRzqjsSlmpNspokFeeRfP//wKKpj8JGE3pLQdiREmit4BG8VBhvWxQQBkdDo
         seLpDrcBMH7jmmg54ZMgTTB+ZKt1mPH/rHJSDDQIHaB2xJw/9VLmR39jptLhENWEcG8R
         Fdua4MmFTGeiwNYuDito+BhVZt0S8EZU8k725EWZsD6paiz3Oo2MX5aYvq1AANfrzUMu
         WOIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704172658; x=1704777458;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dFrxViamUlcIECciiL3VBSp5M0WyZ7222XAdKdYgLuM=;
        b=RLl8JtyuIF0b8KiljvnZVx2N+liuaaEPxQR9PXUBHXooEM8AbDUFl1T9Y6khKUgll7
         vS2XD/gUOO9AdycmJK91X0sKIpUnjM7ltdQgc5U4kQwcvPOnkYKq3p8CQZ/PwSbtkanF
         4f6cve9Euc2G+PblD9COQTniMu1ZH7E51MonoSnGtBPS5WKq3LyXvGUHC8OJenD7CpAK
         NzrqTldDFcF7KCRuF67eZLDXnUfiI3y10dsOPDmc6JZLcJQtDdBb37tCFIkoBspEOpt4
         6vimVuwusQHKq/qsSnD4wWz6uu6rKIif/r/mA54qZdB5tmiUOnRvlRN5pgkpKJugKNqR
         O3Zw==
X-Gm-Message-State: AOJu0YyRnxPYy/iPgx9C/Ky7J6ull/rmCcVKZMQIbFtts8VlSrUvqDlK
	DPjhrJX1jBU4AN7+K/zom6IBRbqFGok554e7zYAeSZnVMrT8nw==
X-Google-Smtp-Source: AGHT+IEt4FcYgwiJ+RvbrnNEVIu2GxjVd8DA4w5y327tZzh600THXhzhZmn5DJ9puaUsbq5W0+5P5w==
X-Received: by 2002:a05:6512:3885:b0:50e:7709:a06e with SMTP id n5-20020a056512388500b0050e7709a06emr4433137lft.99.1704172658104;
        Mon, 01 Jan 2024 21:17:38 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id r25-20020ac252b9000000b0050e810689e5sm2081827lfm.33.2024.01.01.21.17.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jan 2024 21:17:37 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 02 Jan 2024 07:17:36 +0200
Subject: [PATCH v7 16/22] ARM: dts: qcom: ipq8064: rename SAW nodes to
 power-manager
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240102-saw2-spm-regulator-v7-16-0472ec237f49@linaro.org>
References: <20240102-saw2-spm-regulator-v7-0-0472ec237f49@linaro.org>
In-Reply-To: <20240102-saw2-spm-regulator-v7-0-0472ec237f49@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1213;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=2cuZin9s0YRpL0zAWyoOjhE4ZNwfyDKxmXZtrb98axM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlk5xl8J3AZsVN1vvBTmM1EVxCy2x8IWoCjCNAn
 jwCeVzpC0+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZZOcZQAKCRCLPIo+Aiko
 1ahoCACKzGQAg4bSRNN/jdXwpx83VTbHBy3YIX+VOZalqgZ47vR5ikBK2ZnnOxCcxzi0vQtra8q
 6QdtFXyFFm2oRV1kGndXRoN8UPJvLGbVzgIfnH+Vbs9kmTqpfr7NgVm9RNZmpkCUsTL7QulMgqi
 6emliMdIa9BCmWCTAJiDT+5/7BPVepZM+NrPxY3935u3bJFy1QRR9YSRCajUDgq365husUzOMBY
 /sas0WGLzB+m4CnOPwiLK0go41ctmfGMl3v/8ullG3JGxrYaWwSvEpiGZx6t02zUMCgZ+Ud+utj
 z9VaPfsVpKbSO9IE4bIdgUR4Wy6Yo0G9m5t51cAx1+KK+sUR
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The SAW2 device is not a regulator. It is a frontend to the PMIC, which
handles voltage control, automatic voltage scaling and low-power states,
Rename SAW2 nodes to 'power-manager', the name which is suggested by
qcom,saw2.yaml

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
index 0621853c24dd..4b35b1fd4b58 100644
--- a/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-ipq8064.dtsi
@@ -586,7 +586,7 @@ acc0: clock-controller@2088000 {
 			#clock-cells = <0>;
 		};
 
-		saw0: regulator@2089000 {
+		saw0: power-manager@2089000 {
 			compatible = "qcom,ipq8064-saw2-cpu", "qcom,saw2";
 			reg = <0x02089000 0x1000>, <0x02009000 0x1000>;
 			regulator;
@@ -601,7 +601,7 @@ acc1: clock-controller@2098000 {
 			#clock-cells = <0>;
 		};
 
-		saw1: regulator@2099000 {
+		saw1: power-manager@2099000 {
 			compatible = "qcom,ipq8064-saw2-cpu", "qcom,saw2";
 			reg = <0x02099000 0x1000>, <0x02009000 0x1000>;
 			regulator;

-- 
2.39.2


