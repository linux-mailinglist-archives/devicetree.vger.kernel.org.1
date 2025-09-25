Return-Path: <devicetree+bounces-221214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E008B9DCA2
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:07:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F01AD1647A7
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 07:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7FDE2EAD15;
	Thu, 25 Sep 2025 07:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mFrevY6y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3601A2EAB85
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:06:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758783971; cv=none; b=NeUvFpPN3jnB6evgII1WK+rgh3lCWLzju11tK0aHfsr3Xd1O+m5ry0p7roiRWJ0u3nHVdQR2GWv8vQAF7vDAnkyjLn9c8eoOGIZrbJnIuQNlc7BbVcG7zI8cGUIpUX+DbgPzj7dmQ9IoQInOPC0rW/TBRlwxgYPo4wdBW/SeKNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758783971; c=relaxed/simple;
	bh=2OW0hX9TF4LQlObLysgxoFrzLXkqUgu/cavYoT3SHP8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XlMut37q7RdmqjF3jgcfI68FG+A6KVd4Q0JEpVFXUXzwz+r8KAQ3rk/cFy10NROFk3EUEbj85HPj/60MPPjreLxzT4tR6080tdnEPQnteXUGPswseE+89w6PSsvbhRH1G0GUH2lTAJbUHCW//HXOaYhpnCU4uJ5axizl3wdUmFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mFrevY6y; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P12CNT019934
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:06:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IxgE0hKaY239kxGeqZ+8x/JCG89cRYkF0bkaQ2dVCzM=; b=mFrevY6ycobFm4F3
	AKnprbvloiBNdlfGAw6CJph+D1IOBgdWLan8NptDUin9rEm6/9B6rry8SwlTPCKw
	cpoBPbNO4ivPkKV2tvzoXs8n+reW8hA/FShtfkMTolDVB3K5xCOYbwOGu4YTDYxz
	brwxOn/d0Kk351N7oMMKevVB1rS0eNJ3bJpLhMEX52Ah2nRRg69TGN8cuD3499Zc
	kTcy3ybrwGLUMhLEVJlM/lG1ibDdYidh1jUeHLNs+kaBVZRhFmwz4CBfeahQf31V
	oco0IEJc9Pd9STaD1vbJLK2ks2QuLxK6YTrP2FO35hJyh+0ZYvXNZ6fkhnxrLpr9
	9gmjrA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpe0c1p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 07:06:09 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3306bae2119so299959a91.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:06:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758783968; x=1759388768;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IxgE0hKaY239kxGeqZ+8x/JCG89cRYkF0bkaQ2dVCzM=;
        b=W3GNXqkszW5swp/iOe0/A0ZHBDJ4EwyufvaGJQEgnA3q7uiICiQSO+ydFZkJtMNNvi
         zcnbVV6mvyAXJTZ7oyoscj98G59cbY5mfv8KvdktTE3mLXx1sJ9wM0mIa+x8qMQV6N5H
         F4zAb/AtMRU9XSQJq/rwkCQjOqDSEmgv5ks7RZQBNFgCENdOmRHX/EQ4kiFsk9AoHSln
         DhvhGFl8oBQhJNxcOenuVlUTOqyEJz/iHyVFZB2gQ0pcaOqAL6lB8ilgKFhThrwDH80t
         8ijFjNq5SeguiVk6ZZTFBWgWkvYDYR55kCTelcGhT+cbxZmGZq+dY95donF0VxWGPQBL
         grSg==
X-Forwarded-Encrypted: i=1; AJvYcCWHT15PUP9ARWwONCWfoCVaQUa2J0Zc1Y2v2BU0FsX7Fu/hyIijYnS+qhdYQlNAEGnvSaAT4Pshbecx@vger.kernel.org
X-Gm-Message-State: AOJu0YweVOhFGIbMxTwwwFfec1z7w4M3XlrjhSqDhrVEa1Z3ucd+dLej
	3rHYAhls5/LlFe7vRJxrzI+icv+otlPa5PORbIXIZVhnJgrDWzqLmAhFuVXl8pFXwL4Hj7MYOGX
	BnCFGc3ccnmI90SYrymdxEVx3LC0rnzDcdawV8cS3/vnFyCTJNQvcmYHXU3fCSeGR
