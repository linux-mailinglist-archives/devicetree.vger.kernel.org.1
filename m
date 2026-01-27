Return-Path: <devicetree+bounces-259831-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CG/MNN2ZeGk9rQEAu9opvQ
	(envelope-from <devicetree+bounces-259831-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:56:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F762933E0
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 11:56:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 94C50302769E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 10:55:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5EC6345CBF;
	Tue, 27 Jan 2026 10:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TlZkgZl/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dwu+MOMv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FFB344055
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769511323; cv=none; b=G893CJ3gKLgvF45DqU+WHubpFQsw1dERgZTd9mZE1x7jNLH0+Di8LcRiKFuN0Mlhd8Lo2XkcU/a+BGTqyUwrDl4BL1fQ1fflSw5JmmoqIhOA1UiSjQNPrXDCG44TdSwuYcEL79hVC2yFuid2mFEEnoC195IfEfXaORiQWWpJa/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769511323; c=relaxed/simple;
	bh=iMQQaUbDxn80Jv04Twm+fh6H1GY/OC2r6oK3GYAEr3U=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Oxq3eoaPa3hS6xduzzRnzbg+gY2teSfm0dfuGanPWHgNQTMwP9K7PFLL75dESeD7ZItYRsqAuLFwU8IUU0Zq1N+y6YYWrEpULYZupHN4k/iM4+Vi74/dJ80deP26IuKZjRggNntaP7ikcw43MHbIdHY3hShr5przHldWTaPgO0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TlZkgZl/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dwu+MOMv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60R886D7623368
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:55:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Es34Of8t9lRXH4TWD2gyEuhHQ1ONAHK4aIb
	sUEqRKgc=; b=TlZkgZl/42ybfbN90t2OFSIfMNfuex0bXMo24PRxoMHHhZx2ru8
	hx/pmdQ0qr6ylFSPsj/tfK5dAhF3hiJ0cLoUvZjpcHndn4kXebAlXuJdg20Al88U
	K8b+gtu4QdFwUQVBsTz+40yHfdHtWhg3oP6Kha6tJ+HiSZfO9HIFZaMqoYqTi1ns
	QRyqshzM7Rvp5+jqRR7742y24OZKHgKJHxbIX56xUjD2qZqoXyQODrC9lNkqBXZD
	Nzpdr+ylFqvkDXNtJj1m3ENFU66qyTk6qdGh3+n6VHCNTKC2Ke7gx3LSLnQ8VhL9
	rzxr/u7KaC+st/4q434H1/uHkXmaH+FEiaw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxsjegj17-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 10:55:21 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a7a98ba326so61277485ad.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 02:55:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769511320; x=1770116120; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Es34Of8t9lRXH4TWD2gyEuhHQ1ONAHK4aIbsUEqRKgc=;
        b=dwu+MOMvv5WH9xPYzuyYvtBXYhv2gnkS6wtS9clC9tX+LGq/QTUpRrtwg897WdhpDG
         Y3eVZuk83TjOVQHcuvpY4gfIszoK4YdnwNdmieVlPdfg9Y15ltlM1X0wtFrgmOmzCLIn
         FHQErcZcRkhZnf59qNB7lGg6etDd+fINAcgG1HqN+vL45aF4W+XTxDppV9aEg335LlQJ
         oeERVw13EqbYZkgckip3BNSMKajq9iTr3SNwSsZJQYRsxIANehz5us7FHWo3aUWhawJe
         YUkKsKbTwRX0kgSU4L1DRLOA3fwZdNj1NoT1C2iLpNAh7/On3bGJRbPvFebPkcUaHFLS
         Iy+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769511320; x=1770116120;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Es34Of8t9lRXH4TWD2gyEuhHQ1ONAHK4aIbsUEqRKgc=;
        b=XgXgv3QNk8SSri9y18vPtWXNYBB76VeJz/qYKxEOEF4k+HF9a6wgXowOXPQnJPHshe
         PpZG5pQAn7O/+0szsSwocJvd81w2lIEHCB42bclYGsorIS03By+nSTCiDqi1D6mXiHKO
         GX54Yy5V7LcHoDDzonXWFlDdu2WoGyAB8mAU/siwTGcGQNbwuWSypcy0kH9ZxrOpmuCB
         InjipYyXjO+IR9cWfGOrhFivRbT/MR7U2J91svplYqHBAE4YMt3YZn1suQgLpH5R5lha
         k0kCwOI+L0jgk3TMxYHtMvNgamHApa1/ynPGlQJxBD8vv3C2WgaL48xna6n1LVjNsK34
         3wCA==
X-Forwarded-Encrypted: i=1; AJvYcCV+nLpXF7J/j0OBksxKldm+1B11sJ58SOnhdvlQf4vieWZXzFrN4BN91uUzyvRNQYNqAlh9e0wuBDKx@vger.kernel.org
X-Gm-Message-State: AOJu0YyvCjzVn54gyqeTOGL4hiajBdPMZU5H5q/9vWJD0ySPEoBAOqHF
	ErZuMISC7xCGU/QmyGAL9FBa4PjiL7CjyGOSpQxftGxoSh2wIWU6mswVe9cCltQNp4rv8oIht4C
	/zGxZScydLaITGqRzpW7jaM+ZVkO3sL8RWDBfT1IBuSMsGDbwZh6jjU5r+da3t1Sa
X-Gm-Gg: AZuq6aJJHI7SYBhKc9OYRZ4lPXasaQTi5/NSRUv7XofKU01TbuuAbI67BGoGXpmKnYv
	8sZgbSszkurgSD36sX2kgXLlr9USjahexX9PqLbW2XJ8l7wsvnWmGYDVOZqjGxE0ZLHeif11msa
	6Zao1HAsBmPFtbmr2dncBlhJH3jO0q4KtBDFaBxPTJoDtIYxip7Y0+hvfUPgSUEnWBPIwBuS/5w
	YvcSl493LEa9AlbFgP9ndES8CjNNPtWL73IymKyiVZBVkVqmzFO3+uGT/dcVRSTEa4AfW2Brgrk
	MF3EiFPsu7Ndgfp3TfFbtmjo2jzzcCgWz4STSVY4EBJDbtSWBzy/3bWreK3fhBBveD80iO6RmIO
	OpFpxcMq8TDLItcR+k7084LTmvldaXWCV2EzGUTLiwd464Q==
X-Received: by 2002:a17:903:190:b0:2a0:7f8b:c0cb with SMTP id d9443c01a7336-2a87120f415mr15815985ad.4.1769511320177;
        Tue, 27 Jan 2026 02:55:20 -0800 (PST)
X-Received: by 2002:a17:903:190:b0:2a0:7f8b:c0cb with SMTP id d9443c01a7336-2a87120f415mr15815725ad.4.1769511319679;
        Tue, 27 Jan 2026 02:55:19 -0800 (PST)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802edb3c4sm112014275ad.43.2026.01.27.02.55.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 02:55:19 -0800 (PST)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3] dt-bindings: pinctrl: qcom,sm8450-lpass-lpi-pinctrl: Add SA8775P and QCS8300 pinctrl
