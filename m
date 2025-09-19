Return-Path: <devicetree+bounces-219302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8DDB89F1A
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 16:27:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D8E8DA0507D
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 14:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ED31314D16;
	Fri, 19 Sep 2025 14:25:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KG30EoIj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0CDF304BD7
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 14:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758291957; cv=none; b=C+a++p5G3kGRYtQuqmdiar6hBcBHjalOyj8HiidFdH2pW6COs+h0DiWblSd0o/kmuMgPuTwD+2h+Z//KbLtgQYRfSpheP0Q0QrBFp/G67lcx8TZxBFiwKPfMnX+e5KTU2476BD55N7Ij/ca8o4Cp5P/4qjIi/3jR8XSRPns19HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758291957; c=relaxed/simple;
	bh=X6747pX/z+HXPUbzpVscGZ+y7P+DLT2Ka1aFOv7nPv4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gnujeuqQOY8sz8aJteX8cjg8V/fYA7UqfPCU93Pp02QA3IqyIsaBUSEJfAnDXDxJLQfojGoAqfsF2RR+SKvpI2ITKIXI2LTOWkRUSJQPumnIdvLRNcsN4QZ6byTt2zjxd5Vl659sM80u/b3ab6m96bBjf7/Y9IVOBvyNTJweoCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KG30EoIj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JDJQIi031264
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 14:25:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4NPGHZZG6XJ298+gcQuKbhaG+vQUCP3RgV4uBh+3CL8=; b=KG30EoIjYXW9CY4B
	BF2pcR4slxppGfefFAtOnTz7qERmPJqIqcrn4TaUD4NfU0XU6g5LTGBzoXgqDjG8
	vJBId/NsBgTDvU5Q/u/pPArppULMDrq9YSrmHMpF5V4+IGJ25uoBIdFt2JqZJbvT
	Te6zI6rQejM6P3HlTmoI0miXRLU6OwR6u6vIA2LlO94XGBdSmR2d6y8W30iMhumC
	QZOIivBZ3KWzpT6CCWWxdIUdItPJVpLj1GoPzfX2uLe4f9SBmf6rmeFhG33lHEQ3
	bqQSgp+1jHACHY40yUFHmbCLCD1h6XBF73k1yfGKRzuRITk++O/BSktYqsdoL49x
	NXyvQg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49916x1j2n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 14:25:55 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2680b3acdf0so4570465ad.2
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 07:25:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758291954; x=1758896754;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4NPGHZZG6XJ298+gcQuKbhaG+vQUCP3RgV4uBh+3CL8=;
        b=tH44FsgscycgWlfNZHDcoQh+8Hxew0u2TJEERETOBugiHA2SMXJnjQS2wzeURviflm
         /NEvoVyuKb+YEDRRrepYDOesADunkxV0UueZg+ZZG1vhbHRzOMsmAzJQGn15X0pYJpir
         1kpBQ3+mhDSAs6avAJjYdIhukENF1YTK4G6wkkgG3NwoynC8WhtUQODPDSjMCVMv2IZY
         Yq4kN76tCos6dFipb+xJDXJpg2Tsl+WEPJ60SX/xdkUxou+9iPzmpPDkMiVchdvQVh3r
         4GwnJLLg+yGQSf+Nl5Mm0V3540aAjOgLsk8X+X7J6HQddKlOte0MDw/IJYZLJA/lUXyH
         DGZA==
X-Forwarded-Encrypted: i=1; AJvYcCVBA3AbEq8fPd/R2dgT58KMZrY3+kyeLs99bw8IEN2OpoBBh9lMRY+HvqThlM/OV1louLN8THpNDWS+@vger.kernel.org
X-Gm-Message-State: AOJu0YxD6jaP+4GgnY39oBzl5YJkGMwy0xWpoM88zpIaLTpKr4eeU2TR
	LkU4oDYxJmHTVKLNouDNUUggAgCj2MOnZN8wFFMrpd6UqK5t75hKWrrI4s/6CU/x5Um0kPn3WVz
	4ou6bKl4N+g+vXkuK/QGlFyNwJRCdhn9iIn5M5dLvB3FKvFIKh/sIvKW2CSdUI06P
