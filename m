Return-Path: <devicetree+bounces-251977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E60CF92F5
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 16:55:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E61A73062CCF
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 15:51:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4A5C34405B;
	Tue,  6 Jan 2026 15:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ePgiS/tZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ObIFVDXE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 970033446B5
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 15:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767714164; cv=none; b=rm2Pt21Xraqh2vurVo7RvI9JHPJ2Y/45u2txlPyHP68QaYgwXoItYwx3oWUGXCro9TCquDuK1hREpOonpN3pmacy1tMwQCEK2c9IZarDDWufiFt0ZUYkyt90PasU4FF9chZTeRp/3Kbh1V4onP/2CmFGMOptMRF73peBt5JiAeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767714164; c=relaxed/simple;
	bh=3LB0cITSfH4Noq7m1s58c2osN7yIye+Lx3PTEFp67co=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JWejS6EI7a01Z27gsQs1yLCtpx1m3u78uwlqI2uB8f++Tidnp8maJ5M3ltvwG1yOmksMiH+Zo8thC+qZ+9WwCXkB2Y+CwO4M+B91g4myVlndinS1YcDj8O7sPDmfqbcZBMF99LyWBQRsJnFO2RlbgD1ZRb1LKtxhqBPOAOS+LoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ePgiS/tZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ObIFVDXE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606Efor4322965
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 15:42:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Mty9CPP7Jsu
	pHUVUgRA6WjTGLkSoSb22qlCPdm1xAOg=; b=ePgiS/tZBFbikeLjSU9HogSMWFk
	XlDRXeV1rtYk3U+ALiJtQPVKfC0Zc9yeNzS5ImKK3/s3mSFA27O7MceSlbbFvJsS
	sk/CvnISTKzDfOREzOgN8CA3OoFSVkCcYCE1nGl1BIxkHgHFCtFXwVSDcaqchprt
	bM9xJAkp22LNu2Q3B669WD6SC/7dyPD2tDk/yyeSa5h9LapK613dT2anMFgaXB1B
	Wlu7XTF0gpJL6vcuhM6K1yhKqEM9QvjsFRi1QLMk4npZ+Hsv0rC2j97CFUbqKiIC
	Z/9xUgVc55VzVYMExb8aNLzX707+6uUJvBBnFJ0kI14Y6JqpagTSKpYN80Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh4crg62c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 15:42:40 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a351686c17so23371775ad.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 07:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767714160; x=1768318960; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mty9CPP7JsupHUVUgRA6WjTGLkSoSb22qlCPdm1xAOg=;
        b=ObIFVDXE5WotAMVJ9dTW+rtkjRZSpMwo6C8vknKWlHYV8Q24cKXlbFt+x5gndseMbo
         JXDl5esnhv6kJbg74kguaTaqVZJQXXR16yxZ0wEkbi2V4VA21VEMglgu7UWJPNHUT8Xs
         ZBEYRDUNFJP8CpaSuCG71LJKn+vKMech5njisp2Ub7gE6py63VGpUcCnyILE6SGOoEk2
         /cAIQHMV21iGlbeTi6yKtO5CzqEf2Hb117TTSErADHLvUWrKkBfdKD67KT1yMbPhAsYs
         2sP/T8JVMHl8ijYvcrtVHpKmIi6uWzdFwuGsgUf6rx76ZAyczYxGkRZQ600x/yJlKTrs
         B1QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767714160; x=1768318960;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Mty9CPP7JsupHUVUgRA6WjTGLkSoSb22qlCPdm1xAOg=;
        b=lBPgF0crPA0g7Eo9I5GQPHh4zy4IZU+ajrueKZE9/GWmpntl/5eDD74ro2NEl9feB0
         vpYBa3lZinAa0tvSChX327B5m/PoiGYXn4bgaJGpc58Z7H85o+ir/kZNaucRlbpTOVxD
         5ckDKjbOm9SspezQIYX6DIZDy9UlTWGBlObGEgtfo1ZJof2TaXtAa+zT93xSLK/75hJe
         8m9E0ARaINftsTLL+QjZegJSJX1tG5qZ4sif2yFJAlaEy62RbxA1nUH07XklXUoEJT9t
         v4AbC4Nl2hPdKvC7gCc4nTcf2IvHKAdjpy6OcrVXV2Zj+jWb39HuLFm7oHunfmSplMzV
         JwUQ==
