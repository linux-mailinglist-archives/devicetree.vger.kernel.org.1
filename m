Return-Path: <devicetree+bounces-211963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EFFB4164C
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 09:21:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 27666164E85
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 07:21:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC1E12DA758;
	Wed,  3 Sep 2025 07:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oyOczDZP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F43A2DAFBD
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 07:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756884047; cv=none; b=kmIbXcoMtLkQibnFcsih7ldd+ljSVSNnXBoQOB6JyQpx2hxTKCnrDX1UswM86Pj9gSGypzxNIn7Cbs9vdERQQNFXN8DBmvVRGpYQnB6i48CFVDovK1yLpJi1aJQotbaQSQdQgcb+WBg0QoMKNNYVhaPtKvkudsVXXieAwk/tems=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756884047; c=relaxed/simple;
	bh=jF9d575p0CJgp4rHhiLU1CfFzq2UthJSlEdkim4Fnnk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aBSzJxBB3vpeqmnAQbb0zn7hE0gpDTwokfEnz59zk3bv6QgpxD9Yqa4R7HXuerO4GEduTq0Hsd6AgQ4amYfoZx/pk+ZUEbus287K0hQObNsLvKYnjYDGN7qCC6VzmnAacKraWBCtWDRyGG9VepU669AT5uR5VR66KSEBkGSGMJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oyOczDZP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5832EwP1001379
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 07:20:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sNOAegK5RZAaDE+/8oSO0sUGuuiN9cbKJbWju8HXrOA=; b=oyOczDZPCkqMxGh+
	UXnPsciiheK5On/uHeMaIQqtvIipUcOg8L6Sekz2+RAs+yQWeDWyFzNvfvlNGGG7
	zy6RjX+jr4f1bqyoaCa9XWzhN9k7O/QnpV+qnL8B/TMjI5wMRmBH03i9fMJfaEbh
	6ex4n4wEP8AyCGnFvsJM1NV9FaHzeqnFIyBiDjAAs1WnbuvPRBRKn78sJ1NGDYbg
	nVE3XWmNVImh04qBPgbjrzhD6z3gUnlUeFd+OCE9Q7kp89hp46WX9YWPPyjVvsjK
	Ii3cOE5hDl9MymeTesisu2ta28w6c9Ja8RRvbYxMbhgyNXfG8g4nys/uZURuNPTN
	Cm28tw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wy6fe3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 07:20:45 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-76e6e71f7c6so6073253b3a.0
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 00:20:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756884044; x=1757488844;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sNOAegK5RZAaDE+/8oSO0sUGuuiN9cbKJbWju8HXrOA=;
        b=s7ss6TuBrFB2e9tZRyZFv3inNhGcszl0qOlTyDr1lzNBiVJ/MNfAqPNxOq/Ju382oh
         WOCVl19Vw8s9iA3om0UDCxCONOG3XT9hndUOe24YgTrt+yyczDP+pG9U9Ca+UgUnTKML
         bmqT+uJu6IYAgy0DambpSR+9u80GoCk2MR+vQsqFV/YXi3y8eAQ6+kzHkzpOBWqgZTq2
         7bJXpNXQMjDS8pndqGnWt4w2adkJm6uUjHKNUQBVOMBgT+eYs5NUUcZe7lTTw3hPWXRI
         Wga+4mcOED1Qwb2zdMY32pA2+7qcJ/O9ej7u9Wrf2C/RV1f3AV2q0wZabkRTpvLc11kw
         GGsA==
X-Forwarded-Encrypted: i=1; AJvYcCXKo1xh/+fSY0F23LHK3MIsd2HgC/5K4fLxGMia+vVeCV8iskf6BHj/58nA+8iiJE2VSVPHsB+UhSfi@vger.kernel.org
X-Gm-Message-State: AOJu0YxfdjJb+RG5dUHd534qj7fqxYSY+/x/R7pAIPE+dFBJtMBoUsmA
	cbFYXAfHTXg2lLGzsgumQkDeLgg/CKBuPrHkt8HgR90k9bbQLuf/6KXRnSmxwEKcs33v0/SRHvw
	2JyizU6lQWJk2k0Ro4Yet+QSCXifg4nCq5nVku42XC9G90r2ZFneTgoF0U++6Otyy
