Return-Path: <devicetree+bounces-219669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADEBB8D653
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 09:14:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1D2DD7A45B4
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 07:12:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5FC92D94B3;
	Sun, 21 Sep 2025 07:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fkrkJs6F"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0532D8766
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758438715; cv=none; b=JDSE0RXnBjhHfLh2V8rkoEbh+NMe5LEakSdyWJGekvMnJAVqLoRhV+uhq9rLMzMLx3q/QLb7CWmdEqN3ODuqZY90lmRIhjrgLtl0slAnkWTXa1l1wi3M5Hm/U+X7twHN+dQF2WzxnPSN0JHWvkYMvgZcJwJI3AwnKV65WRxmMxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758438715; c=relaxed/simple;
	bh=/QHwbDoTi5wW6cdd1I+mhx3Q59Y4Fm5DvGoBCJEJzFg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kLBCSDyGiIZGn3QFy1WkBzEkQgbdirZY4CPJYzZU347n7kLKuSZNeAx9kK+ORtppLpgfPN7q/Dwd4C5ABmeG8GzjEaZV2KogqXhkKN88Fa996u9zQcT561ISLr4vt2NmAu+VBmFow5TbyN7IUUXom1YLLsSBx7n3rr2mhHu81zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fkrkJs6F; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58L5WFfY008812
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WNO6qfEc+6PKUrnB6XpQmcLQEeyRjf+SgntraIaohbY=; b=fkrkJs6F6jxKajPW
	IZNJOhPskt66i3yoTbgZCfdkAYvS+E25sKWN/kw7NgswOJ3FWqx0GULNxal8THVi
	QRHkWkSkioc+PsjEMeD8iV2Kce6wpcDuND4aTLMavArEBYbkD8natEdXRi60qW33
	4G6KZufANhUmqSDQCYzuuQk70rvXYB9HcqnSbE6WXwMJKJA31b+Y6vJzT/34URhx
	E+sV4aUAdypdDasrxU5Zx8dN9OtfWZ1+5mRnlNKWcv7SFPpQXnN3ZEB3PvzWbmj5
	f0siRzR3SgxMKCDmgDOClhix/YlqW/Lgyij4eAYNAgdeGyPH8lkcOe0fveZRdjxH
	DH99Eg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k7ssxbf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:53 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b3415ddb6aso98840321cf.0
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 00:11:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758438712; x=1759043512;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WNO6qfEc+6PKUrnB6XpQmcLQEeyRjf+SgntraIaohbY=;
        b=VCECTHARnE8DNTQNTz19A6w/yJy/vBNI3s2Xl3QsTMrr1dvS8grom3cPfTMwtySYq0
         g+yILqJNZmMXqrg5EPPFT97SUFEjIirJV8NN/tgXD1s8qNnUpwbDLTrOU6cP0t892zBU
         ZwZ/OmxG5hyph+AZ9rQwupvPhjJz72J6JzYwYHGcsAo8O2jALm7I7oQh8PGxdeuNAO99
         A6nm6SqVM1WiWaoNh8RjKbfI2IPSP7tQpXq6caj2JP74vYfmF4QVGpqQrvXK2JkCzFfH
         6VxgyZoKwtvWMglujyfNb1k03Vs3SU8QHNTH5cs3hhCUpn5NkBqzSiOdYudmN6DxWU/T
         rpaA==
X-Forwarded-Encrypted: i=1; AJvYcCV31tdMsYN2ePsb5pkeHSY+AYMbdxkeeyXT5AlppHWt0LaJnaPD0SjYn3ZPPw3iBeW1w4sugdi0BgvN@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx5MaATE2coB8MbSmfQZSVWUANRg1z0T4fDQf5OE6YSmYKqlf0
	AVvuB03kVDU302HSasvs0gbsr2Y8cwlQQf5Nr2LevZDZcmLOymVtRYDCqzVenhdJkZF+UCjkUlX
	86nQyQZQlIpRkgP27VuhvXYFdnG+Kq2KReuKsUw0bkmXKQ8wQUUpTSZhF1DtaMJFP
X-Gm-Gg: ASbGncupFHjSuLB2UTvWHW256D/a4UXMmnOcWPw7GB8VAOw7tvO3jdiPGCRRPFCBLrl
	AvqngFZTnym/BAE8fCDMrM5AVpsVsx5xuOyk6NfCARB1+lGt7i5uqC0AVWeFeiVw2lmr3vCjKfx
	afJ2GPxkSzVeiKvjwOe2Na6/tVPgQsZASyfMC1Z35yG2u7k9Bi1gAMBlVhkdKZVOgnpSZHreUoq
	jRDAqTcsYwNGip51v3bkfRZzVB/FoY9opuYUcWLrfLvA0x7jm35ot3SmrqSjoABhxLAZG8Mc7sI
	u4FEc/zbMiUaiVdvSQkwjMIuu1ntnKSsLh99MyAUH69xpkIdC1AGPVkFQp2Sx5lDq7Wdi29oBXb
	/yb+Q96urxFBoG1eE+Xf2Md6ImL3HSXdxteAiDj5j5Hynco87Ehax
