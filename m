Return-Path: <devicetree+bounces-175350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E54EAB0B42
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 09:10:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 44715166240
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 07:10:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC755272E4A;
	Fri,  9 May 2025 07:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cbbPfbdJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2DAF26FD80
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 07:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746774552; cv=none; b=PjIn9EQY9MN2vWn9fq8FE1wEfEgOAoSO9G23tf/AKG/LkvnAsVgGtQreLUAWFBLfEjRaMP+kNi99VU6/1w7Tn9Dwixv5IEeQa2vcfvDAxH4a/nl+NvfAFj+2oHA7/r6373tkJjZ/CaiDMhdfp/z6dypsaNn9eHXZHeDMb+9ftIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746774552; c=relaxed/simple;
	bh=ZVm8xeMld43/fYnh9mURv7CenW/hOS0NVnjxgb8fE18=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=h155Tlis+A+QBRtQ8DbemL/3sf31PNIYNbXOX1XGD+NIv/mcp8Bjxtd+MzPLstbTz0cPUyAQXdPVCrtmCokfqbbNDBn3vwLjFudrEILfiz2X7iBr35/im6GS/Og8egtQUd9ojBLWsW82M957MgsnNoHi0i/AuiR66RWL5AvlpCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cbbPfbdJ; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ac2af2f15d1so229942066b.1
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 00:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746774549; x=1747379349; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Zvt2Rw9+YHtceEtGbayUtrZs0nBFqWCQNSzIC9wE3II=;
        b=cbbPfbdJH9pKfJGD2b8gZOrYIjphHxFGpw9fUEL0dKUCXKwQ3NQBs++pbH2koSICVh
         wkkcqiaNu89rDBQLuo6jpNHWPnFuTftS3mQ8IVKGJkT1QssN8A4A/q6vpzDMAiJqYA4j
         cq1Mh54X1+GQgForiw1et5lz1vAyn/E3XaFt3UY4SDerNoi0fMEO+9ZQhMp2rZlYhZw/
         SRJjcj0+fyxSdhfsG39DKzkn29PJClsK1RZVNe410CENbQNkDxwXR3gkWgSG3Oq8EdSF
         NgxdDtel1QR9pavwng5MlBNSzny/+wylcaPWm6wPAzoZfX4I7Cz0ru+1Sndxyr/wDk5H
         YCXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746774549; x=1747379349;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zvt2Rw9+YHtceEtGbayUtrZs0nBFqWCQNSzIC9wE3II=;
        b=ZD7Ncq1XjHaVCKDwXYfDp+xA5fYmcz3v7qfn02X8/wF0qfmZmWwpCTHetCXAgutQij
         PMdWg8F4lon8Bg//tjsrUaWG4caBi+yuWw5mZzUOSsi4zgss+uT0sbrWwEIKyjlTL3d/
         gCuqJyhluQJMydfDETCi8QJ2dJHzcPcFJTObgT2yKERzBRyOV8RO2CcPtUZfRsohwWVk
         sVdQCfiPJZ/f7wqAeHg1Y4XWV8eGoeAS8/GwnsjmRA+cBMHgUKM7TqOanXStV9ktTnRa
         i2fm7pdPeDMz809kgpOFExUjjHKRRtL8rrykokXv4r01r3dO8H2zrKrykHYbbcbSEygU
         TRHw==
X-Forwarded-Encrypted: i=1; AJvYcCWn7bhNKPue5U8CpqqBMF3wzIYLiJr/97QaYv8UJ/RETcXUNltAbioCgQnSLJK6xI+XkFt4ryKJsUzN@vger.kernel.org
X-Gm-Message-State: AOJu0YwlXPWCIg2oXycu7F/dQ+ugmBbCZcXzAuaba0eztvNQv8L4TQgy
	xf8GQUMU/9KH4IUin3/+L7MjgcNxuTvZot1/4jEYgqZYJisGCk+E5QzAN6taXWU=
