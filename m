Return-Path: <devicetree+bounces-199434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3F0B10A17
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 14:25:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 19785AE1A73
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 12:24:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F2D42D3EC3;
	Thu, 24 Jul 2025 12:24:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VGkPFzjL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158992D23B2
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:24:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753359842; cv=none; b=b/1Jylh2EOZ7UqNQgA8bsB89WHzmPFip03voIg47Rv2MglTb+rK2YSGuucqN5AbkIr1uRErG96ybJ1u6+Xop0E1WTRvWQdGTeHI5J/8hUVh1xTqXHbgSxhBsTsRnmUijQVQVkOkbBLyNq8Xe9yrq/I0wqnU8fbXbY60jm0Q/N3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753359842; c=relaxed/simple;
	bh=/Uwc/zZkhPQQjTQmHwxW8tbPaiZKFK3b/RduRUcE5pA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=teoOINC+y3uAlpLLkWGg6yBvuvPqCZexwtJMlsPFuXaz5I2+x7NIuoSMexWv/yzR8Mhx5HPPm9Q22a1fVwp3D4X8s0MWISRrLX9xnUQQwzXGy9PUNG8nngzRZnisNIdqSDJuRaTDNe4ybOARYBPfwABLcbKYuPRarP90rHbipCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VGkPFzjL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56O9tGcB001523
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:24:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4fa7B7F/ihIT2weJo5JWkNhZb5xr33osr1/iUGbdYqo=; b=VGkPFzjLWvCMua/Q
	o4ua9L17Z9jbKB5Msl/JgaGJdPG5Y1dyEUXu0d8dyY4vdVdjvixl8ydvdXKuzzHd
	HvRwDa0eN0DhsvME8NSJC5PXTaU+3li4/50cgthDi09GIgv3CL1e/T2C3NMPYzDF
	SPrtzs4pFqf+jBDLP2EMiVYG36FkzaLAqc3lI0001toFgEIBdFWhRQwVfS7eL2u+
	KtLvKWGqmLCsCKSrTpuD9kkQbeQeV0N1/AY38WPYKqcnIwScn4+2XO02Lk9w1o0t
	uGiXNhJgkuouT2hVDm0OKLhW04jZyZHxGJPxG40JKZk6I9uPLfdh/UXZUJBbT3Yb
	1Eup3w==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 482b1uf8xs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:24:00 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70707a55da1so31011576d6.2
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 05:24:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753359839; x=1753964639;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4fa7B7F/ihIT2weJo5JWkNhZb5xr33osr1/iUGbdYqo=;
        b=qalKKxQRSO5vquv1fL3apea9OdNcs1WgRRWCM3dMRtHJ5G0LX+/uzIXIoqNa4+o4v1
         kJI55v8TXCGRRUESnFbV53ndfQtnimu2CROyBUP05ACMydcHiifVejVyx1CmiSzTq8Zl
         +WWkR18L45auZD33I1gfYrpBy+WjbhtBIdpvnk9k+WukBDpRuK0bQ4Yy/cgSEwx7oSnK
         6fbhW5ztgKzLyo4fzpLZYhDTCKOwRGxTNr0NOtN5ogJslbWoWIPXbcFfkHsndE5NMwvu
         H3OF900zDg2u5BLGx4faPO2hNaZ7kaeQQgPRD92xT8aRtOMZE+wTHOKnX39/Y9oCJlm9
         J5WA==
X-Forwarded-Encrypted: i=1; AJvYcCXjs5xGXIXqBQDoc2Q3YqR54r2UUSYV8cctE7ML4yMOR6GdZd8Da7bH8/IPel5v7TeFs3QeoXakNx+s@vger.kernel.org
X-Gm-Message-State: AOJu0YxwSfHp9s5HGj9g7l1I3Xg+01FuZxECMSM7ze+FeIHJOtfjUevF
	ztpyC/Aiw+83CfGI59dzIQOyvMSFdioWzDHyoCdvTv+onrE7YZoAbjqQKspPWyK4w3Srt03aDkU
	Akx4wdWw5VI2AZHVlwjlMv/sGfJWr5cGrrnNCSu6QkSbGqxoxWJlHhAZy7CqtKkkU
X-Gm-Gg: ASbGnct94jO7sR1utzk7YYN0AqxoMHw6AjJzeeIk/7TnFdytHwun60gUcX+2zxapdlT
	zT/8dVV9r71mnaRtSVzbWwhLZ2pKw7f3E1QyJRnrT47XSJlCp9YfKEho7J1RK8PywGUKCcE2jko
	KoYTHZDYbqEkWWMi3jaWYrbLqsFPmzGtXHY3AdCTmV8f1wIO5yA0aZuzdJQVNlzXWxMhoodnMBR
	oW+Dbn04sMqzyMT8omHHMaQyI1W2Bt1kIgqrXdeICg/0m5W637L3chwvPmEp6am4m9IyC7xh5Fo
	W13chJRkkXe0R/CaRIya0XS1U04xEuhjGHtm4d6yHA17uwev+gStDcXDcQse5zwN6YT6TDLz8gP
	hOjHyU8hueei4nx0qMgbnxjiNgcH9u/9USe/cI7I4jsIZRKMzw25u
