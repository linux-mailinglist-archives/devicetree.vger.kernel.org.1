Return-Path: <devicetree+bounces-275182-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAzGFsv+s2mWewAAu9opvQ
	(envelope-from <devicetree+bounces-275182-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:10:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B52C1282C05
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:10:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CBC6D324CB1C
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:08:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ECA63914F3;
	Fri, 13 Mar 2026 12:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KQc0ea7+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FoOh4gHC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28291212D7C
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773403737; cv=none; b=C1AqZ7HintP3cJF+Ieshdf9Muf+g1vVA5NAzBm3fBt2W3g1r2fAKbhekwPSCn95JUu8NsvS7sYgJZ6A+xjctX6wtJvaHLQRuEjyqJPof9We+cIQrxWG2pWkwKt1WFMPZjjFPVwZ4o51TKxMBqfYjLlOm/9jGbvLITFCQda7w/z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773403737; c=relaxed/simple;
	bh=+eMOLBXE7wjoxeetGQX1D3VW19q27MSb42IYcApWQvk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YFrYDtoN7+HvUUdj3mLae6I/sAQ5Zk4UdN4gWOwFhouifTqaihETIJ2PsvdVKZ9r/8zz7EkMm5SAgJSsnpaF+UZRC+MvIhPAzmnnjtq8/bra+ob61CoDXceHF+0v5JKCZEHW9XGmztK81IDkci6WNaN/2E3/ZUHKnYfQuaTFZn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KQc0ea7+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FoOh4gHC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D9TxNl1499198
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:08:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=vzyNvMFuHZ7
	AMRTGu9dBLqXG9QjRaM8aJeviwp6Cqpg=; b=KQc0ea7+xFkNCvTc1sqhiDGgInW
	El+EDA3XwW7aKi8IDIBlCEb0F8ax/k8rNtZqEYtYoc9n68+pGe3k1WoLGLO0xxxf
	HF4T1j83NT3SgJj8fRJQnBW+d+LdkI6VeOX35CoUFdDizFbU42AFxJotisG8ftPU
	DaNnoxmEJ0ZJt0i899isg3MNL+QeY7RKgA/TniPHZK8CDDVC3QWXLANjrA9Z6xBY
	VKIb7ZIv04/oZ3JHyMbhyGBADYkJbLxo0F7DKNtEZBHk3Ob+Enp2LTAjotxJjL+B
	8whwR9Fytmox4wgvsseJjRBFRPo+NOLlCGSTktqFfMuQ+2Uo7C0V5x0isAA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvg0hgfbv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:08:55 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-35a21d5246fso971417a91.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 05:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773403734; x=1774008534; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vzyNvMFuHZ7AMRTGu9dBLqXG9QjRaM8aJeviwp6Cqpg=;
        b=FoOh4gHC+zs07SvYVez/t9B5qGPbf5L+8D6A9KHWwUFdxGBiseUyCOwxDgYw/JjpU+
         IDdE0LCeheMGaZW8jk9skNThAGAH3IUBencESwTUUIR6cdHmWNCb/44FrTapRNnuh2n6
         5Ti8KmffAOKms3v7WAmFg3KxiS08+mbWg3Ex92ZANlpCNs/1Un4mDV+9jcyMG7hQCy4d
         BVZ1vOtd4pyVD9GPq1hLQB0XPiLlRoaG7ptcCNDHK3AcQNR8Ze9hkY/hGZnW8nlMrO+K
         e7JBkVofL63/Gk3/galnS3ya8Hq4uHQX2Lp/2BDAbnUX/P15S2n0xe3+O+Qx1XEHcqsM
         xSsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773403734; x=1774008534;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=vzyNvMFuHZ7AMRTGu9dBLqXG9QjRaM8aJeviwp6Cqpg=;
        b=qEvTHabE8/OSV9lwDKlwxWlQtWkdjhmiAbOhY0rSVWAaeXNmOa9TI8AeNVxZt/3sEl
         gi0rJKuvwgw+OQgzlPb8oOLaIqI3MqJ2/i0mhNw7VY6zRLMsjRkAe23xUNuyZLRFKcYT
         p4LWg04jdoe5H5+gcaLhACnGcVAktrD9s9wxihWTBZNFIhcc5AiEEB8T6ddgN9/3dAe+
         bhvz+bjDa5WScTATmA482NbgUuFGQMUQH0fKk2NKU1oOXTS0UHN31KPlWjQNHix75NvU
         LdxpnfcJlKtja/+qQmkQmQwPBYnBn9iqOUjMYpF+FLd1Ek4QuLmmaB8/MDJ9Vrx5iASH
         N7Ug==
X-Forwarded-Encrypted: i=1; AJvYcCUfbDrBieK9iG7Om8KQh7ceiwdZQb3I/o9/Lagff+wDFHHeA/OnK2in0ePGZRxPiiRBrzALEA1kmJJA@vger.kernel.org
X-Gm-Message-State: AOJu0YzBzvaQ52T8ErIKXgBF54FGcl3IKBAGtZnt3NSyy5RM6WecS6py
	TNMP9Faa+SpFKEoVznEE4gOMgwKSXaEROKZa9sIU4+097LtF5id98R0ZXHg3XzPf5pfOaBk+QdX
	WuZX7M863wUoxkZ5T39ZmqiPYdZccqm/eSkoh75DDG5s3J58fm1JZsc6m5k2XaHJY
X-Gm-Gg: ATEYQzwV5ZmTbwmfIEnnDIflwwXLSbwW4nGi9D767YT00V3lfdsGDohV9sNOd6dqVcK
	PoX4rxB54OwA/BD86VAsGEvTPtJIdxuvzr2e3vMBw7NiWTbu/fHZK831yl8s46lO7sJ1nM4FdQo
	yR3V6xA0PwMWFTcBZeT6s8k9tk12XyLtLP9w80HEJ1An1x/C1Qi827zww11XlZkHRUpjC8tewcA
	xpatQhvBfC6HAT/r3/cXYKsF6klKITjQ3EF6X9NPrcmJnQ0hkp9Jsid/VkusGnV1CcpI8NJupGh
	1ADrpqAAc0dVxqMhiQoK9k4XX9Aj86MxDzRgCP+Kwngu9fk8TkZcKRcK++RQZiEBjiCN2TPDGG2
	43lAgKMuIiuP3jImUIoJGxR/3MxoJsunCLEvb3oTHk4MWWzChT9iGt8W5HIixNwfciuDwA8wV3c
	hCQWLDRSZLBrznkz+t/m/ZfejJtT7c7jMB6KSw
X-Received: by 2002:a17:90b:2683:b0:359:8d2e:6f79 with SMTP id 98e67ed59e1d1-35a21f6874bmr2855194a91.14.1773403734117;
        Fri, 13 Mar 2026 05:08:54 -0700 (PDT)
X-Received: by 2002:a17:90b:2683:b0:359:8d2e:6f79 with SMTP id 98e67ed59e1d1-35a21f6874bmr2855173a91.14.1773403733623;
        Fri, 13 Mar 2026 05:08:53 -0700 (PDT)
Received: from hu-sibis-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a02e18f0asm8421945a91.1.2026.03.13.05.08.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 05:08:53 -0700 (PDT)
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
To: robh@kernel.org, srini@kernel.org, amahesh@qti.qualcomm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: mathieu.poirier@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        mani@kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V5 3/5] dt-bindings: misc: qcom,fastrpc: Add compatible for Glymur
Date: Fri, 13 Mar 2026 17:38:12 +0530
Message-Id: <20260313120814.1312410-4-sibi.sankar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260313120814.1312410-1-sibi.sankar@oss.qualcomm.com>
References: <20260313120814.1312410-1-sibi.sankar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=T6eBjvKQ c=1 sm=1 tr=0 ts=69b3fe57 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=z2LoTb0XuyLmHK_nd1IA:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: 6VhMRNqvJ4ePHH5rg1NTVK1uK03IhP-8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA5NiBTYWx0ZWRfX+UpUfLmQ88oP
 MAA42QnM0rawHbZVhES3/YJ0FSZUNk0AlBINGO27mzNB1IrFpwbGn1tE9HdNIzo5VIshapbrlbM
 95O7L71b4DWLBs8dGhBb1qsdZrwhD3qYrPxBboQwDZ45ADpIXho54XaCfOHi7pIPiN+iQ3wE5kh
 sVhar3fyV7A9+dmfcZo5UKN/B7Hhe43VWWuqyamamg5/D7xWYvUqlvjgLwTurFbJhQKBkUXV0De
 9JNqnC3ZMuhzfUJPyYlGgUefPuHKSoifLgQgb+qZciS3Mi0b6+tUqmW3CeGYr6M61Wq1aWd+T+B
 mU+tAByUA2gwIUT6XPERdG1mfVQ9SUH+S9b6NBIEaw6gWVI/wNoh03bF68jb+v1geWCiiTOpb9p
 oK2xSYWAsCkWNi0qmA3ZsQp5PrjvIw/BNbLkEy5UT680XmZ3J5PoPPtArc4w+dRpT6XMzn56LXI
 kQu/hvwicUNonkJMeng==
X-Proofpoint-GUID: 6VhMRNqvJ4ePHH5rg1NTVK1uK03IhP-8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 suspectscore=0 bulkscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130096
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275182-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B52C1282C05
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document compatible for Qualcomm Glymur fastrpc which is fully compatible
with Qualcomm Kaanapali fastrpc.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/misc/qcom,fastrpc.yaml        | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
index d8e47db677cc..ca830dd06de2 100644
--- a/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
+++ b/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml
@@ -18,9 +18,14 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - qcom,kaanapali-fastrpc
-      - qcom,fastrpc
+    oneOf:
+      - enum:
+          - qcom,kaanapali-fastrpc
+          - qcom,fastrpc
+      - items:
+          - enum:
+              - qcom,glymur-fastrpc
+          - const: qcom,kaanapali-fastrpc
 
   label:
     enum:
-- 
2.34.1


