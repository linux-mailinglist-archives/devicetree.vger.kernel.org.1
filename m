Return-Path: <devicetree+bounces-138171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D494EA0BF89
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 19:04:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ABD233A10FD
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 18:04:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84F6A1CB51B;
	Mon, 13 Jan 2025 18:02:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="A9G9jJCP"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (mail-db5eur02on2070.outbound.protection.outlook.com [40.107.249.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FA31C7B62;
	Mon, 13 Jan 2025 18:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.249.70
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736791361; cv=fail; b=CunkGGA2gD8IgsGDyPSO1gmK212uWSEzitUG+iJoFve1N28NKkEpUpnyKMYp3kLWuAqZD/I8F8A4kExyZx1tB1rMR2ITx7DnSJFATdG0gNE2HlIMH0P4baPWB/iGLkAC4k4njRNtqr8x1GIhRCt62J6R+eOzjpMkUtw6Z+h1IyA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736791361; c=relaxed/simple;
	bh=aBxWLkmY/35SEghYpLVDeBLCbnyI6hfYXwFtjg9FHgY=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=uA5LjenandOoMmjNcMWP4zhIJIyv+g4qvwHECJi/UvpSaBKdx8v+U5wi7k9Bp+cIfABQbStV0OPtQxXMfI0X2La6MQScJrdTgDTUEtULDAumS5TqGTTxZwYuJW587Iji5IGnkYnx1EUlUsWqNSigjy3F6adCl9aG2JFe1pCrrOI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=A9G9jJCP; arc=fail smtp.client-ip=40.107.249.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FPKIWQkKEZcnQctT2RM5bIs8vrIWJPa4Dm45aO2elAZ6vQVkwEgYeAML5dcoZipjRiwyTQaiGEnYW+QzOSXXTrFMfWY1PlvAg9QGOPE0vwSNvqrxPWa0i8eyJ09sdJcclxdIsG5w8VuQKZCPycdwStQdlGwrxSYpd9Nezbqhz/bj91pMIH//Q3EhasoQ9rpeSiNTzOTMrUMx5MwYaQ7vnsOu+CPMo9MtvRMmRc7gJA+K5wN857N9UXOiPYHXUnqxJ1sKvt7rEwJyfILrn4qFTOxKoFK317p3cgWh+zIBy+0UlUtrhns1cMNwAyAgJMzo6qN7JNvDrke+s7bRdkGdIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J/cLp4PfLFZneufO9lQbj3HDEPdQIteG8LhubbpQRs8=;
 b=rQA79AP63z8MsvY+e/rgh3tN812bAf9mmh2bI8JkH1E7/l8W1zF0N2xRc9hn6p5Bz9nRSoyyTid/OK4lrQ6mgwgaskXr+EF7OXXWIbJubu/PzB0nV3pLpX88zSFVrCPXWd1mxDg5WjmJ9SBmiD+pVTVErdFdOg4UdWiNRqjeIwR6qyXXJAZ0RYLTnVTsCXwdYpiYMUzdIuM9USh+ZRe1YXkASVabQlPtFRZNRiiRLdYJuDm7IlrNY3V20SueJMrlAdYt+7GDblM1SkskrWYzAhpuv1WGKF0VKXZdYQ+88eEBN55Z5RnByoit+p94nJVTPgYmncuuhqD3W8otXKQkmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J/cLp4PfLFZneufO9lQbj3HDEPdQIteG8LhubbpQRs8=;
 b=A9G9jJCPNWNoplH+ihR1PlTQYZTUaxP4ZtsLV/MPpWBxFmJfWj/xzu2U88yJfE5MMhw9JhV2cfr/D6Xb+o4dvSnDKiZ76Atulxh32wDXK3BQbkHADiKv8wcPbKMsPOBuiOISlKDjjr0qScYCLEQjU65iEEUP0Pe+i1k5gHBGQmsfU96dddZ3sNfwxgWYf3Vmk/k4s+NgMzId3hdfO6EHxTKtVMr8EUqEf5h/Gqp1VXVYyxl4Som+pq1RPUPvsEBfKwiv+z8tajsdLyHBfr9EL/apEboXr4Lh2O7HcR8AmL3inp9CEiQI+Z+3nnzGBEiyRtwLKLWnGqBvLpYWB9ZCiA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com (2603:10a6:102:240::14)
 by GV1PR04MB10774.eurprd04.prod.outlook.com (2603:10a6:150:205::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 18:02:37 +0000
Received: from PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::9126:a61e:341d:4b06]) by PAXPR04MB9642.eurprd04.prod.outlook.com
 ([fe80::9126:a61e:341d:4b06%5]) with mapi id 15.20.8335.017; Mon, 13 Jan 2025
 18:02:37 +0000
From: Frank Li <Frank.Li@nxp.com>
Date: Mon, 13 Jan 2025 13:02:02 -0500
Subject: [PATCH 4/4] arm64: dts: imx95: Add imx95-15x15-evk support
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250113-imx95_15x15-v1-4-8c20cbaab9ed@nxp.com>
References: <20250113-imx95_15x15-v1-0-8c20cbaab9ed@nxp.com>
In-Reply-To: <20250113-imx95_15x15-v1-0-8c20cbaab9ed@nxp.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 Frank Li <Frank.Li@nxp.com>
X-Mailer: b4 0.13-dev-e586c
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736791341; l=29269;
 i=Frank.Li@nxp.com; s=20240130; h=from:subject:message-id;
 bh=aBxWLkmY/35SEghYpLVDeBLCbnyI6hfYXwFtjg9FHgY=;
 b=YZRYqQG4pWpG83H7WJ0niLnHd1iGPMvkBRJ99kMiAFdu6kapEXuiggRPdIg0OJljomTej9pys
 4BX74p2UKzjDjARC1QcoXg97TcMha4+k6+jB/pwKbWDnB0enSD3ywGB
X-Developer-Key: i=Frank.Li@nxp.com; a=ed25519;
 pk=I0L1sDUfPxpAkRvPKy7MdauTuSENRq+DnA+G4qcS94Q=
X-ClientProxiedBy: BY5PR17CA0005.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::18) To PAXPR04MB9642.eurprd04.prod.outlook.com
 (2603:10a6:102:240::14)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB9642:EE_|GV1PR04MB10774:EE_
