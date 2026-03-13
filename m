Return-Path: <devicetree+bounces-274866-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ID3+JhOFs2msXQAAu9opvQ
	(envelope-from <devicetree+bounces-274866-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 04:31:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F8427D1E4
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 04:31:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2F500302F169
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 03:31:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2D0034D384;
	Fri, 13 Mar 2026 03:31:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYPPR03CU001.outbound.protection.outlook.com (mail-japaneastazon11022114.outbound.protection.outlook.com [52.101.126.114])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3720B346E71;
	Fri, 13 Mar 2026 03:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.126.114
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773372688; cv=fail; b=XeEefjNu5AabN6mpB63SRsMfF/T1K+ytLIPAPBXZpObIOqGXEibz0ZpR7RfPnHwz8Ub/zRlzppH5Xft+dQxox5efY29nR0vN3oqtigqc8b+0+7BToCrvTbS7AA5CzM1RwWD9dDLXLZZj3yTr8iPo3SKOXnz9W8Xlg7/JGPYMh1s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773372688; c=relaxed/simple;
	bh=sGX1eq6Z6uibzk/Bbi2Vo28k/sLao+djxN0HWDKyUMk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TinnYP6Eay0TYiBMCqHRb+zbi85fqTwSQmKYt00DqmHlUI+u97Ljd/CwzNo9uqkxx7YAVhQuLORlCkX53hl/BHxVaew2Ye6WsmdZESctlkQmtOZ9i6+YzZzxGwiGgMmag60t+/cJtkanXazIYaommK6W/dmQakxsYbkWV0iOUHQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=52.101.126.114
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JGOAJuL1Jkv2fesYs7rZqLSN/pmUud9RsxtrsNROsbr+y6sfeiA2qmZjXqaxWQ20VyXfu9DbhtTMGDuCZiwmpXnq4aCBooOQmdMLcpQyK9Tp1xvh2wn3adgtzE6uIFRh5ydQgdTnIVyswBoT8kRwg9CQX99uiAVtWl44TYmKsSfyGh/L6wtQv1IdOmFyY2DFXlitKLVTnCsuQXO9+BsSStfY1wczuVKKnzpdiZav0bRi4ZZ5BsQ+oNzg0TgHd7UTU3j5pDl/HLJSEi8JRBWN2OY4VZKgZOnu0OR0Yz2C4cfRc3dqtqNrIz14JihqcHSTbha5jWQ0G57k2SlhlJZ9Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p9MNxInqI+VQ6BWy/WlilNnPq5BYdwCKRrW8O5Hf06Y=;
 b=d7vsPUOkqIfnNInMsMN5eaGfm5DsvHVkDz1/zo9JJHx2a8ku7G49zHNZeIH3fklpOMAyUwVd2dGmZWNXy4wpKdVDeIAdLdndFj/uU82z355N2NN320WwGl0DPkPbTYPRCs5rNnwMZUekkrCFPVo1daoz5aMX6IuZNplEvnUCAAGRqtQx/yXciixf6tYFlDy3LzOgm8rP+AptFFbIGgvK0zwJfHXW8oH7NPe8smGKHezHdhJ+caS4r2RGzPDoE9p7yLnINWlyK25LbD/H+2AZL/ZzzSR3SWU8fEO89E6ZnyGb/VdD4oNegq+z4BWVoIxuj6ltFnFogXPyMd17r8kZ6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=arm.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from PS2PR02CA0048.apcprd02.prod.outlook.com (2603:1096:300:59::36)
 by KL1PR06MB6942.apcprd06.prod.outlook.com (2603:1096:820:129::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.15; Fri, 13 Mar
 2026 03:31:22 +0000
Received: from TY2PEPF0000AB83.apcprd03.prod.outlook.com
 (2603:1096:300:59:cafe::e7) by PS2PR02CA0048.outlook.office365.com
 (2603:1096:300:59::36) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.29 via Frontend Transport; Fri,
 13 Mar 2026 03:31:25 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 TY2PEPF0000AB83.mail.protection.outlook.com (10.167.253.4) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Fri, 13 Mar 2026 03:31:21 +0000
Received: from cix (unknown [172.16.64.42])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 2E44D40A5BFA;
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
Subject: [PATCH v2 3/3] drm/komeda: Add support for Arm China Linlon-D6
Date: Fri, 13 Mar 2026 11:31:19 +0800
Message-ID: <20260313033119.33686-4-cunyuan.liu@cixtech.com>
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
X-MS-TrafficTypeDiagnostic: TY2PEPF0000AB83:EE_|KL1PR06MB6942:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 77c9a427-afda-4404-d809-08de80b0ff19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|36860700016|7416014|82310400026|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	tVAG9aKYD8/keAprj1NZZH91wybjJwRdwTPfXE0bq85Zh3ZAHdw7rd2GbzzsA4zJCu4J6k5l65fl8aFcF3vbyltMSPKNywxpfd2G/akMamgONFxzGODsDfaRy5gvXizRclxIoHsVFdmPwgNrwUE7vbcSgF+bhWP4WQzFDMAaxwpMgwm7VK3OrBHWwWMDA0OFskj2TPDfD6jB7ZwA0LHujf15BTq01EA/EL007rESN2nSSc16PTFiIXfUDGRT1ltdV63FL59ke+p+czwgVBqI1M0lCkiZVcP0ZIB113xcaEPFakhnR9DKfNlqx9jTUMAy/tf26JShmUY7nKzge/aeuLnL7B+TCbx4KpGz+zWMddphx0EquD4TwKHu/dVX/rHSdJMFaEY9FQmKCGPDmjcR2f0S50EC5UhwCYOQ5YCl92FOGC/9aic82EdrqWMQdJS+xoMP/fJPPRvVq/BwvrGANPQus2pAUdRi7aD7//WaV3GFgwMIHFLDVoHJKY1Q1FVl5bXmn/THUmPG3a2mynVAFGmsJ1b1n8gbQqSShTD7hoVAJ6D62gKYwfccdZS00QMi3dNNtRukk6okeIvCwLjV5qOfqwDsyAgIab50ngF56NgIVXbimltSsuWDKrfTZYVDjtvSMsOBR7yeSJxKh3qHoIKCqzAHX0gaAdpEdvf/opGTVNXmcOsWL4qYX2PrPd4Mc2/BTYJrJByiTIvZH/FNmlICpzGwtJNR4KR40CRI0chLsQP3Xs2Y+4toNzLaROMUED+0BvUJWXO+yStwsbakEQ==
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(36860700016)(7416014)(82310400026)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	lMWVkWCQSVEv9Kk+I7RHbqTboe1ljqNAmYW72bD7GYHDRaWc1MYfxgkFNOKp43oq/WAhSZBDGZRKGno3la39eGbfY50ty5mP2ID9y7+HCGw+sT24o/MYYRUEEwNl+IZPMj54vRI6+hCmLfEq0Q8H2Ruy+qA9TYbpu9jMHg2mL1eBduZwWdLyrXeSIrqTKOL7kNSrAXcJbE+KzGomeLD6GU8qV0bMC5+8Akq4W7fC84hj+R9Mt7K24REfcL13P1KWp9pdYF3w/MYT3Bu4eQIVB46QKlsWzYP787mKix+n3QoHtasUQricKKM1h0iF9Qfysy1oFCnziKaf+tdhm7CSPbno2k6hovvNztNLDf6yuLlqvQi+MGp05G+TX8iYF1AhW9NqPQY3phgtcYLrYY2KM3T8au5WmUT8UDCtT7i/8INsUXkjvvwGLrLq+Wlw9vgL
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 03:31:21.3065
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 77c9a427-afda-4404-d809-08de80b0ff19
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	TY2PEPF0000AB83.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR06MB6942
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-274866-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cunyuan.liu@cixtech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.960];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,cixtech.com:email,cixtech.com:mid]
X-Rspamd-Queue-Id: 24F8427D1E4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Arm China Linlon-D6 is register-compatible with the Mali-D71 display
pipeline for the purpose of basic modesetting.

