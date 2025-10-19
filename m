Return-Path: <devicetree+bounces-228452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03682BEE034
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 10:02:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86C323E2D31
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 08:02:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 389E92248A3;
	Sun, 19 Oct 2025 08:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jWH/HZBi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 941667483
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 08:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760860939; cv=none; b=qdpC0DIix/mXglz+VeLXo3M+g45t+k52tNyXDF8IkpeWxrlP79E5RjxyKv98/uDG9lnCJ9DAWMPgyYcdgi+zlpeG6S9oxjr3oVVjoX7M87WX8Xk/M+nGqlts14v/ApHv+DyNkoHneQha/Ub6rxLoADZXga6T3NkIF2PRBDjo/CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760860939; c=relaxed/simple;
	bh=IhkNdhV1hTAXKq74opsigwyH+OgEAhY4flHRuC9QW9s=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GB4XHI/ky5qr+pfGmK7nEPWnGW94UVy6blIhRdN+Bkx6fZ3gqsQgeiZdfYuIVB6A9Sv7q6bGVagtH9Fis5QBpLuuUBQ5qIxTiO7iO2yjdWsXPtCRalgfd/MJz6212vMngnP64Jb9tdqKLRt0uCmx5U1jJ3mMZFwEUzh6QOYBlio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jWH/HZBi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59J5R27M028959
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 08:02:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=PCu0f4HoNX7
	caVYPLTD2PG4lkgiTCB9Bw+ris27XvNs=; b=jWH/HZBioTNnNbZLKnZuw6hhCP0
	7cHT8I5DO1jk/q4JLcPhxPEzYbIcwbW6vMT0XDrg1t1bpaOZzA9909N1dl5Xz9mK
	0hiBVwwvowpmaJGUXF9aGklsSrowfN7c4BQ6R7iipwWGXUTD2eVD/j4/6IHrB++G
	0JlDNiLNx+cWFSyXWpPm4/tTXhXA4ocitX0kLnb3VIEsV19oBPRFrn0rhoPleWJn
	APvwwOnYMquD3JHIiFtcWizTVlSoIDRBrhLNwymKgTSzTk0XYaRk3Xx0QTUlt3Dh
	B9awR4tIohWO+ExAnjP9PvzvPNptlhaUYbL+OrJrlpC+w2il/ZSDER00tOA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v3nf9xpv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 08:02:16 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8904a9e94ebso1290378285a.1
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 01:02:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760860935; x=1761465735;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PCu0f4HoNX7caVYPLTD2PG4lkgiTCB9Bw+ris27XvNs=;
        b=sBlRh0p18jdsYTRGxBuntjrbSBxIoHrbF9qkFx9PKxvoSwgl73gzdYnzoCjpojSfzm
         xJFpOJ6QJd1zIKfYE5eO7WFq5cqDklCRoNP9Dv9eqWwjohxcc1uB46F3I2h0vURspVSx
         UpSUvZgPPtt2Z7XFoA9nm44vnaFkXc+tsVKgz0VFwBpb2Wq1Jw9QbkzGPzmLPiLNEyg1
         GU7NWKUzvx4YkXQzvscgca5e1jRtoQpVcJ1Bs4tIPUeeLRqJZlfeavigoVOEGKYXYHBr
         Z4oFSwB8a/sJss0GNf2GFwNC/VgCm1CVtc1O7aN3wLi+IfKN8nUqWQbOj59ThGEtjos1
         h5Ig==
X-Forwarded-Encrypted: i=1; AJvYcCV8ArddKY9ynOwMmCgHB1UwyKbi3dQR6iz6V0Qon8GSELrurn3312r9QX8vQIzDiWfLH2Ur0J+Vvz7Z@vger.kernel.org
X-Gm-Message-State: AOJu0YzRnwdkywDjHE6SQqD2MG7XvSi35jzWPpylKIAOQaw5V0GxlOrz
	2TyWjws3wNjBN/BZjEZeTdK9GflApT03oDRYll4jLduEvq4LRTuqsmUWEkTI7vDUpyz1iBrVI1q
	2pstXxiJ7bsldcxKXy02ifGSkL4apsOtUECqaNgoLzt4DWp8dZXAuz/7C9qrj5s61