X-MS-Office365-Filtering-Correlation-Id: 3b7f4a3d-255e-435b-8739-08dd33fc7685
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|1800799024|52116014|376014|7416014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?ZHJUY3FtZnNQbG9JRE80RmpkWlRKNDdBVk9YUzRuZjVPc25OcTNLdWt2Nkxk?=
 =?utf-8?B?N3VDVXdFaEN6M2E1Y205S0RPaStlcVluSDdsR3JLMlA5NCtqemJQRXZ5UnlQ?=
 =?utf-8?B?cEQ1QjNXVExtcmRYZ0RwdzB1SDFnSGY2RytpT1RpSHh4R0JJa1FYa1dqNDZ1?=
 =?utf-8?B?RnhaSjlsOXlYZmV2L1BZZ3ZiRG5PSU1lNEJtQ0c3dUdlVVhqZ1gvZnRmR0wz?=
 =?utf-8?B?TVlGN0VKUE1rOVA1V1prMzhiYkllbUdzdlNBU2MzelV0YUVxY2xBVkhDWDMy?=
 =?utf-8?B?SGU3cHUvWXg0cjJVT1hsQmVtSVVmYU9ObmhPT05naVVlWkdLQ09XaDcyYXhj?=
 =?utf-8?B?K3Z6dUpuNlZ0bS9QM21TbDRnRTRNeFVMbEplZUhNMUcwZTduWDVQSWthbFpW?=
 =?utf-8?B?M0kwQmVidk5TVFU4ZXV5V1RVWFF5OVdkaTBEWm9jbGl5NWhIenhKNzcyMTFE?=
 =?utf-8?B?bk5YczFnbVVPeWpHNk1TZk12Wm1MNU5hNTZrazIrazdxYlFxSGNFdk1GMWh2?=
 =?utf-8?B?K0RvdUFXWnFkQXIxTjl0d2t3bEYwcmx5VHozYnhPbmlTL0lYMWVycGlUVlhu?=
 =?utf-8?B?Z2JvQ3dFK1NpeVozeVR3L25nSVFZaHdma2RsTzdyV3E2ZENUMW92UGtrREc4?=
 =?utf-8?B?NWNXeUVOMVl6dmt1ZFRjdUpHaWRCUE5EMzhCVXpUR3NwUXBrejFodUZ5bGJ2?=
 =?utf-8?B?N3RJVHl2YTVkQ3hUZ0VDS09YV1Q1elpLdEl4RXN0UlJoWEorSmxFVk5oRDV3?=
 =?utf-8?B?OE9aVitUb0hWaEkyMDZSd0lRem5PMTBDU3gzUWNsNndEem40clZwcUxRYzF2?=
 =?utf-8?B?bnRiZzhOV0hPNFlwQm1kZ25CenlaREh1L2NqaGlVNHlSNVlLWW5xRGF2ZVkx?=
 =?utf-8?B?SDNVV2FQNlhZT3NJc0RueE4wMzloSUtSeDdsK2tDaCt1dm5EWDdBM09UUE5V?=
 =?utf-8?B?eGVsQ1J1KzM0dktySDZXRUYvMnVBUndqTTh2S1k4YkIwRG1OVWRGTGFNdUZl?=
 =?utf-8?B?RFZMeGdkaFhUN05TOXhFbFNqRlBJcDVGdlBQTFN1R3JLcGdRZWxXdVhGYVhB?=
 =?utf-8?B?MjJCU2xRVnpJS08wcG8zOFZiWEJRMFRqTk51SHlpVWlvTE9FZkRaNEU0ZE5z?=
 =?utf-8?B?TGEybERXblc1blVqckJWSHZ6WEQ0V3JtS0xUUk90Q2Ezbm9UWmdwaG10V2R0?=
 =?utf-8?B?dHVLc3RJVklLaFVyZmc0SktVUTliRzdQRnREWWcxbHVpTEZTaVJ5clg2N0du?=
 =?utf-8?B?bkgyd2g1UmJrTWplcmE4cVk2R3RXZUZRSzY2aERYb1haRktKMi9hNFQ2ZGNw?=
 =?utf-8?B?V3R4NWp2cTVPV1pNdHA2OENGWjVFNXpZQ1pXbnYrdC9SSkJoQlNUcWZpOXBy?=
 =?utf-8?B?VnVRbVRVQjJTM2gxR0RaT3A5eXNROWoxK3NoSjN2cU13QVl5NTZKR0Y1ZHVE?=
 =?utf-8?B?WitKU2h1cC9md1AyWUJqRG5zcEFkeHRvTmVmZWZsSmdUOHpnaU90ektadDZJ?=
 =?utf-8?B?UW5ZNUxLTDdhZUxEeUE3MkpMOTJVZ1lPeWsrQzk3OTFNa2JobnZzeWxOUWUz?=
 =?utf-8?B?UFdsdVZoRjZBY0diT0ROeG1tbGo0RUNYOUdhRnZQZExJZXRFVGNnYlp1eEJu?=
 =?utf-8?B?NnQzeUhTcHNvMUpUMVNpOVJOa0c4cG9oeE8yZWh3MWlrd3JpM0dSUE9CdGtK?=
 =?utf-8?B?eVlCTTZ1RGlIaFZ1UXdSemVtdnozaTRQbW5EaWJEZ3VYWUphcVBJWHdzYzcz?=
 =?utf-8?B?cHhJVkNERTNnM1RKbzltbGhpcmRHcXBtdXI2Q29OakFuazBOdnVKYmprd1ly?=
 =?utf-8?B?SUFwY0UyNXBSeTZJN05sVlg3dFFPWUJwa25pY3pFODFsQ3FaeTdhUS9tNS9J?=
 =?utf-8?B?ZGNid09pU0JnVE9WaVZQSW1Wc2hLR3NqM2lTNFk1MEhLTDNNWnAyL1l6ZUhL?=
 =?utf-8?Q?BrCARc3Vi6jwvyyAkiwTsbAnZoxnZpP3?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB9642.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(52116014)(376014)(7416014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?T1o5NXRJMUZUS3JVKzdza1VEMTBseWwzUjI0L3Urb254dE5XdlZuN3VPeG1Z?=
 =?utf-8?B?b0VTZWhVRFFIc0wrL1RieVM0YlZQMVVtb3dSWFZpMnR3WG5UcS9od3RqWG1m?=
 =?utf-8?B?dXBOOHZXZVRsN00rMTBTU0swenRyZ1NWaGVRLzNzLzUrNjV3bHBUaDg1UndW?=
 =?utf-8?B?MEMxVkpjUEFweG93c3NUYStQQzhJdGdYZnZPcmZxNlNCWERiSlVydFIvZGdM?=
 =?utf-8?B?SUZtb0c2RFhDQWdqZmszdlh1aXROalRUQlhJSTZrSEgvMzdyZGN0cU8wWTVo?=
 =?utf-8?B?UmMzSXZnSlRuWm9VbjVXN0hHWnlmRGhMNXc5MmZsQkI2YTI2cWRlOWV0Vm1q?=
 =?utf-8?B?amR6a2J6ZHRVMmdET3JiM3FaeE42SERnc3VmYWthMUt2alRYMW5WRXN2Szht?=
 =?utf-8?B?Z3VxaHliaXZkWkhTZG5xRG16NTIrWWVmS1NvdlF2SFdIdW5YaWFOekdiTEJK?=
 =?utf-8?B?NEU4QXFRcURTNzZpZDl2UkdWdDBtRlpaZjRxMHIyQzBaV0FrMVV3R2cyR0Iw?=
 =?utf-8?B?RHQwWms4NXVtbm5BZjRmZTloVXdXWkdpZWlSK3ZKZi9vempTRnhKQlp3ekRE?=
 =?utf-8?B?NVhObmpPekdta2JpSWE4a0ZJdXN6ZDBXdDJ3TURlMUp2bnF3dFhUdW1FQjJ6?=
 =?utf-8?B?bWwyRHM0U2JIRlZtTHlWL2R5TmxCWnBMeVc3aSsxQytVdDF1YU8yVkN0dU5Q?=
 =?utf-8?B?Q3oxWlpBN3lSVTdNcUU2eTVNRjJ4bmExUk5ZYTJNbjVFY1Q0QkRzRm5Yd0hz?=
 =?utf-8?B?SmR6WFlUei90a2FyRzZpS1VhRUZ0YjhqQVQrOTBwNmE4UnpZU0lQY3RqOFNS?=
 =?utf-8?B?NE5QVWlxMERjK256VXMzM1lpY3BNMmZQNzFESUcrRHFrNm9MYkZTL1pOUFI5?=
 =?utf-8?B?YWRFV0E2cUVYK1pPSFlCM3BIWi9DRVRwNmdzK1pqdlRCbGZCMStTK1lURzhR?=
 =?utf-8?B?NGtBWmpsNkpUWUlOM0p1ZU4rbS83Z2dtWmtKOVRoRXR0QVNKcEVQVnF3cS80?=
 =?utf-8?B?bmVmV0tZbFZ0UVNDNi9TbFMxZitMeFFQa2c3VXUyNGd2Nm9ETFBGc3JTeGM4?=
 =?utf-8?B?dyszZmhydmtoU29aZjkzMnJOMlE2bGpjNUtjcDYvUEF1aVBmTjMrbHRqVWpq?=
 =?utf-8?B?S09ZVzBNNHRqQUN6WTF6VzNYcnNmNDdPTFphQU12RkxndDB0dEI1RjZOSzBP?=
 =?utf-8?B?RE1qWkwvVUZZcTBmU1pTWnFOYnhCK2YxNFZBL1BlYnBmZ09kaWI5cUNQSGJt?=
 =?utf-8?B?a1R3RVdFQXpJVEU0RTVsdCtBTWRpa2xUY3c0d05jVlFIemZwUnZWVUxpT0Iw?=
 =?utf-8?B?UjBaZW5MaGlQRTMwdDZ5dHV4UkxMaVFYQ0d2cWErckVrWlpheWU5Z2M0NTVZ?=
 =?utf-8?B?aU9hcXN6VmRUZ2g0S2VMdjJpUzVQSVozSlN2NzduM3VhQVhLZkxxYVM0U1Nz?=
 =?utf-8?B?a3ExVGNlZVF2bEg1L2Z4UnRwUDhSQzEybkN5M0NIYnJjTFpwZ083TUxSV0dJ?=
 =?utf-8?B?VTFVM1NFS3RiYVZPMllEQzZja0VqNkVLTjBHSzIzd0VPN0o5WUp6S1F3LzZW?=
 =?utf-8?B?a0pJZm9KZm9qQ3VmdHMyT0tCYkEwb3FJSldFRXRRMDVyVFY1dHNJWUVrcDk2?=
 =?utf-8?B?Y0wxUUR4SjZQdzQ1RnNVV1lxdDR4cktoS1Rsd3dIL0pnTVV5WC9namROZy9t?=
 =?utf-8?B?Y3doallxMDNQaE5YdlBHcW1oY2hVTmQvb25qeitlNTU0d3JjSnMwTHFBa2VM?=
 =?utf-8?B?RDRnU3FTWnV1R1FaS2RVVnFOTmVOeis0ZW5QN2hRY054bVc0Rzl0VFduRVZx?=
 =?utf-8?B?cFd1UGpPTDZiQkhnWFg5Sk1RV1Jkc0wxQ0JGUG5STVRiVHJ1SWhJL1U5cWNZ?=
 =?utf-8?B?SGxaVzdHNjNtS09rVWw4SjBVaFh6aVlnRTArREZTbXZ1TnRjQ2Zqdng1RXE2?=
 =?utf-8?B?K3h2bXBycS8wM2JmMVRsZy9BbEdzaXQzOTdxSHdTSk9FOTB3aFl3SDQ1TFlL?=
 =?utf-8?B?TVFEbFZJTW4zd3o4NFRPR1NmWmZpTUNmZWlmSEFYRnZnZkhrUkhUVUFKdU84?=
 =?utf-8?B?b2hnVzh6WXlkRVpHekIzUCtkWUl4a1pwNS9wVUdNUG9BOG0xWTg3eTY5Wkg0?=
 =?utf-8?Q?l8PAAnoRikJV4mBVBYr8ho8bm?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b7f4a3d-255e-435b-8739-08dd33fc7685
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB9642.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2025 18:02:37.0493
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6QRajKyRFZrvFGjQ7VwyJTCVUTgyqh7g9GfCG43b5RYTyaXAyWiDwjLs6NWBJROyRZ+7ygl69y4Hh8ramZyuPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB10774

Add imx95-15x15-evk support.

Signed-off-by: Frank Li <Frank.Li@nxp.com>
---
 arch/arm64/boot/dts/freescale/Makefile            |    1 +
 arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts | 1064 +++++++++++++++++++++
 2 files changed, 1065 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 839432153cc7a..a2fd3a32e351e 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -281,6 +281,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx93-phyboard-segin.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-tqma9352-mba93xxca.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-tqma9352-mba93xxla.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx93-var-som-symphony.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx95-15x15-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx95-19x19-evk.dtb
 
 imx8mm-kontron-dl-dtbs			:= imx8mm-kontron-bl.dtb imx8mm-kontron-dl.dtbo
diff --git a/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts b/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts
new file mode 100644
index 0000000000000..52fb755ce011d
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx95-15x15-evk.dts
@@ -0,0 +1,1064 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2025 NXP
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/i3c/i3c.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/phy/phy-imx8-pcie.h>
+#include <dt-bindings/pwm/pwm.h>
+#include <dt-bindings/usb/pd.h>
+#include "imx95.dtsi"
+
+#define FALLING_EDGE		BIT(0)
+#define RISING_EDGE		BIT(1)
+
+#define BRD_SM_CTRL_SD3_WAKE		0x8000
+#define BRD_SM_CTRL_PCIE1_WAKE		0x8001
+#define BRD_SM_CTRL_BT_WAKE		0x8002
+#define BRD_SM_CTRL_PCIE2_WAKE		0x8003
+#define BRD_SM_CTRL_BUTTON		0x8004
+
+/ {
+	compatible = "fsl,imx95-15x15-evk", "fsl,imx95";
+	model = "NXP i.MX95 15X15 board";
+
+	aliases {
+		ethernet0 = &enetc_port0;
+		ethernet1 = &enetc_port1;
+		serial0 = &lpuart1;
+	};
+
+	bt_sco_codec: bt-sco-codec {
+		compatible = "linux,bt-sco";
+		#sound-dai-cells = <1>;
+	};
+
+	chosen {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		stdout-path = &lpuart1;
+	};
+
+	fan0: pwm-fan {
+		compatible = "pwm-fan";
+		#cooling-cells = <2>;
+		cooling-levels = <64 128 192 255>;
+		pwms = <&tpm6 0 4000000 PWM_POLARITY_INVERTED>;
+	};
+
+	reg_1p8v: regulator-1p8v {
+		compatible = "regulator-fixed";
+		regulator-max-microvolt = <1800000>;
+		regulator-min-microvolt = <1800000>;
+		regulator-name = "+V1.8_SW";
+	};
+
+	reg_3p3v: regulator-3p3v {
+		compatible = "regulator-fixed";
+		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-name = "+V3.3_SW";
+	};
+
+	reg_vref_1v8: regulator-adc-vref {
+		compatible = "regulator-fixed";
+		regulator-max-microvolt = <1800000>;
+		regulator-min-microvolt = <1800000>;
+		regulator-name = "vref_1v8";
+	};
+
+	reg_audio_pwr: regulator-audio-pwr {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-name = "audio-pwr";
+		gpio = <&pcal6524 13 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reg_audio_switch1: regulator-audio-switch1 {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-name = "audio-switch1";
+		gpio = <&pcal6524 0 GPIO_ACTIVE_LOW>;
+	};
+
+	reg_can2_stby: regulator-can2-stby {
+		compatible = "regulator-fixed";
+		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-name = "can2-stby";
+		gpio = <&pcal6524 14 GPIO_ACTIVE_LOW>;
+	};
+
+	reg_m2_pwr: regulator-m2-pwr {
+		compatible = "regulator-fixed";
+		regulator-always-on;
+		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-name = "M.2-power";
+		gpio = <&pcal6524 10 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reg_usdhc2_vmmc: regulator-usdhc2 {
+		compatible = "regulator-fixed";
+		off-on-delay-us = <12000>;
+		pinctrl-0 = <&pinctrl_reg_usdhc2_vmmc>;
+		pinctrl-names = "default";
+		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-name = "VDD_SD2_3V3";
+		gpio = <&gpio3 7 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reg_usdhc3_vmmc: regulator-usdhc3 {
+		compatible = "regulator-fixed";
+		regulator-max-microvolt = <3300000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-name = "WLAN_EN";
+		vin-supply = <&reg_m2_pwr>;
+		gpio = <&pcal6524 11 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		/*
+		 * IW612 wifi chip needs more delay than other wifi chips to complete
+		 * the host interface initialization after power up, otherwise the
+		 * internal state of IW612 may be unstable, resulting in the failure of
+		 * the SDIO3.0 switch voltage.
+		 */
+		startup-delay-us = <20000>;
+	};
+
+	reg_usb_vbus: regulator-vbus {
+		compatible = "regulator-fixed";
+		regulator-max-microvolt = <5000000>;
+		regulator-min-microvolt = <5000000>;
+		regulator-name = "USB_VBUS";
+		gpio = <&pcal6524 3 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reg_vcc_12v: regulator-vcc-12v {
+		compatible = "regulator-fixed";
+		regulator-max-microvolt = <12000000>;
+		regulator-min-microvolt = <12000000>;
+		regulator-name = "VCC_12V";
+		gpio = <&pcal6524 1 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	reserved-memory {
+		ranges;
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		linux_cma: linux,cma {
+			compatible = "shared-dma-pool";
+			alloc-ranges = <0 0x80000000 0 0x7F000000>;
+			reusable;
+			size = <0 0x3c000000>;
+			linux,cma-default;
+		};
+
+		vdev0vring0: vdev0vring0@88000000 {
+			reg = <0 0x88000000 0 0x8000>;
+			no-map;
+		};
+
+		vdev0vring1: vdev0vring1@88008000 {
+			reg = <0 0x88008000 0 0x8000>;
+			no-map;
+		};
+
+		vdev1vring0: vdev1vring0@88010000 {
+			reg = <0 0x88010000 0 0x8000>;
+			no-map;
+		};
+
+		vdev1vring1: vdev1vring1@88018000 {
+			reg = <0 0x88018000 0 0x8000>;
+			no-map;
+		};
+
+		vdevbuffer: vdevbuffer@88020000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0x88020000 0 0x100000>;
+			no-map;
+		};
+
+		rsc_table: rsc-table@88220000 {
+			reg = <0 0x88220000 0 0x1000>;
+			no-map;
+		};
+
+		vpu_boot: vpu_boot@a0000000 {
+			reg = <0 0xa0000000 0 0x100000>;
+			no-map;
+		};
+	};
+
+	sound-bt-sco {
+		compatible = "simple-audio-card";
+		simple-audio-card,bitclock-inversion;
+		simple-audio-card,bitclock-master = <&btcpu>;
+		simple-audio-card,format = "dsp_a";
+		simple-audio-card,frame-master = <&btcpu>;
+		simple-audio-card,name = "bt-sco-audio";
+
+		simple-audio-card,codec {
+			sound-dai = <&bt_sco_codec 1>;
+		};
+
+		btcpu: simple-audio-card,cpu {
+			dai-tdm-slot-num = <2>;
+			dai-tdm-slot-width = <16>;
+			sound-dai = <&sai1>;
+		};
+	};
+
+	sound-micfil {
+		compatible = "fsl,imx-audio-card";
+		model = "micfil-audio";
+
+		pri-dai-link {
+			format = "i2s";
+			link-name = "micfil hifi";
+
+			cpu {
+				sound-dai = <&micfil>;
+			};
+		};
+	};
+
+	sound-wm8962 {
+		compatible = "fsl,imx-audio-wm8962";
+		audio-codec = <&wm8962>;
+		audio-cpu = <&sai3>;
+		audio-routing = "Headphone Jack", "HPOUTL", "Headphone Jack", "HPOUTR",
+				"Ext Spk", "SPKOUTL", "Ext Spk", "SPKOUTR", "AMIC", "MICBIAS",
+				"IN3R", "AMIC", "IN1R", "AMIC";
+		hp-det-gpio = <&gpio2 21 GPIO_ACTIVE_HIGH>;
+		model = "wm8962-audio";
+		pinctrl-0 = <&pinctrl_hp>;
+		pinctrl-names = "default";
+	};
+
+	sound-xcvr {
+		compatible = "fsl,imx-audio-card";
+		model = "imx-audio-xcvr";
+
+		pri-dai-link {
+			link-name = "XCVR PCM";
+
+			cpu {
+				sound-dai = <&xcvr>;
+			};
+		};
+	};
+
+	usdhc3_pwrseq: usdhc3-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		pinctrl-0 = <&pinctrl_usdhc3_pwrseq>;
+		pinctrl-names = "default";
+		reset-gpios = <&gpio5 9 GPIO_ACTIVE_LOW>;
+	};
+
+	memory@80000000 {
+		reg = <0x0 0x80000000 0 0x80000000>;
+		device_type = "memory";
+	};
+};
+
+&adc1 {
+	vref-supply = <&reg_vref_1v8>;
+	status = "okay";
+};
+
+&enetc_port0 {
+	phy-handle = <&ethphy0>;
+	phy-mode = "rgmii-id";
+	pinctrl-0 = <&pinctrl_enetc0>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&enetc_port1 {
+	phy-handle = <&ethphy1>;
+	phy-mode = "rgmii-id";
+	pinctrl-0 = <&pinctrl_enetc1>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&flexcan2 {
+	pinctrl-0 = <&pinctrl_flexcan2>;
+	pinctrl-names = "default";
+	xceiver-supply = <&reg_can2_stby>;
+	status = "okay";
+};
+
+&i3c2 {
+	pinctrl-0 = <&pinctrl_i3c2>;
+	inctrl-names = "default";
+	i2c-scl-hz = <400000>;
+	status = "okay";
+
+	pca9570: gpio@24 {
+		compatible = "nxp,pca9570";
+		reg = <0x24 0 (I2C_FILTER)>;
+
+		#gpio-cells = <2>;
+		gpio-controller;
+		gpio-line-names = "OUT1", "OUT2", "OUT3", "OUT4";
+	};
+};
+
+&lpi2c2 {
+	clock-frequency = <400000>;
+	pinctrl-0 = <&pinctrl_lpi2c2>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	wm8962: codec@1a {
+		compatible = "wlf,wm8962";
+		reg = <0x1a>;
+		clocks = <&scmi_clk IMX95_CLK_SAI3>;
+		AVDD-supply = <&reg_audio_pwr>;
+		CPVDD-supply = <&reg_audio_pwr>;
+		DBVDD-supply = <&reg_audio_pwr>;
+		DCVDD-supply = <&reg_audio_pwr>;
+		gpio-cfg = <
+			0x0000
+			0x0000
+			0x0000
+			0x0000
+			0x0000
+			0x0000
+		>;
+		MICVDD-supply = <&reg_audio_pwr>;
+		PLLVDD-supply = <&reg_audio_pwr>;
+		SPKVDD1-supply = <&reg_audio_pwr>;
+		SPKVDD2-supply = <&reg_audio_pwr>;
+	};
+
+	pcal6524: gpio@22 {
+		compatible = "nxp,pcal6524";
+		reg = <0x22>;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts = <14 IRQ_TYPE_LEVEL_LOW>;
+		#gpio-cells = <2>;
+		gpio-controller;
+		interrupt-parent = <&gpio5>;
+		pinctrl-0 = <&pinctrl_pcal6524>;
+		pinctrl-names = "default";
+	};
+};
+
+&lpi2c3 {
+	clock-frequency = <400000>;
+	pinctrl-0 = <&pinctrl_lpi2c3>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	pca9632: led-controller@62 {
+		compatible = "nxp,pca9632";
+		reg = <0x62>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		nxp,inverted-out;
+
+		led_backlight0: led@0 {
+			reg = <0>;
+			color = <LED_COLOR_ID_WHITE>;
+			function = LED_FUNCTION_BACKLIGHT;
+			function-enumerator = <0>;
+		};
+
+		led_backlight1: led@1 {
+			reg = <1>;
+			color = <LED_COLOR_ID_WHITE>;
+			function = LED_FUNCTION_BACKLIGHT;
+			function-enumerator = <1>;
+		};
+	};
+};
+
+&lpi2c4 {
+	clock-frequency = <400000>;
+	pinctrl-0 = <&pinctrl_lpi2c4>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&lpi2c6 {
+	clock-frequency = <100000>;
+	pinctrl-0 = <&pinctrl_lpi2c6>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&lpuart1 {
+	pinctrl-0 = <&pinctrl_uart1>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&lpuart5 {
+	pinctrl-0 = <&pinctrl_uart5>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	bluetooth {
+		compatible = "nxp,88w8987-bt";
+	};
+};
+
+&micfil {
+	assigned-clocks = <&scmi_clk IMX95_CLK_AUDIOPLL1_VCO>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL2_VCO>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL1>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL2>,
+			  <&scmi_clk IMX95_CLK_PDM>;
+	assigned-clock-parents = <0>, <0>, <0>, <0>, <&scmi_clk IMX95_CLK_AUDIOPLL1>;
+	assigned-clock-rates = <3932160000>, <3612672000>, <393216000>, <361267200>, <49152000>;
+	#sound-dai-cells = <0>;
+	pinctrl-0 = <&pinctrl_pdm>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&mu7 {
+	status = "okay";
+};
+
+&netc_blk_ctrl {
+	status = "okay";
+};
+
+&netc_emdio {
+	pinctrl-0 = <&pinctrl_emdio>;
+	pinctrl-names = "default";
+	status = "okay";
+
+	ethphy0: ethernet-phy@1 {
+		reg = <1>;
+		reset-assert-us = <10000>;
+		reset-deassert-us = <80000>;
+		reset-gpios = <&pcal6524 4 GPIO_ACTIVE_LOW>;
+		realtek,clkout-disable;
+	};
+
+	ethphy1: ethernet-phy@2 {
+		reg = <2>;
+		reset-assert-us = <10000>;
+		reset-deassert-us = <80000>;
+		reset-gpios = <&pcal6524 5 GPIO_ACTIVE_LOW>;
+		realtek,clkout-disable;
+	};
+};
+
+&netc_timer {
+	status = "okay";
+};
+
+&netcmix_blk_ctrl {
+	status = "okay";
+};
+
+&pcie0 {
+	pinctrl-0 = <&pinctrl_pcie0>;
+	pinctrl-names = "default";
+	reset-gpio = <&gpio5 13 GPIO_ACTIVE_LOW>;
+	vpcie-supply = <&reg_m2_pwr>;
+	status = "okay";
+};
+
+&netc_bus0 {
+	msi-map = <0x00 &its 0x60 0x1>,	//ENETC0 PF
+		  <0x10 &its 0x61 0x1>, //ENETC0 VF0
+		  <0x20 &its 0x62 0x1>, //ENETC0 VF1
+		  <0x40 &its 0x63 0x1>, //ENETC1 PF
+		  <0x50 &its 0x65 0x1>, //ENETC1 VF0
+		  <0x60 &its 0x66 0x1>, //ENETC1 VF1
+		  <0x80 &its 0x64 0x1>, //ENETC2 PF
+		  <0xc0 &its 0x67 0x1>;
+};
+
+&sai1 {
+	assigned-clocks = <&scmi_clk IMX95_CLK_AUDIOPLL1_VCO>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL2_VCO>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL1>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL2>,
+			  <&scmi_clk IMX95_CLK_SAI1>;
+	assigned-clock-parents = <0>, <0>, <0>, <0>, <&scmi_clk IMX95_CLK_AUDIOPLL1>;
+	assigned-clock-rates = <3932160000>, <3612672000>, <393216000>, <361267200>, <12288000>;
+	#sound-dai-cells = <0>;
+	pinctrl-0 = <&pinctrl_sai1>;
+	pinctrl-names = "default";
+	fsl,sai-mclk-direction-output;
+	status = "okay";
+};
+
+&sai3 {
+	assigned-clocks = <&scmi_clk IMX95_CLK_AUDIOPLL1_VCO>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL2_VCO>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL1>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL2>,
+			  <&scmi_clk IMX95_CLK_SAI3>;
+	assigned-clock-parents = <0>, <0>, <0>, <0>, <&scmi_clk IMX95_CLK_AUDIOPLL1>;
+	assigned-clock-rates = <3932160000>, <3612672000>, <393216000>, <361267200>, <12288000>;
+	#sound-dai-cells = <0>;
+	pinctrl-0 = <&pinctrl_sai3>;
+	pinctrl-names = "default";
+	fsl,sai-mclk-direction-output;
+	status = "okay";
+};
+
+&scmi_iomuxc {
+	pinctrl_emdio: emdiogrp {
+		fsl,pins = <
+			IMX95_PAD_ENET2_MDC__NETCMIX_TOP_NETC_MDC		0x57e
+			IMX95_PAD_ENET2_MDIO__NETCMIX_TOP_NETC_MDIO		0x97e
+		>;
+	};
+
+	pinctrl_enetc0: enetc0grp {
+		fsl,pins = <
+			IMX95_PAD_ENET1_TD3__NETCMIX_TOP_ETH0_RGMII_TD3		0x57e
+			IMX95_PAD_ENET1_TD2__NETCMIX_TOP_ETH0_RGMII_TD2		0x57e
+			IMX95_PAD_ENET1_TD1__NETCMIX_TOP_ETH0_RGMII_TD1		0x57e
+			IMX95_PAD_ENET1_TD0__NETCMIX_TOP_ETH0_RGMII_TD0		0x57e
+			IMX95_PAD_ENET1_TX_CTL__NETCMIX_TOP_ETH0_RGMII_TX_CTL	0x57e
+			IMX95_PAD_ENET1_TXC__NETCMIX_TOP_ETH0_RGMII_TX_CLK	0x58e
+			IMX95_PAD_ENET1_RX_CTL__NETCMIX_TOP_ETH0_RGMII_RX_CTL	0x57e
+			IMX95_PAD_ENET1_RXC__NETCMIX_TOP_ETH0_RGMII_RX_CLK	0x58e
+			IMX95_PAD_ENET1_RD0__NETCMIX_TOP_ETH0_RGMII_RD0		0x57e
+			IMX95_PAD_ENET1_RD1__NETCMIX_TOP_ETH0_RGMII_RD1		0x57e
+			IMX95_PAD_ENET1_RD2__NETCMIX_TOP_ETH0_RGMII_RD2		0x57e
+			IMX95_PAD_ENET1_RD3__NETCMIX_TOP_ETH0_RGMII_RD3		0x57e
+		>;
+	};
+
+	pinctrl_enetc1: enetc1grp {
+		fsl,pins = <
+			IMX95_PAD_ENET2_TD3__NETCMIX_TOP_ETH1_RGMII_TD3		0x57e
+			IMX95_PAD_ENET2_TD2__NETCMIX_TOP_ETH1_RGMII_TD2		0x57e
+			IMX95_PAD_ENET2_TD1__NETCMIX_TOP_ETH1_RGMII_TD1		0x57e
+			IMX95_PAD_ENET2_TD0__NETCMIX_TOP_ETH1_RGMII_TD0		0x57e
+			IMX95_PAD_ENET2_TX_CTL__NETCMIX_TOP_ETH1_RGMII_TX_CTL	0x57e
+			IMX95_PAD_ENET2_TXC__NETCMIX_TOP_ETH1_RGMII_TX_CLK	0x58e
+			IMX95_PAD_ENET2_RX_CTL__NETCMIX_TOP_ETH1_RGMII_RX_CTL	0x57e
+			IMX95_PAD_ENET2_RXC__NETCMIX_TOP_ETH1_RGMII_RX_CLK	0x58e
+			IMX95_PAD_ENET2_RD0__NETCMIX_TOP_ETH1_RGMII_RD0		0x57e
+			IMX95_PAD_ENET2_RD1__NETCMIX_TOP_ETH1_RGMII_RD1		0x57e
+			IMX95_PAD_ENET2_RD2__NETCMIX_TOP_ETH1_RGMII_RD2		0x57e
+			IMX95_PAD_ENET2_RD3__NETCMIX_TOP_ETH1_RGMII_RD3		0x57e
+		>;
+	};
+
+	pinctrl_flexcan2: flexcan2grp {
+		fsl,pins = <
+			IMX95_PAD_GPIO_IO25__CAN2_TX				0x39e
+			IMX95_PAD_GPIO_IO27__CAN2_RX				0x39e
+		>;
+	};
+
+	pinctrl_hp: hpgrp {
+		fsl,pins = <
+			IMX95_PAD_GPIO_IO21__GPIO2_IO_BIT21			0x31e
+		>;
+	};
+
+	pinctrl_i3c2: i3c2grp {
+		fsl,pins = <
+			IMX95_PAD_ENET1_MDC__I3C2_SCL				0x40000186
+			IMX95_PAD_ENET1_MDIO__I3C2_SDA				0x40000186
+		>;
+	};
+
+	pinctrl_lpi2c1: lpi2c1grp {
+		fsl,pins = <
+			IMX95_PAD_I2C1_SCL__AONMIX_TOP_LPI2C1_SCL		0x40000b9e
+			IMX95_PAD_I2C1_SDA__AONMIX_TOP_LPI2C1_SDA		0x40000b9e
+		>;
+	};
+
+	pinctrl_lpi2c2: lpi2c2grp {
+		fsl,pins = <
+			IMX95_PAD_I2C2_SCL__AONMIX_TOP_LPI2C2_SCL		0x40000b9e
+			IMX95_PAD_I2C2_SDA__AONMIX_TOP_LPI2C2_SDA		0x40000b9e
+		>;
+	};
+
+	pinctrl_lpi2c3: lpi2c3grp {
+		fsl,pins = <
+			IMX95_PAD_GPIO_IO28__LPI2C3_SDA				0x40000b9e
+			IMX95_PAD_GPIO_IO29__LPI2C3_SCL				0x40000b9e
+		>;
+	};
+
+	pinctrl_lpi2c4: lpi2c4grp {
+		fsl,pins = <
+			IMX95_PAD_GPIO_IO30__LPI2C4_SDA				0x40000b9e
+			IMX95_PAD_GPIO_IO31__LPI2C4_SCL				0x40000b9e
+		>;
+	};
+
+	pinctrl_lpi2c6: lpi2c6grp {
+		fsl,pins = <
+			IMX95_PAD_GPIO_IO02__LPI2C6_SDA				0x40000b9e
+			IMX95_PAD_GPIO_IO03__LPI2C6_SCL				0x40000b9e
+		>;
+	};
+
+	pinctrl_mipi_dsi_csi: mipidsigrp {
+		fsl,pins = <
+			IMX95_PAD_XSPI1_DATA6__GPIO5_IO_BIT6			0x31e
+		>;
+	};
+
+	pinctrl_pcal6524: pcal6524grp {
+		fsl,pins = <
+			IMX95_PAD_GPIO_IO34__GPIO5_IO_BIT14			0x31e
+		>;
+	};
+
+	pinctrl_pcie0: pcie0grp {
+		fsl,pins = <
+			IMX95_PAD_GPIO_IO32__HSIOMIX_TOP_PCIE1_CLKREQ_B		0x40000b1e
+			IMX95_PAD_GPIO_IO33__GPIO5_IO_BIT13			0x31e
+		>;
+	};
+
+	pinctrl_pdm: pdmgrp {
+		fsl,pins = <
+			IMX95_PAD_PDM_CLK__AONMIX_TOP_PDM_CLK				0x31e
+			IMX95_PAD_PDM_BIT_STREAM0__AONMIX_TOP_PDM_BIT_STREAM_BIT0	0x31e
+		>;
+	};
+
+	pinctrl_ptn5110: ptn5110grp {
+		fsl,pins = <
+			IMX95_PAD_XSPI1_SS1_B__GPIO5_IO_BIT11			0x31e
+		>;
+	};
+
+	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmcgrp {
+		fsl,pins = <
+			IMX95_PAD_SD2_RESET_B__GPIO3_IO_BIT7			0x31e
+		>;
+	};
+
+	pinctrl_sai1: sai1grp {
+		fsl,pins = <
+			IMX95_PAD_SAI1_RXD0__AONMIX_TOP_SAI1_RX_DATA_BIT0	0x31e
+			IMX95_PAD_SAI1_TXC__AONMIX_TOP_SAI1_TX_BCLK		0x31e
+			IMX95_PAD_SAI1_TXFS__AONMIX_TOP_SAI1_TX_SYNC		0x31e
+			IMX95_PAD_SAI1_TXD0__AONMIX_TOP_SAI1_TX_DATA_BIT0	0x31e
+		>;
+	};
+
+	pinctrl_sai2: sai2grp {
+		fsl,pins = <
+			IMX95_PAD_ENET2_MDIO__NETCMIX_TOP_SAI2_RX_BCLK		0x31e
+			IMX95_PAD_ENET2_MDC__NETCMIX_TOP_SAI2_RX_SYNC		0x31e
+			IMX95_PAD_ENET2_TD3__NETCMIX_TOP_SAI2_RX_DATA_BIT0	0x31e
+			IMX95_PAD_ENET2_TD2__NETCMIX_TOP_SAI2_RX_DATA_BIT1	0x31e
+			IMX95_PAD_ENET2_TXC__NETCMIX_TOP_SAI2_TX_BCLK		0x31e
+			IMX95_PAD_ENET2_TX_CTL__NETCMIX_TOP_SAI2_TX_SYNC	0x31e
+			IMX95_PAD_ENET2_RX_CTL__NETCMIX_TOP_SAI2_TX_DATA_BIT0	0x31e
+			IMX95_PAD_ENET2_RXC__NETCMIX_TOP_SAI2_TX_DATA_BIT1	0x31e
+			IMX95_PAD_ENET2_RD0__NETCMIX_TOP_SAI2_TX_DATA_BIT2	0x31e
+			IMX95_PAD_ENET2_RD1__NETCMIX_TOP_SAI2_TX_DATA_BIT3	0x31e
+			IMX95_PAD_ENET2_RD2__NETCMIX_TOP_SAI2_MCLK		0x31e
+		>;
+	};
+
+	pinctrl_sai3: sai3grp {
+		fsl,pins = <
+			IMX95_PAD_GPIO_IO17__SAI3_MCLK				0x31e
+			IMX95_PAD_GPIO_IO16__SAI3_TX_BCLK			0x31e
+			IMX95_PAD_GPIO_IO26__SAI3_TX_SYNC			0x31e
+			IMX95_PAD_GPIO_IO20__SAI3_RX_DATA_BIT0			0x31e
+			IMX95_PAD_GPIO_IO19__SAI3_TX_DATA_BIT0			0x31e
+		>;
+	};
+
+	pinctrl_spdif: spdifgrp {
+		fsl,pins = <
+			IMX95_PAD_GPIO_IO22__SPDIF_IN				0x3fe
+			IMX95_PAD_GPIO_IO23__SPDIF_OUT				0x3fe
+		>;
+	};
+
+	pinctrl_tpm3: tpm3grp {
+		fsl,pins = <
+			IMX95_PAD_CCM_CLKO2__GPIO3_IO_BIT27			0x51e
+		>;
+	};
+
+	pinctrl_tpm6: tpm6grp {
+		fsl,pins = <
+			IMX95_PAD_GPIO_IO08__TPM6_CH0				0x51e
+		>;
+	};
+
+	pinctrl_uart1: uart1grp {
+		fsl,pins = <
+			IMX95_PAD_UART1_RXD__AONMIX_TOP_LPUART1_RX		0x31e
+			IMX95_PAD_UART1_TXD__AONMIX_TOP_LPUART1_TX		0x31e
+		>;
+	};
+
+	pinctrl_uart5: uart5grp {
+		fsl,pins = <
+			IMX95_PAD_DAP_TDO_TRACESWO__LPUART5_TX			0x31e
+			IMX95_PAD_DAP_TDI__LPUART5_RX				0x31e
+			IMX95_PAD_DAP_TMS_SWDIO__LPUART5_RTS_B			0x31e
+			IMX95_PAD_DAP_TCLK_SWCLK__LPUART5_CTS_B			0x31e
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			IMX95_PAD_SD1_CLK__USDHC1_CLK				0x158e
+			IMX95_PAD_SD1_CMD__USDHC1_CMD				0x138e
+			IMX95_PAD_SD1_DATA0__USDHC1_DATA0			0x138e
+			IMX95_PAD_SD1_DATA1__USDHC1_DATA1			0x138e
+			IMX95_PAD_SD1_DATA2__USDHC1_DATA2			0x138e
+			IMX95_PAD_SD1_DATA3__USDHC1_DATA3			0x138e
+			IMX95_PAD_SD1_DATA4__USDHC1_DATA4			0x138e
+			IMX95_PAD_SD1_DATA5__USDHC1_DATA5			0x138e
+			IMX95_PAD_SD1_DATA6__USDHC1_DATA6			0x138e
+			IMX95_PAD_SD1_DATA7__USDHC1_DATA7			0x138e
+			IMX95_PAD_SD1_STROBE__USDHC1_STROBE			0x158e
+		>;
+	};
+
+	pinctrl_usdhc1_100mhz: usdhc1-100mhzgrp {
+		fsl,pins = <
+			IMX95_PAD_SD1_CLK__USDHC1_CLK				0x158e
+			IMX95_PAD_SD1_CMD__USDHC1_CMD				0x138e
+			IMX95_PAD_SD1_DATA0__USDHC1_DATA0			0x138e
+			IMX95_PAD_SD1_DATA1__USDHC1_DATA1			0x138e
+			IMX95_PAD_SD1_DATA2__USDHC1_DATA2			0x138e
+			IMX95_PAD_SD1_DATA3__USDHC1_DATA3			0x138e
+			IMX95_PAD_SD1_DATA4__USDHC1_DATA4			0x138e
+			IMX95_PAD_SD1_DATA5__USDHC1_DATA5			0x138e
+			IMX95_PAD_SD1_DATA6__USDHC1_DATA6			0x138e
+			IMX95_PAD_SD1_DATA7__USDHC1_DATA7			0x138e
+			IMX95_PAD_SD1_STROBE__USDHC1_STROBE			0x158e
+		>;
+	};
+
+	pinctrl_usdhc1_200mhz: usdhc1-200mhzgrp {
+		fsl,pins = <
+			IMX95_PAD_SD1_CLK__USDHC1_CLK				0x15fe
+			IMX95_PAD_SD1_CMD__USDHC1_CMD				0x13fe
+			IMX95_PAD_SD1_DATA0__USDHC1_DATA0			0x13fe
+			IMX95_PAD_SD1_DATA1__USDHC1_DATA1			0x13fe
+			IMX95_PAD_SD1_DATA2__USDHC1_DATA2			0x13fe
+			IMX95_PAD_SD1_DATA3__USDHC1_DATA3			0x13fe
+			IMX95_PAD_SD1_DATA4__USDHC1_DATA4			0x13fe
+			IMX95_PAD_SD1_DATA5__USDHC1_DATA5			0x13fe
+			IMX95_PAD_SD1_DATA6__USDHC1_DATA6			0x13fe
+			IMX95_PAD_SD1_DATA7__USDHC1_DATA7			0x13fe
+			IMX95_PAD_SD1_STROBE__USDHC1_STROBE			0x15fe
+		>;
+	};
+
+	pinctrl_usdhc2_gpio: usdhc2gpiogrp {
+		fsl,pins = <
+			IMX95_PAD_SD2_CD_B__GPIO3_IO_BIT0			0x31e
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			IMX95_PAD_SD2_CLK__USDHC2_CLK				0x158e
+			IMX95_PAD_SD2_CMD__USDHC2_CMD				0x138e
+			IMX95_PAD_SD2_DATA0__USDHC2_DATA0			0x138e
+			IMX95_PAD_SD2_DATA1__USDHC2_DATA1			0x138e
+			IMX95_PAD_SD2_DATA2__USDHC2_DATA2			0x138e
+			IMX95_PAD_SD2_DATA3__USDHC2_DATA3			0x138e
+			IMX95_PAD_SD2_VSELECT__USDHC2_VSELECT			0x51e
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2-100mhzgrp {
+		fsl,pins = <
+			IMX95_PAD_SD2_CLK__USDHC2_CLK				0x158e
+			IMX95_PAD_SD2_CMD__USDHC2_CMD				0x138e
+			IMX95_PAD_SD2_DATA0__USDHC2_DATA0			0x138e
+			IMX95_PAD_SD2_DATA1__USDHC2_DATA1			0x138e
+			IMX95_PAD_SD2_DATA2__USDHC2_DATA2			0x138e
+			IMX95_PAD_SD2_DATA3__USDHC2_DATA3			0x138e
+			IMX95_PAD_SD2_VSELECT__USDHC2_VSELECT			0x51e
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2-200mhzgrp {
+		fsl,pins = <
+			IMX95_PAD_SD2_CLK__USDHC2_CLK				0x15fe
+			IMX95_PAD_SD2_CMD__USDHC2_CMD				0x13fe
+			IMX95_PAD_SD2_DATA0__USDHC2_DATA0			0x13fe
+			IMX95_PAD_SD2_DATA1__USDHC2_DATA1			0x13fe
+			IMX95_PAD_SD2_DATA2__USDHC2_DATA2			0x13fe
+			IMX95_PAD_SD2_DATA3__USDHC2_DATA3			0x13fe
+			IMX95_PAD_SD2_VSELECT__USDHC2_VSELECT			0x51e
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			IMX95_PAD_SD3_CLK__USDHC3_CLK				0x158e
+			IMX95_PAD_SD3_CMD__USDHC3_CMD				0x138e
+			IMX95_PAD_SD3_DATA0__USDHC3_DATA0			0x138e
+			IMX95_PAD_SD3_DATA1__USDHC3_DATA1			0x138e
+			IMX95_PAD_SD3_DATA2__USDHC3_DATA2			0x138e
+			IMX95_PAD_SD3_DATA3__USDHC3_DATA3			0x138e
+		>;
+	};
+
+	pinctrl_usdhc3_pwrseq: usdhc3pwrseqgrp {
+		fsl,pins = <
+			IMX95_PAD_XSPI1_SCLK__GPIO5_IO_BIT9			0x31e
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3-100mhzgrp {
+		fsl,pins = <
+			IMX95_PAD_SD3_CLK__USDHC3_CLK				0x158e
+			IMX95_PAD_SD3_CMD__USDHC3_CMD				0x138e
+			IMX95_PAD_SD3_DATA0__USDHC3_DATA0			0x138e
+			IMX95_PAD_SD3_DATA1__USDHC3_DATA1			0x138e
+			IMX95_PAD_SD3_DATA2__USDHC3_DATA2			0x138e
+			IMX95_PAD_SD3_DATA3__USDHC3_DATA3			0x138e
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3-200mhzgrp {
+		fsl,pins = <
+			IMX95_PAD_SD3_CLK__USDHC3_CLK				0x15fe
+			IMX95_PAD_SD3_CMD__USDHC3_CMD				0x13fe
+			IMX95_PAD_SD3_DATA0__USDHC3_DATA0			0x13fe
+			IMX95_PAD_SD3_DATA1__USDHC3_DATA1			0x13fe
+			IMX95_PAD_SD3_DATA2__USDHC3_DATA2			0x13fe
+			IMX95_PAD_SD3_DATA3__USDHC3_DATA3			0x13fe
+		>;
+	};
+};
+
+&scmi_misc {
+	nxp,ctrl-ids = <BRD_SM_CTRL_SD3_WAKE		1>,
+		       <BRD_SM_CTRL_PCIE1_WAKE		1>,
+		       <BRD_SM_CTRL_BT_WAKE		1>,
+		       <BRD_SM_CTRL_PCIE2_WAKE		1>,
+		       <BRD_SM_CTRL_BUTTON		1>;
+};
+
+&thermal_zones {
+	a55-thermal {
+		cooling-maps {
+			map1 {
+				cooling-device = <&fan0 0 1>;
+				trip = <&atrip2>;
+			};
+
+			map2 {
+				cooling-device = <&fan0 1 2>;
+				trip = <&atrip3>;
+			};
+
+			map3 {
+				cooling-device = <&fan0 2 3>;
+				trip = <&atrip4>;
+			};
+		};
+
+		trips {
+			atrip2: trip2 {
+				hysteresis = <2000>;
+				temperature = <55000>;
+				type = "active";
+			};
+
+			atrip3: trip3 {
+				hysteresis = <2000>;
+				temperature = <65000>;
+				type = "active";
+			};
+
+			atrip4: trip4 {
+				hysteresis = <2000>;
+				temperature = <75000>;
+				type = "active";
+			};
+		};
+	};
+
+	pf09-thermal {
+		polling-delay = <2000>;
+		polling-delay-passive = <250>;
+		thermal-sensors = <&scmi_sensor 2>;
+
+		trips {
+			pf09_alert: trip0 {
+				hysteresis = <2000>;
+				temperature = <140000>;
+				type = "passive";
+			};
+
+			pf09_crit: trip1 {
+				hysteresis = <2000>;
+				temperature = <155000>;
+				type = "critical";
+			};
+		};
+	};
+
+	pf53arm-thermal {
+		polling-delay = <2000>;
+		polling-delay-passive = <250>;
+		thermal-sensors = <&scmi_sensor 4>;
+
+		cooling-maps {
+			map0 {
+				cooling-device = <&A55_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						 <&A55_1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						 <&A55_2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						 <&A55_3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						 <&A55_4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						 <&A55_5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				trip = <&pf5301_alert>;
+			};
+		};
+
+		trips {
+			pf5301_alert: trip0 {
+				hysteresis = <2000>;
+				temperature = <140000>;
+				type = "passive";
+			};
+
+			pf5301_crit: trip1 {
+				hysteresis = <2000>;
+				temperature = <155000>;
+				type = "critical";
+			};
+		};
+	};
+
+	pf53soc-thermal {
+		polling-delay = <2000>;
+		polling-delay-passive = <250>;
+		thermal-sensors = <&scmi_sensor 3>;
+
+		trips {
+			pf5302_alert: trip0 {
+				hysteresis = <2000>;
+				temperature = <140000>;
+				type = "passive";
+			};
+
+			pf5302_crit: trip1 {
+				hysteresis = <2000>;
+				temperature = <155000>;
+				type = "critical";
+			};
+		};
+	};
+};
+
+&tpm3 {
+	pinctrl-0 = <&pinctrl_tpm3>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&tpm6 {
+	pinctrl-0 = <&pinctrl_tpm6>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&usdhc1 {
+	bus-width = <8>;
+	non-removable;
+	no-sd;
+	no-sdio;
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
+	pinctrl-3 = <&pinctrl_usdhc1>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz", "sleep";
+	fsl,tuning-step = <1>;
+	status = "okay";
+};
+
+&usdhc2 {
+	bus-width = <4>;
+	cd-gpios = <&gpio3 00 GPIO_ACTIVE_LOW>;
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-3 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz", "sleep";
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	fsl,cd-gpio-wakeup-disable;
+	fsl,tuning-step = <1>;
+	status = "okay";
+};
+
+&usdhc3 {
+	bus-width = <4>;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&usdhc3_pwrseq>;
+	non-removable;
+	pinctrl-0 = <&pinctrl_usdhc3>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>;
+	pinctrl-3 = <&pinctrl_usdhc3>;
+	pinctrl-names = "default", "state_100mhz", "state_200mhz", "sleep";
+	vmmc-supply = <&reg_usdhc3_vmmc>;
+	wakeup-source;
+	status = "okay";
+};
+
+&wdog3 {
+	status = "okay";
+};
+
+&xcvr {
+	clocks = <&scmi_clk IMX95_CLK_BUSWAKEUP>,
+		 <&scmi_clk IMX95_CLK_SPDIF>,
+		 <&dummy>,
+		 <&scmi_clk IMX95_CLK_AUDIOXCVR>,
+		 <&scmi_clk IMX95_CLK_AUDIOPLL1>,
+		 <&scmi_clk IMX95_CLK_AUDIOPLL2>;
+	clock-names = "ipg", "phy", "spba", "pll_ipg", "pll8k", "pll11k";
+	assigned-clocks = <&scmi_clk IMX95_CLK_AUDIOPLL1_VCO>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL2_VCO>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL1>,
+			  <&scmi_clk IMX95_CLK_AUDIOPLL2>,
+			  <&scmi_clk IMX95_CLK_SPDIF>,
+			  <&scmi_clk IMX95_CLK_AUDIOXCVR>;
+	assigned-clock-parents = <0>, <0>, <0>, <0>,
+				 <&scmi_clk IMX95_CLK_AUDIOPLL1>,
+				 <&scmi_clk IMX95_CLK_SYSPLL1_PFD1_DIV2>;
+	assigned-clock-rates = <3932160000>, <3612672000>,
+			       <393216000>, <361267200>,
+			       <12288000>, <0>;
+	#sound-dai-cells = <0>;
+	pinctrl-0 = <&pinctrl_spdif>;
+	pinctrl-names = "default";
+	status = "okay";
+};

-- 
2.34.1


