Return-Path: <devicetree+bounces-273842-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJsdNssDsWmFpwIAu9opvQ
	(envelope-from <devicetree+bounces-273842-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 06:55:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8074F25C98D
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 06:55:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 153883032057
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 05:55:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60080368263;
	Wed, 11 Mar 2026 05:55:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYDPR03CU002.outbound.protection.outlook.com (mail-japaneastazon11023076.outbound.protection.outlook.com [52.101.127.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16A2345757;
	Wed, 11 Mar 2026 05:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.127.76
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773208517; cv=fail; b=U1x5UEgjaA9QTxxCy8LQD9pGuk07/AkNcZg7riGKTnAFrn7mJ7YD7OyvnWLraazc9lwgr8QjubKEfffaNPIJhdgkNeZo72Jx2jVVeSLppLy0wgsZuo3d0Hx3q3I2CqP5YdxIJMrPW1bcIqoKwQgdMl68TENxpsROO8rOy2Uf7oA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773208517; c=relaxed/simple;
	bh=du0ggd7ttvb5whGXMvxFWYCQuO4JtfAb7ISwM9O2fWs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=IugxC/hL3gvWBEGHN3PlgYkn561S0inw1Ze+5XV8k0RaTWJWSxkdq2NCtMAv3345Vh8lBFBXtAuXr51iyt0YOaw7Nl2uqyzlej2Cs67MAQhSHgsDrSV2DVPa/BXbuLtyp27GlK0AD/ghpvavSmEip7ePihvL7eqmA/A+hHWNhcs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=52.101.127.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p3pvp3ReLSJRasqTv66FJCNAKhVhnR9aHy1iJQoImxShw2cgbgRqQ30sdt83By/lT6CuUeOaF7ptkZZ4udR8njUdxPmggANutEpf6FUkpE218rVNIgc3PrIgO5nQumZoEsXiLzYBdBK4HMoTny+EPXMIrneEdaJ39xrNIDYwm6quNhID493jLkprM1bugwWUynUP8Qf3i6NYmhOKeR956/Ll9jn1J+gwU0kqZCuHJ8u8UfWDzyVyoPrdAvBy8LJzJp+T9yfJ67KhOgtoVvj19qe9HNuCzNeWdw5sp5W3bmlTXIG1ltHiOdvdfkMKon6u9L0Nl3C1NJlRndGvw0BNlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DnQUTOzJTBDuE8Wng78T9DrwRAVnBC95p3L2lD9f4yc=;
 b=chrZWOv7zsXSiMixmjG6xaJihSLp/WImy345kEkjJZM0D8kke+DLJcJfrQp/zdkQzYS9y1Efxe9blqHkTbLs8iLI5nut7USUosJ9QqRLsfu7U1X8eHUV6tefCKSBiiEOJH5xjI3WjnXchLi4WNCpzpiC/LrKzab4QHLgoZFVrA2Yp/n/IIw8FOn4D23Cd/xWfL9/apgj2GsNEBwHcFrAdLxpv7UwNiXL0cfu+6oQAKVLSNvlvMVyAnZhHS/nPrb3VwykUIRm4bBM3fxDqxF1pXN1vB44i+qMUKjkTC/XZj3c/FcgHARlXXjamqUeiTRcwxD/hP3cseSyaf/WCR7iKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=arm.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from SE2P216CA0191.KORP216.PROD.OUTLOOK.COM (2603:1096:101:2c5::9)
 by JH0PR06MB6533.apcprd06.prod.outlook.com (2603:1096:990:32::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.25; Wed, 11 Mar
 2026 05:55:09 +0000
Received: from TY2PEPF0000AB84.apcprd03.prod.outlook.com
 (2603:1096:101:2c5:cafe::75) by SE2P216CA0191.outlook.office365.com
 (2603:1096:101:2c5::9) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.26 via Frontend Transport; Wed,
 11 Mar 2026 05:55:15 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 TY2PEPF0000AB84.mail.protection.outlook.com (10.167.253.9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Wed, 11 Mar 2026 05:55:08 +0000
Received: from cix (unknown [172.16.64.42])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id 0E87E40A5A01;
	Wed, 11 Mar 2026 13:55:07 +0800 (CST)
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
Subject: [PATCH 3/3] drm/komeda: Add support for Arm China Linlon-D6
Date: Wed, 11 Mar 2026 13:55:06 +0800
Message-ID: <20260311055506.12023-4-cunyuan.liu@cixtech.com>
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
X-MS-TrafficTypeDiagnostic: TY2PEPF0000AB84:EE_|JH0PR06MB6533:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 7b0f6e7c-0627-456e-24d5-08de7f32c062
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|7416014|82310400026|36860700016|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info:
	H+JsEc2KtoE3DCP25s3sS7E9dQfvJMbka1k6d5CJdSicX9xamXd+61ho7FiPnvZ3OLDuq5w1dbJg4Rj33g5anNi7JDJzc2zlddNJPoatsJt+X7UWrKyz539xnttC7vtxaWI+ISCeKvkDwn+rv2FyvUvdtAJJ5lN69A+HDPy7ujDqddYpTgDvRakRjiNLlyXcg9spyoD98sSgi4faDffmuDvaITUmdSbFpWLOQMoW4pJLoQ/f84U021eTvq2raohHxxbGQDhfQjMev6QR9O8seMaRQmVKvR6yMpiVhbrtaJbxV2rTeb+FQ9zbvTsUmCzByuCvmpFBVvbGqbIxazyzqpkG51y7HOW1Amtf1uZ7ioZ7ZfetW2lQgA1J2dBdhGVZmrMOGr4xba4PiUg+eYH3hoiHwn7aZyLB+d6riNQSBLJIqyELL8WecHtdU6zmrR9Z8yxtKGXGXKqBpDMOJWoKjGV3Ng8YEBb1i8k8itSlkSg71PlXHkV46ttX/YpvtLfXyKQc3dK73UQCnj0Nsz9BC7WO8bBWWCPWjinI7QUtVDtIrQvgouXbMF9/bDosZFm77fH4TlsLsPK+gtFdTpg2XusVJ87zA7EnLlG0OocddckOZ91xkg22L155uNSBjzqaekNiUR6vo1r92zv5myXHna1vV6jy5hcHDqYsStq9Rmx2vyOOzeq5vwVhBUEtZl3g9W5h16ekcH7VqlDWb13TZ5fmgxblli3RBje91fMZfzVGy7BSv80WVr4ewoJxQB/iK06lXvSZjwY05kk+elMOaQ==
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(82310400026)(36860700016)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	ASx5dpIcjnpxnuO2pPUTkNyC7cBBbU2aq2ISJfdt0Vp3yJ2Pj46P+qRcn3xWwUPCXlt1mFrdI9pdAYOiN3LOH5t0DPLLjHdOe8Jhfw7G5qOKCt002uXvLxPOMzaQ9rna35j394z92J/ScUr1197ZfRYjOJ2KUtqmH7oUD/Qw2VNZ/q0xl84GLEJNWJrbYdX+GFvt6PzFMUk4wKyf0gj6qx8DL+anXOC14i5gNhfLGGQnglWljNbuamAZeuJMzGHDC8BZ04V6Algmc/CWwoduIP4gQpGO0PolBMpU5MhtWDXBcRPrn1Ccuh6A5JdU3dwXBfi1cCPNpE68KyAmM7QgokicYUdNb5IAeuckvDcN22hwc+Prj/hn5+4r9q9K99ESG304iXvOdIbYEzvuTynHSANstO16eOv2E9X08kDdWxS7qByhkSrCiPEShozYna2k
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 05:55:08.3316
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b0f6e7c-0627-456e-24d5-08de7f32c062
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	TY2PEPF0000AB84.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR06MB6533
X-Rspamd-Queue-Id: 8074F25C98D
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-273842-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,cixtech.com:mid,cixtech.com:email];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Arm China Linlon-D6 is register-compatible with the Mali-D71 display
pipeline for the purpose of basic modesetting.

On Linlon-D6, the PRODUCT_ID register is located at the same offset as on
Mali-D71 and reports 0x0060. The IP also exposes the same Komeda top-level
block layout expected by the existing d71_identify() probing flow, so we
can reuse the D71 function table to bring up the display engine.

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