X-Gm-Gg: ASbGncu8ZhPrPuAm7xfLR2c8Z7njhhSl3N3kQJNe4u1zR0Gt7tF7xUpdBtPmgq8dhwY
	hpMt6kJ+S+b94TL6WO6bOzoxp1BropVvQEUUspzq8PX3tOdy0/Yfyeo7d1mju2vlVZztFvejLuS
	1oYaRiT9OCYb+6WtVpT7mICS5pxTskHZPe7UfAGba78uHvWEhYkEITON3s71fbkmdV/CV3BlTMI
	fCxWD/yYYaisrmpizKHL7hkO9jbeIT8mqQdLq6GvoUVwMYVBb/yzCUbTTFIcVPWnHberO3nRMVq
	QeDNzL4IZ1BSSDU11gEIJnogdOuf53zjoermerY=
X-Google-Smtp-Source: AGHT+IHHKtYD3BVlXZien9UvwLeNx/sm24xmFu3jvyiLMD1Snoou0Mq/cMTOOhacbpKhpu86eCgn4A==
X-Received: by 2002:a17:907:9689:b0:acb:5f17:624d with SMTP id a640c23a62f3a-ad21929f4bemr248898166b.57.1746774548934;
        Fri, 09 May 2025 00:09:08 -0700 (PDT)
Received: from [127.0.1.1] ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad2192caf92sm107353766b.3.2025.05.09.00.09.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 00:09:08 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 09 May 2025 10:08:52 +0300
Subject: [PATCH v2] arm64: dts: qcom: x1e80100-*: Drop useless DP3
 compatible override
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250509-x1e80100-dts-drop-useless-dp-compatible-override-v2-1-126db05cb70a@linaro.org>
X-B4-Tracking: v=1; b=H4sIAAOqHWgC/6XOTQ6CMBAF4KuYrh0zbfiprryHYQHtCJMgJVNsM
 IS7W7mCy+8t3nubiiRMUd1OmxJKHDlMGeZ8Um5op56AfbYyaEoszBVWTRY1IvglgpcwwzvSSDF
 jBhdec7twNxKERCLsCXxny8q4qqudV7l2Fnryekw+muyB4xLkczxI+pf+MZY0IGBpbVFbXfga7
 yNPrYRLkF41+75/AecF+F3xAAAA
X-Change-ID: 20250429-x1e80100-dts-drop-useless-dp-compatible-override-db8562c6b7cd
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, Xilin Wu <wuxilin123@gmail.com>, 
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>, 
 Srinivas Kandagatla <srini@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, 
 Sebastian Reichel <sre@kernel.org>, 
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Konrad Dybcio <quic_kdybcio@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=5039; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=ZVm8xeMld43/fYnh9mURv7CenW/hOS0NVnjxgb8fE18=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBoHaoOTlSmAxcy1zImiBQn6CIqbQcS0TqJVpOP5
 liESPLvT8GJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaB2qDgAKCRAbX0TJAJUV
 VoM0D/9LA/64zq3EP3lbqwqltxQUZEyd52AH+ACtd7dmaAk/0hhxJtwDaXIG2281G4iO11RB1GL
 cJVeAtxb0O2mp5NaOTik/q94NCMltCZOa+lb8eGJoWzQH1VXgFrlKD0If6faEtXi+b5Tcvfd6XC
 iEbKm8V3cr9NptQAiFnZQIzYutnAzyYk4S37pvk7MHN0qrY+DmmdPmfgwAzzgzoSvM5yTZFiCS3
 QHWf3UFAKe7R2PyrSGjFibfVqnbT+gjOt/yTLp7V1Wmj6NoIX8kxBjj3MFJg4A09ym0rJDy2rYc
 ETkwYnb0eJK5OmayQ8nh1kwqLYH1rWa/PIZMARtmkSp3gYay+DF0zmBtRRGetH84DpuAvg8a6cZ
 0YxtC6s86L1DoLf2dPu+T3gS71mpGDhIxwFFBB4vWPGaST99bK7yi0re6wiLcKmYdPMmpiY6lUJ
 qJhK9Kjd6rjoUXt846+ifBxbr9Dqg0rv7FvClDEuLzxUbVmFSy/aChGrly3/R/jTzZs0ifgU27B
 mI4jUW1xDOp6VY4OC15NAyrUDRFtEfdXuOiRIm0gD6JRc2pBOOC8sYtq7v5WA9GACW+EsK4Kah/
 oZTOw2SKmhbqJrLwmfgPOHRPFPBp+f26BhNAhsZ6f348OWk+urpxG8wL3lxXWNAs/UwkG6gYQ4K
 9KAFliXWy5Nb2WQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Back when display support was added initially to CRD, and we used to have
