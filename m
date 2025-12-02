Return-Path: <devicetree+bounces-243666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A32C9B194
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 11:21:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 654B74E4B85
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 10:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79CF030CDA9;
	Tue,  2 Dec 2025 10:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="FdOyELLC"
X-Original-To: devicetree@vger.kernel.org
Received: from PH7PR06CU001.outbound.protection.outlook.com (mail-westus3azon11010034.outbound.protection.outlook.com [52.101.201.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C68C280A56;
	Tue,  2 Dec 2025 10:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.201.34
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764670813; cv=fail; b=MlgK2ca2qPr4cJFXx1TVNuWU5ORFQhtre2TQacdbcBdXjs3KAfKcRQAXws4YbjhJfvAjbaZa1EC8D6Ncw7cpC4/x9dpFZx/g2k4KmLYD2uYCXaHBJWP8beKzxxt2oW/OcFyfNF3siOxtuI8Iqw4OfLTs8uhLr2uu7bYXMndchMQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764670813; c=relaxed/simple;
	bh=K4BZxnx1xOhHEQK4VSamzBu7tHHt7ULJaTGpjYudtkA=;
	h=From:To:Cc:Subject:Date:Message-Id:Content-Type:MIME-Version; b=K15QWbkUNiI3bt5p3N6psYHgS+6upsrryNf4Ap9IHUSJPHImJKszm2Cc7sHPvA2uxzS4QH1i49GNsNY+Ma/iSn+qJNDBV+ILkk3oMNViPAaXRWF9bX01QlwD5rQLc2FIsfZfGvMrCw+Tnp6AMgzpgKLvxdTKxBAHUfXGMvmV59E=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=FdOyELLC; arc=fail smtp.client-ip=52.101.201.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Vo05jKEdTSFvqVNNYJBv8lF5jEI/rMFQ9op7ud6H/oK9ROBYHaciNDOhbbFeM5rVY0WJqPDwR5QfSOB9/Ed9J7ekHOoMHLG+C93tJQrWhr9xLdvPZN99hwFxWDYv7GhIOVHx4Shq0xWPe3brX0YygalaLze9hDKMJiqhh8EbTz466YWaJetr3/VneeANZnjcxOraGL4GhOF1Snw8Ec77QxP6EAbxUXvUn+ncZ9Fhyx7IqcLLU+qR4VchKldTSdgUHlHIHZkMtZ15RnTqQYsYTO+8xk0n34LmdzQkSmsy4vZ5EOUv/gR7xHpCo9tw9K14DEfruL4OTfdltxZxsh5t3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=21TLVRnXGfjBoCX4R8JADxcsUfKBN7ZBA4lhxK1njK0=;
 b=VMQzQKSP8OBjueoiX+F8Cu+sFfiAxlkyE6Y4SFXpXGaeoQCwpfB9DOVpk4NbJARwPyDEHhJrKBH+FK3KvCw4u4AAx4twHzjCtetHSN670FQeHouu/QhgeJgX+WJ3pUuXcTCJgAHUPhx9DGfiKNOGvlwwf0JdZiiut3s5qfJYP6omQGpHrZkLjXXzpg6RBWNfnuij/6Yp9n2Ar1UqKp9tdaiwMTPrJdnjDo+B14QHMXfJHXMW3pSJCULnXPARv/Cczo9foxeGySdigGUwPpdj6qU8a+JY4R0GR6VHjSe9pkxaZ4oTpngsxvsUFwKLZ5XIPrj5WlbhwqjZHAqyLrbb2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=21TLVRnXGfjBoCX4R8JADxcsUfKBN7ZBA4lhxK1njK0=;
 b=FdOyELLCa1tlo9b5HbBCIC2vPfWABwaOxIKYtaCvEgQzItPbLKBFGrc48MipFM1cvad95gYTUgWGuzeJuSk3c0CNzvzJ0j65vpDKuWHFprWRrxbOj/tMvr3+yAjgHb+TVf7Y9lYr4k2ekPW66R1p179HjXlw9pe/1nvxSTrvG1rmLGulsmb4O8PSgdiT0potNsWsnw4YDTDRCxit5oHmQ41CJAyRHPzZstxXkZm3fI4CN5lFP57rXBuXxIWb63h+kJ4oOeiya6WUXCoN47xoabFUxdeRXtyyd0ueLWb+LsT6krLROIGzYADS2zYCx6IH6bN3zATosOg7PL2Vnxzu7A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from PH0PR03MB6510.namprd03.prod.outlook.com (2603:10b6:510:b0::10)
 by DS0PR03MB7607.namprd03.prod.outlook.com (2603:10b6:8:201::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Tue, 2 Dec
 2025 10:20:03 +0000
Received: from PH0PR03MB6510.namprd03.prod.outlook.com
 ([fe80::cb76:85d7:16fa:be81]) by PH0PR03MB6510.namprd03.prod.outlook.com
 ([fe80::cb76:85d7:16fa:be81%5]) with mapi id 15.20.9366.012; Tue, 2 Dec 2025
 10:20:03 +0000
From: niravkumarlaxmidas.rabara@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
Subject: [PATCH 0/2] Add support for Agilex5 SoCFPGA modular board
Date: Tue,  2 Dec 2025 18:16:50 +0800
Message-Id: <20251202101652.2317844-1-niravkumarlaxmidas.rabara@altera.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0058.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::33) To PH0PR03MB6510.namprd03.prod.outlook.com
 (2603:10b6:510:b0::10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR03MB6510:EE_|DS0PR03MB7607:EE_
X-MS-Office365-Filtering-Correlation-Id: 73a86377-0656-46b2-1a71-08de318c5b22
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?ZYHTkfPsZWXV4QHE9U2++jjMUOU4cUu7S9vMtonQLxI0KSU6Asl9xhbVPsoy?=
 =?us-ascii?Q?uaMyNavf+x3d1MEgMqgBc3dETSIUCte8+Wr1oiiPvsLes5v/xdd3vAZdhuTh?=
 =?us-ascii?Q?mpa4gFSBNe4rd3yqrTAPfkb322kQppNypOAkzI6OnL9UahFbeKje96mSEDdU?=
 =?us-ascii?Q?+XDhpd8ujdK6WxJolg76MboeNa3oebQjx0FmDpx0LrVzj4AMMuDoidAXLL6A?=
 =?us-ascii?Q?2xDttJLlh7EUv7QKSmJio6NVTjo2ikGkWYf9WsXjsVI6r0nNBNQjFh2Cr1mg?=
 =?us-ascii?Q?VkqZQwBE97HGtBHA8s/c3rEuq8bkhD9WUeNViqXm7kfd1kXEbsrJHy5Fw4bM?=
 =?us-ascii?Q?e5FUT/2RglWlJnY5l5fLtFeNp4m5T7wLxZneOfDlYNdogKaF2PPP78wU/PPg?=
 =?us-ascii?Q?jUTBiJKrXFUATNJVZ8zZ5Z445alKJobaYEjsk//ZnLaeR1pHAoAHHJtuAVb7?=
 =?us-ascii?Q?KxBedXTfLOcXfpjNO7a3eK/nxjEgoEcwQfk3a/Ms5QOcUyUpz48LQSC32mdc?=
 =?us-ascii?Q?7eMhTIcD5rrhILoNvEr0KHqbpJ/KAhzHHUNVpwXu74+pL3R+qiRFqZWp982j?=
 =?us-ascii?Q?kqsiMJxbvbjb7jO5rdYnSFL2SYyP6h+VeJ24u40DfrSnA3mSQAyNoAymYOj8?=
 =?us-ascii?Q?7pmmg5u8H8GzoTKQW4BBwiXZwOvaah3G5tuJ6H7UbJX0y2F/B+1DR6aZ6PEv?=
 =?us-ascii?Q?4YH9D7vh4KNZ84cwyyM8eaPvAgVmR9GQJo1iCf48zVC36SvuG8nYuQtFGnbm?=
 =?us-ascii?Q?HpFyQUCVj1Y/HF0cmGXgzwoIhpyPWc8Pq2xIziON+K1Zbn7SGA4pNIegtU9w?=
 =?us-ascii?Q?jXvGNGX8ittterSFAu0eYiXzpXiiVBwu4Tsw8z4xJAn57R7a1fmD/JwC2e0u?=
 =?us-ascii?Q?TTvfwe6XTpm0X0NvAWyzmneGHwaM739zPsaiTFf0yhZ0Zzv57WY1dOOAKcc5?=
 =?us-ascii?Q?Zmzoe8uyZjzmrJ5qxhjJPgmFXrEVj2zb/RI2jAM78o+M/Nmco7SOFBY5JFQD?=
 =?us-ascii?Q?sqzKB6kFNyjXBbze9VoyuE0vmiI5qUr+SjVPQBVTwzBeHqd+1Kaf2lCTn9Nz?=
 =?us-ascii?Q?VWL2wt2cbH1IDqGqkbBUFIO1Su1AI9X+sZyimAcGnEagWmm38iGMgg7vKCzh?=
 =?us-ascii?Q?alOI/loWtft1liphfYczFAkgP0jLFqXGDfQRp7ELDs0NAXeuizY6mvK6c6tQ?=
 =?us-ascii?Q?rEUCdvO2zlUyF+yXI/av1C2Xn/Q8nfNt3tHdl9+FowKQLHb0FARVkngSn8+I?=
 =?us-ascii?Q?x28LvMI+KdrvlWy93Oq3m6ZPb3kitZu1MUjrpptTUQ3NpYLckp9EmjmD3dcg?=
 =?us-ascii?Q?GLPcLme7V1ewFXIoNrhLPUVG3dVvsomoArn5RbDRornN0UkNhs61JmQazmP/?=
 =?us-ascii?Q?MVpvXHyYCgDnRUBrwsXloMEF9lvyHp4HcsTqXpC50hASArbAk/dLsCzFKRWp?=
 =?us-ascii?Q?HsawfDf3Dw+1OmIO6qboT4ToUNr/GkTsdwdelPem7SgzNCBTOZ7G2g=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR03MB6510.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?ggPAxLcXQsGlQoVo+Q5tc9udmYDK0UYsO/xYHTVY6uzHNdPsyFtoIjP+B8S2?=
 =?us-ascii?Q?98i4cKBUDUdlx1oLp6V/yuGK0Ff6WUWFaoXwxZr8M/xwxGeyvuE5cs/FyXn3?=
 =?us-ascii?Q?7EQiu5Muaahe+HrYSHS/PX3zOpjEcqkDvVRQhWOaG7a6L8tGVZ9XMKpsXygK?=
 =?us-ascii?Q?foKL9vU5umlqL8K7pjtDDi/RQ3KQOS54cXvd4HLrwSOaUQx72NnABYjkE9ej?=
 =?us-ascii?Q?5N0y6QANcli/SD8B2PvYf9JFSWgPMAJ5BP6xp38M866FHHyFLVMQ03y5Kijq?=
 =?us-ascii?Q?1vsBUtGlcQrL1mPPEAmxrlkifFNUy5m97wVuHRVL8alra+DEADKRC6HvbnTx?=
 =?us-ascii?Q?hModsUAvNjtP5/l34/DvvhFdZpbH+CH9jz0Ax6znklpYkEW7BFXNfhYs1aGu?=
 =?us-ascii?Q?SR3zBp8hz9L+kNrUXWYlOOUYs3cbK82CwRgDlDEmUMUhfSK2t/Wg7mpiYdW6?=
 =?us-ascii?Q?CUMLKaVPEtciq8KSd0+plJO3LdxdEoOGNKj/EZBZktZ7TUrvmTit/A21hAVr?=
 =?us-ascii?Q?kjrcQp1eUyOoQzeeJ9d0b6vjr3WoWSjSBxVKLWv+aCkEFkWm1K0Z5ZpbzqyZ?=
 =?us-ascii?Q?WrJMHQAnU/fqH7FaBVliZ40/oNJuOoWtHzgTR9bHcqUEoF/s96531rChcu70?=
 =?us-ascii?Q?Dx6l6/envbdcaLYY1LuUPbieFaJGr0mr3d+k4ZWfJlFWpT1uG0W3mHEKmij9?=
 =?us-ascii?Q?xlxc/8KxWH/GqGFQHEL5TokbEMuL67LRt7hxDiCCu6SwfDtRIU9uHUkibl/i?=
 =?us-ascii?Q?co5G+/8d/nIofttGPvMk6hUIsIgkt8AQlLnsoXJWe9vNpQ1HQ04drcwCyuJm?=
 =?us-ascii?Q?h5GwlEW950TStXvIhTp6xb2f2yEf0FGyneqLnwFzkzW0L5dssHQl2hzj4ieq?=
 =?us-ascii?Q?wl6fStXC6R0L8WjfPApbol0fwBGQuMd5Ly3EWTjNGzZM9dzNlEUa7CCuwsA/?=
 =?us-ascii?Q?IZy1uaXfUXTmL+pWD2MslImgwsXlu0jRN3QNMIQszGDRHakIMGYtfFWiy51K?=
 =?us-ascii?Q?p7qYbOPNq8lRw9+djRJFfNLp2hZsQ7c0GOtVGC8YmJfw8wFCKVj9n6FLguUJ?=
 =?us-ascii?Q?l/oC0OZaJuVHdSvKs80tCbEdAKSEUVM/FO8qNhMJEyvh86muGiwdrQFYdkYw?=
 =?us-ascii?Q?CY6bcNygWd28BvzZVvPMlIpPianzpCsD35ylTAT1M3jSoxVfIBXgzhTvdMdj?=
 =?us-ascii?Q?Z7vb4Mj4Wbo+glK03jWRqoFXEJUH87CK/dYfTMoLVP3ocfLgKQLpjYf+o337?=
 =?us-ascii?Q?DrGL9V9ek6v2j4q9RlU/Uad+oBR0jLpY+QmZMKkA9SVAuC62i4o6xlJEzLb2?=
 =?us-ascii?Q?j19ffF+0AbgpQJnuE9Kk8nhdXerhU9fq222rm/0Glrd16itZOT9LGI8+yQrN?=
 =?us-ascii?Q?/XqoR+faWVF+37TyQ9DI7lmsw1xpC7cipsAIzjOrQ3G3sO98bmWSNU+BF9lb?=
 =?us-ascii?Q?HzEm9JbVL2XjJ1BuE18J2gNOf6WfY/+zaQq9MROpm1sdoArv3lz2fR2cinSV?=
 =?us-ascii?Q?3k+yY4m0Oj/GeXpI+FuoYPCoRRNXhjMTEnjN1EKZ3n4tfBzRjjzBUwlPfE3E?=
 =?us-ascii?Q?GoiM/jXiIK0FzWPqvvYdslEfysI7CEQhvBBagJyahrViJE4+SF6OW1ovUQfI?=
 =?us-ascii?Q?t6j54aSmkVKrTvmEqyF/l9I=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73a86377-0656-46b2-1a71-08de318c5b22
X-MS-Exchange-CrossTenant-AuthSource: PH0PR03MB6510.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2025 10:20:03.1080
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Iitqy6CJCPLrO7eDlJ6nzXu255F9+4ptnkjn3kuzOpxNZUctJqHaDwOjY2ZoTJ8l3+0BniMBDVJaziKRODSBtRpSz5V8Wh3Qh6riTYEBSKthMt42CL21KgKcD5QmQyl2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR03MB7607

From: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>

The Agilex5 Modular board consists of a compute module (Agilex5 SoCFPGA)
attached to a carrier board that provides PCIe and additional system
interfaces.

https://www.altera.com/products/devkit/a1jui0000061qabmaa/agilex-5-fpga-and-soc-e-series-modular-development-kit-es

* Patch 1 - Add compatible string for the modular board.
* Patch 2 - Add device tree for modular board.

Note: This patchset is based on socfpga maintainer's tree
https://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git/log/?h=socfpga_dts_for_v6.19

Niravkumar L Rabara (2):
  dt-bindings: intel: Add Agilex5 SoCFPGA modular board
  arm64: dts: socfpga: agilex5: add support for modular board

 .../bindings/arm/intel,socfpga.yaml           |   1 +
 arch/arm64/boot/dts/intel/Makefile            |   1 +
 .../intel/socfpga_agilex5_socdk_modular.dts   | 109 ++++++++++++++++++
 3 files changed, 111 insertions(+)
 create mode 100644 arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_modular.dts

-- 
2.25.1


