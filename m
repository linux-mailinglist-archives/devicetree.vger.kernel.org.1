Return-Path: <devicetree+bounces-254270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AED9D16B8F
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 06:39:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E28973008EAF
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 05:39:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4197035B132;
	Tue, 13 Jan 2026 05:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="WbNrcb17"
X-Original-To: devicetree@vger.kernel.org
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012049.outbound.protection.outlook.com [40.93.195.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD7282ECE86;
	Tue, 13 Jan 2026 05:39:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.195.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768282769; cv=fail; b=tchesB9TkSTcDKqHWXvUPOawLdq/jQmSMmo1Jkt6ajpDcbLpZUQT4Jn2UFMnXaoLBnP5GAG9wtCsAn4uebqsU0N98eysh9lvobL1UwFigrHrK+pnfp+C9ShbUbh6+Ne5UNZ77O3sEOfcT5TAPu/VY2uJx7tMFcIO8sSTlspW2Zw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768282769; c=relaxed/simple;
	bh=v+fy7GydrEepsHL7frWQUxEAwEYaFPxB6hkDKhnSNkQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:To:CC; b=WeFmWyWyYZ9WVbc2zmAz1wQmNdDqL+ugLHlCMfJEfwOp0WXgA7E/PcG/wRs9lrecQkHUrU0PqrI4h+pfIZxfqmPm/+4MsM4A/K9FhzcmdiLhw3BwH8qmCq/be4Jvrmhx9iy34gOEbND9K0DpkQ/7jydCyNF1/Yi7WHsMisohLZU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=WbNrcb17; arc=fail smtp.client-ip=40.93.195.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w7ESrsHHXhxriVDpNXRtc1FRpEO2NdKID87mQVuyEPkUSdUIGozVhCGpEjHnCT10JQeSK6O+b92PeV2xvJxYcHBtcjZq3YKPidopMYP3yJsRa80wC2RJD0LEce8Bczf2eelfQ0o7AGDZw9OTonFIHzCmRF58xX/bLfCn1LYL9F5DDM9mOzE5fgE+pTPXgjjD8laUjRWfIDOnS7pPSrpudDMY3ooo65WJ/xOjhAQJXIbh6N9mkLCz9E12yK+EiEpsEXlTGtQJczvzr0uWZjlhT9rRMlFeRDsWnCbOBb++86/VEwn4uhqXj++G4d/VX4K/SBNdqF7EBF8Zqua13LROOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aS0b8bqEFN2y7/0p38FwugYXSDP+PYtxGqDco3SjEzQ=;
 b=xWqMvOmadvUfBldz74aDymA+7drVhBfdAvoM+LEUSmbSJFZumbfaIlss49ITfSAq9Wa0GLfdFBjsYlUFcvkv9Xbx9xbawUOX275YycgcYj5muXItMeljFrkk/GcElbe1XY9coItB2c+ueM3y8uPElYD02G2WbSe8krb11RSvl9I/vsw/4la/NPzOKhJWHMvjxNJahQbL6HAPtggGmBNWmyJlagqnGMUur8Md/8hw6bgcMsR9XcVRTrBzREppBl+l1BObj9IzrkjfBq6mOkUd6AS+BcLVgaqU5JjWTr5EoJzYRR4jHrI7D9Z+DArz4ByUtxsyu9gn0x8j12eUosV9Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.195) smtp.rcpttodomain=kernel.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aS0b8bqEFN2y7/0p38FwugYXSDP+PYtxGqDco3SjEzQ=;
 b=WbNrcb17Y1IHVHw6MNaZ1esAeAvLnbm+x/J37smhSKNP+6G8ng1yn6isl21pnHzohUG0Jvh3u4S5E3vXsPhR4tiiu7kuzaFM1isCJr/5S+JNaWIs2BDJgOWQwxXh4sDFUkK6fcv7toNIBcXvUmiG7SwfZZU18I7lsz7jG+lMbXY=
