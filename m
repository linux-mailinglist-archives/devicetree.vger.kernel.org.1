Return-Path: <devicetree+bounces-224755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B48DBC789D
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 08:20:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2D2CA4F3440
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 06:20:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F7282BD5BD;
	Thu,  9 Oct 2025 06:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L6vUhfmK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2FEAAD4B
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 06:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759990778; cv=none; b=AJtw3r2p55bs3ZL0/2pE4dgVuzjFdECVUfAoTkEfD/xPqdsvLKwb2cywTT2Fw7kfaZqco8TKcycHhzUiDWOzyOSR9v7n2Ak4aNKSC+yUeIdv3hQRV3xRXMMoLF0i2g0bw6WlgWkBPItcav2+iFKCchoMGtZ4pDZ++jJ46FH8P+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759990778; c=relaxed/simple;
	bh=oj3ZGY6/IILJHtVhKA2pv4u2cYCEUcRJUrt5ILBWwaY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LN8Xubc2VOmm52ayL1USHed3Iqi465Uq4LmrNy18bC/vdx2CFmhZxJOXXEIFoZqR7S+cY341faES1Gn3H833UfImouFkdJ5f6W1rCZwzDOKktW3F5CFIb6MhXxnl7q7dFfJLe2GcIlW1avy7Lnpb5AtH8d3umPKza2VuWA/ZmzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L6vUhfmK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EQM4028598
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 06:19:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mKq3yr9dCGurHHla7xpzo8tVBMxkbqg8w1/ZkAGSJww=; b=L6vUhfmK/kuMOSQ/
	12D51qQOvUVVgKtQvZL8CUrNFBD8aC57zU0NNY9V0jZLOh7RWd9tiY2BXUixtyxv
	Ftel022nfyjLoCfNrUZ4rAuJPq91t/GxCmxoNEeKQCRIm7mZ2Z9IR7Zp809TikfN
	kcuyMN9xTOuC3ZWxlCnjI7aXH4M1ZxMrdYrY0dXpTfjtraQKmGmK9pSXHzlBIlVw
	3Z/tEZ2rLRYHxTmykUIDhLKwzyD4uObx8yi2s+4Nfx0i1VUhH4GECTjwldOa65wt
	rYNBsnXD2iVQ7ENz+GBvsLZ2GCUj8WtlRghJT0hJBD0id/+BGYiRjek5K1F4lzvN
	enlm0Q==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4ksnvk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 06:19:35 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b5516e33800so1215917a12.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 23:19:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759990775; x=1760595575;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mKq3yr9dCGurHHla7xpzo8tVBMxkbqg8w1/ZkAGSJww=;
        b=aFrqet8Ve6qU6sAGXBkKQvxsoTqUTtJEV7R2f3nLwC4YHJyGsCFxMjNrTRLEDEA8pv
         XRXyxMaDO18BtjDP2XOFsbAHJyqMVV9250+99pe9qHxW9i9ddq0J/KacwwqWMdj567Ll
         +SzzE2Q9tMI8abRtdl+8Sauzp9pXxDjnM4xOk8QaFcatXHbRzsLTnVyqJynp5kfoj4XR
         OkSNIsx0SPBB9BykEdJJOVs81g8dbXNgu68g7+Ozo+k/P8db6Xmd/5vYf+4LKXrgszWs
         sT7ctDoJIia18NgzfkWpw9qJm3n9WOZDXw+spjR5gbfwbm8aRfpdFbGLJeYaueH1jtyc
         KuOA==
X-Forwarded-Encrypted: i=1; AJvYcCXdsfyUUGUNG/zPCtS1POfhQzjILRlGXXSS2SIfcFwpoWUzTkp7VYJPdFU5dKhAz6spjE5p7Ylzu97+@vger.kernel.org
X-Gm-Message-State: AOJu0Yxl9JrYdNL66Tp6Tx1QDtsybWQIaKfcJUqlWNlShM0S+rpOnvoU
	en3XseBOA3dDyZSuufOEjwwmMJbHO1MkwMILU1SQ+4gCZgaYJRuyHXv9oPBB6k1bRelNaPW0Tmd
	pj+DOocqecn0I97aE1V2LKgZbfWJhhEkyYROIhGY+gOVj6C+leSsnIS1Ag558Nnr+
