Return-Path: <devicetree+bounces-204578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 583BCB25FD1
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 10:59:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 00F637AC1B4
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 08:57:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87F802E9EBD;
	Thu, 14 Aug 2025 08:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aCtRtLGC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70612F9984
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 08:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755161749; cv=none; b=Ce2hRsyouSKm9TAgTWEd2fh1CWbMYOj8PH+EpQweEL/qy7uMaFw8Wp1YbZHWx1AIHwiSl4c4FKCdJPnMuPi99q6LCHyPunpxT/vwPMLqK4pDpYg5wfuRih0x/zKS01Tw4K+YJvGHL/5ZLL0XCg9KAwXQtVNvfrystJlbT5nAK/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755161749; c=relaxed/simple;
	bh=6gyMsTdnA0Pg4Jk50BvriFqo8VaX+g0Ac8y8PpSqW2Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RPII8NYvbtnRqXu7Jcve5DuUPqHOhNXzpatdCmbOKockkM6Zsf2BX9tDLzVCNthK4W7l8mGI4S6y9GEOfu95JlW9Np0Yt4VTpJQqO/6CqRe++qTu7134bGuWqgfNgT4m1KtVsDgog6z+aXSwDHKBWwxZqZPSUdPkH9fCXenRUFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aCtRtLGC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57E8p80V002874
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 08:55:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bQKYCH6hH++Y1HJIVZyzCWfZQLyiyPkxHZm58/amzTI=; b=aCtRtLGCwYU/7APv
	VRJ4S8rjobYlsc1YuJ0mK4JOgjNAuwdUe2Vs4F6e/PClMDQDF6diZDCiWpLaLYmb
	JnQa4gGBuh8cidhJU1ZZYtmE5LkoSEIzS9GHnR4UERsUl5q3P5VdSO8gGQriW9qq
	PUxF9xRL4rdYPx1q9Xwl/AP5qBcHbsgxWd68LXMP6+lesoDNPf7SKnp0UZB0dwKM
	+jLFDjxTiKM5VShG5p6LL4ClzlODbdvAbbxp2IrVzZOk3Qil42O+l3NXE/KK2aiX
	RQsxh9mKH5pj7E6ASuxuyVgrnMquEK8M3K6RKGcbcWppUF0wzC6NwZh4Rql5ZNaO
	nAJHOg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dxdv71sq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 08:55:46 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-24457f42254so16457755ad.0
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 01:55:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755161746; x=1755766546;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bQKYCH6hH++Y1HJIVZyzCWfZQLyiyPkxHZm58/amzTI=;
        b=Fd+763FiZVqQKJK/cQs5dyIK43/l3RfpvpbKSlrvDu+/7mtcAdf6VXey8rbdd4RpeU
         iHPctU4HcP4RUB2ljM89mxOAjRLWEXIW4sDUW/IzS/V3mPiifRzT+had+MjNyfbOmQ6R
         IkG1u4B+kEjVaBhtIy9NGrPdzrpLpil/mhtcCDmz3q+fuPwB+UeCMsBN8Utr9AI0IZwq
         ziQW3635+xv9cfqd/9ghjJlY/ggdq46fz9u9tKP4ZZeb76E+H9G7MijuqZ7aDbY65tPi
         n5ZgP2UbOgP/WUcR80meIJCA1KI1TZEbqwqKejbmLlRZ1bxhVoP4L0UKO3xAx0aC8MBi
         hSew==
X-Forwarded-Encrypted: i=1; AJvYcCX1rQhlNCVY0nqbBQGoKMjjOmYt6KO6woxLNunkJdMfgKsZ0cEj/V3M7P0DH0X97DHoRV4ji6biqDLd@vger.kernel.org
X-Gm-Message-State: AOJu0YzS08athQTzMgY1Ki1mI1rYotE67T1ZNLWXVMTRMR2WWGxg57Nj
	fH79hp9P1iYWC3N13QJkk0LLGBgRMEut6DPjHJMgjvDcqkSAs9AdqpeisrlLMrajWbHO8PY4p20
	C8HjjWp9EsmlBhgZR+HhuUbI1ZsgyWaK6dqKvkcuPgaic3HPJh9Q41VLKyvf9tht3
