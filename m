Return-Path: <devicetree+bounces-221762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 67496BA2BFB
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:28:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 81A7362589B
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 07:28:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BABA299A84;
	Fri, 26 Sep 2025 07:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lkDAmd/c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97AD4299937
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758871633; cv=none; b=ORss22yMVba54ERnq46igT7o2qFf2Rzuyhk7RglThLjPtYDPqCuLASf7qa41p3+BpGXmk71aO4p5BEIEpNsSC585ok2mHyGdh6AWCMVXIbWJ0cYCuBD0fMSwGcys6giQzuY5tFy13XJpt0IhNwRXjj7nvMZjqtzsX2ThWpvZVmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758871633; c=relaxed/simple;
	bh=oQp9DwFQdYQWDdvU1iDKEeRn3mcSQ7RLuxSrcgehlKo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OsaM7i/ncES3g0kMHUEp87H8O3Ana7hVToBtp8ktz5eKQs3yWQVrMVZD5PGAONMBLq6uy/V7tW/p2mYw4Bqz0CTxC4VwtUNLx02Vwa4rpDPsn31f845sVZz+J2EMNw+ds1X2qTt19tcm7XI+Bza2g1oSJmajSLNk9FZPoX93XaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lkDAmd/c; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q716g6000866
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:27:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lBHyWqd8iRjW0Q2gzYVRQmCW7nBgory1hKdsYJUUAsI=; b=lkDAmd/c+gItPHky
	MG1ymVUnjm+C75EZKgwjM5cRBYektJOe3+J6v1OM4GtT0pXLwPknTxX/z+kehlpS
	1qpPRhY35bCN7Nz4JtSGWSK1+xNdS3+PzAKJGeSm+kOtqaIiUhoRLOs1hykqfXua
	XEryZK/0xKFyjhI1iv70tJ8UTgTi+1HvmsZ3H5dLjQajMPTr9elVEou+W6PM0UEi
	CScAFHYyQoUcpYtxcq6rFJWBc9A/GT+nCfnwYBx3oLh1XfcSkyiJ+TLi+Xj+jzm8
	Aq2TL+pPUyTM5P3DHqhKOZavvkRIXAq6caHglKort7bfbvrrOt5ngkkIrv405vEi
	VCqykA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0tsw4v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:27:10 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-267f099ca68so3599175ad.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 00:27:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758871629; x=1759476429;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lBHyWqd8iRjW0Q2gzYVRQmCW7nBgory1hKdsYJUUAsI=;
        b=gzETUlwuomP7ggVhVonOEtjsNf/c8iQpcx4NABh4VmAOFDXxykP2p2udGeVdGiTATL
         vXJN7/JfOe9u+YqOMR3oS/DQIlXkzv0kESViU6psd99W81jAQiiuueNrkBrOe9rCTEtg
         SOjAEhkur7cZiKeQloPhvm1qAonKVLtW0sdp6OB1o2RHdYf8d4WsWjuadYq43hJ0P634
         CS854mN8eOIUXMeOJjYkpU/lWw/o+WgwRGT3XO1XuaujZU47tBBn9RYbp2P13byr9N/Q
         QR30ErX/9psiPOA0nqkdvLYE6NV02codPznpuDEJFWI1QUdZGVMKfLfU7u2ZdLcaYRvZ
         J+VA==
X-Forwarded-Encrypted: i=1; AJvYcCW9JGVOQQEarXRnBZvOlFJU0JpF5XXlhZI4KfZsR2Q7/ogl2eBsZ91yRhFRsMSaBRlS25oPXqCpXjKe@vger.kernel.org
X-Gm-Message-State: AOJu0YzBuFHTr+sm+c7qSyKOORY6rqb+Vb7qEwwGrS0nn1yOUzuVpdH6
	I9TO0QxuVkXxATl7mZM3pc6S5+BHoRaWoD9jMOPv5v7hHowpx1w5h07+y0qBEdOPbunqPxg/XAC
	P56URnQXTlWEkuKV5KEvTrPsO5mgr4cCRqTmkwdFUUYNfNzCatUjF1PzjGkkNaoN1
X-Gm-Gg: ASbGncsSnGxIwGGaRpJ8gVl8UvFD1EuFVPKirUNmxNso30J7o/hvJMl818rqJsklJx7
	xIP7NQ8Rs2IWB26EV8RHQ2uXGyQEDudPytl0dEK/sitk+dsSQ2Lt2U7BDMkTVl/j4vFCORsmo8w
	KYiVVb28qXBZ/VkSMhxTXFRsZZ71j5G7lFgTbxl3NWXKMbcwmU1BEZqi4YDbFxEIvJd0KYw7hqL
	JvBvOT3TVk3PkK03kKPT5gxIWyYAtOXHi/a8GfF0ydTgb6+6tZuY3ko9L8jE4SGPDnMYaua6Bsk
	VorYVdFTxOVRSVcMr4aFZr+VDEUZdzNde8JFYbR8EYRHg3d7BEOjfC4jLJ6D0+H+0gE4lD35uZH
	pyRqx4AveXyZDYvXRvQrdTu76yF5qNv6b2PmDTPh+l9doNVeDG7h5BPHG
X-Received: by 2002:a17:902:f551:b0:25c:b66e:9c2a with SMTP id d9443c01a7336-27ed4a36409mr41153935ad.6.1758871629105;
        Fri, 26 Sep 2025 00:27:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE+O099xujjC/yO29xVuYREkkBiX2GXu9s5RriPjceCnhs9oR7nstztkgV9IiUszESNtEahwA==
