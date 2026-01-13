Return-Path: <devicetree+bounces-254415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5E0D1809B
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:31:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 480B0306E2E9
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:28:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAF4538B9A7;
	Tue, 13 Jan 2026 10:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GKn/wefv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IMxMM065"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E949738B98A
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768300113; cv=none; b=Xb3+pHtC1F9ggXtvYalZQyldJ0ULcYXEl7mCeoLM/tUiVJC4L2zoJMSnTlnICf1fAza9/9ypqYEyv9ph2LhrMPfj60wuUOxKAhSxUjDNu2NLw7TBAamX4zHLJS65mPDNr0ZABOZQaGuqGXmm3WPoi3ZSGgJsdaC0+FVx+AScJQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768300113; c=relaxed/simple;
	bh=nRbhcsGUzEBRd//cJGdc1CTziAEXsTl3Od3TxBL84BA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=XWbZESNX4sMmuxOridBWILABxopMCD664zhhluAyJobZVWrNH1q/vu1Xgeb3FWU/LRCWKdKwy20igTe+w/0Lw2swqNwj6Td+T7FBtCvqjMP7QKBFvO+/xsg+B6I1tlzI/l4I9molb42fIGOmbJg6SuVGI5c0JlBm34/rxeBn1hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GKn/wefv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IMxMM065; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D5SvfI3869220
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:28:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=+6arHGnDlUN
	YPv3P4q0uiidePRXSn664P7Yjsk4T9s0=; b=GKn/wefvwoM1lm4OxTIs5TKgzcT
	9060oTHeTccP7jAWuUmiWP6KfUEuOhHoTse5YWkQT82+U0gRM/oYfPUahfej/nAX
	umFNQGzEFhb7hfKDuQS6wO7nRESkNW6fi76bF6iu/7j89/CfBpoh8SWpk1EguyzA
	M0Jh4CfP3NxMMzSa0mMP21tak5tYHzoS1W4L18j/uZH8OnzsmWvsLYrERq2ImNuV
	PgVeiuTdWossMcSTlvBqo9O/JnZGmAr/otX1bjf/55VE02J1x9N1kWJMPwCqPXg8
	QS5jaDFUHiS/aqPW507w7xZTMe35SLFMwu0rLcRD1zqkd32RW79iCdE5Blg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnfxk8w35-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:28:30 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0a0bad5dfso31248595ad.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:28:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768300110; x=1768904910; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+6arHGnDlUNYPv3P4q0uiidePRXSn664P7Yjsk4T9s0=;
        b=IMxMM065DeXlzmIQO1Ecg4d8xvjMQvfpyGO7C0nzIfhPoBsRNxGeaXhZ3yRchCjvdH
         hX+FaS4iPAxGENJEGuDk7P3MKcHaxf9rx1DF4XQShKEBrurybHCKOVGW6WmvnlEUonLx
         QQZNhIe1QismbdT/MUZsD9JGkFfbHoYRUIc10t9fXU70MsvgLmh9IbZR5mpIN9Gz/xhG
         o1mAFFNB6zLiAECuVZIoVP+3/sXY58ls8y1f8a1UEJ4VfLeI2nGoxrnAMTHGeuWaLARs
         WqTuy63GvwWfJW240z5u+D8xlYu0t+S89/86YSeNlOVmG3gfXk+w/OChMgSBJ7IqXPZm
         Lh9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768300110; x=1768904910;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+6arHGnDlUNYPv3P4q0uiidePRXSn664P7Yjsk4T9s0=;
        b=TAMv/1M6ZYc1gIloFHq0JxSoDgz2gmv6fN3w8ai5SsKbndjRfKx5CSBI7DneFZuRFG
         yGsc4eqyM6pBprd+zm1sfKwKQ/9D0sJHrYzFmBMlI8LrdPe2+AS1eo+q7QYC3MEICSbl
         sDqCfWq+3Ex4W2ob5tGTfqpiye0JHA23pN/lwGCOABgs4zwf6FN7KX5siDMhB9DTQHAK
         F8rmP6v1NSMh9HQbBGk2LxlQ4H30lrnSMQ6VbHkOebeA6oovYFd9u2WqtKgE5j/cB1aq
         w95qWXT1yMwprn0pD/xODhrcVX+o9kSPbQFzRz/ts7HWMfPYmiDXZbCEtMa1keuKG5mL
         qbQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpRpB71F/wQAxlCG3gP4iHz9coPaVQAuyGLr4A8yx2oZ7B0PyavS+Xxy0A3vuS75okbLVK3TnJFYBX@vger.kernel.org
X-Gm-Message-State: AOJu0YwTughfeTfcnj8lbi3Avpea0D7SyVQbqBWe2r5RmlZRERpYLvCr
	crkNvrJuL86xTSbxLvg3YjApQXl2kLkDnT3efP3IIRlWcH9llUrNzl4KaYRcMLaCWIlKngaOi+w
	TuR9CwZL9kZ5RFZEFtZ/gQPIHAyD82quvR0Q6cQLuUNncdX2Jh8+ZJyIiYNvaBdpd
