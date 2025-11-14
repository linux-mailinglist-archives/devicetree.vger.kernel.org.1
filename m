Return-Path: <devicetree+bounces-238706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAABC5D6BF
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:48:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C9796361641
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:40:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C8EC32571F;
	Fri, 14 Nov 2025 13:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dycCUcrW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JN0RGHM3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1A93218B8
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763127516; cv=none; b=XUX6wbsfDKwwx0rep61rSXRVsOkyIetZpRT+3UOEK5n3AefLj8hahOyfJdZcAc0SH4tizrlf2PzHv09HNplx+dUUlpCGwAFzTAYyxv97pOgZsDba0Wi5PuikBEHXlDuI9IctdcF1UCZypfajXm+DMMWDyCRAw15fKF7oq/evleE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763127516; c=relaxed/simple;
	bh=VE0jQr1XgPvPdJrtPrn/PKOE3cJwqZ+R10C6ISVqTkg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ooavimvRpXTYtphKd5CxQqbppLttdMHwiccygyIM6iKNjTi5wbxqtQJc/mJJU7gMClfrgI/tcNBiVFWqYGUo2LVk3TEO5drdXQg07+Tv/yGRZfXXvdcywtXP6hME42Xn3dYywdSNqMJKhHqLg+k/c+qm4r0d+u8e45tBR2YCiMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dycCUcrW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JN0RGHM3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8H3Pj1484894
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:38:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=+UG7dCVVsUR
	CyP+SKrMMs739w8RE9svmqjIeaGHEcfM=; b=dycCUcrWlghpV8ddIbv3ljKdtbt
	EHl36piq1UdLmrV2tPSznsFIajMhixMVxdRt85NUrq3gjZH7vIGal4ZDbEy/3IKN
	TaBBf5+hcbyPAS6Rziin3ErCsUpRt9NArBqZ5irlGjCaG4lxfotKVyR/99FO9c0W
	OiNARUi30AFeWVbzbXT2k5bNuHQ9G7ZQXa1zKFYJ09tLlFd881pc7VI4Md/JUB+Q
	G+G//3chfRxns3VFMVUsPAxCGVz5r19LUHzWzKumAKZlDimRUJ6OPqlDSDu9KTu+
	16xP0Nhr+KqWK6xnv5OLgcBmk6Y5RoiAKP9ba7CDzEUPikBl1exMDzk+oPg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9cjb03-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:38:32 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4eda95d8809so44554581cf.3
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 05:38:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763127511; x=1763732311; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+UG7dCVVsURCyP+SKrMMs739w8RE9svmqjIeaGHEcfM=;
        b=JN0RGHM3exSSFXM0hh8puPit+rbX9haITJwO6BarOKlWgOiHTNzLF/SXAwFkghtXvX
         dnKJeY9pFeEqe2NDjmLtQfUw79T589NFSdeUyS1XezuxxzcfiWy+ImEIPRzMaDoB1D99
         11D5mh/lNjQDMLCaMsN0Scf84/1Qiez0TpCSal7bZmTqswtKphsDQhHapjkwTgnlqB1l
         mxcYK2KTJn5a0fcH+ro0kbROXwnyWSFraGKJa+gVtoyhM63ScXYRbCZFSphWFJHELNic
         F+6B/Aqje/3AESGs4Lij9aVl21b60vxSFDVOyfP/btuGHLGG0qCvQnVBXzdSxOgZnLre
         p2iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763127511; x=1763732311;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+UG7dCVVsURCyP+SKrMMs739w8RE9svmqjIeaGHEcfM=;
        b=i0b2+NuHdyMYatGJ0ipO88cVZO8if72UxzVoRtKYb93la6QkRzJXBFFyhz3ufa/zOp
         uvLhvU3j7IEK1/HMoND/UXkTAPuWmfV/rJmbtF1e4r2Rw2YGeWUxL2u4SB+AILbfpdKN
         k+hc0DRhchT3KuLdJbU9WX/A58z/O5eDuBtqcH/p+S9C8D57IP0P6n6YbyXwju7x9LDA
         6s5VvmXhbVn2OWpWuKjM9i8PY/+3MYTUthqw25iZqnCwCJX+GNiUcg7dZvnpGDEmoWVk
         a2QyAYUeqWUd2BLbCj+188JFHfqTd942OPJBBEzCTtNLHDMzp96Q1pK2wBg6KbJRuYUF
         nTqQ==
X-Forwarded-Encrypted: i=1; AJvYcCVzx7XmYveQor3bGYY2eLtfAOHltgjNyiDsSXnt+rghQvpCfzz3+fw0oBeGFZpXSkTgn+l0aI6WKbKo@vger.kernel.org
X-Gm-Message-State: AOJu0YwhSh5C6w/A0K6Gd3SD/GYSKC1bBA6TVTB02KQosrdUmB8IEQ/1
	Y9IWB2FNvklMEWLX1KGXJWyWCZjZNagc+4WAPluky3XbzCwLseCtYp52n/U6qM7cHK+sov8yv/g
	ov1YoK2uEOMl+3iRKkq7D8fPAvl5Dv1Ga7MkkMnkbZi025VAarmuRz7pSbCrfMQ0H
