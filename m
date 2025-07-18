Return-Path: <devicetree+bounces-197733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EA363B0A759
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 17:30:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B122D18894C3
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 15:30:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56D442E49B8;
	Fri, 18 Jul 2025 15:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jE7/do6g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E66D2E4275
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 15:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752852356; cv=none; b=iODUt67QdfpVyKNXYaHfh3GNQNxDGmhVnxHsMgHdkiX9yN7/3z411V8j0AuThvb3/sQrOEKypwvqqFDBvIE0687bdISi32054RciAsX78Cqt75dTu7Sl3Z9aTB4gHyU5viz3khYS0WhHYHpuAq+AuWtxwTphlrfug4l8SiQtfRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752852356; c=relaxed/simple;
	bh=KFivjcvc5uwaOS6pig/dxIx9C+kkOFMIUz1GqsieT8o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L6diEorY8qqJuguweWG+aSzJoDDpYcInelfTHCBl2YW4Vo0WoFJayXuKtyZXWlu5jabd2to49+S1mTuVQEbVgQK+3wNJhxDu6QllQuzTvjuckZe1ftpNje3nagrupCgR/ZWBEAwifNECwpGXGDCkYAJxJbEXG8tdsTU1xhaD/6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jE7/do6g; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I7v9L1000541
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 15:25:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LifYEedfVBPmhEMXXCNqquLGdptBfuqEdiolVCncaLM=; b=jE7/do6gpNN0QoaI
	LQ9spngAeSAfGIDwcYCnmeKcoZ83zCwHZXXz05iY7Plg6nMYkVpMq0p9TrJURVPj
	tSoNy9nA2reVgAabysYO24lS2EmczqVc7+9YwdtuK+8G05Al1039lfnhu8AXnJXt
	9vEGQMpLbPuBAAyhMbDChKxDTyGWIrnHHSmstK8DMIAEajLCuxkSakGA/j8g9B7Z
	26VUzvOLwip80p3kPIHNOXxIRug/Mj81JWZuYO44RbJ0G2M5rJwy7fuucpxTTJ49
	90bFMXxgKEgg/1SRqj+gvJjVNwZOdlPoj7KlHAAiuhFjKQR6r7Pf46OJ40MSqGf+
	NkiFmw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dry498-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 15:25:53 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ab76d22670so41516711cf.1
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 08:25:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752852352; x=1753457152;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LifYEedfVBPmhEMXXCNqquLGdptBfuqEdiolVCncaLM=;
        b=HiLqUPYIoFaPOWoQliKG8YgqfDTCHDxBMN+08bdGkDxfQysoIw5QyEJuae+W3mqLB7
         qK0iRV4fVNlkeb6bEFsFhf9RYYaiXyq+soOGjbqWe+nyjXlhqiLyEK7KB8F06zQ3uwTj
         lcntJlfm3fXElLgdCEWisR7UX77ni7pDEanLeYQxvi3BmZ3m00cOv+svxb8TWvUd9yYO
         32X4/ZfJ+16plCY/R+Pcnkrpcm/8yBb4h5JcdD9Ws+/3Wz9yOAkJWDrZ+hkjbUrVkMIo
         dQk/id5BDu1p/4ZW2khsfrPjiXVBMzxgum4pZOYJ5tubNIH5jCSxpHGqroYJVy2uDTVw
         nVKw==
X-Forwarded-Encrypted: i=1; AJvYcCVTNrph+/f7t56lFhVwo5Os7NNfS28YNl9fADfgohG6rHWMxeOvD9IHWriPWaUku7qGEYzlRAeusNwB@vger.kernel.org
X-Gm-Message-State: AOJu0YzaG8qp8jkUizOtW75fZS4jiCJLM4z5JRkcYlL4ZUyYYzOTsgZd
	hmH2KvzaWrHI3j0N4G2kOxh7D7TzAwtKy+0IzwxcWeBHh65J6R31vfGzzX2YUfTGXkPVIwx6sEY
	jSX//XYWf9183O5oNjlMoqAjgO0kDro2s+hvayA9a1kk1dku5+ZooJxb7R+N4BN1O9iP8MhcM
X-Gm-Gg: ASbGncsgk1Hp2jPU1X5LXYhSZpWtIcuuQg6rxi9GjrfEXJGqZherjzvuephiLyThuC9
	dqLIIJ5IKws53+FG4n2r01d1Vr1AJIpjGNeTp4t7KvTxM/Pe/KKx++SnlJUJKejwUua5jMBYx0N
	IpjqDByncNnVu35RMjutghf4L9LYSO81XywQKsz635Y2cmlf5uSKTHX5DthseMidVB/7vwBwtvH
	u8hciXdZxvaTb4Ll2NaF6kQVMKaAVXHDEUTd5aijfbnZI1GsKzVz8nakuuGBJAacsnTkxOUhHZN
	t4C5MD4K6Rm0QJKYoQkDVlfy2e3ELwdyvmWdoiaRLqntDbs7tAwIPKvA0yuI94cnoidSwcoRzcp
	wbzDMt1EASAplSL6KGjn1Oe8IlOOvn+tIPqzYIOUZwzCf1/wrl9O6