X-Gm-Gg: ASbGnctTASIcIQYCJyA0VNQw8O0MmP/wxmYe+3m+o8lU96PCGfgIULxDZmoV8VtctOa
	icJxOsoo2EyMnAC0MJYAELE4uEWTrFmpbCnMtCtTH7bd/6diKYNJjcejwzWmOxOXaY3w83KdQTX
	hfBbKXE+uD7SWmPREHpRQGR9h08Vma+ZdsOKOUCsM8cgs3hOyc3YgWu4xTb3CZK4IFHio8n+Zob
	tf16fPuCPSSeRCM2msDuwpPMremHKdi3TdL8fWzDiZ41Zx+F8LK6hoqXT/d6rPMUQ5BoUKkGbsX
	XPONb8tik4OWeEG2+n/6/KLbzM1dpc0OKXnEcKHD+DP0Q1ad0QtTW+kQihKWLEXX
X-Received: by 2002:a05:6a00:390c:b0:770:fd32:f365 with SMTP id d2e1a72fcca58-7723e38a3e1mr17895777b3a.25.1756884043908;
        Wed, 03 Sep 2025 00:20:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGRoQDPRGyxgvIYbUjcgck6/XvM9wRa3NDYhFbn7RxwJ/4HNb57QPKMIkyegrDJbK2DGorniQ==
X-Received: by 2002:a05:6a00:390c:b0:770:fd32:f365 with SMTP id d2e1a72fcca58-7723e38a3e1mr17895747b3a.25.1756884043467;
        Wed, 03 Sep 2025 00:20:43 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7722a2b78d7sm15816191b3a.30.2025.09.03.00.20.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 00:20:43 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Wed, 03 Sep 2025 12:49:56 +0530
Subject: [PATCH v5 5/5] arm64: dts: qcom: qcs8300-ride: Enable Adreno 623
 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250903-a623-gpu-support-v5-5-5398585e2981@oss.qualcomm.com>
References: <20250903-a623-gpu-support-v5-0-5398585e2981@oss.qualcomm.com>
In-Reply-To: <20250903-a623-gpu-support-v5-0-5398585e2981@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Gaurav Kohli <quic_gkohli@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756884002; l=881;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=0A3WcrkpO6FZwh7gc5vhciObZkq6tlMdmmT7IsLC38U=;
 b=rTUl43YD2qv7+1bHzFpljeux3g04J8jUOBYTxEXptNSUGXRIDHOIu5Pvke32lwwqsxjK05HpP
 ZTLwS2TsLC7DmB40MlfOM2R0Mf43RMtj1u4TbxTldl5q0PyVToGbx+m
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68b7ec4d cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=VSJZfRLmIhO-6U2h3l8A:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: gNXtg5vEpMLL4B54_w4selIwd531qW-s
X-Proofpoint-ORIG-GUID: gNXtg5vEpMLL4B54_w4selIwd531qW-s
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfX+RbyXdtB5RJb
 UwjoL5urPC6Ce+lbtwR9BiIWYzhqH5CZiZ+IFrKjR4QJNESL5yN7NHhyLf7HNrzLNXhHYCRI9JV
 1ELlO96AH4fc1QkU1OP0KueMZCxJEorri0XMgekwlFxRJpMNAQncv0FxVF8NXbzsg1yq3li/+4X
 qCs0B7/umL1Y7hRGAS1m+dWCWOG8N3kvhUoHdRIFuzj6TaaGM3iVF8zoFXXuQSYNCAYsgySTjh/
 x1BO2/VJ18juA+HSDtHS644z/u+pjGDFIYQrZXcAhu2JkINEZjeVXacgMS26c5itG4AYw00bl6O
 GZSCoPvUAeZloZ3eUIjRmJGecz3v9YBkhAt+NtMu2Sxzu6opzU5FLWF7BmYS6ZtDFf7O0VMyO13
 KFtQ0z+9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101

From: Jie Zhang <quic_jiezh@quicinc.com>

Enable GPU for qcs8300-ride platform and provide path for zap
shader.

Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
index 8c166ead912c589c01d2bc7d13fa1b6892f6252b..c1f4993ee3bff54bba516a3b652e13f730b6353c 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
@@ -295,6 +295,14 @@ queue3 {
 	};
 };
 
+&gpu {
+	status = "okay";
+};
+
+&gpu_zap_shader {
+	firmware-name = "qcom/qcs8300/a623_zap.mbn";
+};
+
 &pmm8650au_1_gpios {
 	usb2_en: usb2-en-state {
 		pins = "gpio7";

-- 
2.50.1


