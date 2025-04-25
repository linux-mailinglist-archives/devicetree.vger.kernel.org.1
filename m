Return-Path: <devicetree+bounces-171027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3C4A9D0B2
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 20:45:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 432461B68A1A
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 18:45:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EC14219307;
	Fri, 25 Apr 2025 18:45:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bYybe2Aw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC347218AAB
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 18:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745606732; cv=none; b=KG7xsAsV1+p7jqS0a7OhZZGTbkqsJl43hd98oh96sGVTyGUXYmFK4lHJQJnd0snAID8dnAxtf1UttqeWFCoWKvo9btPMFmwJ9iDNL8MwNUVBgXQhD4iYhbNPfeyPkeIS8VyNNTHbtxS+d4ES72jzx4/QiBWP8v3WRraK+ROnyPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745606732; c=relaxed/simple;
	bh=3/pOVwyRlrNgkCJ6KBPsHy4woF59FBNMCP1DMrGQy2M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K0kU1f5xJZDxLUQEQevkz+1S+hj95zVpWSzeeL204NH0QRiPlrWgEB2qCF/bqM0aMYX+HqGcGeglAS2HrRqs37OAyxCo4jAQtPRbYD/8wbt3rZ6Gl5jj1Gs+HDswO6zXw7Ukjn5Kxc5bP2fOHqshebAWeSu8XQe0fO0fK59GSLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bYybe2Aw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGK27R004870
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 18:45:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EKJ3E1ee2NbHj1WRet4Kw0fB1IRn+u66pJmzaDKzoCc=; b=bYybe2AwRCnj9FnK
	Z4fRTEkcbFCH2xbRHML0ArWEYYX1HcF2Lk1yYxq/sHh3swU/DdFms0ZP2Iz/KP2r
	5CZ6lMgt4JKTdJS/0s1psiHfjyEh6CyRVFmfMHfYkwYsCcYfZaMXn5/sD8dAWP+X
	fMHH6e8qkEKTnuh8KkWrCb2XT73yKu9jK9efWiu645zdLMbJbkT79XzySB2Ccgcf
	gM5VPztTrob4OwV3Zz1kbIqYxBPRDOOhch9upXQJJrIFMzwjGaqy6LIb4Mmwfn/2
	aYCXMO2OrwWdFVVV0bNdXefCYwEqYIAqizGxa3IIuLjYxcJ19x1kLPN97qbhQrFx
	bCnGnw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh0a1kv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 18:45:29 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c0b0cf53f3so383576085a.2
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 11:45:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745606729; x=1746211529;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EKJ3E1ee2NbHj1WRet4Kw0fB1IRn+u66pJmzaDKzoCc=;
        b=HAhOvLJJWRdFG+uCc9Kgr/ADtQuEoSxoHd3f2mCGRW5tvlyq28xEh5QEr9vBK2jyvC
         Y9p15CbdysdqpVH0zLb7iSamZ5Mdy4ruAobijtTanCOdbM6u1IST8Pg4qKD3qQtsiPVn
         7oucDr8/pu3z7YA//sFfwbQPqGFDOxLiyFNmsr9ieaSL8pmzlv7Ysxk45StkMfal0mjC
         6qXmjXKmfrVgRZ/C0c7ZLoFfhI4uJvr40DisArDeldl5iomrXstNl9qUm8h4wPxPfdhn
         I/7XOYPzCZJfLHTLKNHcsAHN81U0qmFLcjq0QBILc3ZRQZuZl4x3DwGTa7/VcqSOiBni
         z+Ag==
X-Forwarded-Encrypted: i=1; AJvYcCU8a5rMoaKNqSAmzoMYnd6K41+rb+C2QaHzevs7BbP+cucdlj4tqmGCCbdfs5i0ccjeToquChGS5Pgz@vger.kernel.org
X-Gm-Message-State: AOJu0YzCN9P5VkwJOkFd85WHyWlQGAZsQPWfFU1gSdBQNzyvEu5ipxU+
	SwEFyHqSHMZXNqNyy/oj/iaVpPhCEJHA+TYXfVKzOsKzSZFr5lP0LrevYDF21nw0rU306bGaajk
	7GXd9rHtoCbv2G0foADb7YpD+N0OCThimXlCILkQ1ntU7i0eSY/ZwsY4Nd0+E
X-Gm-Gg: ASbGnctlgLCT9E9OQPosiuHKJl2+wR4yKt8aIiK6uL7CMi54LmLv9tIawoevFDE7IHn
	1rTpdibe3LX68mNPALQsWKnTMBcj1TpmM+yWUPtoHuLS2GgcmOVI8hs6Mg821Lhzs+I8L4e5ex6
	xOIvetDlNNoaHRw7Tr6g1wF45I/TapzEN8DhU3dozDEln27puAsbgpWBI6LbM0ivqXtVQ38qHbf
	XhdJRt8Z/scYdIdMVtOkwXTBXRPOaD+WwN15/+i4oUA5yJ/4CrWwUkALh/LPczhKNzmT2bOOLC8
	KI5dXrL0zFxz1lTlzaz6WTQjG+wDE3Dibd5Q9X+wD0hY4RFFzmFgUNhOMl4bG/5xWA5zf6clkod
	R+aAvfA4ew+CFEUROVnfjKaVH
