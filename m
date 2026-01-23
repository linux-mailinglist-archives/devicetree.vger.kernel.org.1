Return-Path: <devicetree+bounces-259001-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SObFEB+Nc2l0xAAAu9opvQ
	(envelope-from <devicetree+bounces-259001-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:00:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3437765E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:00:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E7643013697
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:59:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AB05337699;
	Fri, 23 Jan 2026 14:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="t35ajPmc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EDCD330D26;
	Fri, 23 Jan 2026 14:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769180342; cv=none; b=Zg1VfIWBgVZm8MU2WEOYAeZPx2uCRlRMmNhEOApArh85PauZjJpWigILlTYWtuXJqZBbXkS9S6TW1VSW2OVQptdkZ+0xl4MaOQH2GY8CCFpsV5N8bE5yzsVBvSOHif8slD8u3s0HeIOQ21kmDrCKvoVKmrDpbR45oOzJV0Cb+fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769180342; c=relaxed/simple;
	bh=XXL182o8si66jMP0KiYp7YMRne1IJKyXxEet/d5l6wg=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VeNsvHxmxSvsxvTt6NAtTUW/tenTpmVIChoUCspWcs9Rcpb/tpa6l4qwlzbxINBrwoX7r6L1Wps08isI52/WP5p7qtQagzkGnLAI5CzMouTNZ22VJSsrQMiRM/iPCN+Oa4WYVtaYB0gqoMPK9zPpE4+sMd9zNgH81BVZGa9tHLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=t35ajPmc; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0375855.ppops.net [127.0.0.1])
	by mx0b-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60NANemq691146;
	Fri, 23 Jan 2026 09:58:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=AfOz1
	qDK9Y1mLSTHkh8KRvWrNVppfCcFHPuCKhpk2YQ=; b=t35ajPmcctBDSIBuHLMNJ
	/dgR2lx278wdUOQZIoP+7un6Ib15YqEtS+hJIm0tHiQqJXhYML3OG9c5CTTN6T2x
	ujrOHFJ24M16HPRv3MYbS1u5BDtInqtCNEby+Dlwk+ilEuRDHkUn/7coPCU8xpOO
	+uCIitJAIOOVsedRMRUxBXV5mK3oBGcWD23mougq7fc2Fu9W0WNnnpp5kT1QPSKH
	4jnD83rqCHurHwZB+qNwZ632yIkxxs4S3VhHrpYCwJ6+iV3nJeGYn0HHdkaoO9Nv
	Ge9zKtaBZKYRdqa9rsv9lo/Wxb8IZsBQIGWHaxLgNVdvU2VFsP/ETjBZDOf2k2iK
	Q==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0b-00128a01.pphosted.com (PPS) with ESMTPS id 4bv76ssa7f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 23 Jan 2026 09:58:45 -0500 (EST)
Received: from ASHBMBX9.ad.analog.com (ASHBMBX9.ad.analog.com [10.64.17.10])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 60NEwiME028311
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 23 Jan 2026 09:58:44 -0500
Received: from ASHBMBX9.ad.analog.com (10.64.17.10) by ASHBMBX9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.37; Fri, 23 Jan
 2026 09:58:44 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx9.ad.analog.com
 (10.64.17.10) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Fri, 23 Jan 2026 09:58:44 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com (HYB-b1tGeUj4GP1.ad.analog.com [10.48.65.212])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 60NEwLVb012602;
	Fri, 23 Jan 2026 09:58:38 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Antoniu
 Miclaus <antoniu.miclaus@analog.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Johan Hovold
	<johan+linaro@kernel.org>,
        David Lechner <dlechner@baylibre.com>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v5 1/2] dt-bindings: mux: gpio-mux: add enable-gpios support
