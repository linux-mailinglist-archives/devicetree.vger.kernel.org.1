Return-Path: <devicetree+bounces-133838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7A19FBD61
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 13:34:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF970162621
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 12:34:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B0F61BD9DC;
	Tue, 24 Dec 2024 12:34:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b="g8K3rXV3"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2081.outbound.protection.outlook.com [40.107.20.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482141B87CD;
	Tue, 24 Dec 2024 12:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.20.81
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735043660; cv=fail; b=TGtKXACApq+vJa933471mejNDEOUoqB8WmN8Agk0ZRwwiR/nI2A0KVsl48fKRcp1v5qgYooXbslWB9lawVoYWMmPH2orOb+m3GNsHFiiTg2YRu/Gfi/EGTR4khzqKQLaKwTNpQZuFr/QeZM0VJcuArdxV+LdZegejNe3A3A8jeI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735043660; c=relaxed/simple;
	bh=DrIS0c9eJkn92TPJsE9PXMCwoLgKLcGCPEP7wei2BS8=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=oc7wpRUoEw3EyeH0EgtGDvJ41FnOak4HTfxp5ZAocZ3xehu8FIryJkbsO3mruYuvTtJ9ZufPbEskOLW2Ory54gBP7QsY+g0ti8JUYakBbHZzDtRjQAAKy3LIuu77+VwLRcZKGhhuQvw3yAYyvhoji3pMKDigGjhGsHLt9DB17XE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=g8K3rXV3; arc=fail smtp.client-ip=40.107.20.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=enzie3ez/ogRCzA7rXDYxJjJFFOvMlLNXCheGbvdL+uYTExbO6uhfawL4AqhCl3vowhxCyOhcnog4MDNAn1B8feDta+kPUMxy1ifB20pAAGFXxsvvFPQGYFbau/Kz6+ziYR3q750cHfCOUNHcZdEArF4/3tQLuPZONcVtw3wyr7EOzNWwNg6yjDJDVssUu5KAm5+XWfOX694e5hen63W10jg+qTuWD3NahxardgtL8V80LDaXnQGwpFKO4X9KB4Uam03CRJIYVtkfZ/h0h51j2v+RzWp/T69x6WUAnPzZXB16BXx/LOnz3HDdT4SDBrqWlQBj4QRqph83IAPaksA4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t+WeqqRjCGXpO0j6fT/g4OBoFK+9saBuzVr/rEfdNqs=;
 b=rM3mb1YGOaRUYk4QUMtoKfqfY8ztm6t//9UUGqnFdrnE5Dl4ScIkaqJFqe8nKHbta3YyJ40ph5b0Nn+DYs9+oT8l/0gV6v5TlVgrekL/9MV+lTQ0nj5cCgdrphdu5e0BB3CfOM7s213Pe773mhXUhkwIUgPkzpY4zSzdPp79rCJCDICBm15VVBlWYF+p65tfgQbhK0w2fdayQE3pelUiSQeJ7EIbCgJU0gPtvb2sCV7FepKRef44Ot2oeQNoigwXN0yk+sk9YsPD3ak0VhCQC3Pmn4GWsUbg3V5FxQGaMYzZqTimOYrbjYGP7Hjrl7f1degbwDzEXDXrOs3Nrlb/MA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t+WeqqRjCGXpO0j6fT/g4OBoFK+9saBuzVr/rEfdNqs=;
 b=g8K3rXV36d9+BADsHicxi9FZ6NT7KLR+PNedJFuAgRfGx+R7PYAkHfcnRHOBsGnpv/F39kldSimqFMGAFkGZMNq+xd4Vjec470dFl7TDVZDaBRqScFv6CILmbs5CR5dmBzsFY6iczYb+YqQfdwWKSn23x8y4ZqkEA5YOcTYFpwRGREAOtX+UIMZ4GGP+PY9GerR4/IpF/9coyfzt/uEWrj5UIwi5VtBpeuvDzehxpIGHbjwhQLHXonPhJIsLVPF3BZJezW4zbMno6mzeLdjc7td3h1SGQVvuQXxtT7LjhM1jbTmRJWcdUBxLPa5F50BYgyjJxCfq1DHhIcEKT1fzKg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com (2603:10a6:102:1da::15)
 by AS8PR04MB7973.eurprd04.prod.outlook.com (2603:10a6:20b:28b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.21; Tue, 24 Dec
 2024 12:34:12 +0000
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::165a:30a2:5835:9630]) by PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::165a:30a2:5835:9630%5]) with mapi id 15.20.8272.013; Tue, 24 Dec 2024
 12:34:12 +0000
