Return-Path: <devicetree+bounces-322656-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eUmMDCQXTmrRCwIAu9opvQ
	(envelope-from <devicetree+bounces-322656-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 11:23:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F85723A74
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 11:23:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lenovo.com header.s=DKIM202306 header.b="CHzr/2qo";
	dmarc=pass (policy=reject) header.from=lenovo.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322656-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-322656-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E42E23032BCB
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 09:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D19D2407CC7;
	Wed,  8 Jul 2026 09:20:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-00823401.pphosted.com (mx0b-00823401.pphosted.com [148.163.152.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CCF40913B;
	Wed,  8 Jul 2026 09:20:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783502435; cv=none; b=iP3qla5TSQhL9LxKz8Dx4Wbn3j9x6VNEHRmI601zd0Ro2l0OFNfwlKdOQyRgd2+NS5PmK6Qk04DziWPAte+svDYJlQkKKHZfWGp7kQuM6mb/qQ8droSFmp4s5k7b7diVbeoaAvyyI7BVL+9y0PdpO6INFSGab/T6VmjtptICKAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783502435; c=relaxed/simple;
	bh=yKbiRl8oiXmuyDigY5b0M0EYtv5QGsCnY8MPNgIgrrc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=M4Iw76QS81iEXo+LfmOet3zHSTlzLgcqWs3A/aQKomgOoqW9JJh65WQ938DoQP+qmbtaUpV29E1PkIdN9N2LgDJM12rjp0Mf0d6/JMZfOicVdNuDVD2ls18RbUqNGrJz0QcRVhrINrXznqE0WQM8wEJqB52WBSVHmxz0VeWQOTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=lenovo.com; spf=pass smtp.mailfrom=lenovo.com; dkim=pass (2048-bit key) header.d=lenovo.com header.i=@lenovo.com header.b=CHzr/2qo; arc=none smtp.client-ip=148.163.152.46
Received: from pps.filterd (m0355090.ppops.net [127.0.0.1])
	by m0355090.ppops.net (8.18.1.11/8.18.1.11) with ESMTP id 66888TkO2781480;
	Wed, 8 Jul 2026 09:20:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lenovo.com; h=cc
	:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=DKIM202306; bh=4O5Wca1Vis
	XE/IcRbx6LwCYFOOzm7SvXF9sXeAhWZxs=; b=CHzr/2qoSmDq5klO8ZTsib/nSn
	AP/87Zo3Gk1FxREHjQmwxloKHtlE1k+mAGyu8yXKM3YnwF8bJkYVO08AO6GbvFkX
	8LdciTONO+Ky13EsE78KjJNk129X+njA+P19zWnpdnpRGdS6DzeO1+zJKCuw/Xf4
	/o8VmOR+HI15zsVSuFb3IOEWLoaEZt5oroLvJbfgLgGX2/UH6LSP13Zn6V8SC3U2
	HKZYWt7id4BpRAvNPh6BhqP8lEZb54Dqwd5pNKSpFSuCvp2TE1X6VNUKmeRvux0A
	a2Wvqmah/p2kItpxxuUZxhvWrCQ9G9Jh6oisuxkaURqbiC2wbF5k/2Zo7pXQ==
Received: from hkglppfpool3.lenovo.com ([103.30.235.220])
	by m0355090.ppops.net (PPS) with ESMTPS id 4f7dgsxgn9-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Wed, 08 Jul 2026 09:20:20 +0000 (GMT)
Received: from hetlppfpool2.lenovo.com (unknown [10.196.132.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by hkglppfpool3.lenovo.com (Postfix) with ESMTPS id 4gwCD51yVKzDRDtM;
	Wed,  8 Jul 2026 09:17:25 +0000 (UTC)
Received: from lenovo.com (unknown [10.119.171.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by hetlppfpool2.lenovo.com (Postfix) with ESMTPS id 4gwCHQ2zhLz18W7cM;
	Wed,  8 Jul 2026 09:20:18 +0000 (UTC)
From: Jiqi Li <lijq9@lenovo.com>
To: linux-tegra@vger.kernel.org
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, krzk@kernel.org, mperttunen@nvidia.com,
        jonathanh@nvidia.com, thierry.reding@gmail.com,
        mpearson-lenovo@squebb.ca, Jiqi Li <lijq9@lenovo.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 1/2] dt-bindings: arm: tegra: Add lenovo,thinkedge-se70 compatible string
Date: Wed,  8 Jul 2026 17:20:16 +0800
Message-ID: <20260708092017.745545-2-lijq9@lenovo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260708092017.745545-1-lijq9@lenovo.com>
References: <20260708092017.745545-1-lijq9@lenovo.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 09L0ldFvKJmbZqMe_GcZn3v9fg2UqlTk
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA4MDA4OSBTYWx0ZWRfX3fb2x8xv/46y
 a0LNnxVyuaFwMj36FN24e1eh7CN1KGPh/JPu7HOZiw4R0UZ/3ezCmMc3Ges0O1cBprfU4Gs92bM
 viqgautXrYT7utBFYQcbA8l0WRrjidQ=
X-Proofpoint-GUID: 09L0ldFvKJmbZqMe_GcZn3v9fg2UqlTk
X-Authority-Analysis: v=2.4 cv=POw/P/qC c=1 sm=1 tr=0 ts=6a4e1654 cx=c_pps
 a=3okn395cuUlJnlrAQteHYA==:117 a=3okn395cuUlJnlrAQteHYA==:17
 a=RAioF0-LDSMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=2RTuljz969oO5usasWGy:22
 a=ZyEuT479hi48zPIlagN0:22 a=XYAwZIGsAAAA:8 a=8k6WQxmsAAAA:8
 a=Qg7IKkRQLkjCXi5ovIEA:9 a=E8ToXWR_bxluHZ7gmE-Z:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA4MDA4OSBTYWx0ZWRfXx0B+86JOh9Lo
 C8cdiIzvYrcxzaaANyM9PB2Ey9P0HidIcchWCjucB+VkpKVZlA+oJxZq3zpp6ol25VyEy90p2z/
 /1pUC9BONrnRoZE5UZU/kjGRJqWx+HYh8sBX4Tbhg1IJ8Wq+xEEYAt1EHttzKT4Z112G5/YMuuq
 MNIEAhTJE30m861WIUOXG3x9Inl18FvHbx4WPp8tDQVfsO+XPdpRHev3zcswOnm1ujpYaQ3EsD0
 Av7Rs2n8Loi2Bl0mEUKr9n0nLrv+v9+rmqem90WZ6pvV3suJH4jQFpAwFAXHAoH2MVwpMM6ECRg
 V8AVtN5dYTiyjhwf1fANHwY25zy64EkxUXBRjB+spy5Fd7oReLHHepLn62VrWyXTv0hzHxuVR6I
 As3MQB35ygyYWi1Ukp+AX4Cm23V8Xw7y4X/elQULZ5hFaAma8/nP5zVhjsgneEfHXHV0UYvrzup
 vz52mDQqL7TfZFyzzNg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-08_01,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 phishscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=-20
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607080089
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[lenovo.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lenovo.com:s=DKIM202306];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-322656-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,nvidia.com,gmail.com,squebb.ca,lenovo.com,microchip.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-tegra@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh+dt@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:krzk@kernel.org,m:mperttunen@nvidia.com,m:jonathanh@nvidia.com,m:thierry.reding@gmail.com,m:mpearson-lenovo@squebb.ca,m:lijq9@lenovo.com,m:conor.dooley@microchip.com,m:robh@kernel.org,m:conor@kernel.org,m:thierryreding@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[lijq9@lenovo.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lijq9@lenovo.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lenovo.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,microchip.com:email,lenovo.com:from_mime,lenovo.com:email,lenovo.com:mid,lenovo.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C3F85723A74

Lenovo ThinkEdge SE70 is a fanless industrial edge gateway carrier
board based on NVIDIA Tegra194 (Xavier NX) SOM.
Add the corresponding compatible string for device tree validation.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Jiqi Li <lijq9@lenovo.com>
---
Changes in v2:
- No further modifications, adds Conor's Acked-by tag

Changes in v3:
- No further modifications

Changes in v4:
- No further modifications
---
 Documentation/devicetree/bindings/arm/tegra.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/tegra.yaml b/Documentation/devicetree/bindings/arm/tegra.yaml
index 033a63f6c068..a54d0024e636 100644
--- a/Documentation/devicetree/bindings/arm/tegra.yaml
+++ b/Documentation/devicetree/bindings/arm/tegra.yaml
@@ -268,6 +268,11 @@ properties:
         items:
           - const: nvidia,p3509-0000+p3668-0001
           - const: nvidia,tegra194
+      - description: Lenovo ThinkEdge SE70
+        items:
+          - const: lenovo,thinkedge-se70
+          - const: nvidia,p3668-0001
+          - const: nvidia,tegra194
       - items:
           - const: nvidia,tegra234-vdk
           - const: nvidia,tegra234
-- 
2.43.0


