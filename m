Return-Path: <devicetree+bounces-188600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E724FAE418C
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 15:05:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D9001891519
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 13:05:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FBED24DCF2;
	Mon, 23 Jun 2025 13:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FZJDX5yS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55A324DCE3
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 13:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750683874; cv=none; b=lbWnzeh4ZwgKjo4ol5IyEybINCu9D2MrS8hDDrrHIA1UMgM2xa1DMKqsnxp7cBGE+5NNYPoheMyKK3O6G0DlBbopYJLeRMfLUPJaOESTLXgG3//VZxlbVc989DWokKxPRRx+esrF1zA62A7JJJQE5QGItdCpQcgAxOi592V5xII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750683874; c=relaxed/simple;
	bh=ABdaqENSYXTRrd7yvdzoF7IPntxPkFmQXQe0yMEyiF0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RLfkbmfI7aFdZ3itAqmIZWilMO3pinn+CRq4mnOFPSK6LXTz1hRs8YAxYjji4Vfwse03+eCr3Obj7tTa65g2sRdATj+OSJUqhLKhE4th5kixaBKbTHCsnM0bdp+b9Bd1FoFHg63XaVVAZhLM1v85xxxWWUgRAksj/RQEvkhY2H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FZJDX5yS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N9h6rv015282
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 13:04:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=pHDxcJKGh2U
	UCfNalxcaB+TVZcoQtFA5ClAelCMQb4o=; b=FZJDX5ySkicGCxpZrKDuvXe4MXS
	QCHVE4Yb0QgK+DNL2qmhp9/Bio4nl03xoYkPfasiuo4qZeXaluhwyn4WjP/6WTad
	X2kNoXp+/zJaEWfsdlUcX3suJj6QQFfIDbBNKiR5HQHcf5N703HJBHzVbCwjsbCM
	NZwLFaP3a7yXgk61+9hs3o6geBX6fkJg58DwducQMxDG5wFvXEiWrx3nB1aGiOaf
	yvzCrwnZNfxDdeHRNGmttFvoj/cuBpWkOTRZMg8TMcHobjOG+MsCEECocxvtVi4A
	x3pQVeiXN94B52E044qvMShTVua5GQdBC8U52htO6UG9GVBbexv/gNFo8XA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47esa4j0hm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 13:04:32 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-749332fb726so78491b3a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 06:04:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750683871; x=1751288671;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pHDxcJKGh2UUCfNalxcaB+TVZcoQtFA5ClAelCMQb4o=;
        b=B8rewrpyYQ4Favzbq+iGhP8DQ0aLH9/FHfPA6JamDLayT2suXZ4KCPYkkGio+/iPlU
         9TRBga0NvQ47wBAZa2t580CbbdEcMWOQsmy2Xw56eqhx7ADl+//svB3EI1C9afbVSxr4
         6jx8Dg73E/TYDRFyK0u/fNYrhro4WNjrUwL27okNcPIFr1DfbZo6MXR8ZLRD6iSB6Yka
         6wL/oWQragr0PgdefTtIgFrwgwhf0K9c9XstY3i16q+CloozUzEXmzpOhUcOX32/DF6z
         WmbxU8m0mmHsYpWcvLg+p7lc7I2GoEHL0lvLB1Y+mjYYA6A0NhvSrLtlgshs0G5RSZxT
         oCrw==
X-Forwarded-Encrypted: i=1; AJvYcCWPeXqsHcQq2eMbUnPdJ5KrQpavO6sl3FNoV0aNQvlCOex1J/lcki4eGFRc87aw6LNg8MJzpQ6lMTOk@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+IIYpYos8Q5c7spLxP/bVa5awRA48Fqcg11RhyP3GE9uIUM8g
	Nl/wZ2rNbUfueDLnnKd29uvRBXwwKW75ZIm4xZyDOlhoKOMXlixa6K5DMr1IEC0LW8VOOZRH6Nj
	qdQsJW18wbk/aKgD6gl9etb2iK3Zh1jtoPF76wlEug4OAIp3+9+z6W2Bxr2/7sRTTbuHPxcyo
