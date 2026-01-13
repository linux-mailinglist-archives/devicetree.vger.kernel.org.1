Return-Path: <devicetree+bounces-254265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A0DD16A1D
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 05:50:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E5D5B304A980
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 04:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72804352F90;
	Tue, 13 Jan 2026 04:49:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XrgltLAi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BkFaJydP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3446352C3B
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 04:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768279754; cv=none; b=Ql6DFcczl4MyrS6+kIuyi0wESSCN8JQ3TvHEZhV2oWSHJstR2J2oSX5FiAPonmNg4y1Mnjpw5DgXzeVNrWaQSBVmbtM6aOyKtmNdYMJy1gmIQqw6HDfT75tWHdqLsHkKPJnMxnCQ0mxTSxiQdCoaHnrFD8TrNsdvszREopW4tCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768279754; c=relaxed/simple;
	bh=ETn6g/+RMB2grMJSck5O2QhqHu0RXuvd/8Uxmrdg5g8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rpVyC4RPE2Lh2g59kasB/Jz7MaRJ2YhE0AmuafH7bf+KzakzCt/z5jZiAuW3uHlo09cHJf0u/KazD8g7wDqONdOEbGD+sZWlD6Ycj59Pl357XHySOBCsnbBTOscvuMBV4v2kLV/p+rZDIAvMDaZV+A0zzWLAP5h9Z7WgwapFGLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XrgltLAi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BkFaJydP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CN576o2604789
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 04:49:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q2aa+pe1xhwm4KuWcdmdUTE/k8xbW//+eqvM+7awBKc=; b=XrgltLAiufgXKzTN
	WSPngc25Mdj/gg6vU/9MH8yvGjw0iOeN6598r+nK1d5Ny5PRd61W4uclm+UmY9Hi
	89siXVlEfYX/8igIcLHAfNXL/iBv6OGBvXEnE9HYU4s+cE3rs/BC0m/aS0oDU8JY
	U1OlT1/ddnJluQUJy35mwMFvbPwzNh+1vZdS51vKo4cqvIvP9X8zMYaDa2YrHaEt
	lpMWz5fmcBrANDxISuP+e2puAp+R0vLV7FmCFGFc3YumOSNCNkSu1P30Q54HZIkF
	yVYcEDQOK37RG655mToEyRAyfqHk+UAdYH5o7r64VO8rohRaetJAcHygv68cd4hH
	GYrmSw==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn7uys86u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 04:49:08 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2b062c1aa44so21485293eec.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 20:49:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768279747; x=1768884547; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q2aa+pe1xhwm4KuWcdmdUTE/k8xbW//+eqvM+7awBKc=;
        b=BkFaJydPiR+L27hXUpjxdYVnIlZTe8Ybe1iSHgqqNRiZ6oaO5bVRxD013gCIZBA24C
         lClzCHAMB7CPK60VEh0zZA8VHeNc4JFE8xtzO2zsYHzc9z8d6M8ZAghZLCdQZx8eJFeO
         90J8wp920a1kIEA7MbxT2SF38DCSVuJKUJLmq5so0M0pUA26tkEW0AW7uV18w54qAniV
         P620L7ykFY4Sj2JfKEgxS6dyymh1lsbs3ZhgbCeHgYQv7YcQ+mFh+CHalUzMWWlfXClf
         anRCoiYaMuawdp1vPPCIRT4OeZNjUK9Tbmla4rTNIaAFP3Dr/R9ohJPOEk94bbP1yOu9
         mSlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768279747; x=1768884547;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Q2aa+pe1xhwm4KuWcdmdUTE/k8xbW//+eqvM+7awBKc=;
        b=SE2Lr5JHE/ARP4u7AHj/6vld1S1qSA82tiPv/sVgP5pYeYYt6BO6KdrTkOgjDwPCVe
         O7doDcAp5l2PI5YyUOAfhfIyO1fdZJzd7HKI6vTh0T+nU3kuDjEfh7vsOhFiqsvy6T04
         GuJ83f+fBb4YlgqeOqHMRBPR39nuC7EhtgvgjUXDvtvSaIIxDsifgjc62jtfBglq7trQ
         bQJ7mMoD465UOsLnqOJVomL/3mKhyueBbXmAo4NPncUoZXYxdp3jXhm0BhugjJkJhTNH
         WoGmdMzg903vL0s19ncTvt1MGHoEvKjjIEgjQaAqCUW7kIzms1CM4N2xW62mMu+6/QE3
         uX0Q==