X-Gm-Gg: ASbGncvwGoAQR5AiT9+GjHT1xdQRHNuXqcEKCeeVUIjeTZzAl/5P1lw4YT4XbHcOqRd
	OcjFZ+X6mUrJsCvj7cuiB5nS9KZCMQ9+YuphEB2jKFPYg5ItzmGSR0YK7QWk0S19WJzXfMBUCE3
	DG4OfJgxLDJhYBkZPtBdbd049fGKoSRDeitVetI/H2iqlErR34z8eH3yM5bWouxrIxLovkCMbXD
	mdWDaAvl310RLI78wNXr7uxJXMYrnVAt8kh8oaNiJYji8r73J3ctF5dtyydHZsWHMuPoF/d+QnF
	W0Ba64L2KalcHT9xkL31VW/6Rwt1cjVgNPJeBTOt6VM+RBo0aqhfbW7/njbCicZkGysyTeqngGP
	8QfZY7fE=
X-Received: by 2002:a05:6a20:1611:b0:2fc:d558:78a6 with SMTP id adf61e73a8af0-32da84ed6b9mr8614522637.60.1759990774882;
        Wed, 08 Oct 2025 23:19:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHkgqFYMmy2IRS7a6u6Iwn0slDhgJRib+1JAT43YjU6dOCmUekP/T+l8jn1xHIvBWMdRcySFg==
X-Received: by 2002:a05:6a20:1611:b0:2fc:d558:78a6 with SMTP id adf61e73a8af0-32da84ed6b9mr8614477637.60.1759990774374;
        Wed, 08 Oct 2025 23:19:34 -0700 (PDT)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099adbcbesm19239671a12.4.2025.10.08.23.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 23:19:34 -0700 (PDT)
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Date: Thu, 09 Oct 2025 11:48:55 +0530
Subject: [PATCH 5/5] dts: qcom: qcs615-ride: Enable ice ufs and emmc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-5-2a34d8d03c72@oss.qualcomm.com>
References: <20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-0-2a34d8d03c72@oss.qualcomm.com>
In-Reply-To: <20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-0-2a34d8d03c72@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>
Cc: linux-arm-msm@vger.kernel.org, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX9d1z9upXoJke
 l+1KBUTr0/ozd7KlKst8Wxoiz2G4yv2NI83YOc1ekOceVy3lW10gFUw+kkl9xa0+MhkYFk4ilTn
 PCRyKZRy3Vi2jZ+1g2JyJNb86LCkHhsxbrCFxczPYADZobsRYs/9I7AeP48xJ7LI3n7xAhPKGzl
 Di2xBG+REqkX4R4mQoC8ur4YFQVdf66SSxnjL21a+3SDPcyYHTO1tFwwLil185CELOzqdVIuviq
 kZlpwEeUy05/WIJgv2oKadIrdXL2XCHMZ6NJBoxaT/4drBlV7iC2IJBvnvqv+a4dNFPn88yIZm3
 w0ADSFYpREog8qRdWIHZhWGjhgQz4dsfGjxwM5P/spipiJiszh8suPYA/QqkKVa0WpRBEPbn+LU
 w4zLhDapnjQkaXdRNeU6fiEU+NFqHw==
X-Proofpoint-GUID: N9L8EhTY7U-fZPujfKA_4uEmhc8p9Ozn
X-Proofpoint-ORIG-GUID: N9L8EhTY7U-fZPujfKA_4uEmhc8p9Ozn
X-Authority-Analysis: v=2.4 cv=SJxPlevH c=1 sm=1 tr=0 ts=68e753f7 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=FZPswq4iDIBThNNNJiIA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 spamscore=0 phishscore=0
 clxscore=1015 bulkscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

Enable ICE UFS and eMMC for QCS615-ride platform.

Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index 705ea71b07a10aea82b5789e8ab9f757683f678a..6e80951c4159fd1fee2f737e0b271a9abaf82a49 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -288,6 +288,14 @@ vreg_l17a: ldo17 {
 	};
 };
 
+&ice {
+	status = "okay";
+};
+
+&ice_mmc {
+	status = "okay";
+};
+
 &pcie {
 	perst-gpios = <&tlmm 101 GPIO_ACTIVE_LOW>;
 	wake-gpios = <&tlmm 100 GPIO_ACTIVE_HIGH>;

-- 
2.34.1


