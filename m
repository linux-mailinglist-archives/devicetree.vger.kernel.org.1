Return-Path: <devicetree+bounces-241103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5990DC79223
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:08:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 1513F2DD2C
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 13:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33426345743;
	Fri, 21 Nov 2025 13:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nH9OkKtT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LUsePGmo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67FF34403C
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 13:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763730421; cv=none; b=Omi+D6LpU+yT4HCLEOPXAc4WM5EAaNFZ4BPr/zjsReXU5DjlgZHng0OsDv8eKvP99nweURSp6qT5fzjzNEAHCGJtEYPt/sJX7L1DqKzDQ1wAiKuvan3xiM4IJJS7FQfbMwUrjH/ulPM+xxJz4TjkNoJXGNO6EeW2xvrG/jBSOlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763730421; c=relaxed/simple;
	bh=KL7GSGOJDUNSqUzBjyoBSU+RWJ4/0BrKMOwl04Zy3rg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Lo/8Z8ICkpRs83+8i0lMKQ7/LwgpusVTQQvbusndt0Lt463krYCxQY9wUp3ourDLbjA3nMon4qahmSTg1q16f35waLEP3kVmSo0jv0M6l1uNBXmeOwAYJym0cG+gXQJu4FmC0Qncn4UuKC/5ieT98Nj4drMhmC1L9zjgyMKz6XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nH9OkKtT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LUsePGmo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AL9VvLg3048090
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 13:06:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=AeVyRb8Kb/zwGDfK1t+VZa
	+nW/fkJpPVbfbEyo9z6ds=; b=nH9OkKtTtbWXq2sZxMHkPrK9C0uWG5ETW35sgu
	cNKEYfgDOfZY0uj6iAd3PLPsTajF+w0npx06RIh9yPVhABIXDXix7at1CK7GklNu
	xOhrodF7DxtoyRDTM+8L+SBJcVFtgEJcberSkVqyFCNTW9leVNWK9YK6YS7U2UHX
	XhOqyaIEJOK8cPo7erIpyWrqnmuXlZ65i6AngBR0IrXkW0XGi1OpAjpLUTvCQWFF
	D7LrYl/MCOJpio4i9khVRbroNY1gHzrKK3XoMahieO04AtV02uP5yDGe4DBF5SqC
	EyW747Lm2QFcKmzOeHk4oBhZqPZzaP+H4gGEStmKSotgk6Dw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajnhjrkxa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 13:06:58 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7be3d08f863so3539633b3a.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 05:06:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763730417; x=1764335217; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AeVyRb8Kb/zwGDfK1t+VZa+nW/fkJpPVbfbEyo9z6ds=;
        b=LUsePGmo2AxNMcaUWHBKkFTAm69EiZgqIZSpqaYsFF/bbIiYg9wPsEkCRif1UuIGqY
         wSNPW/CYolZTEO1hO1bJTAqUSnEbwtdYbJTf6AkET4O5h9CQJ4dFHCcDtKUoZdaQNTWh
         E/iB3WttV4FZE2R5IwZrZHIg93Ajr04wgAKILhnrzZD+kkQy7j8ADXihSOyurN2yXG4t
         pyjwzRwBrIAGKfYSGB4Gsz1bSMIL9c7O5JctCW5VepAiqaUhmegyffBByg/Ckb1HdSWP
         70Bx8bz/UexNYuP+L9jdpTWR4y13SojDdqpflwjkUJTA1UkteJaG9KGsmCQ9btn6GeDE
         8loQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763730417; x=1764335217;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AeVyRb8Kb/zwGDfK1t+VZa+nW/fkJpPVbfbEyo9z6ds=;
        b=CNHNsUCkzOtZhM9kUnPjhuu6zFEp1pNywmXQffb7lm+HUS74e4TwXja4HLJ8fP5OlO
         1wSGNTmEKONEjo2U/DBqX9J136aBa2tlxTLcZ6WwiD1Rcldy4rrbdO0yOWJL/EGLvXjj
         GcCKtFCgt0UGjH8TIGTVelKIt3QHk3r32GriZzFcjeUw0BbvisqpuzDcpxCo58nHe+AH
         sNlv/Ngv9VZsv6cEs/gIL3mTp2EJEn6eX/eSnQrkMwF4t6av459t5Rs6veAZQ5pa3BK1
         9mNYVg2AodLZQVEkcAjuczNQx/EN8o+GknISOMU/TFm17Cswx1tdrsG3ihg8SM+OPhkP
         ySjQ==
X-Forwarded-Encrypted: i=1; AJvYcCUYfxthuEv654yz3SYmXVTBeeO0QmWSkCSZGZ71L9Dfz/SIl4QTGgcLagU15pe0oQb8nR8DkTK8laR2@vger.kernel.org
X-Gm-Message-State: AOJu0YwwTb9cmrC8p502I3D8kTbkMTvkfRNdU3KtRn1LxtAHqGD74baX
	JT2IiVi8rPCaNdejZjcJaR1DOA85uUBq3RLBeqCkXXaSJVEKq46FL6ke7AH7KIQg2iQNAn3pS/z
	9eYpnsciXzOYGpKzzje6ExZREM3zvQDqCjBA5f3AQZqb/+jgLq6DcXGTgVNtYiOGseJ4scL04
