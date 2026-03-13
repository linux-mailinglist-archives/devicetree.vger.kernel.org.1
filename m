Return-Path: <devicetree+bounces-274867-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKUZGBaFs2msXQAAu9opvQ
	(envelope-from <devicetree+bounces-274867-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 04:31:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F018227D1F2
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 04:31:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 93174305EBA7
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 03:31:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 162E334D39C;
	Fri, 13 Mar 2026 03:31:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TYDPR03CU002.outbound.protection.outlook.com (mail-japaneastazon11023096.outbound.protection.outlook.com [52.101.127.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159D7342C8B;
	Fri, 13 Mar 2026 03:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.127.96
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773372689; cv=fail; b=On5Ybsj0HaOhqTzUSV4IiBaiGNVKzb9v/W9cZH9kROSNcer8oi0msX66fbs7CP6RpUqluOtY0Im08QyxNNxySlV8imC5CkN/8p1gC415YQT+GAANgQGr5XoVFSL5urZa/9/gozPGnM4V3kflINNJWovzEtHdSXnWCTTFnN88U7M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773372689; c=relaxed/simple;
	bh=C7fErHXXlOv/3N8dZKwGe7iAsw4UkS0GkgcbGovvA5U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=C33+Y6QIaAu9GKsAp0DU0lE/zJUAGu3AxlpjWeAgfcqijXIJqrm+dQxcMjcoZckS2nQwKhM5Nop5w+jYWqpQXMKbFIMKek8DFTg+cCuojCgxXXBePMy3KM8vAwUnEXqn7mMmlWZikbAseHS6Q+IoVO2VeZQRtlduTMVIw3rf5IQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com; spf=pass smtp.mailfrom=cixtech.com; arc=fail smtp.client-ip=52.101.127.96
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=cixtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cixtech.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BVXkWnJYpB0f3KetmfsuTngPLzgv/l0SjXusg66XxNmmp7GJCw1PGkXyGLjwfpPk0yI43xD9rl9JM7Agl2X6fHC7mUkxomuIuOAeuI0qoYLg6yVOSrteYfP8G61jhq+0p6qFw9idjP1IAWLhlppETM3TTqnkksHK6ARdiCK/i8WYjVkXVkNOXvpPeIzEhP0fiuspr6qJJxBWcT0YcsYKMrMpM/InoZbQxEmvBP2I53ckFPSzPTA6wUgV7mF890JWl75K7C9UF8X2INX7xX+IiKkYDHzsfjBQcAHtOzB0HMs+VUdaSUN9FbI+Qcg7rEkgqINuE68PdwYhvvbItyS1XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j0IRboASkZu/bMACbgNhlDBXKJ3ArEKo0n5mulo+uWo=;
 b=lv4KYTc8/rgMzlNUfsu8PwUWyAWNFj2dq2Cql3gJ5QYjzSg7e5i3l24wcKXjpRLEkDr84SsuP6Upipi8qf9vziKTbO8V4keNWbg/LWdvj7oZ0NINbMkfBghESfvPicSr7vxhZABMYx9lrQ+vkP7PT/VOp3cnB1WUIWlLCYzAwxdiI3ktTDGzi+d0JweAJbdPnRf3rlMuUobZllY/PGRYHUApVplQ3GEiKKkWCHsqa8yAi57Sf483JWW8r8mZ+fhAs3m0lsXKGz1HKBvxY04FgjXeoQZKBRpw/7Zb9YirkXEMGCdz4adgWodXQUYBrsjC+LTtL/Ur/HYgONVDXOj3LQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 222.71.101.198) smtp.rcpttodomain=arm.com smtp.mailfrom=cixtech.com;
 dmarc=bestguesspass action=none header.from=cixtech.com; dkim=none (message
 not signed); arc=none (0)
Received: from PS2PR02CA0045.apcprd02.prod.outlook.com (2603:1096:300:59::33)
 by TY2PPF5EE8C6F8A.apcprd06.prod.outlook.com (2603:1096:408::792) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.19; Fri, 13 Mar
 2026 03:31:22 +0000
Received: from TY2PEPF0000AB83.apcprd03.prod.outlook.com
 (2603:1096:300:59:cafe::7d) by PS2PR02CA0045.outlook.office365.com
 (2603:1096:300:59::33) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.30 via Frontend Transport; Fri,
 13 Mar 2026 03:31:24 +0000
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
	by smtprelay.cixcomputing.com (Postfix) with ESMTPSA id F108C40A5BD7;
	Fri, 13 Mar 2026 11:31:19 +0800 (CST)
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
Subject: [PATCH v2 0/3] Arm China Linlon-D6 display controller support
Date: Fri, 13 Mar 2026 11:31:16 +0800
Message-ID: <20260313033119.33686-1-cunyuan.liu@cixtech.com>
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
X-MS-TrafficTypeDiagnostic: TY2PEPF0000AB83:EE_|TY2PPF5EE8C6F8A:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 01b4d406-ff12-4f87-022c-08de80b0ff22
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|36860700016|7416014|82310400026|376014|56012099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	sab4KzK2mySXxiJ+auz68yddyMaBO31Bh2PjaLCrYoeH1UAya9dw9RqQAo/SDXRIbOGPlMPzqvf1FiczJyTgN0TVslbCkC1vELvuIgLfi/22QubjSpq77/ZHBai4ZFTo1ufAbaJvsDCvPxp6FTJ9qiAR7T0Dkx5RNUl4eVrhCfrqS8HsYj8/qPAaXGKLmRe1lBka8SDIwrkWdqgeEyxbXyQViXIoow2FQ6nrpHw7qlSRTem5TDL+aI60cQNfs90QvBy1GVc4xyaOcX9fHLf6gGAB74PFDj3h3NH+l8EvvQDQ3ahiKuENgCrJyQYToXJ2+TImTsP/w/6E194iwitMjf+c9z+/JEQcGFSjarufDCuUyRPr6kuR2OFCpu9YRYfOXBa1A+b+f22arYYajkA/w54k26zZm1zgydIqP+2OalOGkQ6YM48ztGHXZVrttO83Soz0fUHUNyvRlBUS7bdCcAT8DSmrI0P0gg8z+I6/KNKALfUHv4bvHNCV3e6FCYOaR8IEA4S+fq7tVJuBT2tt2IdHkvnPGCj6LFXutCsoYiQPBfjCIytpu3NNYC6mczUOh9qpPWVZjQ9qIw1DF4iVJowNEum8TCv+pr83+flvAisgMscLPNPKvsf+Clyvp7vN3YEi7TP4MWeTP3b8L8qQvMMPP7fqdpGHOn/9ZPOhd3GRPviCmeuwTK/fBQSQNGu0oXFS0C6kJBSwBhasmv/H+iyQhI7TAHnOPoBpClWeao7HonEhDDlvVLBvtlpKnGjqifxrjs+tI30aviv9SIY/wA==
X-Forefront-Antispam-Report:
	CIP:222.71.101.198;CTRY:CN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtprelay.cixcomputing.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(36860700016)(7416014)(82310400026)(376014)(56012099003)(18002099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	wXOGuKLdf9Vykxrr1iHPjicImHnQOZCt4P164PlTWKPG7tT1LZD0Q9cecTOY3LlHzI+CvL8l0n1Kl9tkAgf1B+nVgzCp6msHSYCp4hos2eCXKtc0wgtl8e2sLaMjpdzeertHfT12b8AgPy2KTd7JiFx16Lox3jlQ47Y2MVtnYSXDZFb+SaU0hc6MtVW46tZaH0dtpULZpto6Dq69pyOr1FvgTqTgS1oz2HRDjRe6GtpSB+JitcFm6XYM44ulZCboLUpuLd4RMu5j71ek3kxW/dVcE4Iwpj2nHdDDjhgwQw7+6Xuigh0c4d5CM2aqPtxTFL+gnDGrcDcqdfzjFpXYgdc7ceY0L7j6B0T9zwz53ZQvFpFSOyaTAHZruUL3E+NMQ5mlJwx5qjaMzJf0fK1UueJtZVB2kkmXvZMEu2nve3+5w6ovTsKx6wEV9BIOBNAM
X-OriginatorOrg: cixtech.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 03:31:21.3630
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 01b4d406-ff12-4f87-022c-08de80b0ff22
X-MS-Exchange-CrossTenant-Id: 0409f77a-e53d-4d23-943e-ccade7cb4811
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=0409f77a-e53d-4d23-943e-ccade7cb4811;Ip=[222.71.101.198];Helo=[smtprelay.cixcomputing.com]
X-MS-Exchange-CrossTenant-AuthSource:
	TY2PEPF0000AB83.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PPF5EE8C6F8A
X-Spamd-Result: default: False [3.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-274867-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[cixtech.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cunyuan.liu@cixtech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,cixtech.com:mid];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.807];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F018227D1F2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Adds Komeda DRM support for Arm China Linlon-D6. The IP is register-compatible
with Mali-D71, so we reuse the D71 code path.

  [1/3] dt-bindings: vendor-prefixes: add Arm Technology (China) "armchina"
  [2/3] dt-bindings: add armchina,linlon-d6 compatible (fallback to arm,mali-d71)
  [3/3] drm/komeda: add Linlon-D6 product ID and of_device_id, use D71 funcs

Changes in v2:
- PATCH [2/3]: rework compatible schema using enum as suggested by Krzysztof.

v1: https://lore.kernel.org/dri-devel/20260311055506.12023-1-cunyuan.liu@cixtech.com/

Tested on Radxa Orion O6 with Linlon-D6, basic display bring-up works as expected.

Thanks,
Cunyuan

Cunyuan Liu (3):
  dt-bindings: vendor-prefixes: Add Arm Technology (China) Co., Ltd.
  dt-bindings: display: arm,komeda: add Arm China Linlon D6 compatible
  drm/komeda: Add support for Arm China Linlon-D6

 Documentation/devicetree/bindings/display/arm,komeda.yaml | 4 +++-
 Documentation/devicetree/bindings/vendor-prefixes.yaml    | 2 ++
 drivers/gpu/drm/arm/display/include/malidp_product.h      | 1 +
 drivers/gpu/drm/arm/display/komeda/d71/d71_dev.c          | 1 +
 drivers/gpu/drm/arm/display/komeda/komeda_drv.c           | 1 +
 5 files changed, 8 insertions(+), 1 deletion(-)

-- 
2.53.0


