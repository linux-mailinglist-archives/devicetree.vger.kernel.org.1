Return-Path: <devicetree+bounces-182763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D0654ACDF72
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 15:41:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6FBAB7A723F
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 13:39:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 319532900AF;
	Wed,  4 Jun 2025 13:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GQmiL6DG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C2528FFD8
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749044438; cv=none; b=Pp+UBHZjKo6ZpKmoMnvjxEv2H50DJLsX5Zlf0bc4hxq1xnj7NTJz/s9R6udOiHFHYCj6aJJLDy/Bce+RZKZ1sG8TafcYjmaVeg/jXDTjI7x7SV9o8IskxyeQIfA5obNWDXz4N9vNl519zGoQez/TNkgleRdhU/mRIZ5ILjBwa/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749044438; c=relaxed/simple;
	bh=7u/4WQVJV6Q1LUX42Cje1CNsKlezzEWMHTw7z3WPsYU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vkb2cbTjNeoEqX08EamF8phKFX5c+ovoeVrFRXXTOezF85nPv6C2se2Yy3GYSxPsEDDevU9zFs8wd1xoEulDO33iJdF1pAsIWCPhU+BSjHfWAGyLvPcVAaGsqUMzlDQ++r5xRYqgGOR2KnKfxZCuLT4a7jzfxgeaWGDaVbc2JZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GQmiL6DG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5549BZb6012774
	for <devicetree@vger.kernel.org>; Wed, 4 Jun 2025 13:40:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YBg9q0cvHs6bBUW3z+GWBUixT2+oyHe0R+AnONY1DwU=; b=GQmiL6DGk/SNrXwo
	PRnFeaxnyN9WWKQRFRUlx6Lws8DgRvjN4egTrmsCIjS7TAdKyY6s3sdeFdvsZRul
	jszQl9l3SqntxnljW91cMqRkNEtPddtxa9mp5afXqiFbOWNP5XcxtIQzoqfyAKVo
	+7I0HDko3m59f+qXUXeWOUboB4QYuwgNIkTwBiCMJFDTPxag3CE3CFZm+SD6oIIc
	1eN6zNePR9y8umojS60FGsUa9ypchOKq86lDsvReGXl9fdUOq5l16xsc9UAARtDe
	u4+ICVbNut0c76Qj8QeOruIzdQCoN01BZ4yAfQjXkugHweaS5p/ireqLs44K2GWb
	TEM3/g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47202wbuha-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 13:40:34 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5e28d0cc0so1051572285a.3
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 06:40:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749044433; x=1749649233;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YBg9q0cvHs6bBUW3z+GWBUixT2+oyHe0R+AnONY1DwU=;
        b=ctRmspDc1LIXuEtLT4wbA3AAARX0f7FJ1Wr/V2zRsVYPAjiJdi5qaeavm4BCZX7tuF
         ZUiSA0pEGtcs8Qe+fLeQrjY5eb2t/uxq1MrPPSWYO6sqakWgcgDvGxO6onHNcaQG/BPM
         4UdNrOLY5islIWYSAgXtZe4o7lOnvNHcd5zNgLhHmzEyY9VfTUjSuQiXcykBXzqLJSEa
         6/9kpzmX+a3zuvbJUqU0vP3FaY0dA8rR+5P2q+xIOUpZkTQIPG7dOiTYPc1CB5pBBj9F
         2BbfsBQNsHVH2jiOM2YyzhEm3oEFYvpK4VhbeC5p4DSyDZlPbSyVXBKM39PS0i6f77dD
         wXPw==
X-Forwarded-Encrypted: i=1; AJvYcCX5vNliMXknUKO3fww02Wju70poCojYPgN89Ee+/ssN26uoOkVrkEejL9Jz3gs8ZqZGTg1jlwCtN/op@vger.kernel.org
X-Gm-Message-State: AOJu0YxDKRa+9iAFcsv862eaQXKFMJEYip88s8qymWOCI7qNLK6AwQvU
	lgDDVdS14LgHVwfF11yoR2cuujz/HWCUdQ2O2fuNDpqCijvtLwaiU+oSL4WUIH1EhGxkmwpHPes
	Juk1eqUlR2k3o8iT5IK8NIocMNde6dLidCQAlCFUfyHYnE5XezpOsLkUg0kkoSkxz
X-Gm-Gg: ASbGnctmu+09QdtUOcvH31ayc+rz9NkqApGGdzzBzCzO8nwC/nKLCr4TCwXkrvQYoKX
	Cy+Yht/v0MLIDY3f55AfjhByYknNeCbHyqtSHwjDHJoSfUM/hZQcNiCdi2/OIledd3SbLCkw3d0
	guanrR4MHLC/v51xojZUEHsk4ADwC4IxXjrLQpjdkUMYEMmJsRDCQcRG2Mfd8wS4IJdNdJ8qDi/
	J3c77tBX7Ih4tyw33t34WhdeFN42oct7KpWeenJCTfYrjZT5M+O6cSEFXatmQQbGMVLfQL3ZAaj
	2U9C1Ep/4HUSQ68fEVJHBW7cK6cSIVHkdO5czg0bjmvTK+okc+0OXegpESPjZE8+lBINGB+aMrD
	KCCVw3S/VbEaXwvbriG+Gzvac