X-Received: by 2002:ad4:5cef:0:b0:704:a0be:87e9 with SMTP id 6a1803df08f44-70700711556mr93532506d6.27.1753359838937;
        Thu, 24 Jul 2025 05:23:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEU7Va3XtsiGXNCtQMIZbUsmTz0HlJZfkSSDIQOMK/GUPCGVH20FwaQuVO4LmH+YOiBA75gDA==
X-Received: by 2002:ad4:5cef:0:b0:704:a0be:87e9 with SMTP id 6a1803df08f44-70700711556mr93526636d6.27.1753359832597;
        Thu, 24 Jul 2025 05:23:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b53c83978sm327389e87.126.2025.07.24.05.23.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 05:23:51 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 24 Jul 2025 15:23:43 +0300
Subject: [PATCH 5/5] arm64: dts: qcom: sc7180-acer-aspire1: drop deprecated
 DP supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250724-move-edp-endpoints-v1-5-6ca569812838@oss.qualcomm.com>
References: <20250724-move-edp-endpoints-v1-0-6ca569812838@oss.qualcomm.com>
In-Reply-To: <20250724-move-edp-endpoints-v1-0-6ca569812838@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=761;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=/Uwc/zZkhPQQjTQmHwxW8tbPaiZKFK3b/RduRUcE5pA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBogiXQ1jb18xu/Fj5JWf6JNHbkput8cQRevi24j
 DgzIJpHtMiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaIIl0AAKCRCLPIo+Aiko
 1e0+B/9Fuyzpo+FU5Zb+PoVDgfp1J2Zahoj96Kk1jU/yK+37jrAMp5I+mnGFQDL7DUL6wmh4Egq
 7oyo4dIEU0t0kaey9h8vIZWSD+KNw15wDIRjtjXzIutve5n8OV+N1V72WyzE3+1KQwIYgqt3kQM
 00g5Eahr4KrI7vOEaEdEwZkUtidRrB2uoSrk6liGxqexVYKDPVNRLZGcG2LwoDOViE2iZch2XRo
 3vRRi0cOzmrDfxR2PwWl7bamT6CiVRAoLFyZh3X9QjgAeIZL1QmOdQgi52/hVTKDil//73o3KzA
 E3uZxbftvFntGbI1QI/RZYd2qSx2wOcYwwGdyt5RlYf2M8y6
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=LdY86ifi c=1 sm=1 tr=0 ts=688225e0 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=b1PHIvHk7SdLWIRam4QA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDA5MyBTYWx0ZWRfXzB0ylNs2m1Bg
 gYtfqTNEMRYgS31Kr+USpzu3P9G6sMZOlteLo5QU2uSTQgnUS2m/S0wNx+qmmjGb4dlns6IoO4A
 l/zgTc+vl5/IZ0oEjzzx07PqFQjKm4LoyQB+I1Ne6AKdtTYlj/G9fr5p1G/d+KUZiiCenlkxe1F
 wrIChOKDGtTzfJFkm3iTnB4D/m6mHyAEE8ZIa7lF51uspZxJSKGGa+93hUjWYXg7dhLZEed/jml
 xelTmKFmSCKzmKBbb4GqqfQp2UOfjq3NM2QCjsVlCCaSeQJF2Q9qhyPY+QAC2R2m4dYCYNPq7hK
 crr+RPW4smQcMHBwiFYR1ufGdwDdWS/q4W8aJTGiou64mHHExBw2tRmG2D2jpmqaPoH5AzoCiCT
 Zw2nIUO4uDnDr6es0ivhPI7ewo8mh+5dM1wkrwEk1nZKtezq1BqB2ZfA0WntPfy8znI5378r
X-Proofpoint-ORIG-GUID: 0ZVLXrellkJRVGcLhPw2qBHCK7-_G_Dd
X-Proofpoint-GUID: 0ZVLXrellkJRVGcLhPw2qBHCK7-_G_Dd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 priorityscore=1501 adultscore=0 phishscore=0
 malwarescore=0 lowpriorityscore=0 mlxlogscore=733 bulkscore=0 spamscore=0
 suspectscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507240093

DP supplies were migrated to the corresponding DP PHY. Drop them from
the DP controller node.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts b/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
index a70396f250f0cc7509128bd49b3c69e0e78cffc4..ad342d8b7508c543984f166300bea04b6d7de88f 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
@@ -438,9 +438,6 @@ &mdss {
 };
 
 &mdss_dp {
-	vdda-1p2-supply = <&vreg_l3c_1p2>;
-	vdda-0p9-supply = <&vreg_l4a_0p8>;
-
 	status = "okay";
 };
 

-- 
2.39.5


