Return-Path: <devicetree+bounces-189212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8C1AE72A6
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 00:55:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC7141BC4AB7
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 22:55:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 562A925D8F6;
	Tue, 24 Jun 2025 22:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jgTEzcUQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BADB25D20A
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 22:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750805619; cv=none; b=Kh1vyjQWSwGffYVBJ+Dza3QPbauPCnNJJze3XweEOpcSpQa+3VTVqZNdsmH0TN5sEa7mtTOPnqvk5l73zThJENfzlNkkxPYSoa4QpeDrlkYVVDvc2r5tveABGBfOKiTnzg/CTk5/9rJyzAgIiqoCL+q5XkcxDA6FAtJJRUkUIpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750805619; c=relaxed/simple;
	bh=W0YLJNz5/2SAiapxbVHEzsfqeAiPqnoxKuIVDr0TVNM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SEuSKR4G554jHK2LD983JcaRNXwJQ8SkLn9muDzZX0d4Hcs2UvJU28LRmOJEISyTrQIDbdmUzU4chhTwIiebBqeOucUFJOYBQEyMNsBxRLr4KO91B3mp13upjiaVUqOgjVZLETzmAqLqf6UIPwCyStcZ0C62n89LVlwSeIILmFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jgTEzcUQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55OErHOR022133
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 22:53:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3PYGYwAigTe4Xg8FBE8LvVKj2tXUXuFCqznUuXtFksk=; b=jgTEzcUQJEULxLqC
	XiSOzdXI0rEcSbcfgr0UxPef2I6p2NEV0dA49pvPKa+GHnfoKPiO20rjwmGGx+0B
	EIcAzPOFOwhqWG7OQSpig5Fg3NP5wzHIIVL8m9tHge2IBm2O35XN+q6N7eo0WB30
	gwtZPyEIJNX4PUpcuVdslWnYQ17WjP+Y2AgMpsYNhpSCZlom1s7rYeDTIptBEGWC
	Y8I5MGHFGfA6xtLwTZn6xjwErx0a6oL1uIDQSkS7x/MsW6jC04r9XlB5GScX+mcY
	rNB6T/h40ya7HpKijr70bxU/6ucoOLL4DTVPsnB154xLKnybLFZUQnas+Zfp3NdV
	PyiV7g==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fdfwv2vv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 22:53:36 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fb01bb5d9aso12698106d6.3
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 15:53:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750805615; x=1751410415;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3PYGYwAigTe4Xg8FBE8LvVKj2tXUXuFCqznUuXtFksk=;
        b=hGsyyDc9okhhdaQgssKXtE5pXQepgJ3n6eIzLOkaAUrYwHlcCUjtKYyJKXSkEQklKg
         Z+/KpNb4GQQxxjfmYPSZtSd0ifhnkEL65K1HdZNWhWf7V34HfcjyqEd/pf7IbxCi3FeK
         sBlwcgJxskxP67rIcSl79SyMWFxkwxDtQfWRIKn7mLQ74Nc800n2h2fmgP+rs2xD5ijH
         WeGKdvW61j4SStyWUa+Wd49+tFUo0Ckd370gZ5e3sCzguJmjl38WzIz0Uootq7fU0noC
         4KFo9zVD/b5C7LwWHP52VVO0skK7EJ+6DEFJhTg+BYgdIBgP7PTHsnDBB6d+lQE4f7/b
         xj+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXPCUf3k1D/WAW4W2TMipXFDoKpI1r9GEq6w6CdjSfFMf9xabnHo9r7fOSr+knFhL1BEUotHNu/dW71@vger.kernel.org
X-Gm-Message-State: AOJu0YzgdlpyTR9bos/HJIAvd/4Q8PrlWfmZhRsAci/XuUVgpFm6XEX2
	eA6bP001cj0IrE435cq1hYdobBbpNM+QoVeMYtYKccChtYScFiNXyccrz6ziyUWpO45QDwYa93Q
	PYftvGXV6tDz7OUkeiUpIUesGaTXUVgxcPoSNvI5C/QcQj1YdKEC9HsoG1wZyrXqd
X-Gm-Gg: ASbGncstZqvIwdkkup0VKIxiMbVwCLkvFQ2RpRS7Ee3GdpP7hS/dHk5cHZrUUZ9+03c
	W19/kGFY4yy20S8uSqFnaMjG3ibBfxsBb55JAcUYlhcchqqQ9R6ejHiLI9jp+cuKc/bNTEQ2kQ5
	9Rp4ws4oiqze1bfc6afbZTRudp4q1YUiCFtHXSYErWVrJiz+Aj+7uUNPD+tRkb/6Sxnd/1XGbWd
	9Fw52l37fagKATypzRffPtMbpVk2t1cs5Q8V4mkdHpSLW8YEIeEJJzQ4yw/qMZi5AKJEwglgwOh
	tYgOkxKLeOfcNG0Rcoy4jT2LtH+XOXoEXVbuCkQyAutv2r8pUUUDYVeOTWQ1qvrp5j1YouUQUUL
	Bnc3Th6m2k42mHU1C3UnmlvFNmrkkxn47KHY=
