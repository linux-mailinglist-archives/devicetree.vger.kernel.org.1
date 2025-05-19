Return-Path: <devicetree+bounces-178344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E1695ABB79A
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 10:43:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 10B1F188E0E7
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 08:41:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1500826AAA9;
	Mon, 19 May 2025 08:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O9C0kV7R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EC7F153BD9
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747643669; cv=none; b=MIjdQ9IogxxdVvR3SOrFgYdfuWfV/TLf7xhho4XknB21X8nAxq5hqRS5/ZKV3MD3Eex8tLeSuOQZFw4wQhqB2f9z3SUu9fbqlRShyN0PKg2Rezr6kjmv/k0stQasG2mfV6Dj+P7kbpuEWSO4k4EEW/kpxavTQrrCB65JHOSTImY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747643669; c=relaxed/simple;
	bh=fqBew/FA4DoCqTsvrtKiOphEfEC/JCHBHSYBznSUuYU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sx6TKsidljOs1gs8NNs/GenfXDGdO2qwj4xscmPYrG0RE7cAz06Q5JRyxlGKGMC40G/JEu+BCZvWJmUkBpAnqe+aRQ6FCngN2zSUSwlIBObdF9Y9rI4hSsdU9Kj8+SRUUeVP0EaqDWThh3oFtMwU4KaFAyAU3EsjRYH+xgoMqLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O9C0kV7R; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54IKppuZ005958
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:34:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lyEF3SaC2uCwCA8G8SflI+3/OAOcfqozcvxOAxElUuA=; b=O9C0kV7RE333OnX0
	RUJbHELNfSXsniZBtX7T6FdL9GedxrjzyWhR5i5FwIRn5qo3K4aUSP4Cf7+8ILCu
	XZN4d0E30U4q/QyjrUUwBtbP/q2g//Ptucf4K43synhoGIFIaJXXJvWQ0SsR/0lM
	Wbuq3guAdFf1Bx6Rx47wi0+yGF+2jt3z+C3K0B24Ez8J+OLXPmHHOxDrm6lAsXlB
	Ljo9pE6RYDiq4lRcmWL3RkID+OrBO2XtTqr5q8ILb+7Hs/svOXsJSGkGqXQ1oXOh
	pCoeCNOzQop2l6a0sedSVHGFGs3b0z6OvIS0P6wXjYZ72K3ZLyJM28Jzbuwals/1
	MD/OpQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pju7bmkc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:34:26 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-742a091d290so2688157b3a.3
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 01:34:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747643665; x=1748248465;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lyEF3SaC2uCwCA8G8SflI+3/OAOcfqozcvxOAxElUuA=;
        b=Wikm+IFO6adg9PEtz36bWy3kFETWEsgIfrFjCu3AZl9f/EXOxMmaFUgkk3oxWmjL1R
         uShC8t1bv3/1PIT+bj3JfDdKtTDRpS0Qcvi1zc3+5vlcbSJmrucRz70DLl8bqrvLgaRm
         AmlP1XSh5c2+HJSwylDXjYNnphScNK3iliz8Evc8z/Y/9QOQE0KZlYekvI3V7SaUX77C
         ULL1HmPy5a4BA5Rb4E57EvbXIgccTgooXWa6jRYNgDotR8zGO5UpdHziWF9GT/Joen1l
         i+WL40ueoMApEbZkTVAFuhmSLzuCWJhOHsnmehRMoDgRSPYuwPBmvKEXLhHjJrCYgnzK
         +8yg==
X-Forwarded-Encrypted: i=1; AJvYcCX76YWmiBwlF9OM4xIHm8Hk30CQJwm/RxqI2QpUaIxk1TmmifuWKGxTMJeiiSUoBPFsmE5D3ks50W93@vger.kernel.org
X-Gm-Message-State: AOJu0YyDE2dJgH4mOwEz/Aas/fIjh7Wyfq8BeFxtHziFWybZvaayt6OR
	MlIlebhT57bggSBF8B6kosZIYRnvlzGh4hovzUA+YkFa/pg5zorYJyKwZNjS61VcBTyz5PeE+aB
	7EpqSCsRULblgsv4K6Q00Rb7Alc6D7TwJqBc0RW1HoGRhGxrOEFG3mYrysjyK6tMu
