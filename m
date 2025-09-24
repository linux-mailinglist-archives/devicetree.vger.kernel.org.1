Return-Path: <devicetree+bounces-220945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CD6B9C91E
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:30:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BB43C177A68
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:29:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA7BF29BD83;
	Wed, 24 Sep 2025 23:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UH82nX02"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2CF298CA6
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756584; cv=none; b=BRoSu1jMqmzeaBe/xIx1eCtuf2RK89d3VgRqcsIBroxWHSZYOcMSm9hSCGJhCiIv+qv0IUHl8rHdhbWq27VBOTtjcluAS/UNHJpVFlqrf/t0CZlRNBdasUDgiv80J8HYTWteJ2vMI+HMh2GzaFW3fQEsj3SX+ORpE7AB7XvhhVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756584; c=relaxed/simple;
	bh=dLpFJCc/EEtwx7OwrUHxHCyDeIPr/4d2ASLJ9yfgGns=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=clX6OMWRwrOEXeQhhnIRwfB34KpEL6pre42s1hlASWl/TcIHNhrirj4jpuxZLZrWnozmaeLWME1QdZcVapgyzOrmQ4dTi/8w080tRAy86ZBhEITihb3bNCXmyPEiAUspx6VMWtMXjxllcDIu1KRDvf0g1+EQ5lWr+6O81GYvPqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UH82nX02; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OD5hpC029706
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=DGk3gce8u7DliPm26Wasvh
	YNfNvU9JbJprdvIKtLVSU=; b=UH82nX02GR51xCYveDIirw/EaiOK5IzZdrkdjC
	RODv7dIPxaqluQ8RIu20ID2yYeJKIBYT0toki2u1/SmiHnz0ingnWAapKyerCnaI
	9CWATVSGal/QCeesOi9dc5MYqn3i64LskrN6l0tW2hiYps0ls2TX6Wg7h9BLxl/o
	strF6ND24+DvmQKa8g5U0pVv22f3xwKG85erJ1G7MOVGreHlAIcxe/z7JxsvNELe
	Gbh5CKgb0Mz3LrPOQU99AcyqgAMwPZsseRqONPipIYgAGTqGUg97a8nLn+bm2rNk
	Ag4M8IBn2ALM5GQDQDKS+ksEpSvwXTNhqcTK08OdiP+Wl2kA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fnwm4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:42 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b54ad69f143so412422a12.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:29:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756581; x=1759361381;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DGk3gce8u7DliPm26WasvhYNfNvU9JbJprdvIKtLVSU=;
        b=hg3LRJSbWjpF/pmU6a4ajoaWT3vJNEwDIWWMAf5h18fyj/nRr7iXQRymBOcWkP57kg
         8nw2Y89z/Pt5m4fR0JRp0rxh/x6lFBKdMwXrafEm/lDjFGLkK3t8trUbYG9XQNmYAtfa
         BqWSmxPn2aIPf7hbXncioywHOvefau8Jj0PjOteSygQzlp619lel044WtZqF4wavTycO
         h66ulZH3bdBSDHY0iqz4z/P9UILqdPfYlypAvb3ae+f+Wgj/RWJm2X8AvHbPEJXjJ+09
         hWxCLReyCioP5bjQ8VTLlFnSEL5tQCK1OAriVex3Cxv5A/VzfEoiM2e2UbHPFLDgkbOm
         pYYg==
X-Forwarded-Encrypted: i=1; AJvYcCUn+7TCiswiTZ9UPRZDUH0Hf0s8T+WThLWbNesUT/0TuLu/a8MowRtCB8KDr6rBFnNjyFOEqCQzQnR+@vger.kernel.org
X-Gm-Message-State: AOJu0Yzbu3iznZTqL4irJauklqZVDXBU/oHF/SqCjI4l+wzFT1iFAuCR
	aY/mkHgJzQqlyV8jL1ChDuww6+KPHhz40vOigrB0x4Kmrv5C9VhGzT8xdUKym8fY7qKhAo346iU
	t+GtQ/VSSY/dSeGLp/aC2rLFrAYm+zIwUk1SHEW+crPlCfUe7uxdmc9wWj/52iJCm
