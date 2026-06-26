Return-Path: <devicetree+bounces-316053-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id S8U9L/FaPmrKEQkAu9opvQ
	(envelope-from <devicetree+bounces-316053-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 12:56:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6250B6CC3BD
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 12:56:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lenovo.com header.s=DKIM202306 header.b=DrL4pp62;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316053-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316053-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=lenovo.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3C081303BB86
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 10:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75CFC3EFFC7;
	Fri, 26 Jun 2026 10:56:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00823401.pphosted.com (mx0b-00823401.pphosted.com [148.163.152.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D0613EFFB3;
	Fri, 26 Jun 2026 10:56:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782471396; cv=none; b=jO0w0KhvsA3u2dy407pqNReD1d3Yrn0XwV4S7tpVC1+BR/SKn07Be+8oUT5yy+fow8u9xFcVwzKffVjpwOZQggrcSHq80VgFWh4d4Mq5mJCWaG8kCuZOBhZUomMf77za+HGNtXoSgxDO0wZqAuE2EFd+f9vWyGEXP60BaHOzc68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782471396; c=relaxed/simple;
	bh=bxNP9GLcxinvfRARp2qwsO3ZckSiF8ZaJgRIXeNSUN0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=a0jdKCuR4rjdkSORQBdvGXg51uhF3P1GyCNEMjBn0xHUr9vyUJ1xWSD0LtH4vxPi2TE7XbMb7OT/XWIfzwzrT4bLBpInB7Qj/Vms0xTVaiTWlR4SWg5IwFL91WYamOXbj8ay2uks8KzDEoP+MSm41Djynq7jiWd+5nrM1tj10JA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=lenovo.com; spf=pass smtp.mailfrom=lenovo.com; dkim=pass (2048-bit key) header.d=lenovo.com header.i=@lenovo.com header.b=DrL4pp62; arc=none smtp.client-ip=148.163.152.46
Received: from pps.filterd (m0355089.ppops.net [127.0.0.1])
	by mx0b-00823401.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65Q9w9Gr3803623;
	Fri, 26 Jun 2026 10:56:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lenovo.com; h=cc
	:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=DKIM202306; bh=2M1gkMHxFD
	9/4Eq1RnCS0DRFUE90xrm0ITDLE8kuKBs=; b=DrL4pp62vWK6+jIWaOSh0ZjLMh
	mOQ77/LzjbKlF4mS8Fkr6NAlxcnWkdukF5ccYAo8YgQO9RMI/gnUTXXHqghIr5I0
	Oi0txjPUfpYkCxo/jIi1JAM4imtFMW1SfgnWZiYX58JcXvWbUnGx+gDfvvJG2uFm
	QW03JceEsvf2R70ERI0OzqOyDcgT6XYiIpYap/05nya1yfQxYhuAXN6Ijm6kG0HT
	1lg7IVePnl5H34A6rAC8w758G4KF1OSbwEl0sniWSdS/BPRSlAwtw8kOSRupBrN+
	Gbri5feDjqmvY140yyyeYjgQ7L2wXihFWQ3nnaHLCt7xybEeh4QscFOfKfKw==
Received: from hkglppfpool1.lenovo.com ([103.30.235.218])
	by mx0b-00823401.pphosted.com (PPS) with ESMTPS id 4ex7dkuhmf-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Fri, 26 Jun 2026 10:56:28 +0000 (GMT)
Received: from shelppfpol1.lenovo.com (unknown [10.122.146.34])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by hkglppfpool1.lenovo.com (Postfix) with ESMTPS id 4gmszt4PCmz9vWNw;
	Fri, 26 Jun 2026 10:56:26 +0000 (UTC)
Received: from lenovo.com (unknown [10.119.171.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by shelppfpol1.lenovo.com (Postfix) with ESMTPS id 4gmszt2NC7zYlvJy;
	Fri, 26 Jun 2026 10:56:26 +0000 (UTC)
From: Jiqi Li <lijq9@lenovo.com>
To: linux-tegra@vger.kernel.org
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jonathanh@nvidia.com, thierry.reding@gmail.com,
        mpearson-lenovo@squebb.ca, Jiqi Li <lijq9@lenovo.com>
Subject: [PATCH 1/2] dt-bindings: arm: tegra: Add lenovo,thinkedge-se70 compatible string
Date: Fri, 26 Jun 2026 18:56:24 +0800
Message-ID: <20260626105625.600156-2-lijq9@lenovo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260626105625.600156-1-lijq9@lenovo.com>
References: <20260626105625.600156-1-lijq9@lenovo.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=MPdQXsZl c=1 sm=1 tr=0 ts=6a3e5adc cx=c_pps
 a=yIlUyoB/d3ZP/uZUHEUQoQ==:117 a=yIlUyoB/d3ZP/uZUHEUQoQ==:17
 a=FelO9ux0wxsA:10 a=VkNPw1HP01LnGYTKEx00:22 a=2RTuljz969oO5usasWGy:22
 a=j7ft8fR0phhCBGdaz6r4:22 a=8k6WQxmsAAAA:8 a=hW0esKDmPMssBsguHvwA:9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI2MDA4OCBTYWx0ZWRfX1NrxjX4uWz8b
 tbgowjgpyQIX+Cm8yc91tLbhcRRQ9hOW6yjZ7IWfzT3xIZutQSxBf6FsW4FKVKbni7fE9S2rHbS
 wxIgEPp484jn3yqFS8nbCEP7eAHUsLsyJs5jC9ypJ2M9e0WFhYfMLwhzQ4cnPRDIulE80PYjYdP
 URb6p6+QBQxzfRHkFszzShSannpeIsEN/MeYSHh6AlvtdurtbXB6ge7cr4wWK7k9xYQz9ixyy51
 ejmO55pndSFvgeLJ4uInO4MqJx0nU02ZKGmFqdMzr9bt4QeSO2NVCnZmy2TT2eJbQ/kRRar88yO
 kz1w3PvEs8mI9npOWQif/y8LSYN6w0Fq4i3NYAXa52tZ/UUuUaTWswHcZQjws5RbcLtE6POcADb
 UnbDwpqM+IhtMSUUYuoptM4Tz9PbqJ7fD1YI/t1v91FewDqX+k18ruM8clKOoWSWzH2xBNu6tcy
 qaezXRiIyQUxlnzLQ2Q==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI2MDA4OCBTYWx0ZWRfX26O4rWuH7Uvn
 hxdFX26dFb6KgjXQCD15YPc/I67d0LZjiAQxQI944b+C6auJYyB3en9h+0pdWrNwCvQd7g8vG2l
 ixy5HbG/7y2z/ytpf3bvh3gEQ6wKWFQ=
X-Proofpoint-GUID: AKjy1424iL0q8AXF0SGFQQmN1liWe6KH
X-Proofpoint-ORIG-GUID: AKjy1424iL0q8AXF0SGFQQmN1liWe6KH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-26_03,2026-06-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 impostorscore=0 spamscore=0
 suspectscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=-20
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606260088
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lenovo.com,reject];
	R_DKIM_ALLOW(-0.20)[lenovo.com:s=DKIM202306];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,nvidia.com,gmail.com,squebb.ca,lenovo.com];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-316053-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[lijq9@lenovo.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-tegra@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh+dt@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jonathanh@nvidia.com,m:thierry.reding@gmail.com,m:mpearson-lenovo@squebb.ca,m:lijq9@lenovo.com,m:robh@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:thierryreding@gmail.com,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lijq9@lenovo.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lenovo.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6250B6CC3BD

Lenovo ThinkEdge SE70 is a fanless industrial edge gateway carrier
board based on NVIDIA Tegra194 (Xavier NX) SOM.
Add the corresponding compatible string for device tree validation.

Signed-off-by: Jiqi Li <lijq9@lenovo.com>
---
 Documentation/devicetree/bindings/arm/tegra.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/tegra.yaml b/Documentation/devicetree/bindings/arm/tegra.yaml
index 033a63f6c068..1a71b4195114 100644
--- a/Documentation/devicetree/bindings/arm/tegra.yaml
+++ b/Documentation/devicetree/bindings/arm/tegra.yaml
@@ -268,6 +268,11 @@ properties:
         items:
           - const: nvidia,p3509-0000+p3668-0001
           - const: nvidia,tegra194
+      - description: Lenovo ThinkEdge SE70
+        items:
+          - const: lenovo,thinkedge-se70
+          - const: nvidia,p3509-0000+p3668-0001
+          - const: nvidia,tegra194
       - items:
           - const: nvidia,tegra234-vdk
           - const: nvidia,tegra234
-- 
2.43.0


