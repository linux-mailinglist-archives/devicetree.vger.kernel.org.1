Return-Path: <devicetree+bounces-189215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 61696AE72AD
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 00:56:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 11501189676F
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 22:55:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF89F25EF98;
	Tue, 24 Jun 2025 22:53:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gEPgoDpG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE58725E818
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 22:53:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750805624; cv=none; b=EGBOqnxJCBeIziyf3TTgnq8ImhkeVuzLoqfH7nZkaP7/otAUDRv9pYVjYY/otnwMvFfhORpC9gJFhnVKFx3PiQmBTvKX8nEjSX/yuRqp3r73k8FQOCA5M8pjWJBoYgDxqf+FhHcL99ga0lRYoWy8IzordDjYKZqUg4WKGtPykxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750805624; c=relaxed/simple;
	bh=wwPgZquGtv5ruN02X/fEQJ5qyMWldQS8yZQEL7GHlMM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bEQegM7t7imK6Gu+Tn3NFdjsTNQwgvjYwsRHUPwnHDNCrQZCgv4gce1LQeqkm+z/ZrM10txAQacMJlqMQ3t/ldxAvV6QhulK1CX0ohQiAM/FBORTVLrHdSkzhst6wAjO2rd+BXJ6QNpxQUrli1cTtbrH847EVFCUi62AKhsloxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gEPgoDpG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55OG3DCd020068
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 22:53:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tyyvulGuGpaTaUXvNlB8/sd2dCkHRiL8Dbbs2iTh6WI=; b=gEPgoDpGvLojpvmN
	ferkvyLbtO30MbcEM/UDeq31z2HtlUTqYLcGGFCbiqhn20mvxejazf9F/RL8ngGJ
	HhOCacnvpHcHC0MvgvMpdt6lwmpqc8sIBZrRB3qkhL28BbRfRpxtmWKuqNCmL7AY
	Lu0vcVtWZMoDhWtX+lEzqynmYDvJ3I/V6N+iVFdyc/pCEjONTR9+mQzh/1iyn5LH
	ouk39fIxE1HnWOXD6yxv8IT6FG+bzU9sNYyFtrLQJBflUfES9yTX8DmH9KDkFK5J
	SZ2fh9a/WactcTF/L8qKm+Nm3bWvLvSMjYizxqsA26vSZWR0ylXKH2pfMNThL8xE
	uSQFoQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fdfwv2w5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 22:53:41 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fabd295d12so16342316d6.1
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 15:53:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750805621; x=1751410421;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tyyvulGuGpaTaUXvNlB8/sd2dCkHRiL8Dbbs2iTh6WI=;
        b=JuGpcxwCblav0AhgyWORzqiwnuxh65f143RRov0C3RZboNkbIREPOtHaw33y2DIM3j
         x54NTm2YkzWMbm78BF93UR7s8h2DAisJqcyVAzoQaFezfBI+bVjyEvxETemxQm8oqKtL
         GJHqH0ilXgJAVUhw4derQvDi767Rd8m3snoWe50lsBry2J8qNhdY9T7tSd813zWHy+9u
         bX+SoNOro15oMZSv/sAM8sW8ZHqK5n/zAPtm9rzP5FC3neaG+nN7lB7sNzaxgh9QSZnB
         hNl6kQtm6K8yyzMa0Xe1QC5C8Hhae1+bm0zaG3RQkFBc6R5nfjWLArU0s3DU9Wj13aFj
         J/Fg==
X-Forwarded-Encrypted: i=1; AJvYcCU4SxDGuvbMNvnFTC3copLIBBvin6WPR+kRjfNLLKgNMhySQi0ncyyYa6GMK9U9DchlrZ+1eM2ovkpZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyGLH7StWIukpcyY74XTjVIF+s9fggdzu40Dc88VSa6Q2n5wTMc
	enYA379L3X98o912nmYPFVUaX8cGp578gyihyPgzpFcxoldKLBWzdc+GnYOA/CTJOeh7x8ojFhJ
	u2hxKItrBRmTy6AgdeBV6pjTO+KS0rlCsaw+8keRohqP9pljldtTPIiDDnmhsJN1u
X-Gm-Gg: ASbGnctyzo3Lt5wsjXS1Iw5wpJ3ol1ef+Ai/nk1fiMKJRCld06p3vbFLQ2vRLDmpbOr
	Ja1tieoH8J/NTTfmRxJREuVdSoAIqykWgP7mU3K8QilRJf8V+WwYhGGF7Z5YSQo3EeOHZ+K650W
	TQdfRjEuXkSEH7WbtFQavuFq0bGBaa0CUpqLMBly3QL1jNaFd6ZqesaGJMEPPE5Zg6+9n5i4JJ0
	Ty1oZTVOHB/bvakb/zd8Q05PcK0aaN4FI83OXwin5mx/aq4zm0OdDs1oGl+NKlgvbpJvE5YDswD
	1Cs2XGes5euYfXtw9j5Q9qBvD61c5zk3nXkj+dRS1x+RdCqA2/P8FuuUei8LzAHEFZK0Q/nNyIT
	xib4OymzLHYXArsp/8hTiWfIS3nv+NnOebl8=