X-Gm-Gg: ASbGncsouCbA4AiPwBpZUNJec2cu2RpRwXbc1W3Tz+pFjv+Wppo4/AlFWSYuYeRt0Wd
	kDZuNl330jYVbxbcH3Fw85Kk76/xMrNxowz3aAILFPcC+uF7+Ohbcj3V6j/Pvu/fuhCV+udbFbm
	5JikEsR1FV8/J7EQJfjtxKetGn4jYOGQDctyMfzwISJ4ZtspPjA0t9pLKW/BYafodqHzNi5xfKj
	YiIF5sugiHBGpkTmjo/zRELrPZDB3/ta+Uia03Kzk/FkIDDmqXmf6xPfLPd0Uya5KEmGJcflvZ0
	yWpUn+1WC7Dxk9DPtW93v7Vh1u2A1/Ie4boPQK+EleUHxo3vf1zG6b7QbEwSLiBRR/hWMK1vKUk
	4I5Qk/bRCVaKYvTIBd8EIcmslPeevq7v5R0h9Ke+lhvY2fFM=
X-Received: by 2002:a05:6a00:2790:b0:737:9b:582a with SMTP id d2e1a72fcca58-742a98de014mr16336810b3a.24.1747643665217;
        Mon, 19 May 2025 01:34:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJQTKw6lhnL36oUfmMNkC7r1OozD6njZlSoHl1rvqW4Fnyq6pePRJv/f81pLWmiXlgsxToig==
X-Received: by 2002:a05:6a00:2790:b0:737:9b:582a with SMTP id d2e1a72fcca58-742a98de014mr16336787b3a.24.1747643664821;
        Mon, 19 May 2025 01:34:24 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b26eaf5a2cesm5705475a12.9.2025.05.19.01.34.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 01:34:24 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Mon, 19 May 2025 14:04:01 +0530
Subject: [PATCH v4 1/5] dt-bindings: sram: qcom,imem: Document IPQ5424
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250519-wdt_reset_reason-v4-1-d59d21275c75@oss.qualcomm.com>
References: <20250519-wdt_reset_reason-v4-0-d59d21275c75@oss.qualcomm.com>
In-Reply-To: <20250519-wdt_reset_reason-v4-0-d59d21275c75@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747643657; l=935;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=fqBew/FA4DoCqTsvrtKiOphEfEC/JCHBHSYBznSUuYU=;
 b=4Tg02kg9nftr++Xi2EeCTYjzRNEjyorie8LjM/S9D3N1KpNzzT2t+nX0iGVl4US5bQP8KHmI/
 wD7HrED7G3bB7A1tEayBLv5Z65ywx40IJjm/NtYMtIZ8KIAhA1KzutY
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Authority-Analysis: v=2.4 cv=XKEwSRhE c=1 sm=1 tr=0 ts=682aed12 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=7sp3e_VSdAcdU5CosJ0A:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: jwPNz_PRnMKCfp55sx7JPNeeqbqvj4Bc
X-Proofpoint-GUID: jwPNz_PRnMKCfp55sx7JPNeeqbqvj4Bc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDA4MSBTYWx0ZWRfX11zvsHYOuEUf
 zCQzHRss8OqmVO37C8fYWpUp5vZdQ5gb8PVXYnKx28JBZju/Gt+zJOrcpuKYJdKu36AG5GFr9TW
 2G/Pc349rQfdQtz5O9O8QGhqmaGpoaBlI2Xc5oYfdax8r3sFUDzKcQDwbSFcHgL8rp2Wj9r3+bh
 PadZIqfh9sgrBQncLI2SUyAnU3ZcxtxQlrQXZv6UdnT5nLUcLvDRFSq9reEo+mKFUojoaIjTNtg
 UnA9+M/8lQtNAoTPRA1oQMhJkMgBU2sdQhStAQfsoNFsft8jG7s9Jz72HHuVmxU0I4a7MkHCIQM
 2IUW4N6ICh/qNpikrdCac5+m+aprtYuOBDUa77H7UIwY+DOlk1Et73NDuhE9omiD+exm26+Led8
 JFEo4gZnomYRyfoRQ1tcEHbgXJy3jnm0g99FRSYVN9z+yMTjO3rb1Xphc+2BfpYaKaro2i5g
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_03,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 spamscore=0 suspectscore=0 malwarescore=0 adultscore=0 mlxscore=0
 mlxlogscore=967 phishscore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505190081

Add compatible for Qualcomm's IPQ5424 IMEM.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v4:
	- No changes
Changes in v3:
	- Picked up the A-b tag
---
 Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
index 2711f90d9664b70fcd1e2f7e2dfd3386ed5c1952..dec1b1ee924cf1386f559eb262ea864f2788c165 100644
--- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
+++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
@@ -18,6 +18,7 @@ properties:
     items:
       - enum:
           - qcom,apq8064-imem
+          - qcom,ipq5424-imem
           - qcom,msm8226-imem
           - qcom,msm8974-imem
           - qcom,msm8976-imem

-- 
2.34.1


