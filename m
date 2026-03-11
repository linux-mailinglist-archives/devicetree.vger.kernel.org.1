Return-Path: <devicetree+bounces-273841-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mIDJIs8DsWmFpwIAu9opvQ
	(envelope-from <devicetree+bounces-273841-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 06:55:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FA625C99C
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 06:55:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BD40C3033278
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 05:55:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A12543542DE;
	Wed, 11 Mar 2026 05:55:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from SEYPR02CU001.outbound.protection.outlook.com (mail-koreacentralazon11023106.outbound.protection.outlook.com [40.107.44.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F60346E55;
	Wed, 11 Mar 2026 05:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.44.106
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773208515; cv=fail; b=QAfCmpewdxuYotwZh4tZHuYfz6wXfU5pNrgwczRfFCmwLnrRj2RV7Ujsujt4EotzSZndZCf3kU9zFZwfr2jnn05Tvlmgysww/D89lKi4gl4PYDYCWzy4QofbVFQAi86QboUQEZ65M9Yfl4FOeBSDI4UqlZugeTLmglGQLXGgXdM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773208515; c=relaxed/simple;
	bh=2VqPsXqGpL7HqINs9PgZd/4MQnt1E9BmXEAvgZTaqwI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YmqK5JjN+Zj436q+YpZ/CBvDOx/Uo8SCSb074q+MYFZD9azE+rXwAfLxiR/p1VErnQ2o/1VV6jT8vGDya6PCNmFReguqAp20S+rZljohAOfBpX6yLf9uXPQFNcibouTChGqVJeHbRmbKX9PY4i4Dj6pAIwsc0lXirnA7sBnkQno=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.44.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YQLcR1/cfnYIKQC3zGH2RG+TaVhJzerogz1cmWgv+bvF7yqTcc4fnNPavZcL5VHkX6aSC+VXEUy50GGbvuZ8htmQSj6qF9HryZYtXj5P0Oui5f/3SnSjNexVu0SKGmmNTfTLoMtBqnST6laH3D3DM2SbdlN5DNQ71jt8b2z4LVaMpEbFnsE/S9fVBYM9FoAnjcSjca/rn+euWRzaD/ks9L6RDURwgSDJQhKEANFtHqk6JzlrmDQH7aOUsNEg1qdEWiKOFVwv+LxsB1CLE5rpRiT594TPG7DhDI/Izam1TPUbX0kAXwwZvcyB2A5YJ68zfwQosHLbVBafu4UYM9iivw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=32469tgO57oOtYG+QmsDSzi+ZIK+3qDLx9C3T37JYjc=;
 b=kbdYfyZArUoDKszGK1tVAMRtYAQvlm3nwHXZMqwXTjMrnzn7kxtfuKIQXV6seYjmihUXqyQ36MmJ/KOHEUydtpHsW1LXMcxEDysUhoazIqQp4P9fW1xVtZTJ3nm+tiH3aVtP5h7NAgTbrKHyr6RUygw8Q989oqLLO5h8wOJsOGL6Bq8M8+oF+lIkuPVXwOWiOp0HxAxTm8xFIaPjMdH6I+hy8e1k7RrPYFBIGpbaLcR11TVKnBqVLArf4OGC1UOH3u/zX7eUp4Gcjtl/VQAkJvLaRllhLPa1fSwCArTV/PTfMLlbdvXsz75J7GZENaKj75OhZY9hAIXgm2E2ibcXvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=arm.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SI2PR04CA0010.apcprd04.prod.outlook.com (2603:1096:4:197::11)
 by TY1PPF4CBD9505D.apcprd06.prod.outlook.com (2603:1096:408::911) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.20; Wed, 11 Mar
 2026 05:55:09 +0000
Received: from OSA0EPF000000CD.apcprd02.prod.outlook.com
 (2603:1096:4:197:cafe::d5) by SI2PR04CA0010.outlook.office365.com
 (2603:1096:4:197::11) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.25 via Frontend Transport; Wed,
 11 Mar 2026 05:55:05 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 OSA0EPF000000CD.mail.protection.outlook.com (10.167.240.59) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Wed, 11 Mar 2026 05:55:07 +0000
Received: from cix (unknown [172.16.64.42])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id EEEAD4350718;
	Wed, 11 Mar 2026 13:55:06 +0800 (CST)
From: Cunyuan Liu <cunyuan.liu@cixtech.com>
To: liviu.dudau@arm.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: neil.armstrong@linaro.org,
	heiko@sntech.de,
	marex@nabladev.com,
	dev@kael-k.io,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	andre.przywara@arm.com,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	cix-kernel-upstream@cixtech.com,
	Cunyuan Liu <cunyuan.liu@cixtech.com>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Arm Technology (China) Co., Ltd.
Date: Wed, 11 Mar 2026 13:55:04 +0800
Message-ID: <20260311055506.12023-2-cunyuan.liu@cixtech.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260311055506.12023-1-cunyuan.liu@cixtech.com>
References: <20260311055506.12023-1-cunyuan.liu@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OSA0EPF000000CD:EE_|TY1PPF4CBD9505D:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 6d715027-9f2e-4d9a-2db7-08de7f32c034
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|7416014|376014|36860700016|1800799024|82310400026|22082099003|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	Opd1b99mWSVkfkUifHW5H+IOer/pZpAkAJTSIJqCbb9xsql31AB7PkP/1BS8o3VTrJOXpkrbviRW9g4CO93qHXOvHisWVJVueddn/3dWLQ3OUzdtVjeEc4OECdmkg5u4i6j1q8sa6kpcGscSHXYkLSyewBI5IV564wFthHbkjXvYKdj2kaluWTNZZf2JfSVXt+wQRGt/5Uv20L4Yeu/dmsuHfRfMAN0gUiTs7XASrMY3NqB47yJU0c+2k2wwKdnYMBu+xfYMT9kvxDpBh9PG840Vu3a+kjcB/KKgYehzwrZRhCz/6vZo2zgVow7e+OeS5ElVwxUWO1MKwedLwspWLxExilyBmWd1gi8yOnxhz0xAGjwmZaiMGCeWbaf3D+zmi0mRhZwiGRj7mSZP43wtvlqBJM/eglW/JAGpXztaPhtpW04NCROM2WhXU6LY8amb4fwexdOCErnUrqtQ+90VzK6TWM3ayJY1mRPCQe9m0+dZx8SopYVl0RsOIAvZNAXKz1MjpDXJ0upqgsBPCE4piKi72/YmGS9GQw9dnceQgO/F3VGp3TjsCrDedvtfihkrEnmqWVyvl8MfykPXCsHIKobM3U6z79J/Gtl2qNFVNrWPEUnNOb9/OwNIfbWIM+DoQiYnNa/5ntWpetwgUehmdNkU7yvGNpIZ3sV+zwWNe9blKGhQoLdHeQ4/XTDTpCR2dy/pUTvA4X9fJZF/YzlOHw==
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(7416014)(376014)(36860700016)(1800799024)(82310400026)(22082099003)(56012099003)(18002099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	gvYKklZGStDw4FpMBt4/0Qu8neJek/2Q46YlK0sRKh0p2JCcAoWwhDhX5Uam4fHfHnHdOQyd7LCRV6moAsLhgGLOQxvXPVurq5yiMc9ZTPOFn46KkWGxPKltd3jktSTQWbXPpnLwppvLlRXOX9ykT6K7ZTEPHWd90XAKzwF2+Ghlq+aDG8sPhPKNoehC8b+O+lZe1NGLi1gMKpqZTcIeFZEAM/EHeD1gJM9lT04axCCzwcc96pVEWe3U5Y92ywLvLH4jBoM2RFLr9cs5ryMsoONXsQ7FfhGIgKzqzUtf5OGuS27EqBTV7SL4k3oWw9geUjUtMZKmWKb4g04IdPDwT5Ryd2MmmnTaGsF81ZAD4JXH4Y1rY1xIJVS1fP65M8QNpCjkHm7SZ0POafj+3VKHEFVsbBZtyIwsMidib2yz0e10hwQOdrl7qfbL+Sc87LXJ
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 05:55:07.8930
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d715027-9f2e-4d9a-2db7-08de7f32c034
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	OSA0EPF000000CD.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY1PPF4CBD9505D
X-Rspamd-Queue-Id: 12FA625C99C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-273841-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cunyuan.liu@cixtech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cixtech.com:mid,cixtech.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add "armchina" vendor prefix for Arm Technology (China) Co., Ltd.

Link: https://www.armchina.com/

Signed-off-by: Cunyuan Liu <cunyuan.liu@cixtech.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index ee7fd3cfe203..c7ca7f43925b 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -172,6 +172,8 @@ patternProperties:
     description: ARM Ltd.
   "^armadeus,.*":
     description: ARMadeus Systems SARL
+  "^armchina,.*":
+    description: Arm Technology (China) Co., Ltd.
   "^armsom,.*":
     description: ArmSoM Technology Co., Ltd.
   "^arrow,.*":
-- 
2.53.0


