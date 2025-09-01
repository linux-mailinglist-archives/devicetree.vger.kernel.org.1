Return-Path: <devicetree+bounces-211152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1E8B3DB22
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 09:34:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B7F313BEA09
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 07:34:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0C8626D4CA;
	Mon,  1 Sep 2025 07:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PM6mUZH8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 741A2271469
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 07:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756712025; cv=none; b=SSV3zA1U7BC8hIhL/836e5nQHjdw8bJFGkkAaBRFCx2Sa1/4fBI3TVG/G8PLDcFNpvGu7UoEGsNvdPswktJZG6W77nqTzsUg+iuOTwnhZQKFCNV625JvkNKWe4JME6X/r2ZgpHeRH56d0XTotEzlm2eL9NA/zZtDOtTet6SXUIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756712025; c=relaxed/simple;
	bh=ujcFgU9lsNqpiUBtm/dP2KDUpvBIQ3hN5MxiI40kdfo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BwBUAOULEpo4kClShKXn7gLagdGaj+Ceg4KhKXDj+qN4kyvfSlD4jjGg5jzOgO8ss3Df6aCxyrYaZixtejCq7dtDW3a0upeFqbyD/v/YMA+GIzD6G04c7uxg3wX1GlY+so7AODd6aB7+vJMVoLmmlIiThqCk3U3/62hz/Cr/G/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PM6mUZH8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57VMJdfj014543
	for <devicetree@vger.kernel.org>; Mon, 1 Sep 2025 07:33:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mKI1EuqCEf8olXCKajGIiUgp6StjsHv4nQfApAiwJhY=; b=PM6mUZH8KsGfkmLs
	6jV5Jcfk5v+Q3B7+/TEZsBeTYEJtKHxHWSyD9FK+5d3IJkcIL24gnC7hxFcagIYM
	Fu+/4pAztC49sS2xbpv94XV9s0OGzlN10lebhyvBd20xHxYg7iGC7VIHR1f9FKQi
	b4+qKpzAWBT3bXEQltuSo8CHBUjOLdC6LMKdF2I+qtjQJKJtgTmHBKkpFnvRDuB0
	2zTcyT40YlLbenb9htS4d9iBLeofd3SAXmWuGkWqTztxen80b4vu1rThIL12qFRe
	d/kgED761fa55+EwIGVlCzG62Cy0spb/zWCU6QtnWF1kqEczt6ApgAgs4lLfnIEG
	6x/TfA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk8unga-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 07:33:43 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-325ce108e16so6293609a91.1
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 00:33:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756712023; x=1757316823;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mKI1EuqCEf8olXCKajGIiUgp6StjsHv4nQfApAiwJhY=;
        b=ZeH2jICC9aiaYGrU1MUWqkyeTUjwtjEOZfE9XNaJqMit+AytsvJzVNKe1Dtn7NoZNH
         DFHL8y+OBiHH/HHMWfxDlgHYc4dDeOFP8H/gU7dQ/U29sxw3Zsp8n+Z58NqfpCfy13vW
         qlruOw0fj0G3JCz4VvWHfrhaa99H0vjYYPj/ngiBJ3sXyBN8VwdTLEYu2Ap4hHnuzz4m
         b7ckXob/CSAzKUJqCPmNSNvj8t2k7JstNf/jhryBj55gXd4GLca3VOd+uRqSEy6JTB3o
         ZVDLA35/wKPn7hGxxeRQ0bCb6R0xkklK09qHTrAysUouNSi5ayqq4YkWyylnzU220PHX
         FOqg==
X-Forwarded-Encrypted: i=1; AJvYcCWh4idmcHcKXePtTmos6W75D3jtK6Q942kHxd1o8vSSK0EPuOSeUe0xaBLBD0kNWngQnQQ9rcoSfpwF@vger.kernel.org
X-Gm-Message-State: AOJu0YwXapweraXlUg1KRJNFyCny+modgYWqy8unJkk7fLe9aWQr9ea+
	sbZuMJ0cY23XltT+iENlr7E3W52ckSgrf/DYjLAtlBXYaPEAYrkCxR6/lkQ/mUKz4XjUzqKcWVD
	ltQASJNHi7u2c7bKR0hI5gJcdhGYVAWyCT/Q61GZzB0cp8uGan2pqKYSHyyS0dxY9
