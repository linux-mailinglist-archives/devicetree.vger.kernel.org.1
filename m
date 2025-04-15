Return-Path: <devicetree+bounces-167199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BD30A89A35
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:31:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC434189B005
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D923297A52;
	Tue, 15 Apr 2025 10:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jAOpF5Q2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BF928E605
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744712839; cv=none; b=b/WCnPEjp0inc48sNtsZUxID+vQ4vFqqJ7eEPsvR0DrzNN/heHkdnutxxAvi4uCmzBG0VsZomR+ualYbXaTgwPPaj2M3Q1LSopG+xZOn+gz2//sr21NY3nH1AbjLlcEMqeULuMO5KJVn1sXzOUqXtkaR2lyrKPezdVY7erwTpwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744712839; c=relaxed/simple;
	bh=7lsHmihDAQQXUMJ+xvzVxLR1FUcBUfXT4xj3WNurHa0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fDCJsen5g22dwWRodVvPlTfpyXmQbKfkTKjq19/ZnZwwQLGxab2n+HTKZbd0YHDLbQiuK7aXXs384g5rBuIma82HJaj/eTUbShm5Oy2jkuB6nqecx+PqR6KBafnFSHTN+54ga7Op3G6t3RBEx4N5hJs+H6OIg7IMPJzMkX9+2cU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jAOpF5Q2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8u7k4002933
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:27:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qj6AFw4Fi+xNkLsx4FdRnQvxJUAIIULFxzzRmyzQKEw=; b=jAOpF5Q2U46zBIVl
	dYXEuFMBFIkqqh3zPnmidrQEgBtvjfgFki8xfjN2wR5JlQCe5sfLO2F+Ze44HGqf
	nGKMVRX/40FpZerNQD3fnTZWM0WSFYsg6vYVadLwzDbonSmpPdji1MuebENkwHp/
	QH6r799DX/COyXwMRxTtwSjEUTIfctDXnBmIY3daudUHU5F3vCHZ8Ho4nhgs7wkt
	OAYjLvgSrVetonbR2fo0objuPguDRp2yoqttxi8u6S4LeBtFnj+NbIhNMj6kclOW
	L8N663RZFA5BV/BbZM0W8oOBnSLCBDFMCxG3VkNbVsrEn6RiMwkIWyyPXRAzw62N
	0MdzDg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygxjygya-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:27:17 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c3c8f8ab79so846504785a.2
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:27:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744712836; x=1745317636;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qj6AFw4Fi+xNkLsx4FdRnQvxJUAIIULFxzzRmyzQKEw=;
        b=cB3BzmEwXwf02hVdiumLhqSNlAfQNBDp1BLl7JBlXcL+PhOGf6tTAhKesMP8dvvsU4
         YXNcEOIkCURO+MWlMnoDIPuZYzcNY3PQ9j9hS3CdpdX/+pR3jLIhW7S52zzCDjGw41Qz
         6u2xgqjTcLi1JqMLKm6YuHj9GIHYEFgIjYfI98skSOXWrfnMPUk0WkZkmTBphoN3oKy1
         zMWKLN7lp0/395b5X10q2ViV88AM1+Xul12Xt6VJr2ABuhavpfpzCbp08Ei5ItzmQHxA
         iR2RV7zjRNBY2MktIXP+4RNLps7kwDeUT+vyrmG+KAynyrWlpYSUaFp5Rfds2v8gjheH
         aA2A==
X-Forwarded-Encrypted: i=1; AJvYcCXdEUwNN6qt00mPRKxbJXTpvdbUx/czQwGzzOO4G9S1g24B2N6Db96YFUGo0aS2o0hk1ihJBQj4IqZb@vger.kernel.org
X-Gm-Message-State: AOJu0YxsGVostQekABB5COjkU7GwBPePO6k4uGlU81VML/R3mn77xmVU
	UAz2zdo17RfvlnVsu0sHt4zizp5AVnbt3H8dLRLV5SPwlwiizkdnC5CZEyMv8yPz8uqPet/Rlso
	gH67MgkH48+X5utRnpysCvh/+XG6oANFlz4dwW/TDOqCfhYOz2kmdaQdRL5i9
