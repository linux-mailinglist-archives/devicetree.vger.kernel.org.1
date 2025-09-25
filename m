Return-Path: <devicetree+bounces-221216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 741FCB9DCB5
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:07:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DFAF41B27569
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 07:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E1432EA479;
	Thu, 25 Sep 2025 07:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bBmoQazD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700332E9EB8
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758783985; cv=none; b=Z88cVPoJ5kOxH8doLOYhTHXNWwsU0Eyg184QV3ILjCJ0mnlmeSXPWmEfspzHzZQQCRckMI01p1kkTcFRYv3sB1oXjtRfU91Wds4vcPbaAip+gpzw08S4wzAUvLeJz4wdWBVxiJotaqk830EKdynwUZBcleytL67f/xff2JOKATI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758783985; c=relaxed/simple;
	bh=LgO4dxC3/fyEINo3QtKn8terWYpqw7iknLpLIm5TGwU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Dk/Xw2ZMiGvsud/D4pNp1t4EWatvygUJUD0qH5NjAxybf42ctO43TSB5tGgsg2XeIv9vJZy7l0Koju5h3fYe2T+PR4lAFdSf/U86BSn8ITu9r/YZPVLJnUtExA45aSPSfxMz9JqTbC7VF6xC6XEKltXgIpZIJg8tv3FXo0P1Rjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bBmoQazD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1WO99029619
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:06:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	y92IX8yih7rAKX9K1Ho2mfy8GLr4Y08/lKKaRrWHxvM=; b=bBmoQazDbXi+yyAN
	/xWwQC5UMbbF2crWnQnHfsqmtqKTZlBj81Nr+VDWjkC5W4D7MPDMVorqkk4ssJ/1
	xrWQqlYiNmtKp+oXAGoCbmkEl2QOaI7qLpQwhEWGW7TPQe0FaU0qU61voSF5YsVP
	bX3kcVjltI2HM3w+p7ymDxN0qMgNiLEoY+YXr6rMOCvmBBUW5JDSpBvSB9ytqobx
	W3/k22clBLAakYsw71NL/7MG9VR8WjHGmk3P/8NbReQpV7I6d2seEie29mp4CgOU
	648OK8QPjTM54rnesv+5aPZwFYALwCJMdbF1jZUPjUpRmskB8DmkbXAKBKVGBbBq
	nv5t3Q==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fq155-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:06:22 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3306bae2119so300020a91.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:06:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758783982; x=1759388782;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y92IX8yih7rAKX9K1Ho2mfy8GLr4Y08/lKKaRrWHxvM=;
        b=piXZkVsVN0dI+nhiYF3oFt/yFxz5dCvN3dfNnyBrdRREjHSkKrrHHXmbmt99AFaazC
         KjhPhk2ecprfH0RlRCwJrmzekydWSU1Or6gv6mVzc6hqmHWeceobOm4x3m1NWiUhR+Gn
         DRcZWfl4LPQVRl1KYKPF4pDbm/v4xsqyWprTEeweNcY1Z6DZF09D7dnP8F8erSH+1muw
         WBZ5KvvT9Ls0jsOieKdMymmnftnC1KRbvbYuqtywMfaF50bsUUnomExrbCYiE26Lzvy1
         EbJr8rwARuaKBg0tCQCWS+Z39FWIN7a2G3hSfMXDbBYqecPwKP6i7yBm0RM3Z/5cbyrp
         hfXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOWTEs/JXnRkBCi+wnVGCuEktfJAXKsm3D6CKV1EKYm1Y+wUpkshqrpYYxbYuvoy7JRy87GMmedG7u@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8hHBSOpORjCTXu5QJC0ljtXiGtA/qfPYuUL6WNg59qo5UNEUG
	s9E8joR0PaLrtLC7nIMvzS+rKpp9cXJA+KxCoQs2DkgzbQ6Wf/PooE+F0kPqKnS1rzKB30OlvPy
	G5sVHWSW4gkZu8BhEINErsH/Uta8Q6w4nGglk4adkqkZGPqorFvMqB3TpHMQsuuNY
