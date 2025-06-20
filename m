Return-Path: <devicetree+bounces-187759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C03AE145F
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 08:55:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 052963B9E0B
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 06:55:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92391226CFB;
	Fri, 20 Jun 2025 06:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vkjrk8oZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12ECA22655E
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 06:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750402522; cv=none; b=ESWpRR4xVwkxjCSVX1CV6rr6Hf8QOFXJdPB+JQpmIgbXHQeNM4DTQG0Sk5PEeXdZMOZcnM3Kk6qQ2JYjqSW58kNKvMKwig5t3vCaUNwwo8RiTv9/GAZJiquBaw52ZzSOvuqocOgVcXBag6L8y0UguwWyYDr8QZGcVTZQMfWMAwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750402522; c=relaxed/simple;
	bh=Jtd3nbg/Ox1IZzmZs1FmDMcvo0C/VyluJ+Ezh9idyY8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y0c2ge+02oinNZAKbxdcZitvu+qaFKac5f10UeD4AGc1JGMnm413OKcAF9jX6DB9SUukyYbkCdIlXGyC0Nwi896IHe1gB5VOGbjp9Lo8OIjyZPrNQZ3YAKeQFX67XuS6qhBb8G7l0l49izXIVyp7s7pFAzqp77GqDx9pgwRo1wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vkjrk8oZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55K5B3O6019970
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 06:55:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dE+rpElHU4skARhx/mUuXyFZobFHD8PzZckvgCz0Wyg=; b=Vkjrk8oZKMq2xXIl
	mNC6vNs074IW/Y5LUKAZcX+EeITRGSzjKAi8JHm8JOX+iEh9tCNmfBPZrhWCX2Vl
	dJH13mhNgoewXPBWcWGiRzj7DkbvetfSwZ8RSpJ6OrCoOFE+WqIl9ropVyc6l9m3
	WkA7CPk60wYuVzFOOWF3qCBsYOvlEY6Q8Ydypt4lp+bcSb7mfUhypk5SNl0yxNhb
	ElX6TTu2wXtFGlIgKge8a7eAOoVC73FZzQgE0xIt+h6e/7QOu0gPJxy+Yp3yOhNN
	YBpwCSi4nVG/DYWmN6NJ/STY89laFZp0a7HtTXfy/J7qF7ykkyiVw0mo08txwsmg
	2fp1Ww==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4792caafun-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 06:55:19 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-235e3f93687so23764525ad.2
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 23:55:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750402501; x=1751007301;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dE+rpElHU4skARhx/mUuXyFZobFHD8PzZckvgCz0Wyg=;
        b=bjRij0TigkH0WYzgKwYwAaFMKkVFK7xxTny0b0+jdrGCvi3b773U3oDkbgQrTc0PXB
         1IFEiYxbK6D49V+8gMvGJcCT6G1EVdGlKEXdLyZ61z0bvdNBePtxwIpIA++ALAe/Kvau
         zWZSecJ2DFHzGg55vq3vIYWseVmuKV84iWm3Eyt5q1s6hUEOl5AvTHCIzLkGUkLpzg1I
         IB5umOuqx9kas23HHeht1eZMkinjqJUrli1jvJfG+cPu+/dCiSWde0BFERpVkWyNud0m
         3mhgkhjCsoCV1/D0xZZWJlqiG/8c3lOqSHnvEGqv2Zxj22+m0ujIhsxgBZp6qfp8Ixbx
         5rFQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFvmstKf9RjSEy7ydV+vALUHYb/79k5cFi/0KjAiaRc6xipYdEix1OdI2i0adtBl+JTWI6mKD8c370@vger.kernel.org
X-Gm-Message-State: AOJu0YzTINIViakAKSBU4it096Y6pG0gIm5FPtMSdvwwWNYyRgK5vZlo
	jVE8ZtpM82asCRh7d2LVOYKXlL1GZeB0J66N7zIs7uOHpm96r0TE0yM/gnShqrQBY14dlGE7kHi
	w1nJzyWqUYbTt/TC0lqRoS5rTWD7GrEoONRVPS0MHxlWIPau7h1JRnOqc3nXiJbG2
X-Gm-Gg: ASbGncvz+nIBJS7wzuAg8nASawizO6vaSapAq6fiPjAJe743dCNDjZv2i0v9/HzL9eZ
	+R96XiymGHZnkRks9bQ8vVR854WA+i3LqZrl8xbuYZ5pQqe2hEEktj7dxxYUnLp9MNqUPdyNPSs
	Q1XpmJ2mHTSP076hSa1icECqK0bx0EP5a6QgaP64DbMFZqoe5LqF+7z6cl87fdbducb9HmjRMMM
	Pmtw5tsv7x4jYm1LKq8kVfC4YgFbaENK+dpsEx3IUGrHLXWBfxPBJz6W7/8lIqgpL6c/kvov+3Y
	3FCc2tmORDXV7BzsHRcdcz9oXUa0Nuce
