Return-Path: <devicetree+bounces-196944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E5638B079D1
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 17:29:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EFE2A504AAE
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 15:28:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A51F2F50BB;
	Wed, 16 Jul 2025 15:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FaQb4VGb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214BB2F5084
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752679702; cv=none; b=Et4JIIgXECGOjqN9M566nHx2nJsQQbTAtwbGgDNlCQjL8iMJl49d/MHROVksGlElT5L5qTJ1TsSwAkbQLyDfF2Ss4Q5RR8XA8HB7HPkoi7s7yh/Wa1uRheJIb/1k7bARGOSYahYTJt1YX8Z7oVCXXkunICq+ZnQIYOxEyvxv4Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752679702; c=relaxed/simple;
	bh=d5TNHXJqe35TYW0XGOrPx+PAjPxH5xNWzgZ20VJX48A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=AkVGgjOEuC41CA/VmqI125H6lC4hLNJ4XVte4UoX5I5+KVPUUfEGdQdtPHJJZMqEQS1Cv0UgMyncPI58xm9iMx0dtDyPTr4cvm0u1CDglPtGhHXtLHIery3ocAu6ug37UNClbDM5k39uvINgd/46gtjxhwhg/at8mZvxmQWflGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FaQb4VGb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GClYg7014516
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:28:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=vVo7g4SuoBA
	YE2Kpf8pE4sBdUNQNHKc2NlVal4lHsUo=; b=FaQb4VGbYFWjx+AGOQxR42GdVD1
	BS/SNsaLf7hKd9FMQ+xLCCfKls8cu1IWD8fBWdYy10hcz3T4hz6y1CRdNaeEi7/b
	+3znubwO2Kl7yX8PoL7wj1KQmoS4YFLj9KqC2r1td53O990ozMiHOqc1/f892W7f
	KEEQzTUv4tVDfQc5WgG3Eh5uFflWOJF8CTuvqx/Z8ugGMAzz4RmjCZv3SsB8y6kD
	JVAzF8AYhGf3POU+6tC/asocjHJ/YrY70h9xLoh0DTD0goo3cF11Rh6G3HhY9dAY
	thfkKf1ueY3RmUR8RcCkWYvK9TYovtN/kJAiSOWHj57hOZiPORRq5R/Ak4w==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dyqefc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:28:20 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-31202bbaafaso36759a91.1
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 08:28:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752679699; x=1753284499;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vVo7g4SuoBAYE2Kpf8pE4sBdUNQNHKc2NlVal4lHsUo=;
        b=Pk3NnoFiHxZM26h9DHsduLZPrkOsfTpNSwl91WAZVjMEqgfJNvZY8w9zcNpkF3zDWt
         fIE1A4aCdVPyDaR8yQap4NltbGCmSWMqzchDfcvBdFxjXZelXGFl9Qpgk4HIz+qLIMFx
         xG317r3l7OIMiFdFwWsURo3vmIEkmCwZ5cK3jrQQkUCj6/NVdJOn2s+gej3PvLO1iOuT
         rpaTTVQcRjVnZVDzNCC+Rj2BTtLEPLBKwoVct1U3OE1k9c0q0xuhVj2WaTOVrUehefD7
         OGR/lVuUgr2OUBPaQ3GMG5o5+BNze/SAhl9Cts+uVAslv/Ln+CLDiAl6oI917/PKiSZu
         etTg==
X-Forwarded-Encrypted: i=1; AJvYcCWzd5q8iSVtvgdt7nWnPUsN/Fm+eAKeEMejpFQbGuzSTNp6PMZ4aWSgv3Vf0kfTJJhGSZ2m+9v6i44l@vger.kernel.org
X-Gm-Message-State: AOJu0YyG3iHDi5DYjDvN8zVa+uglvqxSu9voCpiGqLXOa1hhG2UmVysm
	eGCE2ySrzVLLd3nEnBw0ozfENfgg+eQ2jDWXPZM+2XcFrMwr83DyGh9YumFbdY9vaaik2GtxTvJ
	MuAz1ojjwd8mfJ4l5JI7o6Z2I9ZWPuBRI9We617IZuzU5cHRMvAstZLA090XTWXVz
X-Gm-Gg: ASbGncsvCxrRJQBKCd8P1nXiVUb6kxlkLKCD9I4dQG24AoMUT8Va93+GYMlaAMgUu4u
	Go+LGB4ubTn4IPvmIE6V9eP79qSDQ231zV9u6WZrzj8HB48ioQbx5tmvk8UIUMz/gXrdrRnaigY
	jaHRmz0Ch5UgIN37YvMdwiqVRgCUKyvCk2OBJBIQwVjesF1emyjcbfofGK4BP8lHzKKfxUliyDG
	UcOiFAs707fX4czZVe1DkpD83hGnlCUklVx/ZjLI7jbhnDTIw4Elsa0t2SYA+9sB9UAomzWAAaH
	nt80Pa4Ws/n1xDwFPKq5GhMHp2Tte4oqPWL6lPMDzTUfsOF5oqNN7elpr59JT7rrKtee2La0mGy
	1jD7UdgoPd2v9iAr3zosrT159HNNvqnKzKiaoV4yuBVZtBhEsCgYSB7GqByCc
