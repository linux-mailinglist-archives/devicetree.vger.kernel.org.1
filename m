Return-Path: <devicetree+bounces-221212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 80023B9DC72
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:06:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B3FF5423CD3
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 07:06:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE62F2E9EC8;
	Thu, 25 Sep 2025 07:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h7wC7Db8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504AE2E973F
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758783957; cv=none; b=qkWivptLvjuUmDi4BVV9T075terEw4LedKnfNFoFWndyKlW1IxFV8aDFRwIn06tljjm1s+66IYuOdP53OZQQQM1GaTxqejyHHj8Iij/S8Qab0ye/BZNlqkULJkHzFSE1or0CG9GHgZT7lW0tiLkLJqWPO2YwlCSu9vt6K9+EYI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758783957; c=relaxed/simple;
	bh=xkXgNM4liwYFuSUu6liFsyLgM/OZQSJZDsJNBIKnRJI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OG1ent12A0kqT3GxK05ame6kEud9rqEjyy1xVhy+svotpBfDHfnAy2j2ZBYkirBot+9pM7KpY6FkNNa4o9o+vI2kcQMTcbZmOFKih7XMWE2dFpmJjNU6D4yxQnU0qdavRFFp3IY78nzI0RoNTfwmvFRgZF26/+BYKlIbLi1aoiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h7wC7Db8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P16F87029478
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:05:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GrguMAXW+fsIhAkyrPq5HAaKMZ1Mc4h2NG633gQkApg=; b=h7wC7Db8Qy9+pqRg
	27cIvsmRzrzh77Y7Oni14zgKZ1z9R5KMU7kktkrm4RTLreYWhbJX9YwFFW3xpkw3
	X33ZSCuAtnjH+m2Gcmx0t4+agws4INoC9r0A7uqOfAFLfU+sb3gtwZnodkNFKTz2
	gMCqV5B2WHBcHQJVCHGChQ0lSglrVKZVyPoOGpkIVEIF2mmMZdtblruMcHvwO7kE
	XyjgCMTcp994DuWkv/2gqRaDao92xMk04VcKL8yCZ6Csaxh23OvKckYaVfpdFJyQ
	mLs20y/PXl0yOvtFDe2l4/k6vv5yD1kep4XiCmIDE+HRZ9svAGSymsxt5H3sRBNF
	j1dUaQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fq12h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:05:55 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3253ba05aa7so174471a91.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:05:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758783955; x=1759388755;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GrguMAXW+fsIhAkyrPq5HAaKMZ1Mc4h2NG633gQkApg=;
        b=uzivXX9dlMHw8rJCMHsC0qGjTSLCpxW93vIyFWq3VTHIRBEgVTJj8kia1ffPqFrf7a
         LxDygSQBBDS4SJ/YyOLHjTN3rL7pLE1GHFqBfsd4vWZIIBjC1WQbHElXKystkGps/FXM
         V6OFj86TT5DpSb9YVPmePBkyQE//N4LTkbEfScvo3NHkzEoVb1ganvz/sSRuqpbsrcnV
         t6SkoBmsHvbjaHn5hVeCkMODBRH6J/XzH+HV3lmwMBGpAkw9q/MXslPjSekka70MNKBW
         oOPZCOx+JdmNjhr6YMGab4umzDT7FaNuNgJFTWk/axD1BDDH714E/EzcOR3zft0hSTtb
         jt8A==
X-Forwarded-Encrypted: i=1; AJvYcCVK8PHAm2ToK8ohEq+tY+MmNs5zmHkXNKorT1llwx1k8StCUcQ1OExOilPSIArnsLzHkHudRgXyNali@vger.kernel.org
X-Gm-Message-State: AOJu0YwLpnPIn5vP0cKR8o80PnFagGRFdbnlA76JlAuTE9dZmvchWv6U
	fP3BUMYchOyoj3VGJgiHB/iDuiHFafJ+U4BDwYOp/f91PK+YDKiSSxC33FAUV9yX4HY2qY86Rf7
	JCHYR2jb02MTMKFYg7InPGxMAV0xqJ/k42Ff9oPt+7GBVuNtl7LEWWDROJJvYcYMw
X-Gm-Gg: ASbGncueTgeoGvpGTqQBdGvd2mWSlV7sb9iVUFBwyuqpq5oXrIB28iBMatrES5+0mXh
	sb2BSZ9QijFgHIg3W+XixFUP4OFX78J9q/IQhb5mtvY6R3ZbKemXqHel5d2nIZ7gqVpL4DHq5Aw
	dhjFAOdiik5JiMDneavyovRobc14Eip3dYlgxp1Vj7y86RySP9biJK3K36LqQwvFL2AjQdCIQVf
	0Q6jqhVVZvVcEFa3QmCHHAUv7F57POrLgwxy1Yt/Zu7HsjuO5WeT4bI598vsD1GkhPsBj9pE9IF
	bv9tO/giAXjJrCS9zB61UzWJxE3UVu9sGjc0+LLZuQ+CbtwwvJGFbAt/jLyVAhZ5PeaEstrHOrM
	0NL6Bp2enyMRlLS+374px+VYmbnmFswGK/Sc2MQFXkwBf/kQSi3XPt0p3
