Return-Path: <devicetree+bounces-221761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B28BA2BE7
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:28:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BB0B07B81F3
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 07:26:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B432299929;
	Fri, 26 Sep 2025 07:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RPr50GtY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 801EC2989BC
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758871626; cv=none; b=rr/X23lg+yLas6V88GuCV06ddd6pqsdZUOjo2YEPVz8yC5CyK+3d6cXeES5rQ0LgS25zDJhehXIsYGBuTV5+KwVYz0sq/hfbVyc89F34DcoeuJMqoSPdPhQYkGR3SPJ4Dzt6eijuic8UkxnDJn5vuWS3JI/yMKY/pCmwyPUTa+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758871626; c=relaxed/simple;
	bh=2OW0hX9TF4LQlObLysgxoFrzLXkqUgu/cavYoT3SHP8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bIUJ3oT3IEL6jXti7VBEDFshNX+TIIdpGNN6oUW7g7QKCYImiD2UP81c0SkToHP/HDKbNe2kp5a032Yk2jGGV0mxkq6NIK5wkiOaNgdc+/emQkLWl4h9PogU3A9oC+4RIQa9P8QCqMWJyB+ZyPGpNDvCvukhK1TROyvcg0BsUGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RPr50GtY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q6kfdB000869
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:27:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IxgE0hKaY239kxGeqZ+8x/JCG89cRYkF0bkaQ2dVCzM=; b=RPr50GtYbu331Fr7
	6uqZL8bF1SLiEM8h0rMRK7Udfa0FjSNLHTAH536sn9KLs5OZwRYgoA0+MYVxfnIb
	+DtCXyrAdMytGHio40wjlWUA8g7rOC2uLsbGJt8mUilxcve6RT9HIuv8VdTfDLeF
	fekZsobX+NLsC9IJcHUXF1uLM862eOqTFNCkq3JNeY3jIx3F+hNNo/VSxGXyhoHI
	6qxyyi/3fl2UpMVBoOGpUALAZRzpmq6teE84eJf9tu/yUQsggNgUqncj9GzMOUiI
	zkxys/hj4LXHOmzzIU7u9jvRbvo8vtKss+g9ejNzRuuNKMTDj8yWksKirSWmTmrU
	CaunvQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0tsw4a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 07:27:03 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3309eab0740so498975a91.0
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 00:27:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758871622; x=1759476422;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IxgE0hKaY239kxGeqZ+8x/JCG89cRYkF0bkaQ2dVCzM=;
        b=UwX1HILgxRhp/unvEx/cpZvv8MXgzq2jmThwm8qqBdXEnnh/sSF+sumNeLrmWDwUut
         JaJTdW4Dn2Rs8gQzqH3Sws4wT6Ri5t/Wl/TA1MCJX7REtc12wn+9awELR0lthdEdMwmS
         6RdlZxmbW8RtO5lVW3307VdqkRv7zj2V644S07HI2vMEDkiQ7PD+TTUVFWiqbuNjQQJj
         zv4IG/t+OAc78oPy6D+jSnz5kICy9ibNLmAm+8O4AOSuM7OUrwqqFDq7Zl7onk39ThZw
         W7Lr1kspxdo9qCKXkrA8W6Z9a6qcOyOAImeA7MaA6g8H521sbTicmIWzR39Oj7+1m3HH
         NRiw==
X-Forwarded-Encrypted: i=1; AJvYcCVNVVAXdmjo5Z1h9JxhqfDTVY+Pr6vaN0bUetjnLwVXmBSfQ8duOjuqe6zZ5624C8dKcMbK3DIrpRni@vger.kernel.org
X-Gm-Message-State: AOJu0Yzv7pnJtCbRu5B+5h5wGAhbj/5zI6pwtMfc6myMFsr71kzjZ0Uo
	Gld7ToEID7ZwvG2eLl3MqjHmqfKCUWs+2p9dVIq6MKZsh7clKCA8FE9m1eaEO34XlbXRonTs5Ca
	xSWIW8tU5h2iW0luz+5l04xntRHr04dqIRRy9gHmMUW+BUvHZQq93+ESbYWDXRgha
X-Gm-Gg: ASbGncun3Z7qsYrM0YMTs+CjU0M1LXQVY3/bG00wwkYJmoM5pevlz7w2Dybap8c2lPw
	x9T3AF2vsQLsb/bC5yU5sGLlN5FBdxfwJ4nnP9/zeTyeaiOOPDgDn7hLr8WEC9Mct2LbibYSqgq
	+rynhejpIkmGPzjulHlxDN2JD/XSc/5bxbx5fi4f97od8pybnoRhz1m+y859NlkLEu0BdlecFyB
	3nL2iebstMtEV0AajaLaN2y5LV353lw2hrCYyXDC5MOKtXIID7yByhSdCWlOtNEKSgVgPeO+Flt
	WtcWvUObqdWgqR7JU9ez3ezPE31wmu7Mc7WJzIrxMVe3ESa0JXBk5AHJ9KLD2uIX20FmNJiBWVS
	sOppTEp9mzCTuqIEx7fvvhqp1JwNbdXktax7clPf3QgTiVIIbRENQALDi
