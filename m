Return-Path: <devicetree+bounces-145825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC50A3272A
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 14:31:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A2893A70A3
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 13:31:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B76220B7F4;
	Wed, 12 Feb 2025 13:31:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gaSzHUhi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6646D18C0C
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 13:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739367110; cv=none; b=GBECAkmNS0fLsjDVT4bzjG+NJV4Ie+0xFOVqdjHU246CEn3NzwSz5vkzp6FW8A8OxjMzl/h6w1rEj55kDWHkIUbc55A7fv2YcvIC5Gx2FVqRnyxBvclJh0YGTDP0vMR26s1wQNRVzrOpcB26obspzexLHT+lyrGj95GM+fMrwlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739367110; c=relaxed/simple;
	bh=/rglsDZ8GhTlMGveE5GmqoA3xjI9/VvzmsZ19VBJr68=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Qmmy5f6VfT7OKlGtAtWMwU2lEvjcygjdDKQLcHOGUVTnjbChRyI6CXipFtGkXsBtmz3s02uE5Jq0rs1T9/xUznQMoDLathHH9GJQW4nWi7CO6zbZueXCbIJSBEfAwqjtrFKu7M80dZmSMF4uN0fi30TJJQuLQFoF2O68FH8qufE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gaSzHUhi; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43957634473so11876135e9.0
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 05:31:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739367107; x=1739971907; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lFWT2l6cxEZTfYGYKoEDAUV31A6KjbPriRcF6pko/3w=;
        b=gaSzHUhiLSwWo1z8RkqDjTFdE+DXqJ7LaA01E8tbeLXMDuxKXlmZsTZZ7ZX3nwcxiW
         ou+XuqJ9xlfITUom/A5E0Ph0yuUBAxcjtAKCIxKUgd9YYHFgXujTqaMeAm8Paz9uwWnQ
         Ijy5I3ynyPpztNkf/6gLYe7kaKOBtBYFJ5JXQMBn2g4++DbQlA9zs3GTU5YSuPfPnto0
         SjNFt1sV60GVjCrCleaDbxrkOeuj8ZKwdLuzEMP5Fg8BVMVQaXuMHGFTlMwWdgcWc1xB
         CojtdUokF8pghHA6XAB2lQrOR44+vm4kjrpUYOnzd8QnY+lVYelh7pdLq6UyPMz+Uo2A
         IAyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739367107; x=1739971907;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lFWT2l6cxEZTfYGYKoEDAUV31A6KjbPriRcF6pko/3w=;
        b=BuspQ1pOzSjKeD+xzKjS0v2lXiNXNjukacmTDv8dpWUY5NhTbX/Z9tSt/N0ay5rYA4
         a2JvfjT2pqAdiBx14hwNtG3IqSCcCXsCch5L6PY3QjsBVDV6awV4OTdEVX0jbLIBWd7+
         4bX4ZFBtjz+NzNmqhc0ZX1m9YRhQa82/JynAq3dTXiNC1Fxaq/z65CV5Oi6HLaACo6py
         08uzZI2umflr+hCFrqaO96JJQanXJC8m9YYzjBt74iPhiL0D1Yq+vX5LmjVS67+nEC5G
         ggT7j+5VrN9vp7BKVBSVeMMa5BWxqyNwkGrIP8YHikQhQ+VtzzueYlzlUsZtmSTkIye1
         PGEg==
X-Forwarded-Encrypted: i=1; AJvYcCXd65+63OW1hDMQ87fflLxFnEfYYno+w58wRmoeEoCnF0VHl9OGw/EIlJTh95mJfuiYTAevQolU46/0@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9aZng4jTSWJ2GRaSxQrNGMKHy1DhFQtrtuySz90t99Loi6seh
	LDmQFj+fl+P7+/TRCzEO2uED6vl4hMietzT74UitiSRBMPMgZdzY2uQHxLgh0Zw=
X-Gm-Gg: ASbGncvRGzxAgQvv1YhPw5HqR8evIpm+clMLQADVfsxqocnnoYjYeRoW4deaFul6ea8
	qOLq28DDVMhG8VrCDwJ46H+MMrz9zRhVZbYNQKDupHhtVGdDMasprqxQArPVTafiDwM2GCmCQH/
	lphz9Bmz3JDIWWnmZJMlJh6F50P+o9P91wRcms+AQPgf1ftAsBO8Dp5z0rjhT9pBJ+10oD3/yxP
	5iu+FCT0SwfebUQz3Wym6t4tQ7NKmI1ASSNowN68eHeeI4mj9Ei+lVyiH4Y5P3J3CDhCB5avNdk
	Ygia3IjKZXofKPE=
