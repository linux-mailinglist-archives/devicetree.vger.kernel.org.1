Return-Path: <devicetree+bounces-202639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 856E9B1E4BC
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 10:50:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32347725DAE
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 08:50:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51CCC26E149;
	Fri,  8 Aug 2025 08:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MQ6xq7VP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3FD26B76F
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 08:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754642981; cv=none; b=qpWhJuqfb2UTR3fpcluu0rE6kYvF9AeRh4czgH/HuJ3mvoINHTVoe8r/pN4mx31jXu79Nx1lN2hfD+cP30OSogdPv+1WylTQeZMz34vorrT5AAoe10XolMGn/mO8hwEhoh28yOjXn9Ikj/CWGMZC0+0g4dKZmgTQ+xeuiuyFWO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754642981; c=relaxed/simple;
	bh=n+vg5ydQ7X4wyVt0+s72ttQVBKiwA0hDbAZIqS23E6A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=LtrHzzSRH3RYzxPlnjevB655bXp0xUuLFnfTrkRhxMa5/zrKglI28oHlMAI+W97CXwngu3z1w7XFWYW0Wi8ks/jKDg5QJUbTpbNqe1tXm54lLRwP8dvtBkgcT2Ap4ew2WgIcaBQUY2aLTEKLh+NOcauxWlK0DjV1gsxR9F7mi5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MQ6xq7VP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57870xEL022444
	for <devicetree@vger.kernel.org>; Fri, 8 Aug 2025 08:49:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=MPC6xd2VF/s
	mOBIHZ6B9pOI38D2n59UvsoeVG2Ya7rA=; b=MQ6xq7VP0qVp8a3aHVrsXHpeSC2
	n/ONq5QtvuUvgXqL/uQZDui2TuybsWCTaWNRN1WGIrWD3otA6w1Qmhjfolm+C+w1
	S9hnR4bVbA7addlaRPVoDxv50xnGUGQ1GxF4sYBvaa1ZzpGQH+9nUWhKy1+y6Zjl
	pCTJL+QuCpywIgzI17m43qB/A62565S2Shh0ECWr/8AulK1u2LLfLxbeNRCmKiJD
	ver+eak2caDg8ln/6EUENJpRUGYfbGO3gth14hkFfjVpABzsMtk1WQD2+UisrdrH
	6ddDK4ihbVUEFB1u2yarCL0XFreFmgMsKtxdCgXm4018g1eEuqpoMWU3QZA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48cs5nbnf0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 08:49:38 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b08a2b3e83so52079261cf.3
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 01:49:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754642977; x=1755247777;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MPC6xd2VF/smOBIHZ6B9pOI38D2n59UvsoeVG2Ya7rA=;
        b=MdaYC8yt1YSgHM1MqbpJJV4LlEq2IjdDrunVgatao1+RJQOBpN9erNvyWGeOhZKW2f
         YaS/Ed7OWu3aZnp1vJT22t4RJnPknofXwvogP+RRW2PR22RXBYeM7OTmZDJ7cerzZNj3
         dQz2Onnjib1daZE08QnEB0vgeBOCbyudEG4rzfLbPN6jQz/hT6igR7oPvCqIjVMLMcjI
         RMjaCbap021BJDvG54qD+r0ToPMA2Pn1w1b2fmYF5jGhtckxICvopx4qcStI3KULru1Z
         8ULWxRtxt3/LiiyUSbDEVbmKRGUUKXQgUvl2bR5ML6gU2c8V0oZhdSWO5J8XtF7lvykC
         sNIg==
X-Forwarded-Encrypted: i=1; AJvYcCWrSxITEno9zOAEV8UIYRQADmp0C8YghHuaC/d24xUogl8v0cXd3yJU5lwlqVZ8K/VzR1j8aHBYkvvC@vger.kernel.org
X-Gm-Message-State: AOJu0YxJJP0noZ63EhDeLfEgAs0hVFghh3jG+K4awFHYHi44ex9qmt+x
	ZIAyNGDMcT+XkUO0FPPZ+i/Ap+jirT6iuCbtLmzCpeHacEsAMRBJstkEqKc5yyNvOdL0MNTCCbt
	WXQkxZNCgj54JK5Qciweh07Ms/dV0QLAaXfxzE7cuoo55zRjfkVwVtISjsY3tZ4sx