Received: from CH0PR03CA0025.namprd03.prod.outlook.com (2603:10b6:610:b0::30)
 by DS7PR10MB7179.namprd10.prod.outlook.com (2603:10b6:8:ef::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.4; Tue, 13 Jan
 2026 05:39:23 +0000
Received: from CH1PEPF0000A34A.namprd04.prod.outlook.com
 (2603:10b6:610:b0:cafe::c7) by CH0PR03CA0025.outlook.office365.com
 (2603:10b6:610:b0::30) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9499.7 via Frontend Transport; Tue,
 13 Jan 2026 05:39:13 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.195; helo=flwvzet201.ext.ti.com; pr=C
Received: from flwvzet201.ext.ti.com (198.47.21.195) by
 CH1PEPF0000A34A.mail.protection.outlook.com (10.167.244.5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9520.1 via Frontend Transport; Tue, 13 Jan 2026 05:39:21 +0000
Received: from DFLE211.ent.ti.com (10.64.6.69) by flwvzet201.ext.ti.com
 (10.248.192.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 12 Jan
 2026 23:39:12 -0600
Received: from DFLE202.ent.ti.com (10.64.6.60) by DFLE211.ent.ti.com
 (10.64.6.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Mon, 12 Jan
 2026 23:39:12 -0600
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DFLE202.ent.ti.com
 (10.64.6.60) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Mon, 12 Jan 2026 23:39:12 -0600
Received: from localhost (ada0543016.dhcp.ti.com [172.24.233.9])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 60D5dBTZ1738948;
	Mon, 12 Jan 2026 23:39:11 -0600
From: Anshul Dalal <anshuld@ti.com>
Date: Tue, 13 Jan 2026 11:08:56 +0530
Subject: [PATCH v8] dt-bindings: arm: keystone: add boot_* mboxes to ti,sci
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260113-k3_syscon_add_boot_mailboxes-v8-1-d43954527b5d@ti.com>
X-B4-Tracking: v=1; b=H4sIAG/aZWkC/5XRyU7DMBAG4FepfMYoM9574j0QiuzYphY0RnEUt
 ary7jgVS3Ih4vjP4ZvtRkoYUijkeLiRIUyppNzXoB8OpDvZ/jXQ5Gsm2KAAaAR9Y225li73rfW
 +dTmP7dmmd5cvoVDNBTrvjTYSSSU+hhDT5c4/v9R8SmXMw/XebYKl+gUD/A1PQIEKNBZVRGiUf
 BrTY5fPZFEnXEu4IyFtqA2ug8CVYwY2EvuPxOpMUoIQliOTvttI/FfCvbNNvEo6IMjotDZ8O5N
 YSbAnieVOVscgpIqebSW5knBvO1klZ5j11kTwXG0k9S3Jpn5jR1JV8kZZw1lsrMAfaZ7nT12ev
 rWBAgAA
X-Change-ID: 20251105-k3_syscon_add_boot_mailboxes-8452bdd98962
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, "Santosh
 Shilimkar" <ssantosh@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Andrew
 Davis" <afd@ti.com>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
	"Anshul Dalal" <anshuld@ti.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768282750; l=3998;
 i=anshuld@ti.com; s=20251022; h=from:subject:message-id;
 bh=v+fy7GydrEepsHL7frWQUxEAwEYaFPxB6hkDKhnSNkQ=;
 b=vK4LTomFSAXqs0VHhJTIDiFrcEeujcFIqRadLFbHgmQc+D41hxKVnxUoUWdzQwUEmHhrxjoyz
 zLSAY+GpP36DLekcl1AyDCx2ruKeNKM9XaEHcVGQhrUorCCbmhaJDmK
X-Developer-Key: i=anshuld@ti.com; a=ed25519;
 pk=Kv8FlQElcrR6efyEHmjtE83y8e0HKvqPyvVY+PJ4UFw=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH1PEPF0000A34A:EE_|DS7PR10MB7179:EE_
X-MS-Office365-Filtering-Correlation-Id: eb1fa524-23c1-47f9-73b7-08de52661a50
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|36860700013|34020700016|1800799024|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?Y2pSRGRUclFiUTVkNnJyWDBNaExxL200VWcyWTdmanhGbVRzaktQbHZpOTVr?=
 =?utf-8?B?ZnA2RlMzQ2RHajY1TzZIUXk1T1Q2WFFLS2c0ZkEvSXpoZ3FXNURBdCtHbGg1?=
 =?utf-8?B?cU14ejZIS0I2cFhPbGZiR1hoK2U0L05mK2NvallCeVp1bTRWUjF6eUhRUHhG?=
 =?utf-8?B?dGJpOFJtRWtqejJLM3FnemZ4Y0hhT0RFNVpNTXR2SzNZZW93NkhPR08rTlpG?=
 =?utf-8?B?NzZhSVoxdFNDNUtERURCUk51dXNEcFFsUjhqM1hTZi9la2I4YVVEZ1ZCTnRo?=
 =?utf-8?B?cFdpb1RzQUdWM0JRSmIwelAzaEk2R0VMTEd2b3hmY3M1ci9BSzYralo1eld5?=
 =?utf-8?B?eE83SmRydkZKdU9IdTEzVUxYYllPeklZaXA3NnhIb1FLek95alNpbDNDWENN?=
 =?utf-8?B?QnQ4TkVwWGoxNFNqS2R3MVR0bzREdWlPMnFvc3pkNlk4b3o0YWZRS3VnWFpq?=
 =?utf-8?B?YnFaUkFzYmlZcWRLY1RUTXNrN2FxNU01ZzA1NmdKMUlkdytoZFBCVTdHbkw5?=
 =?utf-8?B?eERHV21zSHIwckVReGRRZDFXRk5GbGxxOWFjR3VoYSszd1p4aDNoeE0wRFdE?=
 =?utf-8?B?VkRJRnAraGsrdEVZbnc0bnNnYkN3NUpIUHcvR3ZlL0xYTnhZbTNYLzhFK3h5?=
 =?utf-8?B?dzZiMHhmSnZVU3M0MWJBM3pvN0ZZSXJjU1pjU250b3FBWGNFb1hNUUdpYXMx?=
 =?utf-8?B?d2Q0UXZOUWhpSkEyOEtpQ0RUbEtENTloaENuMVRUMGw1WENSK1pUN2tPTG1V?=
 =?utf-8?B?Ymgvak5neVFpbWpRTkE4OFVBTHo3a0J3RGFQdUhOMnVWM3o0M1NHTzh6OHF6?=
 =?utf-8?B?N203RVQxYW1tdnFzenBWeitSVlMrRlhwSkNwc2dzZittYndmc2pwSHpiQmNY?=
 =?utf-8?B?ZUh1Mnpjc29BR0w5VUdqdFNnd0ZTeU8wWGhiUFhKQjZuL0pHbkQ2WXdDYlF4?=
 =?utf-8?B?bjV6QS9HS0dvMzQzMnh5RExzamVHV1d4QzhnODVwOFpIVFdPT2tRRHZ6bnVS?=
 =?utf-8?B?VW1YSDVIVjJKdG5oUjdwU1RocGl4V3R1Tng3NE14Um1aRE5zLzhENUdBcmpS?=
 =?utf-8?B?ZWtDcUpwNVVoaDh3WkQ4OXkydGZsSFcyZHN4NitFZTA1R1FSZWhsYzZUeElX?=
 =?utf-8?B?Nk5nZk96YTdUbTF0UlR6K1Y2bm5zd01ZbjVjdU1wc0VOc0xVVDN0WFRRTXlq?=
 =?utf-8?B?QUtxd20xSVdDTHhtREtvVkwrcnBXeGxwYXAvaWhTbFRiQmJPTXo5TWh3cmdh?=
 =?utf-8?B?dXFDcVpKWDJJUHpNRHdkektzSS9QUTZzSHlmNWUzaElwSUZxK2RYTE5mS2d3?=
 =?utf-8?B?ZFpVWVhQdHp0eFNiTnpFelVuTXplM1l4bW5weXMrTkZJaUExTkNUczlFZGhI?=
 =?utf-8?B?WVZHMmxDWWFJUytCS2kvYWdMZ1doYS9vZ3dkR3JwRmVWZE5SdmNySXhkdHFB?=
 =?utf-8?B?TElueDN0eXV2WDUzUG1CazRRL0FHSEF2bFV6WVRsNjR0dVFBKzJwd3AzdHEy?=
 =?utf-8?B?ZDlabFc2U3BOOU1PREkvVjRMQ0ZDaHdjSmZ3b3c0eEhUdjBWRXY3M3Zka3Q2?=
 =?utf-8?B?YjZ0OEVPN0l6d2NrRDh1SmVNbmRhNFFhT0dZaHd6ZkhDL1Vick1Xd21mUmRQ?=
 =?utf-8?B?MlM1elE1bFBRdUdkbDRHdnNNd3pJcUgzWVZnYzR4ZXZqV0xBcnJreFBxZkY1?=
 =?utf-8?B?bTN2QVRMR2JyYlh5M3RyUlNCdXdMMU1LMEZObUtTOHhVc2NTRHpNUFZnN2Yr?=
 =?utf-8?B?aTlmRmcwTDI4L2ZtTklVWG8wMU5OL1lmd2RIeWlpZnhoQjQwVnJkcFYveHlT?=
 =?utf-8?B?WGtqTnRXZDVoNmUyUU4rVEJaZWMvK0pUMWVuMi8yQk82VnNSYVBXSXlBeHhP?=
 =?utf-8?B?amJqZitqZTNKNGF0Q0hxWjJ3ZVJTYlhmR0Z1dWtqK2dqMGZyWWsrdC95Y05X?=
 =?utf-8?B?Ui9jWUdxMXdJMlNjbXhSV3lURlJyNm8wSEp5NUowNFE1UnJVbjkrRm5VUXBC?=
 =?utf-8?B?VlZVYmpIUXZ0MHYycU1pVmdId0Rud1BBV0F5SVF3MVZBRVFHSTdYZ3N5Y2c5?=
 =?utf-8?B?UEdMUXlHOWlKN2xpVTQxeUQ5cElCdGZQTGdDU0dlN1A3bHRFRHR4TEJ4L3NH?=
 =?utf-8?Q?AbLU=3D?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet201.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(376014)(36860700013)(34020700016)(1800799024)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2026 05:39:21.3825
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: eb1fa524-23c1-47f9-73b7-08de52661a50
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.195];Helo=[flwvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CH1PEPF0000A34A.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB7179

The bootloader on K3 devices makes use of mailboxes as per the ROM spec
which might be different than one's available to the kernel (firmware
spec).

Therefore, this patch adds the missing mailbox entries to the DT binding
if the matching compatible is ti,am654-sci to represent the mailboxes
exposed by the hardware during boot for the purpose of loading the
firmware.

The newly added mboxes are made optional by keeping minItems as 2 to
remain compliant with existing device-trees. The new 'notify' channel is
not supported on all SoCs and is therefore kept at last in the list.

Signed-off-by: Anshul Dalal <anshuld@ti.com>
---
Changes in v8:
- Refactored the patch to a simplified diff
- Link to v7: https://lore.kernel.org/r/20260107-k3_syscon_add_boot_mailboxes-v7-1-d97a943f0a52@ti.com

Changes in v7:
- Removed ti,am642-sci compatible
- Keep examples unchanged
- Modify ti,am654-sci ordering to ensure compliance with SoCs without a notify channel
- Link to v6: https://lore.kernel.org/r/20251222-k3_syscon_add_boot_mailboxes-v6-1-b93ada9f1d47@ti.com

Changes in v6:
- Added ti,am642-sci compatible to represent SoCs without a "notify" channel
- Added new examples instead of editing existing ones
- Link to v5: https://lore.kernel.org/r/20251215-k3_syscon_add_boot_mailboxes-v5-1-5a8fe567fd31@ti.com

Changes in v5:
- Added commit description for the optional mailboxes
- Link to v4: https://lore.kernel.org/r/20251205-k3_syscon_add_boot_mailboxes-v4-1-8e216fb88941@ti.com

Changes in v4:
- Make new boot_* mboxes conditional on ti,am654-sci compatible
- Link to v3: https://lore.kernel.org/r/20251112-k3_syscon_add_boot_mailboxes-v3-1-66155a4236dc@ti.com

Changes in v3:
- Drop [1/2] of the last patch series
- Update existing example with boot_* mailboxes instead of adding a new one
- Link to v2: https://lore.kernel.org/r/20251112-k3_syscon_add_boot_mailboxes-v2-0-aebc1e47b391@ti.com

Changes in v2:
- Remove maxItems entry
- Remove RFC tag from patch (added by mistake in v1)
- Document the new mailboxes in mboxes instead of mbox-names
- Provide example with all the mailboxes set
- Update commit title to have "ti,sci"
- Split into two patches
- Link to v1: https://lore.kernel.org/r/20251111-k3_syscon_add_boot_mailboxes-v1-1-529a27f21076@ti.com
---
 .../devicetree/bindings/arm/keystone/ti,sci.yaml   | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml b/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml
index 25a2b42105e5..0e505b96e499 100644
--- a/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml
+++ b/Documentation/devicetree/bindings/arm/keystone/ti,sci.yaml
@@ -51,15 +51,27 @@ properties:
     minItems: 1
 
   mbox-names:
+    minItems: 2
     description: |
       Specifies the mailboxes used to communicate with TI-SCI Controller
       made available from TI-SCI controller.
     items:
       - const: rx
       - const: tx
+      - const: boot_rx
+      - const: boot_tx
+      - const: boot_notify
+      - const: notify
 
   mboxes:
     minItems: 2
+    items:
+      - description: RX thread
+      - description: TX thread
+      - description: boot stage RX thread
+      - description: boot stage TX thread
+      - description: boot stage Notify thread
+      - description: Notify thread
 
   ti,host-id:
     $ref: /schemas/types.yaml#/definitions/uint32
@@ -79,6 +91,18 @@ properties:
     type: object
     $ref: /schemas/reset/ti,sci-reset.yaml#
 
+if:
+  properties:
+    compatible:
+      contains:
+        const: ti,k2g-sci
+then:
+  properties:
+    mbox-names:
+      maxItems: 2
+    mboxes:
+      maxItems: 2
+
 required:
   - compatible
   - mbox-names

---
base-commit: f417b7ffcbef7d76b0d8860518f50dae0e7e5eda
change-id: 20251105-k3_syscon_add_boot_mailboxes-8452bdd98962

Best regards,
-- 
Anshul Dalal <anshuld@ti.com>