X-Received: by 2002:a17:902:ec85:b0:272:f27d:33bd with SMTP id d9443c01a7336-27ed44d5f06mr43818195ad.0.1758871621607;
        Fri, 26 Sep 2025 00:27:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELcGDRUyHhDjRuK+sfwMHvaCkFijxaFU/1OQEc5tsi7wGyfqnm7Rd7vXgkx97Obwa2yIJ71Q==
X-Received: by 2002:a17:902:ec85:b0:272:f27d:33bd with SMTP id d9443c01a7336-27ed44d5f06mr43817965ad.0.1758871621114;
        Fri, 26 Sep 2025 00:27:01 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671d8a2sm45117985ad.55.2025.09.26.00.26.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 00:27:00 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 15:25:43 +0800
Subject: [PATCH v7 07/14] phy: qcom: qmp-usbc: Move USB-only init to
 usb_power_on
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-add-displayport-support-for-qcs615-platform-v7-7-dc5edaac6c2b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758871563; l=2424;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=2OW0hX9TF4LQlObLysgxoFrzLXkqUgu/cavYoT3SHP8=;
 b=o+EwyMZL/K98MOCjTKEANPF15zjybJyWzaygL2LdekPrK23Nbpo2cRjW2t65GTczfpyFcNO1A
 Kq6j6hcnQLdCpTI5xm9JEDlxg1/Xuwp+qm75/ijFHpz6J4XrHFoaCPB
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=I9Vohdgg c=1 sm=1 tr=0 ts=68d64047 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=JIg05Gv9We-wtn8mShgA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: Iy9wJWgAuQMRn2gYdQXbn2pT8K2Rbtic
X-Proofpoint-ORIG-GUID: Iy9wJWgAuQMRn2gYdQXbn2pT8K2Rbtic
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX70quiVvYHU48
 DYVEYGobKQQ8l1Vvyu4K9uvPR7U/sjlrL7N5+JF1LSOacD0OQ+rTue1eGqTVDx9u4xW+qLj+acw
 jD4Brs/xy0GpwdmMTpxQrdC5QYlajvIn5L6PjNQCgcwGO00mqGF4WL/jAcetsDeAErvPI1Ds59F
 EsqIql4CGwdq3r7bNT7s0EfoLqUoV0Rdn2QAGZeJEOg1HpdVB2ubNOz4yjGeyBKdHikKFr4zJCH
 YTJUe0S2sJIyVy6Bfa/mQVT1cYNcu+kqAJNdmnGKY6O58OCBiA2h2YII3gzsrA8nVFBYrq0Nogq
 fy6qQMH5hGxdCHWS5ElanjdsqbX0CiASCX3NyZ2HYh9I+UtOqtD8DW6TFd28O9+DiiGsRNcpeFH
 krUNrjefyGp1P3Pn9gTtvmYfBF1UeQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

The current implementation programs USB-specific registers in
qmp_usbc_com_init(), which is shared by both USB and DP modes. This
causes unnecessary configuration when the PHY is used for DP.

Move USB-only register setup from com_init to qmp_usbc_usb_power_on,
so it runs only for USB mode.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 7139f4dab82fd7b0d1362dddefba178465e76fa4..a971bdc3e767727e69ea07b14d9a036347d365f4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -30,6 +30,8 @@
 #include "phy-qcom-qmp-pcs-misc-v3.h"
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
+#define SW_PORTSELECT_VAL			BIT(0)
+#define SW_PORTSELECT_MUX			BIT(1)
 
 /* set of registers with offsets different per-PHY */
 enum qphy_reg_layout {
@@ -531,8 +533,6 @@ static int qmp_usbc_com_init(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
-	void __iomem *pcs = qmp->pcs;
-	u32 val = 0;
 	int ret;
 
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
@@ -557,16 +557,6 @@ static int qmp_usbc_com_init(struct phy *phy)
 	if (ret)
 		goto err_assert_reset;
 
-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
-
-#define SW_PORTSELECT_VAL			BIT(0)
-#define SW_PORTSELECT_MUX			BIT(1)
-	/* Use software based port select and switch on typec orientation */
-	val = SW_PORTSELECT_MUX;
-	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
-		val |= SW_PORTSELECT_VAL;
-	writel(val, qmp->pcs_misc);
-
 	return 0;
 
 err_assert_reset:
@@ -599,6 +589,14 @@ static int qmp_usbc_usb_power_on(struct phy *phy)
 	unsigned int val;
 	int ret;
 
+	qphy_setbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
+
+	/* Use software based port select and switch on typec orientation */
+	val = SW_PORTSELECT_MUX;
+	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
+		val |= SW_PORTSELECT_VAL;
+	writel(val, qmp->pcs_misc);
+
 	qmp_configure(qmp->dev, qmp->serdes, cfg->serdes_tbl,
 		      cfg->serdes_tbl_num);
 

-- 
2.34.1