X-Gm-Gg: ASbGncv6PiGC2tLEfe1Gg4sZqCKPhb6wbfYt830wAOIh8hWns45zUej3jFZ5uVIlQNG
	qCi4/edMxv/oGbF+ouU5mSkkXClYa8yC9OKS76A/nOBfplx4qeqgJk+4J6HJpXeyaa0uWBQkhea
	7ayB666ebRMHA6SxYJ7rzLR9H3yvl7pJSJju+g3MSkInuiwSGmn+9dz/f3zhZmcx9TKEXaxJFdl
	Xof2NHEWZ/x36bciZmzKmk8AxrrMmfP0DDWWyjfGDkKwfkU/P7/OcJWvL233EXDw2+WkNVQ4eWL
	pgZVgeiZQu5CYaqFr/aF8hdyVAchu4mOGCyC0zOiVGFy3KHZA4t2bq/8btnbRw29
X-Received: by 2002:a17:903:2a86:b0:240:80f:228e with SMTP id d9443c01a7336-244586ff5b1mr31854165ad.52.1755161745681;
        Thu, 14 Aug 2025 01:55:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGr9cbRKYgB1VmXQxemg1KYisiqAOL7Ov3eZ81gqmWtAjs2ahJ/bJYCXclxQqouHMJI54XhPQ==
X-Received: by 2002:a17:903:2a86:b0:240:80f:228e with SMTP id d9443c01a7336-244586ff5b1mr31853935ad.52.1755161745258;
        Thu, 14 Aug 2025 01:55:45 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241d1ef6713sm345395075ad.12.2025.08.14.01.55.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 01:55:45 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Thu, 14 Aug 2025 14:25:24 +0530
Subject: [PATCH v6 2/2] arm64: dts: qcom: qcs615: Add CPU scaling clock
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-qcs615-mm-cpu-dt-v6-v6-2-a06f69928ab5@oss.qualcomm.com>
References: <20250814-qcs615-mm-cpu-dt-v6-v6-0-a06f69928ab5@oss.qualcomm.com>
In-Reply-To: <20250814-qcs615-mm-cpu-dt-v6-v6-0-a06f69928ab5@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Authority-Analysis: v=2.4 cv=IuYecK/g c=1 sm=1 tr=0 ts=689da492 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=glh6sAxJXOJWtZD9WfkA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: 6MR_1QWx_JEyNzsfsiQkAymqemgNRZ9Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyNSBTYWx0ZWRfXyAhjtiDYK+Y+
 sanfBP+MXldMyh6E2XIBpkcNLaOhboG/8GuMs44pY0aJp4tOVkkK5xhWKyVS05QAbX67QXyATwy
 DxZ5B93RYBhi2GlFrFS17j06+F0nL93GJct6StbjuAZyt13Is17q4nass5Sa5DAzfnY4d9GSvEB
 De8OaJBOI9njrtDoyCmbH4p6PxZFg190cePOlQA+5+2K1oqfqh918FOG9fxQe26GoQVhU+fuehX
 ZJsi5FgNykuSGXBE2/zxF5eHz+El/tkv912yfM1lodWTNoianYnzylB++ug2Vq+6FLMgMo+WPfy
 Ewcqrg0GsBvaLDA/WkI2HL5ibQlH73gmV4lTpd2RGQnHjvoJIWHCVXtaXeNiCXfjyistoB25Lnm
 9IYEoRrH
X-Proofpoint-GUID: 6MR_1QWx_JEyNzsfsiQkAymqemgNRZ9Z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 priorityscore=1501 adultscore=0
 clxscore=1015 phishscore=0 suspectscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090025

