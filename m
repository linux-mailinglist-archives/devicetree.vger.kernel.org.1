Return-Path: <devicetree+bounces-263532-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mC9vFImahmnMPAQAu9opvQ
	(envelope-from <devicetree+bounces-263532-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 02:51:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE66104924
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 02:51:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8A7EC301AB90
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 01:51:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29B31330666;
	Sat,  7 Feb 2026 01:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b="HEq+d+jJ"
X-Original-To: devicetree@vger.kernel.org
Received: from DM1PR04CU001.outbound.protection.outlook.com (mail-centralusazon11020110.outbound.protection.outlook.com [52.101.61.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C30471FE47B;
	Sat,  7 Feb 2026 01:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.61.110
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770429062; cv=fail; b=AGiDzZ0bE1vI9FshMpP1HtXAuKl8Fxz/lxUJPyqHq1XIzHVtxf4a+/YpxsDRke8lxFJH+eP8SDuqUMwCY4xw3shja5df74HnZjyiR1+MDWVR32XzGKipvbOwPfbsE63NACz5m8OzobOvhq/6+upWBPq2HHNjC0UGJ1TKNOSOG6Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770429062; c=relaxed/simple;
	bh=+BRuzQ/D3AGBPV0vk3sGobN6C5oySy/5y5F5SPbqrKM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=oLGlZt3BpC7gqQVDXQPRZuKDCydyDTH9Jt3yoEW9gAS17NUpC91PKLGDRqtmRCNwB8z3mfcp85UGzZ8c6fgFMnqy8XudO1/J0h8rWCj6o5fvEg9ADwYqtwPMfxPuX/CdvQjrIHeD1b58CyfGiKy4we5VqFK+hGKJcIM/XLYxetQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com; spf=pass smtp.mailfrom=axiado.com; dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b=HEq+d+jJ; arc=fail smtp.client-ip=52.101.61.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axiado.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D69rwHdOt5R67I9vYvsPWG88pxP6JtqTAu9Xl2ZYD7/Ew9S+9kKNrdRZGKFtV8bvdCMxfKfmt1Wq2B8xgc2DWXWVXVfy8Eobzlc2g0x3IHrdHmwYp25fh0G5l6AKt5wyCYvKMtsGfSOAUGEpvsJW1WcLyijpMw1aiMBatS4FcGir1iRMHRywm2ym5sO+ad57P2Hf6Fffs8Eo8KH86jV3GRmwP8w94GcbeWOEOnIAk4KIDs8aPH5XRrXGDgm8nunbV5pEaqGUrfOb7S4s3RkKAgJ0ld9fpi3cofYuxRZFVrN/XNxI759cPfm1n9IqcHkT20IqtiCQOfd/L8f6N6Zkpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HYIXJPOZikmIqEATLdDJN+fjQsuHXhHVNYczCAx65a4=;
 b=aIxY5Cy0UASaODIgin31WiAozHCji4gp3+lcBj7d+KCwNiPKdXoDYMb0xdNx+cG8nABH+zALXRwRBVLFK5/Y+2ST3htdVXyYZ+w7ZdVh6/5Gm/f7e8I6H3iGSVWZqp5MAx/oJ3BaxdRazcSSKUyFHkkL6xfgw3nmEl1kPk/cmpFdxKh/KPWVhZ+Lv0YKud+aGjjWjcyMg/bJptlO//MsTMF5YZ/0J2MzJLhmwR9EZu48Gey+r6QWwyQ501STmzUSyKBwTuP2DijoUzGa7Ln4gRRg66bQVpIhOsS42F/+vJJcRYa7J+TNZIbmxLrqmVj7QRhFPwliON0+eWXdlxgjrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 50.233.182.194) smtp.rcpttodomain=arndb.de smtp.mailfrom=axiado.com;
 dmarc=none action=none header.from=axiado.com; dkim=none (message not
 signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axiado.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HYIXJPOZikmIqEATLdDJN+fjQsuHXhHVNYczCAx65a4=;
 b=HEq+d+jJ61k3LOF4QDYibgd3ZNJPhP0Q8ysv7OshbxBeiSXFN0NJPgC1XxWjPOZ1oGf521rTZ8Z3tlJH2FcVn+3eNgRCuhmZMuwtsgwXzRAa7XOPImrMOpW6xY4tGEBmtL4FnABlnwhCfEwTMyTVBa22d0RcdEmvtyR6NqHii4ylteOPCXRbGm/FEqsBZfrufTdtqDja064tyu4pen34YhIsipFpGCKXYAyDWjxlM2JQg0g9i6/wdI3jgHFs7ZEqQj89nzIK5EfBoZ6cPEcJXR5tFCDfTVGXDlq6vsx9QtuvrqnH5AgBIC+Zih+ZbWtTuyU9KAFiupnsxiylhdOkRg==
Received: from SJ0PR03CA0168.namprd03.prod.outlook.com (2603:10b6:a03:338::23)
 by BY1PR18MB5874.namprd18.prod.outlook.com (2603:10b6:a03:4b1::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.15; Sat, 7 Feb
 2026 01:50:57 +0000
Received: from SJ5PEPF000001C8.namprd05.prod.outlook.com
 (2603:10b6:a03:338:cafe::64) by SJ0PR03CA0168.outlook.office365.com
 (2603:10b6:a03:338::23) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.16 via Frontend Transport; Sat,
 7 Feb 2026 01:50:38 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 50.233.182.194)
 smtp.mailfrom=axiado.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axiado.com;
Received-SPF: Fail (protection.outlook.com: domain of axiado.com does not
 designate 50.233.182.194 as permitted sender)
 receiver=protection.outlook.com; client-ip=50.233.182.194;
 helo=smtp.corp.axiado.com;
Received: from smtp.corp.axiado.com (50.233.182.194) by
 SJ5PEPF000001C8.mail.protection.outlook.com (10.167.242.36) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9587.10
 via Frontend Transport; Sat, 7 Feb 2026 01:50:56 +0000
Received: from vm-swbuild02.AxiadoRD (unknown [10.4.1.182])
	by smtp.corp.axiado.com (Postfix) with ESMTP id A758E4186B53;
	Fri,  6 Feb 2026 17:50:55 -0800 (PST)
From: Karthikeyan Mitran <kmitran@axiado.com>
Date: Fri, 06 Feb 2026 17:50:47 -0800
Subject: [PATCH] MAINTAINERS: Update Axiado reviewer
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260206-axiado-ax3000-soc-maintainers-change-v1-1-a39ad47eb185@axiado.com>
X-B4-Tracking: v=1; b=H4sIAHaahmkC/y2NwQqDQAxEf0VybiCbikp/RXpYNbY5uFs2IoL47
 w3iYRje4c0cYFJUDF7VAUU2Nc3JITwqGL8xfQR1cgYmboipwbhrnLLXk4jQ8ohL1LR6pBjeThd
 4Hoa6bkPL4FO/IrPu103/Ps8/SkZbU3YAAAA=
X-Change-ID: 20260206-axiado-ax3000-soc-maintainers-change-812fbb447172
To: arnd@arndb.de
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Prasad Bolisetty <pbolisetty@axiado.com>, Harshit Shah <hshah@axiado.com>, 
 Tzu-Hao Wei <twei@axiado.com>, Karthikeyan Mitran <kmitran@axiado.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1550; i=kmitran@axiado.com;
 h=from:subject:message-id; bh=oRoPDjyFD8vmYCIveHXCocAS56rk+MxTEFzfc2KJua8=;
 b=owEBbQKS/ZANAwAKAfykr3bAxbrPAcsmYgBphpqAKnIqTAV6jeRPRDpA2U5IbgzNbOAp5dKdU
 exKnA/hwZ6JAjMEAAEKAB0WIQQykBiJeI5kfMQLrdj8pK92wMW6zwUCaYaagAAKCRD8pK92wMW6
 z5X7D/9WS6s8NkrWJX2ZF4CC+C84lWvbg+WF4oQAZFuq6facXDcVc6b8bKeJNye8xekmSK3jYaA
 /H6jHDsbCAG0u93hlav45RIwHqAIh5vKdV+J8vJTVzfG1rPNEHjfAPblK8QlI/JwO5vRxy9Pk2x
 s8J1rRCe3zkaRKL7RTB+K/wtVN4WTABFp8ONWZOVqt02Cx6NNcbl1O6XpuStpLB11u2jPHhr6Sa
 wyjSCuriE5mLAewIr3q7+RWoiwszJD/F2emOJyk+hPWWr8Q6V180i/Bc2/OP2wDLl0gZU8WnAiO
 sE7BPcu9CBrYH9oajIM6CsGj1AmZM01YhBRys98HdVwOZSWJ9C0ZS/Y6VgCzzd0uUABgkJA3kWf
 hN9DoAdSvBVLzkV+qpVwcO9IvhnCaqOWmTZj2RQL5eTiFk6c/8u7jRqVkrWOC1BmgwPLCgD3HQ7
 WsaATsnOHTel119cu+cqROh7XcewE+arZiTk4ewQOS3OgH+8QFlEV7efVD+dQfPZevW9NI1Oodq
 wx/PQ2kOH6eIsikOcWOYIC9dpO8u5RVzGzwvLdFQM5ecDP8a0Qa0I2VUpPDwDAhkUVR7t1kAmwr
 N1fNRu0ZIB4Emh+HW+ce5jjPPrLGXEBpI+N7VcM7jw3i9tRCAvG2FFmzQhh0DBvPOXRaPpfD1OI
 lKvPHdvtPTUJVzw==
X-Developer-Key: i=kmitran@axiado.com; a=openpgp;
 fpr=32901889788E647CC40BADD8FCA4AF76C0C5BACF
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PEPF000001C8:EE_|BY1PR18MB5874:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d0db67b-6935-47e9-f52f-08de65eb561b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|376014|36860700013|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?aFR6WlpQamk3ZmpmdWNBMVkrd3NsMXhaNng3cVJHSkVGVTNMdVgrTnB6L1lE?=
 =?utf-8?B?Y1VSWEgvQmpXbTFUNCswQmJlMk9hMExYME96ZFhwUFMxTmpTNzNGejdVRUdB?=
 =?utf-8?B?NC80OHRPajh2SnRFUGVuN0ZndUpQS2RxYmNYaWIzOUsvNndyMG1tSUxreGRj?=
 =?utf-8?B?QVpsTlJHNldIY29JR3luQUo3UXJFamNSdDhnREU4VDFTN0ZneDdrb3lyRWFU?=
 =?utf-8?B?bzBOaHFyV2F3cVVEZW5wckd5U29jRFFyaTI1UStYbGkwTnlKQ3VzVlk2VzR6?=
 =?utf-8?B?M1FZZC81SjBXSnF2aWpxNGpkZUVPUzZRMDRQdGhDb0x3VEtueGlJdUdtb0Fn?=
 =?utf-8?B?TEV0MUxrTTA1TTIwMFg2RVgzcy9KQ0xIRlBob2t4aGpjQUJCcEgwVTlVMzln?=
 =?utf-8?B?eDFYS3R2M3ZneCtDN0Z0ZFFudWNrb0hRaEZ1UFNkQytZMnlVTDcvWGFDbEFF?=
 =?utf-8?B?T1JlN0xCU3FhYkhxM1Jud0hWOHNSQlRhT0U3cTUwTGNWWHlkVHptNE0zN2JT?=
 =?utf-8?B?cy9wOHJrTTRzdlQ1cTZWcDloT2s5MlhWZktPWXJRR1dSbnExekxQanRLQzAr?=
 =?utf-8?B?QnhRb01WYzFITXF5ODFRcTBaRlVOanZ6d29UeC80R0xPQ1MvSzNBbW1oK3V5?=
 =?utf-8?B?NWNiclNRYjY0QkNUS3puZmtWd0FaZ0gxS25zQW5DR2x4K2ZabFE3ZDBvL1Zu?=
 =?utf-8?B?THNpOUR3M25qWHdxOHdUanM5SWhTM0o2UHQyTTRROEVnVjdDRFhFdGsyaUUx?=
 =?utf-8?B?ZFZ6ZzdrZmtNRjNvbkhnMkhoNnpBRjUxYnZQbjJMaUVVQmE5WENFOTNRc2Zx?=
 =?utf-8?B?aUZJNG9sQnlmL2gxV250bVFEa2ZENEhtMS9vQ0xSU0x2V1hpTVl5OXB1cHlG?=
 =?utf-8?B?eEFKUmMzQ25iT3Q3S0tsVXZPYWlCUlduUUZReGVVYWc4K2ppbFJjVkZVcXZH?=
 =?utf-8?B?UktWOVdSVXdpcXRhN2tQS04rYm84THFFWG40K2dYRHNjb0g3ZkQ1cTFiblJZ?=
 =?utf-8?B?Rmd6VHhjVG90UkVJb1pRRjVoaHpLV0Y5UTEvOWdGdVJZRGp2N2ZlTVBXS3dl?=
 =?utf-8?B?cDR5emlNUHE4aTJQYnl6WWp5ejZ0cXpRVTY2K25WK1FKbkx0L1ZzWElEc1Fh?=
 =?utf-8?B?emR6WEU3bnRLYndYWjhzK0c3UFdGUExZVHRJQjhSY2lYRVFiU2hEUlVLTmdL?=
 =?utf-8?B?UGRDK3lsNWVGSU11N2dnK2pDMWx1RlhRa3VUa1M3YTA5am1FdHhaV2d5a3p2?=
 =?utf-8?B?OFFYQjlZelRrclMrLzBRWHREeU9pVDZ0ODJBaERaQ2daN1MxVUpuKzE5eTBD?=
 =?utf-8?B?MFJ4T0wydEx6Wk82cVlzY3d4c3BieFFVcnNGTys0L0RFeGdBd2plaDNKV1Y1?=
 =?utf-8?B?am50M1g1bW1JQ0FLcUV2Wlk0MFFvaC9HdmpwM0R1bTkzSWNrNENjYmdUTmND?=
 =?utf-8?B?bHdoY3d1YnAzOUdHSzZxcXZhS1VKbXVMdVhycFVvTDR0WUN5WFAwYUNHaE0z?=
 =?utf-8?B?QmgwOTVDNmgzTnJMQnZpa29LV1U5VGdsNFZXaTJtTWNUZ2huZjh0eG55dktw?=
 =?utf-8?B?cVVBY1NpaFh1R3JqRTlpSXAyOFZPUUJuUndKa3JxRndUVERHWDZ2UjczakVZ?=
 =?utf-8?B?elNra1Vjd0NaeVVWMmtDQUVWSExaa1IrY0xjenhGS2JIT2lBaUZUY2RscmRN?=
 =?utf-8?B?N1l1WE1yMTY5RXRRTGE3Ylgva2wxcUVFSWk4ZDFMRFg4QnRGVEQ1R1Uwb2VG?=
 =?utf-8?B?U3daV1BPSWkrMW5FRDl4NFZ5OGNmaHZJQ0Z1L0ZwYkFIamZZOW1RdGF5cmtB?=
 =?utf-8?B?bU51anB0cDNBWElZOW93UGxQbUttUjRvSXN6c0xDblFHanFzU0UrbHVaUWZZ?=
 =?utf-8?B?ckJ2b0dCb3I0cWFBanFNSDVXYXBJOHRObXFkQkk1L3NDVDgvbS9iWnBIOVdS?=
 =?utf-8?B?R2N1bktDWUtBeUR6VDROdDgvMlhqV1VXc1BTZzV0QzN5U29uemQzajZXbVZY?=
 =?utf-8?B?dCtOZFRJODh2N1B1Sm1TVmxMdUd2cVBOSHg4UjlCem5DR2FmbGtoMXlDa1BP?=
 =?utf-8?B?d1cra1hVN2ozRjBRNlYyekFSa2ovbnV3cUJnakUyd1FCRldqUWVrZjJuUzh0?=
 =?utf-8?B?N2k3dHJoU1FjZDhGaDJick9iZmVlSE5PZVdrUEJvVVY1Z1ViLzlLQWxSSlFx?=
 =?utf-8?B?TDRacEtuVGtTWnI2enFMMXVRQWVDZVRlNklyNmliTXVwWkUySWtJMFVqakU3?=
 =?utf-8?B?Y1dyNU9BUkZoM0FIRmVFTHB0OXFBPT0=?=
X-Forefront-Antispam-Report:
	CIP:50.233.182.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtp.corp.axiado.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(376014)(36860700013)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	u47WtAAmxVjyfEFqZGEjwolhqgHa5BkCArzoZuq05E50M2NWa8NdNShoVfDbaeopdWbNNQPMa75ppY1z6GqdHvElxV7SApHsgeGhVIt1/u2eMwwZYfxqhxS/qc7t7B4XnrGONeIe8frl8MhFEHODNpGafshjo4ZIPztsedVWWxiHmAj+OIokgJumA2xDAES0yN+uEGkhVSzRRWTbLvHbX3YLcW7EExpi/LWS4OJtr8doLqQewcTiOoPPFPzUenaRiI3nTFepLnUh2CNFhClZHrwhdYO4MJLyPDWgq9C2ooD/rZryVP5Q21l4/BBOufgSSc+WZG67qlcPp1/p+Ztj78vk+ankr3AGyucguXSTQq+4vMN+v4JKfHK9CNHBgTHiJTgCaPxa+KqZ3VEqV2jbkbWK7CsOOAfK7SER17GjBDmnENQ5jSNWpzXymznKoap+
X-OriginatorOrg: axiado.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2026 01:50:56.9093
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d0db67b-6935-47e9-f52f-08de65eb561b
X-MS-Exchange-CrossTenant-Id: ff2db17c-4338-408e-9036-2dee8e3e17d7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=ff2db17c-4338-408e-9036-2dee8e3e17d7;Ip=[50.233.182.194];Helo=[smtp.corp.axiado.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ5PEPF000001C8.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR18MB5874
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[axiado.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263532-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[axiado.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[axiado.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,infradead.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kmitran@axiado.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.996];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: ADE66104924
X-Rspamd-Action: no action

From: Prasad Bolisetty <pbolisetty@axiado.com>

I am working for the Axiado SoC platform drivers. Adding myself
and adding email alias for reviewer

Signed-off-by: Prasad Bolisetty <pbolisetty@axiado.com>
Acked-by: Harshit Shah <hshah@axiado.com>
Signed-off-by: Tzu-Hao Wei <twei@axiado.com>
Signed-off-by: Karthikeyan Mitran <kmitran@axiado.com>
---
Hi Arnd,
 This patch adds 3 new Maintainers for Axiado-AX3000 SoC Architecture

also We will be adding support for the Axiado SoC series of devices, which includes:
- Device tree bindings
- ~10 patches over next 2-3 months

Would you be willing to create a topic branch (e.g.,
axiado/dt that we can base our work on and you can
pull into your for-next branch?

Thanks,
Karthikeyan
---
 MAINTAINERS | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5b11839cba9d..52f1228bf137 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2554,7 +2554,10 @@ F:	arch/arm/mach-aspeed/
 N:	aspeed
 
 ARM/AXIADO ARCHITECTURE
-M:	Harshit Shah <hshah@axiado.com>
+M:	Prasad Bolisetty <pbolisetty@axiado.com>
+M:	Tzu-Hao Wei <twei@axiado.com>
+M:	Karthikeyan Mitran <kmitran@axiado.com>
+R:	Axiado Reviewers <linux-maintainer@axiado.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	Documentation/devicetree/bindings/arm/axiado.yaml

---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20260206-axiado-ax3000-soc-maintainers-change-812fbb447172

Best regards,
-- 
Karthikeyan Mitran <kmitran@axiado.com>