X-Received: by 2002:a05:620a:2407:b0:7c5:54d7:d744 with SMTP id af79cd13be357-7c9668731demr96253085a.23.1745606728731;
        Fri, 25 Apr 2025 11:45:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEggTNJKKFuCWQFK1y6LLAvfvg7a2JDYgPGYciMrnCbEgzFXsql4ztqCe+nuGynt3QcdsoTBA==
X-Received: by 2002:a05:620a:2407:b0:7c5:54d7:d744 with SMTP id af79cd13be357-7c9668731demr96248785a.23.1745606728306;
        Fri, 25 Apr 2025 11:45:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7ccb8979sm688984e87.257.2025.04.25.11.45.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 11:45:26 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 21:45:22 +0300
Subject: [PATCH v5 1/2] arm64: dts: qcom: qcm2290: fix (some) of QUP
 interconnects
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-rb1-bt-v5-1-154b35435b4d@oss.qualcomm.com>
References: <20250425-rb1-bt-v5-0-154b35435b4d@oss.qualcomm.com>
In-Reply-To: <20250425-rb1-bt-v5-0-154b35435b4d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4143;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=kyVnqEgktNyksbrU5xsGESzf3KJOgykR4CkPmnf+D88=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoC9hEPXXv2+ps3VUM4jhtGZjJnOR8WJfrZl36j
 GHY5SEfkRWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaAvYRAAKCRCLPIo+Aiko
 1Si1B/0f0RgyVlECGEyeYNMl00MbZvpD4NSI0pkwHgF/OiFoRHxgI/cNV4t+7gdk8m6dqnd5Ztw
 tD0aSLuzxHAsOEf3bdsT8INEN+3h/FeBxlugX/KDEC640jAhdDWh5NILJZvn5M55Q+WvzQtzwVL
 vo3Hvi4Z2npHcUTfQRVGtTdCDtw8bax8zPeW6EwCYqoC9F42o30Xkl8PmLG9aoWIwJERPTVvcz1
 sHXoE+F5cxvQDyrWIQ8JwlseVg1IdQXJcCBBODgUUNJw09NwoJGyO8o/xs63G6aHW4hDCYNwCra
 ZdBapwT1WHmCqPj4dDYXUjmxB6LaclihEcvxE/PKFUKd3fHx
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEzMyBTYWx0ZWRfX50JWR1p4lOBk FtMON+9mUgT21TF1+1B1587ldyRpap8Mk7TmxSqQgoyspiQcXzyxL2ogqerE1u4fil2/wWsYKrY cJUEGHvFRnwgLhFkXmjGewvEAR9tdE09wyh6btKFhmxX+af8sTq8/e4ILB0rBnb+Q3eJ7OUkmpR
 5/waq8OGM/kOwEwJU6k4XsCz+PDI1klla9fY+FkQ7l5v1hx6AaPzhu6q6SXOXBRwsx+Aj2o4Z2/ 8jQtFlYP12vpBPTAkwyxdjz44W4ZQOWjhmFG03uXuGg7Lal6BQ5e0VHrclTU4AOECEc9OOcTRdh 0gA9wgp7C7g0m5eUxaxR0drESxUc/nPFjdWdG9Cm5RCI7cvEJCEw1ItRUQXuC6o2WoGugSaB/m9
 Cw+xfn99RFcy/bPmgGqbHECRSOBmrzrWFX2mTZAoyGqd0rG7AHHkDJuJIt1p0J1o+IYCxHb/
X-Proofpoint-GUID: QmxRRGFMGgeipcW7WWh2naBn7YoBbsv7
X-Authority-Analysis: v=2.4 cv=ZuTtK87G c=1 sm=1 tr=0 ts=680bd849 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=9DfYs5r4dB8U4TQjKgMA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: QmxRRGFMGgeipcW7WWh2naBn7YoBbsv7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 mlxscore=0 adultscore=0 lowpriorityscore=0
 mlxlogscore=999 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250133

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

While adding interconnect support for the QCM2290 platform some of them
got the c&p error, rogue MASTER_APPSS_PROC for the config_noc
interconnect. Turn that into SLAVE_QUP_0 as expected.

Fixes: 5b970ff0193d ("arm64: dts: qcom: qcm2290: Hook up interconnects")
Reported-by: Konrad Dybcio <konradybcio@kernel.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index 6a7ce2c6b88e51e126cb5add007a0857b0606a0e..c7946731438bae2882e6710c21504915eff30dfa 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -1081,7 +1081,7 @@ spi0: spi@4a80000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				#address-cells = <1>;
@@ -1100,7 +1100,7 @@ uart0: serial@4a80000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				status = "disabled";
@@ -1145,7 +1145,7 @@ spi1: spi@4a84000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				#address-cells = <1>;
@@ -1192,7 +1192,7 @@ spi2: spi@4a88000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				#address-cells = <1>;
@@ -1239,7 +1239,7 @@ spi3: spi@4a8c000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				#address-cells = <1>;
@@ -1303,7 +1303,7 @@ spi4: spi@4a90000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				#address-cells = <1>;
@@ -1322,7 +1322,7 @@ uart4: serial@4a90000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				status = "disabled";
@@ -1367,7 +1367,7 @@ spi5: spi@4a94000 {
 				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
 						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
 						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
-						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
+						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;
 				interconnect-names = "qup-core",
 						     "qup-config";
 				#address-cells = <1>;

-- 
2.39.5


