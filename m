Return-Path: <devicetree+bounces-204567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF54B25FB3
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 10:55:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EBC781C88866
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 08:54:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 159C52ED160;
	Thu, 14 Aug 2025 08:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LkBQet9E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D527E2EBB96
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 08:53:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755161584; cv=none; b=Z8yL1xG5MuC20lscYkZCUFoBoEicWx2uTzSPkqSs6JEDXErsuS9ZD5yasqNZ9BlEF8TfPL6NWsn1UkGTNhn6IuPsiD6CdwbxaNJLJhis4/L4JguQtCCTD4iZjY7ON27KRg+5Y21aNk5AakfsHcmQKGH0HMwFy5mxZ5Ai18ijwGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755161584; c=relaxed/simple;
	bh=ER5Kb+8tz4fNvLOOzVyZpGvtPZZSeu4NJ+lkYxElmDU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=DH2cIH+zPTUXTgK/rHXPbVSmtRG/H2FxmBtOva86gRQyRmxx8dYnvV8HCH6lB8QdVsa5mIkTS051B+5Uxd/tO5vZtsCpmsosYyTDwVa/RyAoT1AFfluWGnJ/63RVsBjwnczLkzY+ou4+nG/JqYZYxA10cBnLpDyP+6oi66wUf9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LkBQet9E; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57DN1ejR027042
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 08:53:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=nflzV9qq/tL
	/glhk9JNHKNEsSBm8wEvnbzo5OybERr4=; b=LkBQet9Ej4FDnCKsD53bZnxHWcU
	uylpFNxuMuaed+fineZtXzzM/85HyZaqJ/Lxp31l7bqdf519h9VfIY+6jshSesWU
	XRPa7pbcYrjgdFuqDYh5pw1I4robU7LtcNW9I8z5uvK9lSMNxwsEX0RuWNIlqSP2
	+9cq4CPTkw9ZFHtZuSiti9FPcwEALBg/49xM5iPkunvVZcRsRSJtx8PV+tFsEDHM
	j58mTc8KTr/Jw/jUc6bu5OG/v+Q0LAeyLrsmUZyTdUDft+IETJB1ZB9OgNg4MLRm
	nebMLsv6Njx196Eliwg9pQFiS68Y7WO6h9XeefXHv7nz33BMqQY0sCKcOdw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ffhjtv4p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 08:53:01 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70a9f5b3601so17974956d6.3
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 01:53:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755161581; x=1755766381;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nflzV9qq/tL/glhk9JNHKNEsSBm8wEvnbzo5OybERr4=;
        b=rA6HAlnnnVU/Uwc2VivMLfAZVsHMrZW6qsqxGKql17heACO4rwtE/6ACNYn+njqn/j
         xfr2ORyf+ulinDI7DDxXUGF7KPzO/Pgmwf1MKxdZqv404AfsrtuWS9Lou6kecWh/qCLG
         Le+ei/P79DK3tvGpffqPQ+7EpP4pvHz5STA46XPR1s28oxBBt01ur/Pl5a4U7iJdXklj
         yxP9+OtvppiNJFVYxkY8Fp9L2Lpn8Y1ZNNN+nb2wx2CelXObFtG3q6no1cjTW7C5bLT1
         lNZKZY/Lg6oGo9HYXCYaknyqAmj//Snn7tpQat8GQEAUjUdHZkWtghoquwFBsN6r58kA
         UE6w==
X-Forwarded-Encrypted: i=1; AJvYcCUs2ckscNWvn88ftpL4JvfAcAc2ZNY4Zyzi+Qz8Mb8FhkGCVcmapSPt410rdvVRxMJEpmek2VfdlbPl@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2bq0JdGgqZ1SlhGdPFuJGBFzZEjL1Ql/DxwYupHYd+Cfv1f/D
	bWzu3WTb4XwNpSNLe7ZHV5kbNat8ZHXFyYeb2EoMAJdge3fi5haNOvy5rDIE/mdohDU7bNY+Le+
	eK2Kt/Z0Bu5p0pgv1RA5LBzdkh3D5AnzFjGGJa+423bfKmn8El0GFuNkpJV2S3Mav