X-Received: by 2002:a05:620a:4050:b0:7c7:b4aa:85bc with SMTP id af79cd13be357-7d429660e04mr113561685a.17.1750805615316;
        Tue, 24 Jun 2025 15:53:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG41nDKvy8NSvFSuE+GkqRN5rEbL009m+aNzEf5Aeh6gwiaJ1JjFjqhlwEUZpFQ41nVpXLjzw==
X-Received: by 2002:a05:620a:4050:b0:7c7:b4aa:85bc with SMTP id af79cd13be357-7d429660e04mr113559785a.17.1750805614907;
        Tue, 24 Jun 2025 15:53:34 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b97f5980bsm17843851fa.7.2025.06.24.15.53.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 15:53:34 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 01:53:24 +0300
Subject: [PATCH v4 5/8] firmware; qcom: scm: enable QSEECOM on SC8280XP CRD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-more-qseecom-v4-5-aacca9306cee@oss.qualcomm.com>
References: <20250625-more-qseecom-v4-0-aacca9306cee@oss.qualcomm.com>
In-Reply-To: <20250625-more-qseecom-v4-0-aacca9306cee@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, Steev Klimaszewski <steev@kali.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-efi@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1087;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=W0YLJNz5/2SAiapxbVHEzsfqeAiPqnoxKuIVDr0TVNM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoWyxj0Fb4cA5VMjgnwN72vznUyGiXQ/4qhUCvh
 dIttwizDleJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaFssYwAKCRCLPIo+Aiko
 1Rm9B/9T0FUesziKizU38v76pcYTiA6w4sBqSbxkzsktq0nA2q0sSBVPUtwLWt/yJTIVokgN04M
 MFcYDkc/AS1ImaYPtlBWux5XC4SJCh5Nvbclq5BxJDQ22fkijV0vrgTxkfYyn4V1FuzupIeWoQw
 Bx2Bzktqtj5ShsO6vI99DSh0LYEp9cDpfWoQoNbfVvQnwKvRKKaoSzqe5u5sJ3O47RY2qiOQOlj
 cRIPTCdVRn/bREB+itNQJVAkcUc7TqVPcxixkQYqtMS7Th7Bdk0bxLnR8ru6bEsFnVz5bXKEmaI
 ynV0525X9ouUotWTbiY7J8Vn41M2wQYrYfMAUj6zMaXXHDub
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: UkyoMNwoBxEz9Fzp_KwafvTzsYPPsrMJ
X-Proofpoint-ORIG-GUID: UkyoMNwoBxEz9Fzp_KwafvTzsYPPsrMJ
X-Authority-Analysis: v=2.4 cv=MtZS63ae c=1 sm=1 tr=0 ts=685b2c70 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=GpPnMnrImHjYsJApwW0A:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDE4MiBTYWx0ZWRfX89rzo8NPDVvC
 i12P3OrDG3FOP1FS3OWDyMshvJC0+uLS8dAXenIWxuN7F3fpCkl1jYSU2OAmPNHJ1tWregrlMAT
 yWm72Rcf+JXO4+94VRzsam4tvWJIvzdwFGAos0jmViA94/5PrHecKk+zSJMQ8kLNVS2v/tVkB9C
 X81ZCFLQdkR4kY2hkcrFAU3T7HqYz+MFG7NYAJcZ9U9/XVwLfxfMCWZdeyiV/KrIuBZ4D13osPD
 2eaHXsOY/YLtfuptOPJZmcyRRQdIQZD4tNjs9/oDsy6L/n14SsLGnfaoWT27QiO2meMinqw2uX9
 BDOuhRF6VNHIlgdABzye8M7c2KHSObwG9K7AqGNME/Ju7fIGK1Y0vLm8KZ/GHNguI3gUm6gzVku
 IXfgMT3hgNLPBf2cAYV7TA3Tj7XLTJr90xFk5tV36k+w/zo8XHIY/lu+9J4CxHPSuI+SDEjt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_06,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 adultscore=0 phishscore=0
 mlxlogscore=999 spamscore=0 malwarescore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506240182

As reported by Johan, this platform also doesn't currently support
updating of the UEFI variables. In preparation to reworking match list
for QSEECOM mark this platform as supporting QSEECOM with R/O UEFI
variables.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index dbb77c3f69ddaa931e7faa73911207a83634bda1..27ef2497089e11b5a902d949de2e16b7443a2ca4 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -2005,6 +2005,7 @@ static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
 	{ .compatible = "microsoft,romulus13", },
 	{ .compatible = "microsoft,romulus15", },
 	{ .compatible = "qcom,sc8180x-primus" },
+	{ .compatible = "qcom,sc8280xp-crd", .data = &qcom_qseecom_ro_uefi, },
 	{ .compatible = "qcom,x1e001de-devkit" },
 	{ .compatible = "qcom,x1e80100-crd" },
 	{ .compatible = "qcom,x1e80100-qcp" },

-- 
2.39.5