X-Gm-Gg: ASbGncs96aJyiLk1Ri+dSsZkwX50HEq6h9Ez6/blcDqxnX8GgXu8h34kS+q/ZLpczvA
	RRrzhwycU1i25e+XGVOpOBeeyrMdv5U+/H20OdHlnApqdCUrO89nl2auhUgJ/0Ad84bYGw4PYe+
	4wQY9A5mT6xemORKv5zVPUs7UMtnm/WQa6eaFrIwDk7xuuc2F0cfTW/emdhzwz6OVp9V1EYhU2l
	ubusVeClEe+1fqUSXMwum+bsTwtKq5Y0Gxz6S6QVx4K0Etf2V/lpkhWCBAf9PjFJZq+b04FN3c0
	h7klBDp8SsCJZMsPfcvAgbGRSe4kgFTUgEBVseVtgo9P0bTKVnXfNkz3HZPYRaW4+1Il9TVuhri
	EolUe19hfD5DdVkkgb12d2GuvTD8LwYEZkLoeKOqORQMof+ri4NzNRNQi
X-Received: by 2002:a17:90b:3e86:b0:32e:74b6:4ef9 with SMTP id 98e67ed59e1d1-3342a14d070mr1460407a91.0.1758783981937;
        Thu, 25 Sep 2025 00:06:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVJUgOXOgcJy7m1Ri1LQlK1+kpAFT006YGG5mO4DwrycGUMXIxaJCXosIVFVpl7iMocv/LOQ==
X-Received: by 2002:a17:90b:3e86:b0:32e:74b6:4ef9 with SMTP id 98e67ed59e1d1-3342a14d070mr1460388a91.0.1758783981458;
        Thu, 25 Sep 2025 00:06:21 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3342a2bd584sm914253a91.0.2025.09.25.00.06.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 00:06:21 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:04:55 +0800
Subject: [PATCH v6 09/14] phy: qcom: qmp-usbc: Add DP PHY ops for USB/DP
 switchable Type-C PHYs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-add-displayport-support-for-qcs615-platform-v6-9-419fe5963819@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758783910; l=6447;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=LgO4dxC3/fyEINo3QtKn8terWYpqw7iknLpLIm5TGwU=;
 b=zWCI+Y6nYrd6jOeKJbvuKnKkhi579sNsoRkkNE3Ap9IpMp3B6DTUyrGf+V3pboIrED88kMcoi
 3aRsE0/vFR9C4RZUhCPJhLZ2XLOZLdVkp7VOnpfXz2OlmdvlLfAz9Wz
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: w0PuKKt7Ncok9UaLXjmHghYjY89GxyWC
X-Proofpoint-GUID: w0PuKKt7Ncok9UaLXjmHghYjY89GxyWC
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d4e9ee cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=U7rhxC6dmq8FdBza6woA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX7Co0rbYeXKCX
 Alwm2jaxJ/GwsPOjCXv2+yWAbrAdI9TnAKdO3Q3ujZ93yPZR8IRoXbvbZl/jglgI85BYAKYOboQ
 +AhWOM+HOHIxtavO74Ad5IUR0cgaRuJZcCI23Av4PlUq3w0+Le3NjMMtsuNniW/jJi56cwiMW9b
 Sn4T4HBTMXyG7UmErc80wZaNphCpgl+5q9BToPHpm6Flo0E9ZVXL0vOj9f17NxjepBYbi1LLjV6
 RVPUVx/GqJjdsBlodr1VQJsyuU7fhuooZr+Rt1z4rjR4piiRKewUURFgmOy3RnPtlttbQMy0uj7
 UkFju3iex3HO4jUv3GDGiWkhITL1najmKk2jLgSUzcCpgrZ0RmkiKzHXofJ5qOOo+irLcMj8ODS
 +eE9A/Yg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037

