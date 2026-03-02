Return-Path: <devicetree+bounces-269916-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ECoICQJtpWlXAgYAu9opvQ
	(envelope-from <devicetree+bounces-269916-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:57:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAD71D707E
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:57:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DEACA306817A
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 10:53:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1956335AC22;
	Mon,  2 Mar 2026 10:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Rucg4ocR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YfZ7ZzD0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0DE35AC18
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 10:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772448829; cv=none; b=fMbrEAV21H3kKK/tD4bH7AbAjVXq8lDJ6j9XHqWHxqNoFO3tkZGpJt7M70w4Di+iLz2O9nPeDivfMwIJiTV+m6geg/Vpfl7LBcpzk9c9tCEbykt4+WMJiUR6cUdap30wS8paLFSmSHLDUkONU2yT6zQ804m9ptTZONyoDp/0oJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772448829; c=relaxed/simple;
	bh=ljNAanNsQX3haUgfK2VNArM8xCcxc69jvU1l9y/w+to=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GVDH2z8B9U1FKuQvSKiwDnhsajvm6Z3IoITt9gNV8iVEhNm7jXbP2hDAVa5/2KvDKTRl9pOd37pOPIFhbBrmoFKtSi0XUpCf8rpaPKmYH+IeZCd6CU/CRq7V5MvgNL9344UcVASecsSNkx+9D6v5lmtlSaXRfzIMiPogKzHnk/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Rucg4ocR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YfZ7ZzD0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6226h9f12504591
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 10:53:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	44Jhd6TeZL4PPKiVLdK78+OKBcNZjGbvEfGHis15NrM=; b=Rucg4ocRbQ0PwDDy
	KsZARxc9evrRA+0TNx3/l6lpsQ2ku5cov8gTHIfUu2LPlX4ICMHFPoJV8zZVOuHP
	kSJ9hAHEIKxElind4QK2LVQ2PZqJ+awqBpRU8BpFtELYHE2z2YrDLkiPsMzhNT+Q
	huAPZOTsLFK7q4q7dBi8JtaS19HxSaiESHDUd/5kJR/5/TqT75IKs2trXC9N4vhk
	GxbJPncJRGMpH+9lN4t+8bDPBNMM+DR12h9skELQcPdfUFBUI8D6DdGljYYU4lc1
	JVQ+JR3fpOgYZLB0c5HwlnZbPzipgY2hzQDmltK7zIyHg9FPaIJ8X5CLsP6ONgIH
	e/WiIw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn5herwq2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 10:53:47 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb3b6b37d8so3039584685a.3
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 02:53:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772448826; x=1773053626; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=44Jhd6TeZL4PPKiVLdK78+OKBcNZjGbvEfGHis15NrM=;
        b=YfZ7ZzD02u072p9wkZZlhdvRNEp/bFSaJCJmqKhvNoZWKSqsnY4AKpt1Lc+C7PUGao
         QOVYPIPGKTSxa8R8B2z5bID9cGOztSlAy0jDzXBbITj/h7mbwhb3wWtVsRi9Ooakk/wU
         N45MYK/yl91FG2mDu7o6cBsOUG1DZxAlP4JMUh8eEyf5P9FvYAdaFIy8/0kEz1gCY4iJ
         KdLsext3lKAFKych4+fHRIhr2kGlmWJgTtPpCM5YBPZrkSr8uXvV1R4Ra8XumC2b27/j
         MRmmxhTWl8GaZhR8O8vtIIc0jy0hvNTCIc46EnqHrQlXB7zDBLgkNL9zz3H/g9pQp7d5
         R68g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772448826; x=1773053626;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=44Jhd6TeZL4PPKiVLdK78+OKBcNZjGbvEfGHis15NrM=;
        b=nImSYjWGZnrrcBlSKVSlVZZTanKEQCTdJmREl0T9FR0SXUHnxid+Mu5NrTt4sVJPMT
         MydAF3H6Ig3fUk921+qAL7LjQfzd9G8KHXbR5cm3h2VlEq6qzD7QfmgAkELJtyWJJ5eV
         QVWkf7rIgFn3w7hkmycqwMhLnzjPnVDZk/rUG3fhmkctfaMzySGvmCa3Pi5oJfoX5zGi
         CH+lmXg1yTZ+ZsQKY6/cYLg9RqdxDY5P9t4YQiG4IFlmugmZMD6IVBhpIukKwt1PVnMR
         vslZdwntnn9UXEX2hzZcFZ/Mdat7qc4R0vUkvzVgPjWuoevQKPAGyH2gqWU30wLFxhzF
         g6kg==
X-Forwarded-Encrypted: i=1; AJvYcCUU9bNh79stPXf13456F8KN3Gfe6Dft3k2YORWDaRoVsFS2xOgHGrPmT+AzvFCQy3xKCKiSdCbe/SKQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4Yee47vwj5sM2rNplPm4bbqlepBrKGklpxcgN8949cYQn8z3D
	ZaM3hfVBnMiEcFvvB8BraVNiYLNqkDOxHJYaVFfZnnOhZUG9oVxs2bOZmP8ShQHbl/EJxa6/+z9
	b6NKIvjQbOZQiHbq0PXuc2Imdqdlnd8KSisTS63uk0VExbQ4hJoM9OXwQYosdyk7P
X-Gm-Gg: ATEYQzx/2hnVPNkGgZkhbvRY0xe6xDwChWqPse3FqLkcYbB9hRVrf9K5+Z1bwdKsLba
	cMrqrH6jGmXk2ubRic0t/VNfHgSEMZAKZHV8W9XzK8C1dc3qCAeKKZBs4z+1tR1rN8Ep3FOE6Mp
	hcI0CjYo4/cSL4W4uzpVPX8/CnU7RzQ+p5wsNKM3EeFHj5FtJH84QNdmuJ+onvN6DFWl8tZpKOM
	28sdtKpH0xX6HZrh+2Hg3m/ShiTo6GvZKTtDCrFxdX6AnFDM2FwltnUTdlcR4A2Gaz+Qc8oYYo0
	kUwR/W7+Qq2qSUfC/+0plxqZGfvfWCjkFZhW+wLOZHeq0EUHwo7o/7ov8baud4ZhaHR3rqtOJeO
	pCTZ19jY4ksHYqa72ru6hlxAiheSo+Q==
X-Received: by 2002:a05:620a:489a:b0:8cb:3bca:bb3a with SMTP id af79cd13be357-8cbc8e0d7bemr1307887685a.67.1772448826036;
        Mon, 02 Mar 2026 02:53:46 -0800 (PST)
X-Received: by 2002:a05:620a:489a:b0:8cb:3bca:bb3a with SMTP id af79cd13be357-8cbc8e0d7bemr1307884685a.67.1772448825487;
        Mon, 02 Mar 2026 02:53:45 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b59723fesm8399509f8f.38.2026.03.02.02.53.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 02:53:44 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 02 Mar 2026 12:53:31 +0200
Subject: [PATCH v6 3/6] dt-bindings: clock: qcom-rpmhcc: Add RPMHCC for
 Eliza
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-eliza-clocks-v6-3-6f42d8a9d25c@oss.qualcomm.com>
References: <20260302-eliza-clocks-v6-0-6f42d8a9d25c@oss.qualcomm.com>
In-Reply-To: <20260302-eliza-clocks-v6-0-6f42d8a9d25c@oss.qualcomm.com>
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
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=871;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=RKCYGsJFqEQSzos+9ejqQfu8ULxnCzq56BctAEfqjW4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBppWwtZVXLYtwMyb0w7VAkBiiqmoa48AiDR9s7u
 rmmr5kIwMKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaaVsLQAKCRAbX0TJAJUV
 VhIYD/9eWo9XreSgz5q3fcIj+NGy3CCari/P77NiP+MlUNAuwCtfkX9Vd8w9E4RvH/aR4RjXd6Q
 L1lmDDEJA1Cu4nmCNd0wiSm53VlDtxuNzweG+4lqG6Z8XTLPPIiuvUcYCP52aBPK8x3B8nRUJmX
 lcjl+fagZPYsbXpxAk3pLvpZna9tZpkvMLfMFlus2B72SQm3Xc/gyO7lmGpVq53USDjSBJF1ppU
 SjHcS1j1IHH92FP064by//xwbDBZ8Mk4kGzrwOTAX3S93Ymc3NZAFlWr2BaWVbii7M+HeVRq77J
 l5FKvcCvKfb62dKGtN57bcoHvfCuHqWCapFbv02jKJST7IIDBf4Atck8OX1JnV/xHbyxFpjitRL
 T6HKHAzvYYgGay59Yp7Igt/p7tTaYHn/qvGQwGjz/IQw5W7CCmmOX58UlmRKkVzO2TmwC2qeT44
 gGAcDrPTMo9eq0bizbZPCLAQcB6M1GmdvyG5r7Exz4VX5n8KWFDwbz7X021hxZlU4ySFOjYKCU2
 vSeqLalOrP3sU9TGUxDGzSbU+oxM9sq3k/4gcRooFy3hRGVX+BAHBS6xTo6hwxAHd2DfxjYxD3c
 l/pdvQQ3VyeoqYEqjJsDRbg0MVPd95gWUJ86zxWbib4UR/cKU+LfObRixgO3d7y5avVj5MIK8uh
 b5+C6Q07Mds/nFg==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=BI++bVQG c=1 sm=1 tr=0 ts=69a56c3b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=PJhJesWDv2iQC9CHGcgA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: HuZuOeQLExXz4W2Rpo2qZO73XbkVGqUr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA4OSBTYWx0ZWRfX516v3lCCmRNB
 gt2Mb8HdlmVfESEym7OFx15CixwMdGp/oozi1EH3XTVqsH/ayLJ8N8aI3miZXHJ9mLOUFGp7FQa
 fhyQYOxMHUGzJY3cGbr2wuW7erXVxMWGqKCcb9TbJNFbLw36gBZDh5I62ffXjg8/tMlvKq9cNUI
 fb1j9CKpagdn8kS268nKR+9H6XjHR7WFAEZ2hqlAQo4bnspKUq2Qb9T/tt6T2h3uiQA+fKl1GCM
 TSfeb4IkMAELubiKuRtFoXcS7D/WgmQAIPyziNitIk7U3UgrsvbiWFOgtv8YsdsmIolwpGpcVx0
 HhgUklRy9dlKdh/eUjVxX01x5M2C9fRYaGYBY+SNf/XQNFII34gCec8l0yWF0YR8HY3nto0lEyv
 NMigilqa+HxGJFv1r9QJk6Dv7tXLv4tdg7Y7Q2fRa+diBPfpK4Mbxoz931e0Po2+nIww7bvXfc6
 5mnFs8Sw1i8toDWI0+Q==
X-Proofpoint-ORIG-GUID: HuZuOeQLExXz4W2Rpo2qZO73XbkVGqUr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 phishscore=0
 spamscore=0 adultscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020089
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
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269916-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
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
X-Rspamd-Queue-Id: 9CAD71D707E
X-Rspamd-Action: no action

From: Taniya Das <taniya.das@oss.qualcomm.com>

Update the documentation for RPMH clock controller for Eliza SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
index 3f5f1336262e..9690169baa46 100644
--- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
@@ -17,6 +17,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,eliza-rpmh-clk
       - qcom,glymur-rpmh-clk
       - qcom,kaanapali-rpmh-clk
       - qcom,milos-rpmh-clk

-- 
2.48.1