X-Gm-Gg: ASbGncvgDv84UhFlYUWYLCHcZoDhsuw/0wF2xDdgteKtPoFw1TXxdJtzmxts2d8D3ES
	xa0NA70dcJauKYxxghuYAld8/AH32pB+mUTJ7Xx7ivUInHcBo1cOR89J3MwyBrRNydr4wVrghmI
	h9yki3qmOT9Kidw0XyJg1DPENfofKA+IORToXckstUzqVUIEtGt+zQBHirqq3+TNpC/YTetCg9g
	m/r9oFHOHMlLmYbCEEcKh2PwQcnugOTi82Iw4Gq4EqXpzv6K5O5YLlY2cbt9tDr1l24P/bo2SOR
	LrpcVBfo9wSLBe72DTpbSpxegF2WqKBXqTaSxUiTtzAdzZ0udrq2WldyZB0d3uUY5zOPOhJ42yg
	/TlucTUrF5io/f50=
X-Received: by 2002:a05:6a20:2447:b0:246:9192:2781 with SMTP id adf61e73a8af0-2e7d4373aefmr1558904637.47.1758756581570;
        Wed, 24 Sep 2025 16:29:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGpJNtcS7y5GrDtPluqMk7tYcVWSS0EuXlQeW5IDR4Al68QrYkUCbw3Lmm1SotjNNcn8KS12w==
X-Received: by 2002:a05:6a20:2447:b0:246:9192:2781 with SMTP id adf61e73a8af0-2e7d4373aefmr1558891637.47.1758756581203;
        Wed, 24 Sep 2025 16:29:41 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102c0739esm161256b3a.89.2025.09.24.16.29.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:29:40 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:29:37 -0700
Subject: [PATCH] dt-bindings: crypto: qcom,inline-crypto-engine: Document
 the kaanapali ICE
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-ice-v1-1-1adfc2d9e83c@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAOB+1GgC/x3MywqDQAyF4VeRrA3oONXqq0gXc4kaSqeSSBHEd
 3fs8oP/nAOUhElhKA4Q+rHyN2XUZQFhcWkm5JgNpjKPqq87fKcVORA2fWzt01gfbIRcr0IT7/+
 n8ZXtnRJ6cSks9/7jdCOB87wApIT8s3IAAAA=
To: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756580; l=1112;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=M1JXe8NMDOcWKx9zu6HsUxOcABoSUntEFha+tvfKClE=;
 b=wWNsJ4nmhR8+IacSFrzATBl6fH0HEhwfBTUDN7LN2UU38R5MumXxhP3I9+2nUcVRtfAJnTkIT
 4VQPy9VlreMDqEKQRuDoFAZPCyz7QuqTOBvR8XJe81S4wp+amwdgowS
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: 0ISUZVxpcja6NCrft-M2dr0gj7C4GqQ5
X-Proofpoint-GUID: 0ISUZVxpcja6NCrft-M2dr0gj7C4GqQ5
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d47ee6 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=_7QqrcqI5ktG73ApMXIA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX5RZdzdHC7H1I
 LAvOTgqpfFrwXvWvX+0vOWbKlzOwHZh/q5KbiXZGxOZ2O6MiSjzL8cvJdsIFT8OvuukHZ/2Gh1g
 rcPwISPQb7IBky8hHH0JBjqnaR8TVrclsRJp2bIPLmh7hYFcr+AXBgnUR+MB+2liiZEAl/XREzs
 YMI/EI5xdpMoByYHh8DOlLKRJmYM/Rv6riJuGWo1gbNMH57rwgP4il+KRPD2U1NUdgwV5f08PYM
 /8X6UyzuXokuvQ7Nys76oSJJ5fa2tiPU+Vx5g/dw1MRZnP9n534eQazURlRayO1/AgIj3Mrlet6
 2SQXN1SXn0knxfF7b/jA9SnXu3ra+E0ZtJjEEqYsSwu5ELtbfh5ll0L18u6RwW49IUluJXB+bOB
 9LAx41v0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037

From: Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>

Document the Inline Crypto Engine (ICE) on the kaanapali platform.

Signed-off-by: Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
index 08fe6a707a37..c3408dcf5d20 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
@@ -13,6 +13,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,kaanapali-inline-crypto-engine
           - qcom,qcs8300-inline-crypto-engine
           - qcom,sa8775p-inline-crypto-engine
           - qcom,sc7180-inline-crypto-engine

---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250917-knp-ice-39d64824bc4d

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