X-Received: by 2002:a05:620a:4050:b0:7ca:de42:4ae5 with SMTP id af79cd13be357-7d21a8dd0e9mr391901185a.55.1749044433293;
        Wed, 04 Jun 2025 06:40:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgZhKgR7NcsV4gPQC4U7eu5LVKicEIGDkAGddV6FnPtO2Ourto5KqAILlFQpTBuMoKbS0SYA==
X-Received: by 2002:a05:620a:4050:b0:7ca:de42:4ae5 with SMTP id af79cd13be357-7d21a8dd0e9mr391897485a.55.1749044432931;
        Wed, 04 Jun 2025 06:40:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5533787d376sm2311966e87.28.2025.06.04.06.40.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 06:40:32 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 04 Jun 2025 16:40:29 +0300
Subject: [PATCH 2/2] arm64: dts: qcom: rename qcs615.dtsi to sm6150.dtsi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250604-qcs615-sm6150-v1-2-2f01fd46c365@oss.qualcomm.com>
References: <20250604-qcs615-sm6150-v1-0-2f01fd46c365@oss.qualcomm.com>
In-Reply-To: <20250604-qcs615-sm6150-v1-0-2f01fd46c365@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1527;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=7u/4WQVJV6Q1LUX42Cje1CNsKlezzEWMHTw7z3WPsYU=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoQEzNXkMSHwY0jitLtwQ0+uoITJ/85YMiujGcJ
 HJDAle6PTyJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaEBMzQAKCRCLPIo+Aiko
 1bXbB/91MD2tZapdUU1GIwKguEd3U6jlN2ZEeEYIK8zwVlML/LAAr+Tem483yqFnkRBx0mExp4O
 jX88ZuZI7fNEmyOEMXfWcD3zrKTWhUiW5aRHnEx6nPK6oWjFrDncwFEzkuvYPePKegmDgB1f07i
 kY0hwhWp8zLclmzGHiU7e7sHTrnNzOMKp3tDQ4cIIKH2hBK58H2dHkSSZtRnwUbKPl2Vgkwt1LO
 ihscXU00+TGkxlQP97IzF7BfnCFYNpIPgKq0/l1+k8/PwJrOoOTeiMXhL2twEjEk8jreboF+hba
 ose4Q85w5lgNy21TLblskiO4acH7mW8TxPRz0dmOB8Bq0eiz
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: ePmNCXHfKppCU896DUGnlPWGwhDH3l9c
X-Proofpoint-GUID: ePmNCXHfKppCU896DUGnlPWGwhDH3l9c
X-Authority-Analysis: v=2.4 cv=Y/D4sgeN c=1 sm=1 tr=0 ts=68404cd2 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=F4Sl4XA9YrAWyvOGJFoA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDEwNCBTYWx0ZWRfX2uRDJXpeHR8Z
 HGY5OrPm0xiwAWCC+s5n9644+zdutxSyghPsQZg2wRJq5msqsKUIoKzE89d/5MFgZ2yOSXRk2I9
 nvnYEjUh2nz7AcvQYC6r07CfzWqFrAEoXWgRyP/pGHA6W6PKwblpHCX2z6Rc5Iv67AN5zqksHeT
 PwYDBYxuKhG8n45RdCLlaG3iuNcMZgLHqOpXK5Zy2nLrD91qyEN26G42DSqppBsKQ3Y/fB9agKG
 bsp4y6hoS3MRsJqgHlsFWV2qzo5WcQXVvwgDwDfq+cdszDugX9i0S4SOOGfi5hLN6YNgl9pP/tl
 AFscMrHlPOIFK4Cn0rRWRLloax0OOU6E9XnrViV+GRCKNI9CsbHB3hr96GhAHZPxDgkUg3KlaIi
 sSZC46yORymbe4qajiUhHe3WwSyFccC5oP4SekgtaDkK2b2r73jbBKtpLxJKqR36G1BgpqtS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_03,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 mlxscore=0 mlxlogscore=967 malwarescore=0
 bulkscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506040104

The established practice is to have the base DTSI file named after the
base SoC name (see examples of qrb5165-rb5.dts vs sm8250.dtsi,
qrb2210-rb1.dts vs qcm2290.dtsi, qrb4210-rb2.dts vs sm4250.dtsi vs
sm6115.dtsi). Rename the SoC dtsi file accordingly and add "qcom,sm6150"
as a fallback compat string.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts              | 4 ++--
 arch/arm64/boot/dts/qcom/{qcs615.dtsi => sm6150.dtsi} | 0
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index 2b5aa3c66867676bda59ff82b902b6e4974126f8..c8471a2c56c5be0713c1678b2dcc923d69296db1 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -7,11 +7,11 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 #include <dt-bindings/gpio/gpio.h>
-#include "qcs615.dtsi"
+#include "sm6150.dtsi"
 #include "pm8150.dtsi"
 / {
 	model = "Qualcomm Technologies, Inc. QCS615 Ride";
-	compatible = "qcom,qcs615-ride", "qcom,qcs615";
+	compatible = "qcom,qcs615-ride", "qcom,qcs615", "qcom,sm6150";
 	chassis-type = "embedded";
 
 	aliases {
diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/sm6150.dtsi
similarity index 100%
rename from arch/arm64/boot/dts/qcom/qcs615.dtsi
rename to arch/arm64/boot/dts/qcom/sm6150.dtsi

-- 
2.39.5


