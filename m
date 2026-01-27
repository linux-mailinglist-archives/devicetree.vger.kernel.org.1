Return-Path: <devicetree+bounces-259970-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BcXI2fUeGmNtQEAu9opvQ
	(envelope-from <devicetree+bounces-259970-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:06:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E58DB964D1
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:06:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7CCD53082CCA
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:04:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6452635D5F5;
	Tue, 27 Jan 2026 15:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PKPp7rAM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VO2dfjXB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C985235CB9B
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769526236; cv=none; b=QPYN9hb5zIAi5xhv3V3Snj0sXnUOnUVnm9bGK7PENesQ2qHXRiTy4sn/CO/d0OF5wXX0xvTrqYpYxAx4ifPj/BMAmEferJ/AxHqbJJrERHxRW21OJEBmi6dls7eHt3l5YDI8PMwX5Nk3hzRvinQqENNx7csdiIayLHIjW62ARJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769526236; c=relaxed/simple;
	bh=j5wglMmNeIkAtfucmojF7uDjxPcw0Gowp8q8oa64dyU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HnpVtDdmjZR/BkmTq2zRVrCe2o8J1QwUgJLwhwlovxp692jAzdUCL3duNYBNP8FXyPlZVr6iAIL1BOgwCLtJO4j0S9dV8SXpo3efSYnXXQRFdwFXDVz+DyUAF5h3OYvECJCDKuA9T3su92vLWfEdnWHbD7xMa39iureeDYlzRk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PKPp7rAM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VO2dfjXB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RA4Plq171390
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:03:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Kk5M+PV7SPC2sAWBFx0xBMrzqlSIy4AfeM63MG1rXIg=; b=PKPp7rAM32fBgfTS
	k2Zc9KfgEIpDcfKemFq0GfVkhJT+LZS4IDb8GqwXj3kDagbJr3+As6FIIYt2O/IJ
	eImnZmw47w6NmsvH8xWGn9aFeyHQaGWuOaKug1lfOeKqbddpp1XYtEj4R28IvEzX
	MKkUNsdDkLGCBhph7NIus9NuSTmk1CMJy6H7u4qFbByQVD5Hb9JPjyrVFubJLKQx
	ydsy08/0owuA8Byva0SwwSkbxj31r/3oW6doPPitRtIgEiM3arV6UenBmrJkUjxL
	EsONVzBQ1SZ961OaTB30H4lAx5wtHuUTprjFJ6uQ+8+enADzPDE/4w8l/fpBA2Cc
	JNUL8g==
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxf3a38bw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:03:52 +0000 (GMT)
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-45c868d05ddso4068064b6e.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:03:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769526232; x=1770131032; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Kk5M+PV7SPC2sAWBFx0xBMrzqlSIy4AfeM63MG1rXIg=;
        b=VO2dfjXBH+mVpOqfKVeVRHifRMnDtdmWMmZS9SRFPV3mfV56eQJPCq/O8elhtxwoZO
         5YIrdqLb5WlmUPM+L5X10nc4wdkE22LvMOb4XW+8cyUwqAIqcKqDnsz3paqZYHLQi3Vi
         S48duaYzDtb5yqUtc69d/9Fjvp8nqSE8WEQX86eMrmFw5rexw+oW0w5g3Ew+vEjbWeEu
         HngQdjvFgwxZN/oDvifDAVjSPqHxHeOTUzioAPsttdKap+H2uiEgkjXNh9pOcrvTWbw6
         SEZAjeNqFm4uGGBpi1xEj0mV1R6jjQRisc/r00vskVLuNoqAXzBQ3iLkjkZIOMl7qD3D
         tu4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769526232; x=1770131032;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Kk5M+PV7SPC2sAWBFx0xBMrzqlSIy4AfeM63MG1rXIg=;
        b=WqgymaJkx49RL76oJhvvwVzzDZ7Nr8n+CiCeJMF0co7zRgTgS8kV0xOds9myWI06bp
         GM41cMcyL2NhhbcfXa0VaL6nvd4zoMQ3nKZP3x50iV4Fx7PvkpEVdNaGCFgmZVkFM4up
         OAfMsi32Szq2OWMSdedrYM4XOWzp+B5clkJCyIn6lJ2/ygDkXtCtkedLO76CiIayX0lL
         w6+fpdXGsmMUWvWRzZP9Z/hS8zZsz2bfH3ZLURNkJKHOpgOjtpQKyqQEdcZucNs6G3YB
         ++/O1p71kKQ/QwlKUGpsBnQ7oYuZjDgXzVN9UBz3r4DFZEEc4vA6RvJjoY2qMYXQXSh/
         QbIQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7NcxCXuYsKS6SdG7QFTtIVU0gT9Sj1HpV+ZPDq9kfIFVtN/CXs7YIZBulLEKjPGTnxn7s8wVWoe/K@vger.kernel.org
X-Gm-Message-State: AOJu0Yw62zURhoO8sb9MLQoNdpvWx8ASynoUrz3/glfMLJZNyBxt/8Lu
	UzFjOWUuqhTXKdwgqbI33n0b51kSWfpBHox7biv6eAMAv93BojE8nPu4ztLDT6lwWIjzGE90lQU
	0hJ6LTXSOg0Zjr8/XLRcJDO1e8padtBPEbreUCzOnxGymsJh1T2vr/Yjbyilb42Ea
X-Gm-Gg: AZuq6aJ1bOsVfh6nzCrfA2N4BPRG6nte0xViql8bTHLOfLDkdN3sXZaTZ7njMTLO2mF
	AMUFSOcmtqxxm+IR8NW2DsP6rTBhhmZ2eaRAGBy2ta/Y98ZTESKdBp/XXE1crRf0HzUEvTk2JZ5
	FyAf6oH1Vzyrv5xCpIkXdTc3Nce1G6++9NHEpcQnO9nhaR4RM5/7sXBAJLnCmv4/XNKyiKAFm1X
	WenXIeOSXxEJYYYQdGLya/m8tfm5RT8iXn06GJPqtKFI6Fo5lVGYQBmIGEmjmk2dLUkIE+0efKo
	HS885ZIydInj/FzJCwNA2SPuRGqZvDkSOJXNb0fdi7/2CRq8loLSr0AD1BYo5xa/PFDtOg7OKR9
	EtsJAoEwmoDQutcYMTQ==
X-Received: by 2002:a05:6808:2218:b0:43d:24b7:2b93 with SMTP id 5614622812f47-45efc5a781emr1142023b6e.17.1769526231798;
        Tue, 27 Jan 2026 07:03:51 -0800 (PST)
X-Received: by 2002:a05:6808:2218:b0:43d:24b7:2b93 with SMTP id 5614622812f47-45efc5a781emr1141976b6e.17.1769526231202;
        Tue, 27 Jan 2026 07:03:51 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c02cd8sm36895097f8f.8.2026.01.27.07.03.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 07:03:50 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 17:03:20 +0200
Subject: [PATCH v2 2/6] dt-bindings: clock: qcom: Document the Eliza TCSR
 Clock Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260127-eliza-clocks-v2-2-ccee9438b5c8@oss.qualcomm.com>
References: <20260127-eliza-clocks-v2-0-ccee9438b5c8@oss.qualcomm.com>
In-Reply-To: <20260127-eliza-clocks-v2-0-ccee9438b5c8@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1861;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=7nkLWD3sT+wCjfvITR1Dc6nUzmQDoUNZNGDCrbq+iOM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpeNPMcf8kDvAJqip5KoGOy1YDZZRSm9BuEzyPe
 pOffyeHW3iJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaXjTzAAKCRAbX0TJAJUV
 Vm45EADHGBw3mHrO5RLdX7me+ltge4CesE/gooYda2NhfWGT2FgvCidHQmE80LPTRbenr3SDITN
 XAzY42MEV10YrG5LuhSPx13jaskZYptBAbJZpmwoIpPfJld6Gy2iYTiXlIii8bzM3XJ1jU0ql9U
 qoLkIHZ3x/kOKAVH4M5rPrrZMRD6N0OOv8nqJcfViCg+ZRcxuQrlcT9NMJgiGBREVhiWT684h1T
 FG4fBRR7a6cj4ClGl0vCHOkwcWmgVxhxEfS4QLlwKnBmvYc92g2aIJEV5zo460IICjK2XDvvWTf
 s4nWtET692/Sb8AqhkQ1B3zVZzCkp8xBSLuRCK7rJIxR2zHcuIsc2cbYBN7xN81b0soB8gKrCQX
 +5mX2UmenKJluDFcESvWWSqIgb4szT1+KIyYioxmj6N0GQGo//RBlj9mlk3Ge6U3m/YYOqI4Tx3
 fyMMfbK7Pu5EkRApXcN8EIVM1dWSuNTaT+GleZOeh2+oNato8ndzu0qIwVk3ZT/ZfQfSrfkRqH5
 tGpuz43QltAo32Pd2K5ZnE6g9mmPDM1BEe1xQn5nmHAso4hQHb3e5K3QW4OIbB+196KIaqSP6pV
 ZFJn00fi13djcGIQiKaSIR/kbdbjk4u2heIynkqN7zN3eoJNwwnEL+9au1tCHUhCRESfyMnvQiy
 KSywvhV5f+2Tv2Q==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEyMyBTYWx0ZWRfX9I3sRB6zreAR
 IPJply/0YfHBZvBTiKGEYJL7L5ZpsOJfeyURw1h+locN8R9kMKeR19d51M/S7P8A7CNAUCaqZ7Q
 oKyNgP4i8kMT2PUyUTrxKn2HOIV/cYWeO/AXw+0ulWs60QPlIcHicEn7cysUY2zN7DG40k2f9o4
 k1GT8JFw0nfLjGvVJ7D+dDMoG3Q4YC5JrrrAecmfUlXLn1U02atVcHUb+gxN4GsaE9s11qeRyZ4
 HfUAD7hacp/yIPvIcv7tRXXCCBYk9QWJci6ospFNhr26vF1KVhKjlVHxsaIhMillqOFDmLkWQ8x
 Ow341SdbxCdstlSZmashTPN5HlCdRAKGbsDnNILE3Wacuo9XTtaUH7F56/gaqjyxJ0yc0h/hYZl
 desqPXNeN7crFRylRU7BaaHuXJfvoisOmbCRheSOmxG+muPZqGnV+Ajjvrelk5j6CpTMIhMqMUT
 zVEz2qDAipFvNtpSnNg==
X-Proofpoint-ORIG-GUID: Ow_iACXkGO2yEULevr-mGyqJiJO0Ih_G
X-Proofpoint-GUID: Ow_iACXkGO2yEULevr-mGyqJiJO0Ih_G
X-Authority-Analysis: v=2.4 cv=a6k9NESF c=1 sm=1 tr=0 ts=6978d3d8 cx=c_pps
 a=4ztaESFFfuz8Af0l9swBwA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=UWqaS1yFD4rTGqj9qVkA:9
 a=QEXdDO2ut3YA:10 a=TPnrazJqx2CeVZ-ItzZ-:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270123
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259970-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E58DB964D1
X-Rspamd-Action: no action

From: Taniya Das <taniya.das@oss.qualcomm.com>

Add bindings documentation for TCSR Clock Controller for Eliza SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 .../devicetree/bindings/clock/qcom,sm8550-tcsr.yaml       |  2 ++
 include/dt-bindings/clock/qcom,eliza-tcsr.h               | 15 +++++++++++++++
 2 files changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
index 784fef830681..ae9aef0e54e8 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
@@ -15,6 +15,7 @@ description: |
   power domains on SM8550
 
   See also:
+  - include/dt-bindings/clock/qcom,eliza-tcsr.h
   - include/dt-bindings/clock/qcom,glymur-tcsr.h
   - include/dt-bindings/clock/qcom,sm8550-tcsr.h
   - include/dt-bindings/clock/qcom,sm8650-tcsr.h
@@ -24,6 +25,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,eliza-tcsr
           - qcom,glymur-tcsr
           - qcom,kaanapali-tcsr
           - qcom,milos-tcsr
diff --git a/include/dt-bindings/clock/qcom,eliza-tcsr.h b/include/dt-bindings/clock/qcom,eliza-tcsr.h
new file mode 100644
index 000000000000..a9ee1e45c17a
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,eliza-tcsr.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_TCSR_CC_ELIZA_H
+#define _DT_BINDINGS_CLK_QCOM_TCSR_CC_ELIZA_H
+
+/* TCSR_CC clocks */
+#define TCSR_PCIE_0_CLKREF_EN				0
+#define TCSR_UFS_CLKREF_EN				1
+#define TCSR_USB2_CLKREF_EN				2
+#define TCSR_USB3_CLKREF_EN				3
+
+#endif

-- 
2.48.1


