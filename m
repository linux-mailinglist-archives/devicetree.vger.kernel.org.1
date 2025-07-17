Return-Path: <devicetree+bounces-197332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 492D7B08D86
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 14:52:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD37F3BADBC
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 12:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D3212D8DBD;
	Thu, 17 Jul 2025 12:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SANBO05J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9BF2D876F
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:51:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752756707; cv=none; b=qfQzq3O/rX4rvp1u9YEtkJTsg5YxzKhYQyMtaGLjIq0QFBoJEJiFz7jKdSB2UYXyy5ucxTwVX9zaEOh54TDTs2sFLJEscA1tKtDQinooQzXw8bqE0v4mxdY+5geo7GPmgZDHYpbNvwEmXmAJx339+qHm6XhYVPNZcCyegPJXarw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752756707; c=relaxed/simple;
	bh=ll23e7vvrw6W7sEgTKKvGDehsrW5/a17PywG9IJmlAw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YWyNFC2h1ABmh4Djd2of5y7UmXPimfcOPxQSjqlbyA2Nd0UP90c7jKAW0e5FKXKWYqHkKAEhXOIZob+opOqaAMiY2z0Isq47Al2Xp4vmE3Soq1+drAYyg3lMscrRuv0Gib3d1VeFOdY74tU0HU/Zb4NDk88bA1plMpj348HFlrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SANBO05J; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HCdPIb028066
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:51:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MGAoNkYeaggB4O1Bn34++luU0RAO4OsfhAeXBxHWJcg=; b=SANBO05Jdwp9okYE
	/xA9yO0qtCNtx1ONn0U7ywsHjELCn0UHT15vjBI8Ndxb1blAbh/4CJuToUB/jA2i
	GBgV4cLxWe63nHw+PKoZTlwoZ1SmO7nbnL7NdMpEfYrK+gVvpQYgtbb0uUj2v2ip
	OwxZ9jly3j01H7fCa/8Hr7UKh5AcZsQidKjb70UPGlCjmt/VDNQqupqcQ4SOWyBL
	lYlXhgaLpEcI5/ATB2N6dPZzwh7AKsqyQZBnzJtlyH6cpa4uI1sllc9IaZq7f9hE
	F/+v4xc9Bz4VSFs8gG1PzoPg2aipJHMUa4ur3KyTTDIqWCjTKXJ3gZELQGHtObB4
	E02inQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wnh5ywt9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:51:44 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ab5c1b5553so15459981cf.2
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 05:51:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752756703; x=1753361503;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MGAoNkYeaggB4O1Bn34++luU0RAO4OsfhAeXBxHWJcg=;
        b=a+L7z52kzz8Mpk+SJ+NFSqblN/jKPUmJk3ucOpV7K6ZxUA6or/wrs3dI+DbnXem0IU
         dP1UvWsCrY6fpxZFOBcpQEcaCyYHhHra3B5KWLCQaU+nsNu4QN/AzzP/ro0eHDWrfxND
         04i3/Z4dY42CY1HCcpmSInpD1VjY+rPgiC3SLiOw5Pi3HKe9VOAD9Z4uRDhqgeAF650z
         LajVC8bAISR6FHNZkOGWFZNi6bstrsPkNLnUQ89XTxtg/jtWL63Bu71jBnqOxDDf3zmb
         eL/9OkY+ayGYH5zMC1HB2XCUuZMAthDxqUXs8KdKWcmZ85vgQ91Gxh4nZ3Jk8oIC4fO3
         rmXw==
X-Forwarded-Encrypted: i=1; AJvYcCUkm13T1Q0rLBvbiTNi89YCvBR425TWrMkEp3+Z49gRbjH3bVCwaDPzlhf9RKbdcC1/7+kLw9/gZ+UD@vger.kernel.org
X-Gm-Message-State: AOJu0YzzgT4swx+7/IO5nxHU9KqdYG+MrVkCk9ebMSBSBS5B+P/DEjYD
	v2Cpw90K6ecVQdGmwTq+CIrpXMEYBc22Kyr/KQy0X5THFoDNmcfbNGM0GqdBpLaoQU1cfiK9+pa
	d4R6wyvOHibQPFY4q8ugv/6w5qVYlRM+Z3Q8q1K/x8LrrvXjPIzMhhZdWoRp5Iv/J