X-Gm-Gg: ASbGnct7G1j/9kv0LOXlORZJtxqhY18ywolRpSY8XaUTBf6WNmVQUpUwKWMLfoId4L2
	sFDONbuwXSytQOd/XHDXfaqOnL+RNXsd+Z0sCM+bCjUcTUNL3yCBE5hKkShlCtDYnlZnRTAmCOZ
	ciBbdgA2rLZTnDf6tHqBs08wmBHjeXighQfOUDntrg4YxvehxZPUiEcY9TRb1udzuq//8Y38nJT
	ac71KCLjx33Bt5RHWbiaZTw836o1PA+IsLdIQsROcKPnacxQEmkKlHZe1zvGiD39pCG7OFntjRa
	/GjmtDSp19zWkvFbEgAKTdeGEVpqVXd89kerH0hzvkat5xfgz72NCAF+ShOcvy8oa5vHt/0cA8K
	PtQ==
X-Received: by 2002:a17:90b:518f:b0:327:ee13:5763 with SMTP id 98e67ed59e1d1-328156f5089mr8468434a91.32.1756712022602;
        Mon, 01 Sep 2025 00:33:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFMj4YhATKJBdX0k6p9CwKSrzEIy1hQHpVWIKW0FjyMWoSgvZO/K3vtkbwdpJGdfV+932/EHg==
X-Received: by 2002:a17:90b:518f:b0:327:ee13:5763 with SMTP id 98e67ed59e1d1-328156f5089mr8468400a91.32.1756712021819;
        Mon, 01 Sep 2025 00:33:41 -0700 (PDT)
Received: from hu-dikshita-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3276f5a0bf9sm16095554a91.13.2025.09.01.00.33.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 00:33:41 -0700 (PDT)
From: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
Date: Mon, 01 Sep 2025 13:03:29 +0530
Subject: [PATCH 2/2] Documentation: media: update Dikshita Agarwal's email
 address
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250901-update-email-v1-2-8fd49d58c0e5@oss.qualcomm.com>
References: <20250901-update-email-v1-0-8fd49d58c0e5@oss.qualcomm.com>
In-Reply-To: <20250901-update-email-v1-0-8fd49d58c0e5@oss.qualcomm.com>
To: Vikash Garodia <quic_vgarodia@quicinc.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756712010; l=1006;
 i=dikshita.agarwal@oss.qualcomm.com; s=20240917; h=from:subject:message-id;
 bh=ujcFgU9lsNqpiUBtm/dP2KDUpvBIQ3hN5MxiI40kdfo=;
 b=kI412KkTrHeqRBFV25KZpIcRmGUCvuT/ZTUTEmFZCV8daSMJLxwB6vmDd3FbvrHJ9S6bH1lZ0
 rB1zuT0P0/wBZJ4xMuqccMh/JXN25svrieR2FHqYsSpJLHdFBw0y2lo
X-Developer-Key: i=dikshita.agarwal@oss.qualcomm.com; a=ed25519;
 pk=EEvKY6Ar1OI5SWf44FJ1Ebo1KuQEVbbf5UNPO+UHVhM=
X-Proofpoint-GUID: bmz4iNdAHUvoXkmgaO1dVHgJCLnh6FAF
X-Proofpoint-ORIG-GUID: bmz4iNdAHUvoXkmgaO1dVHgJCLnh6FAF
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68b54c57 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=DWy_KaASFEtLuoGz1HEA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfX8sJ+UBI+AErI
 oCmkFGH5+WF0NrO0Eshzr5hBH3Ie+NkpcYYZwsw9qy3CPaHxXNVHf6gwJN7fpT5V6J1fXhUKwsZ
 g1PS5bv5d6npwaaUx622vYhLr7N+w8YzOe1V11YYecdfJY9YD0GeDfIcjhgYHXyjheV/SsvQKws
 0jiuEjfOodwchy6UPt8lOYSz3KyuJnjeVW05Yekbcus6k6hNyAhg+BJoczG8XH/VtvRbH6LXIZZ
 SNDnRgIZwWY2r99E4e7Tnq/NddLuwsIt31643Vyeli9YQ4rAEhtavNbsfk1rUdKLl2F3ZtYNLU7
 ur45BhudJZj+KfPA69pe6p8Q6/bqsZU7vZZ7qnTMlqyIr2PakA2peGaYeTzx17SsJy60+da3CVx
 9W0cpFgV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-01_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1011 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042

Replace quic_dikshita@quicinc.com by dikshita.agarwal@oss.qualcomm.com.

Signed-off-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
index c79bf2101812d83b99704f38b7348a9f728dff44..0d630e620b097d01001fa866b6a4a3c6328e89ca 100644
--- a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
@@ -8,7 +8,7 @@ title: Qualcomm iris video encode and decode accelerators
 
 maintainers:
   - Vikash Garodia <quic_vgarodia@quicinc.com>
-  - Dikshita Agarwal <quic_dikshita@quicinc.com>
+  - Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
 
 description:
   The iris video processing unit is a video encode and decode accelerator

-- 
2.34.1