X-Gm-Gg: ASbGncuK2uCVWqa3RRB7lY4oaccbqeqd9dzk2Hwa/DJYi/4vsJBckleuaE5uNcyAD4S
	XSKS7+ie2NO+vsefBAyjluKbNOnB/5O/uhY+Zw1hdXittuc9x11gfhx9KS7h7YdBp7CI4Sb0sxg
	iPhPNoPdrDVOcRU8QzoZg+sBSbmzV5NxQAzM0ch254emCpsSV/63V2zrKaNp8IU8aeTRzgNJUKo
	qOPkzt0Ev85bguaWu1iu3Lh5LHioUN18vFXnpsnnX3PF9NGibBkKq2EpTAPoZMbz2ZJsLE/uVIN
	Kv7eHfVCHiVg/KTZ22SlJeoXNm9j36dsMj7X8cnY9jF1LnBOd9JnL1TNUC3zR4ifMOkAk3t6xyg
	DXR5HpTQXQxn6vQt3H6staFmFW6DYOyYsNlwrHcsSutnP94ABy04EW0XnxDTw1ce94+popsyY/Q
	574jObXvIK3FY=
X-Received: by 2002:a05:622a:1a87:b0:4e8:a359:b798 with SMTP id d75a77b69052e-4e8a359be46mr88922461cf.67.1760860935523;
        Sun, 19 Oct 2025 01:02:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1eVAe3sKqBxqT4zkB9fpGbudrcKFbHhI0WnnRPaKtVd0Wn3A5JdSj2juSSn+NQSfKGzlVYw==
X-Received: by 2002:a05:622a:1a87:b0:4e8:a359:b798 with SMTP id d75a77b69052e-4e8a359be46mr88922131cf.67.1760860935059;
        Sun, 19 Oct 2025 01:02:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-591def1695fsm1353170e87.61.2025.10.19.01.02.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 01:02:14 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <quic_bvisredd@quicinc.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Subject: [PATCH 1/2] media: iris: sort out common register definitions
Date: Sun, 19 Oct 2025 10:59:01 +0300
Message-ID: <20251019080212.142623-3-dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <0251017-knp_video-v2-5-f568ce1a4be3@oss.qualcomm.com>
References: <0251017-knp_video-v2-5-f568ce1a4be3@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: WcqEI5swiQr22q5Glc0tghAzZgo4xbGK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyNyBTYWx0ZWRfX6HHQFnrduMfn
 EFqqoqQukQiU7nVePz95FGu3XXVW6KptsiJpnzQsSWHiD7rOCcfmPCzYHzi/jn9x4mknZrSINO5
 PNl1PzG1LpSMbYCcPytHO1LNBe7B6LLu6nFwzwc2vSfrxiDJAe5QIC5CZCrRCfP6JKlzSfKk//r
 U+Nj+ray7QqLO6CmIWeHwgY4jZh+iCvcKQDY3tTUufbiAN5rvc+0D1SB9R9Bo4GdLT87GMcqYY1
 sTnWI1kpWvxAiO0TK6h4g8SgfSK8nSioh+YmnXiqraPv7c/D2f/Fp0USDQVYZq1aXc552Bn0dBQ
 pznP+atTgwQ3ZiL9U+YFeaUUMuXXwZ5Jj5kSjyeCFIA7SSSW2buRBCIwh60InUzk4BN+ebVy4Z5
 nChlT/ByiJpgvkGNDeLGBOEuFfEjzA==
X-Proofpoint-GUID: WcqEI5swiQr22q5Glc0tghAzZgo4xbGK
X-Authority-Analysis: v=2.4 cv=EYjFgfmC c=1 sm=1 tr=0 ts=68f49b08 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=x6icFKpwvdMA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=zaoXWFKIo8GWO-w5zvgA:9
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-19_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 spamscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180027

In order to make it easier to modify the file, sort the definitions
by the register base and then by the offset. Also move bits definitions
next to the registers which they describe (as it was done before).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---

Vikash, I have dropped these patches from SC7280 patchseries as they are
no longer required. If the series gets resent, please feel free to pick
these two patches in or to squash them into the corresponding patch.

---

 .../qcom/iris/iris_vpu_register_defines.h     | 47 +++++++++++--------
 1 file changed, 28 insertions(+), 19 deletions(-)

diff --git a/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h b/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h
index 6474f561c8dc..1c3ff6cab343 100644
--- a/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h
+++ b/drivers/media/platform/qcom/iris/iris_vpu_register_defines.h
@@ -7,40 +7,49 @@
 #define __IRIS_VPU_REGISTER_DEFINES_H__
 
 #define VCODEC_BASE_OFFS			0x00000000
+#define AON_MVP_NOC_RESET			0x0001F000
 #define CPU_BASE_OFFS				0x000A0000
 #define WRAPPER_BASE_OFFS			0x000B0000
-#define AON_BASE_OFFS				0x000E0000
 #define WRAPPER_TZ_BASE_OFFS			0x000C0000
