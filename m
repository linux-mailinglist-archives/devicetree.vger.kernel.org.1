Return-Path: <devicetree+bounces-199357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D5DB1066D
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 11:38:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 944A418969DA
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 09:35:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06C322BE650;
	Thu, 24 Jul 2025 09:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lI7Ro7Hd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACD428541C
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 09:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753349366; cv=none; b=hpTsoJNresw2r9aQhhbtNbMKWZo1IkAE6wEuMSnDgUpQ+YYIZSdvaNAOMLOhoc453uIPxMNtb724m8i9pu/n9bo0aWlSYuubY7SNKMZkJowZlMAoT1/QmTBtWkfoqSVF0lgBhp5VigUnpcdxBRoCtsslMHUi8eK8O4ldczP19Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753349366; c=relaxed/simple;
	bh=PPHlJY0DBTcDAyhfFMcfSfIO7XmnVHjq+LatoXOHmkA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=utdUbsa6uBp4yeeeE/GsU4CaEyyki/SoGXFH6lFCcrCyOp2JTVCD3x4nKjIT2LTCxF2rfctNTzU6g9oZGOXUI+T75xXI0uvQUR9f2TzQLB/3l2e/5grRMYyTVucMi2R064PDA3lWH3lxHyTdJHBPCKqlQlUFTKUae4g8738ykrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lI7Ro7Hd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56NMXHqN028548
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 09:29:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	moYVE4cTWaiaAnOXhb632zZFM1UL32qTF0JTX3SvtkI=; b=lI7Ro7HdcPEwvycZ
	i9oVlLDxas5mhM78zMZFs7DZk1h9GerNubNEHnL+M4ilmDOs5GXKW9HfqFSQ27V1
	p4o8Se822Q+o4u7VbrQShnhpqJYGGm/kWg87lOe5J2FrguL2U3sDfaC1xJBexAIa
	URbHPGL/55JGF0M253trHrFE5X73PwQTe3GRkppDs6+QvO8D7IUYYkjBBNbE+PMZ
	rI5bnVHniCnrioGFgGLVM4FDVCBSGBoZOtHrkHPCCmJ8APzIbfUOt9Nnh2dqF+h3
	lAY3/Pmce7kg9DKPUM0ynqj3WDRHC237tTfKzWUyHDbHGf/NMO2Haf6sfBRbXxLm
	93k9hQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4826t1fh61-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 09:29:23 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-235e1d70d67so8229735ad.0
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 02:29:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753349363; x=1753954163;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=moYVE4cTWaiaAnOXhb632zZFM1UL32qTF0JTX3SvtkI=;
        b=tIoLh4s/E5NFppDgglsEoz4b55EmBRECJX1V4XARfioJ3bAteyjQrkfSlVkCzmzdTq
         qGAsmNOfk8E7KV6uGOzR67oBgTiC7yO0/D1PWkEgqmpK9yL/iy4/eWGYqChi1aCcrmxA
         G5o7/BFy68X+vUEx0iHPRHBmpo+zMNOJnroZIw7ZzEH9JnVFVKq6yyIZ8DWi5dwiCMXg
         FXHGiNHP30UtfDw7fIg8awSBTwjUEq2I+aKAmO/JEZ1fC9nqUGjNDqmyvejg3UCQlU7g
         W8zbJUXUMYA3nd2pDxTtom/azhsRZxTVuyPDasyGgNyHcQabtwonaZLr9sp3rp2phTtU
         OxIg==
X-Forwarded-Encrypted: i=1; AJvYcCUb3yKdE8jmDG+nzjCNzgfVOOo4uX4ZcmtGmW5d5X4kklc5N47ryxFUhj33KwHzAYrFetWqKc+U3gGn@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5why/Fpr+FEslO3LaFzbjih6lwe98B41QenBX5eY3B+MbQcKj
	4ZP4IS6Grudo4oC3zAMg3snFOI7OC8h75vTotgh29Mbs6agSIaFnEUimGSsv+jqs0KjXLYNUo/F
	Jvn9FyJh/G1rktpcXwuT4oenrlRr1s8q9TCjKmP1F9Bs+tvbDgEQWpdMFeIiVSakj