On Linlon-D6, the PRODUCT_ID register is located at the same offset as on
Mali-D71 and reports 0x0060. The IP also exposes the same Komeda top-level
block layout expected by the existing d71_identify() probing flow, so we
can reuse the D71 function table to bring up the display engine.

Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>
Signed-off-by: Cunyuan Liu <cunyuan.liu@cixtech.com>
---
 drivers/gpu/drm/arm/display/include/malidp_product.h | 1 +
 drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c     | 1 +
 drivers/gpu/drm/arm/display/komeda/komeda_drv.c      | 1 +
 3 files changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/arm/display/include/malidp_product.h b/drivers/gpu/drm/arm/display/include/malidp_product.h
index 16a8a2c22c42..6f954bcdf40e 100644
--- a/drivers/gpu/drm/arm/display/include/malidp_product.h
+++ b/drivers/gpu/drm/arm/display/include/malidp_product.h
@@ -20,6 +20,7 @@
 /* Mali-display product IDs */
 #define MALIDP_D71_PRODUCT_ID	0x0071
 #define MALIDP_D32_PRODUCT_ID	0x0032
+#define LINLONDP_D6_PRODUCT_ID	0x0060
 
 union komeda_config_id {
 	struct {
diff --git a/drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c b/drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c
index 80973975bfdb..f105e3a2dce2 100644
--- a/drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c
+++ b/drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c
@@ -628,6 +628,7 @@ d71_identify(u32 __iomem *reg_base, struct komeda_chip_info *chip)
 	switch (product_id) {
 	case MALIDP_D71_PRODUCT_ID:
 	case MALIDP_D32_PRODUCT_ID:
+	case LINLONDP_D6_PRODUCT_ID:
 		funcs = &d71_chip_funcs;
 		break;
 	default:
diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_drv.c b/drivers/gpu/drm/arm/display/komeda/komeda_drv.c
index 358c1512b087..4bb5f250e95e 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_drv.c
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_drv.c
@@ -104,6 +104,7 @@ static int komeda_platform_probe(struct platform_device *pdev)
 static const struct of_device_id komeda_of_match[] = {
 	{ .compatible = "arm,mali-d71", .data = d71_identify, },
 	{ .compatible = "arm,mali-d32", .data = d71_identify, },
+	{ .compatible = "armchina,linlon-d6", .data = d71_identify, },
 	{},
 };
 
-- 
2.53.0