Define qmp_usbc_dp_phy_ops struct to support DP mode on USB/DP
switchable PHYs.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 194 ++++++++++++++++++++++++++++++-
 1 file changed, 193 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index fab6ccc4a5f12a4096e9a71f066f8ccec73adad2..3580c19fd62e02aa373cec42e9f53143f39214df 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -29,6 +29,8 @@
 #include "phy-qcom-qmp.h"
 #include "phy-qcom-qmp-pcs-misc-v3.h"
 
+#include "phy-qcom-qmp-dp-phy.h"
+
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 #define SW_PORTSELECT_VAL			BIT(0)
 #define SW_PORTSELECT_MUX			BIT(1)
@@ -711,6 +713,159 @@ static int qmp_usbc_usb_set_mode(struct phy *phy, enum phy_mode mode, int submod
 	return 0;
 }
 
+static int qmp_usbc_dp_enable(struct phy *phy)
+{
+	struct qmp_usbc *qmp = phy_get_drvdata(phy);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	int ret;
+
+	if (qmp->dp_init_count) {
+		dev_err(qmp->dev, "DP already inited\n");
+		return 0;
+	}
+
+	mutex_lock(&qmp->phy_mutex);
+
+	ret = qmp_usbc_com_init(phy);
+	if (ret)
+		goto dp_init_unlock;
+
+	qmp_usbc_set_phy_mode(qmp, true);
+
+	cfg->dp_aux_init(qmp);
+
+	qmp->dp_init_count++;
+
+dp_init_unlock:
+	mutex_unlock(&qmp->phy_mutex);
+	return ret;
+}
+
+static int qmp_usbc_dp_disable(struct phy *phy)
+{
+	struct qmp_usbc *qmp = phy_get_drvdata(phy);
+
+	mutex_lock(&qmp->phy_mutex);
+
+	qmp_usbc_com_exit(phy);
+
+	qmp->dp_init_count--;
+
+	mutex_unlock(&qmp->phy_mutex);
+
+	return 0;
+}
+
+static int qmp_usbc_dp_configure(struct phy *phy, union phy_configure_opts *opts)
+{
+	const struct phy_configure_opts_dp *dp_opts = &opts->dp;
+	struct qmp_usbc *qmp = phy_get_drvdata(phy);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+
+	mutex_lock(&qmp->phy_mutex);
+
+	memcpy(&qmp->dp_opts, dp_opts, sizeof(*dp_opts));
+	if (qmp->dp_opts.set_voltages) {
+		cfg->configure_dp_tx(qmp);
+		qmp->dp_opts.set_voltages = 0;
+	}
+
+	mutex_unlock(&qmp->phy_mutex);
+
+	return 0;
+}
+
+static int qmp_usbc_dp_calibrate(struct phy *phy)
+{
+	struct qmp_usbc *qmp = phy_get_drvdata(phy);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	int ret = 0;
+
+	mutex_lock(&qmp->phy_mutex);
+
+	if (cfg->calibrate_dp_phy) {
+		ret = cfg->calibrate_dp_phy(qmp);
+		if (ret) {
+			dev_err(qmp->dev, "dp calibrate err(%d)\n", ret);
+			mutex_unlock(&qmp->phy_mutex);
+			return ret;
+		}
+	}
+
+	mutex_unlock(&qmp->phy_mutex);
+	return 0;
+}
+
+static int qmp_usbc_dp_serdes_init(struct qmp_usbc *qmp)
+{
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	void __iomem *serdes = qmp->dp_serdes;
+	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
+
+	qmp_configure(qmp->dev, serdes, cfg->dp_serdes_tbl,
+		      cfg->dp_serdes_tbl_num);
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+		qmp_configure(qmp->dev, serdes, cfg->serdes_tbl_rbr,
+			      cfg->serdes_tbl_rbr_num);
+		break;
+	case 2700:
+		qmp_configure(qmp->dev, serdes, cfg->serdes_tbl_hbr,
+			      cfg->serdes_tbl_hbr_num);
+		break;
+	case 5400:
+		qmp_configure(qmp->dev, serdes, cfg->serdes_tbl_hbr2,
+			      cfg->serdes_tbl_hbr2_num);
+		break;
+	default:
+		/* Other link rates aren't supported */
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int qmp_usbc_dp_power_on(struct phy *phy)
+{
+	struct qmp_usbc *qmp = phy_get_drvdata(phy);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+
+	void __iomem *tx = qmp->dp_tx;
+	void __iomem *tx2 = qmp->dp_tx2;
+
+	mutex_lock(&qmp->phy_mutex);
+
+	qmp_usbc_dp_serdes_init(qmp);
+
+	qmp_configure_lane(qmp->dev, tx, cfg->dp_tx_tbl, cfg->dp_tx_tbl_num, 1);
+	qmp_configure_lane(qmp->dev, tx2, cfg->dp_tx_tbl, cfg->dp_tx_tbl_num, 2);
+
+	/* Configure special DP tx tunings */
+	cfg->configure_dp_tx(qmp);
+
+	/* Configure link rate, swing, etc. */
+	cfg->configure_dp_phy(qmp);
+
+	mutex_unlock(&qmp->phy_mutex);
+
+	return 0;
+}
+
+static int qmp_usbc_dp_power_off(struct phy *phy)
+{
+	struct qmp_usbc *qmp = phy_get_drvdata(phy);
+
+	mutex_lock(&qmp->phy_mutex);
+
+	/* Assert DP PHY power down */
+	writel(DP_PHY_PD_CTL_PSR_PWRDN, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
+
+	mutex_unlock(&qmp->phy_mutex);
+
+	return 0;
+}
+
 static const struct phy_ops qmp_usbc_usb_phy_ops = {
 	.init		= qmp_usbc_usb_enable,
 	.exit		= qmp_usbc_usb_disable,
@@ -718,6 +873,16 @@ static const struct phy_ops qmp_usbc_usb_phy_ops = {
 	.owner		= THIS_MODULE,
 };
 
+static const struct phy_ops qmp_usbc_dp_phy_ops = {
+	.init		= qmp_usbc_dp_enable,
+	.exit		= qmp_usbc_dp_disable,
+	.configure	= qmp_usbc_dp_configure,
+	.calibrate	= qmp_usbc_dp_calibrate,
+	.power_on	= qmp_usbc_dp_power_on,
+	.power_off	= qmp_usbc_dp_power_off,
+	.owner		= THIS_MODULE,
+};
+
 static void qmp_usbc_enable_autonomous_mode(struct qmp_usbc *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -1300,6 +1465,23 @@ static int qmp_usbc_parse_tcsr(struct qmp_usbc *qmp)
 	return 0;
 }
 
+static struct phy *qmp_usbc_phy_xlate(struct device *dev, const struct of_phandle_args *args)
+{
+	struct qmp_usbc *qmp = dev_get_drvdata(dev);
+
+	if (args->args_count == 0)
+		return qmp->usb_phy;
+
+	switch (args->args[0]) {
+	case QMP_USB43DP_USB3_PHY:
+		return qmp->usb_phy;
+	case QMP_USB43DP_DP_PHY:
+		return qmp->dp_phy ?: ERR_PTR(-ENODEV);
+	}
+
+	return ERR_PTR(-EINVAL);
+}
+
 static int qmp_usbc_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -1370,9 +1552,19 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 
 	phy_set_drvdata(qmp->usb_phy, qmp);
 
+	if (qmp->dp_serdes != 0) {
+		qmp->dp_phy = devm_phy_create(dev, np, &qmp_usbc_dp_phy_ops);
+		if (IS_ERR(qmp->dp_phy)) {
+			ret = PTR_ERR(qmp->dp_phy);
+			dev_err(dev, "failed to create PHY: %d\n", ret);
+			goto err_node_put;
+		}
+		phy_set_drvdata(qmp->dp_phy, qmp);
+	}
+
 	of_node_put(np);
 
-	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	phy_provider = devm_of_phy_provider_register(dev, qmp_usbc_phy_xlate);
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 

-- 
2.34.1