X-Gm-Gg: ASbGnctd+pfsWj9f8sudb4froowvaFfnUa0AwHHwfDc9sVtaOnQ5ONYzngmUMpctwRA
	DPkr8SvJFRaTSioLZ+K2iS5SiJCYruM/N+8fVJHskdFqNiUhVG3BqZVYxtlOW+aOHlsI5gi7uLK
	MZeWiHYpWTWlQMZ2bqmcyWi2bpcTJvy+o7g+eaBLSOkC0b7PqCVXvcpymeCdzrZx3FN/tlDb6PD
	Fx3qNeSFT6KE9HcKzkmVNFnNtD3CfZouRVZsEYyZ91pqG8YsYOFE6EE7CuJ11g2lbOKeLEyjQ4B
	0+oCTiz9qSrlUWPTp34tpOcWr/lt5uu9T1kSYJ+9P/jiavc+b1gOetCMWPNI2gmA7hML+cw3bwd
	EZZjAfoG2YS477YvXXb3VbLTRafOKzN6qcpbDUZwMgpMBL0C9MPjq
X-Received: by 2002:a05:622a:288:b0:4ab:77c2:af0a with SMTP id d75a77b69052e-4aba3c48622mr40754401cf.3.1752756702936;
        Thu, 17 Jul 2025 05:51:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEz8tfCOT4rLdERhgIRvgc1drkfg3DrbP6Hyvl5KeHje+NeiLMpfONSFlH6uJxI/xOdYs3OsQ==
X-Received: by 2002:a05:622a:288:b0:4ab:77c2:af0a with SMTP id d75a77b69052e-4aba3c48622mr40753951cf.3.1752756702381;
        Thu, 17 Jul 2025 05:51:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5593c9d08fesm3032872e87.126.2025.07.17.05.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 05:51:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 15:48:18 +0300
Subject: [PATCH 3/4] arm64: dts: qcom: sm8250: stop using SoC-specific
 genpd indices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250717-fix-rpmhpd-abi-v1-3-4c82e25e3280@oss.qualcomm.com>
References: <20250717-fix-rpmhpd-abi-v1-0-4c82e25e3280@oss.qualcomm.com>
In-Reply-To: <20250717-fix-rpmhpd-abi-v1-0-4c82e25e3280@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Ling Xu <quic_lxu5@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>,
        Tengfei Fan <quic_tengfan@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=10234;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=ll23e7vvrw6W7sEgTKKvGDehsrW5/a17PywG9IJmlAw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoePHYpdjayU4lcdjrA7iCjgXJn4BQFjxzryKrm
 ZOjDevPC02JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaHjx2AAKCRCLPIo+Aiko
 1WRTCACAhHKRXRRaPkdJ8hq4oTGc802RQLfPdMwioicHybV8yb1/TSMC9WerpmjzKNaySOOC5xA
 mxViXobAhmn/P8uEvsNd1xVJ4djeIUMUSFUJMgygSXqggKKpZC6FY97lAAofJ67hfwq0YEEp5Qm
 Bb6KRkrfqg+daPk+95EfJN8pR9oCkxDuGK8k6hbpT147mZYybndXOUAaml+ds3Evvfv3Tzp4WAH
 WyaLhIxXwASJYW66e8CL2QAwbOGAK2cTKy5xzsDOI6ratzRT5f6XTC3tYJqzvbuKV7eA4YhX9Z4
 NWhqJnyQ2B84LGQhGfRd/aggN9uTuNhU0iymDBRIw4foDYxz
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=dKimmPZb c=1 sm=1 tr=0 ts=6878f1e0 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=Z9UKu4E7OKxfHwI3Q_UA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: pQV2NnUadSWlhFFCpb_0eQdMe2h7nhx5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDExMyBTYWx0ZWRfXzSJr0UD5/Rn8
 XUbhqd+paZPz/qYKyk78KxeiNFMuBCMNurxK1fJF/N4mC9u9cOKSXDv0nIx7I+nUWHF2in2fZlk
 6FDD6l0QkK+qFe8w5KmfIipoctFNMLwRxmq8bNaXaKtu/I2feKX2DbVMOWTgxGjwJX6lL1g7ZsQ
 msGN8kIaNhwb8uaNKtB+QT07FZnd4NMwt7izUtPXETFxtV5Ga8XCXahqywPDISDlWGFDAcEGZQD
 k3wsFCXscEn6geXHMOOU54xKb33mzlgtX+opd/vc6IriXIF4jiUazD2TrA9OZr5MHm/sT0yzmNt
 PJdEWMjqqiEdWV5q46ZVBh2dJcP9uZ4DTG/gRRiQbWayrQkniMReRvVMX5uSlbRhLjph0lp1tYO
 nK48H90AgZzisfiRVFpiNlpjSqwkKk/YgKaPTU4u6VmhTjZ6fqM6zO8lJa7reAXKBvJXtHn0
