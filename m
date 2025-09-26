Return-Path: <devicetree+bounces-221759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A84BA2BB3
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:27:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 067B27B7D4C
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 07:26:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D16E72877E2;
	Fri, 26 Sep 2025 07:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Am2o/AMX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5278D286D77
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758871610; cv=none; b=nK789JzD4APklHbYrkQfBdk2em7LD4iLizLoYhFRMLt9ZqPwMvmG8aNLtaMNd87gfhzh79ZtbTDw2tLVHPJQYz79ZYq87MsRWBlJQfgAU8eI6h84xVH6sU7+SeWYL3+ud0qCi6WSY3tvqqax1SVZOemeouuEPHjziEB37sAEXKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758871610; c=relaxed/simple;
	bh=ELWG8LiwmiYEyfPeDUlMXNqM8qMgGsCS4xblAlTbEJQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dwHJyOq8iwMOQypJIb6qD+cs5NR5wr3o1FAZxWkPmj9s1xIFrMegSq01wlQ6sLO4BQ9IvYRyd2CNfMJvUTDNoa6eryoUtaNTd/0JnlLCizfFAIlgkiGbXwkOhcBbK2NAS/+fZDJpgtN88q2rJ3dW8v3hVOxCo6JnVu4fbIhT0Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Am2o/AMX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q6dKjh023368
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:26:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	psRlzFRQmGXeUGSfcVjnYNDBFIL2wBL8tNvEcKPV1ss=; b=Am2o/AMXBkDOuFFj
	BN0xG6G7ndAIzTRIHxAE36OEiTYgcM1VU8HPwWUq78Ip1cVhmPlC6GD7FLsngtG5
	L/tZDjrIxOIUpVd0LVxZ0w9yLI+SDdsT24k20+VGXTA2TleoODYzrhjm2uINyXFf
	ZiWzyR4PucPH7V770vC9Sr9LT/Ine0VUnMF5iU2XJGQe404VH3Ghd7g/XZ+dNasA
	IejgBMNV7XNTSn3TNBlQnsmbTQczcuRvV9DFkfrdD5Cq14vTg3UgmRuyGP5NkDk1
	cnjP+YNvxyfByuS91zl9Y65E1QPvjSr/utupNvDqAgKThWBsUq88H3NZ7L6X/kbw
	GDWs9g==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0qsvjc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:26:48 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b54aa407bc7so473149a12.1
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 00:26:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758871608; x=1759476408;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=psRlzFRQmGXeUGSfcVjnYNDBFIL2wBL8tNvEcKPV1ss=;
        b=YIaNKQ3Az9k3tEgc3mxf+ry48H77xpNNgLI2H3kh0PYKIi2/vToXJUicN9YdaiMTXp
         IeN7wgQV0qmG5z9WlFeGVAIQCMjojRkJco+fp2fxmlaI/SMjVJ2r+bpple9d+iLPYRPb
         kKUZglbNc5olJD5mx07wVd3pYs3PVjpr/iwKhXhmmwFAaSmo7/0anOrB6xj/Ln8Mik5M
         KHxBanpH/qJDJ0eMsZ10pahNGvk94vLKVMWUGhZVCQvRXliakzT4gtCMwUwdpKwe0UQV
         EtLr7bMO1h1ByG5eVzfRuHJSwDCb6SxNo2gqY598ZkQ49Wrg5zWbivuGy7XLRehsrYmX
         61aA==
X-Forwarded-Encrypted: i=1; AJvYcCUgQfRsNPWbWRUO8+1HBhp487qpHhBwTb0tZkS4BswvHVis1VesqEEaLMEnBsIFqKpuwCwPtC25ede6@vger.kernel.org
X-Gm-Message-State: AOJu0YxPk3RGQFxObFTtVodpirxDDPvYgSEWG6FdC2LVqJNlUJsKRfue
	CRvt60pWPDFnsefFT8B2yKbhnLeb56+lJvzqFDaIARrfU0Lx8SlkR9d2TEsq8A9zUAyxZ5cfKCx
	Z75opbWtY73Cx+n9SSLsGQuCqPn35S8wo5QstMmYPdWph1K+xrNZ2zAAn9+9XU3ed
