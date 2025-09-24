Return-Path: <devicetree+bounces-220987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F52EB9CB0B
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:44:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E7A4D383543
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:44:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07B982C0295;
	Wed, 24 Sep 2025 23:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YhKY6jTw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DACB286418
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758757448; cv=none; b=cOnITYQcaqXtjI9eoJilk7uXkUvVLDBEf2GPyMOEArcW0kO2HMOZ0w0WADsZWVzkiSSeow4mCLWjvKf8CF8TxTtryvw0GbkkxSiSxtuetuKWjd1PRhbAXEi6VQVLXlKJIr8nyMRMQCUSNlHt9LVWaoXXqW2Dhsu9aCj6AhZ2+HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758757448; c=relaxed/simple;
	bh=+PguNXnKz4shlGzI8jizbctu7QM/1nClTAgxolHd+Xk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q4khBp5eqkz5v1kW26nG2wI+bsrsVOHsNLCHlYG5G/FnvkSSgssl1TqIAvtb5vM0AwzSFtGU8rS5DRmbaw058tN8gKRRMF0yjv2j+C5njh/5jW1BbyPCOKeba9QsPOcB0HXFZAL0qVdC4UwIIAsFtPy3FZoMMSwCe5v74gvYwuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YhKY6jTw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCZwxt018678
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:44:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CSmqcMOdgm06/uXCrcq/BO6IeQZcYft2rlSV8w8pItw=; b=YhKY6jTw9TeZlutZ
	iR9yBjg2+XhWYOJ+6ogv8590TAxqEIlxuNKsmyRx0d8JnigOPGQIbntTcvaxPE4D
	OiqGOngCmLKTnrMPUTVYf8Im6IRKmqkfV30Hbh0fEhel/g7LvPbZ30Hg2dJTkZqV
	gQG5Af+BlWc5ZdutP3qujm6ifMd7ortPYmnE9iORa1u0jAuBl7+ZaWkKQqT6U++I
	t/8rTrAu2gce1/FhwgqdJLB/ti++V2+1gMu7ji+02Kz3wbIkCznThLgkrwdqGWCl
	N+zBydCgt61gMsswQ/DP91neaxo+13tyU18eud2x/ypKQW1jKk7FlVqX0rIXmX9p
	6IjLrg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kka1f0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:44:06 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-329dca88b5aso1463112a91.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:44:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758757445; x=1759362245;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CSmqcMOdgm06/uXCrcq/BO6IeQZcYft2rlSV8w8pItw=;
        b=w3DMLmbGHVc2KnvPV4uZV19dTMfe+wtWY4HrGnEjSoVivfEauAjA3YD3Gc1AsF9Qbb
         5pdmKgDF8x2KEN/BTEaY0JIYJLt7Rz1ip38kcbH540FbLEwhhK8LUkyxIAPjJJQB/9Ep
         4b0AgGTnq6pvMMmFCjlZGoLaSzPpBA4P0x+9Un2/joeHE/AFxkx+U+bGA78nsdpdlU/2
         oWT6Ctbcg+cgbvMsv49aenVPjkMMGzCDcyzlJe9y2VhgEnMbExkvANc9QGQvayhaI/RO
         e5xcy0ooJU75zWTRBdIZI3CZou7eRUUIa0HP9/FP2bSkIJIJQL0rpbnwbkbs6/hydkAd
         yMQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJ1GH/9t8kn98/6kW88jyWVc/E6ElxiF0XpxCaA7IYuvznMrtJJuUSCJ2S7csqobJu++kUsw2lk75+@vger.kernel.org
X-Gm-Message-State: AOJu0YwsyKgNTxMJ4vNAJAirre77mmwpvvp1QT1uaNqSLGQ1bgu+BjZp
	zYiLMADBXnlhga/G6YbFtZhK0kX7N/+yP7sw1oJWD+W4xYc2GB3SX7/CUeEaVKsoACUKvof6+DA
	KS5U/ZPAD43Qq7qS6349zlP9MybJTbbfExPY804NehPpXcz+iLvOK8Auhbz7RowMx
