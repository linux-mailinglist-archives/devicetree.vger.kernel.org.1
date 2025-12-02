Return-Path: <devicetree+bounces-243667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A2827C9B1A3
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 11:22:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1460E4E3FD3
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 10:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F30430F939;
	Tue,  2 Dec 2025 10:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="l3kyQZj8"
X-Original-To: devicetree@vger.kernel.org
Received: from PH7PR06CU001.outbound.protection.outlook.com (mail-westus3azon11010034.outbound.protection.outlook.com [52.101.201.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E0E430DD18;
	Tue,  2 Dec 2025 10:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.201.34
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764670815; cv=fail; b=DMrCmFxPCxKO59XQHQS58xXWtv9f9bgZgPrhI7Y4a69v+HbYSjQMEfl4UiwwOoH/D05ddlxM9AOMV/jvItmh844kVsNGI4S64/MNoLHhyF2KXh+/l7FVgL7C9pMIU/aogjojJT/ydTrF+WL7RAhVy4Lc744glvfMDGbLxCiMhg4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764670815; c=relaxed/simple;
	bh=TljDOsesBrt7wktxdjx0eTwfxpw3+j45/nvpKxDLqwo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=mZ7/qxuSNX04sQ0gHakBzBeW3wKZFoM6EugJdwG+bg7NzOWmZd2W9bEIFVZ2IiZ+tSSFRDQmr0qD+8SASS2nq1yONiq/cLhbtagQAFMBLeD34PXBn7lL1S84J4gSRrFcTSOs8MG0nxwqWB1xieeTw6sVVpQuJNCrZJ9LW8Z1yfY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=l3kyQZj8; arc=fail smtp.client-ip=52.101.201.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JUCK1lKCfqdPOvDxRRXn+uigYfU5zsQnlp7qlKf22rfAQrFcKlUG/JGjGI5iUB1JtgGYb0GTYtQg1tKdMI1uMAiiz1hlGpIEXgCFf5WtlenJFXLz1v4DFp2rv6kBa54fGtu+vQeZY+Ptb5DmoNJrPqQpkBmb6E35/3nx4HyXA91UxMeDWc07uiyCimHAjClSOVkcn8KEqiMGFfmNTAvaagH9G/genlj/bbdLCC+A5UOOA0jv1m/B4MrKq3K/HaXOneUiSQF7GolEmERTaOr9SNMcLG2KFGEPOMqBGW2qcJnUUzVP5lAtsJYT9TqAhb2v0A+f7TGtUwADARH3r4LKyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lC7Z7do6DkDZEY2pFJ2EmR/ulMB9xSF7Di6VUS45a38=;
 b=FlKgUUraoi6G9D0zjsukiUGpTC+C8q+kS5SYYVOM+vqu4OHtiWnC0Ijot7LfmNpKFxkNMAYIuWq1Eb7CCgXV1d303iGJDJw7nTrcgXvIn59vS2U5OOFcpgv4VTi2sKPMjiOSbKjk/JYolvDqUd7pxWqcIPkz8RwRGL8uAMKe4f9VQGQNHpaM6kvQksMePYQSBCl3iY1QVsgaiSmp3SSO8StGGJ5ckH9FyaquKsSHxsTXHvVTOMMv0kFY/+qS/91+BSESv3abBYc/G9BWFZ3A+9dYUoUCrSD09Pjt+mTm8ByvHlMvxhy2xbjSHvtXx3zz37JKWiQ4uVyzbyk1cSNSLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lC7Z7do6DkDZEY2pFJ2EmR/ulMB9xSF7Di6VUS45a38=;
 b=l3kyQZj83Z8TkDAoxB8+R9oxwHcnwmZ4clv3+nmdfiEC74BvA0EmtnNbnO8C4n1kLPJN3O+iq5GJ7QHSpF3Ry2tBC0wwE6SMVUTSh0bFzTEfJtNzmWV7zFxEONi1sBao9P9ab7z8aopw9aLQ/rv6uEcKF4XLS/90vqaXGzT3Cd31QgoU8Ss+nSUCbNeVK0NdDzS635QtHsu5Ev+MTkcL9Sb3wrsJEuDJiq2XUgc+8zEbsC7IsIuY2uPOpG+4S+VvKUvHhaFeSm/joBN+RFyCiq9QwUor2KUh4g/2lE7qomfF3Ab9mVYlSoAwoIXIyCruaNvGtQKkY8+si9ca0VblRQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from PH0PR03MB6510.namprd03.prod.outlook.com (2603:10b6:510:b0::10)
 by DS0PR03MB7607.namprd03.prod.outlook.com (2603:10b6:8:201::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Tue, 2 Dec
 2025 10:20:11 +0000
Received: from PH0PR03MB6510.namprd03.prod.outlook.com
 ([fe80::cb76:85d7:16fa:be81]) by PH0PR03MB6510.namprd03.prod.outlook.com
 ([fe80::cb76:85d7:16fa:be81%5]) with mapi id 15.20.9366.012; Tue, 2 Dec 2025
 10:20:10 +0000
From: niravkumarlaxmidas.rabara@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
Subject: [PATCH 1/2] dt-bindings: intel: Add Agilex5 SoCFPGA modular board
Date: Tue,  2 Dec 2025 18:16:51 +0800
Message-Id: <20251202101652.2317844-2-niravkumarlaxmidas.rabara@altera.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251202101652.2317844-1-niravkumarlaxmidas.rabara@altera.com>
References: <20251202101652.2317844-1-niravkumarlaxmidas.rabara@altera.com>
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
X-MS-Office365-Filtering-Correlation-Id: bc3d74fc-8590-46ea-87d3-08de318c5fd7
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?l/OyTqMiYOg8t7DTKh3zsyj2iw9dgVfgl/DGQZDj0s32PJIEtYgIc2m0v/8r?=
 =?us-ascii?Q?VQM+VOK0BqoE990j645na3AKsYF4wibIliXaYIQZCoQ+rkuHl0gJy+Vsg4E/?=
 =?us-ascii?Q?W+bAOjPwPo8zY/TudDKj0uqKSwugQNMq+xtkxJ8Dku/4FKkXmhn0K8Pnz0OD?=
 =?us-ascii?Q?gbqfGcvULofFs3nxcnHDvzOR2rxKw83ijQM4DjTIw4PLd/NsblGFh144HbXt?=
 =?us-ascii?Q?naDwcpPVRvF/RTN1Ur1RP2bt/2Eo0IsIEsXmuXKNrn+g1Wl1dFYuRQV4HvA5?=
 =?us-ascii?Q?T63tdCObGScekqhqLf2/zbq/z8aEgP+1ZurBNTEr6wW3tezPNuBOE8HyiI/A?=
 =?us-ascii?Q?zzu8l9BQ47s7qbovlC16Bwhu4ey0cssyoHLRZZNT+JwLv7YO8I6LMGf1ncTM?=
 =?us-ascii?Q?+YT9JQkcs3GfeN7sm1d16hlOes37ePj5FXve35ktaUluQhPEy5J6L8WO6GG4?=
 =?us-ascii?Q?pdpcLY+qmrWcnc6xmIAkt9JkkWFURddJloMBYjaBmJWnzfQHYbmit3Aii0x3?=
 =?us-ascii?Q?+BbMfWiGWRM0wWVONRYWXgDml54QaJf8a4XjY5qHnnDjJ8/RgJizVBRnqwEk?=
 =?us-ascii?Q?15Jsgru2vaQSTpBffaSNYBNqEVZ8gya9yFm+Z9394EniAbwJGxtuHE8bn5Ds?=
 =?us-ascii?Q?nrtW4yS1TMfIT/7VW2v6MAAo+AB8NBYsR02hsSBLkkWYVlsfS81dXPQaK6Nx?=
 =?us-ascii?Q?P51CB/lWQ8cgkE81hqDEPofuytq3QWZJ6unopKMYfllDUPfNSgi2CqTmjWsR?=
 =?us-ascii?Q?/ClPJefMxVs9gYu/UUS/4ferf9Tpfz8x87xdre668UKkm4GTnAYkh82F8toX?=
 =?us-ascii?Q?yeiEZZu9ZvYLw4Rxf1xSV6kFnuwnvRsSW8AYDBDn1e/UMr8m4eBlOPh0+K1e?=
 =?us-ascii?Q?/hrHXiwCNhQtBw3Gq5A9V4jdiFwbwKoRNiW6QmkdCbMhKuhGPppU2S9hA5pk?=
 =?us-ascii?Q?O0gDAqvaQ/8lcBnmNgDc07yxSMtwLqjxDJglHAG/Bbv+TNwM665xYSsqcypP?=
 =?us-ascii?Q?1PK9v1YRPGS+Rurmj9dubtuSWbazO2RMW8bNytswTJd1fwB/NJtGE8qr4vbT?=
 =?us-ascii?Q?qwSGbvy/i3lYx89EYFT87rW95Uy7n80Rt5n9WPcT40hvReFQlO2trUyeBgsr?=
 =?us-ascii?Q?IYM8OvMrBpRA43hzdT83if0dYH/6cyBHbRS3PtNjGg5B1UO86VvvV8TpYwnq?=
 =?us-ascii?Q?uzsZBNiaVNHMzh8XIhYZ0mPAgP6400Vg5+Eiufyk0vg9WGyn+QZ8QsFGhQSt?=
 =?us-ascii?Q?SirkqNJG46f0pFIgGncnDe30M94GSWq0QtcQtg8FA4ci0UabaAObhhyFWF48?=
 =?us-ascii?Q?CESwidozBLWXyPz6aULP8WOrozpdJUbMZ6kxE+jPHRrJp6bkxNIO9osyBoo6?=
 =?us-ascii?Q?uPWdbHvlOHdFgY1rrETdubgu5Ud44R1TJIW2Ek/cWNFaGQcDOL2CzWiPJvw8?=
 =?us-ascii?Q?qGB2DX7rFvzNmK7aM3n90RiAIM1St3x+IBE3eBsNl28c5FSbwUTo+Q=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR03MB6510.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?taww8LeDYemiJ6zkMDIBi0ruiaJHBkDnqh/uTEzkVRtFQfOrP/aZ9/TPIawE?=
 =?us-ascii?Q?XcosCThnzZOYjyD6DRBTZJKLKMmYcREgM8z4JIupPCmHWVSHnkjP8oNaya+L?=
 =?us-ascii?Q?lkS+HN64Vt53SLs84tNFP9gnaG4UYQ9a9GJzQObKlwEI1h+o0Ic7snfNyVL1?=
 =?us-ascii?Q?M7oTi+2Y0UE4lreIaDOCDlBKqgVQnE/x1jPKILHspvo9t/Dtbmy6yuC7W4Nw?=
 =?us-ascii?Q?ct4T+qhWqotbSGKDbDgfzCXnUrh+lhnrwbIV6MwfN5o/DcYUQNgLTGFVNVOQ?=
 =?us-ascii?Q?3yBIJPTBlmZOXCT/0+TMxnC7F9CtIgaIVL9D1XsTcQvK5r9w/xH5WXQBRecI?=
 =?us-ascii?Q?+juOoORvTMFThELOR/3xBMXFj6BrYkLkOHRatCbbDbcMgBPbsEjK5EKOsj6J?=
 =?us-ascii?Q?Gr2O6Vax9sUGpaiaUAqR+RI0Uvow4L/2pxHLSXSxdIPqHc8bUjGgUNXlLIP/?=
 =?us-ascii?Q?0DvMrPgQMXuvrRKiyoIoswS9djXWJKnl8aFWoe43NI4vMJlANMIOkIML8kHE?=
 =?us-ascii?Q?XzWdw4H1xBb/d0WcX/YzN625bIVdT6bJ0WfgBn8gRzUAPUXxiwQGfcyOmWFF?=
 =?us-ascii?Q?FOK3D24A1h3ztYw9Nt3wL5k8BX39hd+Xwwh8sKjb6rgcGZTuNsRj07rFqm0P?=
 =?us-ascii?Q?4gLUpITy5PjHerKgtwfaSb1exSIzybhlk89zbC42qAsH12avImevMA9wb9O0?=
 =?us-ascii?Q?GkXFYtgOPcM1T58w7ga92KcJBE2pF8eh2sREQG3BQHPGG1fm/r6F4t5Vdr/c?=
 =?us-ascii?Q?QQoaqgDr1AtuXRK1SikLDtkZynZ4IV24NnTAeUtu3fmn7WbvD/nvRBtX7WGF?=
 =?us-ascii?Q?OPXYp77EKlveIiQSkP8Wd0lt3zR6sthjNsdH/OV4WyfF0H23mf306eT0/z8p?=
 =?us-ascii?Q?H4cSR/UeftN9d1+5PPgHhPD7l/lG9XCdm8dEeWnYM4g2IV8zuzSPbjmNn7q/?=
 =?us-ascii?Q?1GCStYZ8aeQiGgB02GiNdNKbRd35bIlBzIX8/vudNce83+BwrlFEJv1DL6kF?=
 =?us-ascii?Q?TAqPcTv7FBSbbqFuzHZzlWB5yWzsMPZ5gdZm7zYxLpW0+klqQlkxD/lVQsrW?=
 =?us-ascii?Q?XrUDEmhUQAdWdfBJA3oyZvNGsmtu5llTBJ1rjpdzNw1hK86fzLiwvjIF+fw8?=
 =?us-ascii?Q?UXSmg9c9o580EWJQqhiOmCCkwmFFFvOKXRObkNLmL6dL5VfxtSP9ocQtKOUF?=
 =?us-ascii?Q?YiIREMlvJqMhyN1X0PfxBc8W+5D5Tk5hdr2xkvv44zBzoSJcs6pxtwRO/v4/?=
 =?us-ascii?Q?m4DtEntik52JbBpHVPH2Llz0j63fAT/xwRlyFIOVwyd07nDeaVlexWOTsjox?=
 =?us-ascii?Q?D717hZOfJeBSLUaqPwxQpwTy0fEx/Wf0UzyL+IWheVvk5b3Vgc80pStPmFso?=
 =?us-ascii?Q?BYpoma1f5Z9bDGF7+YKQXIxBx5lIM+ckDobd+0LhL6qRK7y8yc3CaYAKBi27?=
 =?us-ascii?Q?pOppSB31rzLjzDyHAoPquaprIqFygab0Owvv5bdsVZyOpCPkYQ8BW4ekrqv3?=
 =?us-ascii?Q?niv6GbxKSZ+VLYc4dP+6B/cmJTo2ZyjYU6Vna0Sw83ajQcGn5axvv3lNBiCa?=
 =?us-ascii?Q?xB8ddKQEA/XLH5nwaJjDOj/+edo2Dewq/5ADd1FV0tlWRby3WIn9DYuMv30/?=
 =?us-ascii?Q?IYsJlXtJBBCRhdI+Xu/XxEqTkXf0WmF5ugAurZSd3B5t?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc3d74fc-8590-46ea-87d3-08de318c5fd7
X-MS-Exchange-CrossTenant-AuthSource: PH0PR03MB6510.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2025 10:20:10.9291
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6WzndSAO0o+krZd0K5v3P39EFXlEWZ84ufLJNR0Urrfmde9IlMo84HASavTysE3zIuFsBsBAoq3Ud6QchE/jDhkv0/G1rlIkGy7d5d9V/dz0ham6iEXauE+HgJ2bxM9e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR03MB7607

From: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>

Add compatible for Agilex5 SoCFPGA modular board.

Signed-off-by: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
---
Note: This patch is based on socfpga maintainer's tree
https://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git/log/?h=socfpga_dts_for_v6.19

 Documentation/devicetree/bindings/arm/intel,socfpga.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/intel,socfpga.yaml b/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
index c918837bd41c..6b2d88947352 100644
--- a/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
+++ b/Documentation/devicetree/bindings/arm/intel,socfpga.yaml
@@ -32,6 +32,7 @@ properties:
           - enum:
               - intel,socfpga-agilex5-socdk
               - intel,socfpga-agilex5-socdk-013b
+              - intel,socfpga-agilex5-socdk-modular
               - intel,socfpga-agilex5-socdk-nand
           - const: intel,socfpga-agilex5
 
-- 
2.25.1