From: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Date: Tue, 24 Dec 2024 20:33:36 +0800
Subject: [PATCH v2 1/3] arm64: dts: freescale: imx93-11x11-evk: enable
 fsl,ext-reset-output for wdog3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241224-imx93-wdog-v2-1-622709cb63f6@nxp.com>
References: <20241224-imx93-wdog-v2-0-622709cb63f6@nxp.com>
In-Reply-To: <20241224-imx93-wdog-v2-0-622709cb63f6@nxp.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Peng Fan <peng.fan@nxp.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735043627; l=949;
 i=peng.fan@nxp.com; s=20230812; h=from:subject:message-id;
 bh=rthpfWEafLAxww2rhvjIdHObIU7JaXPfvs9w09j9gqs=;
 b=1vgUMATI7/ewmxqqjxBFvwdBjqPjlwN4t+KCvwu60fKkLm7+0BN6Rd391idXlOJYmLkDB2A7o
 0o65l3rKsypBowNJHo9clu2cB6F05itfTmH++6KGcu4aHVcERSzfXZM
X-Developer-Key: i=peng.fan@nxp.com; a=ed25519;
 pk=I4sJg7atIT1g63H7bb5lDRGR2gJW14RKDD0wFL8TT1g=
X-ClientProxiedBy: JH0PR01CA0093.apcprd01.prod.exchangelabs.com
 (2603:1096:990:58::6) To PAXPR04MB8459.eurprd04.prod.outlook.com
 (2603:10a6:102:1da::15)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB8459:EE_|AS8PR04MB7973:EE_
