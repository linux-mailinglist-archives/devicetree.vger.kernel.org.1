Return-Path: <devicetree+bounces-240516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A96DAC72484
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 06:51:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8CAFB4E3E70
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 05:51:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBA9A28032D;
	Thu, 20 Nov 2025 05:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ljAmJBls";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cO7T0EBs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86D8C265630
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 05:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763617864; cv=none; b=Gyxe0j9iEIcialRAref/HFyW2ptyVNni3LDV+ztKODe+21sWze3izpy9P0twI8fQjcx2GeJr8Kxr2OcU4ttJhkoQgenDsLFSOVpXd4L3FGYLMh9yN8lVrH8X+LZYINMz4JgJHpGvBwmg8CGtyvcRZtj4ieO2cMTqa4kuNnlWuhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763617864; c=relaxed/simple;
	bh=cH/6HVyw5faqYhs/URGZ8maKnIzB9YLQ81a1X/lMVIQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Q4iG+TmRBRmg7bnju08YknW7LgzfEEIRuWJP4DvAaatraWu4qt20RD5AcHOc+vH6ae7q10j/MbCACeVepToF/t19D2KLvrfS4AAmRw4agx5q3wFQi74gR9CC0lppAm4iVUcm/LnndRM5IJkrmOe/bhTHD960CYEd2DrsgwPMmL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ljAmJBls; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cO7T0EBs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AK56P2F4026300
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 05:51:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Q8VzdseF9n0PuOwuZnVqxJ
	RQ2zb4dZhUtfaorMHS1Qs=; b=ljAmJBls4oOvSDMK9rI2n/rp1KxJXLFsNOFgFi
	DaY6IaArtfSAv4ic8cKhxJlVQa2y5UA2C+Q4Rw8Nv8gr8UuugTDUQXa3+Sp1Q8Hc
	S82I9fLCl4bjDXcrIUpUoLkZg53EXs0R6gsuaOPbjLE78s/jz1ZMbrmI9YCPPfF3
	E/EE8F010lyMD1XpH1rheM7IYRhybmdQKaJY9uSDwLFW7liazRpeBg/y1M3Tjn8Q
	boUB6IAzyinbCLkP8jPuG1hHtS373Q2W61CNtuR5u2i3RP26FHWbsNedEOUs5JP5
	59ra0MX4m2r0RyYf6r9LekC01C8sqFBY++97Mop2wncTvzjA==
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ahvj3g38v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 05:51:01 +0000 (GMT)
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-450adce3ee8so1297013b6e.1
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 21:51:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763617861; x=1764222661; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q8VzdseF9n0PuOwuZnVqxJRQ2zb4dZhUtfaorMHS1Qs=;
        b=cO7T0EBsdQbktW0ewvofsD3sfr7O/gJsxg7D8E7RQRuVHHg4yAa7od3+hz9JHCeAd5
         RYDBRMCIt9tWuPr2wUbPKNOTxxb8AsMnztBkzvNapeo3n+0eIUPhUpDcNTcMfiNkKVu5
         9+WU9jayJCx+22eRzAXW2uYjzhYi2scT6XV5ZCPGyBwb5CcC3OQWNTMGo8/yK6bzmbXR
         AU1bXeOH8vs10J//7VtiR8aGCIDCr00UZ9GomocMBj7Unj+J8vHq6qe9p6+AFutJRYR7
         re/RlgTAH19Zv8BRPUSSyUrVOufA1NWyemZnSUpoC3XyjWA5iDsuaqOO+lg32UzwWMRC
         q2Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763617861; x=1764222661;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q8VzdseF9n0PuOwuZnVqxJRQ2zb4dZhUtfaorMHS1Qs=;
        b=O/0sIwW5ba+3MUnk/85U9XFQEAzvrVkCpXNPJ0pQ/99Zwg4suggt9O+fu773lW0kJw
         +I9vm3zmoBmMvRdIl+5k0NSPzaSFr6kmrgpRY6wqX1tKQD4SQKoPq/E32NvRGl+V4sfo
         srqK0dcMXZU/6iaC0j3oGT+h0WntBzpo9csnXdYmY9CnYGW5WgO5XQnlhEbeeATn7lBX
         Z7InOLtMg8PAgElrzv9w/d283onoJjhiHxNHQwVrguAnYqgt85FvTfQiTRrJFtbNOQHE
         0lsFuj7Ssm9wfvT5XD8X2yWW109w1XZswiDLwtQaZocHZw620hUPXmxY8R0CJ8P2kudq
         1BkA==
X-Forwarded-Encrypted: i=1; AJvYcCWCpWyp3dTeBxFW3C5dO09IWcXMu7SiS7f0nnRoBZ2QqdtqN2aUWoOyeKok7xegXLXcoN85KA6qzSei@vger.kernel.org
X-Gm-Message-State: AOJu0YxMZxB3mUlN/JTxCfHXtwPniWShXgd5Ot2MNk9KpTN+IguA+hPq
	JDE1fGkrPWq6JPI2fdavj+11+QQXwUgK9VLn+Bj5tB4A6IxghzccMx2QxovkAuZ/fLw3UFQ2Vsy
	9YZ7RiI7gSl89WCngND3PLunWz65DzyO0XliAhvhdMqzcUF1B+WKqBMHvIGl1lz3nN+ynks86sC
	E=
