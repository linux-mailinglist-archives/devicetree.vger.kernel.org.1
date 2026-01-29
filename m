Return-Path: <devicetree+bounces-260922-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gNwgGeuDe2mvFAIAu9opvQ
	(envelope-from <devicetree+bounces-260922-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 16:59:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C374AB1BCC
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 16:59:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EC2D03053678
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 15:57:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFCBA332904;
	Thu, 29 Jan 2026 15:57:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b="C1aNlpeC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com [148.163.135.77])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B8032571F;
	Thu, 29 Jan 2026 15:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.77
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769702240; cv=none; b=Y7r0PIGDrj7xhErDxUC+BntIlfO+QvngzO8lkN8BGclgwOYk/mFgOMupeCYdOc21SWRCX+fOtAO7MatC/6y2yDkamLtn5OjWaJSlmqxr+DJlLjDZBSEHczOfKU3f3720u8lPVDMiVAZfYrhn1aD75TvvisSNOf+ecvrtDxA4Yaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769702240; c=relaxed/simple;
	bh=1t2wW2od1baS5Rec3bq1v5ZHepIHoyk/YPydJypFDLY=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kw9t+O1NUT0cdCwG4VdzndVNIrCDpJGoJqpyrdp4/QjjeAu6uRaVDhqBnIOTbJX1wOhuq7NWfKk/Hkn5xCvrZoffXmSRg9hqwIQRKPj5+ErvZ0i17xmymVz8+pwO5kbGdym/1L9qb1qMHuM8CpeIxwRPvfVvuUyxx3uM7aN/KbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com; spf=pass smtp.mailfrom=analog.com; dkim=pass (2048-bit key) header.d=analog.com header.i=@analog.com header.b=C1aNlpeC; arc=none smtp.client-ip=148.163.135.77
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=analog.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=analog.com
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60TDokE3009025;
	Thu, 29 Jan 2026 10:57:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=analog.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=DKIM; bh=OPyKG
	JjlUrYBs5wJTTRFER5LcpAsqTn0pBIKVuoJWAI=; b=C1aNlpeC9bOjF1qT64Pij
	+b5QBulSSQMFd2i+LF3/eHwGNWjl6bLL5+nJBPQeQ/rjVHCt6gIMOoxFbbGi7poi
	tuMmWNft4UjLWxX+OjPJQSehV2wqa5RJdyK7gMUL1fEGe5OrWhMGqi2QO3jZoZQX
	+np0iw98h2q3RK2ARWu00xUV97PLc6xHmiR4fvJbIyMWwlnguHx02E1DJaavKU20
	DhwV2vbMAzT2xbc8Z+g9WGpHILTczAwA10E6P/zrPlSYMqC4jY+vNBcwUOFkjtWW
	Gjtm48FdUwV1vvkzOmp9GdYqBvONt2A/2WT/Y7nlfhhOmdZcQ8f1/IJMOiRXVP1j
	Q==
Received: from nwd2mta4.analog.com ([137.71.173.58])
	by mx0a-00128a01.pphosted.com (PPS) with ESMTPS id 4c08su8hhu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 Jan 2026 10:57:09 -0500 (EST)
Received: from ASHBMBX8.ad.analog.com (ASHBMBX8.ad.analog.com [10.64.17.5])
	by nwd2mta4.analog.com (8.14.7/8.14.7) with ESMTP id 60TFv8O7045298
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 29 Jan 2026 10:57:08 -0500
Received: from ASHBMBX8.ad.analog.com (10.64.17.5) by ASHBMBX8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.37; Thu, 29 Jan
 2026 10:57:08 -0500
Received: from zeus.spd.analog.com (10.66.68.11) by ashbmbx8.ad.analog.com
 (10.64.17.5) with Microsoft SMTP Server id 15.2.1748.37 via Frontend
 Transport; Thu, 29 Jan 2026 10:57:08 -0500
Received: from HYB-b1tGeUj4GP1.ad.analog.com (HYB-b1tGeUj4GP1.ad.analog.com [10.48.65.247])
	by zeus.spd.analog.com (8.15.1/8.15.1) with ESMTP id 60TFujFZ004048;
	Thu, 29 Jan 2026 10:57:00 -0500
From: Antoniu Miclaus <antoniu.miclaus@analog.com>
To: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>,
        Krzysztof
 Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Antoniu
 Miclaus <antoniu.miclaus@analog.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Linus Walleij <linusw@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        David Lechner <dlechner@baylibre.com>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
CC: Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v6 1/2] dt-bindings: mux: gpio-mux: add enable-gpios support
Date: Thu, 29 Jan 2026 17:56:20 +0200
Message-ID: <20260129155633.3985-2-antoniu.miclaus@analog.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260129155633.3985-1-antoniu.miclaus@analog.com>
References: <20260129155633.3985-1-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ADIRuleOP-NewSCL: Rule Triggered
X-Proofpoint-ORIG-GUID: tfGFHyLfgyEkQlZQBOwe9vcez4zNTbMg
X-Proofpoint-GUID: tfGFHyLfgyEkQlZQBOwe9vcez4zNTbMg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDExMSBTYWx0ZWRfX4yhosNE9hPjl
 xDiOymfS8VyBsioT1nvSemD5UZHPiAu51zqEpe7B7eKYPdbHqdaw/5ZWIdq0amOenyMuzoo8Hj4
 UwA9OksXGNC5BflFdRCD5DrMyNCLEG9F1CtJJj7/boD/vrU3Gy7ErN0CCo2+sAa7HrXp82f+72Y
 cCLjrsAFJUn2Yc939zNenKBprTrAaCaOTuvyjhnADgKkPlS9YSgmAmGgxPduP2L2r1CqNsuvYOf
 g49SRgw9juqPplv2BijLlzJqNDDUCbmwxznkRmir9Q8tSerdyJXWJIV5SZkxIVJ8dNUWIfdiESR
 Q4SCTowuvGbKvFBCqAoH1WsEyzntDQ9GGeFlyVA9h0UBwqkdNy/E4ct2CzfqSX1OkkEaoR2FD/v
 BvxgqXkxMV52Lh2wJDQiTorPCYj6OXmjacBikx1DGoGDjo54DYNNL+Pne0/zjlBa5WSGH7TkUAg
 wILavVf2K1EyyqbufDg==
X-Authority-Analysis: v=2.4 cv=IsgTsb/g c=1 sm=1 tr=0 ts=697b8355 cx=c_pps
 a=3WNzaoukacrqR9RwcOSAdA==:117 a=3WNzaoukacrqR9RwcOSAdA==:17
 a=vUbySO9Y5rIA:10 a=VkNPw1HP01LnGYTKEx00:22 a=XYAwZIGsAAAA:8 a=gAnH3GRIAAAA:8
 a=Hkm-oAngvxE-1qugaQYA:9 a=E8ToXWR_bxluHZ7gmE-Z:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_02,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 clxscore=1015 malwarescore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290111
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[analog.com,quarantine];
	R_DKIM_ALLOW(-0.20)[analog.com:s=DKIM];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260922-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[antoniu.miclaus@analog.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[analog.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,analog.com:dkim,analog.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C374AB1BCC
X-Rspamd-Action: no action

Add support for an optional enable GPIO that allows the multiplexer
to be disabled before changing address lines and re-enabled after,
preventing glitches during channel transitions.

This is useful for devices like the Analog Devices ADG2404 (4:1 mux)
that benefit from enable control to ensure clean channel switching.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
---
Changes in v6:
 - No code changes.
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