X-Forwarded-Encrypted: i=1; AJvYcCXJEwzrMzN0G/J/yqiRbvG5QgjutT2AoXbE4Hy9H/MMNOMmLMlSEz8ojnuAzf5K+qvryJA7q6s2/KHr@vger.kernel.org
X-Gm-Message-State: AOJu0YzX8564wQzD5RA/w1T+qe+6jdPJWZ2kbfeOaaePU3ZoVS5J3Z51
	SrtMH06LNxNvEQpULf0aGC1cxq7N1CWmy0Bas1dtCvNBl2P9joG5Z+qEFsRbkPMpd4IKtKFMoj7
	6cirI0yZ41FeME9RoXxafJn+jW4JY72c6Lgx4sLieLMYxX/9dGy+8+ltfEA9M/lc4
X-Gm-Gg: AY/fxX4+Ty5z9091eRtn2bjFBfm3aZhSjMnjs800pqDIiPEgTDAIpZpaEbQd7m0DWYL
	98ikuUtmy0uRvjvAXJPh6apWFMru+MV6/0ma0Y08JXwdANrawqmkFalgdfqQz6USxP0bcZO3qFR
	3FnRaXSYlgflsVUzOTh4xVzuWzA6SymI2UVNUOVJgip1ONIbWl215ObhpDrYwOACxorq0rWbpOu
	K67F+xBIvZk2OpyGFQbSOiSOqUo0QH0k23RQdfELThG4Je+zde+xpgXnTjXEvF6z5yWqj/PtBhz
	HPbQqRA7NnOuzNoM+XfBMWJaa/ti8WoYzvJ72p3JJVjkF9EZU+h/0GvrSn7jP0iGDOgAh6ooKP5
	o7McakpDrpeTEyf/VayluLoX7LWwqc+hohSJqfjq8dkaxOW2sKef2
X-Received: by 2002:a17:902:c40f:b0:2a0:c5b6:67de with SMTP id d9443c01a7336-2a3e2e1e671mr35426935ad.52.1767714159744;
        Tue, 06 Jan 2026 07:42:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG667pmkGDth+EgwS5JLYw269C1+n+LtMnapVQaOfdQaxrvpwZx4BYdJ10YbUoQ+a3wnQQjaA==
X-Received: by 2002:a17:902:c40f:b0:2a0:c5b6:67de with SMTP id d9443c01a7336-2a3e2e1e671mr35426545ad.52.1767714159218;
        Tue, 06 Jan 2026 07:42:39 -0800 (PST)
Received: from hu-pragalla-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cd492esm26606395ad.98.2026.01.06.07.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 07:42:38 -0800 (PST)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH V4 4/4] arm64: dts: qcom: hamoa-iot-evk: Enable UFS
Date: Tue,  6 Jan 2026 21:12:07 +0530
Message-Id: <20260106154207.1871487-5-pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
References: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=V9FwEOni c=1 sm=1 tr=0 ts=695d2d70 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=cMKPt8sKVRzp0kMMbBYA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: eoTULuG-Q1S_OqhK4wji-tXmnUoFnuDv
X-Proofpoint-GUID: eoTULuG-Q1S_OqhK4wji-tXmnUoFnuDv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDEzNiBTYWx0ZWRfXx3v8LRvxNs4u
 dN9jQ8/yPSm6myfbegOGVqwypwrbLqxnY03BIVkXK95djwJnpzBoHZc1iNWXZpthfkB8mV+90r4
 g4YFvfdjvgk8MUAWMgPX1PvMPmohWnK+zZfXkX8vJ3H+OnkutmLzC1UO8oAYGEZPjO9/bBSKAGe
 fYamCN1v5Piw5jdp5IAYBCNKWc/BfV9bHhmzoKfd4gQ6QV+FKISPv/lnCKi+RukAP2B9MnahlfG
 YuUMyRsieE4RMPYBppwMGSNf0vmTeGLilCl5tY/X5dWOdqft2TB3WheXcV2DkhSIeE5FZ7C+fSy
 xDYwrbJEsJJE3ZU2cXve2PLWcf3IoN5FuP3SnJlsOzef+HHTTsERb9uQtJ8xrWdEDJb9W2a8oe1
 lM2BZqtP4EUN0KeWeEZ/4DJFzAcu3aLybpV0txqatYNhHxe25Qa7ekSC2lKRu8WbjSaUL8aJ/8w
 SGwDb2WnuwmDJf97ZnQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 malwarescore=0 spamscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060136

Enable UFS for HAMOA-IOT-EVK board.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index 88e3e7bed998..23cd913b05f5 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
@@ -1253,6 +1253,24 @@ &uart21 {
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