X-Received: by 2002:a05:620a:27d6:b0:7cd:4b5b:a202 with SMTP id af79cd13be357-7d429660f2dmr101679485a.20.1750805620739;
        Tue, 24 Jun 2025 15:53:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9xF1syLAiuEsqu/heJ8lpyFR46117M7xKVjAZCzFveTqDxwrpzUPLXqhhICzq+lLpzCaIFA==
X-Received: by 2002:a05:620a:27d6:b0:7cd:4b5b:a202 with SMTP id af79cd13be357-7d429660f2dmr101676185a.20.1750805620360;
        Tue, 24 Jun 2025 15:53:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b97f5980bsm17843851fa.7.2025.06.24.15.53.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 15:53:39 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 01:53:27 +0300
Subject: [PATCH v4 8/8] arm64: dts: qcom: sdm850-lenovo-yoga-c630: fix RTC
 offset info
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-more-qseecom-v4-8-aacca9306cee@oss.qualcomm.com>
References: <20250625-more-qseecom-v4-0-aacca9306cee@oss.qualcomm.com>
In-Reply-To: <20250625-more-qseecom-v4-0-aacca9306cee@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, Steev Klimaszewski <steev@kali.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-efi@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1628;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=wwPgZquGtv5ruN02X/fEQJ5qyMWldQS8yZQEL7GHlMM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoWyxjU159/FTOyS5BGPqQoUzEdLnGP1il44N/x
 nc515L+9muJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaFssYwAKCRCLPIo+Aiko
 1VmMCACerDOGChKCDcExtpZQRx5lJTaSBwEz4xFhjhGd/BKiRHyF/9eb9hrZB7qJg6JKmZAYtIb
 9CHm8W3pJwTyvM+GG6WKaI0CUexK2Ko/4bg0NHIiaSLaLJqmjq96/0zj+zThY5gves/Rqc4L6jT
 5LS0eQKJKYv6JfZSByY0HqD8epocnxMQaEaZVzlRViknEzKLVt5Xa9LQLqsGY5FOj/rOA1dqDwg
 LlZGrH+BpA7VVzXnU3fDiC9KG7BHfVVOPqxDyCPfdD9tEnuyFNFOIS6DAvhNwXgsZdn+gHGtRwp
 ThQyNVqtrtELFswd9kF9hoKFAMnkdKyEM9xun3P565ZyKOks
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: RHiZkAh0e5ZHO4uqqt0Fp7tfNJ2iPVpX
X-Proofpoint-ORIG-GUID: RHiZkAh0e5ZHO4uqqt0Fp7tfNJ2iPVpX
X-Authority-Analysis: v=2.4 cv=MtZS63ae c=1 sm=1 tr=0 ts=685b2c75 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=lpcYNmPcDvg0ODyLRbEA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDE4MiBTYWx0ZWRfX0NIZq1bGTO4d
 z42qtQhzotWNAZOrDTTARlApMBx/s52jIK4rX0tJ8blj5WbEy3uDMO//50zDbT3adK1R+gu85Rv
 U4UK09FHZUVDhM/o9TQc+ggzL3QfV2z77GnZHgb+kOekGxLnS6qA7atNSsmSG5og/uw8IwKfiZh
 +aLTeqBaHzvuHoY8gkZ0awCQMzvOOxK6jtnfDyhbUAF+e5wfLFxpB9OjI9a/3zaNitnrWtp3sQw
 GmzaiP5Vn8DBdq/QFasHPNveukeDC/XS4J60U/GSOVznbieDQ2AnTH1kpL5uTHAJ5jHMSDGkrY9
 oTb9LFJ1oXW1L8X514rLAO3GC62OSRramwYw5c/qN7SSfHggpFVcp/zT3SXXPIFxSgDdujiN3nl
 0eTEOz+2BtNxI+8MYoioNQjEfImPoZOMNLggC0ib/Vtn0orHugY7E15Cze8v+6EA1ngFMSTI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_06,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 adultscore=0 phishscore=0
 mlxlogscore=956 spamscore=0 malwarescore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506240182

Lenovo Yoga C630 as most of the other WoA devices stores RTC offset in
the UEFI variable. Add corresponding property to the RTC device in order
to make RTC driver wait for UEFI variables to become available and then
read offset value from the corresponding variable.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/pm8998.dtsi                 | 2 +-
 arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/pm8998.dtsi b/arch/arm64/boot/dts/qcom/pm8998.dtsi
index 3ecb330590e59a6640f833a0bf4d2c62f40de17d..50b41942b06cf1a3f43f9c754b3bf2e1eaa4d353 100644
--- a/arch/arm64/boot/dts/qcom/pm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8998.dtsi
@@ -101,7 +101,7 @@ pm8998_adc_tm: adc-tm@3400 {
 			status = "disabled";
 		};
 
-		rtc@6000 {
+		pm8998_rtc: rtc@6000 {
 			compatible = "qcom,pm8941-rtc";
 			reg = <0x6000>, <0x6100>;
 			reg-names = "rtc", "alarm";
diff --git a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
index 8ef6db3be6e3dffe4ec819288193a183b32db8e8..c0c007ce8682cacd1cbfe816ddb975c0a099ac89 100644
--- a/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
+++ b/arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts
@@ -592,6 +592,10 @@ sw_edp_1p2_en: pm8998-gpio9-state {
 	};
 };
 
+&pm8998_rtc {
+	qcom,uefi-rtc-info;
+};
+
 &qup_i2c10_default {
 	drive-strength = <2>;
 	bias-disable;

-- 
2.39.5