X-Gm-Gg: ASbGncvVdcQqJJ+1UTgS7nNhEw0QpA14Ji+0ZkLLh1bJjxCp7PWLHzUnkp9TMMycEOY
	RHwbzPVSnkz5yCvxkXJ+zC184+NFmlGiTbJKrD4L7LsZPE0CcKnVVEwUEAVSmz6JHFdfgBUJWKl
	Vv6dgpIkNJ9PF5MlYSphitjSc2IbwdgmZDluqL6wGWDk0Kjr9lmm7WWI/Jub8Du1chAky4D+SoK
	XKsm0tw75yI+RMLgLyn+aORm+rZQc1FU2YuyKQjTA6kDl+PAZJ0FCh01Ex79GpGKqEYrfCufKOf
	yj4HVaFEmjWDHCwnbloYqqs1nIzybqqth8fBgzwFLqpuEJK7/nFxTRltnnNZevauTZLWdgR95hQ
	GtYjtaoBtNFK1
X-Received: by 2002:a05:622a:551a:b0:4b0:6d53:a0fc with SMTP id d75a77b69052e-4b10a958407mr32313571cf.7.1755161580721;
        Thu, 14 Aug 2025 01:53:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7VBqCxB491bsqiTl2g2jB8aaqDVL3tegvRTBxyZwdhXGP6AmLmu9SM3LrDj9T0Zv7gbkXyQ==
X-Received: by 2002:a05:622a:551a:b0:4b0:6d53:a0fc with SMTP id d75a77b69052e-4b10a958407mr32313361cf.7.1755161580281;
        Thu, 14 Aug 2025 01:53:00 -0700 (PDT)
Received: from trex.. (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c6bc93fsm13155895e9.2.2025.08.14.01.52.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 01:52:59 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v10 5/8] media: venus: core: Sort dt_match alphabetically.
Date: Thu, 14 Aug 2025 10:52:45 +0200
Message-Id: <20250814085248.2371130-6-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250814085248.2371130-1-jorge.ramirez@oss.qualcomm.com>
References: <20250814085248.2371130-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA3NCBTYWx0ZWRfXwivAoPubhQTk
 VtFZ4rvqK9HOTknh176klxYsrrOSvHq8f1/M2Q+W/xnYLHadu2/DkmJESgrRcpnrsAznhuPD4qv
 Pbn51OyvgLMKss59ppJLNhCBlkwcuBedqyP3Qb+rW0fEQbMPtCgM9UZo0pHS4kPtiX+fJLnc7en
 hYSr0wppMRPLVKwAndzEuAgXOmddA9AxXoG0Xt9+pHCXubhnlbTSWCIaQX3SZQ0SuXcawd59ZA9
 EnmHrnnYsvSLiMVjGpMXDymqFs1TU4Dcw9fE6j/8rzYa2FwSidcmFsIHWLCpLBKOaLww9u5N/AA
 7BARWPxpwO3XMfZWIGU8EP77Ru9gHbMjeV08/VL2yEiFYDRCORiop5TfGxSSCdZcQ3qfjGiL8DE
 cWGH/0jd
X-Proofpoint-GUID: D8Y7qbbw_LLO5UAlUJ5C4Jbnuu7XsesY
X-Authority-Analysis: v=2.4 cv=TJFFS0la c=1 sm=1 tr=0 ts=689da3ed cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=tkZEzfabOtbtaFzRxSIA:9
 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: D8Y7qbbw_LLO5UAlUJ5C4Jbnuu7XsesY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 clxscore=1015 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508110074

From: Jorge Ramirez-Ortiz <jorge@foundries.io>

Correctly sort the array of venus_dt_match entries.

Signed-off-by: Jorge Ramirez-Ortiz <jorge@foundries.io>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
---
 drivers/media/platform/qcom/venus/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
index bc7b255357cf..0ff48c92749c 100644
--- a/drivers/media/platform/qcom/venus/core.c
+++ b/drivers/media/platform/qcom/venus/core.c
@@ -1074,11 +1074,11 @@ static const struct of_device_id venus_dt_match[] = {
 	{ .compatible = "qcom,msm8916-venus", .data = &msm8916_res, },
 	{ .compatible = "qcom,msm8996-venus", .data = &msm8996_res, },
 	{ .compatible = "qcom,msm8998-venus", .data = &msm8998_res, },
+	{ .compatible = "qcom,sc7180-venus", .data = &sc7180_res, },
+	{ .compatible = "qcom,sc7280-venus", .data = &sc7280_res, },
 	{ .compatible = "qcom,sdm660-venus", .data = &sdm660_res, },
 	{ .compatible = "qcom,sdm845-venus", .data = &sdm845_res, },
 	{ .compatible = "qcom,sdm845-venus-v2", .data = &sdm845_res_v2, },
-	{ .compatible = "qcom,sc7180-venus", .data = &sc7180_res, },
-	{ .compatible = "qcom,sc7280-venus", .data = &sc7280_res, },
 	{ .compatible = "qcom,sm8250-venus", .data = &sm8250_res, },
 	{ }
 };
-- 
2.34.1