X-MS-Office365-Filtering-Correlation-Id: bd84f181-4caf-4be7-4c0a-08dd2417458c
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|1800799024|52116014|7416014|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?V0lJZlRpYzhyQ0czS3BtOWhnRHZ6V29Vekh5cWtEem5uWkZsc1lqMHF5TTFD?=
 =?utf-8?B?UGx0TXBtVzlwcmdZN0tKVE0zcFZ4NTBoNExkVVhOeC9xRkdoSy9PMzNTQVRS?=
 =?utf-8?B?QlFhTVdKamttSmFBUktVK0V6MmtGMVhZTVBqTENka3k5djY0ZitEWnJxM2Jw?=
 =?utf-8?B?M2JXQXlQbHRYcWp3bDc2YmpSUXJEQUt5TUJCODM1blphMG9EMGk1Z1BEY0RU?=
 =?utf-8?B?Uml6TnliSGlEVWtKRHlSSmFMZmhnNnF0OTFuM29CT3BZZnhyYU1MT2ZZdjdR?=
 =?utf-8?B?VmtyYVp2ajdPcU1CblJjRDNHalQzYjJpNDRiTUF3UDY1Z3JzMnNwZWkvNVlo?=
 =?utf-8?B?R3lLbEVzRC83M3BtY2JVNVEzUi9oc3R1SlcySm1nU0dyODF4NDhZTUFIOXVs?=
 =?utf-8?B?Tm52QXpmTkNieXl3TFpGZzJCK2tkVmxFL0dUWXpqMy8yTXN4ZENGNzUwZHhv?=
 =?utf-8?B?cmcwYkFuZDZwc1NOY3VuYm1kbWhDdVFSR0pwSEZqUEU4RCtWV0JCQTdkTUxw?=
 =?utf-8?B?OGQ0WlkzVlRpNlBXRElZNUxnTHZMd1dpaFFOS1I3dm5QU3Uyd2VGTEdDT2VB?=
 =?utf-8?B?UkxYdkxmdjVzYU11OExKeTBhTFJnUVVaU205VktLMFpETWRPZGFsdWo0ZFpo?=
 =?utf-8?B?VEsxRDNUUEw0eXQwKzgzeU9PWHJNYlRXVm1NVm9paGRrRTBYWncydWV2TWdn?=
 =?utf-8?B?bkxkUStFTlE0M3k3YTRPK2Z1eCtNNno5TGtUb0pTVzV3UllQUTNLYjVvQ2FK?=
 =?utf-8?B?aGdHOUQ1WEdBV2FDVUZUdC92Z1FOZzhuc0cxd0MzL2p4VHhmSlhLU2Z0Mmpl?=
 =?utf-8?B?QmdUYVhUOUh4MXdxZmFib3pBa1h4bksvcDg0MUh2MllUWU01ZEpHNGhaZm1K?=
 =?utf-8?B?eUZaS1FRTk5JZ1dCMnh4UC9HZzF5T2QzS3VFNlAwcHVybUs3dXRCR0RDL01M?=
 =?utf-8?B?dG9jYUt5dnYzSGJjbGhScTNKZ0ducEZNZ2dIQW9WUnpjRTdDR1FnUGVYTHNl?=
 =?utf-8?B?aW5jVlMzazZ0Y1F6T1BmY2Z4Z0tZd3o2TU10eHJiaUV1eVRYZ25ERUFVSkRz?=
 =?utf-8?B?cHlZUk11ZFBzbjBlNlh1NjdMZWllNWxBUFJCUmE0alEzN0RnZ2ZzT2o0NGsw?=
 =?utf-8?B?NitTR1Z1UjBXbW1MRkZLM2VYU2RBcFpZRnFNU1F4bnpwNnM5YjR1bTQvZElw?=
 =?utf-8?B?bnZxNml4cFhxWmlvWXVtZ0EvUHU0UHpHYVQyaWRGclIwN1hCVWpLV054ZHJO?=
 =?utf-8?B?UndxQmF0ZnU3eXgrY2Vpd29iY3NyODRHKzBJajA3UWd2dDdZRjRpMS9DVDNF?=
 =?utf-8?B?YW80dWdPRkU0THV3aEhVaFVwNXVJK3NLamNnbm53YmhUU2Y4UWF3UmhocnlG?=
 =?utf-8?B?aXZtKzgxUWhnbGNlQWd3UkRwYklJU1ZNRkNuYXZ2WTNTSEYyMTRhR1d6bVlB?=
 =?utf-8?B?eGl4SXVLNEMxblF0UTZVeForaU1zdzZRMk0zNkI2MjJRcjF3dUIrTzFTL3F3?=
 =?utf-8?B?SlBKSWZHcThZSmx4NEZqVXlabURuclUrNG9qTDl3YncvWlNlV2p5YzFPQXo3?=
 =?utf-8?B?dmhXaXVqNFFJYU9lWkZXeGZHNUdOakZ2ZXdNL2I0VnFmcDFINWFZM2ZBQUg1?=
 =?utf-8?B?SjVJOVQyTnhjN1lQTWZqc3hMVDI4b010cHhkamFuWFAzeHlVRlkrRE82N2VJ?=
 =?utf-8?B?V2F0Umk0S3hsSUk3azFzSVNZb04zbCtSSUpWaFYrMVBTNTVQTnpEa3FleHNB?=
 =?utf-8?B?cTFaaTZjZStTMkZTb3A5cC9NZDRFTlQzWDJLNW9uY21TVUw1N1Z4QnBqcTd6?=
 =?utf-8?B?R3ZDZnV5d1BsTk05NlFiMUxOc2FWQWpHd2s2NmdxVHdPbGFNMVlhYnJnQk1q?=
 =?utf-8?B?bXpaRkVuL0tlWkJQQW02bnlZUFRMTHlrUDNuMGh2ZnhuNFpNdTFmeHpSRENY?=
 =?utf-8?Q?rcip+IT7Fxz0t3z3xke68pIg2GogNH+e?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8459.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(52116014)(7416014)(366016)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Ym4xUlJ3aTNUVjRzZ2l5bzJoa2pOY0daUkZkK1poYytqVW5GUmNEd1Rmcno0?=
 =?utf-8?B?RjlEWUNwQmlMcFZvajhtamE4ZitKcnJ2UXJzNFhpRGJyZi9FWHlPbUFYZWFL?=
 =?utf-8?B?Ykg2d3g5bS9GY2xIVHdRVHlzR21IdDBiaEwxUDBBV21wRG9nSm5uT215SnM1?=
 =?utf-8?B?cGoydFFNalQySzlWZFM2UHZuRDBhY0VaQldGV3NFQ2ZiaitKMlN4UlkyZVBu?=
 =?utf-8?B?RzZpLzgwZFMwNkZMU1NiZW44R3ZWOERRVHF3Q3FDRUdvbU16VS9oU3VjRkpO?=
 =?utf-8?B?Y0Z0aXJkZU9FNTF0SzNTU2VrazhuSU1WYjhRWWJ4ZTRoVWV3U2x0K2t6cEQ0?=
 =?utf-8?B?bG80YlRoMG82WW5MakMyVDFVMFhDUkxtNWVDS2p2aC9NWWQ4WFlmMkpyL0Iz?=
 =?utf-8?B?b05ZTzRpeTBUU0drellCM1ZnRnBFSEk5Q3hFUFFld0dTajJKZjBUOEJOZU9S?=
 =?utf-8?B?bGpzRkhzL0VJY1BwOGRKN2ZacE1iREdTOFlIVFJHcjhhRklVQVpVRkFCSVBm?=
 =?utf-8?B?VHFZRGp3RFNMREdOY2RFV1NheDVic1l3am5BV05oZjh2aktGRlA5VG5JVUwv?=
 =?utf-8?B?Um84OUczL1Q5UjRId1RyaUd1eXVFdnZCaUllZ0s4cmY2cVlWQ1g2VUZZYkhl?=
 =?utf-8?B?MG5jcHNod1FDSkpmUmV6YXFjZEt1U3hwN1NhS2tJdzR3REd3emlUb2xVMDg3?=
 =?utf-8?B?KzdlUy9qbUlDc1B3cXVRQ3ExUC8vMlJYLzRIRTYvdmdBbU1mcVZZcEJUei9z?=
 =?utf-8?B?NnlFb29UM1VoQVQ4bUI2OWx5Z01JaDhxdU5qOE9uTkRQR3ZPanRDclFubW04?=
 =?utf-8?B?b2tBbXcxVW9yY3F0RW1GR08vVzdGNVZsRVo0enY3bTdPR2x1eHpETjFMYUM5?=
 =?utf-8?B?clpXcDJDeWdJaEZpdzJTb1M1aHI1d3daMzJzci84cGt4c3pxOU5jdEN1cjRw?=
 =?utf-8?B?eTZRRURBR2NuOE9vWTMrOExxSU5TNEVyZ25oWm9sb1lPaVhZeWlnYW9YTW5x?=
 =?utf-8?B?K2pPSkNaL2phMHlHdlV2MHFFOUdDT05wZEk2VWhGSEZuZUN4bHQ2dGgzaGdk?=
 =?utf-8?B?MU9VeUs4ODBNMnRsRkxoZW8rZjFHaitHWEtOdDVZblhsTlEydDdFTWRNNndL?=
 =?utf-8?B?YUVieHlDQ2lDSmJPYXBOYzN1WG10czNLM2pXSVltZEI1ZFBMS2VNeWdjZm95?=
 =?utf-8?B?VU9tU2xTOWlna1EwUXRydTlxaHNjMUtVRXowRFcwd0pLeVVQbHNIckxDK1Rl?=
 =?utf-8?B?YXo1WlhyUUE3cWJOOUNmVFFYWG1STFRJU1l4bmJhdS9EVHY1QnBYalN3bjkr?=
 =?utf-8?B?UGFXdWExZzU4TjJiTENMNnBmTlZwV0N0NUJ1MDJHLzY4cG1tMVJ1WEFyQW1t?=
 =?utf-8?B?Qmk1RXZDd0pJbzV1UTJpSG5NYzk4djhjREEvOUZUckx1NkZyREhUdHV3VFJk?=
 =?utf-8?B?c3Z5R3lhQ0MvV0w3RFJwVDk5TUdjTzVVS2Rud0NtNXdmYW5WeHBPUHRkMnJK?=
 =?utf-8?B?MjJVdlhURytqdElrTzloNmdMRTRYcTNaNUw3WTR6bnIrRjFSbk4xSzB4R2Vn?=
 =?utf-8?B?ZnYzMXlpTms0SzNzeWJNdEk4QllvRHd6dWp2bldJY3p5UHRWclJYY3IzY05H?=
 =?utf-8?B?NkIxRUM5V09pK08wMFYxWDl6SFJvdDlyUWlOSmtUV2pFUHVNVnJnQXhacUJS?=
 =?utf-8?B?bS8zdjExa2RpNVJQd2VDdzUrVVc0aDZ0bzd2VW00VzZ4bWVKZWozaEs3bXcw?=
 =?utf-8?B?RXFocGNkUWxuVnpZTk5FdjZwWHRLQVVQQUp6c2dHOEJsZHMzRzg1bUFYVGpq?=
 =?utf-8?B?b1B1MllRTlpJZGI1REowTXMvQWZUczczRE9ubFliRjFKZ0lUTktoejBGL3Aw?=
 =?utf-8?B?dWZ1RHQ1V05TUk9mSlBBTXZHZm93UmNzTEJUNFFSZy9LR3JKMVpXU2IzN1Y0?=
 =?utf-8?B?SEJNQVlIYW5EUU9HcVlDNGMxNHV2b1NiU2RKZEdHcFI2amgvekYrVy9MQ1JH?=
 =?utf-8?B?SzZERW93dDZlQkV0TWlqMm5jaElwWkYxMVo0UlJtVnpWcE9FS01mME1BaWd2?=
 =?utf-8?B?bGdOUG9EbjlQVkNLNGVrYmZ0Z1VYWmNETm9TTU5POHZuTDhHUC9iZzZUL0Rk?=
 =?utf-8?Q?zmd+SVtX7GCtFlFeJeqrIJ/VI?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd84f181-4caf-4be7-4c0a-08dd2417458c
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Dec 2024 12:34:12.7778
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d7IdSUiVyi3lEOGkDZrP2qiBQCu6S1S5hppc/iMua9VhxYtI3qQVtV4N8sypWG41HVxLxeUeoTPMuBocbdBz3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7973

From: Peng Fan <peng.fan@nxp.com>

The WDOG_B is connected to external PMIC, so set "fsl,ext-reset-output"
to enable triggering PMIC reset.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
index 0e12dcd0d4d1a3f65af3d250b1b96637a666e929..8491eb53120e6a9e21fccb2e5ea26371ee2bb4fb 100644
--- a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
@@ -595,6 +595,9 @@ &usdhc2 {
 };
 
 &wdog3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,ext-reset-output;
 	status = "okay";
 };
 
@@ -932,4 +935,9 @@ MX93_PAD_SD2_VSELECT__GPIO3_IO19	0x51e
 		>;
 	};
 
+	pinctrl_wdog: wdoggrp {
+		fsl,pins = <
+			MX93_PAD_WDOG_ANY__WDOG1_WDOG_ANY	0x31e
+		>;
+	};
 };

-- 
2.37.1


