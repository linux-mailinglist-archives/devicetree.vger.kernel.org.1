Return-Path: <devicetree+bounces-219670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 06242B8D65C
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 09:14:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 24EBC18A066C
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 07:14:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 339A02DA756;
	Sun, 21 Sep 2025 07:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UNJp+CE/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98C4E2D94A5
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758438717; cv=none; b=SwnufsELhsLQqCBN16Z+Afego5OMoOV8J9yvj2iqGdQtB8yWTaEUbnVG/f5M5F74VqB9T60Hn3/y0kWjP9NJiF/l+mrHNGMfq0h9AA1RPxg82r2s3NeBj4xTNIp9f7ADbiknT1ww6+Xyj9EF26ETRioKoR/Jo9fd/aIYoYIh8RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758438717; c=relaxed/simple;
	bh=gdZruk0srcqzy6/KhEGZDdfF3ktae7pNRxkyRa0+7Fg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=blEzDLx/Tv13KkZQstCppwKWI9AMY1wKq004+72L7CuvmG6p6J0OcVVah/Lo5t4rD2suIEQxWAVe+eNvd6Cj/9q5/O83qeDQ6XHY8xisbFc/Ex6C/aUso7ZQb6HhVwlJkgUxmOnCrRLvcaDmsBjHNxcqovBFj/SynypilcP+fEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UNJp+CE/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58L3Sxuk023292
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qws5POK3y/Gd1qPYhifYTlDuaozSLRFNtSkU85V2wx4=; b=UNJp+CE/9GWtKuQc
	4R7KZLps8nbHQMjD2KgKXAhuJwnGKtWCduaYMuCvwZSTXc9OpqwZ36Zba0UXy5Vf
	0fXEPOUaBxsxwtGiggAcjijfn3vshrnhOl3MomeK/ef6j07R8WPJX4ybjgXYu91L
	pecTZyK5cMxNjJcGJSAhXKNpSNRYyH+cA7egWaImSUGGlqPkxCUVmf8bJalU1B/q
	Z+9XdVUdlAEdeO8agA/v7AnEcVl9EbjvRpKk8gl+w1kv01zzAzHPWbmS5LfuGP4V
	vAcy3+smy2RBjLGTDvyhT0a5WbzECd/2uMyEqJpgubDTHnZl96PbL9Vy9bnFNSEf
	h3NAGQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499nj8sq09-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:54 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b3415ddb6aso98840401cf.0
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 00:11:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758438713; x=1759043513;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qws5POK3y/Gd1qPYhifYTlDuaozSLRFNtSkU85V2wx4=;
        b=SAPhZRF0DdocNU52i0DSpyn6iAJ6obni/JRFxO3ov75a/x7U6Fwlbvvf1YA1FJH6Uc
         Rh8Z2igAd2PBt0+lpWzTAhbrESFf4ZjgPkxW/BUnab2oHVHRFjUx9QaGVC3MwsQYzhJQ
         RjbAxlSO8VB+BTGfThhBarltdJMJKFqAtT7nygXTQgYYE4yfp6obIcgB+FVyJtM7+qfk
         hgGvzSqhrTZWiP+mv4A8kaXSppnUtqXkRHEw6n40Pem95aGJmADayYYOQ51uxwjyAX5z
         t9rUerT/MMM7AlaFEBoj+g8VLFEh870/VNQkyNDduBqjz6E+Qu6M8xM2F2LRe48iu0I/
         qCJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnInes3NVBxse+lgnfDiqXEiN/mOhgS+IrJ4y6WO0nYm98a6LNM2RPJII4rrvp6i6QCmvv8m5I5K6B@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8FqXv6NLD5YedYJ3839TayPehvtqDNBXM91//PBkc/MsSRZ8K
	uMVXhVGrrwrML7ByvAruparN8LFmVu3CKLfWbpzOsL+32eWYZYMM6Fcrc0wp8CCX7gNfEqIYeXZ
	fcnO4eeNYpM4lpwnWan+ojQSX8gZF84tLaV4XbLZ5UqBQs3RtTfWv8YwKIt89/Hs8
X-Gm-Gg: ASbGncurgclvkkxomG4ELKUS5zIbrQ7ti2in9U/76ix6cHOuEma3Hot2ZTUYJNnX2Bh
	Z1fsQKzFsgtqGiVDX4e/PeOQc1OyGYk/1duGpr1BOLlyesE1FszErOOz1kdgY0/Iy4vRVL4vdbT
	9rwTkOt3Hd8Yl1mpw94jkgRLtZ3N4h8FW8c60hwtEB3OG6QNd+Zygk1NMfJaljMPPadwbxQxhzO
	hs/RZ3H8qW6oVvFii7Bk9PhxfbB737HZ0n2rAJSKLhf3ie/b9Acys3mYinDia1G+ayo33OMh5He
	B/ZDpnz8U8ehrztC3fKIwCenNCWayuXAI6rwgHmAkgo5dycqDasWlx3Xo3E7ME5xEZsvyT/tj5A
	U1o92jAV2jg/vbgrmqMm3Q56O62kJa9Gzkq+16RchkmgzxVUlLBsy