X-Gm-Gg: ASbGnctM84qpF81pkn2kOOLPLAj3lXFVYiPDBlnZkPU47+VzGZXkEfv6s5LdS2JMsku
	1tby0rMIivYow+5OjCx8v6KP8B5YAyVwZ70y2Ptn7lENyQzwR1Qc1W7MCXCfCRj9vcSQbv9aFZy
	kzwh42ovw08GTuWnDcM09PWKUALPocr5V6iXkUjJQZHXfGAdo7LaBJp4vN3k8v2ufTIU/7kmmQd
	3xtTqegRGP54/2FybDmtKT0eBgyolMvL3swreGTsCRENoC9GBk1+vvrMSU6MF4eUJdKVwAIp5U8
	ZPohqpR/A2k67StcWCBvQXJ9K4FCNq5xhexD4ig9i/rxppr6nzdQ0HyPv5KrIPfNKcoTsnDk0Mu
	54Dhx5nAhFmr/MIgwIw1x+J16Us6XFdT66jRRRcDQSuzEr3bomCL8MFnYDjWQv2b+ZA==
X-Received: by 2002:ac8:5a83:0:b0:4eb:a2ab:4175 with SMTP id d75a77b69052e-4edf2129abbmr47268651cf.39.1763127511289;
        Fri, 14 Nov 2025 05:38:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEsTcwOw9SG7FV7aUrdM0DX00gqSc7vI3ixogZBE4EFn6LNaP7+Sm/xLVmLNvp8heQzHOmZGg==
X-Received: by 2002:ac8:5a83:0:b0:4eb:a2ab:4175 with SMTP id d75a77b69052e-4edf2129abbmr47268171cf.39.1763127510816;
        Fri, 14 Nov 2025 05:38:30 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:a4af:3f59:b032:5434])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a4ce83dsm3659659a12.34.2025.11.14.05.38.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 05:38:29 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org,
        dave.stevenson@raspberrypi.com, sakari.ailus@linux.intel.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        mchehab@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-media@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v3 2/4] arm64: dts: qcom: qcm2290: Add pin configuration for mclks
Date: Fri, 14 Nov 2025 14:38:20 +0100
Message-Id: <20251114133822.434171-3-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251114133822.434171-1-loic.poulain@oss.qualcomm.com>
References: <20251114133822.434171-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 3nL81M5j5VjA4x_IYDO8HahcWub1sI57
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDEwOSBTYWx0ZWRfX7xCRPntHkudV
 WbapCfhPPL8yRpj3z+3yO0fifuXjyEgMcXaP3nLx9hcbE41rlBV6j8X/rP3bF5Em5IlwtFNP76s
 EYoeh2yLLih090w+tPTGcyVRJNjHQ62TtGPAJPQ95b5AadZW7cttY4HXeqSWrD/oYO+eGy2EVmt
 Ru9rWr6midAsH0XUHFsQf+puGXQfYM4HgW/MJTQqbnZLr+0JSnT1i1fxFO2Sf9hV3f9TXHZUFYj
 plX6OB9w8h1mNha/wCVBB/kbFM6WiX+9N1YCHFA6pnqZ8SV6hg2EEUAtQk0B7iBhKYO4KV5Hjxz
 lHlrXs06nrMUHBs4HDDV7u7eyu4KWMW02/5fwbqhMlx2+QD7tbGafhTy7F3BXiePLHAZIjeS8p/
 0QD4RgC8zy0Q73xk4tKevW8H8sX71Q==
X-Authority-Analysis: v=2.4 cv=MNdtWcZl c=1 sm=1 tr=0 ts=691730d8 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=6UeiqGixMTsA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=gjCkitBQ8UzLeNF7HDgA:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: 3nL81M5j5VjA4x_IYDO8HahcWub1sI57
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140109

Add pinctrl configuration for the four available camera master clocks (mclk).

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/agatti.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/agatti.dtsi b/arch/arm64/boot/dts/qcom/agatti.dtsi
index 8bf5c5583fc2..e14d1f444ab5 100644
--- a/arch/arm64/boot/dts/qcom/agatti.dtsi
+++ b/arch/arm64/boot/dts/qcom/agatti.dtsi
@@ -597,6 +597,34 @@ cci1_default: cci1-default-state {
 				bias-disable;
 			};
 
+			mclk0_default: mclk0-default-state {
+				pins = "gpio20";
+				function = "cam_mclk";
+				drive-strength = <16>;
+				bias-disable;
+			};
+
+			mclk1_default: mclk1-default-state {
+				pins = "gpio21";
+				function = "cam_mclk";
+				drive-strength = <16>;
+				bias-disable;
+			};
+
+			mclk2_default: mclk2-default-state {
+				pins = "gpio27";
+				function = "cam_mclk";
+				drive-strength = <16>;
+				bias-disable;
+			};
+
+			mclk3_default: mclk3-default-state {
+				pins = "gpio28";
+				function = "cam_mclk";
+				drive-strength = <16>;
+				bias-disable;
+			};
+
 			sdc1_state_on: sdc1-on-state {
 				clk-pins {
 					pins = "sdc1_clk";
-- 
2.34.1