Date: Tue, 27 Jan 2026 16:25:11 +0530
Message-Id: <20260127105511.3917491-1-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA4OSBTYWx0ZWRfX6h7Q/8d98jRd
 YmptHT8e9XqBYCew6li5FwK0Ih0jE8OJiwuqpoqwQ8Lx17OLk2nv61zve4op0UxtzeXBtHIjvVe
 fBQzRoV/ZrKYpQkXicUHP0TRtpcVGlC9ZPkp2bKaQTACfQA9vFLevgG9/eZGDfSGcMP0RAyt042
 dD805y9GdSFbzfkgTXoJnzKIR8jedeRbJAjBrk1ytqFIR1pgqlo2SNWPCNHJDP/I44iVuok7SpZ
 o8bJQgiDQWXVm6U2xjtxL2NXGAzaKne31buoKr2Qk2+n4puR6NG7prgSjp3eJMPnl8nTB/3auHW
 Jw9nAho12SOYgD3tp3wHta1sOKgNYZmRGcrAi0FpwyWha2iW4i4GoYEeHxqq4SQb5k055GQRxj8
 cCKQFt+CtV+xzDprEUsZ4MpoJehUCQVcCtNpbsR4KGmPZsysn/gjRT2wqC46zPiBYjDOdJ0UZpu
 ZEqJB55m6JfBsvmwm2Q==
X-Authority-Analysis: v=2.4 cv=Qelrf8bv c=1 sm=1 tr=0 ts=69789999 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=S9n3neneBwTsKRZji5cA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: gwT59aV-OHm7MD9Wi43GdA2ngiXhBmJE
X-Proofpoint-GUID: gwT59aV-OHm7MD9Wi43GdA2ngiXhBmJE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 adultscore=0 phishscore=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270089
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259831-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mohammad.rafi.shaik@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7F762933E0
X-Rspamd-Action: no action

Document compatible for Qualcomm SA8775P and QCS8300 SoC LPASS TLMM
pin controller, fully compatible with previous SM8450 generation
(same amount of pins and functions).

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
---
changes in [v3]:
 - Removed the duplicate driver code patch as suggested by Krzysztof.
 - Reused the existing SM8490 pinctrl, which is fully compatible with SA8775P and QCS8300.
 - Link to V2: https://lore.kernel.org/all/20260107192007.500995-1-mohammad.rafi.shaik@oss.qualcomm.com/

changes in [v2]:
 - Fixed dt-binding errors reported by Krzysztof and Rob.
 - Added proper slew rate value for wsa2_swr_data GPIO, as suggested by Konrad.
 - Documented Monaco compatible as suggested by Konrad.
 - Link to V1: https://lore.kernel.org/all/20251116171656.3105461-1-mohammad.rafi.shaik@oss.qualcomm.com/
---
 .../pinctrl/qcom,sm8450-lpass-lpi-pinctrl.yaml         | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-lpass-lpi-pinctrl.yaml
index e7565592d..354629c38 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-lpass-lpi-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm8450-lpass-lpi-pinctrl.yaml
@@ -15,7 +15,15 @@ description:
 
 properties:
   compatible:
-    const: qcom,sm8450-lpass-lpi-pinctrl
+    oneOf:
+      - const: qcom,sm8450-lpass-lpi-pinctrl
+      - items:
+          - enum:
+              - qcom,qcs8300-lpass-lpi-pinctrl
+              - qcom,sa8775p-lpass-lpi-pinctrl
+          - const: qcom,sm8450-lpass-lpi-pinctrl
+        minItems: 1
+        maxItems: 2
 
   reg:
     items:
-- 
2.34.1


