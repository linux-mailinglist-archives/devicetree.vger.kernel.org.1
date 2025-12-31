Return-Path: <devicetree+bounces-250782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 00515CEBC8E
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:23:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D9A38304B3F8
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 10:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAEBC31AAAF;
	Wed, 31 Dec 2025 10:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gJMz9/Kx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cDQpU87U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5310331B830
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767176477; cv=none; b=akO/Gv1K8zgIw1b1fd/uLGoIcRAkEzVyrHxEDw0UqkXNXeUo5MuHwy0ybrtzKP+5QXiJbGBcp0XMWNQ4v7BOSc/CGvZV3TspUVV6y+9sGlwTR6eB81tAgw14XAY8Ti1z5ReoyRZ931NvDUifx2FnIysYlx6uUs8+SofM/6gcZJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767176477; c=relaxed/simple;
	bh=jJ6O5KkP658Kzoen1OLLHGHGjbrUHLY0oOPUXGr5BJk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=UEks4OHdy3O2JdV/sDvJcmE0hwmvi0mD2Fqo5iF+lRGm0HaDjp2qIxPKZDJEfZoZT/kF6GkGrH/N+2daGQED0vSEtUtANZIlLA0kUi5IXvdweaHoPWfOy5Uv7wpe2GbRTAYFj7cp+Z9nVz4QK9LSBURXZiV6zgipSIhkgx+L69g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gJMz9/Kx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cDQpU87U; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUMpbqi1751746
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:21:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=nzPReENl5jq
	P24RO4wk7cW8ZGHbcPiBK7hn8rIfW3pc=; b=gJMz9/Kx28vsyy5jyipqEuoI3ru
	eNTFhuImHSb/mV/yQoxTRXxGyS6g18f5u6TyOCH6c6m0VdFl5UyawL3BESdOqy/p
	kp1/K/lCV5+A4oUN/eEJcp+dMmWd6I83RnjZRkFEg75CRSXYOECFGOTgMolvEqgx
	FriUwsTaVW3b9YFmkkfCQfAyN8t6QsvlkmynlPxnyS/NR601vLXGwpvOWI969ZD/
	Fhqxi6WOlYGGcLirzIQQ3zMIWXVAmxm3KU6zIrihLHQcfGwyTWz6Xu3/e1uX5lzF
	DQ9O40LUfowITMQ41rq82/jO/LBFnOAJ5JZLu5ROM8djaG+cgR02JefPOcw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc0sgv4aw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 10:21:14 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34ab8693a2cso29716582a91.0
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 02:21:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767176474; x=1767781274; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nzPReENl5jqP24RO4wk7cW8ZGHbcPiBK7hn8rIfW3pc=;
        b=cDQpU87UeLLYIA0Msp0qHtXugxjzcUIKvLUUw6+L3tcPI59tWTcp5DG0u5EqiW80Ai
         i2+wBDX5BvkPDKI9vZCx3kk6UUOn+J7OiEBGfPxbWXOaO/V/NgVWs9kBPWNh6QdunQEW
         BXbNNA16Mq1d/LUls6F+T7w5LiqRWbBDFcnhbzxpykHpMOag2UC4b2vihartiv0wDffu
         8oMOwJt7V4XmZa4aHV04lfltYjJ8s+HJyVm7RxI4cQtVPDsKMxgDXm7kJwsOnQY1Zcln
         fEBpaGXUqzhkTJsDNeiEDs11gj8MlBknLXCND+TXT9TyxsJVo5az4dJ2N9lnLKUigHhZ
         liDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767176474; x=1767781274;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nzPReENl5jqP24RO4wk7cW8ZGHbcPiBK7hn8rIfW3pc=;
        b=UK0m7kMtZI5mSrGoCm4Huw7yvJCDOsytOM7xzi+7QXZaaYKbSBxAcrqW5BrVMsG5+Q
         HRvZbKT84Vq5/z/ZG/z+sv070D2lWFnJrAehqj4Ip8w4lPhzUuXJiUK+uuwB2NJFUiLB
         4nZUpKjYNSFfMauNiC2dkfGJuvGfPXGWXZ76tgYUt9rkXqFFgmYtWSQOWm+7pijztbBw
         0lAz1Gp5qHf8/CzKE8M/BGPSzVWY7Ek2J5OAUYP5hi5NVkc+shmRDMVs+0rOTtnTHn1B
         JqEQoEVj04CziTCQxjBdop5Hr9WlpshKB1FGag0hd655l7rj6QccZbSpEddLJNzWeRzr
         +N1A==