two separate compatibles for eDP and DP, it was supposed to override the
DP compatible with the eDP one in the board specific devicetree. Since
then, the DP driver has been reworked to figure out the eDP/DP at runtime
while only DP compatible remained in the end.

Even though the override does nothing basically, drop it to avoid
further confusion. Drop it from all X Elite based platforms.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v2:
- Squashed all patches into a single one, as Johan suggested.
- Picked up Johan's and Dmitry's R-b tags.
- Link to v1: https://lore.kernel.org/r/20250429-x1e80100-dts-drop-useless-dp-compatible-override-v1-0-058847814d70@linaro.org
---
 arch/arm64/boot/dts/qcom/x1-crd.dtsi                        | 1 -
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 1 -
 arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts     | 1 -
 arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts       | 1 -
 arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts    | 1 -
 arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi    | 1 -
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts                   | 1 -
 7 files changed, 7 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1-crd.dtsi b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
index dbdf542c7ce5132ef37a68bfae293a09488b0a0a..c9f0d505267081af66b0973fe6c1e33832a2c86b 100644
--- a/arch/arm64/boot/dts/qcom/x1-crd.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
@@ -1148,7 +1148,6 @@ &mdss_dp2_out {
 };
 
 &mdss_dp3 {
-	compatible = "qcom,x1e80100-dp";
 	/delete-property/ #sound-dai-cells;
 
 	status = "okay";
diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index 962fb050c55c4fd33f480a21a8c47a484d0c82b8..88cbf2a8186188acbc29baed13169fb940f83c73 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
@@ -972,7 +972,6 @@ &mdss_dp1_out {
 };
 
 &mdss_dp3 {
-	compatible = "qcom,x1e80100-dp";
 	/delete-property/ #sound-dai-cells;
 
 	status = "okay";
diff --git a/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts b/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts
index c94ddba5fbf1cb8ab2bf841cf51ac3553e1f95cb..a9ac4b81daf630853fe8c6cbe44aae5269d65958 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts
@@ -479,7 +479,6 @@ &mdss {
 };
 
 &mdss_dp3 {
-	compatible = "qcom,x1e80100-dp";
 	/delete-property/ #sound-dai-cells;
 
 	status = "okay";
diff --git a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
index 199e256743521de82d98b38699f96697c5570e66..e3f9354aa8ab2e99a547bc8c8773b4c43d064c83 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
@@ -1154,7 +1154,6 @@ &mdss_dp1_out {
 };
 
 &mdss_dp3 {
-	compatible = "qcom,x1e80100-dp";
 	/delete-property/ #sound-dai-cells;
 
 	status = "okay";
diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
index 9fb306456e33a16db37522b3ce9099cfd58c14e2..873ebafa933aae7086b09f7fc8ee5099119e5b0c 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
@@ -615,7 +615,6 @@ &mdss {
 };
 
 &mdss_dp3 {
-	compatible = "qcom,x1e80100-dp";
 	/delete-property/ #sound-dai-cells;
 
 	status = "okay";
diff --git a/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi b/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi
index da8cef62ae730266b8782ea0a7efedf51c9f547d..26ae19b34b37e0e3c67eb4543de898e94e62c678 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi
@@ -945,7 +945,6 @@ &mdss {
 };
 
 &mdss_dp3 {
-	compatible = "qcom,x1e80100-dp";
 	/delete-property/ #sound-dai-cells;
 
 	status = "okay";
diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index c0c8ecb666e178752da8e1d5c22ec2b632776129..4dfba835af6a064dbc5ad65671cb8a6e4df79758 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -871,7 +871,6 @@ &mdss_dp2_out {
 };
 
 &mdss_dp3 {
-	compatible = "qcom,x1e80100-dp";
 	/delete-property/ #sound-dai-cells;
 
 	status = "okay";

---
base-commit: f48887a98b78880b7711aca311fbbbcaad6c4e3b
change-id: 20250429-x1e80100-dts-drop-useless-dp-compatible-override-db8562c6b7cd

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