X-Gm-Gg: ASbGncsxJ1+h8K5CxcZAOpfs7IQsKc9tPfwzCN2+KVfYvZGUPN88xVz45bQJ1kPH/bJ
	lslAmPB0EUQtdCw1alCzLTf4VDTXAneQlIlsZRY7T65zx+VzAiS/04kzNHrMpMMD2TlBEcZUhFu
	yPFVmKtJfZ1f0gRTCKvY1ty4vhfeFH5QuVKeYZ0upvK4ZSSn3kC+5UR0bus9klspTes+taId4g2
	E83YZLUL71tq66wSC0+q0ouG7VYB1jz0EZwNKZfaIC5xxZF8tpZomNAHukioiqNu3PCRt8cfPKm
	4M7yXwHevWZPLjLtyPjEDEjet1o6Q9ZwJ/Uz/ma7EgeoniLcKZs3VQ==
X-Received: by 2002:a05:6a00:b01a:b0:725:f1f2:43eb with SMTP id d2e1a72fcca58-7490d6a1ee6mr4405860b3a.6.1750683870760;
        Mon, 23 Jun 2025 06:04:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGNx2K0JOd8Kc4Cd+tAf/KCwgszWamGgd6+OdAtY7foj+ETBqCEPWjaYrCYrTcfXyaWLXngqg==
X-Received: by 2002:a05:6a00:b01a:b0:725:f1f2:43eb with SMTP id d2e1a72fcca58-7490d6a1ee6mr4405843b3a.6.1750683870305;
        Mon, 23 Jun 2025 06:04:30 -0700 (PDT)
Received: from hu-uchheda-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7490a46b8b2sm8713437b3a.16.2025.06.23.06.04.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 06:04:29 -0700 (PDT)
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com,
        umang.chheda@oss.qualcomm.com
Subject: [PATCH 1/2] dt-bindings: arm: qcom: Add bindings for IQ8 EVK board
Date: Mon, 23 Jun 2025 18:34:19 +0530
Message-Id: <20250623130420.3981916-2-umang.chheda@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250623130420.3981916-1-umang.chheda@oss.qualcomm.com>
References: <20250623130420.3981916-1-umang.chheda@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=eLYTjGp1 c=1 sm=1 tr=0 ts=685950e0 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=_mClcNrwC1fGIE5T0mMA:9
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: diYnzopcseV3h8gtvtGYw3fPtOScT7fP
X-Proofpoint-ORIG-GUID: diYnzopcseV3h8gtvtGYw3fPtOScT7fP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA3OCBTYWx0ZWRfX+64GrYtYtc2F
 N4MIWVdRZm0BADggc+SX8FhNGd+hnjGc6VSZ8FmQzvcPD+6h08Ci7gWTwc7FOfdLQInaoOAyY2V
 fwQQ5guMC9UrlEvXunOYP7s3qSsBDzLE9Zzn3xp0Jwhzi1yd3lusDvfmkEj5WJlMV1MItPVmXxM
 ra7d3vP3Pi7JHn1/TEC+vHLl2Sd43VVldcoMg5Jj8Mmnqc0E/7dPy1FozdT2JcpAJ23i4fhiJ32
 7JnhaZR4x+ngiEtLFWgxxuqu84WUFDu67Tkumii4aZjyAFPaqO92Q+JFgwcJchrfGqbZZI0OlhM
 vtWh+hctjrfBRjVgdJZnjqSnOwEhBJpL39iPuJa2RKEwrUtcgIaP/vwtWV0IOLcGAD/u63Nym8J
 N5IILYi6PBRBkZN80ubA4ym+D0LSmFcmkWqY9UKSnU7AgdtmtRAvu213DagLn+oVQfQOFddK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_03,2025-06-23_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxscore=0 clxscore=1011 mlxlogscore=999
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506230078

QCS8275 is another SoC under IQ8 series of SoCs. Unlike QCS8300
which has safety features, it doesn't have safety monitoring feature
of Safety-Island(SAIL) subsystem, which affects thermal management.

qcs8275-iq-8275-evk board is based on QCS8275 SOC.

Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index b14206d11f8b..19823bc91a3b 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -54,6 +54,7 @@ description: |
         msm8998
         qcs404
         qcs615
+        qcs8275
         qcs8300
         qcs8550
         qcm2290
@@ -935,6 +936,12 @@ properties:
           - const: qcom,qcs404-evb
           - const: qcom,qcs404
 
+      - items:
+          - enum:
+              - qcom,qcs8275-iq-8275-evk
+          - const: qcom,qcs8275
+          - const: qcom,qcs8300
+
       - items:
           - enum:
               - qcom,qcs8300-ride
-- 
2.25.1