X-Gm-Gg: ASbGnctBU5xmoQUY7MgPu+NvijYok8MBAp5px4ZAoG04uRy/xmnR8esD72yjGV/6dHj
	2ef0k1NzDqDBOpFuktNysb6SPgSaope9Kdt9PNQ/uw2nfW/3hDFL38nZNPZAJXpgxmh6bJDHlhm
	O9z4lchMyiY0Ya5bj1i/3jLczhTN4mmC1VNNQm9dgOQ+1eEFth9MJSNnnJN7hnJPD0+/H9nP84E
	Q2Whmct+Epx1afrnpny+SIQlOO3NEYifrj9DVqgxygoBws60FSws75bswMcvPPn3qzg98fhCbbI
	QnQNKHiEx4qE6q4/TTLZpbBg/piERnIF4UCO+aS3YtvQuuVxxcZ8iPcPcEWG3I6rut/vxVdkfnM
	71GYvvg7AU41mlgo=
X-Received: by 2002:a17:90b:3911:b0:32b:7d35:a7e6 with SMTP id 98e67ed59e1d1-33456c715d0mr526449a91.18.1758757444482;
        Wed, 24 Sep 2025 16:44:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHnbw/R/ieUMgffqkQ9oegzvq9+haEnU55ylejKV2ZmhkVF/1e0/sfHGVVDCgw9SQDnekgoCw==
X-Received: by 2002:a17:90b:3911:b0:32b:7d35:a7e6 with SMTP id 98e67ed59e1d1-33456c715d0mr526428a91.18.1758757444026;
        Wed, 24 Sep 2025 16:44:04 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3347453dc35sm206983a91.16.2025.09.24.16.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:44:03 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:43:53 -0700
Subject: [PATCH v2 1/2] dt-bindings: leds: leds-qcom-lpg: Add support for
 PMH0101 PWM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-pmic-peri-v2-1-32316039db2f@oss.qualcomm.com>
References: <20250924-knp-pmic-peri-v2-0-32316039db2f@oss.qualcomm.com>
In-Reply-To: <20250924-knp-pmic-peri-v2-0-32316039db2f@oss.qualcomm.com>
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Fenglin Wu <quic_fenglinw@quicinc.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758757441; l=851;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=QTBiSyI3nJAg71OzCZCRGKakt5nc3BD7jBRfC3qPe0o=;
 b=UbnSeZlbwRc86lY5l6M0xtgXmffAuI7ZX0Bfwmk6rotsBBFqtWTyHuumX2J8C0u0UPn8OdBVN
 eq1+Q8xGDKMBSIM7kbMRSfJcBFUanW8HFHCLLohNvu2m4YTTcdUaouO
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: dH4o7THP4nUFpGoyab5PB6UXyiOIwOJH
X-Proofpoint-ORIG-GUID: dH4o7THP4nUFpGoyab5PB6UXyiOIwOJH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfX9LgO1Pr08Fc4
 YRPLLOjaFSYsqLmVk9wNADCaIyTo52Arb895weBSXkz25Y7JKg4nTsSyQe0rCIR7mUsDBtUJIMu
 Ha9wMdBiREU6mG4lrJQpqn35A/6A3zafiJhO+JmhnzSHsO+mlyPjxgv3ufP8FwKAjn+R27k+4vC
 gHCun0x/PACpKq0PLit7MGhbrafBvfDYkL+F7SmoZskPEuO45uduPyUW98fBgvoqy7AQ0jnRsNa
 JvYJK9hSsPP4Ep4f6bQqrkx+00F6WRxyMl9E5mjT1q9kaQ1UftbSJxi7ctEfH8jWbCSZEJccezi
 VbW60N2cx1yQIeLS+0zaoezcqu5yUEmEYdf/bxUENgqKYkOhhLUdHp754dJRHgIeEGH/jeebCg6
 EIN8y59d
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d48246 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=5jWUu6Y50JxcgPCnrowA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089

From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>

Add support for PMH0101 PWM modules which are compatible with the PM8350c
PWM modules.

Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml b/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml
index 841a0229c472..1278152e8eed 100644
--- a/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml
+++ b/Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml
@@ -38,6 +38,7 @@ properties:
       - items:
           - enum:
               - qcom,pm8550-pwm
+              - qcom,pmh0101-pwm
           - const: qcom,pm8350c-pwm
       - items:
           - enum:

-- 
2.25.1