X-Received: by 2002:a05:622a:315:b0:4b7:9a56:b076 with SMTP id d75a77b69052e-4bdaef577afmr148108161cf.36.1758438713392;
        Sun, 21 Sep 2025 00:11:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGfyHNM0vbrXxYJJC/PFoXLo3Bpg+crKWScknsQAk2AFYJNIiz5xCXfVfgDo9Hy3N1WhQB6aw==
X-Received: by 2002:a05:622a:315:b0:4b7:9a56:b076 with SMTP id d75a77b69052e-4bdaef577afmr148108041cf.36.1758438712994;
        Sun, 21 Sep 2025 00:11:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57e06875c2csm144031e87.4.2025.09.21.00.11.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 00:11:52 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 21 Sep 2025 10:09:29 +0300
Subject: [PATCH 13/14] arm64: dts: qcom: sc8280xp: add refgen regulator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250921-refgen-v1-13-9d93e64133ea@oss.qualcomm.com>
References: <20250921-refgen-v1-0-9d93e64133ea@oss.qualcomm.com>
In-Reply-To: <20250921-refgen-v1-0-9d93e64133ea@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=935;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=gdZruk0srcqzy6/KhEGZDdfF3ktae7pNRxkyRa0+7Fg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoz6UinXpj8MqCA274oGiiTasJ1axiVCfZCKUFd
 ZXTggT1e5yJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaM+lIgAKCRCLPIo+Aiko
 1d+0B/9XX6KZ7o6ch/9bnWXIKnxIZuF4WZeJJddCyC++BY7flJiufRsnXAWA2N4H07M59xcgzLT
 HZN4C9TpuKpeYp6/AEpQzx6x7ji5EuWBdbMKB7uIVb4nyfcNQCAxGpLJDZrpxF/sz1YyUOynrpo
 +x+S+tIS+HSEhFh4KRAXUP+W3ylxBfsZVfyMlV+QwTSj8uwrLAYUjhVczqoRJhQsHkdzeFS7cV7
 LcYJynFBotO6+TsW8/sNRzkVTWnSnBSZoaxvjWbywWo9AM8RvT6Zw4OznAa09rrTLe4tON0JC3Y
 mf6822CNHho36tcF1nxmtMGTkmU+rWy/rSNBg2m9N2JvjCiy
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=dZ6A3WXe c=1 sm=1 tr=0 ts=68cfa53a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=PBGS3k_iT5jBzarLTFgA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: Dy8-s88P6__xfI7JrE2C-4SNdlcRqW-9
X-Proofpoint-GUID: Dy8-s88P6__xfI7JrE2C-4SNdlcRqW-9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDA0MyBTYWx0ZWRfX65w8QNJ+xpqL
 SuywCttqDutL3xi5y6ewczqfXH7cCSlMXU9XByofj4jTbffW9DfcRvhgKOoaKEv0B/U9RdYN2Eu
 6xRx6C1m7gM9DEwS/AQwjJwUEvvVKtlsNO1tLn0TqWUP6AUEfVL+RkP64ef3zIjRQdxHHL/qoSE
 FfOcRsxwjCl4OZVw0W32I3dDlTCA5kGiU70JcuXRwhBcpyN1fW4ebT+IqIh5/XJbZd4kt2TIw3U
 pPieXCqPAdE//Be1+3E+8uN40Qd4nq57EV40ge9xsGmYyQ/BmAmmqbRnyZEGiNjReIhN3vids41
 LvL5sKuYFP9JrOzwXKQqRReN57oeDrN+GeJ72dYsdzvdbzQb6Ra6s03STEBkULubw3mLuN5oZOr
 h2k3TKI7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_02,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0 clxscore=1015
 spamscore=0 phishscore=0 suspectscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200043

Add the refgen regulator block. It should be used for DSI controllers
once they are added.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 279e5e6beae2099f26b8e0b8576cd6c99fa856ef..e48efbd13bfa8dba71928ef11b80ac27eb4b6f85 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -3723,6 +3723,12 @@ usb_2_qmpphy1: phy@88f1000 {
 			status = "disabled";
 		};
 
+		refgen: regulator@8900000 {
+			compatible = "qcom,sc8280xp-refgen-regulator",
+				     "qcom,sm8250-refgen-regulator";
+			reg = <0x0 0x08900000 0x0 0x96>;
+		};
+
 		usb_1_hsphy: phy@8902000 {
 			compatible = "qcom,sc8280xp-usb-hs-phy",
 				     "qcom,usb-snps-hs-5nm-phy";

-- 
2.47.3


