Return-Path: <devicetree+bounces-248419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6851ACD28A6
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 07:36:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EAB3B30101D4
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 06:36:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B4252BE622;
	Sat, 20 Dec 2025 06:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dzw3o7f+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QmdkSzIg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 984E629DB6E
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 06:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766212584; cv=none; b=OaAYpupA+htTY1EMtUAi2rWfKIF68KCxuSX48bUoHpfhw3962TKHccPn4wDMqOSKqIYaJ5OYPuS4qlF68/VQZDyraeyf4QwD71L/5xjkFoe+s5OQX7e0wg5QA4sJHSjxGWpSSJ0v8U2xXZGRYamBbTCpWJY6x7wtIdLOW6VdDig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766212584; c=relaxed/simple;
	bh=2b1Alj3wBZKsar6ol3N/z7tGI3xylLbJNIQYpSw6+AU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IuXv5Bsml/fEaHbNwdpwVEBCs1hBJqfsjrpZaOniF9m9SkISTZ6xNWzPSmGiJnBD8aoA9o2I1OxoxYfraaQB3zyBitUlUQhttuAGAfr0i3fqD8X7d2Y0NDRXjKWeVW3hN0SR4M0BHM8S6yph1Hp3PQDUI4twZ7NHGPZ76K4gRfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dzw3o7f+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QmdkSzIg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BK4mZ6m2420278
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 06:36:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Tqcwn+P25d0
	0PMlHe5d9yaW8K4sqII6hMYNjnSzNAbE=; b=Dzw3o7f+co5MqDItXyCd1pwrIYh
	Ph46Pn0aNS9D+3cYwKDIX+l3bMly2x1abzN79K7rInLIV0iLOPNc0CDK8wgfyYvz
	Nl5G7RtW9Uj+zZvVIZ06KBEsEPVWAq3QLYipaZuMeC418D+bTdJ/I7EAzgWZ1K5n
	uw0/5kIhV34jeHT4VH90RPb75othP/YGi4KF6rkIOcX5xehyG1wu5+U/n1ruPWSb
	Q3RqlmkG6GH5tTiDyqFHZbyu3kBi7OF0H0j5RpH0NyYEHi2UIm8fYT/zWw8xY8XE
	eqaiHFG+ghCrVmFNar1hUq7EZBoEOZ8xppNwLxT/8DntwI/oSS/1l3RNcOg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5n36g526-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 06:36:21 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34c5d7865e4so3567978a91.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 22:36:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766212581; x=1766817381; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tqcwn+P25d00PMlHe5d9yaW8K4sqII6hMYNjnSzNAbE=;
        b=QmdkSzIgxR9TE8gE2LH0SBxRDTvMlsWwjGSGJU8y0VHFomy8U3kTqhdZ0k8RGJF8nN
         7J+67NSNvy97Md2pZbSaWgoSCoVzKiEcMN6nHay6U77kp5rr9mKtUIEMotnIWBLsq+YN
         2sl8MG7/4CEgazyUHU5cYnhDuUJpxbxIFtLrJPr0RH5b0tqZbG2YjzQQ/APf4J6XUoxL
         T6zLCUvcvTvqFoKJc310MkAGybSMN09LndI2RfJFypRspWlRGTjyub8HOOzjpNm4fRPq
         mKt9ZZh7d0IDIYQLagK6Mz5D2FOdOHsGamJMX1469mpU0YCQLvZbEr+v9QuWMHsfPwZa
         DbpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766212581; x=1766817381;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Tqcwn+P25d00PMlHe5d9yaW8K4sqII6hMYNjnSzNAbE=;
        b=MFbXd3D+2Bsatrvspdpt1U7EEDcKM9f+yx9kQgHTnUkBFeWcwawGFKo+fduUuEnne+
         wywrnXnDDobmX4cNGdkaGsCGwmEKOYn7yL/34q8uXByh5wig9LE04b3jPxpozH3A6mwN
         eM5JpOyRRFh0r9b1kwTiGsZnNupia9EUJZ7SRh8lckkWkC93cM33kGXtD6JlOfEIy3Li
         3981jnOPiWxQ4VSTWUYmjfStxwjk2l4/UVyyw/ywLz7UhZp5Tdd+1BPrkOadG4iJzmci
         HSySnRZlKT+xwg3b4gtYdf4T24qUXTTVeknyaAcNRtjENKYPAsJadqj1kU0xQ+7Y7I+d
         V0Zg==
X-Forwarded-Encrypted: i=1; AJvYcCUSko7IcI6prZLVzzO9VsyaEHzoI9e9tnuDqH0L2a0T4xie/mknOOUSSsNDmLNeXkD98TwiyW36TL8y@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0M/mAMZMngqNSICrLDdpU3Sjia0C1pZV7jehGrfFIuHap1X9c
	4Q+D3S83NX5P+pJt3qsXtOlopeOJSwdb8nzot5n3q5aMu+rlcmorYklTf4puz1cP1IDrK+X2pxx
	MJxhfl0M/R7rOtStMRjuPfZjY9UelY/ifnoPP3lmU11eb9k1MF/hJ4WpZ+KPjiIYp
