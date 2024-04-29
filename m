Return-Path: <devicetree+bounces-63599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C02A8B58E0
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 14:45:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EF41A1F22024
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 12:45:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17FC4745ED;
	Mon, 29 Apr 2024 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ofh5GEyA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7E96F510
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 12:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714394633; cv=none; b=XMQg1vOg3UCf3dwuXRaoq/2InU8mgc3MGzVz551BDYb8+fUnZ2OKtaCHvnKBL5y/cpMRisTICrmcLDFBAb2VLtLNV2N4jOOxMvZkTibt51bB2z2g8EnIbjT1hw8+23xulLKZKp74QchNF9dTCRE2IGScIYgNkqSD8FkT3+ppN2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714394633; c=relaxed/simple;
	bh=JuX4+O/28to1//jzlaPMAiwzNgrTEGt4DxiQd4QQp4o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iiO0GwbbuatqQVZxHsOeNDmiOqfdZ0vEkxYgkKISDsiheFIpfF2Flsk7OUVFaHc9YkhaECiZufBDRTorEgA3mnSdYE1GsoR22BFrFox1pfWMRx2X4pDlUEf1+hcB+Xxv3vBuEhs8dcWvfJ7nqqmOP5VURz71DZHPM7h4OkJf1JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ofh5GEyA; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-51bafbe7509so6204822e87.1
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 05:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714394629; x=1714999429; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h4i0LlbK/jX/xdH73w22krjVoqVWeP/qUlOZlDt3qXM=;
        b=ofh5GEyAzjTZOqSVC7Qk0ZAAzeG0AF3dymhCZLeHI1jisDGM3rlS+sxOXWcMNQc0Jf
         6lcwwjmDuxxYOv/D2I/kqFMcm4+vW2nR/7+n8irnhpYIEe5N42jlbQpZ1L9lgS4Y+LHp
         +1ICiq8WhA4bvS7QP6OwXj7b/pbu/Ia5ydqeqqQP48jKcX0TictAzgcVAf641Orq6dnk
         7guUnV1O6oqmq5D79Wet1I9Zhfv1Kd7sRTSjRfhFf2FvnD/5FoJLkRQEDgnwZ2M8pJS6
         8hgMFermn/5u2FsE/QlGLzNfFtLUMHJxkwk4t//rVH8mskd0mx2dg92eB6MBdd2Z++yD
         Iytw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714394629; x=1714999429;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h4i0LlbK/jX/xdH73w22krjVoqVWeP/qUlOZlDt3qXM=;
        b=Eqbrf99dJL0qRrfvjdjr7NtpXgEK1myFDwm5X/4hjXeQJO1SG1H1A7tpZqXHHqV9rX
         +eB2k0vgNnhXcdY9QMiwAQ6UBq7mZXylPZGrsivHBlVa/+OkTo1NnNlVolQmbVyt4aAq
         p7m4D8oNBtXr0m69tV3AAb2sjEH9MKbrN+SeI0N+ICzh3EpXCXIxeRdpzVdvQRfxpVex
         NjcIhmxrWmGef3nIFSv/6YKwBnUH8eKY2uiJtY9yDTWnb34wfcZdlUNI/vGl/OUoVuy3
         rLxrg2fwqOTuQninV/UUIaHgM9pT6DJo2tBenOCbjNEmYQfENiaKE5jPrNCUXM4uWvWJ
         +EEw==
X-Forwarded-Encrypted: i=1; AJvYcCV/8cpQ4Di2mTEtRQLVXV03gIOLZP4aWyMQYKvYKFxF1Hw6P3+bhRBdn/Pu6qqk74hLadmuYXqNrcMQ28YiDra3ijJTNErpwNsdyg==
X-Gm-Message-State: AOJu0Yw/UFm+DcE7h2ppvRfiuhDQ3qiy1voZhdhTnc1Q0fwVU0ixtgal
	LoLj2PObV4WNeSLpZe6s5mq4n0nUgBOJe2k/VAqDkVvI6Y1a9v5NyWYCtoi7o0VyiF94yMtvkd5
	P