X-Gm-Gg: ASbGnctM38zRWAiULvJC/p31dDqtql3SZc6xJl24TLzA+zwgKI0iO7Bf7K9PpnabPej
	+3oNFYc9HxVxT8+o0crd2WruMer1C+40w6CuoczaNucHuSBO5lCp3vsAuRYmIWME8dyIM4ZVtIF
	M2pt10negG88lXHipqLl68yFnHOGjmaoiAYU1a5HnbSuKeB93hi2Bbs9VARlZ8coRUusLKxr5ul
	/B1tJzej+2dbkaf/nBiBr9Jcx8gLNfReeJkyZXcl74L26LViLuJMtkWzv81Xt2BR0URz5E7DGq9
	XnKlMmEPfUq52Sx1YuFLRtghMYBryWn3U+rCGbAe0PN6AOI7OdWcNptZ+4qomnoer+msVKgTCvX
	LTnYGsDyJJMJ5mTnbjyf3XwfK/aNbRn3bAoywfZHGj77XJqC6vhgcEFf4
X-Received: by 2002:a17:902:a507:b0:25a:4437:dbb7 with SMTP id d9443c01a7336-27ed49d5fedmr27989845ad.4.1758871607675;
        Fri, 26 Sep 2025 00:26:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxSAyhiw2MTcI/NmqZ98HAKqPc0hfqQBjKkbuKjAc9epuCdvKvreEt1D4+pSfhH0QsIo9TKw==
X-Received: by 2002:a17:902:a507:b0:25a:4437:dbb7 with SMTP id d9443c01a7336-27ed49d5fedmr27989565ad.4.1758871607181;
        Fri, 26 Sep 2025 00:26:47 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671d8a2sm45117985ad.55.2025.09.26.00.26.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 00:26:46 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 15:25:41 +0800
Subject: [PATCH v7 05/14] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-add-displayport-support-for-qcs615-platform-v7-5-dc5edaac6c2b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758871563; l=3375;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=ELWG8LiwmiYEyfPeDUlMXNqM8qMgGsCS4xblAlTbEJQ=;
 b=zmaVB07r32HmpVtcC+B5C54IYIVDvs8vEclG5sjAMe5L1XwWEnY4ERzGLG5jFl4Ib+AzZzwOO
 Eh2N5d9F6fcDBHXUGGh9YHirwHvVYYYGpwjrhJLv5FPRK30pA0p4H6/
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: yMJRsV5NS9_AeHT9Qo5KZWe8G0plNXJq
X-Authority-Analysis: v=2.4 cv=bJ0b4f+Z c=1 sm=1 tr=0 ts=68d64038 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=zr9GHpnC6WUyfWqp_BsA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX37Iz3X9ZNpiR
 RMm+ibnOiV/w0FesnvKw3OWoO5wcJDws/GYt2NpKXcXNNy5qQdmamDtE+dYDpupbQaLEcynzizj
 NlY8/Zn8xxNxBz5oBKGBRCZQIDnN031F47Ro4LI+lt9XbFXHf09JmQ0MTgiiX1mNGcFt89lmA5y
 9ovANAlvIZjooi37jf4nry/avfETb97zO0aNHBOpo8XrKNUcitwt8DasjN70xgANnyk+t7Ik9JB
 66TnrM/m/fJEVclPL/tsN502HT8EqxjmWbVtqrZqSwPZgVwocUlKCLCQXBFG30G3AdamitGj+VY
 WHqU/mEW4qYLN0BWyR2K0VeNLr7D6veFYnFCfDHPLrDsE6P2musJixKljwf8PM72Seoix0GQc4Y
 8nVYy3vHBim3wxFjf3uAGEkV/6BzTQ==
X-Proofpoint-GUID: yMJRsV5NS9_AeHT9Qo5KZWe8G0plNXJq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 bulkscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

The original reset list only works for USB-only PHYs. USB3DP PHYs require
different reset names such as "dp_phy", so they need a separate list.

Moving reset configuration into qmp_phy_cfg allows per-PHY customization
without adding special-case logic in DT parsing. The legacy DT path keeps
using the old hardcoded list, while non-legacy paths use cfg->reset_list.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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


