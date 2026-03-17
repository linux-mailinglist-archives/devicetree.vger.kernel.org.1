Return-Path: <devicetree+bounces-276602-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEFDGYkpuWkAtAEAu9opvQ
	(envelope-from <devicetree+bounces-276602-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:14:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6262A7A93
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:14:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 682FF311775F
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:07:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2A163914EC;
	Tue, 17 Mar 2026 10:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TMN6XAE3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Azj4I7hC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA0B3A6B69
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773742026; cv=none; b=uJR1hWZyzYC2hZ8CGu4uEhv9zr3WquO8CBbJl1dFcgbnVbxkcDAkrDOVaFSI782fiIhPBJL6fbrom47tiLLGbA6WWdtmRdao0pubD4E8vlebWELl9hbf5WeIMmyjyVvNtGujSG4vzcHEJD25TbEt9TDfuHA4ZCS3E9G9Fk5iWH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773742026; c=relaxed/simple;
	bh=8J7wnejmu3JgyxbR2LfCQnqJglNWCcU7zD6SalnnO6o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=u8GwwIErCT8g+UqX8HH5rU9wz5HBVUXSkBxRd29gzHLowsCfYH/DJeiKfJc7hXh1aDACPj2R/UGOd4LJmw2866rtfSQYIhV8RQzOAqc/CRoRGtRAnjNWlWFSYrv9yVPbrTBsuF8GLDfJS38Yu8d0CECLvY9GG5jBPI7ufNuA31I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TMN6XAE3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Azj4I7hC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H7JOk93124391
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:07:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	81mqINqGyo0ckhi/b0wliK+5j3ocT0uwNM51rdag/mE=; b=TMN6XAE3ltqAQ7G0
	85+5pQGnzDtWQr3ZOvpZgIHDHwP+8tlqJnmczC1EDl8WDuAWDX6Wn2OX2z3guRea
	jPGF+BeTD+GLEgbsfjSCf+vLZTYe7haDA1fGWbsNQlwOn28zaBLrB1EZV1Rm5PnR
	75+hDsjKSDoPjdJyzYoU1CssLlI7E/JX9/5luPKBEWoqi0IBITrxn3HFCMaT2H/B
	mSLq/GDpd042GWY6eEBKba+Ugi97hIo6MRNZBorfQZ6Cd9PAeqm+1QQwfWMjWAfy
	RBUUqU0r9lxMG+ZGdNpIogK8bllWJkOOcx7O/ER/Za7f5B0N4CSNqLGFFldENbZG
	AubZOg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy2fbrmw6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:07:00 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cdb995a1bfso3732542185a.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773742020; x=1774346820; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=81mqINqGyo0ckhi/b0wliK+5j3ocT0uwNM51rdag/mE=;
        b=Azj4I7hCQie2bLaYZmHcHqwhHLouDbpJhEpZgJMwcCEfp+WbqOUZOi/JfNiIp0I15C
         kHrHZz8O6knAgxQANbwWtqusrrW6Kk5KwFGtinRbeMcZjiMCMGjnJduhp1BIfYxbp6Eg
         c4/v9waYUEnh8QzbcaoCXhHBpZ9Cht6HzkpvCj3VJUOGH2pZ107BkPfe24bA5i8v7CkA
         FKH4I79TwtWlWW7rQpEA0B7eeraTE7jkima0Pu9hnZKyUKIogUokNAdQKkGMRKOlolVi
         kANoyCPithocPTOF52yXtssggN9XGDv1ehb4HcN6wxIBBqousPtDZzZZeO2yxzoKJDTf
         yAFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773742020; x=1774346820;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=81mqINqGyo0ckhi/b0wliK+5j3ocT0uwNM51rdag/mE=;
        b=KxQJNhYAYuB13DC8ZpEx/qEczklZ8Tnqh4DrzO6sDCzs/gz2oltr5o8B+2bUp7d7Kv
         fnNmWWLkY6I/i6xODy8o02Vwclr2DdNPqeYRFM9vXm8MyVHixA1BiJcZRY66D+ykxA1M
         nmEWthyYmPZtAZ9A4iB7ywhucHVH7LuQdhMpcTqzbOygG+BRadK3MwsILClD27ocPovQ
         d0/5KTxzdqbNqR43a+Yd2/JxGCvh5/eGuaffzwkomSlwmA1zYP03TM5pnVykIqtvjiOq
         Rtyn2iWKLO7PRDqhDxAKiHK30QLrcY22HXN7qP5cFPpatCF1XQ4UyAvL5doRONxKaUwv
         0ORA==
X-Forwarded-Encrypted: i=1; AJvYcCXCVnerX90Dd/kEW+LxgU5e2e4bCDmvTiZtUzqMCA40zT7cQL/QjL5O884jVi4K5BFv/mv4RiG2KPu2@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0k+U6yXw/4GIiSAGRysvGeKg5nMDCwfQyZH+MoY7oxgZmqyI7
	fIyuIdz30+2UB0l5rs2iawQtsFApHxe93vwHZeKSBYswGxl2nY41kU6DTT540IB9lrvPWaQ7ngu
	ycsncq/gx1QXIi5TFtFYGZod82G0tGAjOB+e0i5GKQTB9mRl1F+H31t3BCLCoxcg1
X-Gm-Gg: ATEYQzxx4cpFqskmV0oVfbdw5fxE65h2TN0zkvnshSXSG9Yju6yzr1r2hYLvT8ESvlR
	MJHnjoJWQmq1/ya6tTmx4aMtYAebZ9Q9xYunCr3tR0N1utUCw8GUyDF0HERA4Ayit9GkXwsYps8
	8M3UhQQ/GAISdAtlbIljx5cB+9LeqnDjad5wVqDwryCnsUiGWg3K4fYUsnPCBbTGH/TesRBeMd3
	3eQtoRPs7Rs3B198rf028BkJ7CnkDJNu14/fziNTlllQIG9pR5YXNQ4OOnAIIYAJ0aomTlOTISZ
	z28aX/Av5iNIHQ0HTNcCsWKVOu0KqqMWncgsAxgpLWgu1PzxS5pYLHB6O7GgrG7wSUXHsbdFi4e
	XykqR7VSPYaha252u5ZsehaNJyoqM8EYacu4mFXHQISpI
X-Received: by 2002:a05:620a:3187:b0:8cd:9b31:23ab with SMTP id af79cd13be357-8cdb5b7a9bfmr2151708485a.61.1773742020237;
        Tue, 17 Mar 2026 03:07:00 -0700 (PDT)
X-Received: by 2002:a05:620a:3187:b0:8cd:9b31:23ab with SMTP id af79cd13be357-8cdb5b7a9bfmr2151704185a.61.1773742019700;
        Tue, 17 Mar 2026 03:06:59 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48634a7ac93sm33271395e9.2.2026.03.17.03.06.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 03:06:58 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 11:06:48 +0100
Subject: [PATCH 1/2] dt-bindings: clock: qcom,eliza-dispcc: Add Eliza SoC
 display CC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-clk-qcom-dispcc-eliza-v1-1-be4b0e4eb24a@oss.qualcomm.com>
References: <20260317-clk-qcom-dispcc-eliza-v1-0-be4b0e4eb24a@oss.qualcomm.com>
In-Reply-To: <20260317-clk-qcom-dispcc-eliza-v1-0-be4b0e4eb24a@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=8994;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=8J7wnejmu3JgyxbR2LfCQnqJglNWCcU7zD6SalnnO6o=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpuSe+vSOZFS04IT4iP67K9T444IOWE3CC+9cG6
 g1TRWr+l3yJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabknvgAKCRDBN2bmhouD
 10bPEACSG/mFcX02ade2F2ydl25nmCoZFMUHQGOxHz/g+UqFdo4hSHRmywc05HNyQDdoH33/a+Q
 0ocxP3ULqO/KCn0AM7ljo+0p4+Y0R85x4kYmGNB+5wSaGBO2iCaBbtJNGnzC7j4Gq1kA0jrvte8
 5MC+Cpgwvsy5dGU+JKbPTS6ZvSGm5HQ+LM8PRGpY1W1Vm/vtCOOMx/XwCF0Se+iJ2tDA8kvj/Pe
 vniQwo0eq/aMjMMqK14VVfPDu21aqqsfl9ofz41dokzwf/m+Hakld0ztB7L3/WKqx78hkUBnhVz
 P1ZOHYf41ULEx9uMhF11J8r/x9ApAS+VPzGlWf2p64rUnQRs6OT44Rj4Qy+xNTAJSZD4uk3XdiA
 U/oVPBKQI6LfKRFYZ5e29/X8IF01QDZYcZteewgscDRu87aR5H3cxmYUYmwZmxMQwWjz4hLNj5o
 fiOehleziiqZQXKCvYDoEdBBjdbsRKIvyj5ytgRhqiUxvm21K7OkdIlJb12GL+BbNDgIKtbw3eF
 UaY4KWE90S8EL11phSVApNw7/v00rJP4v1W/CXwf7BC+1nADnLrvECiy64yXQEzNkwj6UEXjKeR
 wUqjX3LA2XK3MtCjzgtomOe6LhbGNs+FHznBVygJpsp08FQsFOrACnvaPpuIrptqz6JVJGuw9gv
 RMmzCowFAROcLfQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: zb4J8PVdwL2ILhTrv6vlV3IjnWqOWP_v
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA4OSBTYWx0ZWRfX4L2PpGA6sbnp
 j8Vx9cJ50RN/RKOJyjItIMGEjmWSql1v+Odn8oxYn20lnbf6WjEiIuX3lwBM+4pKNnCc9elFU9e
 qrREACT6YmKcNahlUjNm8VIs4jqQMeJWc7fd+aMsIfsBRV8YVV2KYkP6T32gslie7RQiZ/rTST6
 RkoeZ2Zuvc8bXQHtxSDSBj2UX942YsAAzqdm+OZwsq4cG9FGHgKK57nnAFweCNFohw4ehP/10lD
 mpXqkcOL/l2kIaq4wUSlksW8tgh+N6QFH33ZgnmQrEmQtLRYl3mMzdSNg5WaYw12a2FusgHFi2+
 rOXoJz8pMwF9PlZ1i2BfMmn0jCy5wveyED7O445FeecCQfLv69ALG2GNBsme0UMoEu7g1tA2ya0
 E4h5ZUs0X01P83cblH1qVNvXuwchyuz1qoQsBBUwfAU0ec27O4yFk8AAlB8N3gErYSxg1LZoY2o
 +E+d5choOWxFv4MvZKQ==
X-Authority-Analysis: v=2.4 cv=fa6gCkQF c=1 sm=1 tr=0 ts=69b927c4 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=I8plYztaKvtxx8zCzTMA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: zb4J8PVdwL2ILhTrv6vlV3IjnWqOWP_v
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170089
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276602-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,af00000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BA6262A7A93
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add bindings for Qualcomm Eliza SoC display clock controller (dispcc),
which is very similar to one in SM8750, except new HDMI-related clocks
and additional clock input from HDMI PHY PLL.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/clock/qcom,eliza-dispcc.yaml          | 100 +++++++++++++++++
 include/dt-bindings/clock/qcom,eliza-dispcc.h      | 118 +++++++++++++++++++++
 2 files changed, 218 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,eliza-dispcc.yaml b/Documentation/devicetree/bindings/clock/qcom,eliza-dispcc.yaml
new file mode 100644
index 000000000000..174f0ac401ec
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,eliza-dispcc.yaml
@@ -0,0 +1,100 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,eliza-dispcc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Display Clock & Reset Controller for Qualcomm Eliza SoC
+
+maintainers:
+  - Bjorn Andersson <andersson@kernel.org>
+  - Konrad Dybcio <konradybcio@kernel.org>
+  - Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
+
+description: |
+  Display clock control module provides the clocks, resets and power
+  domains on Qualcomm Eliza SoC platform.
+
+  See also:
+  - include/dt-bindings/clock/qcom,eliza-dispcc.h
+
+properties:
+  compatible:
+    enum:
+      - qcom,eliza-dispcc
+
+  clocks:
+    items:
+      - description: Board XO source
+      - description: Board Always On XO source
+      - description: Display's AHB clock
+      - description: sleep clock
+      - description: Byte clock from DSI PHY0
+      - description: Pixel clock from DSI PHY0
+      - description: Byte clock from DSI PHY1
+      - description: Pixel clock from DSI PHY1
+      - description: Link clock from DP PHY0
+      - description: VCO DIV clock from DP PHY0
+      - description: Link clock from DP PHY1
+      - description: VCO DIV clock from DP PHY1
+      - description: Link clock from DP PHY2
+      - description: VCO DIV clock from DP PHY2
+      - description: Link clock from DP PHY3
+      - description: VCO DIV clock from DP PHY3
+      - description: HDMI link clock from HDMI PHY
+
+  power-domains:
+    description:
+      A phandle and PM domain specifier for the MMCX power domain.
+    maxItems: 1
+
+  required-opps:
+    description:
+      A phandle to an OPP node describing required MMCX performance point.
+    maxItems: 1
+
+required:
+  - compatible
+  - clocks
+  - '#power-domain-cells'
+
+allOf:
+  - $ref: qcom,gcc.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
+    #include <dt-bindings/clock/qcom,eliza-gcc.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+    clock-controller@af00000 {
+        compatible = "qcom,eliza-dispcc";
+        reg = <0x0af00000 0x20000>;
+        clocks = <&bi_tcxo_div2>,
+                 <&bi_tcxo_ao_div2>,
+                 <&gcc GCC_DISP_AHB_CLK>,
+                 <&sleep_clk>,
+                 <&dsi0_phy DSI_BYTE_PLL_CLK>,
+                 <&dsi0_phy DSI_PIXEL_PLL_CLK>,
+                 <&dsi1_phy DSI_BYTE_PLL_CLK>,
+                 <&dsi1_phy DSI_PIXEL_PLL_CLK>,
+                 <&dp0_phy 0>,
+                 <&dp0_phy 1>,
+                 <&dp1_phy 0>,
+                 <&dp1_phy 1>,
+                 <&dp2_phy 0>,
+                 <&dp2_phy 1>,
+                 <&dp3_phy 0>,
+                 <&dp3_phy 1>,
+                 <&hdmi_phy>;
+
+        #clock-cells = <1>;
+        #power-domain-cells = <1>;
+        #reset-cells = <1>;
+
+        power-domains = <&rpmhpd RPMHPD_MMCX>;
+        required-opps = <&rpmhpd_opp_low_svs>;
+    };
+...
diff --git a/include/dt-bindings/clock/qcom,eliza-dispcc.h b/include/dt-bindings/clock/qcom,eliza-dispcc.h
new file mode 100644
index 000000000000..30c6d856fa98
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,eliza-dispcc.h
@@ -0,0 +1,118 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_ELIZA_DISP_CC_H
+#define _DT_BINDINGS_CLK_QCOM_ELIZA_DISP_CC_H
+
+/* DISP_CC clocks */
+#define DISP_CC_PLL0						0
+#define DISP_CC_PLL1						1
+#define DISP_CC_PLL2						2
+#define DISP_CC_ESYNC0_CLK					3
+#define DISP_CC_ESYNC0_CLK_SRC					4
+#define DISP_CC_ESYNC1_CLK					5
+#define DISP_CC_ESYNC1_CLK_SRC					6
+#define DISP_CC_MDSS_ACCU_SHIFT_CLK				7
+#define DISP_CC_MDSS_AHB1_CLK					8
+#define DISP_CC_MDSS_AHB_CLK					9
+#define DISP_CC_MDSS_AHB_CLK_SRC				10
+#define DISP_CC_MDSS_BYTE0_CLK					11
+#define DISP_CC_MDSS_BYTE0_CLK_SRC				12
+#define DISP_CC_MDSS_BYTE0_DIV_CLK_SRC				13
+#define DISP_CC_MDSS_BYTE0_INTF_CLK				14
+#define DISP_CC_MDSS_BYTE1_CLK					15
+#define DISP_CC_MDSS_BYTE1_CLK_SRC				16
+#define DISP_CC_MDSS_BYTE1_DIV_CLK_SRC				17
+#define DISP_CC_MDSS_BYTE1_INTF_CLK				18
+#define DISP_CC_MDSS_DPTX0_AUX_CLK				19
+#define DISP_CC_MDSS_DPTX0_AUX_CLK_SRC				20
+#define DISP_CC_MDSS_DPTX0_CRYPTO_CLK				21
+#define DISP_CC_MDSS_DPTX0_LINK_CLK				22
+#define DISP_CC_MDSS_DPTX0_LINK_CLK_SRC				23
+#define DISP_CC_MDSS_DPTX0_LINK_DIV_CLK_SRC			24
+#define DISP_CC_MDSS_DPTX0_LINK_INTF_CLK			25
+#define DISP_CC_MDSS_DPTX0_PIXEL0_CLK				26
+#define DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC			27
+#define DISP_CC_MDSS_DPTX0_PIXEL1_CLK				28
+#define DISP_CC_MDSS_DPTX0_PIXEL1_CLK_SRC			29
+#define DISP_CC_MDSS_DPTX0_USB_ROUTER_LINK_INTF_CLK		30
+#define DISP_CC_MDSS_DPTX1_AUX_CLK				31
+#define DISP_CC_MDSS_DPTX1_AUX_CLK_SRC				32
+#define DISP_CC_MDSS_DPTX1_CRYPTO_CLK				33
+#define DISP_CC_MDSS_DPTX1_LINK_CLK				34
+#define DISP_CC_MDSS_DPTX1_LINK_CLK_SRC				35
+#define DISP_CC_MDSS_DPTX1_LINK_DIV_CLK_SRC			36
+#define DISP_CC_MDSS_DPTX1_LINK_INTF_CLK			37
+#define DISP_CC_MDSS_DPTX1_PIXEL0_CLK				38
+#define DISP_CC_MDSS_DPTX1_PIXEL0_CLK_SRC			39
+#define DISP_CC_MDSS_DPTX1_PIXEL1_CLK				40
+#define DISP_CC_MDSS_DPTX1_PIXEL1_CLK_SRC			41
+#define DISP_CC_MDSS_DPTX1_USB_ROUTER_LINK_INTF_CLK		42
+#define DISP_CC_MDSS_DPTX2_AUX_CLK				43
+#define DISP_CC_MDSS_DPTX2_AUX_CLK_SRC				44
+#define DISP_CC_MDSS_DPTX2_CRYPTO_CLK				45
+#define DISP_CC_MDSS_DPTX2_LINK_CLK				46
+#define DISP_CC_MDSS_DPTX2_LINK_CLK_SRC				47
+#define DISP_CC_MDSS_DPTX2_LINK_DIV_CLK_SRC			48
+#define DISP_CC_MDSS_DPTX2_LINK_INTF_CLK			49
+#define DISP_CC_MDSS_DPTX2_PIXEL0_CLK				50
+#define DISP_CC_MDSS_DPTX2_PIXEL0_CLK_SRC			51
+#define DISP_CC_MDSS_DPTX2_PIXEL1_CLK				52
+#define DISP_CC_MDSS_DPTX2_PIXEL1_CLK_SRC			53
+#define DISP_CC_MDSS_DPTX3_AUX_CLK				54
+#define DISP_CC_MDSS_DPTX3_AUX_CLK_SRC				55
+#define DISP_CC_MDSS_DPTX3_CRYPTO_CLK				56
+#define DISP_CC_MDSS_DPTX3_LINK_CLK				57
+#define DISP_CC_MDSS_DPTX3_LINK_CLK_SRC				58
+#define DISP_CC_MDSS_DPTX3_LINK_DIV_CLK_SRC			59
+#define DISP_CC_MDSS_DPTX3_LINK_INTF_CLK			60
+#define DISP_CC_MDSS_DPTX3_PIXEL0_CLK				61
+#define DISP_CC_MDSS_DPTX3_PIXEL0_CLK_SRC			62
+#define DISP_CC_MDSS_ESC0_CLK					63
+#define DISP_CC_MDSS_ESC0_CLK_SRC				64
+#define DISP_CC_MDSS_ESC1_CLK					65
+#define DISP_CC_MDSS_ESC1_CLK_SRC				66
+#define DISP_CC_MDSS_HDMI_AHBM_CLK				67
+#define DISP_CC_MDSS_HDMI_APP_CLK				68
+#define DISP_CC_MDSS_HDMI_APP_CLK_SRC				69
+#define DISP_CC_MDSS_HDMI_CRYPTO_CLK				70
+#define DISP_CC_MDSS_HDMI_INTF_CLK				71
+#define DISP_CC_MDSS_HDMI_PCLK_CLK				72
+#define DISP_CC_MDSS_HDMI_PCLK_CLK_SRC				73
+#define DISP_CC_MDSS_HDMI_PCLK_DIV_CLK_SRC			74
+#define DISP_CC_MDSS_MDP1_CLK					75
+#define DISP_CC_MDSS_MDP_CLK					76
+#define DISP_CC_MDSS_MDP_CLK_SRC				77
+#define DISP_CC_MDSS_MDP_LUT1_CLK				78
+#define DISP_CC_MDSS_MDP_LUT_CLK				79
+#define DISP_CC_MDSS_NON_GDSC_AHB_CLK				80
+#define DISP_CC_MDSS_PCLK0_CLK					81
+#define DISP_CC_MDSS_PCLK0_CLK_SRC				82
+#define DISP_CC_MDSS_PCLK1_CLK					83
+#define DISP_CC_MDSS_PCLK1_CLK_SRC				84
+#define DISP_CC_MDSS_PCLK2_CLK					85
+#define DISP_CC_MDSS_PCLK2_CLK_SRC				86
+#define DISP_CC_MDSS_RSCC_AHB_CLK				87
+#define DISP_CC_MDSS_RSCC_VSYNC_CLK				88
+#define DISP_CC_MDSS_VSYNC1_CLK					89
+#define DISP_CC_MDSS_VSYNC_CLK					90
+#define DISP_CC_MDSS_VSYNC_CLK_SRC				91
+#define DISP_CC_OSC_CLK						92
+#define DISP_CC_OSC_CLK_SRC					93
+#define DISP_CC_SLEEP_CLK					94
+#define DISP_CC_SLEEP_CLK_SRC					95
+#define DISP_CC_XO_CLK						96
+#define DISP_CC_XO_CLK_SRC					97
+
+/* DISP_CC resets */
+#define DISP_CC_MDSS_CORE_BCR					0
+#define DISP_CC_MDSS_CORE_INT2_BCR				1
+#define DISP_CC_MDSS_RSCC_BCR					2
+
+/* DISP_CC GDSCR */
+#define MDSS_GDSC						0
+#define MDSS_INT2_GDSC						1
+
+#endif

-- 
2.51.0