X-Proofpoint-ORIG-GUID: pQV2NnUadSWlhFFCpb_0eQdMe2h7nhx5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-17_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 mlxlogscore=875 mlxscore=0 spamscore=0
 adultscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507170113

The SM8250 has switched to RPMHPD_* indices for RPMh power domains,
however commit 86a9264b6c56 ("arm64: dts: qcom: sm8250: Add
interconnects and power-domains to QUPs") brought some more old-style
indices. Convert all of them to use common RPMh PD indices.

Fixes: 86a9264b6c56 ("arm64: dts: qcom: sm8250: Add interconnects and power-domains to QUPs")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 42 ++++++++++++++++++------------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index b0197602c677d49f7833f31d71f72436499bfe84..244339cfbed5c32708c282de18f5655535e2ff45 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -1030,7 +1030,7 @@ i2c14: i2c@880000 {
 				dmas = <&gpi_dma2 0 0 QCOM_GPI_I2C>,
 				       <&gpi_dma2 1 0 QCOM_GPI_I2C>;
 				dma-names = "tx", "rx";
-				power-domains = <&rpmhpd SM8250_CX>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
 				interconnects = <&qup_virt MASTER_QUP_CORE_2 0 &qup_virt SLAVE_QUP_CORE_2 0>,
 						<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_QUP_2 0>,
 						<&aggre1_noc MASTER_QUP_2 0 &mc_virt SLAVE_EBI_CH0 0>;
@@ -1075,7 +1075,7 @@ i2c15: i2c@884000 {
 				dmas = <&gpi_dma2 0 1 QCOM_GPI_I2C>,
 				       <&gpi_dma2 1 1 QCOM_GPI_I2C>;
 				dma-names = "tx", "rx";
-				power-domains = <&rpmhpd SM8250_CX>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
 				interconnects = <&qup_virt MASTER_QUP_CORE_2 0 &qup_virt SLAVE_QUP_CORE_2 0>,
 						<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_QUP_2 0>,
 						<&aggre1_noc MASTER_QUP_2 0 &mc_virt SLAVE_EBI_CH0 0>;
@@ -1120,7 +1120,7 @@ i2c16: i2c@888000 {
 				dmas = <&gpi_dma2 0 2 QCOM_GPI_I2C>,
 				       <&gpi_dma2 1 2 QCOM_GPI_I2C>;
 				dma-names = "tx", "rx";
-				power-domains = <&rpmhpd SM8250_CX>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
 				interconnects = <&qup_virt MASTER_QUP_CORE_2 0 &qup_virt SLAVE_QUP_CORE_2 0>,
 						<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_QUP_2 0>,
 						<&aggre1_noc MASTER_QUP_2 0 &mc_virt SLAVE_EBI_CH0 0>;
@@ -1165,7 +1165,7 @@ i2c17: i2c@88c000 {
 				dmas = <&gpi_dma2 0 3 QCOM_GPI_I2C>,
 				       <&gpi_dma2 1 3 QCOM_GPI_I2C>;
 				dma-names = "tx", "rx";
-				power-domains = <&rpmhpd SM8250_CX>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
 				interconnects = <&qup_virt MASTER_QUP_CORE_2 0 &qup_virt SLAVE_QUP_CORE_2 0>,
 						<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_QUP_2 0>,
 						<&aggre1_noc MASTER_QUP_2 0 &mc_virt SLAVE_EBI_CH0 0>;
@@ -1227,7 +1227,7 @@ i2c18: i2c@890000 {
 				dmas = <&gpi_dma2 0 4 QCOM_GPI_I2C>,
 				       <&gpi_dma2 1 4 QCOM_GPI_I2C>;
 				dma-names = "tx", "rx";
-				power-domains = <&rpmhpd SM8250_CX>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
 				interconnects = <&qup_virt MASTER_QUP_CORE_2 0 &qup_virt SLAVE_QUP_CORE_2 0>,
 						<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_QUP_2 0>,
 						<&aggre1_noc MASTER_QUP_2 0 &mc_virt SLAVE_EBI_CH0 0>;
@@ -1289,7 +1289,7 @@ i2c19: i2c@894000 {
 				dmas = <&gpi_dma2 0 5 QCOM_GPI_I2C>,
 				       <&gpi_dma2 1 5 QCOM_GPI_I2C>;
 				dma-names = "tx", "rx";
-				power-domains = <&rpmhpd SM8250_CX>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
 				interconnects = <&qup_virt MASTER_QUP_CORE_2 0 &qup_virt SLAVE_QUP_CORE_2 0>,
 						<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_QUP_2 0>,
 						<&aggre1_noc MASTER_QUP_2 0 &mc_virt SLAVE_EBI_CH0 0>;
@@ -1370,7 +1370,7 @@ i2c0: i2c@980000 {
 				dmas = <&gpi_dma0 0 0 QCOM_GPI_I2C>,
 				       <&gpi_dma0 1 0 QCOM_GPI_I2C>;
 				dma-names = "tx", "rx";
-				power-domains = <&rpmhpd SM8250_CX>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 0 &qup_virt SLAVE_QUP_CORE_0 0>,
 						<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_QUP_0 0>,
 						<&aggre2_noc MASTER_QUP_0 0 &mc_virt SLAVE_EBI_CH0 0>;
@@ -1415,7 +1415,7 @@ i2c1: i2c@984000 {
 				dmas = <&gpi_dma0 0 1 QCOM_GPI_I2C>,
 				       <&gpi_dma0 1 1 QCOM_GPI_I2C>;
 				dma-names = "tx", "rx";
-				power-domains = <&rpmhpd SM8250_CX>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 0 &qup_virt SLAVE_QUP_CORE_0 0>,
 						<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_QUP_0 0>,
 						<&aggre2_noc MASTER_QUP_0 0 &mc_virt SLAVE_EBI_CH0 0>;
@@ -1460,7 +1460,7 @@ i2c2: i2c@988000 {
 				dmas = <&gpi_dma0 0 2 QCOM_GPI_I2C>,
 				       <&gpi_dma0 1 2 QCOM_GPI_I2C>;
 				dma-names = "tx", "rx";
-				power-domains = <&rpmhpd SM8250_CX>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 0 &qup_virt SLAVE_QUP_CORE_0 0>,
 						<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_QUP_0 0>,
 						<&aggre2_noc MASTER_QUP_0 0 &mc_virt SLAVE_EBI_CH0 0>;
@@ -1522,7 +1522,7 @@ i2c3: i2c@98c000 {
 				dmas = <&gpi_dma0 0 3 QCOM_GPI_I2C>,
 				       <&gpi_dma0 1 3 QCOM_GPI_I2C>;
 				dma-names = "tx", "rx";
-				power-domains = <&rpmhpd SM8250_CX>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 0 &qup_virt SLAVE_QUP_CORE_0 0>,
 						<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_QUP_0 0>,
 						<&aggre2_noc MASTER_QUP_0 0 &mc_virt SLAVE_EBI_CH0 0>;
@@ -1567,7 +1567,7 @@ i2c4: i2c@990000 {
 				dmas = <&gpi_dma0 0 4 QCOM_GPI_I2C>,
 				       <&gpi_dma0 1 4 QCOM_GPI_I2C>;
 				dma-names = "tx", "rx";
-				power-domains = <&rpmhpd SM8250_CX>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 0 &qup_virt SLAVE_QUP_CORE_0 0>,
 						<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_QUP_0 0>,
 						<&aggre2_noc MASTER_QUP_0 0 &mc_virt SLAVE_EBI_CH0 0>;
@@ -1612,7 +1612,7 @@ i2c5: i2c@994000 {
 				dmas = <&gpi_dma0 0 5 QCOM_GPI_I2C>,
 				       <&gpi_dma0 1 5 QCOM_GPI_I2C>;
 				dma-names = "tx", "rx";
-				power-domains = <&rpmhpd SM8250_CX>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 0 &qup_virt SLAVE_QUP_CORE_0 0>,
 						<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_QUP_0 0>,
 						<&aggre2_noc MASTER_QUP_0 0 &mc_virt SLAVE_EBI_CH0 0>;
@@ -1657,7 +1657,7 @@ i2c6: i2c@998000 {
 				dmas = <&gpi_dma0 0 6 QCOM_GPI_I2C>,
 				       <&gpi_dma0 1 6 QCOM_GPI_I2C>;
 				dma-names = "tx", "rx";
-				power-domains = <&rpmhpd SM8250_CX>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 0 &qup_virt SLAVE_QUP_CORE_0 0>,
 						<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_QUP_0 0>,
 						<&aggre2_noc MASTER_QUP_0 0 &mc_virt SLAVE_EBI_CH0 0>;
@@ -1719,7 +1719,7 @@ i2c7: i2c@99c000 {
 				dmas = <&gpi_dma0 0 7 QCOM_GPI_I2C>,
 				       <&gpi_dma0 1 7 QCOM_GPI_I2C>;
 				dma-names = "tx", "rx";
-				power-domains = <&rpmhpd SM8250_CX>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 0 &qup_virt SLAVE_QUP_CORE_0 0>,
 						<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_QUP_0 0>,
 						<&aggre2_noc MASTER_QUP_0 0 &mc_virt SLAVE_EBI_CH0 0>;
@@ -1797,7 +1797,7 @@ i2c8: i2c@a80000 {
 				dmas = <&gpi_dma1 0 0 QCOM_GPI_I2C>,
 				       <&gpi_dma1 1 0 QCOM_GPI_I2C>;
 				dma-names = "tx", "rx";
-				power-domains = <&rpmhpd SM8250_CX>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
 				interconnects = <&qup_virt MASTER_QUP_CORE_1 0 &qup_virt SLAVE_QUP_CORE_1 0>,
 						<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_QUP_1 0>,
 						<&aggre1_noc MASTER_QUP_1 0 &mc_virt SLAVE_EBI_CH0 0>;
@@ -1842,7 +1842,7 @@ i2c9: i2c@a84000 {
 				dmas = <&gpi_dma1 0 1 QCOM_GPI_I2C>,
 				       <&gpi_dma1 1 1 QCOM_GPI_I2C>;
 				dma-names = "tx", "rx";
-				power-domains = <&rpmhpd SM8250_CX>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
 				interconnects = <&qup_virt MASTER_QUP_CORE_1 0 &qup_virt SLAVE_QUP_CORE_1 0>,
 						<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_QUP_1 0>,
 						<&aggre1_noc MASTER_QUP_1 0 &mc_virt SLAVE_EBI_CH0 0>;
@@ -1887,7 +1887,7 @@ i2c10: i2c@a88000 {
 				dmas = <&gpi_dma1 0 2 QCOM_GPI_I2C>,
 				       <&gpi_dma1 1 2 QCOM_GPI_I2C>;
 				dma-names = "tx", "rx";
-				power-domains = <&rpmhpd SM8250_CX>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
 				interconnects = <&qup_virt MASTER_QUP_CORE_1 0 &qup_virt SLAVE_QUP_CORE_1 0>,
 						<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_QUP_1 0>,
 						<&aggre1_noc MASTER_QUP_1 0 &mc_virt SLAVE_EBI_CH0 0>;
@@ -1932,7 +1932,7 @@ i2c11: i2c@a8c000 {
 				dmas = <&gpi_dma1 0 3 QCOM_GPI_I2C>,
 				       <&gpi_dma1 1 3 QCOM_GPI_I2C>;
 				dma-names = "tx", "rx";
-				power-domains = <&rpmhpd SM8250_CX>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
 				interconnects = <&qup_virt MASTER_QUP_CORE_1 0 &qup_virt SLAVE_QUP_CORE_1 0>,
 						<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_QUP_1 0>,
 						<&aggre1_noc MASTER_QUP_1 0 &mc_virt SLAVE_EBI_CH0 0>;
@@ -1977,7 +1977,7 @@ i2c12: i2c@a90000 {
 				dmas = <&gpi_dma1 0 4 QCOM_GPI_I2C>,
 				       <&gpi_dma1 1 4 QCOM_GPI_I2C>;
 				dma-names = "tx", "rx";
-				power-domains = <&rpmhpd SM8250_CX>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
 				interconnects = <&qup_virt MASTER_QUP_CORE_1 0 &qup_virt SLAVE_QUP_CORE_1 0>,
 						<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_QUP_1 0>,
 						<&aggre1_noc MASTER_QUP_1 0 &mc_virt SLAVE_EBI_CH0 0>;
@@ -2039,7 +2039,7 @@ i2c13: i2c@a94000 {
 				dmas = <&gpi_dma1 0 5 QCOM_GPI_I2C>,
 				       <&gpi_dma1 1 5 QCOM_GPI_I2C>;
 				dma-names = "tx", "rx";
-				power-domains = <&rpmhpd SM8250_CX>;
+				power-domains = <&rpmhpd RPMHPD_CX>;
 				interconnects = <&qup_virt MASTER_QUP_CORE_1 0 &qup_virt SLAVE_QUP_CORE_1 0>,
 						<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_QUP_1 0>,
 						<&aggre1_noc MASTER_QUP_1 0 &mc_virt SLAVE_EBI_CH0 0>;
@@ -4789,7 +4789,7 @@ mdss_dp: displayport-controller@ae90000 {
 				#sound-dai-cells = <0>;
 
 				operating-points-v2 = <&dp_opp_table>;
-				power-domains = <&rpmhpd SM8250_MMCX>;
+				power-domains = <&rpmhpd RPMHPD_MMCX>;
 
 				status = "disabled";
 

-- 
2.39.5