X-Received: by 2002:a17:902:f551:b0:25c:b66e:9c2a with SMTP id d9443c01a7336-27ed4a36409mr41153415ad.6.1758871628393;
        Fri, 26 Sep 2025 00:27:08 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671d8a2sm45117985ad.55.2025.09.26.00.27.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 00:27:07 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 15:25:44 +0800
Subject: [PATCH v7 08/14] phy: qcom: qmp-usbc: Add TCSR parsing and PHY
 mode setting
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-add-displayport-support-for-qcs615-platform-v7-8-dc5edaac6c2b@oss.qualcomm.com>
References: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
In-Reply-To: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758871564; l=2826;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=oQp9DwFQdYQWDdvU1iDKEeRn3mcSQ7RLuxSrcgehlKo=;
 b=5At+q9+DnToGjvm7JMgfhDG/u1O0nUC5yiheYa8olWBceN5UNjNGS0ctGUNJs5yiRruaCRpoW
 Ug2K5mb7goTClU9tN6MRx+HQIYAxz5hnlhHOMwLEuoKL+Cz9JMOcGUo
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=I9Vohdgg c=1 sm=1 tr=0 ts=68d6404e cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=NTL_5ILWjaOn02JYBUkA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: PJ1QbzKbIkzuqQiDSpbyNikoQtyhxDFM
X-Proofpoint-ORIG-GUID: PJ1QbzKbIkzuqQiDSpbyNikoQtyhxDFM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX/0FRz8xF7laB
 fWdlWmHvVtLMgoQCCvLoOmOMXiSAySvCGwE96GZ7BddD4Jjb12Cq/piXtTKzubCoK+ZITvqqYy3
 KY5lTV9uH2UX95raheHaURMagtHHm9VBXD+utI89VMRycTAtHFpJr/5UURHEMNbkuJs9+0lgy3T
 IbWk2EyY0ZIEzpdMYePNXPf2U4ZZV3eur3Pz0Cz5XC+5nLzjydvQ5+dVuhXUcKyUSNC/AVkhF/Y
 eGzP0Qg+YfzxUSikchr8wwOuts0eiV5p8D0I4EnsYLBVEn5eARmvFq56907vE9whbjj248SBw8a
 bHImupHDXfSzq1LHGuaAKdwMkA1uSlxGPeOQuVvU2s3YJn2MPqWZEudIBFRcvByllw/87BlVmGK
 rIQlmkQBQ9OWDAgzS4xLW/4T1nce5w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

Extend TCSR parsing to read optional dp_phy_mode_reg and add
qmp_usbc_set_phy_mode() to switch between USB and DP modes when
supported.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 25 +++++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index a971bdc3e767727e69ea07b14d9a036347d365f4..fab6ccc4a5f12a4096e9a71f066f8ccec73adad2 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -529,6 +529,12 @@ static const struct qmp_phy_cfg qcs615_usb3phy_cfg = {
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 };
 
+static void qmp_usbc_set_phy_mode(struct qmp_usbc *qmp, bool is_dp)
+{
+	if (qmp->tcsr_map && qmp->dp_phy_mode_reg)
+		regmap_write(qmp->tcsr_map, qmp->dp_phy_mode_reg, is_dp);
+}
+
 static int qmp_usbc_com_init(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
@@ -669,6 +675,8 @@ static int qmp_usbc_usb_enable(struct phy *phy)
 	if (ret)
 		goto out_unlock;
 
+	qmp_usbc_set_phy_mode(qmp, false);
+
 	ret = qmp_usbc_usb_power_on(phy);
 	if (ret) {
 		qmp_usbc_com_exit(phy);
@@ -1113,6 +1121,7 @@ static int qmp_usbc_typec_switch_set(struct typec_switch_dev *sw,
 		qmp_usbc_com_exit(qmp->usb_phy);
 
 		qmp_usbc_com_init(qmp->usb_phy);
+		qmp_usbc_set_phy_mode(qmp, false);
 		qmp_usbc_usb_power_on(qmp->usb_phy);
 	}
 
@@ -1263,15 +1272,16 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
 	return 0;
 }
 
-static int qmp_usbc_parse_vls_clamp(struct qmp_usbc *qmp)
+static int qmp_usbc_parse_tcsr(struct qmp_usbc *qmp)
 {
 	struct of_phandle_args tcsr_args;
 	struct device *dev = qmp->dev;
-	int ret;
+	int ret, args_count;
 
-	/*  for backwards compatibility ignore if there is no property */
-	ret = of_parse_phandle_with_fixed_args(dev->of_node, "qcom,tcsr-reg", 1, 0,
-					       &tcsr_args);
+	args_count = of_property_count_u32_elems(dev->of_node, "qcom,tcsr-reg");
+	args_count = args_count - 1;
+	ret = of_parse_phandle_with_fixed_args(dev->of_node, "qcom,tcsr-reg",
+					       args_count, 0, &tcsr_args);
 	if (ret == -ENOENT)
 		return 0;
 	else if (ret < 0)
@@ -1284,6 +1294,9 @@ static int qmp_usbc_parse_vls_clamp(struct qmp_usbc *qmp)
 
 	qmp->vls_clamp_reg = tcsr_args.args[0];
 
+	if (args_count > 1)
+		qmp->dp_phy_mode_reg = tcsr_args.args[1];
+
 	return 0;
 }
 
@@ -1319,7 +1332,7 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	ret = qmp_usbc_parse_vls_clamp(qmp);
+	ret = qmp_usbc_parse_tcsr(qmp);
 	if (ret)
 		return ret;
 

-- 
2.34.1