X-Google-Smtp-Source: AGHT+IH5WtQyxbb05Mnwt/rQU3LEGvC582FkSgfkOqq4d93ZtqpkEb2v1lXLG3nQmA4/L0xAlZVF4g==
X-Received: by 2002:ac2:5de7:0:b0:51a:d08d:bab4 with SMTP id z7-20020ac25de7000000b0051ad08dbab4mr7729777lfq.55.1714394629561;
        Mon, 29 Apr 2024 05:43:49 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h18-20020a0565123c9200b0051d94297380sm467538lfv.241.2024.04.29.05.43.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 05:43:49 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 29 Apr 2024 15:43:43 +0300
Subject: [PATCH 06/12] arm64: dts: qcom: sm8350: move PHY's
 orientation-switch to SoC dtsi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240429-usb-link-dtsi-v1-6-87c341b55cdf@linaro.org>
References: <20240429-usb-link-dtsi-v1-0-87c341b55cdf@linaro.org>
In-Reply-To: <20240429-usb-link-dtsi-v1-0-87c341b55cdf@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2128;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=JuX4+O/28to1//jzlaPMAiwzNgrTEGt4DxiQd4QQp4o=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmL5X+9CV7Y8tW0xXm7a3CBq0jMy9ZnlxBl7CN0
 2hv1StwfduJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZi+V/gAKCRCLPIo+Aiko
 1Re/B/9ZAm4Ed37rYeTV+CGRXdaFHEFCtGVf3k3Nym29H/hSEmWD2shAtpX5Xi0SX9zPpEBBRX8
 IP8Ii+R2rhQG1T5t7ZgOqJEni9/99fE1z2Atm2S7s6kLm1ZDYJTnLMnV925Vo6/uXD6KNouTFWz
 n8AfwBJKCyWKAU+Ba5idmkVbpGJjFC5yTmnwkNxieZJoCRkXuF/Uw6BVlOmgWpnbLSkVqcPzNgU
 16GDDQ3NodnkNKc1ED3cUsXCyphjL5ubZZJgWiOWWRmO7JgfsWpS60rq03/JiXtRweBwqaX0Mb+
 4+YC8ko6G7zz7rtBWbDJa+suTOx9pJ/yzepk37/GK9AQ3vAz
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The orientation-switch of the USB+DP QMP PHY is not a property of the
board, it is a design property of the QMP PHY itself. Move the property
from board DTS to SoC DTSI.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 1 -
 arch/arm64/boot/dts/qcom/sm8250.dtsi     | 2 ++
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts  | 2 --
 arch/arm64/boot/dts/qcom/sm8350.dtsi     | 2 ++
 4 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index 44239d1e57e9..c52357214de5 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -1373,7 +1373,6 @@ &usb_1_qmpphy {
 
 	vdda-phy-supply = <&vreg_l9a_1p2>;
 	vdda-pll-supply = <&vreg_l18a_0p92>;
-	orientation-switch;
 };
 
 &usb_1_qmpphy_out {
diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index d6c8c6c2eced..5580843e27b6 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -3936,6 +3936,8 @@ usb_1_qmpphy: phy@88e8000 {
 			#clock-cells = <1>;
 			#phy-cells = <1>;
 
+			orientation-switch;
+
 			ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
index 81e5577cccb7..895adce59e75 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
@@ -870,8 +870,6 @@ &usb_1_qmpphy {
 
 	vdda-phy-supply = <&vreg_l6b_1p2>;
 	vdda-pll-supply = <&vreg_l1b_0p88>;
-
-	orientation-switch;
 };
 
 &usb_1_qmpphy_out {
diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 24c42f285163..d67c19a59d5a 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -2256,6 +2256,8 @@ usb_1_qmpphy: phy@88e8000 {
 			#clock-cells = <1>;
 			#phy-cells = <1>;
 
+			orientation-switch;
+
 			status = "disabled";
 
 			ports {

-- 
2.39.2