X-Received: by 2002:a17:90b:4b87:b0:32e:8c14:5cfb with SMTP id 98e67ed59e1d1-3342a22be84mr1423259a91.1.1758783954702;
        Thu, 25 Sep 2025 00:05:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGiGLGl2UMupnuQtpEa9ZZfBh6eqEqcbNFWWTUDdSOwpa28BBCD0SysDLrBKUXsdg4C53UiFQ==
X-Received: by 2002:a17:90b:4b87:b0:32e:8c14:5cfb with SMTP id 98e67ed59e1d1-3342a22be84mr1423240a91.1.1758783954248;
        Thu, 25 Sep 2025 00:05:54 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3342a2bd584sm914253a91.0.2025.09.25.00.05.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 00:05:53 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:04:51 +0800
Subject: [PATCH v6 05/14] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-add-displayport-support-for-qcs615-platform-v6-5-419fe5963819@oss.qualcomm.com>
References: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
In-Reply-To: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758783909; l=3308;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=xkXgNM4liwYFuSUu6liFsyLgM/OZQSJZDsJNBIKnRJI=;
 b=J0gdvfqjAFOidyttJubhcvzBjqP1Zm2wCBXo2NSulNdAolL4liaYtKEaBz9IcvDS151zoaVyg
 bqAqIBWVTU1C4VROc9+fi0LDhH2w5lPAT/FoB4VT18AwGr6Q8XpxwWx
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: 0wG6SDGn7tw-PZKgtMafmInMiBx_D1Mx
X-Proofpoint-GUID: 0wG6SDGn7tw-PZKgtMafmInMiBx_D1Mx
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d4e9d3 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=zr9GHpnC6WUyfWqp_BsA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX8RR9ZaIirLYq
 07JXFX1xsgxDn9sIM56c/DA6cI7VT5pFSrEBBIFFn0ff7y6WtCz5NgrLF6EUM9BuT2ozqASffTr
 C3pP+Vb1Fy/mCI1Czf9ZFUrTHogUjN6JFJwyAuuicFrH5Iw2S54LS/b6p8DGBzFgPvIaRz6vxAs
 /EJrKy7b59GeWms9nNJZHjHAYm1A/fPYfI3rsgXeGo3zDE6yCjfCmXKz4MYxjcxyHyP7XrsFMZm
 HDhKIJb84NwCwB3EZKvfoB9orMfyUap50eN8SPnlodoIGaTJiEWQprb3bBAHQFPCYSmD+YZjhwx
 P8i/7CxFWJsWDPya2Xvs3c5phwax2n6HquTs8/fnw/kShTRz8aqaQNMewIEd/gzYRBr4zrClJx9
 Mrhynp59
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037

The original reset list only works for USB-only PHYs. USB3DP PHYs require
different reset names such as "dp_phy", so they need a separate list.

Moving reset configuration into qmp_phy_cfg allows per-PHY customization
without adding special-case logic in DT parsing. The legacy DT path keeps
using the old hardcoded list, while non-legacy paths use cfg->reset_list.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 3b48c69f9c3cb7daec495ebc281b83fe34e56881..f9e20f43435c050e33e9490343a4693a339d692a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -335,7 +335,8 @@ struct qmp_phy_cfg {
 	int (*configure_dp_phy)(struct qmp_usbc *qmp);
 	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
 
-	/* regulators to be requested */
+	const char * const *reset_list;
+	int num_resets;
 	const struct regulator_bulk_data *vreg_list;
 	int num_vregs;
 
@@ -464,6 +465,8 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
 	.rx_tbl_num             = ARRAY_SIZE(msm8998_usb3_rx_tbl),
 	.pcs_tbl                = msm8998_usb3_pcs_tbl,
 	.pcs_tbl_num            = ARRAY_SIZE(msm8998_usb3_pcs_tbl),
+	.reset_list		= usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
 	.vreg_list              = qmp_phy_msm8998_vreg_l,
 	.num_vregs              = ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
 	.regs                   = qmp_v3_usb3phy_regs_layout,
@@ -480,6 +483,8 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.reset_list		= usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
 	.vreg_list		= qmp_phy_sm2290_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_sm2290_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
@@ -496,6 +501,8 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sdm660_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.reset_list		= usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
 	.vreg_list		= qmp_phy_msm8998_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
@@ -512,6 +519,8 @@ static const struct qmp_phy_cfg qcs615_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.reset_list		= usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
 	.vreg_list		= qmp_phy_qcs615_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
@@ -1051,8 +1060,7 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
 				     "failed to get pipe clock\n");
 	}
 
-	ret = qmp_usbc_reset_init(qmp, usb3phy_reset_l,
-				 ARRAY_SIZE(usb3phy_reset_l));
+	ret = qmp_usbc_reset_init(qmp, cfg->reset_list, cfg->num_resets);
 	if (ret)
 		return ret;
 

-- 
2.34.1


