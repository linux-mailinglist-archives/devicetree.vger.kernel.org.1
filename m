Return-Path: <devicetree+bounces-230167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 873D0C001B0
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 11:08:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B3E93A5DE0
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 09:08:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 893302FD7B1;
	Thu, 23 Oct 2025 09:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B1EL2lBW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A85EB2FD699
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 09:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761210395; cv=none; b=AY24rkx4bVZaj+8W3YOVkPUTgpJxrgjjp3VXf7o8ZSXPzPUBMHyKdfRQcT/YN1vySn83SyN1aETdXQHFvkxxUc0gK0C5opYp+7jfGmZ42pC4/YYRA0D3ZUMxXjNiNCG2wW3urtreVW5QQ/jMDB2LWpFwe9SpzzZy5X1Uy2HkVj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761210395; c=relaxed/simple;
	bh=xwACydKQvgDKuB0v3VRVNVKaf/7fL95Co83H8L4/8V8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=DfFVWZ6BrRFYQ4LpykgsMoVX67eoE/0UsTBMcQlCa0IA3a0q8o9/cH5nlsIO+TXNyaYon59zogTegh9S8ypM3nyTIIQHoaHeEgg+zCWf7qoIWbX7wZ87ui4b86xOy3QaIlOHpASmAKX/1K1z1tD+krH/lkA71Hf6+9SIsqdEXa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B1EL2lBW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N76TlS029864
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 09:06:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Tbyvd4eRGssa6Ha0ecVbsY
	tSBYVsX1t2xVyxXt94ET0=; b=B1EL2lBWBnN34927WafsHwonB2UGuLi6pZlOPk
	OmgCYq64xuesQ06vVKEV8RP0vsd4sSzRxd0gTT0R4Eyudf45C5sy4YP3gkPSY9UT
	fJaLnL7Fs1C3+YIISCWROoisShsWMo2XmUJJUkX5ygH2TxPpi+nWhgLteODJW8bA
	K2O+tvRHwr4ZT7BTjsSISqqhRpo61PrimoiemBqMBq7IOfjlYfiM8JsOqeFwyAug
	+jgfJgEAut9gOLibsCJoPHo5a3VSq2dnDQH5Wv9boiBgPfTg6RUURWkWfmthRRrW
	CpTCeRSotwd8MUIMId8ojRylX4dMNYWYhFA8tPbMy1+3PClQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2ge7qut-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 09:06:32 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2697410e7f9so15579825ad.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 02:06:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761210391; x=1761815191;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tbyvd4eRGssa6Ha0ecVbsYtSBYVsX1t2xVyxXt94ET0=;
        b=obi5DPEU24U3pZqwKz2v5dhuWVGpen1qs8d5sMxnYJktUdHYLsyJVGK3gQnSeGiEjL
         JE+RWSzMPyDKxLV55P8Y4qARqanq1W4TXAlqNc1TyOTqpJK71xVpPsjWhT57vd2vW4Z9
         uuK/jIOJN2DyNPC7dd/IXPSl98SrY+GkJnve14hawnUuuiXDy7W7uVMx7bHk91gpo2md
         Fo7slKM8+7T0Izj6E3CE85j2W2WKp0u8aziMHOG9eXXi3LZOlLe25Z6saKFOkRTQJaNK
         zmM2bvjlvrcI8rdXAT08BumqNzKui9E29RsOBY4pDusGFGuYdsgkFUc84xaxWMra/pFZ
         bs0A==
X-Forwarded-Encrypted: i=1; AJvYcCVP1aBg9Xao4wvay79y+pT7TU3MlNYhXa1S/fKAY36NOypo7K2HVSO00RwiuOaInqQ6JVLEs63/poLq@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4jFZOfaRsHd4vbOsVixwmkuzJ7F23OjmMeM6lF6fdxTr63Gl3
	oqIeMgqtL+PJdejaJw8lj88bgkUZ4/puvapAuj9mMbXHK4pOjUfsLHyuAwvliDsvWbs+CuoJ+sN
	nhiV/IP3pTcYfAPoH+r3hKSYdmjB6NIMlOBT6zGo2Fo/zs6XQ/ITdqyxSKdUyzWao
X-Gm-Gg: ASbGnct8zCQK/x9lOMkoI4RO+sUDqnA2hmS9L4FdRYBAAzjdlx4vWMnuMXZ3d9S6ZqN
	KdqxKocENcCEiL9wjnGFjf9YOwxscwVM2pRSuU8AhYFZEka4cGlyuqhJB+XSZvOSFutO/ViuAJK
	TvesEmDAUgg7JjEQPL7xLe8yzecaevo58V5dqw3aSLZ6D8MKqg/vPBF8DPtLYSYhP7MDjd08611
	CfZg1fsJMro4d6kn6iXTTRfpYkIrh0kG8FG9dcBhd9uQr6EpSPZs2o/B3GzUfFZ/lNJ4wQlq8dC
	vqzfd6DYTFGsgA4Hm4XIDXscX0Q23IKlPc2EEAuXkKOTIWs+2MJrGqPB+ogIC4HL9dlO7M5kYJp
	R2MMQ+v8oyuPIIAfliI/dXnKCWclToQ3hA5Jb5aqmiUc8oJ6QWHMEHw==
X-Received: by 2002:a17:902:ec87:b0:269:82a5:fa19 with SMTP id d9443c01a7336-290cb07cbbbmr274605405ad.45.1761210390985;
        Thu, 23 Oct 2025 02:06:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGXtnMJKSahTr3YrUSbYlgQcd+PhongCRbCPX3M+/vpJqbpLoH+wusz0Lz81kTeDHbmGQz8pA==