X-Gm-Gg: ASbGncsBv6J7MAnGx7/lvJOQRU7VZhIIzyt9/4yI1KAQnOJ44FWY2jkV7yRD8cGHuuj
	ZiETPIni0AFzapBbSuoxiNmvGOvlcQ7YdfP/XWFcSqPxV0smQu+L6J8SPX1i05T8WcS7VtjzmuY
	BMMLFLmhInX5aC0g1FKlS4Xwf0ouYEcHdysb/tzxaCtrmlmzGCdmamR+KJaWQATNwDbvd32fxER
	QhmtS/GIOAAG1DVT3R0KOA+LfGwlhSUHNQ+pe8ah3OEI/YLS18X7rG39Z5UywD+b/sDlcK1UZwB
	B2vqavlvmjh35lLzTo76aiA9dmWLb1FuVCtnQzjW2E0JUZ+hFrUlWfOS0VzORQyYMvp83RoVPS5
	DDjhFuE5gT+29ICIlV4BRwQP8
X-Received: by 2002:a05:620a:f11:b0:7c5:48af:7f99 with SMTP id af79cd13be357-7c7af1e6ffdmr2085770585a.35.1744712836006;
        Tue, 15 Apr 2025 03:27:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGv/RQ+B6YAnrAeoZXHh9w8dnJHViRqFwQoBo5bubmku0VOqPFwruMaJErRocSOX9v+yq37lw==
X-Received: by 2002:a05:620a:f11:b0:7c5:48af:7f99 with SMTP id af79cd13be357-7c7af1e6ffdmr2085769085a.35.1744712835719;
        Tue, 15 Apr 2025 03:27:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d5035f5sm1384005e87.117.2025.04.15.03.27.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 03:27:14 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 13:26:17 +0300
Subject: [PATCH 19/20] arm64: dts: qcom: sm8550: use correct size for VBIF
 regions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250415-drm-msm-dts-fixes-v1-19-90cd91bdd138@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
To: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=979;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=7lsHmihDAQQXUMJ+xvzVxLR1FUcBUfXT4xj3WNurHa0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn/jRf2KiJF/3RWgimGjf03qwqdueW6I8911K2J
 r5tSgJkmTSJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ/40XwAKCRCLPIo+Aiko
 1Ql/B/9J4PLJJVpFiu2grvOgGDtHp1pbhGXY+hz2n9lMuuHkojWPvcWTQFe+eAbEPGsBrqx9UD/
 WUFnRpK/ASWZ+05s5Iuk5VrbeQ1cChuyBWw7SC6FvkgYzlewR52gRYK7diiVq2p/xByfiIuoJX/
 o/r2+E3YxxH7EsUTuBzIvuR/LXdZIOYeHS+lDMAuyaPBo7QLNqKKl7A44uVFL6qDbHcPafd2s8+
 0qZJwgrSkEkEsoV9JCPKLXmbjmOj30DXhW1xBLG1WHL92jkGsyBvrzdkmBUoOs8gTNLRNrY5gCW
 5LfgkbWx4gzLr5rYCUrdTwlIkTlR7RfbwyiCtUwNjD6o+PTR
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=WecMa1hX c=1 sm=1 tr=0 ts=67fe3485 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=QTc1DAzlHLIpBZH1LxwA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: Yp9usFhgrlGQkFUvSgt3yBn-3gNGZHNe
X-Proofpoint-ORIG-GUID: Yp9usFhgrlGQkFUvSgt3yBn-3gNGZHNe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=541 spamscore=0 malwarescore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150073

Use allocated region size for VBIF regions as defined by the docs
(0x3000) instead of just using the last register address.

Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index a2732e04896e2f6dcdcd019d90d23731ad0d15a7..82cabf777cd2c1dc87457aeede913873e7322ec2 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -3374,7 +3374,7 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			mdss_mdp: display-controller@ae01000 {
 				compatible = "qcom,sm8550-dpu";
 				reg = <0 0x0ae01000 0 0x8f000>,
-				      <0 0x0aeb0000 0 0x2008>;
+				      <0 0x0aeb0000 0 0x3000>;
 				reg-names = "mdp", "vbif";
 
 				interrupt-parent = <&mdss>;

-- 
2.39.5