X-Received: by 2002:ac8:7c56:0:b0:4b5:de5c:deac with SMTP id d75a77b69052e-4bdab6283f3mr147616171cf.18.1758438712045;
        Sun, 21 Sep 2025 00:11:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFDRWhpZlkfIwmMTkXvlHvgomXfFSoTuICFZX7PRpCn5+cU1Hhoq6TgWscPQw2LAa9lar65Uw==
X-Received: by 2002:ac8:7c56:0:b0:4b5:de5c:deac with SMTP id d75a77b69052e-4bdab6283f3mr147615941cf.18.1758438711578;
        Sun, 21 Sep 2025 00:11:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57e06875c2csm144031e87.4.2025.09.21.00.11.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 00:11:50 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 21 Sep 2025 10:09:28 +0300
Subject: [PATCH 12/14] arm64: dts: qcom: qcs8300: add refgen regulator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250921-refgen-v1-12-9d93e64133ea@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=925;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=/QHwbDoTi5wW6cdd1I+mhx3Q59Y4Fm5DvGoBCJEJzFg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoz6Ui3l27NWtQ9pqIE7bGtey4+lPJSOgpajN9q
 Ghkdxn3tyKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaM+lIgAKCRCLPIo+Aiko
 1Rb/B/9Ub6EVmRH1d2TRiBg2TcjeDzyJfTFqPKbMy0Enit8BvwfH7I/AktW3AOI7NETg42OO6hb
 WRJVVfhvHZbk/Lc+CMTME+oFukmf1+aH8i3RAqqcVognCiLqxIov5GY+ShzVqx8o6aQpbXSlWt0
 g/bOV5BdKURuHAY2yzRevgtSEab8xV+4z0RPMLTMAogq6eF2atY0FpNSewUgOaNfyU0NFBjlgMK
 KYMQOj/bUmXCyvWdxa7mbA4OEnN8T2oRK5esaOYWU1b/DnrvlG3mHEnz1hhzmAqz+lsKjOqOtOB
 6gvhvfjZK0UXYF+hQuHIuOsl5tqIlCybGijI3FxXkiHEqdZM
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX8OUOhPdMmSHN
 YxHAPekqSDJAJNjWciQOZg63Z+wunfnLpRp9tUAc7ek4moHwJvnoPCp4csvLNKBzFy/iQYoonBH
 6azRSV3rFxcZFeIdTFVgMPFnsG7DkDFHKQnYCNZ0tI7QnxT3NuesNQLJb5s5KNVMzNTe0V1tUIy
 pYE+knvXkCezjxx89SA98UfSjwVmdpDFKu5j8ivTxAap+UAX5e6sFTseEDyfbDZ2Lqwk/ThRgth
 c6jMqA7jHiIGO9pf5YJrcXklE+GsKAT/RYZkbNI7/IzpDY074fCEAI7sJlmO+uTb31qclw5iwQK
 8bVp3jZOuxums4xyXRf+pmdmYBgFY/WXhP3X9j/RwIcBuvUiN3GKL4XV9uxDDztSRfYP10HM9QX
 ypFngrp1
X-Proofpoint-ORIG-GUID: hnKoAOHlqSCEsd09sULusTiqeXiRacHh
X-Authority-Analysis: v=2.4 cv=bvpMBFai c=1 sm=1 tr=0 ts=68cfa539 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=_aY1h3XTHFwvbdx92S8A:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: hnKoAOHlqSCEsd09sULusTiqeXiRacHh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_02,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 impostorscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

Add the refgen regulator block. It should be used for DSI controllers
once they are added.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs8300.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
index 8d78ccac411e495592a6ff532c99e7aba087d18c..1bcbac852c8aee6b7a68f5f90eac6831e67d8caf 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
@@ -4294,6 +4294,12 @@ serdes0: phy@8909000 {
 			status = "disabled";
 		};
 
+		refgen: regulator@891c000 {
+			compatible = "qcom,qcs8300-refgen-regulator",
+				     "qcom,sm8250-refgen-regulator";
+			reg = <0x0 0x0891c000 0x0 0x84>;
+		};
+
 		gpu: gpu@3d00000 {
 			compatible = "qcom,adreno-623.0", "qcom,adreno";
 			reg = <0x0 0x03d00000 0x0 0x40000>,

-- 
2.47.3