X-Received: by 2002:a17:902:d58d:b0:235:f18f:2911 with SMTP id d9443c01a7336-237d980c6a1mr28550055ad.2.1750402500671;
        Thu, 19 Jun 2025 23:55:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFMDsCNHSiBKMs1kY/KjnuipJmlII9kCnPO7IFtdMURRQwxNK64L+TG4Mrupen8/n1We9Zr/g==
X-Received: by 2002:a17:902:d58d:b0:235:f18f:2911 with SMTP id d9443c01a7336-237d980c6a1mr28549725ad.2.1750402500248;
        Thu, 19 Jun 2025 23:55:00 -0700 (PDT)
Received: from [10.213.111.143] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d8701c0csm10636185ad.223.2025.06.19.23.54.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 23:54:59 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 20 Jun 2025 12:24:28 +0530
Subject: [PATCH v3 1/4] dt-bindings: opp: adreno: Update regex of OPP entry
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250620-x1p-adreno-v3-1-56398c078c15@oss.qualcomm.com>
References: <20250620-x1p-adreno-v3-0-56398c078c15@oss.qualcomm.com>
In-Reply-To: <20250620-x1p-adreno-v3-0-56398c078c15@oss.qualcomm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
        Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750402486; l=1734;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=Jtd3nbg/Ox1IZzmZs1FmDMcvo0C/VyluJ+Ezh9idyY8=;
 b=LjU0vVC1hUPqnFgJGxkwdrUm7NneephzJaIH4RMyAS1VSeQdKXhhIleM945Mr6+vbjpelI5WK
 afkcNVHNlA6Cvp8JSahtciGIKbP5f9LD41HiTH9T3/d5UKd14jd0GvC
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: 2iIZ-dsbatVvHTMppZ_o7LCAOgbf183q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIwMDA1MSBTYWx0ZWRfX/5FGwIzOtIuE
 m3y12L+eJmITigmXiIBM5CM5xFQKIWU3uikf61LvTCaZ9cmZONqd6pver5l7/Pk1N65JyWYlY0r
 SjgcyAtGa8RWjCvM+rTgA1CrowsaWEM366lZ+sU7JFY6m35CPRqZIomsIkf3vV2mXri5a/kRMqn
 1JhqxMxNshTRw7Xw9yqWcIMz8hoBNCTXy4DxnB6VAv0wXxO/SwjkTW0WKV3iGL+OMjyZWtxToae
 iOEnw6LnJRRBo1c6qzgDlL0IPeq8zFfFRHGHcXK84gisy6NK4PEqF4Ca+vATUcOZf/qd2jSPEYV
 Pz+yReEasjbCIBGtCwdwE/L5d2z/kMF8r2QS5yZaLmcVmLrAZwINIZoDW1Jjcl+GWf4KSc735q4
 ZWwoI2Mwim2ZKfvOZ8NZBDAxeSrZHN8n82m/07NU2CdmXTEPPQQVKpLm7oXuX/cPQAPfKToA
X-Proofpoint-ORIG-GUID: 2iIZ-dsbatVvHTMppZ_o7LCAOgbf183q
X-Authority-Analysis: v=2.4 cv=etffzppX c=1 sm=1 tr=0 ts=685505d8 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=gxl3bz0cAAAA:8 a=EUspDBNiAAAA:8
 a=PEQATVZ-5NWm0mRdv2wA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-20_02,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 adultscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 phishscore=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506200051

In some cases, an OPP may have multiple varients to describe the
differences in the resources between SKUs. As an example, we may
want to vote different peak bandwidths in different SKUs for the
same frequency and the OPP node names can have an additional
integer suffix to denote this difference like below:

 opp-666000000-0 {
         opp-hz = /bits/ 64 <666000000>;
         opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
         opp-peak-kBps = <8171875>;
         qcom,opp-acd-level = <0xa82d5ffd>;
         opp-supported-hw = <0xf>;
 };

 /* Only applicable for SKUs which has 666Mhz as Fmax */
 opp-666000000-1 {
         opp-hz = /bits/ 64 <666000000>;
         opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
         opp-peak-kBps = <16500000>;
         qcom,opp-acd-level = <0xa82d5ffd>;
         opp-supported-hw = <0x10>;
 };

Update the regex to allow this usecase.

Tested-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml b/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml
index a27ba7b663d456f964628a91a661b51a684de1be..0bd7d6b69755f5f53a045ba7b5e1d08030d980e6 100644
--- a/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml
+++ b/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml
@@ -23,7 +23,7 @@ properties:
       const: operating-points-v2-adreno
 
 patternProperties:
-  '^opp-[0-9]+$':
+  '^opp(-[0-9]+){1,2}$':
     type: object
     additionalProperties: false
 

-- 
2.48.1