X-Forwarded-Encrypted: i=1; AJvYcCXNVbfeYEBKQPFXahPTIoSpz9dtVjtfT9vu7dxyrmi/K2S1VkSgRHj7DetE6oHw1RyhH4HhSQZPQtwt@vger.kernel.org
X-Gm-Message-State: AOJu0YzExVgIHincWWl8fyvNDwbNKXw1HMXJzFPwS4TVKynEIlrbz+Ly
	JE/Yytgno/E15Jrd1O3jSpfYJ+6u75aggxRuL4X/y1XqUQPx/5sy2NJNtitwlmPk9KGNFAvibOT
	e/HQ2Xpa+uYRCiiEbWq7pWnhjuwJdMFx0UeJ3zcL0Q1t7U3t8aloKikzXx/9FcBqF
X-Gm-Gg: AY/fxX4MtlGpJ6uTKlHK2Irz0QRBuY1gGOaCjQrmeV9H1pPgenUmk5g2fOBXgzdzrHS
	UF4bqkY+6nW0dfiaB0ji33fvLY+pj0vdlgLI+XydLcsraWc9df3xgEfEM7rNvICJdLhyn0YD/+p
	vSEvdQOUOI66NE3YXgQBpIfmsrzaSpFtENksJWNRqL0gvTDfy02yHKUZMMuRrLRBimiLsmrK9eg
	ZkYC+b7Ovo6TgYsugN40+rTq5njcMk0GFHrMwagiZPoNDYOjaQxGm9wHfxohl46waOP5LrE0Sdv
	7EAJ0FjYNOuZ+xNblglozK4pRgXKrD+V6Ep8RGthrrnH94ENtpl3xc9RyEzLnhsLuaOiwWGw91L
	zqB+wLTYmMCDWNBsNYqEsdFcXnpQ6jYVKXY9wjpuwavW4EC0ucRdgdZP+I3moKC0P
X-Received: by 2002:a05:7301:4386:b0:2ac:1b61:ae1 with SMTP id 5a478bee46e88-2b17d2ba3d8mr13597017eec.26.1768279747211;
        Mon, 12 Jan 2026 20:49:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGUHtNOGuzkGYTmMSv6QJsuzXfp8GchG0EePzCAZBd5E9kfvH97hk60dZBOqSuaH1NV/ruG9w==
X-Received: by 2002:a05:7301:4386:b0:2ac:1b61:ae1 with SMTP id 5a478bee46e88-2b17d2ba3d8mr13596990eec.26.1768279746594;
        Mon, 12 Jan 2026 20:49:06 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b1707d57aasm16264065eec.30.2026.01.12.20.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 20:49:06 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 20:48:49 -0800
Subject: [PATCH v12 3/5] media: qcom: camss: csiphy: Add support for v2.4.0
 two-phase CSIPHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260112-kaanapali-camss-v12-3-15b7af73401e@oss.qualcomm.com>
