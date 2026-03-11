Return-Path: <devicetree+bounces-274340-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMmfIevYsWlPFwAAu9opvQ
	(envelope-from <devicetree+bounces-274340-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 22:04:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A32F26A3F9
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 22:04:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9C6493023DA8
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 21:04:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7ADF42DB78E;
	Wed, 11 Mar 2026 21:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hpe.com header.i=@hpe.com header.b="AzpyNsQt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-002e3701.pphosted.com (mx0a-002e3701.pphosted.com [148.163.147.86])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC9B42C0261;
	Wed, 11 Mar 2026 21:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.147.86
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773263078; cv=none; b=ZBVjBr/IwGSnCsGLQEaqlEfFNNkpxGyxrP9wKrd7IMgGO+Rn5VzWfLKyO3QEHfUYqB+MCgqSwXqEN6rvgZrCtGwnMZRx/6jYAp6YXeUUC7QvEz/M97bDvLPtwC0WBZhe7h36ZVS4G/ZiWiRI22Ic/zaK8FzADnDoOUdHAYrKSyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773263078; c=relaxed/simple;
	bh=xRNPQHKn76zBegyngOvfgzAAW0Wm0NJapnt2nNd4v3A=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=q40UGhCOKVzH2CdpDAM1NI6it3FMIPfTiZZVc6I8Dc7N1/B6CTZV/T3rrRVunLIRqy9/RooBvqGMDP80RFhjkXMTNkYBbuCTpZHAgwLNT2H09VGXwXIrkTWmFa/dpnWl39jcdtdKzRdi8/99tQbf9Q4rdOJhLyQ8utKeZ8GryUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=hpe.com; spf=pass smtp.mailfrom=hpe.com; dkim=pass (2048-bit key) header.d=hpe.com header.i=@hpe.com header.b=AzpyNsQt; arc=none smtp.client-ip=148.163.147.86
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=hpe.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hpe.com
Received: from pps.filterd (m0148663.ppops.net [127.0.0.1])
	by mx0a-002e3701.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BJ0tgp2696823;
	Wed, 11 Mar 2026 21:04:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com; h=cc
	:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=pps0720; bh=TJPqM8xAWb2xLBL1CFIyPvOh5GkR9ZY+T6Ddw
	rgUQ68=; b=AzpyNsQtG5m6bjfk1P1tnatq04GR4YR7l+Obfz7VZ/Q/g0RWyvGIE
	j/JqrBrH0cz7Y3AETa3c743F8kK38cJHw2txSolSwbQJEiZuGZK0Ep2nwUPn3ncx
	UIt655hR7Fp/1lBqs2cZ6dXxG3P1hZWe1htsSwT4COc6LOoe4+DkS1jql0GtjFjT
	sV9NEt8WzXcXj2Xp5GHUvTwCxC6yoIxcfoDufBfgd4XNn6TVSpxX3J70DHqVZwrj
	nubLlt7eFoU2WdAVG7Mf1oIO5X9dlnx5nV5dcifqwZH64SJ1TOn6GB04n5/j6fdr
	8yCD6sIktlMOm/pQ7MDbXh+SNC8gNKseQ==
Received: from p1lg14880.it.hpe.com (p1lg14880.it.hpe.com [16.230.97.201])
	by mx0a-002e3701.pphosted.com (PPS) with ESMTPS id 4cu8ereqvx-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 11 Mar 2026 21:04:32 +0000 (GMT)
Received: from p1lg14886.dc01.its.hpecorp.net (unknown [10.119.18.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by p1lg14880.it.hpe.com (Postfix) with ESMTPS id C97B180162B;
	Wed, 11 Mar 2026 21:04:30 +0000 (UTC)
Received: from hpe.com (unknown [16.231.227.36])
	by p1lg14886.dc01.its.hpecorp.net (Postfix) with ESMTP id B3016811A4E;
	Wed, 11 Mar 2026 21:04:29 +0000 (UTC)
From: nick.hawkins@hpe.com
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Nick Hawkins <nick.hawkins@hpe.com>
Subject: [PATCH] dt-bindings: arm: Add HPE GSC platform binding
Date: Wed, 11 Mar 2026 16:04:16 -0500
Message-Id: <20260311210416.1706784-1-nick.hawkins@hpe.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: J_0Zquw1cY7JmgutTI99RpIh_JWOqQI2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDE3OSBTYWx0ZWRfXxznJHZkNWcrg
 M1SPr2X0uPnFgFp837NYH2qsMmTeGk1bhddEZT0Cv05HHLECFktlx3SP9IVz+OJEQl+SvwxNfJ4
 NxzsL5D1sPLbZAL4vrlbrvE0igU8KlSzQcCr+mhnpvcE1KSwOF+EvfCeS/7irByC5U7fJHRxgFw
 TA78PNS2AXb9MWGYjfCRaPZKjGrt2lFxr1+OgY5xxbx93q1uiN1a4tQq/0e6ELUPIgzIVV/MFM2
 XSeH0a5/lbKK29dKh2ThDxcP46fBA4muN09q/nN7w7imCF8pywIxzW0vuujchrqy0mq9EdnMLZB
 iE2hKQThYsyXqbuvy2O7usFOdoXuYot3SADh8VYsAL/rzXep655/Qgr3X+Jlg4JUg821UppHxVx
 SFvMzCIYspZrEHvipZ7zSXbT3fom+D/v8yH+SNQoc1m1jIE95QgpAW7utS8WQWFie5Z75MMwnRp
 eufIpWq4902iv4xmzvQ==
X-Authority-Analysis: v=2.4 cv=bdlmkePB c=1 sm=1 tr=0 ts=69b1d8e0 cx=c_pps
 a=A+SOMQ4XYIH4HgQ50p3F5Q==:117 a=A+SOMQ4XYIH4HgQ50p3F5Q==:17
 a=Yq5XynenixoA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gQcMVamqm3wCPoSYhaRC:22
 a=6_mrDcixewTG61oOsKN3:22 a=gEfo2CItAAAA:8 a=MvuuwTCpAAAA:8 a=VwQbUJbxAAAA:8
 a=kCQc3xdM3cJZAhJctwsA:9 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: J_0Zquw1cY7JmgutTI99RpIh_JWOqQI2
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0
 impostorscore=0 malwarescore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603110179
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[hpe.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[hpe.com:s=pps0720];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274340-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[hpe.com:+];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nick.hawkins@hpe.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,hpe.com:dkim,hpe.com:email,hpe.com:mid];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5A32F26A3F9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Nick Hawkins <nick.hawkins@hpe.com>

Add the devicetree binding for the HPE GSC ARM64 BMC SoC used on
HPE ProLiant servers.  The HPE GSC is the successor to the HPE GXP
(ARM32) BMC.

The initial board compatible is hpe,gsc-dl380gen12 for the DL380 Gen12
server platform.

Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>
---
 .../devicetree/bindings/arm/hpe,gsc.yaml      | 30 +++++++++++++++++++
 MAINTAINERS                                   |  5 ++++
 2 files changed, 35 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/hpe,gsc.yaml

diff --git a/Documentation/devicetree/bindings/arm/hpe,gsc.yaml b/Documentation/devicetree/bindings/arm/hpe,gsc.yaml
new file mode 100644
index 000000000000..c81753e3501b
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/hpe,gsc.yaml
@@ -0,0 +1,30 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/hpe,gsc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: HPE BMC GSC platforms
+
+maintainers:
+  - Nick Hawkins <nick.hawkins@hpe.com>
+
+description:
+  The HPE GSC is an ARM64 BMC SoC used on HPE ProLiant servers.
+  It is the successor to the HPE GXP (ARM32) BMC.
+
+properties:
+  compatible:
+    oneOf:
+      - description: GSC Based Boards
+        items:
+          - enum:
+              - hpe,gsc-dl380gen12
+          - const: hpe,gsc
+
+required:
+  - compatible
+
+additionalProperties: true
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 2265e2c9bfbe..d4fc25e972c5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2859,6 +2859,11 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/kristoffer/linux-hpc.git
 F:	arch/arm/mach-sa1100/include/mach/jornada720.h
 F:	arch/arm/mach-sa1100/jornada720.c
 
+ARM64/HPE GSC ARCHITECTURE
+M:	Nick Hawkins <nick.hawkins@hpe.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/arm/hpe,gsc.yaml
+
 ARM/HPE GXP ARCHITECTURE
 M:	Jean-Marie Verdun <verdun@hpe.com>
 M:	Nick Hawkins <nick.hawkins@hpe.com>
-- 
2.34.1


