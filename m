Return-Path: <devicetree+bounces-259252-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAz/KlUhdmndMAEAu9opvQ
	(envelope-from <devicetree+bounces-259252-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:57:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D60B80DAA
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:57:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E914E300147A
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 13:57:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC81B322B67;
	Sun, 25 Jan 2026 13:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="joTNN08n";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J2KhRw43"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7B8831DDAB
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769349458; cv=none; b=EbIYJ+/IFx04XHA+61bUJw7yB9iUAyQ07+PNs6hfBo/OnPPRAgrHEP115oBmGZdXuU6dAKdf/4nI4XVSneKLd9KieUPYHI1MO4Xq2mBRShiSPAh7EkXARP5erY7n+3KWo5hTltHhJuzaAlRXZ2KHzEyOrwA6hPg1su0mDXFA5PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769349458; c=relaxed/simple;
	bh=hLnX9O+jNkWp4eIwqeLrNV1GLUMHqOPIj1AAiPtuF4g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YJt1HdI4FTe2EY8+AZ8RxcxDiOszPcuiX3R+uJTV4FC8b2rlaoGx9dMhj3OGpBJZINBirstA+9g6tx3SOzYFYidgs+di9CkwByJSgV53G/jsDdmZhRSTlGKVC1oqAdP+YAW0iqnZncUXIm1rdtLzKzAV73MfJBY+kYWp2oG9B8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=joTNN08n; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J2KhRw43; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60PBM7NH2971875
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:57:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AKNJUo95dhWW3QqNfHAa9QPKochcB0AESW4u0Ff6SDY=; b=joTNN08n+gyeI9Kl
	XWkaHIxHzeQURuqQ15D/8+dwwmKnC8xTQfSCJqObAVBJfoNHkWgaWvg1gzu4sAXU
	ZLPU0IgBOhqn5FfW1pC0UICiuS8LEqQY3o5xrS0rqEy8hm8LbEQJSYOzi0Qxg6+c
	3/QsBqH51k+0aDyDrtpDojU++whTsmyUHOdG44TTYVMIsu3mWFGTvlIUIfKba3nc
	cGajHEtfaD6EQV9+KG0VKvTUIAlF/qDJ0YbV9inYPIVE/wIWCUBePRRitRNLM23w
	AFj0oZFL3uReFhjcZzqG5okZxwHEFrJtThp+j974Iq4TDm1iguK+84xQVq4FnkdX
	pV2D0w==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq6xt6em-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:57:35 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88a360b8096so146915926d6.0
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 05:57:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769349455; x=1769954255; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AKNJUo95dhWW3QqNfHAa9QPKochcB0AESW4u0Ff6SDY=;
        b=J2KhRw43OLvLRdb8pfJ4fqBzocPDcoK2GJDuWN0qyIOu1LBrFsXONg6gMdXyD7hI5z
         2AyDnQuLuyC0ZUoFNRzo5+W1BF7wMIWiICxHclFCPXknI0XisZIIBiVn0coKkxwsmDAu
         qHS8tw6W+ITI8VHKycEdCnVaCFdbMYwY6R79+Zs8Ris3FBr3Lwdv5cksGBbh+P/qbfpL
         tuu7F6s7LA2WUntBv22ufr+YOstcY3DPwe0MWA7l/YUTt0kdpkE4LqacfZm45wxtgcWn
         64YWfk/OF9L7h/U/85tBLw9BEozMO0watHBJ4mHPlwf29OGIh0L5v5WMWKWHH9nJD6qU
         H8Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769349455; x=1769954255;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AKNJUo95dhWW3QqNfHAa9QPKochcB0AESW4u0Ff6SDY=;
        b=tTnGaeOTtxgQw1jOCL3JILOBCA/McnsH/SbNhKZ26b0PMrhqAOkMiRwqtfOB0UwjtC
         Kkz9815IrpHF4NdQfdT4+Bbtzte925MImIDBjF1Evlsv77q7v9r9NJ+3gP05ylIryJzQ
         ZLuqZJrDK1aWETiJLKOE4KUZoE3f25rFC4I1ph1MAN1yZoTsW39yyDZPuzh3AgjLNqwx
         atY4CPeGYp09j03/nEVWu8wJDGXaFaYT2mIbyieShu34VOaUHwULFFuSJRy2DOcErW1U
         bXLYd0F+iPptlWRWth6EStNdlTb8rRckn6CvjfvgE26tr1AUiEi1sYEk064kEUryzACO
         t6KA==
X-Forwarded-Encrypted: i=1; AJvYcCWICs04Tvmeie3PvR9jpHEPP77/+6c55xy7IhU7d32xFVrhIFDSsc/XuFepCtuimfh1oJvk2JCFxbK7@vger.kernel.org
X-Gm-Message-State: AOJu0YyrMDkfvrPHDmN/F+CEnpsMg0njNH4KQhW/4IGiACEQCVuYCIw8
	2BFbWqJZsM5vFYm1vDvNj9I6TFARWR1vwd7yBrmbPJvCoUfN39sgWy36EvoaP0Lou8O4MLPHsrQ
	VvTxcoIYm04cl10+JnydPIiMe/kOJTrgvKr5eZ+8QEXuxkQH95dJ55iTMdt1aXtUTTWPvszKV
X-Gm-Gg: AZuq6aJPLdkC0PL1DOoz8DPO+bhX4SGGuuRiI2rlvKNCqAN8tTLCgU0wdCCeqGrBCJz
	5TdzLbwVVf2LCLQejtx0DlhZ13caWc52NawcHhNnr10NdWQPOIQGo9pQSsrHDJi1HO+Ge+5+bGg
	yDK0pu5qtylZDjR2epFZIO6KjNu2UjiV5pOLPPUgGUS8YqmxRAdfuhh59ME9tSpT1Fc+iZ5Sfc9
	hpELH/RtIJEm+nLFP40D6SxFh9YFEOW+1eJQd/oeYf9Lk1lmmfbc6iKZ4vYB+Nu1uxWZ/NihSJM
	8K9RgrMdVmJsitX7LyCc8vzUk2bA2UKAfvceeUl9I9OEVrHKFAIDaFncENp1raipDPVwGbTmvEY
	Lj5cnao7mg/TJmPurPR4S62APNfGEKpVTy4iWD5X/6OD5CP4IbafNRcDdy69/WC3lbGrvj+mpJE
	65heMPUkCS17j1Op4VdGK8qmU=
X-Received: by 2002:a05:620a:2982:b0:8c2:f72e:5456 with SMTP id af79cd13be357-8c6f9670bb3mr187368585a.90.1769349454693;
        Sun, 25 Jan 2026 05:57:34 -0800 (PST)
X-Received: by 2002:a05:620a:2982:b0:8c2:f72e:5456 with SMTP id af79cd13be357-8c6f9670bb3mr187366085a.90.1769349454243;
        Sun, 25 Jan 2026 05:57:34 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59de4918a3asm2033621e87.52.2026.01.25.05.57.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 05:57:32 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 25 Jan 2026 15:57:24 +0200
Subject: [PATCH v2 1/7] media: dt-bindings: Document SC8280XP/SM8350 Venus
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260125-iris-sc8280xp-v2-1-552cdc3ea691@oss.qualcomm.com>
References: <20260125-iris-sc8280xp-v2-0-552cdc3ea691@oss.qualcomm.com>
In-Reply-To: <20260125-iris-sc8280xp-v2-0-552cdc3ea691@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3992;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=EyYfaE2Cufcr0C/0jDHR82fWre92I+G4XxMx5Yzq/OM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpdiFFUL7+QmPyhACJG0l8DP5rhsey7dvwBP1U/
 EHoZ60ndV2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaXYhRQAKCRCLPIo+Aiko
 1fo6B/47UCalapfScj2qAkADa1BM28ZwUlDUnpXWEY1vLQ8wTRC5AOOFAkH3HoC6QGO7v+eC28i
 gGUroPlpOJnvYF2pErRYhMbQ2qbEFP17JVB/tqJc/Y+8m5pCco5GSeJX0tf8cvQry6+kHuVSL9G
 rKli6yGN4JqabCin9RhSpNOVBz3kviQiWkFD4fBkV251bN3mzaetIfjGxCeEtstYVYBk/ourEHP
 z00uf1twdNeJaDhNjMIs45hWEvvnr2jKq6g0IRT3qDcXGbaorw7M7EcVvW7WTs4kBJOdU8E8iMk
 OfNDjIwpU0wh/gi7lK22Ec80APrH1snjV8YI2XF9wftKckPl
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: w3YFztgU2_776Ka0pL-p5TPwELbwtF6W
X-Proofpoint-ORIG-GUID: w3YFztgU2_776Ka0pL-p5TPwELbwtF6W
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI1MDExNSBTYWx0ZWRfX2ZpE+6IPrBKR
 C0GFWoyQ42CbD1taItjazxgCMYR9dB0Ns8bJ0G+UyNTZ1RCv3O5Sz+3WofJFRHeXJox4SoN8Lzj
 64tx1YWwH7lcXMjMo4fA9omIw9MzRLZGwoarTAZhvmee5gCHulFWHr3qX/19Qnn2eJhuE98cmk2
 u8QU/CKTwxAV1KNgv+LhIBzApdHLO6mFMgigM3melK7zga+hRXCWadncEPoXU2YuNkrpuEjokCV
 WzJdF/KaIJecDROluPwm9w8BRbCl7vGbUis6spl7vfk+BhbbHhBvwMRp6FOorKXddq524rz/TtI
 VA4iUfNJdomvOptDfwSiEdVovd01hD90YUQeHyVPVjmnYRQCazkycdmKwBl0PkQxKb9WItUUHVL
 j2Wf5Br9smSYUXfZLjv3kuKmTGiBrKDj1aL+RVcTa7WKdhmU/8YFDP6t4RLVMjzUPqfLegOPACu
 6SskhsfC5ac1nAtP92w==
X-Authority-Analysis: v=2.4 cv=Htd72kTS c=1 sm=1 tr=0 ts=6976214f cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=gdo2EkX-Jlq9hQkSyREA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-25_03,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 spamscore=0
 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601250115
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-259252-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,aa00000:email,linaro.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1D60B80DAA
X-Rspamd-Action: no action

From: Konrad Dybcio <konradybcio@kernel.org>

Both of these SoCs implement an IRIS2 block, with SC8280XP being able
to clock it a bit higher and  with SM8350 having 4 VPP pipes, while
SC8280XP having just 2.

Document Iris2 cores found on these SoCs.

Signed-off-by: Konrad Dybcio <konradybcio@kernel.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
[ bod: dropped dts video-encoder/video-decoder ]
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
[db: dropped status, dropped extra LLCC interconnect]
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../bindings/media/qcom,sm8350-venus.yaml          | 113 +++++++++++++++++++++
 1 file changed, 113 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/qcom,sm8350-venus.yaml b/Documentation/devicetree/bindings/media/qcom,sm8350-venus.yaml
new file mode 100644
index 000000000000..d78bdc08d830
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/qcom,sm8350-venus.yaml
@@ -0,0 +1,113 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/qcom,sm8350-venus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SM8350 Venus video encode and decode accelerators
+
+maintainers:
+  - Konrad Dybcio <konradybcio@kernel.org>
+
+description: |
+  The Venus Iris2 IP is a video encode and decode accelerator present
+  on Qualcomm platforms
+
+allOf:
+  - $ref: qcom,venus-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - qcom,sc8280xp-venus
+      - qcom,sm8350-venus
+
+  clocks:
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: iface
+      - const: core
+      - const: vcodec0_core
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: core
+
+  power-domains:
+    maxItems: 3
+
+  power-domain-names:
+    items:
+      - const: venus
+      - const: vcodec0
+      - const: mx
+
+  interconnects:
+    maxItems: 2
+
+  interconnect-names:
+    items:
+      - const: cpu-cfg
+      - const: video-mem
+
+  operating-points-v2: true
+  opp-table:
+    type: object
+
+  iommus:
+    maxItems: 1
+
+required:
+  - compatible
+  - power-domain-names
+  - iommus
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/qcom,gcc-sm8350.h>
+    #include <dt-bindings/clock/qcom,sm8350-videocc.h>
+    #include <dt-bindings/interconnect/qcom,icc.h>
+    #include <dt-bindings/interconnect/qcom,sm8350.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
+
+    venus: video-codec@aa00000 {
+        compatible = "qcom,sm8350-venus";
+        reg = <0x0aa00000 0x100000>;
+        interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+
+        clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
+                 <&videocc VIDEO_CC_MVS0C_CLK>,
+                 <&videocc VIDEO_CC_MVS0_CLK>;
+        clock-names = "iface",
+                      "core",
+                      "vcodec0_core";
+
+        resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>;
+        reset-names = "core";
+
+        power-domains = <&videocc MVS0C_GDSC>,
+                        <&videocc MVS0_GDSC>,
+                        <&rpmhpd SM8350_MX>;
+        power-domain-names = "venus",
+                             "vcodec0",
+                             "mx";
+
+        interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+                         &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+                        <&mmss_noc MASTER_VIDEO_P0 QCOM_ICC_TAG_ALWAYS
+                         &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+        interconnect-names = "cpu-cfg",
+                             "video-mem";
+
+        operating-points-v2 = <&venus_opp_table>;
+        iommus = <&apps_smmu 0x2100 0x400>;
+        memory-region = <&pil_video_mem>;
+    };

-- 
2.47.3