X-Gm-Gg: ASbGncs7B3Hrq7177o81rEvoKfQWfG8SiDDe80Gf7utnhmmvxpX0uLwPK+2jsIIsQBx
	gfQBIVcJVXLY6fX78oBwBw06XdzvNW3Mz+/J9yiuD415wSBhFqmAx8TGn6emOiK9IgK4GZAu/9b
	LTNNr5qbwnLsSkFCD42DOFOSGKYr2F2GBDnllWwFZv3berG5tSBRrh1b8dokY7hP1jpKY8cZO0d
	sVF9LEs7+OTELNCZs1grhhyEUuU1/wRYMzTffnDOnmg3vNKohquplrkRwEi6Y9F1PZ3KpBU1sJG
	gzl6rAN4/mOzFicRrcf9CBI0+/QC7i+GP341IUoQWhEsRj9x0ET5wOHTy1euOThuy5auQcNXNSR
	0LRdIs6JeuBuiDj+4qIohDsLzykGOvwEfVfW29me9ki4qE6yczREGt5mFr/oR
X-Received: by 2002:a05:6808:c1ad:b0:450:cfd3:cfa5 with SMTP id 5614622812f47-451002ad5damr846897b6e.60.1763617860748;
        Wed, 19 Nov 2025 21:51:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH8cYxXDvANBxRWG7cC+asvapu1Ek4aK5UO47Vec6kfhgiEi8wsvj1XUxg997QgOfiPWh9Nog==
X-Received: by 2002:a05:6808:c1ad:b0:450:cfd3:cfa5 with SMTP id 5614622812f47-451002ad5damr846888b6e.60.1763617860372;
        Wed, 19 Nov 2025 21:51:00 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-450fff8c999sm453437b6e.10.2025.11.19.21.50.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 21:50:59 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 19 Nov 2025 21:50:53 -0800
Subject: [PATCH] dt-bindings: arm: cpus: Add Qualcomm Oryon compatibles
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251119-oryon-binding-v1-1-f79a101b0391@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAD2sHmkC/x3MQQ6CQAxA0auQrm1CARn1KobFFCp00zGdxGgId
 7e6fIv/d6jiKhVuzQ4uL61aLECnBuYt2yqoSxi6tjsT0QWLf4ohqy1qKw7XNPaJuR2HBNE8XR7
 6/v/uU5hzFWTPNm+/SxwIjuMLSZ/Xy3YAAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763617859; l=1018;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=cH/6HVyw5faqYhs/URGZ8maKnIzB9YLQ81a1X/lMVIQ=;
 b=aip9TsdyYzncvp1c+XyEYw8iSSGaSV0BN1NBjXhoqr8AaIJVZPQVWD6geLhEN+cjBjRFe5Rlm
 biUaiBu245TBOEgHTke0c68Sle74nI0C9BuIDdIyW1/eGtwFQCAtiQv
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=J8WnLQnS c=1 sm=1 tr=0 ts=691eac45 cx=c_pps
 a=WJcna6AvsNCxL/DJwPP1KA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=vvxwgHUSC13CszblENcA:9
 a=QEXdDO2ut3YA:10 a=_Y9Zt4tPzoBS9L09Snn2:22
X-Proofpoint-GUID: JP-d585MEdCURbFDhEgRYWHMqcs1US69
X-Proofpoint-ORIG-GUID: JP-d585MEdCURbFDhEgRYWHMqcs1US69
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDAzMiBTYWx0ZWRfX9MjHKa6MdpSi
 FvURIp15XLnGNcfXuGSLas1IJv75RYA2ersUU6aJyLamqCL4LpkIug0VNvpmhJPm7e8OkBVHlr/
 uM/0JldGu7OFpoFPSxSYDGCMcd8VfJ6S2FfxS/+hEkmLPnQs9z5C8dHmx7RDmV/jrqvuJwu6LqX
 YkJ/nlY0GPpwExDI0lLKKU+5I0T8yQcp7N2xxnHsnmEzYYvPUwg8gcI80shIwzCsjueZP+JcZI0
 N7l5hOx78nbl2SLh+LXJt4Ftjv49wLSZ/L/1SpGBqbCFBtEDMvCcGh77uu9FYyEvk+7SRlPbwbq
 UoDCkZ1rwudM/7qozL79+2GjFtLorlOpgMzGbaIh7nPgVz+42/tcCzvmAQf3r+9CU1/R0Yj0AwK
 zTV/4Q2LB/gFHklIAy6F9p/+FMtEnA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_02,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 impostorscore=0
 malwarescore=0 lowpriorityscore=0 adultscore=0 spamscore=0 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511200032

Previous "qcom,oryon" is too generic, add specific cpu bindings:
qcom,oryon-gen1 for X1E80100, qcom,oryon-gen2 for SM8750, qcom,oryon-gen3
for Kaanapali.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/cpus.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index 736b7ab1bd0a..cc7e8fd4d652 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -218,6 +218,9 @@ properties:
       - qcom,kryo685
       - qcom,kryo780
       - qcom,oryon
+      - qcom,oryon-gen1
+      - qcom,oryon-gen2
+      - qcom,oryon-gen3
       - qcom,scorpion
       - samsung,mongoose-m2
       - samsung,mongoose-m3

---
base-commit: 2666975a8905776d306bee01c5d98a0395bda1c9
change-id: 20251118-oryon-binding-497637bb0647

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