X-Gm-Gg: AY/fxX6uJ6ylWTX2KFA93G8okzUHMwS1ilAgwjmkCjNmQTVqU+Mvqul4pJO19qYaawY
	wPyLrDdbrLJ6Y63isytLAkVnggnm3wSrQY0E5CS3tt9PslVYuQ+RJuIQmn4DPmbuTs3FQhqCbUg
	Bu0JMv7FvnMpkbpJXXI17wutb1ucsY7tB04LCxepeNd/wAJN/L63DmJcboGdVQFmj5MSrz6Nsgl
	sFz3BcDA/9Cw/ooAdY/5Uz2Q2nJRdHARXQpDLzNwVreQaF81R1F1qSx6i/s8Y6p8Jkr66URGF/T
	3HIDeuMQwWsoKCGubdP1Lq1+3MBzbxJDyE0saSeBg9YuD4kZS5wawMDUqC/4kfYfVI/2EeXM1fQ
	SCAZ9hT1IkKHr6vDcWoVgPaaaooQ2tp5doeETf2/7was=
X-Received: by 2002:a17:90b:2585:b0:34c:4c6e:beb3 with SMTP id 98e67ed59e1d1-34e921c437fmr4111345a91.18.1766212581137;
        Fri, 19 Dec 2025 22:36:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE/pqVcjMbcOPTwNyRgh8QRFYAt9uPJ5HibRbQ9FqVfFUnWM7gy+jTM2KIOqS3SrWlIBGtbRA==
X-Received: by 2002:a17:90b:2585:b0:34c:4c6e:beb3 with SMTP id 98e67ed59e1d1-34e921c437fmr4111334a91.18.1766212580655;
        Fri, 19 Dec 2025 22:36:20 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e7723b3a8sm2847143a91.3.2025.12.19.22.36.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 22:36:19 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        =?UTF-8?q?J=20=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Pin-yen Lin <treapking@chromium.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v3 3/4] arm64: dts: qcom: lemans-evk: Rename hd3ss3220_ instance for primary port controller
Date: Sat, 20 Dec 2025 12:05:36 +0530
Message-Id: <20251220063537.3639535-4-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251220063537.3639535-1-swati.agarwal@oss.qualcomm.com>
References: <20251220063537.3639535-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIwMDA1MCBTYWx0ZWRfX4KTMsYUWg7Z+
 /ynpZdgvXOVtXIgiT36Zyrxz+mTRkB+cyyFN7dQGnE3MYeKwBnyLKFwja1pFlIso90KtwdQXuHq
 1/WWy3SjMm6DG+unGOwoIOXy3ojrAHFpyQGTQ03zE0DxRNlxYfkgQB8ZpguQK8hcxSJOhXn6p1N
 vvkt4rhfn2FEDkydRcrm6YvXaa/SOnH3PcinedDNe0IREoSMdtg5DcWQnAA15xmG2KsKI4VmKVa
 MIrGVayVbT7o/G6pQtIYqjgiPBQIJHymcGQYKvrOCdQzQCDlQR4WwO1aHrGOWFfzHzYP+g6tXiz
 fw6DE861RkX9OuQBbd73sRay1ylEnFM5i9a7chAwwVGcGea98/wtoG5RHdAPoYk1QYRoEPPWO5K
 23zV45Ln4Mza4jhEunqlpk72DtHjZlWCbZiIlbNzYT8eibw4bgQxxiWL7iO9Nq4a+RrKoERj/x1
 BJQJSSZ7NTttEHqfGVg==
X-Proofpoint-GUID: _j6gdCH56JGeH6kLS6mYbFyK9Q5j3GkI
X-Proofpoint-ORIG-GUID: _j6gdCH56JGeH6kLS6mYbFyK9Q5j3GkI
X-Authority-Analysis: v=2.4 cv=VJ/QXtPX c=1 sm=1 tr=0 ts=694643e5 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=NdE2umm2-Z7CMbYs9IQA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-20_01,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 impostorscore=0 bulkscore=0 adultscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512200050

Rename the hd3ss3220_ instance to improve clarity and simplify usage when
adding a secondary port controller.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 2536ebe36edb..70d85b6ba772 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -61,7 +61,7 @@ port@1 {
 				reg = <1>;
 
 				usb0_con_ss_ep: endpoint {
-					remote-endpoint = <&hd3ss3220_in_ep>;
+					remote-endpoint = <&hd3ss3220_0_in_ep>;
 				};
 			};
 		};
@@ -513,7 +513,7 @@ ports {
 			port@0 {
 				reg = <0>;
 
-				hd3ss3220_in_ep: endpoint {
+				hd3ss3220_0_in_ep: endpoint {
 					remote-endpoint = <&usb0_con_ss_ep>;
 				};
 			};
@@ -521,7 +521,7 @@ hd3ss3220_in_ep: endpoint {
 			port@1 {
 				reg = <1>;
 
-				hd3ss3220_out_ep: endpoint {
+				hd3ss3220_0_out_ep: endpoint {
 					remote-endpoint = <&usb_0_dwc3_ss>;
 				};
 			};
@@ -885,7 +885,7 @@ &usb_0_dwc3_hs {
 };
 
 &usb_0_dwc3_ss {
-	remote-endpoint = <&hd3ss3220_out_ep>;
+	remote-endpoint = <&hd3ss3220_0_out_ep>;
 };
 
 &usb_0_hsphy {
-- 
2.34.1


