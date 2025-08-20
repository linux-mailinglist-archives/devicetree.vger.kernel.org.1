Return-Path: <devicetree+bounces-206782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6EEB2D8D0
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 11:44:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0839D681B20
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 09:40:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 334E22DFA22;
	Wed, 20 Aug 2025 09:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ABGIdaKn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FA2F2DFF28
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 09:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755682634; cv=none; b=KxIOjmG18grtNjpQFmNfJZ1fw4Ggt3A5Hdn0sIspUmaVLGlQsP99ALLUKddSv2MeGIG/sPGiHVWAcoeW0tFET5duUIzBeRoTpCva4jQESYHMDlYg/LQSNTCcsoccce8XCspuE0u6vuAj6/IZkZCk2NQlHwThrz7CZQ0O3OYBpoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755682634; c=relaxed/simple;
	bh=TLXmf7CMeiTC8Z6DwRlj4bLrhrN7dz3DcuKvJOyLkT0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oGlhCYOvsal12N1SHl4m+59fUPik+lrPte+C7tSyis0/Eqsr+3M4gnooaMtmu2mOGBMkphklF+ZGcNArKBXFR+XMzSWRIoQzgtX5I39rQ2Zs1OSaANkloLPzQ/zs0jwKxZWtTM20Whn8LQWyDMHDqgnBLCQ/qfFh4rUj7o+dObA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ABGIdaKn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1oeF2025306
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 09:37:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HXCMXoEHSzzPkbhgvQAI0rYXROuTcAwPw7wz3hIiRiE=; b=ABGIdaKnG4GHl2d8
	vhzi1spaRkB4HIzlUvaFsFgyz+Ych12at+Y94WxbqxngGfSBcAiBlAEkSSLZQ+yK
	3Q778BjukosfUQutkunRWvB1rKdkhTiEvuD0wK71oudArQ/H2V3anmvFA+HTvFmD
	hrCIbnHWyY2OJyDEesWXDDIHM6HTqs0wIbhgDh4Yn+W5VgJ289C+bUIXgY4E9wnh
	XyJ+0ufZB1A+adwMhhSzGTpMXproXEg2I+IAZ+WdLsS18QIOWKbnmqUJiQy9Vcbd
	VLfOYbJ6tJVF3xdp1iJYLaZcxbpvILupixWDSaqeFRJCMDoOzM0YBmLKtCd+l3fc
	k8ozVg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52a982a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 09:37:11 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b474310a516so1259063a12.2
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 02:37:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755682631; x=1756287431;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HXCMXoEHSzzPkbhgvQAI0rYXROuTcAwPw7wz3hIiRiE=;
        b=j6eZGqCUBp4W2iJV/W85uflbXeEBrMu969slXRu+MmrRcDG73u3UKYWp+fJdozauUn
         6KVHIphq8X7ydXqpsJy4U9fBBLODAkHcF6ygjbpZhARxDAT1zq/AzlPRUeoxk4+gU6K/
         eKAB8qttBGoyn8d4by71BGg/Idu1Sb9WM1LNo8ZH96c4vvQivE3xp9VM5oF+jgBCvmES
         kSyRdz/eT7s1/qSYQemfYK2wZe6sz5aRyWikMbRPC8WL3kgbEnns1BuiZDOejucbfsm6
         /8pbgH5LfNzNmwH5icpNXfswV2ZMSYHuI8lpvyJKlN/DGh6Bt1clQQFOpfl372vOWQqJ
         bdDQ==
X-Forwarded-Encrypted: i=1; AJvYcCVnXau1Iw4U3+H1crcC39lVa7KTrV/Gywom4PBWqpOuu14KiGEh/tsHc/yF4SUESAhYDjENYyrttLJt@vger.kernel.org
X-Gm-Message-State: AOJu0Yyp9JjMoS4ngQWRh05KS0ONjC0qb1HRGs+kogY7UJyn4Sv/qmWq
	BcgcUsjmYN0qddE5oOHfVU7J6IDT4+m9Cm45qhYtYh0QSUGI/6xFDmTtqECrNm3dGWSiLgCP6s3
	2o7p6RtAXxScI3mQQZ8jQJbuCNt2eJfoqUwnEK53WosGxOTqV/OmxbM4yPWraPdkL
