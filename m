Return-Path: <devicetree+bounces-274865-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SEyABCyGs2msXQAAu9opvQ
	(envelope-from <devicetree+bounces-274865-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 04:36:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E83C27D2B0
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 04:36:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EDC6B30B221F
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 03:31:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 503B534C128;
	Fri, 13 Mar 2026 03:31:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYPPR03CU001.outbound.protection.outlook.com (mail-japaneastazon11022089.outbound.protection.outlook.com [52.101.126.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8DEB2D8379;
	Fri, 13 Mar 2026 03:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.126.89
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773372688; cv=fail; b=BEneZn7jo2QHiAxFGCNsXNEmkJw+E+a1rFnPlaOW1lr0x+0W4Pua+eXqR8pIUKt5FDPnSx3I8db942ZlnsP1WPiJXvPXi0Tau+pE8Fde3ZiwrwYvNt36enu+xC8p5Ye2VpfYCxXbl5Xx4QZVNDGHFHkhMSdqSXMahIGIols6NHg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773372688; c=relaxed/simple;
	bh=pJ5+ci77OWjR5LDcyK0RHFM4ua43k4P0emjUklW2ZjE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nRKjDpR3fmdzq914HevJxUq+U38HE1i1OU/mpk9hZgA++xkKFZh+NDNc0EV2haXRHG6FlPkSU6OfuSIz2o+oDcWss7uWPNmchm1iOBNglLbSdduiflOXEJ0QfVDHUj3yDFIR19raPFvDcqtGtI0qaSXNJE2VJcGttI7zzLl2Pkk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=52.101.126.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hp3khjtRQBFiq5VAQZSRK+xlxWW9SKAIEtBfebc3pa0HZBMThhIz4Mf21JM9MpCdcRKNwaceE0KQ3KifCIPUHkyPQIygBBdpT+01QTGBEVKlPwEi4IXxdacwjIQiiRXEEYXSyJpZKAE2tTWRq/LzpfNbElUPAj0lbSUA/UxvBeDssdSPMCPwUOXtPtQtQaHmrB9RIDwYEt+6tyHe5TAU4pTNBpQF47BooMNpwDKFsoO67D4Y3vhWPd5EO2LqFolGmbD14KRzb1/Z0Gliw3KQtqPqo4SOGW40Jw/X0vkhfl27FSXZgyUdn43tPErROvFPXK5kwIlWGa3t8SCqab+4pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S3oV+Payb5zlD21BUNuMll4vCDj89JktYo7g7ofEA0c=;
 b=YnRd79fXBnbgVGs2j7QErQQyMM79lddEying4f7dF/wXK3CO+VtkY0glxcu4jZEUsGS/d7p0trkJKVN72zDWY1wFfDEvSP/q7AiJ8uuL4mhunxzgU/682eHwRzrkSLXqL2KVFR8dQj/TFbY4jvMJ6cw0+iPMfeEkh6OWsbJZQ3xbtvjj5d2rYqV/oJtoXsQStbaO3N+13Bn84OvdbzT+5r/+bQMAIb1SI3HCE1v8mzB8QrtIKFtbHX1OVqAs4s0HmkJ/NNXQ0CKL6UtLA4Y/OxyL/urTydTzCb3Nx3vhNEfDpHEpiJbhW+Nu1N0Qmfq98hDUNyBt/s3D8qDZFlh2Gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=arm.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from OS3P286CA0073.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:201::16)
 by TYZPR06MB7334.apcprd06.prod.outlook.com (2603:1096:405:a4::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.16; Fri, 13 Mar
 2026 03:31:21 +0000
Received: from OSA0EPF000000CC.apcprd02.prod.outlook.com
 (2603:1096:604:201:cafe::bb) by OS3P286CA0073.outlook.office365.com
 (2603:1096:604:201::16) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.29 via Frontend Transport; Fri,
 13 Mar 2026 03:31:26 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 OSA0EPF000000CC.mail.protection.outlook.com (10.167.240.58) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9700.17 via Frontend Transport; Fri, 13 Mar 2026 03:31:21 +0000
Received: from cix (unknown [172.16.64.42])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 1DE0140A5BE6;
	Fri, 13 Mar 2026 11:31:20 +0800 (CST)
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
Subject: [PATCH v2 2/3] dt-bindings: display: arm,komeda: add Arm China Linlon D6 compatible
Date: Fri, 13 Mar 2026 11:31:18 +0800
Message-ID: <20260313033119.33686-3-cunyuan.liu@cixtech.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260313033119.33686-1-cunyuan.liu@cixtech.com>
References: <20260313033119.33686-1-cunyuan.liu@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OSA0EPF000000CC:EE_|TYZPR06MB7334:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: ec260a80-e2a7-4dc9-4084-08de80b0fef7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700016|1800799024|82310400026|7416014|376014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	faeyjBOZoEXFD1eJT5nbvrZT5+Du7mO2A3u/tr5XUyvh+L0Y6clihxYlQhlC843mT7W9jL0bnln0vRYWfAOF0qcjgVrYCTlrUj6DC1t9YkKCk6vfl/TCIz71i59/PVQicbNC9L8bohLhX/di5TmvtQ8z1wwuRr+rn/LfWnzZrziW4uJXCRuEFN1VZSc9zciWkTfzyPDqG0KYbFmX+7sDaQOTU5+w8N75oPzAmttq1ENaHltLuOs2ZMbtidzNZgMRfJPD9QeDcKfISDNh0yHZJFYa5Z+Q4w2AVuv8nuNXI8APO83fhOqGYEfCnHK7LOBHruKBOsD4CXpJ74GbCT7yL0P32w16sam8Gi1C3TM7zzeh5tvvcQfnpB0yfQYO58+D/T70dGjIfvYge7civptjZcuYoeNV663moFMgzbe2e2bFJLSRlVy0z4VujNDvt7oA1qrZNHJXqAwxe8VKd5d8suY9BOY9ftI+I6rtrWAmedwPxdlH+bKYFnHV6/ugGDLGXEhfOrLu3qQgOcRCFT1ZH6F5fsXdWRsNvLV5melXliL7vg6mNr3WbRrOs7lh+nwF4I0k6Fs+KPVP4OJTd1DVH5jj8Z7RkOPiMrY6VM3YeFCttglo+rqTG8Y1e+GXyPg2SUvXlaGYJv8+7WlT2i6IfiGRQImppGT4mW/XbEf8y672Zl45WLBKfqF/156ReyIeaAi7+mLIUfFUa1pFid8zfa2uYxt2jdD9+AxehUEbsbLIXOq6iuSY9vhwOIykTkxWY+y9Pas1m2Uc1CPohhRTxw==
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700016)(1800799024)(82310400026)(7416014)(376014)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	8voEyaDfsC+Pt1uei3mzWW1BS358BUMSKkAzwkVbsHvtcOvnF/WgbKJpjzw/ad6EGTfSVLHAhZI/WmFJtjJDgKvO8PubWnwjdlfYMoOKirOdNJHWF26z8VAaNrAPVcbQecEeFLq87yPzNHIienKcBo4vDSxBEeO4kkZZpP90hWtaICbpnrNctaD9hr0ZG0aN7kotSSLbqs+4IcodrlCSc2fOxw8nWRIbSmyRo46H9S+zuxC+FEHGhNmhOn9250bMYR4xRl2D1uEl4XOnUr0tQvRYNZUnDTYsfAX/MWGXZKGfYzMeAl5iYACkdzVA9hcyT69xVfkg8e6CznVyKWz7iYiriqjutrNa3IXUXpkQ4r/qG7YOZGJ43luY3Is5Kwr77u2MWgk6tYt0bo31nIg5OM1WOcsVAgO2KrgqBNNofOxL+RyE+gxO4gKG7ywxknuU
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 03:31:21.0588
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ec260a80-e2a7-4dc9-4084-08de80b0fef7
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	OSA0EPF000000CC.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR06MB7334
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-274865-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cunyuan.liu@cixtech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.973];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cixtech.com:email,cixtech.com:mid,arm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3E83C27D2B0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the Arm China Linlon D6 display controller compatible string.

Linlon D6 is register-compatible with Mali-D71, so describe it as a
vendor-specific compatible with a fallback to "arm,mali-d71".

Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>
Signed-off-by: Cunyuan Liu <cunyuan.liu@cixtech.com>
---
 Documentation/devicetree/bindings/display/arm,komeda.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/arm,komeda.yaml b/Documentation/devicetree/bindings/display/arm,komeda.yaml
index 3ad3eef89ca8..1afd254b6c2f 100644
--- a/Documentation/devicetree/bindings/display/arm,komeda.yaml
+++ b/Documentation/devicetree/bindings/display/arm,komeda.yaml
@@ -19,7 +19,9 @@ properties:
   compatible:
     oneOf:
       - items:
-          - const: arm,mali-d32
+          - enum:
+              - arm,mali-d32
+              - armchina,linlon-d6
           - const: arm,mali-d71
       - const: arm,mali-d71
 
-- 
2.53.0


