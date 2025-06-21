Return-Path: <devicetree+bounces-188104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E599AE2B2A
	for <lists+devicetree@lfdr.de>; Sat, 21 Jun 2025 20:20:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BEE591894EEB
	for <lists+devicetree@lfdr.de>; Sat, 21 Jun 2025 18:20:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9AEB26A08D;
	Sat, 21 Jun 2025 18:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IThhWzhZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AD921CA14
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 18:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750530027; cv=none; b=RYe0jo+aQsqo8Eccmq5BWEuzOCN+ncm5iMJfbLE3F8lrPzoPlEbUQIN4gJQdI22toVZ7yFdim/h0BhRUBb0KVl54ESY0oRqE+psSvBFfMhNvz1vmCg5M+xZD3c/YAbyQ1KYZvDAdY8yV2/gY3fxzGSVUIZJINFd52YwOx+ctOrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750530027; c=relaxed/simple;
	bh=XwtJM8njzBbdt1liWqcJfFiBjPvnDt2aCZqwDP0aZaI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=VHszyn8r9MqU6qIB+L4SirsZuPPhc4s+AsQqakZAZAqIy3ud8XX6kUbkHDpBEXxFAk9FIdbD+2MoqCOvtsshTmxF65IJeOzOaRvnT2HN6Ngdu5KT17mrHY4CJmiEfatMAy9J7B0fYV0n3paSNbUuKtv3Qfa7nYPn5x4lJ5r9IE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IThhWzhZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55LI6019015067
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 18:20:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=6ny1/i9MpKx34KKyVr32wx
	2ezhZX9tnwSugxz62UmUc=; b=IThhWzhZM02CaBXcrb9aXqAJ1gFm+/dN8Tl+bT
	LOIOMfs7tHyDi22egJIIGn92a+WJKO08O+blvwhprIRC5/C1S0UzUyI33FYTed9g
	tO5ST4Oe9fyjXisJgljjl2nMmlsq+7sqHuyJDx6AoT7rdpeVF6eurACu1VGGaQUO
	NUJE0IA0X/NldlShSvWIzMotWTryhKko4n4PLWmjC3PU2Nw6zGZNS7CNte3rVxX5
	EggFiaWK8BGxiOW+AyIXDBH6RYD0GB0t9MemV3NDsx487rNUUAc8DmwrCQZigR6Y
	n1lbHGXvFl7xkgmICfMBbZWB+9EJLLU+eRcWjT5HgevfcHPA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47e1qgr0hx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 18:20:25 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7caee990721so661661085a.1
        for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 11:20:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750530007; x=1751134807;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6ny1/i9MpKx34KKyVr32wx2ezhZX9tnwSugxz62UmUc=;
        b=HG6iaRSJtgw+uqET0DTJe63dZKVPxtp0GPO8+fTLzTKuRLOKfwuAGkSzLEqsYIhUR4
         S/oW8cmJCnFaRxpXLveIKugmbcj363vfYSfvppSnEGAUQs2RdSxMCTuv67gpzwcohRTE
         Dzx/5tiCwqy6zTTlp9Y3UFdNFMwh/JTzp2b5yqoVl2x6KCbrHzZDoFsc8JuVEOJVoaG0
         +QYJt+ofUeQA4tgCWi8kCnqRbg1hjeyJwjEytuBpwfPNP0MDg4eT7FQYPSSE+BBK97Ck
         Gun09LMOu3xQqXUxRV/M51TbYlAjCkYlDMiwxzs7QvySD0EM/3F5ChOZcVjA4RXBupI2
         LC6w==
X-Forwarded-Encrypted: i=1; AJvYcCWG2JwPiOAfO8Fb+R1rxq8JSHIwT2M7kdibRURnZaHnTH+FLNLeRkq4jSOu35gdkeC4Acitj5eqM9/r@vger.kernel.org
X-Gm-Message-State: AOJu0YxW7dGm40wzK0b5nenOIfIHjzTTPp6Ns3KRMxgcWNum1ilpvu5O
	xNyB8sNhCKzuOlEt7jkq014Pz+M5qHMhObb2wzBIjKsMmKqURsunPlF83Z6qSTbmGK2yHP52VZq
	YshbHJZIWWeToGX3FLuvsT/qBSY+Ji1LNljHxTZ6ODdqKqBw5OSqbshY7Owa3Y4dA
X-Gm-Gg: ASbGnct8+hMNXBHde7mKotar7Zk/ZJ0JYtw1N4BzTSM8gC/8SDWCTF1b0RZYC5o+Quu
	Cc/psZfaCST7pF4NsYFeMRhpuy7aRLVgxNdCFKxEXa0PJ6L3hGwIHe2p290m12BfjQRcaJXHUKN
	7cPm3RUAm2PsoVJlT+mHqoIfAsrB60ZQc2qO1tYcwAoxJN4mZ7vsS9IO8mY3ljNPana2eAJkBZ1
	tAs4J1EZJYi+ays4oMilLJY665LZnjOx2m6/VzwwWfPQjA03tX5GUhKnaDx0J+JPE6U5I5y60BP
	0NxjPlXDBIWMA0w9WbbwHgVuLT5rc/y8SBNf7gjYRhy9vVygopHqy0yPTugEWuBH7SKzyDtICxW
	yzo95kQJwSvuuBT0oK3sB3l4t9BwQYJtA6Bo=