X-Gm-Gg: ASbGnct1yhI8wLWoNPPB9DVkCFECVPFXpMDvQ+0VjUhrtDDgWBDWiQW7ncbE/sboAI7
	7tQA96O5Ba44tyOXtotqJAG8Nz0tKo+BOuUzMLiUX4GXONjV1YADWoG27v0J9BgJ5567MsO5F/q
	NVsM2s2zvgvNy7vW7LPB8XffOqAMKGGAxz9UuDn6OzEyUw3RtjSsncqK0hn/kNqk7BwvFwev3TF
	IWbTp+uUpTNDfetI4hGpvU9JbwPIDS6tyOb1hxl1hm85pv7BIS2NLOjnVXnIUnJLxsHZwFoXlew
	CM9nlNRQzra7qWdq3h+kW1+OLbLvV98zcm4+s3iH4UnQUd0o2HYZhXSz0oUSPk7EA1tvDRn7aPb
	BIJFw3MITTGBo
X-Received: by 2002:ac8:7dc2:0:b0:4af:575c:cc39 with SMTP id d75a77b69052e-4b0aed0ccc6mr26657801cf.1.1754642977087;
        Fri, 08 Aug 2025 01:49:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPT5L9K1ndC4Lc0SocEjGMvLrP4Jtf9+LLMfgbO89C12Q1EWLhMTp/PQ5tpPfbopMSvLhQeg==
X-Received: by 2002:ac8:7dc2:0:b0:4af:575c:cc39 with SMTP id d75a77b69052e-4b0aed0ccc6mr26657281cf.1.1754642975732;
        Fri, 08 Aug 2025 01:49:35 -0700 (PDT)
Received: from trex.. (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e58400f5sm122904295e9.2.2025.08.08.01.49.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Aug 2025 01:49:35 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        krzk+dt@kernel.org, konradybcio@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, mchehab@kernel.org, robh@kernel.org,
        andersson@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v9 5/8] media: venus: core: Sort dt_match alphabetically.
Date: Fri,  8 Aug 2025 10:49:20 +0200
Message-Id: <20250808084923.1402617-6-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250808084923.1402617-1-jorge.ramirez@oss.qualcomm.com>
References: <20250808084923.1402617-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Q+XS452a c=1 sm=1 tr=0 ts=6895ba22 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=2OwXVqhp2XgA:10 a=tkZEzfabOtbtaFzRxSIA:9 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: b6I1FNiDL9ZgP6kq1QwKIAbCfknq_JYf
X-Proofpoint-ORIG-GUID: b6I1FNiDL9ZgP6kq1QwKIAbCfknq_JYf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA3MDA2OSBTYWx0ZWRfXz8LYynUHE3I9
 PxIxnpJgeXOUNqb7LJ3ibsL/ESktevE85ue/ZXM20ZzBimUzM3bm1DalM/b8h4dec6Zkt8e8sCg
 4P+CqQGFlpbJHs/6w4ugqxKO7I04EFWLzb1aoBOnL0sBecsnrLLSwY2y8M/v/gWhvF2DTy/HKH4
 dswQBWMke0M8yiMQ2yL0XvKVoXy3DjCrnSEw1fEpbeT3BFo2mcGtsmJi8OKiihMIw1Uo53huX1W
 BlTSRdLhMQ0bc5WcV78oDT1JGX/XbFRudrklltrde4nTx/3j4vCzGS5bhsIfoAQojoXVeUSSeEl
 mW7Wc5RR0tEbrL1ElFdFftHA2GCZe9B0R9iwUrBOUn9Llef4l+bKOoZ5/BifA17CLg5eBjSNcNY
 Q08I17O4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-08_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 suspectscore=0 malwarescore=0 spamscore=0
 impostorscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508070069

From: Jorge Ramirez-Ortiz <jorge@foundries.io>

Correctly sort the array of venus_dt_match entries.

Signed-off-by: Jorge Ramirez-Ortiz <jorge@foundries.io>
---
 drivers/media/platform/qcom/venus/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
index adc38fbc9d79..9604a7eed49d 100644
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


