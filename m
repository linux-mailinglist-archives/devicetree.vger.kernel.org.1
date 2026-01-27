Return-Path: <devicetree+bounces-260096-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKZuJ4wReWmHuwEAu9opvQ
	(envelope-from <devicetree+bounces-260096-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:27:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 742E299C90
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:27:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A6F1B3001FE4
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:27:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0790536CE02;
	Tue, 27 Jan 2026 19:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fxjKLIsl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="S/MT8mUk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 878FF36E476
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769542011; cv=none; b=nlbNl8bDIldGGM+d45L94pPEYb9f8sEwkdF91lahaOO9SKx1ehXx2PsT0eovuG6JAYKMbIqNq4a4cKqAzCRncqnhy9dw2co8BowkoZvzXf/LKPUvm8UPXXYPkvbxkbW6snY5mrDPejFLgkAsCD0apQfkE6I4ZPwvnNrGOIzrz+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769542011; c=relaxed/simple;
	bh=Q56vT0zKys9NsMi5zOMlYu4AZGoliX67NAMSEwOrFOo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EaOgV3lRVcjegdj0UG/9J9L9clG1jKm8wU+OBAIiIC0MtI8rYb++OMnYRWG2j74FnfTyhOcH2rkL5gq1j6YbrSMHesJQRBU34W8QzIR3rDs3wsZgJasq8ZMXMSSF1sJWalAtJcmwOFS9bZnCd6TWMsNr0h3tNYmfg5E8qCRpbts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fxjKLIsl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S/MT8mUk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RJ0gd42436402
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:26:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7efec/OPcsXpTiyc42rnMXxKN6/QBxBrkP/6AKjtVKE=; b=fxjKLIslkKRm1Jpb
	GY3g3lpZ3TAzvcmAgYHRIQmy7TFiQ/JQZBq+tKHryyD7FKXrWlQp8S4vim5J2TfY
	7wGw8hydOBcnzzu6qLb1uYi580Megja5SPCC19cf8hdmv/LHC7yqmVJMBiu4vAwm
	Pk09mvo+w1ZCWuxj54YEzYA/zalTm+zTLRwXMdcQRL4yg1pWcwGEE7MF3ab2YFOe
	4AuQ4fgKZLRFV+EE8+JM23uzgaz6XvuFRGmZNjsRE7O00xUnOd1S/rXLDH1OcUkj
	K1a+cKBhRwEhg9jM9pmuqP1LbtZhJIkN+VDFmC8k4c5MxwscRQVAVrSFvGC+9B2q
	StOlhw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by355r2yj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:26:49 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29f1f69eec6so59101805ad.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:26:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769542009; x=1770146809; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7efec/OPcsXpTiyc42rnMXxKN6/QBxBrkP/6AKjtVKE=;
        b=S/MT8mUk2L0TRTriVA2zFOHPJFQeKWs0CCPei8HdzdTNn0F0YbaytBGYQjvotc3s5c
         GTEH9piEs0vwdUknH2NDZIKmCHwwj/efRDd/PPfsqywCo5lENrqTeXWFWhpzEGgxgB4c
         iBWOAz4283nPchAoUhW9IYWBnF90uPMwnPF9e7plzWJWavW7IWAToYzS+kZtZWh5l01G
         UpdRIOfalrDNWow5JXJlPuZVwZp5TfYTCQYOLrfxwrwYsg7f7sS4PNQiTXoM3IfrMYJh
         bl6Z4AauzRApCBlJjsQfrHTOymFF4uRBa97V8oLt8WtlPGzFtpqLNWslcjUgPojmU80o
         Vv6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769542009; x=1770146809;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7efec/OPcsXpTiyc42rnMXxKN6/QBxBrkP/6AKjtVKE=;
        b=C2dd/ZIZejwE3fj80lSTP+v/Znz5PqN38GTRDAFYBzBkXkcSKG43Lp7jmJFxtbDEru
         glnVgxwaVQNb7duZE72JOIFRtnXANtJvuQDG9fMqC8D28FltgDSFpka7Y0e0rc5RE4Iv
         v8Ffk6j/fhL5M7rLT74oqoJiGzlghNlXK5uFF05/rzQt5FT5lqeelTUyxPVTGZGcIl6M
         QvuTRYexYt4NUsWTXlg55JiIFwnOKyymLvYxkV0il1sdz46PQ1ZBC4pwi+7ygixfZVU3
         jeJFEYEYhJRDumF9v3noLdYjlnnhyLF8URP2KoAeM4vz5M3wKPZI3PLiLERFsNbNfA0t
         bbzg==
X-Forwarded-Encrypted: i=1; AJvYcCVhm3U/G+4D2pi4DaJR5uwfuJ0hgeGIVgxRqdBGz54O05snbt2MOeF36hfopu/vX5K9aF/t8viRE2jH@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1dOjuwB8azG4O10MT/EtcjvzH0xxGIqp34KLmPXeGBGIYjmkz
	VVi68oV5kHBhP3a9UOoK771qaQEZPFXIe4LPgkjzcUYgwEaPDVoB3waHfnGKSQUkUzin//vkuiI
	F2qn5oYcLf74mSNJAhcqKJqtaz7Q1euc5R6aEJsnSslsuw9J4Kg/WcuybjJ7EHzMV
X-Gm-Gg: AZuq6aI495ppPWQHZFGOl0ozE8VGzii/CD5JnQdgbRoRzvblKXqrOikTVxjOkdwx+u4
	dNrGFCwhSO3I2F/hd8E71/q9lG0zQDF0xY+SQbFBDhZEe7jzn23QV6S2YfaocJ8TWhi8eNsGWnq
	d10PHtswQojZNPP+4wmt9i4GOK/GNKd7UccuVeDl5EeGOJT6XMdAicnqs6LCQxzGWunIKQa8LDX
	IXaNGnI/k1nxbM4OMmTOigIzjTi8JfFw1uVIw7cpUY/+rUfbleR5ocE1v1UxoBHkv4aBpZnzJ4E
	kjQzPX5IUS2+1oHpilXAj691XW97Bou0qgxd2b+v4s7jvZlOdE36Tvfw/L6cP0dacfptLHuXZJY
	xyEzqHW2kJGU/k/JMu7cF84GDyO0ASRo9mfdA5ve/
X-Received: by 2002:a17:903:37d0:b0:2a1:2b5f:d16b with SMTP id d9443c01a7336-2a870db7966mr35000805ad.31.1769542009068;
        Tue, 27 Jan 2026 11:26:49 -0800 (PST)
X-Received: by 2002:a17:903:37d0:b0:2a1:2b5f:d16b with SMTP id d9443c01a7336-2a870db7966mr35000585ad.31.1769542008519;
        Tue, 27 Jan 2026 11:26:48 -0800 (PST)
Received: from hu-jkona-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b414fc4sm1322225ad.32.2026.01.27.11.26.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 11:26:48 -0800 (PST)
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 00:56:32 +0530
Subject: [PATCH 1/8] dt-bindings: clock: qcom: Add X1P42100 video clock
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-purwa-videocc-camcc-v1-1-b23de57df5ba@oss.qualcomm.com>
References: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
In-Reply-To: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=YNWSCBGx c=1 sm=1 tr=0 ts=69791179 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=RxPbs3uwKBDMNohP2qgA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: IBTYGW-cqXskscrKLPmfAKWvJqiC1Caj
X-Proofpoint-GUID: IBTYGW-cqXskscrKLPmfAKWvJqiC1Caj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDE1OCBTYWx0ZWRfXyiRscI29FsJf
 CrNxZtU8ZRjGBvD8NxzLSR6HMqC0X7iEDHs6gRUsaQRTlqf0yypYhnGFZKN8MATZQ7G/oC+/oLb
 6wzB0DKkidJd4hQAgvPnBm0SB3VNkgFjL1ICHXi5xIQNJDUH81HO3RZ5uc0JIS/Mv5eJCnNaivV
 USnatMb1irtoGu+WAXh/x5aEGZNcBRSr5i0915g3onJieP0BwdCr8hcMcMEe0NCpbF7l2FrLZcb
 WkuyqwkGYJePBqmCz4ogBYlWmEp5TccuIrkprEUzEbboCSsNxELavsAJ/GBspIn5UN5r0PyNvSI
 I8OwXu3e72v5uTIp4yjQVFoptQ55JwZf9UJPf6kAMf3BXIFXwPRrndMn5/EmhoRPv8u7ARk0GSf
 xtZAlhNwUYRYOIXJ6GaGXhVo3RzGX7QE3EfQYNyPKbTjGrDDXya/A+bOwfKSySK3szcRUf7jNUq
 MMaoGq/FJC7LE1YQoxg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_04,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270158
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260096-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jagadeesh.kona@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 742E299C90
X-Rspamd-Action: no action

X1P42100 video clock controller has most clocks same as SM8650,
but it also has few additional clocks and resets. Add device
tree bindings for the video clock controller on Qualcomm
X1P42100 platform by defining these additional clocks and resets
on top of SM8650.

Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
---
 .../bindings/clock/qcom,sm8450-videocc.yaml         |  2 ++
 include/dt-bindings/clock/qcom,x1p42100-videocc.h   | 21 +++++++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
index e6beebd6a36ee1ce213a816f60df8a76fa5c44d6..e8bf3fcad3fabc4f3b7e8e692c6c634d1aed9605 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
@@ -30,6 +30,7 @@ properties:
       - qcom,sm8650-videocc
       - qcom,sm8750-videocc
       - qcom,x1e80100-videocc
+      - qcom,x1p42100-videocc
 
   clocks:
     items:
@@ -67,6 +68,7 @@ allOf:
               - qcom,sm8450-videocc
               - qcom,sm8550-videocc
               - qcom,sm8750-videocc
+              - qcom,x1p42100-videocc
     then:
       required:
         - required-opps
diff --git a/include/dt-bindings/clock/qcom,x1p42100-videocc.h b/include/dt-bindings/clock/qcom,x1p42100-videocc.h
new file mode 100644
index 0000000000000000000000000000000000000000..eb6c9b7264f8cbced7cfa0001903238ffa168431
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,x1p42100-videocc.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_VIDEO_CC_X1P42100_H
+#define _DT_BINDINGS_CLK_QCOM_VIDEO_CC_X1P42100_H
+
+#include "qcom,sm8650-videocc.h"
+
+/* X1P42100 introduces below new clocks and resets compared to SM8650 */
+
+/* VIDEO_CC clocks */
+#define VIDEO_CC_MVS0_BSE_CLK					17
+#define VIDEO_CC_MVS0_BSE_CLK_SRC				18
+#define VIDEO_CC_MVS0_BSE_DIV4_DIV_CLK_SRC			19
+
+/* VIDEO_CC resets */
+#define VIDEO_CC_MVS0_BSE_BCR					8
+
+#endif

-- 
2.34.1


