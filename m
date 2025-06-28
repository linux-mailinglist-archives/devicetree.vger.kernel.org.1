Return-Path: <devicetree+bounces-190631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B399AEC457
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 05:03:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D8EE716F30E
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 03:03:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 927FF21C19E;
	Sat, 28 Jun 2025 03:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YlOI21Vg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A9421B9C0
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 03:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751079766; cv=none; b=OrQzoAUWgswh9egxo7iq/g4RTby9e1avzBwPJ5Yt5mj2MIyFJMrcK0HgV+Kmn6lx0XOR4JOIlcJ5v8IQIz+WCgW2MiMoLId85HwL27VU2xs633e7ZMNr+QC34SEhPgBX2RKnjeTdvssj2cPg8m1gyvuTvzZPH9gSVyyJ/LBIKj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751079766; c=relaxed/simple;
	bh=BZ/L0vXDMrjRpmDOemaXJyxUSi1dw0SrlQJrslusto0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Febj/pKo4O9KoCt3VmkmcJWj3eLYIuUZJbAj+SvauJ6FjZV4d5K42c0CqB9dDSG37Lkox3o8JFRiQMKpe5T+hjZ0PLK35S/HI/CH/aZnpoNzgiOMz5lOFcsRyWJmPIKzzUYdaAUQgOJtc5WL/g5468jNGBOlEd9F6yLR21unKrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YlOI21Vg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55S0E1nf029320
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 03:02:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WyIF8ET/8reT+adwEBoFNJ3JczrXUqQ34OWiVHWVjBk=; b=YlOI21VgADrGsTFa
	UQceUSCXb09Z5rHxdw057aZg7rpgbAclrkCBzuv0NMhNpAoXi1Jhfs46USFLgKfa
	YuYoCNxuzD/QsWdjp0Er6euYGErF3aXjImPBX6QErHRpIM4qdAgLylXH8Wv4YO79
	Z4NfJEG9PInTTrNXUIrA32KcK09JwLzMa40Vn8y9jVXB6abl81H11jf8+jfFjVBz
	Zl2oIIZYlUCoBxnZTgW+TSz0q6AYtKNabqGa7+0yXedm4RPc2gTvZ2WTFkz0HFlD
	4vnQMpe6ub/6z3gnHG/G2srTyDQW289zuwsXsTk9rDkjQiMh6Ql3B4Kuu+Yp/nLT
	zZ9Fzw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ec26jvn4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 03:02:44 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d097fd7b32so118373285a.2
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 20:02:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751079763; x=1751684563;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WyIF8ET/8reT+adwEBoFNJ3JczrXUqQ34OWiVHWVjBk=;
        b=Ai3x+50AUfK4kuXENDEYhhMwvDGFfr1LbapOxNiWqpMF+YVhR6ZIX2FxUPj6l1wEjk
         SjXG2h8CJ8chl8lHQwSXOrWkrG37i4kySpJE48OlttmDtjeETHXoR76JMsdZCweW0KPE
         IRl0Ii4eh/Wt+LwwrB9dhZSBEAmSt4TbI1WF8T4kzOwX2YqFDLB+tjaqZ3yvRxPXorhe
         GQsvrCB+XBHvEQs9LhnKNb4lWKfjjSjf97Las7aQTS63IcWF/l5oIuqpl5xRCTCFdBbX
         hiamFGv7PGpurlHg52lLaFqKONwZXsfd0x2p+LQ7rhw5RwPVAFdsLZxn12WV0rnTXbsw
         1Chw==
X-Forwarded-Encrypted: i=1; AJvYcCVgJDLw3uMmPFHkQYgYJIaleTNfxX41f3QH73Po8xGKlMj6cBHvWwtyeNrfTK/ZyrXlY+2c+EOpWfzA@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2RBe9BYom6vLMkpCYP0tIC32NJSeyUy5NLXxoU8qD4wi96Ypz
	YP/fw40mSthndTOEnamBi6Ylxx2o87F/Zm8DjKH0qZjH38Rj67XZHyRk9iuPeO+tnYz/tUK5vrL
	opqxE3YUx/OIXdGxAuNM1KlRh4K+8KSpKIUxZOaFewGxX8vKBo9tq3djjMGfnGC7O
X-Gm-Gg: ASbGncs75b7OczexKsWm/6bScvc2mgH/XpRme1wAieNeeCmf/b7wJztrJCSpI2CDXjq
	9Ca+XYh7+2pv7HX131+Lrdl8RJDC7vPbsEJh77SFWre+DFvrKZ8tG6z8ccw7azJYkACdgYozjKJ
	i4SNPozXHCFtY1l3dHb8M1lwYBONcpHBAX6lx/E1dwbde/rCtw+Id6HGwIdh2AKNTL5igS69kLb
	PL6XD/Enf8vWlRnM1GW8d020Ve8AhjUi9AL13SvPHB+umcSezfcNrlsQwZa5VpYdBYbs+QyxQdB
	srdFJcMxx5WE9Fm417aAbU2Sn2R621tlnuRRLzlX0ScwnhAdmlHR7A52dHF8B1VdncrOf/sq2Sj
	raIZwKzCL2uCnSgH9s1HrIx9KLIQKboJMuzs=