X-Gm-Gg: ASbGncsK7b4d7uq6QKJnWBTuZCnOUzR93cyFeH4z9jL3LBm0542Xncejg2BQQ94eo83
	xEUVdD12SBcKjzHNqnxIPpMkmh4wuPRtIqg6tCev4PIMrAcW0upfnyn1gFM//6vJNPSP8gWA65J
	Jxee5O9a6WSOAL/0cCD66kPObrLrJzE10wO3DP1/D5Qwgj9vhOV60s0IvuFh0rnZC6sbrObY3Y4
	PhbUJHhXjnWs9NZ9TI5UO3kKT4O3kYHFG+kcOPVGoug7p//zNmOr2bVjbXT8Ojnie8gp/U+SCQd
	p3iABYLZthzLr3EkjiskOdfZzYjtIHsm2n0fmKerfYtVEo41bwsiubnL4FKUk8IelL8OH+XvHN6
	Dz6eYeFbbOoYniCFLDm04e18qPlLlK3DAdj9FYg==
X-Received: by 2002:a05:6a00:c84:b0:7b7:5066:7f9 with SMTP id d2e1a72fcca58-7c58c2a73admr2337657b3a.7.1763730417337;
        Fri, 21 Nov 2025 05:06:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF1UV6iqZ+gJ6Epj+lmnZpKTdhWI5do5qLDMR4OD+jlvac8WxOYrWbXLYSeeZ4o1Oi3RqF0WA==
X-Received: by 2002:a05:6a00:c84:b0:7b7:5066:7f9 with SMTP id d2e1a72fcca58-7c58c2a73admr2337619b3a.7.1763730416759;
        Fri, 21 Nov 2025 05:06:56 -0800 (PST)
Received: from hu-kbajaj-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7c3ed471f8dsm6174873b3a.23.2025.11.21.05.06.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 05:06:56 -0800 (PST)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 18:36:40 +0530
Subject: [PATCH] dt-bindings: nvmem: qfprom: Add sm8750 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251121-pakala_qfprom-v1-1-9d16485e540b@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAN9jIGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQyND3YLE7MScxPjCtIKi/FzdpJQko1QTy6TERCMDJaCegqLUtMwKsHn
 RsbW1AK43TT1fAAAA
X-Change-ID: 20251121-pakala_qfprom-bdb2e49baa20
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763730413; l=934;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=KL7GSGOJDUNSqUzBjyoBSU+RWJ4/0BrKMOwl04Zy3rg=;
 b=Pr6a95qDo6nlvQsFL8geR+WNbF5YD1HKzSUNCn5kBXxWw7zRjeraNttQN/sZ5d5UdzCTtqqd8
 aJIXL8qvJU0DSWNiu8X0aJsLzxiE1Je5eCn07yw481Eqj2ZREZzhyK0
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-ORIG-GUID: SQ_-UdtViJuQ0rVc2Zwaqz9Vi7yf9vwN
X-Authority-Analysis: v=2.4 cv=SPlPlevH c=1 sm=1 tr=0 ts=692063f2 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=O_LM-byAGbfoGcItTYYA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDA5NyBTYWx0ZWRfX9kSsyBNkYb+M
 xhjnlAtiz3n6grTU31SyGB/36uvc6e0/pykqf6alzPWY9PBOSOnZQVOKRlRe+t/bigXtRHlb0rc
 vYMJtqBvaWUce6uNTQ6ffIOYcjXvdsoZiutCQFwE60UcT0Bd3IG9OaKFkkK4H0stNh5qTpL67Cj
 rPhPOehIgjwoh/exWjndcnrTL9YK9KkOhDOc8v6OzeMRvy7IvWEk35SFSuM4UY3b5eXBs0KpYFj
 zZf4b9Nj2PTDfiyQdkAT36Z6sJe5PBGxEWZ+tnIYo77Za6akJWL75CJZeohWt6CLQ7wW+7D4/TQ
 hLf2UnpkMKjvACvmRR2llNcUMR+jCI0uFB31nVEoaaLVehVBtF3YCi2tsZ+4uxN53Pyr2i6J7V6
 9cxSVkNajSpZFhCeKFsfNCNb67gujA==
X-Proofpoint-GUID: SQ_-UdtViJuQ0rVc2Zwaqz9Vi7yf9vwN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 spamscore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511210097

Document compatible string for the QFPROM on SM8750 platform.

Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
index 7d1612acca48..839513d4b499 100644
--- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
+++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
@@ -55,6 +55,7 @@ properties:
           - qcom,sm8450-qfprom
           - qcom,sm8550-qfprom
           - qcom,sm8650-qfprom
+          - qcom,sm8750-qfprom
           - qcom,x1e80100-qfprom
       - const: qcom,qfprom
 

---
base-commit: d724c6f85e80a23ed46b7ebc6e38b527c09d64f5
change-id: 20251121-pakala_qfprom-bdb2e49baa20

Best regards,
-- 
Komal Bajaj <komal.bajaj@oss.qualcomm.com>