X-Received: by 2002:a05:620a:c41:b0:7d2:27b0:370d with SMTP id af79cd13be357-7d3f994009fmr984604985a.42.1750530007167;
        Sat, 21 Jun 2025 11:20:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHkwcA2va9FYtfuErFb8AetYbO0QldLKi5r59/m8O7bdX7pIQ7hYBjZRiehOeJk1uml7ANUYg==
X-Received: by 2002:a05:620a:c41:b0:7d2:27b0:370d with SMTP id af79cd13be357-7d3f994009fmr984601685a.42.1750530006754;
        Sat, 21 Jun 2025 11:20:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e414c4a7sm763995e87.57.2025.06.21.11.20.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Jun 2025 11:20:04 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 21 Jun 2025 21:20:02 +0300
Subject: [PATCH] arm64: dts: qcom: sdm845: rename DisplayPort labels
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250621-sdm845-dp-rename-v1-1-6f7f13443b43@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIANH3VmgC/x3MQQqAIBBA0avIrBtI0cquEi0kx5pFJgoRSHdPW
 r7F/xUKZaYCs6iQ6ebCV2yQnYDtcHEnZN8MqlemH5TE4s9JG/QJM0V3EgY76kF6a4J10LKUKfD
 zL5f1fT9H1E/5YgAAAA==
X-Change-ID: 20250621-sdm845-dp-rename-f97461d95f9a
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1499;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=XwtJM8njzBbdt1liWqcJfFiBjPvnDt2aCZqwDP0aZaI=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoVvfUN9k1vamR2BIUomUPbrLx80hRIGOeeXZ4+
 etfgrWpuW2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaFb31AAKCRCLPIo+Aiko
 1TlCB/9ksLS/KDxXwhDSBqbIqqqPm2wOjS3jL+sCKx9gKWhKyADkH/HdScgE4HVs6DrrN3CQf5N
 R8nwZn1M1vWOvxdqZLtzTNOCrSj7RH971nrrg855WKnYeV6J9OmpMdzys6oHYLH5E8yer7gH2vm
 axKTZHU0WGpK1qql7GjLMRlUl2XADFzvhI+CGyexX0kC6YTclz4JL5ik4XgWTFGryD5NDOsxNtb
 3WIoGdR/7MB1hEhQAvgm/yWamNd/ckMmEm5VNYvUYLGIFyqof8FCP9aeky1IY2eNQf27NMM0TfJ
 NC84h3RpGEHxTbCVdYOvruNdeAMxwTpYQolws3nNbgxrKeGh
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: 9FDPcOt-M0qPoUuZj6qZsFxf0THeNTx_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIxMDExNiBTYWx0ZWRfX698+WfEwSxfr
 ib5ry5gmGP0LsidKs2+teQrxhrql7ojDaD70E7ZHo/ccPw0ununKZb0dKpaiu3E4zn8Vo0br1Op
 NkI3hw1heIlJquyICyRARlldTwfZHHCwI9Lu3H/wmM83O6Wjlgo+DQNM+1zi0t1dsyCKpBnv6XG
 rAh6jTpc2R5nqxRLGdvDZPEApBAHqgpqkiXX7iKoP2kNH3CS0RbPlW4XxIV+/nf+eewmRT9B6g9
 RAz9+IWqbREqp+qvV3j/kPHnA54GQT7BNFYvtHKp5C0Of5wNnwQlM9+YQjeQWwP6d/BH5dSEori
 xYR1pPoSqSEKvs7Kif0UNvn9Z04lRdxZU0izZErstZpzOLKZFnRmy4sRnmWOaiRcVwwblwdsmu2
 bVSHK5rQI38lltgyYFAEMOI/4v7x/f+AG8ZK4QSGm96mpRDXNN30wC3PhO6Y9Xfq76u/Lke6
X-Authority-Analysis: v=2.4 cv=UetRSLSN c=1 sm=1 tr=0 ts=6856f7e9 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=WAJOHdNl-RRtu7VvE-sA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 9FDPcOt-M0qPoUuZj6qZsFxf0THeNTx_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-21_06,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 mlxscore=0 mlxlogscore=808 spamscore=0
 suspectscore=0 adultscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 malwarescore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506210116

Rename DP labels to have mdss_ prefix, so that corresponding device
nodes are grouped together.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index c0f466d966305af21b28d724fc8f0536d8734791..2311ebd515d7fdd919e88f2a9477fca0fb2076dd 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -4089,7 +4089,7 @@ port@2 {
 					reg = <2>;
 
 					usb_1_qmpphy_dp_in: endpoint {
-						remote-endpoint = <&dp_out>;
+						remote-endpoint = <&mdss_dp_out>;
 					};
 				};
 			};
@@ -4603,7 +4603,7 @@ ports {
 					port@0 {
 						reg = <0>;
 						dpu_intf0_out: endpoint {
-							remote-endpoint = <&dp_in>;
+							remote-endpoint = <&mdss_dp_in>;
 						};
 					};
 
@@ -4682,14 +4682,14 @@ ports {
 					#size-cells = <0>;
 					port@0 {
 						reg = <0>;
-						dp_in: endpoint {
+						mdss_dp_in: endpoint {
 							remote-endpoint = <&dpu_intf0_out>;
 						};
 					};
 
 					port@1 {
 						reg = <1>;
-						dp_out: endpoint {
+						mdss_dp_out: endpoint {
 							remote-endpoint = <&usb_1_qmpphy_dp_in>;
 						};
 					};

---
base-commit: 5d4809e25903ab8e74034c1f23c787fd26d52934
change-id: 20250621-sdm845-dp-rename-f97461d95f9a

Best regards,
-- 
With best wishes
Dmitry