X-Received: by 2002:a05:620a:27c6:b0:7d4:3a17:bafd with SMTP id af79cd13be357-7d4439016admr843511385a.6.1751079763179;
        Fri, 27 Jun 2025 20:02:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH1qompkvIDrvMFsstdR6uF3g3AklhHt6dKY3yvNkV1TMIXIkwbGM2mjIkNgstKjIzZU8UGnQ==
X-Received: by 2002:a05:620a:27c6:b0:7d4:3a17:bafd with SMTP id af79cd13be357-7d4439016admr843508285a.6.1751079762704;
        Fri, 27 Jun 2025 20:02:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5550b2cec36sm652162e87.180.2025.06.27.20.02.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 20:02:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 28 Jun 2025 06:02:36 +0300
Subject: [PATCH 2/3] dt-bindings: display/msm/gpu: describe alwayson clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250628-rework-msm-gpu-schema-v1-2-89f818c51b6a@oss.qualcomm.com>
References: <20250628-rework-msm-gpu-schema-v1-0-89f818c51b6a@oss.qualcomm.com>
In-Reply-To: <20250628-rework-msm-gpu-schema-v1-0-89f818c51b6a@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=942;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=BZ/L0vXDMrjRpmDOemaXJyxUSi1dw0SrlQJrslusto0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoX1tMwu76TUVuS3VM0TJPzwdp55YvaGMGur1Jc
 BNDlSOT86+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaF9bTAAKCRCLPIo+Aiko
 1RXkB/sE4FvobjpToVj9wMIBigfVTv34gUAtGw/ot9XYLMvZp1DZYU0PyP+dOJrfdXA2gvEnwCF
 UsqS3CHNrJ1rY4Ejl0oYihYMHWWU4BmL01lbt0HtM7Jb319esifd2QV0LHKpH4RUcgPnagxdcUJ
 qQb4DoqHxgDj8rQF5BsRKjflH6lwLFrtfeBzZ5rn2YKCjO4qR3oC547sOcDii9623oU/ZLqTUcD
 pjDYFw9jqhUG0CB/f/f5bEmgPc1+wbZMVqQ16yB+9o42OKGYFtFOpj9QzVv/3r0zKK9KiRgALfA
 CZCsttBn4GEOoGKTYOiQI9L5CeTOYcqfMJLQZ7WvggixMg44
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI4MDAyMyBTYWx0ZWRfX707fBEDpbICx
 YIyFwSTy6iyAUX+GVxDI6c+rfVPNN1rwxYMyCjRWERMB+vR0ZoxKyBoDcqexdSr8z5jQ76oQulq
 pMT9b46Xhd173LqJm8SKYK84gUv4cnbw/Pfahy7CZeOmSiaWnfMfRTz5vAMOzqB0tP3jU7u6XRz
 TpvPFejX2be/+Jb9fYSVRT8RMSQ1YFHkToZISFccEz+J28CCapOoRlkgWDLyiqfDBXYUcmwyJJt
 FXb4edkRm6mzYjZMMWz7Hk4JZ85FlH4d7ReiQB+YT8mGos9bPIsYzHnN3VTHmC3gV6dJUm+J82y
 ibpcj0btRSOXhaRf6gMo+vvjoBhMiD6bzQwsl9fFxMp9fhCvMZjneZv8+Ob/JzK1/85w2DaPz/7
 SZy8Dv2duvMmkfHDkBCQCJ0Hfu0NFHLgHlsHuRfm1coZshui/appIDJ0KT5WbciAQ5G356v/
X-Authority-Analysis: v=2.4 cv=XPQwSRhE c=1 sm=1 tr=0 ts=685f5b54 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=LRArfFjgsGaU937PEt0A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: bgNmTE_MdyqhhC5eqdNrehMLcVRNdZGd
X-Proofpoint-ORIG-GUID: bgNmTE_MdyqhhC5eqdNrehMLcVRNdZGd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_05,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 clxscore=1015 suspectscore=0 mlxscore=0
 spamscore=0 phishscore=0 malwarescore=0 mlxlogscore=886 bulkscore=0
 priorityscore=1501 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506280023

Adreno A506 and A510 have one extra clock, alwayson. Describe it in the
schema.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/gpu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/gpu.yaml b/Documentation/devicetree/bindings/display/msm/gpu.yaml
index 97254f90926030c4a4f72ae5e963af1845f0dbbd..af43527188cefda0c127c4674d4667203972f583 100644
--- a/Documentation/devicetree/bindings/display/msm/gpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gpu.yaml
@@ -173,6 +173,8 @@ allOf:
                 description: GPU RBBM Timer for Adreno 5xx series
               - const: rbcpr
                 description: GPU RB Core Power Reduction clock
+              - const: alwayson
+                description: GPU AON clock
           minItems: 2
           maxItems: 7
 

-- 
2.39.5