X-Gm-Gg: AY/fxX6WY5JSdFKnysq/IPlojdJbtaMGASsSCFBfMD3EckPEV6z+c4xBDCbvwp9S4/7
	VMMfqWeEZgOnIGAzirQ8yEE3u3IUDv1aO050K5YwcBYFhLmMzbqg6o6+RYHcJGBmrj8+Q81oS9j
	MrrHavDl7CHkCWx2+blBrtfiBv+giaK2vYwMt80mQxo1eNGftCb+Zn+MyPNCep7Y70+xGLxkwfk
	k32WcOM1aSLj/pebrrmD2UQve235oJ2CpRr98q0K5EPPdMKxv8w2nvCrsEPs40iB0HnDbpBwYUp
	LEs11pPzEL2DK/2FOaHtBDhxUgH8vl61k8a2eFDfYKL2+YifKoh+wJ1lLMh4L2FsmPIW2On4D/Q
	O9fChBY4cn9MBLlYjeLGve3P8PXzgQ1XBjBHhzMgHbDVey8XEh2LQTD/CC3qHiSnnn2SI/s50o4
	k=
X-Received: by 2002:a17:903:1905:b0:29d:7b9b:515b with SMTP id d9443c01a7336-2a3ee42c623mr195805895ad.20.1768300109807;
        Tue, 13 Jan 2026 02:28:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHj9DkygyDaH/PhN8OwXtSx4Jv02YKfZCCZZ7IEe9Mj2CjZ4MQ5WJCxp9FqMcgEuh8wyrGR3Q==
X-Received: by 2002:a17:903:1905:b0:29d:7b9b:515b with SMTP id d9443c01a7336-2a3ee42c623mr195805715ad.20.1768300109369;
        Tue, 13 Jan 2026 02:28:29 -0800 (PST)
Received: from yijiyang-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc8d76sm197125265ad.84.2026.01.13.02.28.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 02:28:29 -0800 (PST)
From: YijieYang <yijie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, yijie.yang@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v3 2/4] firmware: qcom: scm: Allow QSEECOM on PURWA-IOT-EVK
Date: Tue, 13 Jan 2026 18:28:14 +0800
Message-Id: <20260113102822.590677-2-yijie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260113-purwa-v3-0-16eefacbdce9@oss.qualcomm.com>
References: <20260113-purwa-v3-0-16eefacbdce9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: oQ_7tQXLCkQPhUfYttFrCUSZH_WG2LZd
X-Proofpoint-GUID: oQ_7tQXLCkQPhUfYttFrCUSZH_WG2LZd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA4OCBTYWx0ZWRfXybSWxBedqEFL
 NrFpO64U4dwWa0WnlFHHauoaZSPUfa50tuSeK3NbWPqDnh/MXw/v7xJKDaT9LrCqOW1OzABcCQX
 xs2KnZDtt94sW80NI3XtJbubYcDh2ECgFvvMVRW8jyyRFmpxAg6Gg66oqeUxWUGMDHjPd2uz9a6
 zFZnwWNIHnrl/tdZ38Deh8EhheTLfZYrpq2e+pyOOawKzDcyLriXP2OORL0nvOdNGM+AGXS7KXY
 D3guHK1Iwdty/vuAORYewljwL5rex7cXstdEZ2JlgHmFwt4Tg4uBkoK125xCIUbpgEbSaorGyPS
 4MaV5IFy9LYZGVkfpsd1lEb+0R91GLvCwGvWRfHOlVrg4iE4ShkQyBASDMkwNWzXHS7Q4bqc/69
 LmrsReIqxpheBcEHpUswV+AVOraC+U40H6tqS9+Juz1ps+WjyWChT4SB6GEjl8PZeVTX8AJFSuD
 CADqHVabr1S6EOSV7JQ==
X-Authority-Analysis: v=2.4 cv=PvSergM3 c=1 sm=1 tr=0 ts=69661e4e cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ZmGgbmymOzp8U7yWMvkA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 lowpriorityscore=0
 adultscore=0 spamscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130088

From: Yijie Yang <yijie.yang@oss.qualcomm.com>

Add the Purwa-IoT-EVK board to the list to enable access to EFI variables.

Guarantee that subsystems relying on SCM services can access secure-world
features. This change improves reliability and prevents missing
functionality or boot-time issues by making service availability explicit.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 1ced6022c716..9a046b09275d 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -2022,6 +2022,7 @@ static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
 	{ .compatible = "microsoft,romulus13", },
 	{ .compatible = "microsoft,romulus15", },
 	{ .compatible = "qcom,hamoa-iot-evk" },
+	{ .compatible = "qcom,purwa-iot-evk" },
 	{ .compatible = "qcom,sc8180x-primus" },
 	{ .compatible = "qcom,x1e001de-devkit" },
 	{ .compatible = "qcom,x1e80100-crd" },
-- 
2.34.1


