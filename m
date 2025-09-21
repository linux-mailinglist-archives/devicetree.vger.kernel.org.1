Return-Path: <devicetree+bounces-219667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A03B8D63E
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 09:13:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29D89442868
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 07:13:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EA502D7D2E;
	Sun, 21 Sep 2025 07:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aNylwbN7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E392D7380
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758438712; cv=none; b=JwqmS3dNioG2IYiEI6ncYOE3ugUZs5ZQLuKUGQJwatQrJz5ZtTVGSQHTi3ABKqMW87EBNVNGlPStXvjEUi1yV41y4/hQmxrb9UCyE/DaeOMZZ3gZ4hqJJf2V91u6Wu2CSLUShoKZZhE3ls1ch6IYZL6LPtZg0TwoEop98N7IikE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758438712; c=relaxed/simple;
	bh=VhYTzUolbufxaESghv8gZLpsgZz+FTDDDwev4YUsveU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cCe04YM7ufscThFfwUv6mtde41rLmCGqPrzD2QuMI3vskSSIA/Y0PtQgJ6dTpgojg9+kcYU56hvti6jEqPJ6264xyR4+mCQQ8LLeLwTAq25l456j0T7ujXHEMS4bEgdsuD4W2Mu6Vjv5aSch8OU3Jh3nTOv+QVvzfQVi2oXzj7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aNylwbN7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58L5GnND028518
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mypQ42Drvrrn6IxGswDfWm115whUcdxGQ7XhaSL+ChY=; b=aNylwbN7J8ioBZ11
	ur29I1P8MvfngSFE6WlanoKH3g4b6a2ln19nNwj2M2IhuB9PowkxNBrcJZjEg9pn
	am7JPgIEvI4Zw6z3m9rYbEn0fX6UCDwK3dBU873XM/TXBfjADU86EyF7dRtapgCh
	eIU+jrKBFh+2KXEKiFjL36vZq1/H/QrwXNWFOo2BQ3P57z+S9coPMKEMaC+fgjU/
	h4Y87l5iUCppW1zbHz+fGfCPiB9cD9Cgq0DkbQqXgJNybON4dnsUHjx/KAs/DRxV
	E6CUQ76yXe5VTxVw3odCESa0aGWe6QprrEnx3xV/VjBUScOjUGF+4lzwfvNN7kgh
	ObP9Ng==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyej2fr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:50 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b78fb75a97so37755431cf.1
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 00:11:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758438709; x=1759043509;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mypQ42Drvrrn6IxGswDfWm115whUcdxGQ7XhaSL+ChY=;
        b=EMsp/QVc7vUVeTyBVqjiL3OydL6LlPBT/u9O7MdVe4p258gf4b+8IqpiM8XDUYUi50
         JvduJ64aszIGWtNV+2ApaSDGyrMvsBpaZ5MvnpW9g4xQIyAtTzX+sIhYFOcsdbgmiG8s
         xhWCLTxYHycYIzuCiwY+UPoGWCpj/ywiECGI6uvcMqrDDLDpYmU1dExU8YldXxGCiNss
         pp3D4gU+tRZt6mzhCwA9FXJAdJEchCIxzupx0ieQVRIJPt8S/AFyPhtQEI8R6k3UqYQy
         VaWpdYgAHkcagqpaRTATlfVJnvJHbeM+1giJyHa/cRu3++ZmT0mbR6cFvPj6hF105xAL
         W7Bw==
X-Forwarded-Encrypted: i=1; AJvYcCUvRTw9FcvTGXL+/nuM06YfO1JMTYhRUZsUo59IZ4bUBUYPnhfNbls76lEsK1aQ/6trmGqhcWpWZXqm@vger.kernel.org
X-Gm-Message-State: AOJu0YyNpwNldShJ//JPZYo+H/TQi5ETGxkO3uEBQptVHyUd0YSIudaQ
	/Rt4DHiZ4cSfbJDvEmYETpJK6VYDEr8vi0E1tSk4qRO4JqyOYlWJwF2L7JOB0LXHQe6bfUzrGlQ
	fnkqhpo8gRp8BVsk460J7GlBcMBcWRpyiHzGcOk/VnCPGfG0khOYrKdBdDr1y6wJV
X-Gm-Gg: ASbGncvS9uP4y0SBjNN+NTrzvSjf+itP/pXe2xgzLM4mzVyZCzPzBegqxsALB7ZPzMr
	AajmmtYaF27bUx/HDz2i3glZ2rr6sq42d7okJChOelu3coVbldOLHDAA58tOlGNsM0pJW471DBi
	uxboyVU/tIIeOHu/hRMMIrZZ0oUE78WApJZoaagV79uJe94KKVt4uyZ7ykJ6wkrPWAC5kzOI5Hs
	ll9/8Hrmz23yRtDZ2s5KAPR9luR7vdQ5Ujrxrmhqp69FIK6USM9LbNkLIZ3og/452BxnwKUCILR
	zbYVnixU6EZ2j/MuDAhGoL59acUdXMWgIbTmDyupCYUweMSAOD0E052yck+4vieuE0e39xAmF9V
	5w7YA2L2K5SsDr/zWI0pNujFVL8tA+sMUiJu2QWgJpzXGbm22VuXD