X-Gm-Gg: ASbGncvyAyn7endqKYk+Pm56AGcnkbndSMVTrguM8/7KrTKt2cN6/L3ab/Uy8/LZ+K9
	r/0BUJxtFRYyym81UU5dqDqNFJWJpmOjc/ztXrG+8PjUfxXQCSaG7P44tTcJ09vpdmVa9tQ+QiV
	kdla+DYfaFpeoHqyQ7urlLSs1tG7QcAliGe4kl87hxX02sqFEibHmMo9/lc/V0tCCXweApDMdqy
	Hd624OTVlFOZzUef4Kv/+uKFMNDPXf+Dz055Z78YvNGvdZIJ+yfowf7Rf8DGwos3hWSNu4jiLnA
	0oa/EYiEHDzVkqlvVDiI7cPteWXDMpyp1P41Vr3SugEx/SyUOG2N6TBtctSAUnf6il1YP6QP5iL
	Y2j1PbA7B65AzFCnpylAQ6EvSi2L5eRhDmkzw5oq2HEJH5jrifv6ZEYIj
X-Received: by 2002:a17:903:1c7:b0:240:71db:fd0 with SMTP id d9443c01a7336-245ef25bccemr12961265ad.8.1755682630836;
        Wed, 20 Aug 2025 02:37:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH9n+Y8mt33jA5ru0MGM6k0vMA0mnbToTLiA24zruGDf9ewnDEOM2CMV/Nmr32brvdMMc9ajg==
X-Received: by 2002:a17:903:1c7:b0:240:71db:fd0 with SMTP id d9443c01a7336-245ef25bccemr12960945ad.8.1755682630363;
        Wed, 20 Aug 2025 02:37:10 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed4ec100sm20954305ad.116.2025.08.20.02.37.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 02:37:10 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 17:34:54 +0800
Subject: [PATCH v3 12/14] phy: qcom: qmp-usbc: Add QCS615 DP PHY compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-add-displayport-support-for-qcs615-platform-v3-12-a43bd25ec39c@oss.qualcomm.com>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        quic_lliu6@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755682521; l=1063;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=TLXmf7CMeiTC8Z6DwRlj4bLrhrN7dz3DcuKvJOyLkT0=;
 b=tYrwmSqZ7+5gVwIwT7A3TBOs5j5jdX94tAHdFyRh09FRVFwfiHNuGNctJEVjLCL+44jGzT5KO
 VMggrWG6o4GB2Lt8oNsfF0Hw4vF+8wqfhzzMSaHydvX/vBS/00DQKsZ
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: 3hTm6kCoAnnHL1gJBGKKtKfwBCMF00s3
X-Authority-Analysis: v=2.4 cv=B83gEOtM c=1 sm=1 tr=0 ts=68a59747 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=3lua1KrjtZAvismTP1MA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: 3hTm6kCoAnnHL1gJBGKKtKfwBCMF00s3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX/qytZ12Vsvis
 BkMq/2WJmfLj6rrjJxng6iLkZIix5Pjsy7qBvcjuqJIK7m6IOwb9NfIKWTg7II+gVq4TEFolNF/
 7lMDz3pCn6tRobYcQYXE+SuMHKDbGxl2gCQoF+ClQdyryI/JT828ssFel4h2Ey4IaRcBcsb441p
 Lzu5bSr09cR0Gil2oiKLngHGe/p9cznkuAVp8zLDedpWA02tVBTTjiT6ZwbLRNQ3XOyQnLZx2Cg
 gO2MPPhup13XPQoAOYB8ZeWYOfZeSfDsxpoVIDGrnQH30L162tgay9jeKawa/BD8QB1IuuyuHu2
 BH4TA7BMtMJix0kCeBlOK7bJWkxZ/swveU5P77VqmgAafwu7PYQefD26aTBfjfTJI65pfEzZqCA
 X4X0Gvs3VKNDkSi+K06zP2vZq6L+zA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

Introduce qcs615-qmp-usb3-dp-phy compatible string to associate QCS615
platform with its USB/DP switchable PHY configuration. This enables the
driver to apply the correct setup for PHYs that support mode switching
between USB and DisplayPort.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 74b9f75c8864efe270f394bfbfd748793dada1f5..d56e334d58576d15a9ac047abe40a479e790a324 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -2022,6 +2022,9 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
 	}, {
 		.compatible = "qcom,qcm2290-qmp-usb3-phy",
 		.data = &qcm2290_usb3phy_cfg,
+	}, {
+		.compatible = "qcom,qcs615-qmp-usb3-dp-phy",
+		.data =  &qcs615_usb3dp_phy_cfg,
 	}, {
 		.compatible = "qcom,qcs615-qmp-usb3-phy",
 		.data = &qcm2290_usb3phy_cfg,

-- 
2.34.1