X-Received: by 2002:a17:90b:2685:b0:311:df4b:4b7a with SMTP id 98e67ed59e1d1-31c9f4b50d3mr4106085a91.29.1752679699489;
        Wed, 16 Jul 2025 08:28:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFeI5v7kP521ZDrKFwcG9h//NS6CzCzK54hgX/qI46bD76bO/lyp3vx7QSU98+WYi8yyBAb9A==
X-Received: by 2002:a17:90b:2685:b0:311:df4b:4b7a with SMTP id 98e67ed59e1d1-31c9f4b50d3mr4106027a91.29.1752679698969;
        Wed, 16 Jul 2025 08:28:18 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31c9f20e87bsm1688563a91.35.2025.07.16.08.28.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 08:28:18 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: robh@kernel.org, lumag@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        ulf.hansson@linaro.org, konrad.dybcio@oss.qualcomm.com,
        quic_tingguoc@quicinc.com, quic_rjendra@quicinc.com,
        kamal.wadhwa@oss.qualcomm.com
Cc: linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] pmdomain: qcom: rpmhpd: Add Glymur RPMh Power Domains
Date: Wed, 16 Jul 2025 20:57:58 +0530
Message-Id: <20250716152758.4079467-3-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250716152758.4079467-1-pankaj.patil@oss.qualcomm.com>
References: <20250716152758.4079467-1-pankaj.patil@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: wsUfVovncYngNvJiTECIdst68ocQFVY9
X-Authority-Analysis: v=2.4 cv=RtXFLDmK c=1 sm=1 tr=0 ts=6877c514 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=o1i6smXM0GLUooxP6f0A:9
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDEzOSBTYWx0ZWRfXyLL6fTpD7rWg
 4N1ZfgsMpIt0jU8CqB/pEwxaOvX9/WPKbKa1XFcm0x9sW466bkS4bm/yeoUSe8qufLph1JrjXlp
 3BsKBgP1+mvHh7VjILTGGM+Z7DDW1BjPxc3EkWhKeMQk7aT/9uTFoZKVPHOPn6fJBE+JopFnN+K
 wPHSNdy9+Mt2INqLnbN2cUStw3PffGkrMuK9B91CNML3Yr6/OvCIPynb0JzyiDXnaCvv1bpGQte
 wgw8ouZd7ti1FyblEiTCbZ+O7jSA9fN/FzlaAcbppS1l+Rcf8iJQiKuAXyemg/yczmxlZ23Aelq
 U4EPMVznZt1sGJioWQLpP1SanYZmOtyt7nP/uVYHgW8koxtdgBChxu8rrzpiVsNhRf+knIajVDt
 me7U5H1dD7Qr+cL0EOnUtwk2y2C0Pj1gtLBaU26AOQTVrXKUAqw8aSqSVO3ULSxwnNUBXsns
X-Proofpoint-GUID: wsUfVovncYngNvJiTECIdst68ocQFVY9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 mlxlogscore=999
 priorityscore=1501 phishscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507160139

From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>

Add RPMh Power Domains support for the Glymur platform.

Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 drivers/pmdomain/qcom/rpmhpd.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/pmdomain/qcom/rpmhpd.c b/drivers/pmdomain/qcom/rpmhpd.c
index 4a8e2047a50b..4faa8a256186 100644
--- a/drivers/pmdomain/qcom/rpmhpd.c
+++ b/drivers/pmdomain/qcom/rpmhpd.c
@@ -684,6 +684,31 @@ static const struct rpmhpd_desc sc8280xp_desc = {
 	.num_pds = ARRAY_SIZE(sc8280xp_rpmhpds),
 };
 
+/* Glymur RPMH powerdomains */
+static struct rpmhpd *glymur_rpmhpds[] = {
+	[RPMHPD_CX] = &cx,
+	[RPMHPD_CX_AO] = &cx_ao,
+	[RPMHPD_EBI] = &ebi,
+	[RPMHPD_GFX] = &gfx,
+	[RPMHPD_LCX] = &lcx,
+	[RPMHPD_LMX] = &lmx,
+	[RPMHPD_MMCX] = &mmcx,
+	[RPMHPD_MMCX_AO] = &mmcx_ao,
+	[RPMHPD_MX] = &mx,
+	[RPMHPD_MX_AO] = &mx_ao,
+	[RPMHPD_MXC] = &mxc,
+	[RPMHPD_MXC_AO] = &mxc_ao,
+	[RPMHPD_MSS] = &mss,
+	[RPMHPD_NSP] = &nsp,
+	[RPMHPD_NSP2] = &nsp2,
+	[RPMHPD_GMXC] = &gmxc,
+};
+
+static const struct rpmhpd_desc glymur_desc = {
+	.rpmhpds = glymur_rpmhpds,
+	.num_pds = ARRAY_SIZE(glymur_rpmhpds),
+};
+
 /* X1E80100 RPMH powerdomains */
 static struct rpmhpd *x1e80100_rpmhpds[] = {
 	[RPMHPD_CX] = &cx,
@@ -741,6 +766,7 @@ static const struct rpmhpd_desc qcs615_desc = {
 };
 
 static const struct of_device_id rpmhpd_match_table[] = {
+	{ .compatible = "qcom,glymur-rpmhpd", .data = &glymur_desc },
 	{ .compatible = "qcom,milos-rpmhpd", .data = &milos_desc },
 	{ .compatible = "qcom,qcs615-rpmhpd", .data = &qcs615_desc },
 	{ .compatible = "qcom,qcs8300-rpmhpd", .data = &qcs8300_desc },
-- 
2.34.1