-#define AON_MVP_NOC_RESET			0x0001F000
+#define AON_BASE_OFFS				0x000E0000
 
-#define CPU_CS_BASE_OFFS			(CPU_BASE_OFFS)
+#define VCODEC_SS_IDLE_STATUSN			(VCODEC_BASE_OFFS + 0x70)
 
-#define WRAPPER_CORE_POWER_STATUS		(WRAPPER_BASE_OFFS + 0x80)
-#define WRAPPER_CORE_CLOCK_CONFIG		(WRAPPER_BASE_OFFS + 0x88)
-#define AON_WRAPPER_MVP_NOC_LPI_CONTROL		(AON_BASE_OFFS)
-#define WRAPPER_DEBUG_BRIDGE_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x54)
-#define WRAPPER_DEBUG_BRIDGE_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x58)
-#define WRAPPER_IRIS_CPU_NOC_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x5C)
-#define WRAPPER_IRIS_CPU_NOC_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x60)
-#define WRAPPER_TZ_CTL_AXI_CLOCK_CONFIG		(WRAPPER_TZ_BASE_OFFS + 0x14)
-#define CPU_CS_AHB_BRIDGE_SYNC_RESET		(CPU_CS_BASE_OFFS + 0x160)
-#define CPU_CS_X2RPMH				(CPU_CS_BASE_OFFS + 0x168)
 #define AON_WRAPPER_MVP_NOC_RESET_REQ		(AON_MVP_NOC_RESET + 0x000)
+
 #define AON_WRAPPER_MVP_NOC_RESET_ACK		(AON_MVP_NOC_RESET + 0x004)
-#define VCODEC_SS_IDLE_STATUSN			(VCODEC_BASE_OFFS + 0x70)
-#define AON_WRAPPER_MVP_NOC_LPI_STATUS		(AON_BASE_OFFS + 0x4)
-#define WRAPPER_TZ_QNS4PDXFIFO_RESET		(WRAPPER_TZ_BASE_OFFS + 0x18)
 
+#define CPU_CS_BASE_OFFS			(CPU_BASE_OFFS)
+
+#define CPU_CS_AHB_BRIDGE_SYNC_RESET		(CPU_CS_BASE_OFFS + 0x160)
 #define CORE_BRIDGE_SW_RESET			BIT(0)
 #define CORE_BRIDGE_HW_RESET_DISABLE		BIT(1)
+
+#define CPU_CS_X2RPMH				(CPU_CS_BASE_OFFS + 0x168)
 #define MSK_SIGNAL_FROM_TENSILICA		BIT(0)
 #define MSK_CORE_POWER_ON			BIT(1)
-#define CTL_AXI_CLK_HALT			BIT(0)
-#define CTL_CLK_HALT				BIT(1)
+
+#define WRAPPER_DEBUG_BRIDGE_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x54)
+#define WRAPPER_DEBUG_BRIDGE_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x58)
+#define WRAPPER_IRIS_CPU_NOC_LPI_CONTROL	(WRAPPER_BASE_OFFS + 0x5C)
 #define REQ_POWER_DOWN_PREP			BIT(0)
-#define RESET_HIGH				BIT(0)
+
+#define WRAPPER_IRIS_CPU_NOC_LPI_STATUS		(WRAPPER_BASE_OFFS + 0x60)
 #define NOC_LPI_STATUS_DONE			BIT(0) /* Indicates the NOC handshake is complete */
 #define NOC_LPI_STATUS_DENY			BIT(1) /* Indicates the NOC handshake is denied */
 #define NOC_LPI_STATUS_ACTIVE			BIT(2) /* Indicates the NOC is active */
 
+#define WRAPPER_CORE_POWER_STATUS		(WRAPPER_BASE_OFFS + 0x80)
+#define WRAPPER_CORE_CLOCK_CONFIG		(WRAPPER_BASE_OFFS + 0x88)
+
+#define WRAPPER_TZ_CTL_AXI_CLOCK_CONFIG		(WRAPPER_TZ_BASE_OFFS + 0x14)
+#define CTL_AXI_CLK_HALT			BIT(0)
+#define CTL_CLK_HALT				BIT(1)
+
+#define WRAPPER_TZ_QNS4PDXFIFO_RESET		(WRAPPER_TZ_BASE_OFFS + 0x18)
+#define RESET_HIGH				BIT(0)
+
+#define AON_WRAPPER_MVP_NOC_LPI_CONTROL		(AON_BASE_OFFS)
+#define AON_WRAPPER_MVP_NOC_LPI_STATUS		(AON_BASE_OFFS + 0x4)
+
 #endif
-- 
2.47.3


