Return-Path: <devicetree+bounces-260154-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCbGF+o+eWkmwAEAu9opvQ
	(envelope-from <devicetree+bounces-260154-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 23:40:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C390B9B294
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 23:40:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AF81A3062C42
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 22:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 449072DAFA5;
	Tue, 27 Jan 2026 22:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="auWOhC3b"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011013.outbound.protection.outlook.com [40.93.194.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BB182E62A8;
	Tue, 27 Jan 2026 22:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.194.13
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769553594; cv=fail; b=nMk16rZ0DsPrDECEMw/4XhsrUHZzl/tj97R4ub5Pme9Papv8uaSUS354vMmSHiRDTAV9IcNCjgSUXtmjePgBgu3gJj/qLeJUENL6mvg8A9yNC02JvZShw6DwoKZBilqMR5kP273wbnPN59GpT9SrzwWRfF33UDpP7gVLxgt0VUI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769553594; c=relaxed/simple;
	bh=UkRuaxfLh25z06GauyvdSy+c8fcJe2E1AVcUvEAFi+M=;
	h=From:Subject:Date:Message-ID:MIME-Version:Content-Type:To:CC; b=vFwWoNtlgR5KVGP3FkEUGrNgsFmPFsWHjaeXJfqzMysEEwNkHuQZ3gkQz5ohMP44rxdE9TLP0i8DUti2L7r3qakvaJP9fYW7CODJ4VPK5ojY3WzA4614M01O2Xt+rYYVASjqTz8yoXAyft3JPc6J7pF9bITYQb3jE28xL7EumSg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=auWOhC3b; arc=fail smtp.client-ip=40.93.194.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nyGkEb5/Jos1lpnAF2z2f9bbAYCzoveRd+m374mA+yOZFHOIvcCq7TwYMZc08qHActPblkL43r4zGSsNELWdeN7e8HX1YwIsMCQYxwZgM5FeMwJ1Ng4XiPaK9vEkIX5hsUW6GqoBUaNiXPHoa7xDJtKNOLy7HC+95P2UxqPQSHFa5yGqPgYkIEHewRlyj50ndKTNd0F/sCeOc2dr1sh/9mowIC23/Otaq6kdziN3y9vebdKAnnr+osEmoZiCz/+rJnRGBoggN5LJ37tJv831EjtgiiVNemAO7m5X+Oq7biFNVvBJbnlysI+HPNdi5/xBMjYQM3op5sNmhhtCm3x8yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PjwKSriPY1xZ7+iLDUqhiwmOp4QYN638Ir9ZOQoVwqY=;
 b=fvyQvzMkomDj9uttoBr9VbWnxeBkWfDSc2d7AN+A4e977wB11brUa6KHYPplBUvPhLWI1VNzIq8M1MhwBLaL959JglQBUgbMG4TL698wCtWuSxkw8Iy2vbIUY4tsy3KRiUS8pD0hfm/Q7KYFgdb68EI5CXbWwlV+iCi/kfpgBWYofpdG7o8MilHcIaAwF731Fpcd+XLLiZLAe1MYiMoWH7XnFuMBe7UloeWbt7wchFR1HeSV/cz3nmWTWYK++OZIJJh6Pcrj2VZ2wAT0BXDjEUQBKdRKwWyciKXJ5QKvzJiM0ffPmW+YmYL507PlQGxI5VbavkvkW78hJh3R5/swqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=kernel.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PjwKSriPY1xZ7+iLDUqhiwmOp4QYN638Ir9ZOQoVwqY=;
 b=auWOhC3bN0jtrUAGyc9AQd921dCKRoKhQArS1xh43ss9MeqHeFm0YsVgBxUfo4L0EMG2rYqgWcmi5fYwIXU+q26JKk1uTynuc4AuPe7hgOZey0pgHIlxD757CTVFgBoYc/EaaqSw1pjbQgndSBwrE1N/cjyT53vtEHG11dmlsaA=
Received: from SJ0PR03CA0378.namprd03.prod.outlook.com (2603:10b6:a03:3a1::23)
 by IA0PR10MB7349.namprd10.prod.outlook.com (2603:10b6:208:40d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Tue, 27 Jan
 2026 22:39:50 +0000
Received: from SJ5PEPF000001CA.namprd05.prod.outlook.com
 (2603:10b6:a03:3a1:cafe::13) by SJ0PR03CA0378.outlook.office365.com
 (2603:10b6:a03:3a1::23) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9564.7 via Frontend Transport; Tue,
 27 Jan 2026 22:39:48 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 SJ5PEPF000001CA.mail.protection.outlook.com (10.167.242.39) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.3 via Frontend Transport; Tue, 27 Jan 2026 22:39:48 +0000
Received: from DFLE204.ent.ti.com (10.64.6.62) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 27 Jan
 2026 16:39:46 -0600
Received: from DFLE208.ent.ti.com (10.64.6.66) by DFLE204.ent.ti.com
 (10.64.6.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 27 Jan
 2026 16:39:46 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE208.ent.ti.com
 (10.64.6.66) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 27 Jan 2026 16:39:45 -0600
Received: from [127.0.1.1] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60RMdjvC1270209;
	Tue, 27 Jan 2026 16:39:45 -0600
From: Kendall Willis <k-willis@ti.com>
Subject: [PATCH v3 0/4] arm64: boot: dts: ti: k3-am62l: allow WKUP UART
 wakeup from LPM
Date: Tue, 27 Jan 2026 16:39:35 -0600
Message-ID: <20260127-v6-19-wkup-uart-wakeup-v3-0-e7ccac761f3a@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKg+eWkC/22OQQ6CMBAAv0J6dk232EI9+Q/jobRFGiKQFoqG8
 HcLiV70trPJzO5CgvXOBnLOFuJtdMH1XYL8kBHdqO5uwZnEhFEmKLICogCUMLfTAJPyI8yqtWl
 G1KhzwyspFUny4G3tnnv4ekvcuDD2/rXfibhttyRHltPfWESgoI2wyOvSSC4uozvq/kG2UmQfO
 z1ExR+bJbuuTroyXOiSFV97Xdc3lTzQk/EAAAA=
X-Change-ID: 20260127-v6-19-wkup-uart-wakeup-11c1c3d5b99a
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Dhruva
 Gole" <d-gole@ti.com>, Bryan Brattlof <bb@ti.com>
CC: <vishalm@ti.com>, <sebin.francis@ti.com>, <msp@baylibre.com>,
	<khilman@baylibre.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Kendall Willis
	<k-willis@ti.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769553585; l=2183;
 i=k-willis@ti.com; s=20251230; h=from:subject:message-id;
 bh=UkRuaxfLh25z06GauyvdSy+c8fcJe2E1AVcUvEAFi+M=;
 b=M7WZIaU1G6Rin3uo8J/HpDnnrBVuybTtZYlud9aeDwr5FeO6o6/MG7LTFfjTK9UgbDBzXL822
 /5BOWa2M3xbCgnKiN3F49RKFZBt+bf2MlWDqso95vcdCqRUHZT8a2yw
X-Developer-Key: i=k-willis@ti.com; a=ed25519;
 pk=fQiPVFwmogfDAKdaAKq163RWSfgHZVE/MrsDzp0Xo1k=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PEPF000001CA:EE_|IA0PR10MB7349:EE_
X-MS-Office365-Filtering-Correlation-Id: 323091ba-ac0c-4241-a30a-08de5df4fa75
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|376014|1800799024|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?ZktuQUpONlA3SzR3SmhBcldtckpqa2xKNUhLQ1pRdWdqbmlLSi9sTGNYek5E?=
 =?utf-8?B?d0J2YmpldTNxUDR2MVM0RS9qbXhyaHRDN2lOZ2o5MUxPWGZuVUZHYlRrSUpw?=
 =?utf-8?B?TnpFSmEyYytzOVBoNzdTY1YzM2dqWHhpd1dGd3ljM0lGdXN2WTd2c0VkSDJ5?=
 =?utf-8?B?VmhKY0g0V3Yyd3pOaW41ZG1TWXQyL2VSZnZSdVI4bFlLMDNWSU1JOVljNXNH?=
 =?utf-8?B?M0Zpck5IN2s1UUZndlk1RnVLK0RIYkcrMEQ5WTdoZlY0UmRRaHg1c3BiSXRT?=
 =?utf-8?B?Mm91RWRpdlIyYTNQM09YMUxyTHBucmRhY1lwK0xCVXdWZzh4Q1RFV1NWSEZP?=
 =?utf-8?B?R0x2cWV2V2U4aU1DTDRiVU5oWXkwb1kxckhtMTZva1BhcGZsU1BNc3VaM1RN?=
 =?utf-8?B?MTA3Z0RkUllyeFVQYTJQVkhVc3haNkt0RkhvY2lrL3g0d2F1Q3ZwWlhQYmti?=
 =?utf-8?B?MTF6OGViMnBqQldRNTlWOVNnMk9zUjlHaG05RUpSNDlBODM1MHhEb3lyS0k4?=
 =?utf-8?B?dDN0ODJiVkdES2FRMHRHbWJzTVFXRVRNd2U0eDlBMWh3d0FyVy9LK3lrYzg0?=
 =?utf-8?B?TkJJTld0NGREWERKRkVKajZUNzBNNUFoeC9wMzh5T0JHRjJmVEdjTFFLc0ow?=
 =?utf-8?B?NFlLalJ5YUNBc2RCaXc2bHk1SmhNSUozN3I5dmJxRm1TY3NGNEQxb3pnYlJk?=
 =?utf-8?B?M1lXZ2xKMkI0MXRJT2FFZWhRZ1hXWW00YkpoM0ZqTlJCQWQ3VDBFWUVRcEdD?=
 =?utf-8?B?WmJJU3oweUQzMTFJWVgvN3ZDOFpGVmhOQ3ZxM0RRMkVpMzJrZ1RXd2ExTzU1?=
 =?utf-8?B?ak9TdXF2OXczSXlseWlDWmNaTG9FU0VFd0lrNDYzRTFveDZWQk8vdmdXLzMz?=
 =?utf-8?B?YUYyRXNRRHByYm9zVnN2VGpPM0ZvR1pjQktzR3RBMEowZGQ1Mi9pR3hjbWZR?=
 =?utf-8?B?MDIvKy9UUkdlZjVNUDdReklZcjR3MFpVNkdYOUpFQ3prQUdWWVYvdExHa3ps?=
 =?utf-8?B?OE10ckdaNzNZVzFsLzM1TnFzVzkxSUZOWlowbCtuVGF4UGZDNTNGVkN3MlNs?=
 =?utf-8?B?ODZ6dERTR1QveUd6VForNWpEU0ZWSXgrck5jOTllVjJ1NDFudGJ1SHF6ZU5F?=
 =?utf-8?B?L2tCYmtPblAwN2JWWkdWVTNyTG12eHlPbU8reTBTbWZFOEI1b3pIMnI5T2hl?=
 =?utf-8?B?cWxTdHJFVjFUeEF1Y0hnT01NcjBBQ2hWNDNBZ1dxV0VoZktHSXRpa09ybER2?=
 =?utf-8?B?bTg5QjBPczJxUEw4K0E1bTVRdnNWclJoNWQvUGhLbWxzVHlBMXU0MWJMZGkw?=
 =?utf-8?B?TmxNUmE0bm91WHhvd0NpYVdVbE1ibzRxaExHWTFkcGNmMmJRYnhXT3U0b1NN?=
 =?utf-8?B?MFRTdXJCVzN4eTIvSTZ5UmlhZlpXYzE2cHVCL0RCZWkrZUkxWGt1R1NWWEJZ?=
 =?utf-8?B?UGtQbzN4WFdmYnVjSVVmUkp5eTBCTnNKaUdzN2tGNlRSOTUyZmJoeHJLVFha?=
 =?utf-8?B?UDJhUGd5L3VKeHd4K3g5REFUUnBIOUlNTGxoNC9WWFNPN1lqL3VNaDdGWmlK?=
 =?utf-8?B?aHVTNWN3K29VQWR4QXVvZVJhWmtyL3A0RnB4YU5Ca09zWnBYWThKSTJlajVv?=
 =?utf-8?B?TDFONUFCS3lyTFZHc21LNFk4VDNGMFQ1Ym5mbzNnL2F4ZENMRDlJWFFwMm5s?=
 =?utf-8?B?MWZkaHBSRUR4bDBLTkt4bzM0OHQ3d3pDd3gzRUwvL2VqOUprT29iQlJVYkhT?=
 =?utf-8?B?WVFJUTQ0b0hmR0dwd1pWQ1dVamZXUWp3SnFmdXhaK003eStQdU14d2xmcXc3?=
 =?utf-8?B?QVg0U2JiY3k5M3FKZXRIZjRhQy8zaE85MFlwUXh3MWNjWXZ6cmFmaitsTSt1?=
 =?utf-8?B?V3JpL3pFQ2prSjdlMnhoT1BxVVFqSHZOWWFlWlN3dU1nTWxhQ0xYSk5LQXRa?=
 =?utf-8?B?WFFkY2pJNjM5RnBGYU9iRms5Y01SQ29FT0JpaUd2RDdhTWVSWE1STTBUU0ZH?=
 =?utf-8?B?R3I0K3dpK0R3VnlVbU5ReWVKOU4wY0I1eXNSVzNFam9ub2YvWnJQS25ld0Zv?=
 =?utf-8?B?cnpSY1ZjWGJ5dVB5Y1NyYmN4ZCs3SXFHRDBDd2tpdXFZeGYxbm5oN1prZXFZ?=
 =?utf-8?B?TUI3bUI3alFiektFUkVDVTV2OW1ObUduOGFFbFFXSmVoQVB6UGEzT3J1eDc0?=
 =?utf-8?B?OEdObGh6K3ByMkkzai82RHB0U01mbWJDdGs4cHREZ3JmQmtmbXlBdlRrQzVi?=
 =?utf-8?Q?gQbUCOoRdqzOz0jR+gRDlqsxTkFr9K1Egcz/w+xbYs=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(36860700013)(376014)(1800799024)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2026 22:39:48.7315
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 323091ba-ac0c-4241-a30a-08de5df4fa75
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ5PEPF000001CA.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB7349
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260154-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:dkim,ti.com:email,ti.com:url,ti.com:mid];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[k-willis@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: C390B9B294
X-Rspamd-Action: no action

K3 TI AM62L SoC supports wakeup from WKUP UART when the SoC is in the
DeepSleep low power mode. To allow wakeup from WKUP UART the target-module
device tree node is enabled. The ti-sysc interconnect target module driver
is used to configure the the SYSCONFIG related registers. In this case,
the interconnect target module node configures the WKUP UART to be able to
wakeup from system suspend. The SYSC register is used to enable wakeup
from system suspend for the WKUP UART. Refer to 14.7.2.5 UART in the
AM62L Techincal Reference Manual for registers referenced [1].

Previous TI SoCs configure the WKUP UART to wakeup from system suspend
using the ti-sysc interconnect target module driver. Refer to commit
ce27f7f ("arm64: dts: ti: k3-am62-wakeup: Configure ti-sysc for
wkup_uart0") for an example of this.

wkup_uart0 is not enabled to preserve the Linux console printing on uart0.

Testing
-------
Tested on AM62L EVM.

[1] https://www.ti.com/lit/ug/sprujb4a/sprujb4a.pdf

Signed-off-by: Kendall Willis <k-willis@ti.com>
---
Changes in v3:
- Add pin definition to wkup_uart0 node.
- Link to v2: https://lore.kernel.org/r/20260106-wkup-uart-wakeup-v2-0-fb4cbd56c827@ti.com

Changes in v2:
- Change subject of commit "arm64: boot: dts: ti: k3-am62l3-evm: enable
  target-module node" to better match the code logic of the patch.
- Link to v1: https://lore.kernel.org/r/20251230-wkup-uart-wakeup-v1-0-cd6e15f8d956@ti.com

---
Kendall Willis (4):
      arm64: dts: ti: k3-am62l: include WKUP_UART0 in wakeup peripheral window
      arm64: boot: dts: ti: k3-am62l-wakeup: create label for target-module
      arm64: boot: dts: ti: k3-am62l3-evm: define WKUP_UART0 pins
      arm64: boot: dts: ti: k3-am62l3-evm: enable target-module node

 arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi |  2 +-
 arch/arm64/boot/dts/ti/k3-am62l.dtsi        |  4 ++--
 arch/arm64/boot/dts/ti/k3-am62l3-evm.dts    | 15 +++++++++++++++
 3 files changed, 18 insertions(+), 3 deletions(-)
---
base-commit: 63804fed149a6750ffd28610c5c1c98cce6bd377
change-id: 20260127-v6-19-wkup-uart-wakeup-11c1c3d5b99a

Best regards,
-- 
Kendall Willis <k-willis@ti.com>