References: <20260112-kaanapali-camss-v12-0-15b7af73401e@oss.qualcomm.com>
In-Reply-To: <20260112-kaanapali-camss-v12-0-15b7af73401e@oss.qualcomm.com>
To: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: hoJ6UnYwS7TMIkt-ZEOXSZePdkHvjKpB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDAzNyBTYWx0ZWRfX6LF7pWyz3b0k
 y4bJklstsdJozEoiml4P5fqnQMFA4EdcGLfoFTfZFWLdR+6k/2v9MpOpzgfdL0Ew0cxoPdul60u
 E8JmNskB82gGCsUyMaAn5Kn6ex/7oYnRT4ReBZsAmBkVDyrTIM6OCwLUshvWOx5bhqyp4d74Fd6
 WcLzpOqfX9z6CGYkU5DA+MtKbcFcwdYTOu2arcvzPzZmCZc/5yK8tyJKcPdwI8C56VcGogPYvXW
 6BV0egPKVR/9+mokLtl6IRhRZReUKbAjEgr/w5F0qb36HWTBXy45I0E4Q110m9YbNGUbRFLitOp
 /zB156nBbZ/WifavhkELrK569XMbwDnJnjOKcE3m8YXb/AK+mP0RVCHlTHB5L8gmUi+/tNTCEw+
 gXY0yqxVHSpVdaCxUYAdiNtTt4Ib9M0SPmzfvywAlVRGEGzvncF6X7GdRc8kqvAAOBhVNXZmI1r
 M/SX60H2fbjtuOAykGA==
X-Authority-Analysis: v=2.4 cv=bpdBxUai c=1 sm=1 tr=0 ts=6965cec4 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=fxCOb-bM6HI3QnfcwHgA:9 a=QEXdDO2ut3YA:10 a=bBxd6f-gb0O0v-kibOvt:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: hoJ6UnYwS7TMIkt-ZEOXSZePdkHvjKpB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_07,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0
 impostorscore=0 clxscore=1015 phishscore=0 spamscore=0 bulkscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130037

Add more detailed resource information for CSIPHY devices in the camss
driver along with the support for v2.4.0 in the 2 phase CSIPHY driver
that is responsible for the PHY lane register configuration, module
reset and interrupt handling.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 .../platform/qcom/camss/camss-csiphy-3ph-1-0.c     | 124 ++++++++++++++++++++
 drivers/media/platform/qcom/camss/camss.c          | 125 +++++++++++++++++++++
 2 files changed, 249 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