Date: Fri, 23 Jan 2026 16:57:31 +0200
Message-ID: <20260123145743.75705-2-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260123145743.75705-1-antoniu.miclaus@analog.com>
References: <20260123145743.75705-1-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: g9jFSNTvTkrQU0m_bER8PiMIaaAWs9Xb
X-Proofpoint-GUID: g9jFSNTvTkrQU0m_bER8PiMIaaAWs9Xb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDExNyBTYWx0ZWRfXwNJBQk95d9/B
 L/Iy5w0cJ1FrIIE2oeUQLm/j9L8WzIMN7xFXBpzxbC1SXQbPMIHm0tZ097/a58YsRwKpeisD/yq
 2SmCCJ6zk6R1rD2SQ8FqILGnE1udQnMGwIrsLmXXuEHctPJafCypHFWZeCes4tImTsQs2u3c/jH
 gw8IVvtWAf7jOluX4rfDx8ay+Pf3bHp92l6GUCSAE40iuDDTTolA5KuwXPoL5GaiuBGdVIhEV81
 6j4OZwfLePGZYlHDZdOs0TOYWaWENFohShjxQ4UBNgUWoDa5TeTmgf/JXQt+MyO2op8CfNVHRSp
 dW2A1AnAed1AYvlvjZ8EEoS8qiPq8OAmTJItEZfscybZjtJ4SRakBKfcS7mv4hqNTW2byOUXO+h
 txVCUCQNYfh5DGHF2HOl3nUY95fqOcDJjq0tIe0Nnsi8CZFbPrjkmIl8iLag0a+hZU1IJ7lx6B7
 45M7sgFg0aAZvWNGfsw==
X-Authority-Analysis: v=2.4 cv=J/CnLQnS c=1 sm=1 tr=0 ts=69738ca5 cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gAnH3GRIAAAA:8
 a=Hkm-oAngvxE-1qugaQYA:9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-23_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 phishscore=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 adultscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601230117
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[analog.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[analog.com:s=DKIM];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[antoniu.miclaus@analog.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259001-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[analog.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,analog.com:dkim,analog.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9B3437765E
X-Rspamd-Action: no action

Add support for an optional enable GPIO that allows the multiplexer
to be disabled before changing address lines and re-enabled after,
preventing glitches during channel transitions.

This is useful for devices like the Analog Devices ADG2404 (4:1 mux)
that benefit from enable control to ensure clean channel switching.

Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
---
Changes in v5:
 - Expand enable-gpios description to explain high-impedance (high-Z)
   behavior when mux is disabled
 - Describe analog multiplexer use case where downstream capacitance
   maintains signal level during brief disconnection
 - Remove separate ADG2404 example, add enable-gpios to existing example
---
 .../devicetree/bindings/mux/gpio-mux.yaml        | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/mux/gpio-mux.yaml b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
index ef7e33ec85d4..798e0a73d77b 100644
--- a/Documentation/devicetree/bindings/mux/gpio-mux.yaml
+++ b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
@@ -17,6 +17,9 @@ description: |+
   multiplexer GPIO pins, where the first pin is the least significant
   bit. An active pin is a binary 1, an inactive pin is a binary 0.
 
+  This binding supports GPIO-controlled multiplexers such as the Analog
+  Devices ADG2404 (4:1 mux with enable control).
+
 properties:
   compatible:
     const: gpio-mux
@@ -25,6 +28,18 @@ properties:
     description:
       List of gpios used to control the multiplexer, least significant bit first.
 
+  enable-gpios:
+    description: |
+      Optional GPIO to enable the multiplexer. When present, the mux is
+      disabled before changing address lines and re-enabled after. This
+      prevents glitches where an unintended channel could be briefly activated
+      during address line transitions. When disabled, all outputs enter a
+      high-impedance (high-Z) state rather than holding their previous value.
+      This is suitable for analog multiplexers where downstream capacitance
+      maintains the signal level during the brief disconnection.
+      Required for MUX_IDLE_DISCONNECT idle-state.
+    maxItems: 1
+
   mux-supply:
     description:
       Regulator to power on the multiplexer.
@@ -59,6 +74,7 @@ examples:
 
         mux-gpios = <&pioA 0 GPIO_ACTIVE_HIGH>,
               <&pioA 1 GPIO_ACTIVE_HIGH>;
+        enable-gpios = <&pioA 2 GPIO_ACTIVE_HIGH>;
     };
 
     adc-mux {
-- 
2.43.0