X-Received: by 2002:a05:620a:1792:b0:7e2:b1f3:dbfc with SMTP id af79cd13be357-7e343570365mr1838853585a.21.1752852346838;
        Fri, 18 Jul 2025 08:25:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECw0QgnBCIgtQlzYIwnmLDxP/2ryY/OmUtNvUAwei8Hn7WvQW8hwCRlJyWeurocJ81CEOvaQ==
X-Received: by 2002:a05:620a:1792:b0:7e2:b1f3:dbfc with SMTP id af79cd13be357-7e343570365mr1838831585a.21.1752852344566;
        Fri, 18 Jul 2025 08:25:44 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-330a91d994csm2466821fa.84.2025.07.18.08.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 08:25:43 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 18:25:40 +0300
Subject: [PATCH v2 3/4] arm64: dts: qcom: sm8250: stop using SoC-specific
 genpd indices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250718-fix-rpmhpd-abi-v2-3-0059edb9ddb3@oss.qualcomm.com>
References: <20250718-fix-rpmhpd-abi-v2-0-0059edb9ddb3@oss.qualcomm.com>
In-Reply-To: <20250718-fix-rpmhpd-abi-v2-0-0059edb9ddb3@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Ling Xu <quic_lxu5@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>,
        Tengfei Fan <quic_tengfan@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=10295;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=KFivjcvc5uwaOS6pig/dxIx9C+kkOFMIUz1GqsieT8o=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoemdzEWSd2rK+U2wXX1XhzWo8jw/tqEe02J/Si
 FCkOd+c1MSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaHpncwAKCRCLPIo+Aiko
 1QieB/9qcIBoto+O7KBQLssTFy7cOS3Zd9PI6Z/gyCgR6Sal2Z3RNlF5PKWyF92H/9F6Z39uhML
 aQV9bqyCgvrIr0t50FU2VXK8g4KETImXQqky9MY8MRxlrGr7Y10ZW2GbDDF7evcouY5P4KNB0U4
 pq7+AnMHqHD3NG6TPBQLHEY/Matj848YOSXG8bWxkJ9Ltp2naKVfHTdYRGsnhbdJ/4xXJe2ZTdA
 fWFvikwGZrfl828VbPjyJD2JoJUDq+MA76Xjar9m4B7Fzc4F6TH317KpbbahyvT6ci/W63OwuPV
 lUhzKGf2Db6QMkdR02bh/6XJ4nDkD0LcYQ9MAG3ArAvPcAbz
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: I4CCaPdoH2ku2dCRlMlmWJjyX9nekrO1
X-Authority-Analysis: v=2.4 cv=D4xHKuRj c=1 sm=1 tr=0 ts=687a6781 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=Z9UKu4E7OKxfHwI3Q_UA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: I4CCaPdoH2ku2dCRlMlmWJjyX9nekrO1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDExOSBTYWx0ZWRfXxDvfnnD25LNM
 eOk6Db0ZmQI0Y51AqGrNYoZwif0pozOxseoaP9LFdpdkdqhhPKmM/Peejeie6kk2/9evv0VkdBb
 CwM3iVehKs2Yz1pd34YbV/wU9sIulz5Un7OeAGUQw6HYL5Rmlykc/zi/sTnTqBIdMbtIdYXjOuN
 s/xi3snDiPZojPpOKNO87nJ/GfLYZRkn3sBK4JDw29dvhu/G8WRUH0nflUGbCpM5Dy7U3+R3KOh
 ZBF4/orFtV0cPhjXow3Ichg0WIS0mN8e3+vuzHJ7/Ba1Zov8b+jCCihujPDyTaCKIyIio3a5KJ+
 i8YkhE77C1HOEg5M3WFGL3rnBvwkKEkhQYXM+CP1+2TRw1SiUdjaqhChf+yqBisdmnAESn58Rqp
 Y2TdryZtnj+MXALS2akjF5P6nUAkZ7I1SXnb99AzedjfoJ8nWlWGlvMillSFMRBZFwOOSO+k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=908 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 suspectscore=0 bulkscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507180119

The SM8250 has switched to RPMHPD_* indices for RPMh power domains,
however commit 86a9264b6c56 ("arm64: dts: qcom: sm8250: Add
interconnects and power-domains to QUPs") brought some more old-style
indices. Convert all of them to use common RPMh PD indices.

Fixes: 86a9264b6c56 ("arm64: dts: qcom: sm8250: Add interconnects and power-domains to QUPs")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
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