X-Gm-Gg: ASbGncvAO0rb4QyaaK2LlFvTId63RZQmUNkiyQcuunGt0IUXsAFa8AVRKEzFY4LFv2e
	g808vplSLF+vrSR+z/1HSU3EEy12c7pAQE9KKsguLDNB7DiN3WBYK6LbrGxEDpKZq2IAfspYvhm
	j15/JrmM/ntf3/TT6f/aCUBOQH0MfZ3VeJUkhuzfCuUddS346C4nGCJfYNl9RGj7fCySsFlPWJO
	U2G+yWCtlBoSTlAAVFLsm54zplq85H+gSQ5qYe+dhzt7XbEFA7xmPi+jMMr4ZfvXgoZ9wdDS7Om
	LZpAqK9xYficKJ1TL0ClNJuWpjkKHmsT2bOvTwiahnZKDcY4cnCL1AL13ZYhg72K
X-Received: by 2002:a17:903:198b:b0:235:e942:cb9e with SMTP id d9443c01a7336-23f9813ac30mr82925625ad.9.1753349362725;
        Thu, 24 Jul 2025 02:29:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHzUDlAxoq2iIvpAwTAbSpSv3iI8qSUmVJX5tT0OXMmNLVHMLk0kaGDM/qQeIZUKeuV+/ACeQ==
X-Received: by 2002:a17:903:198b:b0:235:e942:cb9e with SMTP id d9443c01a7336-23f9813ac30mr82925285ad.9.1753349362286;
        Thu, 24 Jul 2025 02:29:22 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fa475f8a0sm11276505ad.24.2025.07.24.02.29.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 02:29:22 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Thu, 24 Jul 2025 14:59:09 +0530
Subject: [PATCH v2 1/7] dt-bindings: clock: qcom-rpmhcc: Add support for
 Glymur SoCs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250724-glymur_clock_controllers-v2-1-ab95c07002b4@oss.qualcomm.com>
References: <20250724-glymur_clock_controllers-v2-0-ab95c07002b4@oss.qualcomm.com>
In-Reply-To: <20250724-glymur_clock_controllers-v2-0-ab95c07002b4@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-GUID: t8Tec5fl16ucFTvHBzH3GdE2cWQm4e-r
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDA2OCBTYWx0ZWRfX8FnI2xENXoqg
 yFA8Lr+9Xvebc+F5j6M2FKNOnYt5uVr0g7ArnNtuPKWbP3ZFo5BkiJHQIt7RS5AXKWaqnHraY1y
 tKUooCtNKaUPV8wKeSkwYriKND5Dt2uWOM47Yct7sAnXJSpG9q+8EehA7zXmZ/dLCoIeT45UMmu
 1BZyuGJuk1EBY4ksSPdPUs5GGRiD/qm3Mm6kW+58LySNfV1OTvQ1Xjpg3A5LGS7C1Hjxkl4SgAA
 /JXA/ZS0lVrH5I0p3x7T7vtCNCYCPQHovwdyXEOxwfT2wXJf3/IDPfdRESEGR7nm9dsqHB11lDC
 iXA9d55aU4Yejo5NG2UHCzAOkWgYV9kUSJ38ecYA8Rn0PfMonpboe9LGHCrhF61iew4HGJ9vcs/
 Q2CxTMQX0g5EHQRtbUOjmPIf03wSKaSLl6Y2aoPQfrXKNUu/YBM60FC/pO0H3dt75L8OK/QG
X-Authority-Analysis: v=2.4 cv=E8/Npbdl c=1 sm=1 tr=0 ts=6881fcf4 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=ZmWPdgOBrplkPgKrADIA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: t8Tec5fl16ucFTvHBzH3GdE2cWQm4e-r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_01,2025-07-23_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015 phishscore=0
 mlxlogscore=999 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507240068

Add RPMHCC clock documentation for Glymur SoCs to ensure proper clock
configuration.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
index a4414ba0b287b23e69a913d10befa5d7368ff08b..78fa0572668578c17474e84250fed18b48b93b68 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
@@ -17,6 +17,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,glymur-rpmh-clk
       - qcom,milos-rpmh-clk
       - qcom,qcs615-rpmh-clk
       - qcom,qdu1000-rpmh-clk

-- 
2.34.1


