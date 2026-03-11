Return-Path: <devicetree+bounces-273840-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cDo3I8wDsWmFpwIAu9opvQ
	(envelope-from <devicetree+bounces-273840-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 06:55:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B6025C994
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 06:55:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 46ABD30304AB
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 05:55:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75E5F350D74;
	Wed, 11 Mar 2026 05:55:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from OS8PR02CU002.outbound.protection.outlook.com (mail-japanwestazon11022126.outbound.protection.outlook.com [40.107.75.126])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487613346AD;
	Wed, 11 Mar 2026 05:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.75.126
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773208515; cv=fail; b=ZF6D+bpyokaa3bit/qZj3h9bkomoNx8b74z0NPjJxYSvqrlgkkB7Rsrh+0fzkX8t2O+yU73zHhJn2xQySZak4raNhaLnGDAHkY7Lr8n/dw5lZItra1iD/DaHcsiBDbu4D5bktzpp/Sk4J+SB7UE+I5o3LDf41FVWTu/OQ8WYNlo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773208515; c=relaxed/simple;
	bh=gHb/nv0e/TGEyRjLD4sTBM4vjYlBTOwE22Jcvz9vJ2Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FEGqnYVbSXcX+fU65dDxVCUC89B+7WHb+BhFWuRvvhvT2dcAaxItQGUWTOqlGMzpAUV7/1feXaQQ9/qZzZqYGLjjeyfuK0OmtX0YzQb7/rfCAw4u6vXHXbOCIw90YcIY8DgnzyBRzedKvwrzEKC3hzI88MaEvCl5dVWExy4Z5Mk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=40.107.75.126
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fufYuLTDCwdu232WU8UByPi9H0XB0PA66s9chCHb3rouPxB5W9qOAqKYgqw19B6hlyx3dt0MO7k7sQpOKIEoEaZIueL/fby10JpV9xnCeg/Y6uP6iOO/NrWvomEHTvmUQvz0I/ZJiLCO3IoZwmauua2cCAgGbTUCuZRuMHHBll6PcS7nkSWTvWXtOkQamJW5vVe1lKL/q6cc5n5bPY1LTg1a5VEgGuMZ6cBRKQ6NvrCGASqhSHqQyotfAfU4RNX2hh1DNQ7bweo7LRc0zCYmBAq1/nqF8bt3uzpaPaMK0wcW3VvMg26XwUgxTTNPqyG3FaU3TL1GXywsgzI33raBFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SvFH5+92tQZ/v2VqA4EOmjfa9dNTfXmxV557R29BEUE=;
 b=dLGYKONAuokqFeiS5uwKvP/X5FX+evuRwMG2qe4AeWxa+LFpPFQGx0u0sJC9lsJbmoOBqZKeeuUEYp4SVPkIipZoSgdlqfIfWa/zJXwa8OrOZOxdYEzW2ZHnrUny6UJGWuH1EAdSREB9SbKynPJgV83R3g0CdDIQqSWiw4aEMiWkINxg2WdrXRoP+fGdUd8SsvJ2Lb2B1tYwC+zBFLbJsNzVdMhqxIO49XAITYZlStYWaPmoRYp1ITxvG0gALLoDih0Jsok03+GoXHlIDGIuAFlZ4MZUfdObu8/5MI2VvRo9Ymc7FP5lnZvQ+zeNVrVb7x2obR6EvjHsVfm+cSxvNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=arm.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SG2PR03CA0130.apcprd03.prod.outlook.com (2603:1096:4:91::34) by
 OSNPR06MB8212.apcprd06.prod.outlook.com (2603:1096:604:45e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.25; Wed, 11 Mar
 2026 05:55:08 +0000
Received: from SG2PEPF000B66CC.apcprd03.prod.outlook.com
 (2603:1096:4:91:cafe::c0) by SG2PR03CA0130.outlook.office365.com
 (2603:1096:4:91::34) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.25 via Frontend Transport; Wed,
 11 Mar 2026 05:55:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 SG2PEPF000B66CC.mail.protection.outlook.com (10.167.240.25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Wed, 11 Mar 2026 05:55:07 +0000
Received: from cix (unknown [172.16.64.42])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id F31834350707;
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
Subject: [PATCH 2/3] dt-bindings: display: arm,komeda: add Arm China Linlon D6 compatible
Date: Wed, 11 Mar 2026 13:55:05 +0800
Message-ID: <20260311055506.12023-3-cunyuan.liu@cixtech.com>
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
X-MS-TrafficTypeDiagnostic: SG2PEPF000B66CC:EE_|OSNPR06MB8212:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 3a72628f-d26a-435d-6b00-08de7f32bfde
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700016|376014|82310400026|7416014|1800799024|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	g7Na2m88P2a83lITSzteqK9j/II09Yxg4MOBiYXRuPAN6Tv9cEXDiYlFXP73HZZdQAyWx/LGz+Sfnm6LZvzANa7Xf6m24QUwsEk0nmX3FVhbQNNdvAuldT7B0zwNEbwaYcXBNS+WhG0CQKjoSpG14DqwcsRsWa/qfTdcJPBFQ7OlSBArXSt/rb+orodu772cNzsuA0nCpDUXzpzqz/jiyKOiZoC0xzh13uq+rlgLOjEqaHgt/6dhl54pYrAedLyMGNOm4JN7sLd+ZAp/xdBa2/oktNYfpV4pjZTJQX880qlUIfm6XzmeVHtj4FejCTo9rOs7fImaHKTpvK+nvkjxLs+Ld+PwGJL+CySzNLoFxd9AsrDUl5Rtw+LpUjDOZ8u4Hm9cwfb9ZsdzH58yvpKg6Fw9AikF0J3UWFFEQsQxaLAw0yu/zJ3o4BT3JReE/yolwG/ivmOefSLxe3enDDycyWD/cKxGIU6ij8ve4i+04HwyTTh8fddflAWpNxcqAQgkW2GffWAKsnzGl+Y1BDV3p623+bbwZWcj3DEoMgq6bl58MrmQh4E+grEzazBqajP/HBP8I0q/5CoLDALja55ZFyNuNoipkogx+XqOI7jetfXrNMINU+hMtcu7Zdu636v6TKGMR1g39WWbCX2jpqsBAf931aSE0t2Nuu5nEklMnDt+KKZ+ImRjAITNcnSC1ryRep/uKsd4m/0IXVCNU1h9HuSBAPccApBWiuqxun7+LBs0jgR9gyJG2qEcBm2QclzurbX7pgQOz1O/C5GICXtrLw==
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700016)(376014)(82310400026)(7416014)(1800799024)(56012099003)(18002099003)(22082099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	vDrr3qKPDgWxoEKDl5/OEyphsqYKnbTA0xc2Kt0qbIGCxdsMO35KHjOHBG8INUNO3n8iN1NZyNvle6cAeK4EzB22DnafaRmkCTjpOEUq1sjc1QxaXICMC1J2b8ToixMYN3aC9kKQmUPEy0TK5Y68Ks4lw0sQAk/qdr4HPY77MP0sdOoHsevUWAJDPGJKXODt40lNlGcY3mYZEMvulEGok+T8jSGo9bpLqQwzlPsHp3gKf340BQmVFENHA088yXwPmn7qQVwhS4zca7A0d13GdzyKjLTQsw4D/gNe3DSb/XYeBKrhAtDfqNWcvTqgQZvqQ1m4bVMYqnsIlreB89oaXnWEtxyHS3u5yTa16SBs1PhfeizFHIi4lQC5Zxingfi+ut27IqoPBhNSY3TiCh4kSxdLIks8UhC+tqJKtXQAmZDlC0+9drkS19dNcc+U4BMD
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 05:55:07.5598
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a72628f-d26a-435d-6b00-08de7f32bfde
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SG2PEPF000B66CC.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSNPR06MB8212
X-Rspamd-Queue-Id: 08B6025C994
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
	TAGGED_FROM(0.00)[bounces-273840-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,cixtech.com:mid,cixtech.com:email];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add the Arm China Linlon D6 display controller compatible string.

Linlon D6 is register-compatible with Mali-D71, so describe it as a
vendor-specific compatible with a fallback to "arm,mali-d71".

Signed-off-by: Cunyuan Liu <cunyuan.liu@cixtech.com>
---
 Documentation/devicetree/bindings/display/arm,komeda.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/arm,komeda.yaml b/Documentation/devicetree/bindings/display/arm,komeda.yaml
index 3ad3eef89ca8..56fb4103b0dd 100644
--- a/Documentation/devicetree/bindings/display/arm,komeda.yaml
+++ b/Documentation/devicetree/bindings/display/arm,komeda.yaml
@@ -21,6 +21,9 @@ properties:
       - items:
           - const: arm,mali-d32
           - const: arm,mali-d71
+      - items:
+          - const: armchina,linlon-d6
+          - const: arm,mali-d71
       - const: arm,mali-d71
 
   reg:
-- 
2.53.0