X-Received: by 2002:a05:622a:4d91:b0:4b7:aa6b:222f with SMTP id d75a77b69052e-4c074b0a761mr107021751cf.75.1758438709051;
        Sun, 21 Sep 2025 00:11:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHNR1J5Pc2zYhnImJLqEirstFrMP5PnaezKgVKx6fA4rYy15rPRo3GIcTIcJwGJSG9y9CUW6Q==
X-Received: by 2002:a05:622a:4d91:b0:4b7:aa6b:222f with SMTP id d75a77b69052e-4c074b0a761mr107021611cf.75.1758438708584;
        Sun, 21 Sep 2025 00:11:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57e06875c2csm144031e87.4.2025.09.21.00.11.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 00:11:47 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 21 Sep 2025 10:09:26 +0300
Subject: [PATCH 10/14] arm64: dts: qcom: sm8150: add refgen regulator and
 use it for DSI
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250921-refgen-v1-10-9d93e64133ea@oss.qualcomm.com>
References: <20250921-refgen-v1-0-9d93e64133ea@oss.qualcomm.com>
In-Reply-To: <20250921-refgen-v1-0-9d93e64133ea@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1277;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=VhYTzUolbufxaESghv8gZLpsgZz+FTDDDwev4YUsveU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoz6UiKYMiqw/uDGIPTMbKt+3T2R4H8usE6oqD2
 P3oyEs6cfSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaM+lIgAKCRCLPIo+Aiko
 1ee2B/0WkIHg/IJdqp2iyDLzmPkQpeq1+UiuDFBF7CFYor+P3PI0dHKferWbKWQNM9A7dT3/Pmi
 eBSpNH1dzMkqcg/bQUpZt4rzojfgZQhQDTSsOkJDCePd9YQEHoh0tqcnoFlSN+tvoHuTy2QkB/M
 9Sh+SsJ1pH41qwFsnPlY/+L0t4pFwM3ZLCt5bD7qQJpSFHN5ZMSN6OFpSQSmH7YjqzEsujB82WX
 LSeHc6BcH69WUxm2szwvyro66aSYOwGGpDJyXM+HbR5aX+Jkeucv3RjHaeJZjV3YU7Z6HTn0GOx
 55XYUcOnXsAooAHyTSm1B7IzqB7LTBxetQX7PE0FR/fDrYg+
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: gcb2JHmrSqGpAJl97uwYdgEmI030zbY8
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68cfa536 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=XZOqtvWFhPgZnOB8h3YA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX1V9c4QBCDnov
 SNH1YiDoTzIzxoOHrJy76HHlfQqxo8cSZu3GlC6lt+IyPStIZwDycb8HgJIGUWV+lEol4o1nWKy
 T4686GgMJRLtkAqIO9iHEtERVRNGfyQR+pwch3kHAbmBJkxR/lq0KaCElB5CorLr2hhIMcY5i9W
 trdjAi2B/fAljW2vj0O2rMalVlGNzogsKUMTTzMUB1xTi7SBeqHG4o6Jj6F6PMCDcz/9gFO3abg
 y+XzV8m4V70wTr4SCDL8CpFibaYi7rsLJmFbULbbUz8qCP6zqxDrIYQ08AR8Y+EhGfSmIcnZQNy
 7fE3JY942KKNmNQvHzX+PT+Dou7UgoLRfEEFZvIHyxZFqu1fJQWcX1SatoTiQY2JM9NfvnhhTm4
 Wg24n6HQ
X-Proofpoint-ORIG-GUID: gcb2JHmrSqGpAJl97uwYdgEmI030zbY8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_02,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004

Add the refgen regulator block and use it for the DSI controller.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index acdba79612aa8f8ad714ffd93d84ac572afdd47a..1ea2beb9e2eaccf0e39dd2baea853d0152e48477 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3469,6 +3469,12 @@ usb_2_hsphy: phy@88e3000 {
 			resets = <&gcc GCC_QUSB2PHY_SEC_BCR>;
 		};
 
+		refgen: regulator@88e7000 {
+			compatible = "qcom,sm8150-refgen-regulator",
+				     "qcom,sdm845-refgen-regulator";
+			reg = <0x0 0x088e7000 0x0 0x60>;
+		};
+
 		usb_1_qmpphy: phy@88e8000 {
 			compatible = "qcom,sm8150-qmp-usb3-dp-phy";
 			reg = <0 0x088e8000 0 0x3000>;
@@ -3992,6 +3998,8 @@ mdss_dsi0: dsi@ae94000 {
 
 				phys = <&mdss_dsi0_phy>;
 
+				refgen-supply = <&refgen>;
+
 				status = "disabled";
 
 				#address-cells = <1>;
@@ -4085,6 +4093,8 @@ mdss_dsi1: dsi@ae96000 {
 
 				phys = <&mdss_dsi1_phy>;
 
+				refgen-supply = <&refgen>;
+
 				status = "disabled";
 
 				#address-cells = <1>;

-- 
2.47.3


