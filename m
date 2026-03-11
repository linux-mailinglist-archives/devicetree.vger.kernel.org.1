Return-Path: <devicetree+bounces-273839-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCqsHMUDsWmFpwIAu9opvQ
	(envelope-from <devicetree+bounces-273839-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 06:55:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4025725C97F
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 06:55:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E28773170646
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 05:55:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17634345757;
	Wed, 11 Mar 2026 05:55:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYPPR03CU001.outbound.protection.outlook.com (mail-japaneastazon11022128.outbound.protection.outlook.com [52.101.126.128])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022F219CD19;
	Wed, 11 Mar 2026 05:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.126.128
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773208514; cv=fail; b=rW5wHeUH+R2a2t4VQ7JPRnQMOx1gr1Q41YmKhRuCptOPe5oeeqK5IijaTZmj9bPTCOy6h97/HNLepBsWpvB+E450bpUZPmpN8UeRBqwm02jvD1NB2PYuQDVIBCu9yXkuuavvdacZtvaywulGhddHC+npyjbqcTevSKYPnugrmuc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773208514; c=relaxed/simple;
	bh=T0D7TD6KXN/OeT23Jk1fh6KujAiY9sP48fk/J8aQAgI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=iuzU5D0Ht2QM5QhAcGAJiTiPUskR180liP89TY1S7WzVIbMNusdiDpbEjy9rf1YTszGHRkE6FUPlhr+R+ng0m5PDdgNKq2PiowePggSefAk+JntYRjlVm6SvKoLrwffsCiqWqnWCtYlxwXqlT4sdbHprn7FK4+irUUYV0RGqXEs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=52.101.126.128
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mkj1SN903x5duJHc0tZtJf5whSxcOR6MfAjPjQXWJTMlzVsTWb+TRuy8Q22KPylN9Le0gkl2nY4/JfXD4hlql3wrKzZPpJCp9KaRumr3WHsCaQ122e63nVBzWn6j5WlR5ihSEBlT9y5AmU7B1L6VMnjdAhyubVz+lku3ztqTri9TOEEu0VMYtRE3kyq2YMu3RNJrPzTeZo+Lsx8KFR9/HOYhbJ52gHZgBcLO+6NhzYVLcV+WaGIWPnKV6dfIE5p8lvvWbWxFk+COkB5XZwB3pvXDb0+L7TgeaMeeUbYBMB0LUvesP/8SJ10VmbSE1wrAbxIMeEna+5ZaYM21tvmoLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w56Yp56De1MnzNdOOtyDLkz8Gx2eeo4iYLA1Z9cP60A=;
 b=eosDg7DC7Q4TxnAej57p/77lHNLGkkq9ZzNXXqrdUDEoJlD0wa6fLhR/oQNygRAR8EhHyLMcRIkHmg+fSbbZq/ir9FcMklCG+Q0FYaRHkFoPw+eQ45AJUXQ8HNSoPjfvy3ra40VPdpT9jnKOHMwrI9DWZZkrxmy7N4Q/ROL6oLd9syMmgRDAUgSKYg/vd9a33ccMRPsfYMUPCDHgjr27Bpcr80T8T0a90PTqhY7/rNbIv2nLMLXXVdKF3WgLlgX2+Dqvu0WAl3sfpMklLe36O8LvN8WSqCYyV/9TY0AFRvJWdBYIVAfVUA+z1JBHcNgP6wWk0GbL6kVFnlEn1r8IAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=arm.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from TYCP286CA0360.JPNP286.PROD.OUTLOOK.COM (2603:1096:405:7c::6) by
 TYNPR06MB8401.apcprd06.prod.outlook.com (2603:1096:405:3b5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.25; Wed, 11 Mar
 2026 05:55:08 +0000
Received: from TY2PEPF0000AB86.apcprd03.prod.outlook.com
 (2603:1096:405:7c:cafe::d0) by TYCP286CA0360.outlook.office365.com
 (2603:1096:405:7c::6) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.26 via Frontend Transport; Wed,
 11 Mar 2026 05:55:01 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 222.71.101.198)
 smtp.mailfrom=cixtech.com; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=cixtech.com;
Received-SPF: Pass (protection.outlook.com: domain of cixtech.com designates
 222.71.101.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=222.71.101.198; helo=smtprelay.cixcomputing.com; pr=C
Received: from smtprelay.cixcomputing.com (222.71.101.198) by
 TY2PEPF0000AB86.mail.protection.outlook.com (10.167.253.10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Wed, 11 Mar 2026 05:55:07 +0000
Received: from cix (unknown [172.16.64.42])
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id DEB9E4350717;
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
Subject: [PATCH 0/3] Arm China Linlon-D6 display controller support
Date: Wed, 11 Mar 2026 13:55:03 +0800
Message-ID: <20260311055506.12023-1-cunyuan.liu@cixtech.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY2PEPF0000AB86:EE_|TYNPR06MB8401:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: f26e5808-2e5c-4f12-4eda-08de7f32c007
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|7416014|82310400026|36860700016|1800799024|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	DGcNMyd/5shLhUymoVYYVI261ronVne2/afHJfb6tfoRNmamCJ5SqPrS+grqBj8+7t9Q08k1Jyf2t5/EAydwon9no3Am2m3kDxbMm2RAEbywHj/qpgSlGC5HG1n0GoOxp6NQZMwyGCgkMk54n0einm2UyHwaXzb9SPTHFbNLUb/HAxnrcyg2kJtWWxLpwxW74J/kXPfubX0Xvol90o0jFRZjE8a8IjBU/sfbiUIRK5O/wHJeXN8U0SHxoNuvgPORs7FQ3DnQk7g2/ZJhYgDO0GrNevq8QeLMG5Il+oL2NZT4NwNdOl5sylg0bBnHrVOJhsEP+NqxtW971AJU4N1XHVD55rDY2Q+zYeXhfebFjFSU3qB5HH9Nog9k042Rulma5J/qyD/MbeF7X8aWyZpP+vuAc1P++i48MIY0whkcFyKnV+wLyPm7lg3LKZ8aXoBytWJaLVjQuWNfcMuF+31ykXermviwOtLDQSjV0T409b+wL3sazANRTnKnZnuidX5OzzHFr0OlIvyJ/Uj7sI3WZHIVbLXOLFGMfRJYTEtoBSX08zjcbf3dossUy1hc8w4t/AV8pTftPezi+kJGgTVPuZomW8NLv8Mckk+yfcOHYVfHmlP4xyaEYbgCta/TkAVJXz0KcL6Lo+vJNxY+Rqs7ul+eFZI8+s4lNgOrg5cN5pOQNXabrp6965ftiVH8sLOBH/bBVh4NRWsjbgeZtwnGyjsnz8p/6DeYfKuGngOJyNmuSW2L67nyWagTc6Y7CchzRWxtd+k00A7uiVNWD1+cxg==
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(376014)(7416014)(82310400026)(36860700016)(1800799024)(56012099003)(18002099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	qevijY3IXNUlUycumRaxNIdWf801MWvp7cmAongdfyOJbNJWljxYX8LfDRcTJFPfbf4XDaOnlGzqSBOz65xI/WyJFpTuAuLTAcLPCmrg6hH/hzMxW/TS8A87Ul7hb/El7JjX5W08q7hbJy2m1PF0WpZu70+2PYniyPstLCqd8svKzkxQk46x3z4WQ9IM4sFKxcDhXd6YhTdPktWKLyK/cm+zV0hOkj9guke6ZmKHL60rRxr1k2yzsctqpo9TVcP5kH5BZ6rfIZncsNqheQPEsQXldsaOyKx7J5vyygHfD/nflcanNjdE6mDx7G7PJGieeOpUTL6pYFDcLBwQ43MAUoidtpW34TvtcWorOKYRSYg6LO/hODKyz86zalWct1QhrVoZgE8IBVdltiHcwKW5vFX0isRhAPqoN12HN2uPTggCC2/L1JNuAWWwMZEpljyd
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 05:55:07.7860
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f26e5808-2e5c-4f12-4eda-08de7f32c007
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	TY2PEPF0000AB86.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYNPR06MB8401
X-Rspamd-Queue-Id: 4025725C97F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-273839-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cunyuan.liu@cixtech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cixtech.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Adds Komeda DRM support for Arm China Linlon-D6. The IP is register-compatible
with Mali-D71, so we reuse the D71 code path.

  [1/3] dt-bindings: vendor-prefixes: add Arm Technology (China) "armchina"
  [2/3] dt-bindings: add armchina,linlon-d6 compatible (fallback to arm,mali-d71)
  [3/3] drm/komeda: add Linlon-D6 product ID and of_device_id, use D71 funcs

Tested on Radxa Orion O6 with Linlon-D6, basic display bring-up works as expected.

Thanks,
Cunyuan

Cunyuan Liu (3):
  dt-bindings: vendor-prefixes: Add Arm Technology (China) Co., Ltd.
  dt-bindings: display: arm,komeda: add Arm China Linlon D6 compatible
  drm/komeda: Add support for Arm China Linlon-D6

 Documentation/devicetree/bindings/display/arm,komeda.yaml | 3 +++
 Documentation/devicetree/bindings/vendor-prefixes.yaml    | 2 ++
 drivers/gpu/drm/arm/display/include/malidp_product.h      | 1 +
 drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c          | 1 +
 drivers/gpu/drm/arm/display/komeda/komeda_drv.c           | 1 +
 5 files changed, 8 insertions(+)

-- 
2.53.0