index 619abbf60781..27179af31dfa 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
+++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
@@ -683,6 +683,123 @@ csiphy_lane_regs lane_regs_sm8650[] = {
 	{0x0c10, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
 };
 
+/* 3nm 2PH v 2.4.0 2p5Gbps 4 lane DPHY mode */
+static const struct
+csiphy_lane_regs lane_regs_2_4_0[] = {
+	/* LN 0 */
+	{0x0094, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x00A0, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0090, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0098, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0094, 0x07, 0xd1, CSIPHY_DEFAULT_PARAMS},
+	{0x0030, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0000, 0x8C, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0038, 0xFE, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x002C, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0034, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x001C, 0x0A, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0014, 0x60, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x003C, 0xB8, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0004, 0x0C, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0020, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0008, 0x19, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{0x0010, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0094, 0xD7, 0x00, CSIPHY_SKEW_CAL},
+	{0x005C, 0x54, 0x00, CSIPHY_SKEW_CAL},
+	{0x0060, 0xFD, 0x00, CSIPHY_SKEW_CAL},
+	{0x0064, 0x7F, 0x00, CSIPHY_SKEW_CAL},
+
+	/* LN 2 */
+	{0x0494, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x04A0, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0490, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0498, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0494, 0x07, 0xd1, CSIPHY_DEFAULT_PARAMS},
+	{0x0430, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0400, 0x8C, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0438, 0xFE, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x042C, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0434, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x041C, 0x0A, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0414, 0x60, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x043C, 0xB8, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0404, 0x0C, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0420, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0408, 0x19, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{0x0410, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0494, 0xD7, 0x00, CSIPHY_SKEW_CAL},
+	{0x045C, 0x54, 0x00, CSIPHY_SKEW_CAL},
+	{0x0460, 0xFD, 0x00, CSIPHY_SKEW_CAL},
+	{0x0464, 0x7F, 0x00, CSIPHY_SKEW_CAL},
+
+	/* LN 4 */
+	{0x0894, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x08A0, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0890, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0898, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0894, 0x07, 0xd1, CSIPHY_DEFAULT_PARAMS},
+	{0x0830, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0800, 0x8C, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0838, 0xFE, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x082C, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0834, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x081C, 0x0A, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0814, 0x60, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x083C, 0xB8, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0804, 0x0C, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0820, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0808, 0x19, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{0x0810, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0894, 0xD7, 0x00, CSIPHY_SKEW_CAL},
+	{0x085C, 0x54, 0x00, CSIPHY_SKEW_CAL},
+	{0x0860, 0xFD, 0x00, CSIPHY_SKEW_CAL},
+	{0x0864, 0x7F, 0x00, CSIPHY_SKEW_CAL},
+
+	/* LN 6 */
+	{0x0C94, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0CA0, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0C90, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0C98, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0C94, 0x07, 0xd1, CSIPHY_DEFAULT_PARAMS},
+	{0x0C30, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0C00, 0x8C, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0C38, 0xFE, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0C2C, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0C34, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0C1C, 0x0A, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0C14, 0x60, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0C3C, 0xB8, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0C04, 0x0C, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0C20, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0C08, 0x19, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{0x0C10, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0C94, 0xD7, 0x00, CSIPHY_SKEW_CAL},
+	{0x0C5C, 0x54, 0x00, CSIPHY_SKEW_CAL},
+	{0x0C60, 0xFD, 0x00, CSIPHY_SKEW_CAL},
+	{0x0C64, 0x7F, 0x00, CSIPHY_SKEW_CAL},
+
+	/* LN CLK */
+	{0x0E94, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0EA0, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0E90, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0E98, 0x08, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0E94, 0x07, 0xd1, CSIPHY_DEFAULT_PARAMS},
+	{0x0E30, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0E28, 0x04, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0E00, 0x80, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0E0C, 0xFF, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0E38, 0x1F, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0E2C, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0E34, 0x0F, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0E1C, 0x0A, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0E14, 0x60, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0E3C, 0xB8, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0E04, 0x0C, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0E20, 0x00, 0x00, CSIPHY_DEFAULT_PARAMS},
+	{0x0E08, 0x19, 0x00, CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{0x0E10, 0x52, 0x00, CSIPHY_DEFAULT_PARAMS},
+};
+
 /* 4nm 2PH v 2.1.2 2p5Gbps 4 lane DPHY mode */
 static const struct
 csiphy_lane_regs lane_regs_x1e80100[] = {
@@ -1012,6 +1129,7 @@ static bool csiphy_is_gen2(u32 version)
 	case CAMSS_8550:
 	case CAMSS_8650:
 	case CAMSS_8775P:
+	case CAMSS_KAANAPALI:
 	case CAMSS_X1E80100:
 		ret = true;
 		break;
@@ -1125,6 +1243,12 @@ static int csiphy_init(struct csiphy_device *csiphy)
 		regs->lane_regs = &lane_regs_sa8775p[0];
 		regs->lane_array_size = ARRAY_SIZE(lane_regs_sa8775p);
 		break;
+	case CAMSS_KAANAPALI:
+		regs->lane_regs = &lane_regs_2_4_0[0];
+		regs->lane_array_size = ARRAY_SIZE(lane_regs_2_4_0);
+		regs->offset = 0x1000;
+		regs->common_status_offset = 0x138;
+		break;
 	default:
 		break;
 	}
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index d07bde60b3a8..f68740d7c5ac 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -34,6 +34,129 @@
 
 static const struct parent_dev_ops vfe_parent_dev_ops;
 
+static const struct camss_subdev_resources csiphy_res_kaanapali[] = {
+	/* CSIPHY0 */
+	{
+		.regulators = {
+			{ .supply = "vdd-csiphy0-0p8", .init_load_uA = 151020 },
+			{ .supply = "vdd-csiphy0-1p2", .init_load_uA = 14660 }
+		},
+		.clock = { "csiphy0", "csiphy0_timer",
+			   "cpas_ahb", "cpas_fast_ahb" },
+		.clock_rate = { { 400000000, 480000000 },
+				{ 400000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "csiphy0" },
+		.interrupt = { "csiphy0" },
+		.csiphy = {
+			.id = 0,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		}
+	},
+	/* CSIPHY1 */
+	{
+		.regulators = {
+			{ .supply = "vdd-csiphy1-0p8", .init_load_uA = 151020 },
+			{ .supply = "vdd-csiphy1-1p2", .init_load_uA = 14660 }
+		},
+		.clock = { "csiphy1", "csiphy1_timer",
+			   "cpas_ahb", "cpas_fast_ahb" },
+		.clock_rate = { { 400000000, 480000000 },
+				{ 400000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "csiphy1" },
+		.interrupt = { "csiphy1" },
+		.csiphy = {
+			.id = 1,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		}
+	},
+	/* CSIPHY2 */
+	{
+		.regulators = {
+			{ .supply = "vdd-csiphy2-0p8", .init_load_uA = 151020 },
+			{ .supply = "vdd-csiphy2-1p2", .init_load_uA = 14660 }
+		},
+		.clock = { "csiphy2", "csiphy2_timer",
+			   "cpas_ahb", "cpas_fast_ahb" },
+		.clock_rate = { { 400000000, 480000000 },
+				{ 400000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "csiphy2" },
+		.interrupt = { "csiphy2" },
+		.csiphy = {
+			.id = 2,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		}
+	},
+	/* CSIPHY3 */
+	{
+		.regulators = {
+			{ .supply = "vdd-csiphy3-0p8", .init_load_uA = 151020 },
+			{ .supply = "vdd-csiphy3-1p2", .init_load_uA = 14660 }
+		},
+		.clock = { "csiphy3", "csiphy3_timer",
+			   "cpas_ahb", "cpas_fast_ahb" },
+		.clock_rate = { { 400000000, 480000000 },
+				{ 400000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "csiphy3" },
+		.interrupt = { "csiphy3" },
+		.csiphy = {
+			.id = 3,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		}
+	},
+	/* CSIPHY4 */
+	{
+		.regulators = {
+			{ .supply = "vdd-csiphy4-0p8", .init_load_uA = 151020 },
+			{ .supply = "vdd-csiphy4-1p2", .init_load_uA = 14660 }
+		},
+		.clock = { "csiphy4", "csiphy4_timer",
+			   "cpas_ahb", "cpas_fast_ahb" },
+		.clock_rate = { { 400000000, 480000000 },
+				{ 400000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "csiphy4" },
+		.interrupt = { "csiphy4" },
+		.csiphy = {
+			.id = 4,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		}
+	},
+	/* CSIPHY5 */
+	{
+		.regulators = {
+			{ .supply = "vdd-csiphy5-0p8", .init_load_uA = 151020 },
+			{ .supply = "vdd-csiphy5-1p2", .init_load_uA = 14660 }
+		},
+		.clock = { "csiphy5", "csiphy5_timer",
+			   "cpas_ahb", "cpas_fast_ahb" },
+		.clock_rate = { { 400000000, 480000000 },
+				{ 400000000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "csiphy5" },
+		.interrupt = { "csiphy5" },
+		.csiphy = {
+			.id = 5,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		}
+	},
+};
+
 static const struct resources_icc icc_res_kaanapali[] = {
 	{
 		.name = "cam_ahb",
@@ -4763,8 +4886,10 @@ static void camss_remove(struct platform_device *pdev)
 static const struct camss_resources kaanapali_resources = {
 	.version = CAMSS_KAANAPALI,
 	.pd_name = "top",
+	.csiphy_res = csiphy_res_kaanapali,
 	.icc_res = icc_res_kaanapali,
 	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
+	.csiphy_num = ARRAY_SIZE(csiphy_res_kaanapali),
 };
 
 static const struct camss_resources msm8916_resources = {

-- 
2.34.1