X-Received: by 2002:a17:902:ec87:b0:269:82a5:fa19 with SMTP id d9443c01a7336-290cb07cbbbmr274605095ad.45.1761210390516;
        Thu, 23 Oct 2025 02:06:30 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946dfc1c8asm16698685ad.71.2025.10.23.02.06.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 02:06:30 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Thu, 23 Oct 2025 02:06:26 -0700
Subject: [PATCH] media: camss: csiphy: Make CSIPHY status macro
 cross-platform
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251023-make-csiphy-status-macro-cross-platform-v1-1-5746446dfdc6@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIABHw+WgC/x2NQQrCQAxFr1KyNjAzpaBeRVyEaWqDtjMkoyild
 29w8RbvLf7fwFiFDa7dBsofMSmrSzx1kGdaH4wyukMKaYghRVzoyZhN6vxDa9Te5ilrQccM64v
 aVHTBob+EMcd0Jmbwtao8yff/dLvv+wHpHkPYeQAAAA==
X-Change-ID: 20251021-make-csiphy-status-macro-cross-platform-5390dc128aee
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfX6CLk1zhlWD76
 rE5cqRXxkjsaKI99fLMc/weo4TLC92ZFGbmlHrkrFmV1P9uDnxP1xheY81PUy8oX+1MF63i4mZy
 jxEtSllLFXbtksS62d7EcD0eoGnOLduai4I3dep6AunWMqEmTGNGNPaL+vOQ4IvKMfGT/dLrKbK
 7umUqrD4mbiQ805F/4d5QvI7UgQStLfREgWPwZJOv8+whudP77okSZQfZu2cwNSQ1/ayy65ATDh
 LYAtucy/rfli8kkiZIL/TbkxAYhg6KfeVm+yn0WJcYS2VRjQx1uV8J7aPKN0OO1dGYN53ehnu4T
 m86Ua4yQCq3ydr69ZTO+eBtHcaDLhs5MQ1KtWCRyCNBk/GJkBj8cZBW0W9x0ELwYbc9TRACkUBd
 qvPG0icl/uoGbvA3czND43YjPBr7PQ==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68f9f018 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=edmtyYkapI0WV9tsjtgA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: 7Q0vAVaM0FWECucewRY65qpwv0Zuubi6
X-Proofpoint-ORIG-GUID: 7Q0vAVaM0FWECucewRY65qpwv0Zuubi6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020

The current value of '0xb0' that represents the offset to the status
registers within the common registers of the CSIPHY has been changed on
the newer SOCs and it requires generalizing the macro using a new
variable 'common_status_offset'. This variable is initialized in the
csiphy_init() function.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
This change introduces common_status_offset to replace the hardcoded
offset in CSIPHY_3PH_CMN_CSI_COMMON_STATUSn.
---
 .../media/platform/qcom/camss/camss-csiphy-3ph-1-0.c  | 19 +++++++++++++------
 drivers/media/platform/qcom/camss/camss-csiphy.h      |  1 +
 2 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
index a229ba04b158..9b6a0535cdf8 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
+++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
@@ -46,7 +46,8 @@
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL5_CLK_ENABLE	BIT(7)
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_COMMON_PWRDN_B	BIT(0)
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_SHOW_REV_ID	BIT(1)
-#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, n)	((offset) + 0xb0 + 0x4 * (n))
+#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, common_status_offset, n) \
+	((offset) + (common_status_offset) + 0x4 * (n))
 
 #define CSIPHY_DEFAULT_PARAMS		0
 #define CSIPHY_LANE_ENABLE		1
@@ -714,13 +715,17 @@ static void csiphy_hw_version_read(struct csiphy_device *csiphy,
 	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->offset, 6));
 
 	hw_version = readl_relaxed(csiphy->base +
-				   CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, 12));
+		CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset,
+						  regs->common_status_offset, 12));
 	hw_version |= readl_relaxed(csiphy->base +
-				   CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, 13)) << 8;
+		CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset,
+						  regs->common_status_offset, 13)) << 8;
 	hw_version |= readl_relaxed(csiphy->base +
-				   CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, 14)) << 16;
+		CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset,
+						  regs->common_status_offset, 14)) << 16;
 	hw_version |= readl_relaxed(csiphy->base +
-				   CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, 15)) << 24;
+		CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset,
+						  regs->common_status_offset, 15)) << 24;
 
 	dev_dbg(dev, "CSIPHY 3PH HW Version = 0x%08x\n", hw_version);
 }
@@ -749,7 +754,8 @@ static irqreturn_t csiphy_isr(int irq, void *dev)
 	for (i = 0; i < 11; i++) {
 		int c = i + 22;
 		u8 val = readl_relaxed(csiphy->base +
-				       CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, i));
+			CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset,
+							  regs->common_status_offset, i));
 
 		writel_relaxed(val, csiphy->base +
 			       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->offset, c));
@@ -989,6 +995,7 @@ static int csiphy_init(struct csiphy_device *csiphy)
 
 	csiphy->regs = regs;
 	regs->offset = 0x800;
+	regs->common_status_offset = 0xb0;
 
 	switch (csiphy->camss->res->version) {
 	case CAMSS_845:
diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.h b/drivers/media/platform/qcom/camss/camss-csiphy.h
index 895f80003c44..2d5054819df7 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy.h
+++ b/drivers/media/platform/qcom/camss/camss-csiphy.h
@@ -90,6 +90,7 @@ struct csiphy_device_regs {
 	const struct csiphy_lane_regs *lane_regs;
 	int lane_array_size;
 	u32 offset;
+	u32 common_status_offset;
 };
 
 struct csiphy_device {

---
base-commit: 076fb8624c282c10aa8add9a4ae2d9354d2594cb
change-id: 20251021-make-csiphy-status-macro-cross-platform-5390dc128aee

Best regards,
-- 
Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>


