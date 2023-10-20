Return-Path: <devicetree+bounces-10479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B627D15B7
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 20:23:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CBB3D1C21026
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 18:23:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 943E62230E;
	Fri, 20 Oct 2023 18:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="iAwbXbkg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9446F21A16
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 18:22:59 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6347F1A8;
	Fri, 20 Oct 2023 11:22:58 -0700 (PDT)
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39K9bPiN001148;
	Fri, 20 Oct 2023 18:22:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=bpg5taB8iHb+lLch0rw4kcWlUAdHfVGrtLiZFvW6mm8=;
 b=iAwbXbkgvLav9XoJ17hQNeqZjoqQdvVmTFBekvDlV1rgzX0a15oPXeafMEzWdOUk/6mz
 cXU3cIcLRuYF5vQYIDf30SXPqmxjSyB4lkw1edCtActSHinxwpvfuqz4YqMARBxI6NlR
 g83Zdqp7FPj9EeG6/KfCYmYiiLK4l2bNmeXmduzP5mwbD0Fr2FCvEB5999FglZReEDDu
 UVk49tKjOzZ0hmiWdHL/jdRh65+9tIc7W6qC/5y0YzPf6GQV8zzd1YLAIu5NyJ485cKh
 5xk+/VRbIqA/oeU7aHpORWDpp3YpkM6lw2qb0cCqYTwR4wbP4b/wt2OoFIzErqHu2lVj 2Q== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tubxhatdy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 20 Oct 2023 18:22:49 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39KIMmHR009076
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 20 Oct 2023 18:22:48 GMT
Received: from hu-amelende-lv.qualcomm.com (10.49.16.6) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Fri, 20 Oct 2023 11:22:47 -0700
From: Anjelique Melendez <quic_amelende@quicinc.com>
To: <pavel@ucw.cz>, <lee@kernel.org>, <thierry.reding@gmail.com>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <agross@kernel.org>, <andersson@kernel.org>
CC: <luca.weiss@fairphone.com>, <konrad.dybcio@linaro.org>,
        <u.kleine-koenig@pengutronix.de>, <quic_subbaram@quicinc.com>,
        <quic_gurus@quicinc.com>, <linux-leds@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <linux-pwm@vger.kernel.org>,
        "Anjelique
 Melendez" <quic_amelende@quicinc.com>
Subject: [PATCH v6 7/7] leds: rgb: Update PM8350C lpg_data to support two-nvmem PPG Scheme
Date: Fri, 20 Oct 2023 11:22:17 -0700
Message-ID: <20231020182218.22217-8-quic_amelende@quicinc.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231020182218.22217-1-quic_amelende@quicinc.com>
References: <20231020182218.22217-1-quic_amelende@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 3Ag_HZhkRTcpHy2YA1VZ8iLXs2EaAK9v
X-Proofpoint-ORIG-GUID: 3Ag_HZhkRTcpHy2YA1VZ8iLXs2EaAK9v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-20_10,2023-10-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 lowpriorityscore=0 mlxscore=0 suspectscore=0 phishscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 malwarescore=0 mlxlogscore=979 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2310170001
 definitions=main-2310200154

Update the pm8350c lpg_data struct so that pm8350c devices are treated as
PWM devices that support two-nvmem PPG scheme.

Signed-off-by: Anjelique Melendez <quic_amelende@quicinc.com>
Reviewed-by: Lee Jones <lee@kernel.org>
---
 drivers/leds/rgb/leds-qcom-lpg.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/leds/rgb/leds-qcom-lpg.c b/drivers/leds/rgb/leds-qcom-lpg.c
index fdf453aa3859..3f22a8d260dd 100644
--- a/drivers/leds/rgb/leds-qcom-lpg.c
+++ b/drivers/leds/rgb/leds-qcom-lpg.c
@@ -1783,11 +1783,13 @@ static const struct lpg_data pm8150l_lpg_data = {
 static const struct lpg_data pm8350c_pwm_data = {
 	.triled_base = 0xef00,
 
+	.lut_size = 122,
+
 	.num_channels = 4,
 	.channels = (const struct lpg_channel_data[]) {
-		{ .base = 0xe800, .triled_mask = BIT(7) },
-		{ .base = 0xe900, .triled_mask = BIT(6) },
-		{ .base = 0xea00, .triled_mask = BIT(5) },
+		{ .base = 0xe800, .triled_mask = BIT(7), .sdam_offset = 0x48 },
+		{ .base = 0xe900, .triled_mask = BIT(6), .sdam_offset = 0x56 },
+		{ .base = 0xea00, .triled_mask = BIT(5), .sdam_offset = 0x64 },
 		{ .base = 0xeb00 },
 	},
 };
-- 
2.41.0


