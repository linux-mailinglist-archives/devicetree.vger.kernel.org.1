Return-Path: <devicetree+bounces-257516-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INCnJkPYb2n8RwAAu9opvQ
	(envelope-from <devicetree+bounces-257516-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:32:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 049124A75F
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:32:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B905088CF6F
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 16:53:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D50C346794;
	Tue, 20 Jan 2026 16:47:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BwwJ7oNF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="h7fC+1EI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D243469EF
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 16:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768927644; cv=none; b=fLrD6LUbW9BDW8KGLjOSQ6rJmA7jawrU0JmOF/ddUoOIvtjc5Oxp0gFVdSJj0FE6j/k5T7pvYU/d2ZGccKjByZAmQ4qKyMknkHFvhseoub6Qr6bzmVAHH9bIND00wJbiOAAk6Mk1F+NYsTp4pPhCD9Ye1+WRT4SWaxv6PkxsCDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768927644; c=relaxed/simple;
	bh=nt4BCAsHfXEbBoq5VLR0xGk2AL7YFqXXUjWGRrtSoAw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rn36c/sHrIC4dzQbMG3xZ8ur/yMhl9QoRf9+rog9lEoJNjnENYAHl0cICm0CsmVq6NUph3+zfchGQYz6TJi4BTsY1tuDafcUZedUJ0+PT7IimG+1H6gMosFBz8N9rDFMm77IhJ3mqSFGRu+HuLzkzKR4YKOFTYVWSOk2UKhdQR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BwwJ7oNF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h7fC+1EI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KD1R3r388139
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 16:47:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=7p1NpKJXFYaNqkRwfqKle0ekshAkxhMguUa
	TjUz5x3A=; b=BwwJ7oNFIBEiissxf/pZMnj75CTddgnB/NNMp4UDBS3I2F7v+Oj
	AToCkUlqfELF58arkHsk0h8dtxuQjjhUxEWsCj5kQBsnRszynlS65wA2ZooYbBRX
	qmAlw9Ur0km/WsWh7/sdgK6GSPR9vs6ig1OLup+kJqJ2FEug9Mpl6BCP5KLRyzwt
	gWxCEmjdUve+aBhM2ePvAj/Foyeh40LzyzS3VvBY6wdNTzbB4XU1cApu3UEb8tcx
	VMRT8kMYliIesZEyhPX9KmBP4RtVE5eWTQ6HTtVVMoLJgYNRNqmpxnkMj2DMzh2a
	0w5BpwtDBfZcJGik/xie9mFR4blY2o2Pagg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bta7q8rsh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 16:47:19 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6a341ac9fso121614985a.3
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 08:47:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768927638; x=1769532438; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7p1NpKJXFYaNqkRwfqKle0ekshAkxhMguUaTjUz5x3A=;
        b=h7fC+1EInTuIkJjrzE3uI5EWEkbQhnL0qeOS72xwUJzqdO+SWBAxTSQ01N0maqs8rQ
         8P+vmjgpnbSjM8WW1/m0iVt4NOiLzi05CbO4C2n2mWRvJOsuFsgK06HPCGumrB7e7LhU
         8QaWwpn/BhLGD9NLbrFJEYqHA7QK2pQ1qJT9EOtdxQkJARvc2U2YMusDEVtL+UAlDdNp
         ja/yearCPzKAX5ecqR8eB/lyLgqRHC6mc54m1Jfg+xW6X1ck6xYkgk8gQTsqgzkRggHk
         2FxSOeFlqhvcFFnjB6odYXprN7+8i+wUbC6OVrEgr6pgkjLvDSIS+0uztquhYsMHqhsE
         QsaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768927638; x=1769532438;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7p1NpKJXFYaNqkRwfqKle0ekshAkxhMguUaTjUz5x3A=;
        b=fRQ5q6hrBOYqWUV1ZAejQRrkiQOCQrOH+6Lev/TOBSyoEpj5t18sr2jkWRseGQIfVZ
         yOs5hpmxzYRdwe5Rei47X0b0yDdWCuk2Cv78ndbIzMNWylXintCDHKBXwrXTzsjdksW+
         luyrfHXqOQsaSfcGj5ch96ERgzRw5rT5zTi1je9aeM3WbG4IdnIFXj/m61f3mmLWDddc
         4ZcT4A0Ocb4ieI3UqAuzFFgO1hy8W6cmL9p46aVTK1ebe0OFgcOF7ojAK5aMFQrled65
         sEJTuWpuKqEOyzUEiau4NalEZ0pLB9YYcE1Y+f5p+P4j9MQOyffC9tfx34+GbnHYKjOE
         aXww==
X-Forwarded-Encrypted: i=1; AJvYcCWR35cuxXxmebEuYo4UxhJTyiwGXv7RjFyeaRukNfZXRdfIpk1Bqh/e0OWCc20n3rPrbKLdDEp92FIY@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8xhZu2bGc5jqOhl5//R42ecU7ahgV63S8prrC73yPDEYK3MYm
	giq6EcrYVzWkQhU37I10I7xS1r/t027d/Gsmx5mnBUs6KZyay+i0AxHni28+sBPP8vWLBtsUvDD
	m816hSRQbvMDYSbh9NWwsk8MJQQdfxiAVcxAtsQjO3wjgz/IOa+4RczJzqu7YKNVc
X-Gm-Gg: AY/fxX6yHedHJ5+ZT8yUTzNRcBz5a66JKzgLs6GiW/G33R7ZpszkwOu3Wdkuko4QxUe
	tllWaqi5bvBi9P3bUeIMvePpbnacxOL5ftFL1jkG7pNuw9opTnKQsnSUMP3TjE21JN+ZhqMC6i7
	6MfwOBnPnINWy2Rkfs4DSr7l9z288BCQsjZUo+/BvTAIdddluQmDgiHqvhPdG5YHAhxH8P4X65e
	IG3o4Md50M+wVPPb64oxsTn3NeipdizxZqo45MtTDLKxX7oLBbWH+K5wlgQIH59aZjKmYsPfbDh
	demelKsjlo2jYuqCc0iQ2uar0ZP/JG8w3Nw5NRiFYm/VLMTn34iIA/HDpdtoV1AFZzxiDELoCYN
	iJCuuJ8zdi15WgENTXGFSJ5Ek0w==
X-Received: by 2002:a05:620a:46a2:b0:8a2:a5b2:e3bc with SMTP id af79cd13be357-8c6cce508f4mr269245685a.89.1768927638387;
        Tue, 20 Jan 2026 08:47:18 -0800 (PST)
X-Received: by 2002:a05:620a:46a2:b0:8a2:a5b2:e3bc with SMTP id af79cd13be357-8c6cce508f4mr269241885a.89.1768927637907;
        Tue, 20 Jan 2026 08:47:17 -0800 (PST)
Received: from quoll ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4356996cefdsm29511772f8f.24.2026.01.20.08.47.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 08:47:17 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: qcom,ids: Add SoC ID for CQ7790
Date: Tue, 20 Jan 2026 17:47:07 +0100
Message-ID: <20260120164706.501119-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=861; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=nt4BCAsHfXEbBoq5VLR0xGk2AL7YFqXXUjWGRrtSoAw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpb7GKEdjOO4jXSOoREC47OMFB3/qfjp8qE9AFv
 bt6J7DrgViJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaW+xigAKCRDBN2bmhouD
 17CTD/4yTdvbVC0bchuWrHssk+fNU2w6pIbDifSOLXwvpWNM2X1ClJfxQXobQQRJ2vgcavSYNJt
 Q18PeRvWFLCdTZV7TMOBwJc7DihETE1Vw08+0e2/IZlGI+wXkXG0LUsbIbAL+XXiBRIEw0eGWuv
 tNzG8tonMNbWBoEHVIDlpMC/PgILATRnK9Apt8c/0VX7zZSK0dgm6mPW2jMc6cvefz+JmfTydHI
 4pFW5ewCfD5g7kgYMMImm6m1OX7zL41uVtlTLs0DEPS240qemIgT3s0X49vdkzExw8Q/r+pp1qM
 2nQgxJXWLAjwnOQxWSTl2eL6c9IiX1/TfC3LTAvby/KjREsJvnyaf1BxZxkNe59wzMcmPD0H+7J
 ghAYpb2lkyrZ+Jvk0LOmoHhEJ7FhkMQfGJZwYSbexcBo7FfRahMumedZLKKqCI243YoH5MFoU8C
 Own7Zpu7JXOLs4izuSeDEjmgnCfxIgaDM/Ni9KDCBYMXK46OhafUi7yLs4JDZd02RCn7hppXi5a
 IP5y47oAyuDtILRY+C+SsbvIamT4EM9yUugaelDYOyra1XZOQHYpMjR17k0yrhPGU7r6sKRm67x
 YWw77o0F22bMV82ffKaOSOdfaBpKcdvl2qOv4+Q9dFfVqFOay0PaYN/hSuOQ2CT+2NWFtUtDfsZ y1YVFqQaP3AnSsQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: rOqC2Q3AA8zFOs7UJKZny4DCpRp30G5g
X-Proofpoint-ORIG-GUID: rOqC2Q3AA8zFOs7UJKZny4DCpRp30G5g
X-Authority-Analysis: v=2.4 cv=LPBrgZW9 c=1 sm=1 tr=0 ts=696fb197 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Ieg599Pkg-FuY5gSfokA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDE0MCBTYWx0ZWRfX9sgDrJKXb+sg
 QEY5eq2GEOoQ/V8/D0J4foiqDBB5xKxaJ8ULPYkqGvqnWogAy+d4RlTVIc0Lw82hsBkAYr/1q8o
 bp2MFtBnNr8jkw7GhC6cTYGWbohE+pVA3oCq+6wQfbzJN7XgFWM8NLFPn3hEfwDJU9gqT7sq3rZ
 FgSWAiZwuFEJ/O44ORiWW8MIv33L/cGS1+CJf2bKQGAJ5H86gdHcJaOL8wW1dIyJpvintnW/ABr
 7xWqLqCsZ1xsQz9aAbNLTbO+a6dFdrc8bzSxC9Dh3rVy82QazrGU6CVdZw8q0AgAW4tQcxw5CQs
 MddEvKvWnbbhz88w1mftwDq59B9G2+O3mwVVOnT50P08MWtj9qJKxZJTNFsuk7RoSWuiQRrAB+e
 I4U51tEVSEpx9gqnjjz9GVX/kG10QDpGn5peHKTyzFP4VY1beZcbVbFNH2ro9SshPVIHgZFvaVk
 8Z94Rqk0Go1qJrUw5Hw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 bulkscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200140
X-Spamd-Result: default: False [-0.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257516-lists,devicetree=lfdr.de];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 049124A75F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the IDs used by Eliza SoC IoT variant: CQ7790S (without modem)
and CQ7790M, present for example on MTP7790 IoT and evalkit boards.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Changes in v2:
1. Add also CQ7790M, extend commit msg.
---
 include/dt-bindings/arm/qcom,ids.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/arm/qcom,ids.h b/include/dt-bindings/arm/qcom,ids.h
index 8776844e0eeb..febb69b0438f 100644
--- a/include/dt-bindings/arm/qcom,ids.h
+++ b/include/dt-bindings/arm/qcom,ids.h
@@ -294,6 +294,8 @@
 #define QCOM_ID_QCS8275			675
 #define QCOM_ID_QCS9075			676
 #define QCOM_ID_QCS615			680
+#define QCOM_ID_CQ7790M			731
+#define QCOM_ID_CQ7790S			732
 
 /*
  * The board type and revision information, used by Qualcomm bootloaders and
-- 
2.51.0