X-Forwarded-Encrypted: i=1; AJvYcCXL++gqhk7Lf2m5cqFmSWMx8vOsMUIHiAccosF8KqF04D/jX0ZUY4yXZtxTcFKtECtCgqAhqKszbDCH@vger.kernel.org
X-Gm-Message-State: AOJu0YzvFV3IZR/uW1lOsIR4BmmkW3zzI95MfQWWHjlnblV/oO7wN9XL
	qqNuLMjM68ONmAtbsA+oUZv31A0Xu93hTdXK0wofeUHEQ4hIAsQ9s2cU8VrINtnmJUKTT3Tsakr
	iLnwFQdmih7eoGE1LDCGpL8Tz2BlRKaIbFEat8v0jMox38qRmJK54d7dEm1WW4TEL
X-Gm-Gg: AY/fxX5sDtzYF6SXL2lJFhnaglyQHozOLWChb0sLhj1u+vBR6tiOG/A1zzPeQKmi3xr
	PGt7sAhVZGPHn6OobAfEVe2f9wwEz4ot90jET0S1ZxP9/NuXtCDu+xUoPz/ys+UPFVVz4Fbwju5
	n5FLcC/NLcDuhJ0nx7BbrUdnEQH+3IK/7JoZA5cPZKq4Zi5tSU0E6sF2WtyxCoUNtFeIbeeo7Rx
	S8Qe8Ee8cotlaCbG71Vy0wVh54zCeiGO7vGW0ojU/IMN6VeMBGG0F5OGqn/KpHzUShhmSU5CBMA
	Lh1+HlgNL1rQmb+McM6XvzjrQxafRtIMqFd9x+ndmmFDJbdm/wnazrdPqm2aw3jqB3hviOaF4qE
	JfXJ8NzMAjdHpuC32AB95xOw1OF1CwMS+3ks7UTqhrQecBYLG4+/N
X-Received: by 2002:a05:6a20:258b:b0:366:14b0:1a3e with SMTP id adf61e73a8af0-376ab6cf789mr30573508637.76.1767176474047;
        Wed, 31 Dec 2025 02:21:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFy2a0ud3renotrFDPVYfZzPw7C12wYHHNp4u5pkRVwHNh2m7YvZ22IXQudwiY9TrqklLPVXw==
X-Received: by 2002:a05:6a20:258b:b0:366:14b0:1a3e with SMTP id adf61e73a8af0-376ab6cf789mr30573474637.76.1767176473559;
        Wed, 31 Dec 2025 02:21:13 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e9223ae29sm32163920a91.16.2025.12.31.02.21.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 02:21:13 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Subject: [PATCH V2 4/4] arm64: dts: qcom: hamoa-iot-evk: Enable UFS
Date: Wed, 31 Dec 2025 15:49:51 +0530
Message-Id: <20251231101951.1026163-5-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDA5MCBTYWx0ZWRfX74SCon6sISLL
 TA26nhKERBmxQ3bHIQPsxPrMckMtgBr2BeVTpmcf1dF8y5TvprU6BMe62KnDNZ0TW47yuXSMirR
 nNcTH6CGXmN8uZ5jw7emPdumGcr25GNvKn2Hqs9/q39e0XeOuVVYAoX8oVA/xIN5paBo8HZBi8h
 ynJgjkoyLSfL9No/7wZGs3UZd2qQszHySk5izfK1ihbxxlmuYxs6GrG973Ei1Lov0wBufMXAPPl
 HdquzisUutL3dQ2M+bUzWR3rqR72GoyHtYdv6RJ3827ebNyb1W3LjmvXy/ycd6dZy4ZxJVG4i3D
 62bFi604jkzul5YZbXmYnB2TW2TOPbohApuXziAN94S21/AcciKr3oqnom6P69o2Yic0zzoAnkM
 dZc8ttdNBXanhX1NR9iqNwIBV47Xunh26fbFPWbm8vM7ECYU/xZALn6bfBdjSPchLE6QbP1vFjY
 Ie3z7gBSPA6V2JQRX5A==
X-Proofpoint-GUID: 40n5qCi4PJHf_BAMX8CFDASM0AC8QXNs
X-Proofpoint-ORIG-GUID: 40n5qCi4PJHf_BAMX8CFDASM0AC8QXNs
X-Authority-Analysis: v=2.4 cv=foHRpV4f c=1 sm=1 tr=0 ts=6954f91a cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=FwCcbryfLnLJMkbT1zkA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310090

Enable UFS for HAMOA-IOT-EVK board.

Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index 36dd6599402b..2b1e643975d9 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
@@ -1190,6 +1190,24 @@ &uart21 {
 	status = "okay";
 };
 
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l3i_0p8>;
+	vdda-pll-supply = <&vreg_l3e_1p2>;
+
+	status = "okay";
+};
+
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 238 GPIO_ACTIVE_LOW>;
+
+	vcc-supply = <&vreg_l17b_2p5>;
+	vcc-max-microamp = <1300000>;
+	vccq-supply = <&vreg_l2i_1p2>;
+	vccq-max-microamp = <1200000>;
+
+	status = "okay";
+};
+
 &usb_1_ss0_dwc3_hs {
 	remote-endpoint = <&pmic_glink_ss0_hs_in>;
 };
-- 
2.34.1