Add cpufreq-hw node to support CPU frequency scaling.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm6150.dtsi | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6150.dtsi b/arch/arm64/boot/dts/qcom/sm6150.dtsi
index 917d67a6a237a0aee3445212e3457cc723ab4276..50cd9275e4028eb8f689eae215bf47a9e06d4cfb 100644
--- a/arch/arm64/boot/dts/qcom/sm6150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6150.dtsi
@@ -36,6 +36,8 @@ cpu0: cpu@0 {
 			capacity-dmips-mhz = <1024>;
 			dynamic-power-coefficient = <100>;
 			next-level-cache = <&l2_0>;
+			clocks = <&cpufreq_hw 0>;
+			qcom,freq-domain = <&cpufreq_hw 0>;
 			#cooling-cells = <2>;
 
 			l2_0: l2-cache {
@@ -56,6 +58,8 @@ cpu1: cpu@100 {
 			capacity-dmips-mhz = <1024>;
 			dynamic-power-coefficient = <100>;
 			next-level-cache = <&l2_100>;
+			clocks = <&cpufreq_hw 0>;
+			qcom,freq-domain = <&cpufreq_hw 0>;
 
 			l2_100: l2-cache {
 			      compatible = "cache";
@@ -75,6 +79,8 @@ cpu2: cpu@200 {
 			capacity-dmips-mhz = <1024>;
 			dynamic-power-coefficient = <100>;
 			next-level-cache = <&l2_200>;
+			clocks = <&cpufreq_hw 0>;
+			qcom,freq-domain = <&cpufreq_hw 0>;
 
 			l2_200: l2-cache {
 			      compatible = "cache";
@@ -94,6 +100,8 @@ cpu3: cpu@300 {
 			capacity-dmips-mhz = <1024>;
 			dynamic-power-coefficient = <100>;
 			next-level-cache = <&l2_300>;
+			clocks = <&cpufreq_hw 0>;
+			qcom,freq-domain = <&cpufreq_hw 0>;
 
 			l2_300: l2-cache {
 			      compatible = "cache";
@@ -113,6 +121,8 @@ cpu4: cpu@400 {
 			capacity-dmips-mhz = <1024>;
 			dynamic-power-coefficient = <100>;
 			next-level-cache = <&l2_400>;
+			clocks = <&cpufreq_hw 0>;
+			qcom,freq-domain = <&cpufreq_hw 0>;
 
 			l2_400: l2-cache {
 			      compatible = "cache";
@@ -132,6 +142,8 @@ cpu5: cpu@500 {
 			capacity-dmips-mhz = <1024>;
 			dynamic-power-coefficient = <100>;
 			next-level-cache = <&l2_500>;
+			clocks = <&cpufreq_hw 0>;
+			qcom,freq-domain = <&cpufreq_hw 0>;
 
 			l2_500: l2-cache {
 			      compatible = "cache";
@@ -151,6 +163,8 @@ cpu6: cpu@600 {
 			capacity-dmips-mhz = <1740>;
 			dynamic-power-coefficient = <404>;
 			next-level-cache = <&l2_600>;
+			clocks = <&cpufreq_hw 1>;
+			qcom,freq-domain = <&cpufreq_hw 1>;
 			#cooling-cells = <2>;
 
 			l2_600: l2-cache {
@@ -171,6 +185,8 @@ cpu7: cpu@700 {
 			capacity-dmips-mhz = <1740>;
 			dynamic-power-coefficient = <404>;
 			next-level-cache = <&l2_700>;
+			clocks = <&cpufreq_hw 1>;
+			qcom,freq-domain = <&cpufreq_hw 1>;
 
 			l2_700: l2-cache {
 			      compatible = "cache";
@@ -4137,6 +4153,19 @@ compute-cb@6 {
 				};
 			};
 		};
+
+		cpufreq_hw: cpufreq@18323000 {
+			compatible = "qcom,qcs615-cpufreq-hw", "qcom,cpufreq-hw";
+			reg = <0 0x18323000 0 0x1400>, <0 0x18325800 0 0x1400>;
+			reg-names = "freq-domain0", "freq-domain1";
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GPLL0>;
+			clock-names = "xo", "alternate";
+
+			#freq-domain-cells = <1>;
+			#clock-cells = <1>;
+		};
+
 	};
 
 	arch_timer: timer {

-- 
2.34.1


