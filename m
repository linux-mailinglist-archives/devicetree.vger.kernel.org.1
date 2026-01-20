Return-Path: <devicetree+bounces-257304-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sI+NKGkycWlQfQAAu9opvQ
	(envelope-from <devicetree+bounces-257304-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 21:09:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A025CDC1
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 21:09:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4B22C5E2AB4
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 10:47:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1F63410D1F;
	Tue, 20 Jan 2026 10:44:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="tLWyiH71"
X-Original-To: devicetree@vger.kernel.org
Received: from CY3PR05CU001.outbound.protection.outlook.com (mail-westcentralusazon11013018.outbound.protection.outlook.com [40.93.201.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF537407589;
	Tue, 20 Jan 2026 10:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.201.18
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768905879; cv=fail; b=kIWRVzT5CxkihLbUuOfEof2F6lYXQ6Nd4URlOhWDNSS+LHsVd7xYkjd+oZQedAYjcM9gC6hItItW05w34INSs7X3x3mC87rjkXSkbd0bwkQ1K4jhtGCt9vgf1UWiHlQRi9B6hYb6LDniL0Ek4UKtiK0AzN5MlmStZ7EK0lgFbWY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768905879; c=relaxed/simple;
	bh=8zGbqUvlixC19kXRmshww4ZEVd89hXmcRabfMQgXEJY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=cMi+uJ/DnvP3ZzfyRqUeXbRSSaiq+mCHPY4EVmT+dQCF7GNWSW23GGD7IvbgJK1orzld4yXkQGv7QV397e04j7h+7PPpv1IbaElvU97WZq5Zn/3vnIiAE9CDpAef9cSjljDRj0L/SnQkQBo5essvZxfJXNIrYRV6Dkl1cnhzdTQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=tLWyiH71; arc=fail smtp.client-ip=40.93.201.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZYCKgp4WGgR2H0DbIv/ET5fPThWHVQhz7ZbHJYmzHTD7BgzCVyoYYq+GH2LZrNmM3YpowrxigKay5rNjZav2e5m3A+Kfl/eu6+oaqBodRh3DHaIImkL7TyBZhGEZPR1f+ejNqDp1iSiH8qIULVt1VPrT7ufay8EonhYhIsZeaZBGl0o6ow3b62o/pDp7z11a2eJQgpvvSkvPpohMqzT7l1TF11WJ+ba6Hq+kMH7Qb/aEgkT5IsrOXUhVN9AM64mhlsoLtUZ5fA1Mr3+oGfMa22yHvVQlcx5/FJlqk1uMMRWM5t0M0QCdvCwoGdd2+b2TNlH4Ve4HH3a/befsukdOzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r/wDrTMrloWcpAtmoHHYEJjHQ198tLVwM5z/i3Sx7S4=;
 b=rwaCIItX8WCqBHbCpnyYcu94b7w64gQK2YcmyeJDe+LYd0I2MTWo6HY17J7W2xn9Icc9i1Hsm0x0iA3R0LBUNzaVHODaygHFPQu6bsHL1KaUc4edSeJ34jJCqZQJRaES3iaydiTKFUWLZWEtzL2nZxNw7jAH18JwKuDRvSaC4VPh1rxE9t9F78h+jEz7pXPG4Zq1mLpgW2nH26yUOkNwlmw8FeR/oBbIX/0N7tRewB2LHNQIHGdGKK/1wZAla7NJSAcQAHwFarg3A3ZfIciJOBTNta4vIDwF9tJNhC570rW+BHl68TM8VeabIcep7YK2J+fN5Wh+3DRbIlsfeLwe8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=kernel.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r/wDrTMrloWcpAtmoHHYEJjHQ198tLVwM5z/i3Sx7S4=;
 b=tLWyiH71P0snkhAMEjDQD8xM1A6qa+6SxtinwHsgTgSsg4D3PayPOqVvRQNRuNRf/9HWF85MVOH2mH/h4Dr0BP2C0eUmzKusBkVb3OlYy9JSFd+rT/X7fdAsapUBVgXedabX6ZgqJrghG0pcdV9IkVfdF6DewQf0ARacp+ag7lo=
Received: from BN9PR03CA0705.namprd03.prod.outlook.com (2603:10b6:408:ef::20)
 by SJ0PR10MB5719.namprd10.prod.outlook.com (2603:10b6:a03:3ee::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Tue, 20 Jan
 2026 10:44:35 +0000
Received: from BN1PEPF0000468A.namprd05.prod.outlook.com
 (2603:10b6:408:ef:cafe::2f) by BN9PR03CA0705.outlook.office365.com
 (2603:10b6:408:ef::20) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9520.12 via Frontend Transport; Tue,
 20 Jan 2026 10:44:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 BN1PEPF0000468A.mail.protection.outlook.com (10.167.243.135) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.4 via Frontend Transport; Tue, 20 Jan 2026 10:44:33 +0000
Received: from DFLE203.ent.ti.com (10.64.6.61) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 20 Jan
 2026 04:44:31 -0600
Received: from DFLE212.ent.ti.com (10.64.6.70) by DFLE203.ent.ti.com
 (10.64.6.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Tue, 20 Jan
 2026 04:44:31 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE212.ent.ti.com
 (10.64.6.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Tue, 20 Jan 2026 04:44:31 -0600
Received: from psdkl-workstation0.dhcp.ti.com (psdkl-workstation0.dhcp.ti.com [172.24.234.127])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60KAiIEh939676;
	Tue, 20 Jan 2026 04:44:27 -0600
From: Aniket Limaye <a-limaye@ti.com>
Date: Tue, 20 Jan 2026 16:13:47 +0530
Subject: [PATCH v2 2/2] irqchip/ti-sci-intr: Allow parsing interrupt-types
 per-line
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260120-ul-driver-i2c-j722s-v2-2-832097c6b64f@ti.com>
References: <20260120-ul-driver-i2c-j722s-v2-0-832097c6b64f@ti.com>
In-Reply-To: <20260120-ul-driver-i2c-j722s-v2-0-832097c6b64f@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, <u-kumar1@ti.com>, Nishanth Menon
	<nm@ti.com>, Tero Kristo <kristo@kernel.org>, Santosh Shilimkar
	<ssantosh@kernel.org>, Thomas Gleixner <tglx@kernel.org>, Rob Herring
	<robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>
CC: <j-mcarthur@ti.com>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>, Aniket Limaye
	<a-limaye@ti.com>
X-Mailer: b4 0.14.3
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN1PEPF0000468A:EE_|SJ0PR10MB5719:EE_
X-MS-Office365-Filtering-Correlation-Id: 50021586-ec26-46ba-b6a9-08de5810e654
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|1800799024|36860700013;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?V01sYkp0clVETi9YVHhqOFA4eXJsRzZvMjh5OU9FeGRPV1hJNzJvZ04vc2Z0?=
 =?utf-8?B?OGY2ZzluUHVsdm5Pa00yZE5rNEVOTmREWnRRSlFkbkxSd0NCMUtQbWFJT3VL?=
 =?utf-8?B?anBMYi9zZHRyRjU3RkdJaHlOYlg4VWZ1RXd0cFlpTTFsRTdDUElHMHNraG92?=
 =?utf-8?B?Tk91dzY4ZGpIcHVleXVkWEIySjR1OVFjdXY2NWhGRnZKWTc5UjFkQzVHL2cz?=
 =?utf-8?B?aHNUWlZRZGN6Qi9hUlAyMS9pclRmdlVjMFdRbFUxSG9XcVM3cEs0UTRhenZR?=
 =?utf-8?B?dXc1Sjg4NDhSeTJ4WEY0a2U1TnBCOWhEMEV5eXJJamtUdXFubW9mNmwwUXpj?=
 =?utf-8?B?Vmcwb1hxeDdFZGRteG92Q3YwVDRDaGhMMHlXY0NIQkV4NmpWQWhTa2FUU0d3?=
 =?utf-8?B?RE9IVy8vLzQ1RElheWRnRTNpT092Q0VSNCsyU2VuenQ2ekdZODdDMTFoRDVG?=
 =?utf-8?B?TU5qNzN2Q1I0ajltOUJTamdiSmpScDV3UU4vZmoxNC9nSHFCSmcwZGpsWTgx?=
 =?utf-8?B?QzBxdzJZdHhjZm14QU1CUXdNcFpYeHZ4bGNheTM0Skd0cDljLzVXcmZVL2ZS?=
 =?utf-8?B?bDgrQjBQMzZFa1czZzJrNk93ZUNmREQvK1lTVHNncjlJSnBJRzA0VER5Nmt1?=
 =?utf-8?B?VFpBU1lzdTJNQ0NBZnRrVzVDUnMwbXZJRUNzZVdNMndiblY4VTBtSkV1QW50?=
 =?utf-8?B?aGxOK2FlRTVock5GR3JLZ050cm1BVWU1aTlxYkkycy8ySm9FRHJjQUpaRjIw?=
 =?utf-8?B?ZDhsaEFuUXBiWCtPbHpjVWd0T2hiMGc1VU9aaU5FVDYxcVhjNW1MMXRwOE5L?=
 =?utf-8?B?N1NCWWVRdXg5Qkh2b2pKMGVKTUxhakNqUGhnWE5DRmVpR3pKUjhFczMzSjhw?=
 =?utf-8?B?b29EcjdCZWNoUVVOTEtoVk4yTXV1dENTcElHbUhzSzlCNXcyMzhmNW80M3Yw?=
 =?utf-8?B?Y3lxbFdPN0hKWnQ2bUF2cFEraGhTZ3VTaS91Vnl3eklaY2JvNW1aUUwzTFZi?=
 =?utf-8?B?cW8vZWNFZWZLOUQ5V0RFd0Y4L2Q5RUNKeE15c2N2UzYwTmxIdzVCSTczY2pR?=
 =?utf-8?B?cXdMTUVJNWs0Z3VLYkJraGRHd2ZSbUxUQk9aWWdnWEJuZThtQ0pnWTlXbG51?=
 =?utf-8?B?OERMWnQ4eHdOWSt0NG9uVTB1Z3NNeTg0M1RZVjJIeUhPWVhTZ2F3MWxPRzFo?=
 =?utf-8?B?Z0tIUnlCYzM5dHlHN3ZrTy95U3JsemdrbEVEa01xMnBUdVJlUjIwd1NmUnlH?=
 =?utf-8?B?ZENjN1ZVT0p6bVlLaFEreWttRDB3UmpoZkhnbVBhamtUSVZkbk1EeUZlM2F4?=
 =?utf-8?B?K1NWdmJnQ1hISlBRbnBmUlpQczh4bG5RQm9jb3NRbXpLSWN6NU85OGRzVUFE?=
 =?utf-8?B?TFVmSjNmcXNRVGFsN1VNcW1IMVRqVFMvbjZQaTV6RDR1YXlzR1ZRdThYb254?=
 =?utf-8?B?S0NTNEdGRVh2NFdtemVpZE1UNUZGM29wNktBMHI0dUhmUGg3MEtuNE0xalBi?=
 =?utf-8?B?NWZLQ21hdCtBMysycE04TjRVOS9hL1lSa0ZsaHVEeGgzM09EUDh6UDlaQmdx?=
 =?utf-8?B?RVFVcFBMTmQ3R2NBWGJ4MU45NElkWkgrZE1jNFVnbGNLWTlCT3FncTZOY01W?=
 =?utf-8?B?SWtxT2VnYUNzK2d5WW9jekFNczJkMWRDQ3VCbk5XMmpoMzJXVzhwc25iZ0l4?=
 =?utf-8?B?R3ZkT1U2UCtTN3huQWpsczFXRTM3NjMrZVI4WnBzUGFKS1JEaG9hdXpmeWFJ?=
 =?utf-8?B?eTUxNkpHOW0wcHNWNGE3TU1VYUxXTUkxTkpjc0diSlNtUklVR3JnZ204YitV?=
 =?utf-8?B?aVBIRjdLdFp6QUhwd3BCSjBQV3k0enRNWXU1M3lzcVlSUEYvNG1vZkMySkJl?=
 =?utf-8?B?TlBGU21qRXhHVG5TcnMvL25UTDB2SW9YMENnUzNBN2dlbmp2a3lzWHhoZmNj?=
 =?utf-8?B?VGdBQnh3SlhhQllGK2lUV2FsVndmMjNNRmsydlNKMSt3Rk5XeXpoc0VMNTNK?=
 =?utf-8?B?ZHBCTlRsWTlhZ0lQRmF4Zy9tNzN0MXc5MGh5M3d3WDV5aFdLaE5Za3NxRjA0?=
 =?utf-8?B?WEtOZ2JmRW13ZWdOUGVJUk94LytsT0dITGZEYVFkS3k1V2pVR0s4RnkrM1RN?=
 =?utf-8?B?a1QwWERMVUhZK3Uvc0J4azVpT3Z3b0RGUGcxb3RJR0xnOEtsL1pFZnJFcGxW?=
 =?utf-8?B?TThtVWlvQ1ZYSk5OSytmcURjS0pxNzVuQ3JLMlp5TURXblNRVjlJRlNwcDBj?=
 =?utf-8?B?d25yc0NNdmZOQ2dLUlUwVTVLZnZRPT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(82310400026)(376014)(1800799024)(36860700013);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2026 10:44:33.8984
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 50021586-ec26-46ba-b6a9-08de5810e654
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BN1PEPF0000468A.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB5719
X-Spamd-Result: default: False [1.04 / 15.00];
	DATE_IN_PAST(1.00)[33];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	DMARC_POLICY_ALLOW(0.00)[ti.com,quarantine];
	TAGGED_FROM(0.00)[bounces-257304-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,ti.com:email,ti.com:dkim,ti.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a-limaye@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ti.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 32A025CDC1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Some INTR router instances act as simple passthroughs that preserve the
source interrupt type unchanged at the output line, rather than converting
all interrupts to a fixed type.

When interrupt sources are not homogeneous with respect to trigger type,
the driver needs to read each source's interrupt type from DT and pass it
unchanged to its interrupt parent.

Add support for "ti,intr-trigger-type" = 15 (IRQ_TYPE_DEFAULT) to
indicate passthrough mode. When set to 15, parse interrupt type per-line
from the DT fwspec provided by the interrupt source. Else, use the
global setting for all interrupt lines.

Signed-off-by: Aniket Limaye <a-limaye@ti.com>

---
Changes in v2:
- Use correct Patch Subject prefix
- Reword Commit msg to better describe the patch
- Fix function argument alignment as per coding style
- Fix variable declaration ordering as per coding style
- Link to v1: https://lore.kernel.org/r/20260116-ul-driver-i2c-j722s-v1-2-c28e8ba38a9e@ti.com
---
 drivers/irqchip/irq-ti-sci-intr.c | 49 ++++++++++++++++++++++++++++++---------
 1 file changed, 38 insertions(+), 11 deletions(-)

diff --git a/drivers/irqchip/irq-ti-sci-intr.c b/drivers/irqchip/irq-ti-sci-intr.c
index 354613e74ad0..e0b06796c86e 100644
--- a/drivers/irqchip/irq-ti-sci-intr.c
+++ b/drivers/irqchip/irq-ti-sci-intr.c
@@ -61,11 +61,22 @@ static int ti_sci_intr_irq_domain_translate(struct irq_domain *domain,
 {
 	struct ti_sci_intr_irq_domain *intr = domain->host_data;
 
-	if (fwspec->param_count != 1)
-		return -EINVAL;
 
-	*hwirq = fwspec->param[0];
-	*type = intr->type;
+	if (intr->type != IRQ_TYPE_DEFAULT) {
+		/* Global interrupt-type */
+		if (fwspec->param_count != 1)
+			return -EINVAL;
+
+		*hwirq = fwspec->param[0];
+		*type = intr->type;
+	} else {
+		/* Per-Line interrupt-type */
+		if (fwspec->param_count != 2)
+			return -EINVAL;
+
+		*hwirq = fwspec->param[0];
+		*type = fwspec->param[1];
+	}
 
 	return 0;
 }
@@ -128,11 +139,12 @@ static void ti_sci_intr_irq_domain_free(struct irq_domain *domain,
  * @domain:	Pointer to the interrupt router IRQ domain
  * @virq:	Corresponding Linux virtual IRQ number
  * @hwirq:	Corresponding hwirq for the IRQ within this IRQ domain
+ * @hwirq_type:	Corresponding hwirq trigger type for the IRQ within this IRQ domain
  *
  * Returns intr output irq if all went well else appropriate error pointer.
  */
 static int ti_sci_intr_alloc_parent_irq(struct irq_domain *domain,
-					unsigned int virq, u32 hwirq)
+					unsigned int virq, u32 hwirq, u32 hwirq_type)
 {
 	struct ti_sci_intr_irq_domain *intr = domain->host_data;
 	struct device_node *parent_node;
@@ -156,11 +168,26 @@ static int ti_sci_intr_alloc_parent_irq(struct irq_domain *domain,
 		fwspec.param_count = 3;
 		fwspec.param[0] = 0;	/* SPI */
 		fwspec.param[1] = p_hwirq - 32; /* SPI offset */
-		fwspec.param[2] = intr->type;
+		fwspec.param[2] = hwirq_type;
 	} else {
 		/* Parent is Interrupt Router */
-		fwspec.param_count = 1;
-		fwspec.param[0] = p_hwirq;
+		u32 parent_trigger_type;
+
+		err = of_property_read_u32(parent_node, "ti,intr-trigger-type",
+					   &parent_trigger_type);
+		if (err)
+			goto err_irqs;
+
+		if (parent_trigger_type != IRQ_TYPE_DEFAULT) {
+			/* Parent has global trigger type */
+			fwspec.param_count = 1;
+			fwspec.param[0] = p_hwirq;
+		} else {
+			/* Parent supports per-line trigger types */
+			fwspec.param_count = 2;
+			fwspec.param[0] = p_hwirq;
+			fwspec.param[1] = hwirq_type;
+		}
 	}
 
 	err = irq_domain_alloc_irqs_parent(domain, virq, 1, &fwspec);
@@ -196,15 +223,15 @@ static int ti_sci_intr_irq_domain_alloc(struct irq_domain *domain,
 					void *data)
 {
 	struct irq_fwspec *fwspec = data;
+	unsigned int hwirq_type;
 	unsigned long hwirq;
-	unsigned int flags;
 	int err, out_irq;
 
-	err = ti_sci_intr_irq_domain_translate(domain, fwspec, &hwirq, &flags);
+	err = ti_sci_intr_irq_domain_translate(domain, fwspec, &hwirq, &hwirq_type);
 	if (err)
 		return err;
 
-	out_irq = ti_sci_intr_alloc_parent_irq(domain, virq, hwirq);
+	out_irq = ti_sci_intr_alloc_parent_irq(domain, virq, hwirq, hwirq_type);
 	if (out_irq < 0)
 		return out_irq;
 

-- 
2.52.0


