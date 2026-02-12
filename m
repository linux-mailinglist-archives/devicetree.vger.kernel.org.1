Return-Path: <devicetree+bounces-265160-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHkHOIkNjmmS+wAAu9opvQ
	(envelope-from <devicetree+bounces-265160-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:27:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC7F12FE43
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:27:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D9BE3033D16
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:27:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E59B223DFF;
	Thu, 12 Feb 2026 17:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="b39VYKD2"
X-Original-To: devicetree@vger.kernel.org
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012018.outbound.protection.outlook.com [52.101.53.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5A2910785;
	Thu, 12 Feb 2026 17:27:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.53.18
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770917254; cv=fail; b=ArfxhqZwgJc2RzGoJ/3yNi4rDMxACHxSAP5snEfe5LAT31Pkt9MHIqNAS0+FdAIr//EVvrPmHMW7dyHXoCxhDn2mjX0YCCUUkcQf2BqodML/n7IOBW0JrzlLbWaGUtRrHnV1qB02eYjaZnDk2T/Va2IIKTtO10P3+poruGX9ot8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770917254; c=relaxed/simple;
	bh=o+AeI+rZpWcX+YdtTavp0586O5vL+vItVxzNa8OLJTM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=DMBEQyXdf0DLA967adlMIk4qOLIRb8QNDpQzMVNHYvc4SfAMu7PJ2dLy6lSPDJa93vbR3rZteH1e7v/hzydGurCf86JL/MnFl/zFrhAXb79l1ohkIis0h/jzWUSpeEgWqRcYYB3qkEUH6UEKAFVHdv4jNXrffh06MTlXziFL0Qs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=b39VYKD2; arc=fail smtp.client-ip=52.101.53.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fSX1zu600ER5I/bBDuohSoyKNK2FkMW0ScHM04oNYcAdOOKFmiQLtDMVDHGXlRGzmXHcgenqxR+JyngCB747uxr6AA5pLyVXvN+9PIcBnY9SCd91ZfImP3dFRDiDPe4kap19wxQSAxgd7wthXKbMwEAT33knmmV0Efr7VejX91yYOOPmL3uPOsxnbEiPg5sRxcosRb4gmb6jK7Q3C7kDik0ZkJ7DnsZMeZbvNbutJYpj+muwFldnkDeLF8WZlbWEQkNEdYvrpFgH0K8BrPfeuQzOiE5h/XLX1dhT9B2eX9FqrUjkRZaUFOVSInfgWA/L3nCGlrDEqzv96w5hb7wVTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KygorhPTm2TlRw1q3bDVZFBHK8R1aCe3LyxLqIUSyQI=;
 b=fQA551He4W6UwnOMjTwIMnYvsViAcTZYtBoOHiOt1KJDd0Vv7ah5SBlLfCQDLU+NlptU31lkT7ptH5eTArSMZHfHGuHQn2Apls4qLCb5s7eOX6Gv0aCJTFBXnQZwX/Hr40aTq1Wx74vQkNwk6jRqr05shpumgduHpKjCbamqBDapE1VoJtFw9IVYC2x6jJoCFrSib7WT1KggnJCCIpVNKKiZctVHIHC5e+VFUiiNcRmZHDo6NEIlKdhAnMcRxjFTTKvC0qrdN1CRwtl2Ncwt1/dXYQ6VP1FGaoAB9Dk09o8qcG2Uq9j17wr5M3JgYVxz4YK0FmRWVlUWK6/vduilvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.194) smtp.rcpttodomain=baylibre.com smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KygorhPTm2TlRw1q3bDVZFBHK8R1aCe3LyxLqIUSyQI=;
 b=b39VYKD2Mzu3jU3pTI3EfBHNhvMOatL2ppNyjrJvId3Ga1K10vAbzdPlVeJysCjppdj4YjNruUUfYEG07r9qdd/3rkBvUc9Q8FxGRpvCvxsUJGhxNgxjVKRTlt6ybeuXOTHC1PzbJRxlMrlB3yO3tGSPkcMeEySu07SKRtLkbDo=
Received: from DS7PR03CA0015.namprd03.prod.outlook.com (2603:10b6:5:3b8::20)
 by LV0PR10MB997663.namprd10.prod.outlook.com (2603:10b6:408:33f::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Thu, 12 Feb
 2026 17:27:30 +0000
Received: from CY4PEPF0000EE3D.namprd03.prod.outlook.com
 (2603:10b6:5:3b8:cafe::ee) by DS7PR03CA0015.outlook.office365.com
 (2603:10b6:5:3b8::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9611.10 via Frontend Transport; Thu,
 12 Feb 2026 17:27:15 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.194; helo=lewvzet200.ext.ti.com; pr=C
Received: from lewvzet200.ext.ti.com (198.47.23.194) by
 CY4PEPF0000EE3D.mail.protection.outlook.com (10.167.242.15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.8 via Frontend Transport; Thu, 12 Feb 2026 17:27:29 +0000
Received: from DLEE203.ent.ti.com (157.170.170.78) by lewvzet200.ext.ti.com
 (10.4.14.103) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 12 Feb
 2026 11:27:28 -0600
Received: from DLEE212.ent.ti.com (157.170.170.114) by DLEE203.ent.ti.com
 (157.170.170.78) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 12 Feb
 2026 11:27:28 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE212.ent.ti.com
 (157.170.170.114) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 12 Feb 2026 11:27:28 -0600
Received: from [127.0.1.1] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61CHRSI33458792;
	Thu, 12 Feb 2026 11:27:28 -0600
From: Kendall Willis <k-willis@ti.com>
Date: Thu, 12 Feb 2026 11:27:21 -0600
Subject: [PATCH v5 2/5] arm64: dts: ti: k3-am62a7-sk: Enable Main UART
 wakeup
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260212-b4-uart-daisy-chain-dts-v5-2-26c7f534e567@ti.com>
References: <20260212-b4-uart-daisy-chain-dts-v5-0-26c7f534e567@ti.com>
In-Reply-To: <20260212-b4-uart-daisy-chain-dts-v5-0-26c7f534e567@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <k-willis@ti.com>, <vishalm@ti.com>, <sebin.francis@ti.com>,
	<khilman@baylibre.com>, <d-gole@ti.com>, <msp@baylibre.com>, <a-kaur@ti.com>,
	<s-kochidanadu@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770917248; l=1948;
 i=k-willis@ti.com; s=20251230; h=from:subject:message-id;
 bh=o+AeI+rZpWcX+YdtTavp0586O5vL+vItVxzNa8OLJTM=;
 b=ZNYZZCwRF/N2QQ3D5cDWF4+1WXwXcepWYFokSshPaOKXhCw+FercrBuBqeXmjVurXLS1uEvt/
 Olcs+WDgaoxCob+vLnfb/GqGm4sij4osMy5lTKchxL25S3+Lai0crL6
X-Developer-Key: i=k-willis@ti.com; a=ed25519;
 pk=fQiPVFwmogfDAKdaAKq163RWSfgHZVE/MrsDzp0Xo1k=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY4PEPF0000EE3D:EE_|LV0PR10MB997663:EE_
X-MS-Office365-Filtering-Correlation-Id: 724e97bd-cabd-4eea-1e28-08de6a5bff7d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|1800799024|82310400026|376014|7053199007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UXBoak1JVjljUFFtSzZha3ZqUUNXMjZpc3pDNWFVZ0RUQ3NCVFdoRkRLRURP?=
 =?utf-8?B?L3RqaFNNTm1ZRXVORFhXNUEyUUpUM0E4RVRjSDJ6blJHKzRQLzE1YWJRTWhY?=
 =?utf-8?B?OGNKUFBhV1VSbDRVM2x6UTJYSmVGNm5hVWFTTDlVb0xyQUkzdFdjbGI0bUo0?=
 =?utf-8?B?MDRTTTFuamF2eW5ySmFUbkhvQnJsaTJGOSt2RkZFMFdjNCtza3k5WVZhYXpY?=
 =?utf-8?B?YjRkNmFaNGlrMXNKR1U3MXdpbXVWdUFNU3cwWkp3NVQrNnhGckdibmtuZUpo?=
 =?utf-8?B?bmFUb254a2w5cjFDRHhtejhGbVhZZGJJQW9rMWdycEhwQTNMOFdpNW9xUzRP?=
 =?utf-8?B?bXdtQ2E1ZFNvSjBwWnhGVER0TVhhb2cvVXNtQnplWlRhM21WU3A1V29ZV3Iw?=
 =?utf-8?B?WHpjY1hQblVyK2Q2NE93QlBkRFFLam15NjZYR0p6N1pMWk5GM29YSEpTZ0Mw?=
 =?utf-8?B?dTNFSHI3S2lQazU4R0lyWmY1cytvU01mV1U2V0lOTGk3WnY1LzZTWjhzUjVK?=
 =?utf-8?B?Z2N1cDAvZVJoRklJTk1GL21kRmJiOVNwdUpDUnc4bjZGdWVLYzlFeU93SFAr?=
 =?utf-8?B?aFo2a2daZWlaSkllUUxOZWZUTnNORXhkVEhwNkFIUEpvU1czbU1sMTRXVWpn?=
 =?utf-8?B?R1lYcWxrZXN0YWpUU3A3bWp5MGVWU2pUWXlLUCttd3pYYU1sREtkSnh2Zjkz?=
 =?utf-8?B?anJnSnhUM05UdzlTak05dG9tQlZVbFFUcElqcUwvYzFVZklvMEdBREF2T3ds?=
 =?utf-8?B?K09wK1A2d2ZvbFlvbnZ0RmJxUDdiNjVDdDN4ckl5WjJPVjFPNkF2a1VHeW1v?=
 =?utf-8?B?ZEZrSjBFdXJVYzIyYUNHaWM4dWwxNlJxWnFMOFdSR2tndkIycW5yM2tienpz?=
 =?utf-8?B?VkVwYXB4ckxJY3ZmUGtiYTZnbU1UNjNCQmtTNElHWGhiYWorT3JMaklHZTU0?=
 =?utf-8?B?UXNOUUZDTGZaVDUwUk0wMzFTWExsN2FSV1JJakVsL2RKdTNOSTRTejdNUmZB?=
 =?utf-8?B?NmZUMVk3aDlueHVwbHVXdHp6dnhVRUxFMVBFWWExRjVYZFd3dVc4ZnZkcWJG?=
 =?utf-8?B?YlBJeTBncHFmSjBRS0N1a1Yyc2locWZHZGc0eDY3by9zNGJhOVlDemFJeUZG?=
 =?utf-8?B?UFFJQTlCand6a3czN0p6Y3pxWWd1bXREYUpDemg0NHJ5NTlxWlBOM1NlYXUx?=
 =?utf-8?B?dWFMUDV5bmc5S0pDM1lKaUlaM2UxUmhBOHA2UEw1OVVINFpmWU1ZWmVRMi9o?=
 =?utf-8?B?cjdLV2RVb1F4Zzg1d0ZCSS8yVGZyN2xIc01TOER0Q3JDWDlmTjNWT2YrSE5E?=
 =?utf-8?B?dkl4cS9sbUJGUlQxbGd0WXI2NmxpQlcrVFBvUldNYWtDZXQ3b013blpPeWE3?=
 =?utf-8?B?MUF6L2U5aVFTQ1ozMzM5Q21qQmx4V1krYjBvY2xwY3VEVHV3dnBILzZzbVhy?=
 =?utf-8?B?dFZsbkJFVURzZkVPOGNqRmhXWmdJL1BMYjk1TmFSZnpVbExlb2NpVEgrLzU5?=
 =?utf-8?B?QzJMVTFuQVp3eWo5anFnMTlqazdqNFR2RjNVM1FyOHN2cklCZ0FJM0JrOXZz?=
 =?utf-8?B?THNnQlFwemo3d0hoOUlVTEFZMUFKL09mTEdhaUt5cG95a0FYN3F6QUZZZmhN?=
 =?utf-8?B?NkJaclhlK1JMTlVtNjZ0ZWF5R2U3NFkvMzEzUDYzZGdLUHE3bS9XZWU2Wnpo?=
 =?utf-8?B?Z0ZZZHVRK3dtOHY5RTNWS2UxYVZaeGQreFpIdTZORjlDLzk4N0tVaFY0Mlg2?=
 =?utf-8?B?NVVVelBCNGZGcUhzQ1U0eUhLRUVBd2lYWUNzMys0RWc3cysxYVpKTzVnemhL?=
 =?utf-8?B?cTFXZnpIRVFJWUg0MTRrb0MyMzE0MXRIM2k1YitYdWRaWFpwSEFEKzgxV3N4?=
 =?utf-8?B?Z3A2WS9JTWVrLzZzOG9hdUtNdWhORHUrWHh4M09HV3kzVnBseFB2ZytGQkQx?=
 =?utf-8?B?b3Nqd2tsWmxMYkJCdzlOelhOcWU5ZUR2MEc4aU5WM01JM0RNOWRzNHRtVjJR?=
 =?utf-8?B?Y2o3eSsvRmFLOFJjR3JrbjlHYmZ3eEt6WU03MVo5ZjlDNHd1RWhybTNxSHVo?=
 =?utf-8?B?WnMwTjZFb2sweVVNTHFBYlhkTGZGaFoyeWtBdlZtQXA0M1dNUXg5WGEyYnBv?=
 =?utf-8?B?Q2NPS3RrZUVIV3crR3FKWFBDSHZaU2R1WjVXVVpaeGpQOVExenl3TUhzaldv?=
 =?utf-8?B?Z1JOK05oVlUvS3FMeEdveWFQRDBUV1pmNzFZM3lPVmhhTmJKM01HcXlWTEtM?=
 =?utf-8?B?b21xeW5BODZ0UldwK0lydE85LzlRPT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet200.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(1800799024)(82310400026)(376014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	PCO9NgjR/n/3mTNc4yr/Np8txy8oVe1Mdd3bXsgWuhWm+26zNqwAUj54EX8W+ywuW6ipM0/ZFJjqFvrWzzmVf62uNYSAzSqc/f/GScvMwY+I9DXXa+NsGgYpyx7b4IMHzqGtvzPA54/JDTjFta9eANFrJNawFTQqcXNFN1lz8mJ6aRdsrApzRTfMpTuXxB4i7F9nPB2j4/df7qv6QYtb90X/ksJi5WfpRHXbif3BDgqBAeWmXBQvAHPZ28UMZMbIPjwuB/j9hpd4uwzsOEShIkkOWXstJCFRXaS5+MkPOweKXHvbyb/AP7vxdiJXfPUxVnWFMit7Vk925MofE2vZAoeHnYpnfOCAIeg9Sb9Q24pCGia5ciT8XCl1JqImrzzNcSE8l17I8l1+5rWPhQr5sUC03JOf7IZTbAKgDGztFvoCJrw1rkkgvBoR0fT1Zoi2
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2026 17:27:29.3339
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 724e97bd-cabd-4eea-1e28-08de6a5bff7d
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.194];Helo=[lewvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CY4PEPF0000EE3D.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV0PR10MB997663
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DKIM_TRACE(0.00)[ti.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[k-willis@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:mid,ti.com:dkim,ti.com:email,baylibre.com:email];
	PRECEDENCE_BULK(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265160-lists,devicetree=lfdr.de];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 2FC7F12FE43
X-Rspamd-Action: no action

The Main UART can resume from suspend to RAM states when PIN_WKUP_EN
is enabled. Add the necessary pins needed to wakeup the system. Add the
system idle states that the Main UART can wakeup the system from.

The UART driver uses the "default" pinctrl state when the system is
active. In the suspend hook, if the UART is wakeup enabled, the "wakeup"
pinctrl state is selected by the UART driver in order to allow wakeup.
Upon resume, the default pinctrl state is selected again.

Reviewed-by: Markus Schneider-Pargmann <msp@baylibre.com>
Reviewed-by: Dhruva Gole <d-gole@ti.com>
Reviewed-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Kendall Willis <k-willis@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
index e99bdbc2e0cbdf858f1631096f9c2a086191bab3..112f0f2a3d449b324d479c0e2a7d07d0ee57caf6 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62a7-sk.dts
@@ -282,6 +282,13 @@ AM62AX_IOPAD(0x1cc, PIN_OUTPUT, 0) /* (D15) UART0_TXD */
 		bootph-all;
 	};
 
+	main_uart0_pins_wakeup: main-uart0-wakeup-pins {
+		pinctrl-single,pins = <
+			AM62AX_IOPAD(0x1c8, PIN_INPUT | PIN_WKUP_EN, 0) /* (E14) UART0_RXD */
+			AM62AX_IOPAD(0x1cc, PIN_OUTPUT, 0) /* (D15) UART0_TXD */
+		>;
+	};
+
 	main_uart1_pins_default: main-uart1-default-pins {
 		pinctrl-single,pins = <
 			AM62AX_IOPAD(0x01ac, PIN_INPUT, 2) /* (B21) MCASP0_AFSR.UART1_RXD */
@@ -717,8 +724,12 @@ &main_gpio_intr {
 
 &main_uart0 {
 	status = "okay";
-	pinctrl-names = "default";
+	pinctrl-names = "default", "wakeup";
 	pinctrl-0 = <&main_uart0_pins_default>;
+	pinctrl-1 = <&main_uart0_pins_wakeup>;
+	wakeup-source = <&system_deep_sleep>,
+			<&system_mcu_only>,
+			<&system_standby>;
 	bootph-all;
 };
 

-- 
2.34.1