X-Gm-Gg: ASbGncuT4nZXSPYW6/9zf54ai0tHNCGFp9kAv0AVamr3xn998zDL3vfiLuMw1I996Ut
	+OQlq6TL1beBYEI6aZCOyThIaYv52cvsS9SpMafztEvzLTcD+dxqc5pwPW7IB68ZqrkBEK3emeK
	DNJzWBoVEcl7RpmQ1xbs3uzyTbU2bPWdeociYsW5OzjNEb4rym8MEIK+jRZM1VbJwMDkogPfVxI
	F6LWjdo7g/9/BmhgU3z+HhCZj4YT92RcURl0gByoMEkOFqXKFiJe7H4J0aAIAC9nnmn2NqI1uDi
	5RaMuZtrD9lBIEmlaXdLN1FS9XQbQaJh4MpAxhG3wy21VBzEV5ue90CWWGK3Bx/KUQKjjOu9XsF
	1wbuA+zXFKdD9eg==
X-Received: by 2002:a17:902:e805:b0:267:b312:9cd8 with SMTP id d9443c01a7336-269ba5477ffmr23548335ad.8.1758291953904;
        Fri, 19 Sep 2025 07:25:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGhWf2RyPDPG5JNlEIwfeKF5HBQZnjfl4KQdteIogUTd9k5aZvCF48gGr20YVSz2GhdBqTvZA==
X-Received: by 2002:a17:902:e805:b0:267:b312:9cd8 with SMTP id d9443c01a7336-269ba5477ffmr23548105ad.8.1758291953373;
        Fri, 19 Sep 2025 07:25:53 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-26e80409ee3sm2210035ad.80.2025.09.19.07.25.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 07:25:52 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 19 Sep 2025 22:24:24 +0800
Subject: [PATCH v5 07/14] phy: qcom: qmp-usbc: Move USB-only init to
 usb_power_on
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250919-add-displayport-support-for-qcs615-platform-v5-7-eae6681f4002@oss.qualcomm.com>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758291894; l=2160;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=X6747pX/z+HXPUbzpVscGZ+y7P+DLT2Ka1aFOv7nPv4=;
 b=SSWMxTP2f7OASGPCipXSWGNWwHj7K6Mc91TPyvdWPxTeS5cOPpYMfWRQHbNxnmcxvYFsI1FKL
 cF4Y8nqexATB6dv66j+Lt7F8NuZOncIpFaP8S1YPyoHfwOMj7NrfW4w
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE5MDA0OCBTYWx0ZWRfX/GPIt6w+AyWi
 xI5pzN6oUZ2vKhs22tEbApGcgv/RCL+DsklmKS3Vix/SAulXWeA+j14hydPeY+MSwLOeo/Cs1WN
 JlvG/Vnl3jxncpFwqEY/v9+Srp9tQx/DNhWUTuFTZaQx9ssrqhieFyFwWJ74rmazl+94Ylpwpvl
 IHlgqj1nN3VR1wcLKk/2z3LIbrwHyYDjEhz1kxARMRuC7fc2zfhV+50RbeE8k8EL0E7HspwfIPv
 XRRc7c7C/fxspbWuctYMhrxgfVhxm/EOj/o1woqJvKn4+NTrFbBCQnq72ltW+xzN+yFYVtBdqYk
 vxxRl69Ceg27U5nq4lxesz0DfXvf+WoX55ZZQ81IazzeV3tMFx2zMTOUI+M0nSB87ETGyoM2g+/
 2gJn8G+4
X-Proofpoint-GUID: LTqZDxnujqTdDvGh6Ta095U96veRwzec
X-Authority-Analysis: v=2.4 cv=LcM86ifi c=1 sm=1 tr=0 ts=68cd67f3 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=lTgBPn2m1EfcVYAV3zkA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: LTqZDxnujqTdDvGh6Ta095U96veRwzec
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 spamscore=0 impostorscore=0
 suspectscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509190048

Move USB-only register setup from com_init to qmp_usbc_usb_power_on,
so it runs only for USB mode.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index bfb94fa1a86cc52e1c67f954376d5fd8d321f4f3..d570ce486aee8e8a3cf3f7bb312a00bc1cd03d82 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -30,6 +30,8 @@
 #include "phy-qcom-qmp-pcs-misc-v3.h"
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
+#define SW_PORTSELECT_VAL			BIT(0)
+#define SW_PORTSELECT_MUX			BIT(1)
 
 /* set of registers with offsets different per-PHY */
 enum qphy_reg_layout {
@@ -535,8 +537,6 @@ static int qmp_usbc_com_init(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
-	void __iomem *pcs = qmp->pcs;
-	u32 val = 0;
 	int ret;
 
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
@@ -561,16 +561,6 @@ static int qmp_usbc_com_init(struct phy *phy)
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
@@ -603,6 +593,14 @@ static int qmp_usbc_usb_power_on(struct phy *phy)
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