X-Gm-Gg: ASbGncvvTti/GhPNs5FAfRhb+2a/N94+mhP5SanO3zXYICXH2KAGWLOxY4IRFkU2poy
	CCBqwt4l1zqSX4l3c3AvsQ0gVJgHMe81jKPfRloNDQeoMvwrDoyE7JZ40zySgHMjjj7aMnKLaXe
	dt2eQXuocaF23BDWGv1Bi3DNVUL+oSYd/wsvSr6DPZq+Oz+Wd1pYnpQAtueZgTk9o6cVHr8jCIv
	H5dElcNTte71Xiu0ahVdaZqa8Sl8QuhBBxDPU8tgexLXZqImvuv6UJ2oQL3nyejxPLBfWgzitbI
	94V6ArxcViMxhYv8gO1a6hPxt/RkObqJI/apsT8BWz6Bx2XM398Mt//S0gRfg40qTVSethTwkuM
	myriPGrgD8QLvt56ctzIXiy/XWteR2FRp0vs6Ks+38QyE7L3QQIWF7HrW
X-Received: by 2002:a17:90b:1a81:b0:32e:1213:1ec1 with SMTP id 98e67ed59e1d1-3342a2c1012mr1392346a91.3.1758783968298;
        Thu, 25 Sep 2025 00:06:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFqm4vqi9INx9yrFdrRGXI6EToe4coF15uJ9HBu3jvVIDzDTGN/9Crhz4syIBdRqrXfjzrKqg==
X-Received: by 2002:a17:90b:1a81:b0:32e:1213:1ec1 with SMTP id 98e67ed59e1d1-3342a2c1012mr1392327a91.3.1758783967897;
        Thu, 25 Sep 2025 00:06:07 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3342a2bd584sm914253a91.0.2025.09.25.00.06.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 00:06:07 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:04:53 +0800
Subject: [PATCH v6 07/14] phy: qcom: qmp-usbc: Move USB-only init to
 usb_power_on
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-add-displayport-support-for-qcs615-platform-v6-7-419fe5963819@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758783910; l=2424;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=2OW0hX9TF4LQlObLysgxoFrzLXkqUgu/cavYoT3SHP8=;
 b=Zt3LO6ayN2gVmBZz9fMbnffGNND2tPNJsWMfyvfI7ZhWbNlv4laRaW2taqVXBUAQuoOOJ358i
 WNh/BeOChdWDMyylnbxEoajRmPXHQasqALO3KOps5erPlBA080l0SFx
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: ZeGBf5g6NjIh6p17rxceXQo7B70F60Do
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d4e9e1 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=JIg05Gv9We-wtn8mShgA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: ZeGBf5g6NjIh6p17rxceXQo7B70F60Do
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfX2b6IoQiYCTYb
 go1xUdOCFVZfA5Ou6JzJffUHs9PaPtZeCM5QMOpYPX/qes4v3VdG08LC2Y0BOE9lH3oufKO377C
 KYm1BJ/DAE1FU3KtEifOL0bNSFqc/2tLXmMU+4257BkDakilXX9dE40P57ZLGrUZhKU4E9xy0b3
 aL+y6h/8TtNz2Jsmen5g6a6/Njb/0/Nv8mSc5WDkbhHoICkFu2dMSO0NRmSB4GNJtV5wX59GLAz
 p8L+SCM3miqVXSOlMsrMlZGjojrbH5N8k5GiyDJRqiEl/x5jmXB+x3LQV1e1cJedPf+/sJIg99J
 k/rGPXPyWn5/Alt3ohpRBLkMak45Z/xL6zgh8y9BkqyMyIiKwJJunx5CqimyXXGT9uhKSBOwROS
 2xo2d5KS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020

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