X-Google-Smtp-Source: AGHT+IFVOqbGYSS3Hx83KOIZ/HJCQpIBPSu9Isb/2wOaOqV+ymw9h/1gRJeQeolHZDgcMwYOU81Wtw==
X-Received: by 2002:a05:600c:34c1:b0:439:44eb:2d81 with SMTP id 5b1f17b1804b1-439581768c7mr32596585e9.15.1739367106675;
        Wed, 12 Feb 2025 05:31:46 -0800 (PST)
Received: from [127.0.1.1] ([86.123.96.125])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f1f27e612sm1141985f8f.93.2025.02.12.05.31.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 05:31:46 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 12 Feb 2025 15:31:36 +0200
Subject: [PATCH v2] arm64: dts: qcom: x1e80100: Add the watchdog device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-x1e80100-add-watchdog-v2-1-a73897f0dad5@linaro.org>
X-B4-Tracking: v=1; b=H4sIALiirGcC/4WNQQqDMBBFryKz7pSZWI105T2Ki2BGHSimJGIt4
 t2beoEu34P//g5JokqCe7FDlFWThjmDuRTQT24eBdVnBkOmIkM1biwNMRE67/Htln7yYcTBNVJ
 6U3pbE+TtK8qg29l9dJknTUuIn/Nm5Z/9V1wZGa3lm62YeuNt+9TZxXANcYTuOI4v8bJTjbsAA
 AA=
X-Change-ID: 20250206-x1e80100-add-watchdog-fa8e3d23d760
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1446; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=YO147nEgujsniEgzEicBnXRIY4pIl05vu7cN499arDo=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnrKK7rt0IB9n5YCfAXlrrkeaaQp0jVF5xsRG/b
 AiZ3NWXB+eJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ6yiuwAKCRAbX0TJAJUV
 Vu2READFfWmbXv831VqQUURkUB+zQNL5ZwQptawHo6j+mU4WH3tm/+COL05Qo8DfOMG31HAKDbf
 NPdkurr9SEL7tWjonJGqeIWEI7t5rBvsf+cd+aNap9SdpzCfPf4JsYT4NBXW18ZDo3sWgmX2EXm
 kQ5uW3JjA5SpMCEm+kld7qTIF/5mup/GJuHVHxkB9Kt4qR5JNvCcXrq4l7FDX2cPkvN4+q9fkxw
 U0O+ymP6s+7vHa48cXGMn9eHVjLkxcyXPmHoQOAa7CPyyfG7IvsIEM0aZsJeHE+T8PWc6lfjYgV
 sXuhwKFnGZETZQuj/ffrnAmy4Avjshk3Y29kSaoP3A/TCpoNH6jDf2b9ESL9l0CzhofP95njJI1
 QSS8gY67tglLNLzJXhbpCpFHGb3jjVJ3AtntDFTpR2bXbjiu/IQnLZQeHYwjKkAipcxgtJDNfRt
 3Paa5pZggXnCtR5srT+ThkAI4jMkvLPtTyx3mnvlsb9D6CyoTOmq9xKsYKl73hs/f4jH1PaI0gC
 +RIU+fI5beSkrCZVsDqg0OGvoOygyHn4LqKN4Aq4Ym7yXRWBui1G14RG3RR9iUWe8baoHd5HDxZ
 6DDQUNoXXwTCpNzKtYcac6/Qde03cTguSL5R316yuuTu46NmofQEKTYDx4L4mLl1P9PFryLhKGj
 U8YuLPmE6LOrTZw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

From: Rajendra Nayak <quic_rjendra@quicinc.com>

The X Elite implements Server Base System Architecture (SBSA) specification
compliant generic watchdog.

Describe it.

Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v2:
- Moved the node in proper place based on address, as Johan suggested.
- Picked up Konrad's R-b tag.
- Link to v1: https://lore.kernel.org/r/20250206-x1e80100-add-watchdog-v1-1-77147510c2d7@linaro.org
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 9d38436763432892ceef95daf0335d4cf446357c..766f1f996baa8a0f78485431ca46f484e0facaec 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -8142,6 +8142,13 @@ frame@1780d000 {
 			};
 		};
 
+		watchdog@1c840000 {
+			compatible = "arm,sbsa-gwdt";
+			reg = <0 0x1c840000 0 0x1000>,
+			      <0 0x1c850000 0 0x1000>;
+			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		pmu@24091000 {
 			compatible = "qcom,x1e80100-llcc-bwmon", "qcom,sc7280-llcc-bwmon";
 			reg = <0 0x24091000 0 0x1000>;

---
base-commit: c674aa7c289e51659e40dda0f954886ef7f80042
change-id: 20250206-x1e80100-add-watchdog-fa8e3d23d760

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


