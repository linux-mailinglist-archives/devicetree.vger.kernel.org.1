Return-Path: <devicetree+bounces-265162-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OKqmNbENjmmS+wAAu9opvQ
	(envelope-from <devicetree+bounces-265162-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:28:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3656712FE76
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:28:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25B1130574B6
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:27:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C7942E7635;
	Thu, 12 Feb 2026 17:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="ro3x/9NC"
X-Original-To: devicetree@vger.kernel.org
Received: from BYAPR05CU005.outbound.protection.outlook.com (mail-westusazon11010002.outbound.protection.outlook.com [52.101.85.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3224259C94;
	Thu, 12 Feb 2026 17:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.85.2
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770917256; cv=fail; b=e6zyJJRsl5/NcaIrPR3YzSa683Ky3nwVKSAXp8F/aReF6jB3RHTJKzLPCd1dwlDeyLFjup96PFya3SnezN4NLK3N6IfnYwwLgn736R3K39Jt4mHH+wluKkpqEb6KlvX+j2Nb/cI5tqFFYbYItdYDl5+WJMBTC5b/eGgGiAEknDY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770917256; c=relaxed/simple;
	bh=z7XocER7EnWq4UF7qv2/WuOqbhhWozI+vycWySytOBA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=gE9SSK75cugm+eSJ7DKi8RA34VdmNeoeP/T6mFVhpof8GQcagbfU4FKwO6mQ3ywF1qIKr4Rm1fZ5b+8TIhUdSlHXFegsUrPH7xM5Wo3gG00UFtKkwOgR6kY5YDVaw8oQrJy5NpGKHhOU/fqfIbaN/5R5kdWt/MmHq/I/WUk9nYQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=ro3x/9NC; arc=fail smtp.client-ip=52.101.85.2
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EytanFKM8v/wli3AfaAwCNHADE+RLeZVsj267wQ2Oijv537X6/1FpsMwC1IDXBOiYuZo3v6V+Biqpiok8AqvQfsZgv1pimUhqM40iPT597VVwGXb0FQlNu17whVHLchtG3X0LSFxcTGIOe8/Y5HpRRsrRuUXPrOJ0TheVvlWtpN5CCw8i8OYyGEMNhaaB6EoDCdVa1SlWLTgW3W6nkG0Zr+rX9prqflGl7uRI9ut+ah1/BOZSSN+7pqSGBgiIJ2Fl2uJt0Lyte65YNj0VQFCClfn4oG1iPoBzCDykaw0s0xiL6lmUWLEB5q1y0udIS4Wxyi2xUyKMgH97YOQsWZ3BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sKE6UJt7dxGlmQbPeltY8HwcpqbxnLHd0fgOITMd5kU=;
 b=J7XFjHw6Dt1b4TAXEwgbiwoA+XTeCWUZfRYaYWuL+tNxb117/8qLE4pDN53z7G6V6YMRvCQ26YYdj6Tqti2IMgib8gVNj+edEWBIT1l9OVFfIXCTSunWzxYCvtsgcCOejSZPHYZ/xotySrAnVB30O8qiH+F9ioZKYBgwhVTaYnQwlVJZOjjLArm6g7rhMKHLoXIbvxMUd5rqDfVlEr3TmHhfL2EMDDIDRY2VRrSM1USVywwHcgmg51n+Pxz9JfA8SLokxscEJZH1pvqwFzoBUyZiQxjUxlgjozljMtZRByi6LYWsEawibr+bvHsoUTJpEEHax+50q0eEc0a0VJwH7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=baylibre.com smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sKE6UJt7dxGlmQbPeltY8HwcpqbxnLHd0fgOITMd5kU=;
 b=ro3x/9NCdaQOFGVf+E9FUTYnZV/Ok1Lf9lkzddjGsGNRgFwEVS0e4VupB+/0UrPp2H0ftWll73+D/BeI2WLy9MutZHT/1En2VD8872jUN3WBMdrqDVNOtJqd0v5LIh83ggXS8dYallJxwADR010JIWPvLfUQrWaLgZaKsDYFn3s=
Received: from BN1PR13CA0021.namprd13.prod.outlook.com (2603:10b6:408:e2::26)
 by LV3PR10MB7723.namprd10.prod.outlook.com (2603:10b6:408:1b0::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Thu, 12 Feb
 2026 17:27:31 +0000
Received: from BN3PEPF0000B06D.namprd21.prod.outlook.com
 (2603:10b6:408:e2:cafe::bc) by BN1PR13CA0021.outlook.office365.com
 (2603:10b6:408:e2::26) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9611.11 via Frontend Transport; Thu,
 12 Feb 2026 17:27:24 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 BN3PEPF0000B06D.mail.protection.outlook.com (10.167.243.72) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.0 via Frontend Transport; Thu, 12 Feb 2026 17:27:30 +0000
Received: from DLEE201.ent.ti.com (157.170.170.76) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 12 Feb
 2026 11:27:29 -0600
Received: from DLEE213.ent.ti.com (157.170.170.116) by DLEE201.ent.ti.com
 (157.170.170.76) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 12 Feb
 2026 11:27:28 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE213.ent.ti.com
 (157.170.170.116) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 12 Feb 2026 11:27:28 -0600
Received: from [127.0.1.1] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61CHRSI63458792;
	Thu, 12 Feb 2026 11:27:28 -0600
From: Kendall Willis <k-willis@ti.com>
Date: Thu, 12 Feb 2026 11:27:24 -0600
Subject: [PATCH v5 5/5] arm64: dts: ti: k3-am62d2-evm: Enable Main UART
 wakeup
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260212-b4-uart-daisy-chain-dts-v5-5-26c7f534e567@ti.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770917248; l=1799;
 i=k-willis@ti.com; s=20251230; h=from:subject:message-id;
 bh=z7XocER7EnWq4UF7qv2/WuOqbhhWozI+vycWySytOBA=;
 b=hu3BzmNe+bQVF+5fG9b77Ha1J5Oc3vppiULp72y2+NZAOGgSOPkwnQOyxeoxb8X/AmYCYOQrd
 Xy/vR7BOJgNCqdiWScLnGSaaccUbRNsuwcoRa/bFk/UPMzXaEa55ZVq
X-Developer-Key: i=k-willis@ti.com; a=ed25519;
 pk=fQiPVFwmogfDAKdaAKq163RWSfgHZVE/MrsDzp0Xo1k=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN3PEPF0000B06D:EE_|LV3PR10MB7723:EE_
X-MS-Office365-Filtering-Correlation-Id: bf09b3b9-88b9-4999-3460-08de6a5c0057
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|82310400026|1800799024|36860700013|376014;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?MjExWWlIWWRMb3RCY3hZTWtLS2VYVU10ZmNqUkl1SjBsZHNDT0JSQzhBN01T?=
 =?utf-8?B?ZC9TWFhGVEZ2K21IY0Z2Ty9tdkdtYmJjMC9VMzN4QjlCTTZwVm55RW5FMFY5?=
 =?utf-8?B?bWdzckh6TmlHVXp4VjdmSW50c0gza0NMV3BtUVEyWllIdFdldTlJN0hkQ0Nz?=
 =?utf-8?B?bWx6MkVzMzN5Y3BRZkpzNUpkRDRUTlFSSDFsRWFscERYWUJJSENjemE5aTdB?=
 =?utf-8?B?TWVqQmFnSURQdU40aFltVERCMll4d053NDYrSXpsTVJoaFhnM2hUb0p5Y2xH?=
 =?utf-8?B?RldEd21oNTJxVkQ2cmlGeHRWNndZaTdHTGJwNVlkRkJXdXJrSDlaS05haEls?=
 =?utf-8?B?aUdrOWNLMk1VanRaTFd0WnFvNXhScFVxMk83STh1MEFRSmE2MTlvZktFR3RG?=
 =?utf-8?B?NEtCaFBQaWNtTGJBS2xYV2FsTmIxYkk0ckRqOEhyWXdHQVcwWHNqZzFHYWh3?=
 =?utf-8?B?OG9acGRzNGhnOHB1Mkp3NDRVUGlhd1AzclNZWTY1aTZRc1IzV3FBUjI3UHdH?=
 =?utf-8?B?WTJiRzNndFZidjBUbEpNalFMREw4RHp3N2I1cDZIQ3B5Y3M5dmxNQnlSRVFQ?=
 =?utf-8?B?amI3OUtYb2xORjg3dXh3Ujhua3V3THI4OUR3OUE2T25uTHJTemF4M3ZDaXY4?=
 =?utf-8?B?WTZIUmxaUjV0RDlxallWM3JhT2NiZFlZdGJnejcxOVE1Qkh6QmQzOGJSdUpD?=
 =?utf-8?B?TnFmcHJCcDM5Y2FiU2E1T0g4TnV1SFl5YUdCcGxxWEYvUDg2L3J2RWw0YTAz?=
 =?utf-8?B?SnQ0a0FJNnBjSWhxWlBualBueTROMTNwbjQrNnkvMHFWY3ozSFpidzZBc2NI?=
 =?utf-8?B?bVd1cmhFeW5GTm0zYUx5YzI0bTlrSGZiZEpUTEMyTU9wazdBQ2MwVjRvWHlm?=
 =?utf-8?B?R2pLWmhQT0JuaEtJZXZXZXF1bnI1WUdPSlZXejV4Y1Z2eGU1dkEvcWxBT3Uz?=
 =?utf-8?B?MXJ5TkFoUUhVa0xuRysrdURhWityYVFaVCtDYVZocWpGTFB5NUcwRFJYUzJS?=
 =?utf-8?B?VnY0T1o0UERlOHdSeU9WSVBaOWh1VURwZlZWdXVVRHMvcmFmRXdacGE0ekhH?=
 =?utf-8?B?UVY4a0EvdFdHR05zcENmdFllcGloTFB2V3VsZ3gwYnBuNUNSaTZKQ3lCMll2?=
 =?utf-8?B?UUNkUnVRRjMxSHNwOFhUaEdUREwzSmoxanpnMHFCWU9EeWE5L3dXZHZpbVFW?=
 =?utf-8?B?d1ZXWjFQL3R2cW1mbnMvWDE4ZlU1NXc2L1NPR0ZoNm81aWNOdjhDWlFFREVY?=
 =?utf-8?B?MVl6K3AzNHpmS2g3ckhqR1EwclBud3lrNkd4dldDdFhOc29iYlNwZVlSRVNT?=
 =?utf-8?B?eitJNnZoOGxZY3REL0h0bGJKTXJ4U2gvcFVKU295UVBSRXZlYXh5MkM5SnZk?=
 =?utf-8?B?K3U2Q1pvOVBQSDVjcTlTVVQvcTY4SmFuNlFJSTAyaTRsTHZmL1UrWC9iYUpm?=
 =?utf-8?B?b1BQVEhNRUluUms4UFdSbkQ0bzRRR1JVNHRmVTBRdktxc0N0V3IwSjdVN040?=
 =?utf-8?B?Z3VqR2ZYU25GL1UxZjYzVlBNTUMvVGFUbW52MHNJWUprUnJwb3JVNFlOVVha?=
 =?utf-8?B?dStselZ3cjMwOFhZL0NPQit3WldiR2MrS0JtMmNmUCtlSDI5VndGMzgrc3Vl?=
 =?utf-8?B?MlkvdUFUVFkxdkc4VVJyZzZyejUvVHRLakcxWHl3VmgyRnJET1dTeDNOSy82?=
 =?utf-8?B?Mk1udTJmUHdldnE2dFI2bnNmdmFuNWxaUnNLVkZrZ2k0YjgzSUdjMjgwSk82?=
 =?utf-8?B?TW9lTWowSkVCK1ZOUkIrU0dTRk45d2FTM3lBRHM2ckg0ektiTGtVbXRLNFV4?=
 =?utf-8?B?UGxLUi9pKzRjdzZlZkJzK0RKblRzZ0JFQXhNSnVyVmR3aTFSeW9vWXNHaUVH?=
 =?utf-8?B?YVkzU0FZY3RBOUpiWE93TGdNV0gya2FqNldwcHZmMjlWMUhOWFZjaE9lYmdk?=
 =?utf-8?B?SWZjSXQxMkY5WEV2bkI1SHNWbDBsMzduTXJ6d1U0NFphSzJ0akVmUExnUVJO?=
 =?utf-8?B?NlE5aWgxYm5SUmFvUjZ3a0xleE1GYnlWS3NqYVo3bHg5QnZreHVPaEljMzlK?=
 =?utf-8?B?L3BQWlVodTFKR2NuMHlvbHFhQlpPOHdDeHF4bU1SQ3lZZXVac3Z3M0tudk1r?=
 =?utf-8?B?cUhpaGtHaXJ5VndMRXpzQkNhTWhlc1JFZHdjM05MdmVEOHVGY0JSeFRyYSth?=
 =?utf-8?B?MnEyZmVQS0RvZS9zOU9wMUdpcXpwR0haY1cxYU9tclJlVXdpZFhSZ00xZHJk?=
 =?utf-8?B?cHNZTUhCNlRDSVdtRU9FRHNoaFZBPT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(1800799024)(36860700013)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	W4bLAkqsX1QP8HfT7UptwTYZsoVDly+Tpn09cuO83rVWPc+joCgb4C9jRgLSnvyFFdM8JUbboQhJdw4MJle4iQskJrg9VNo2SXapFf4CpFL393By2+IP86y83j1D0ZIYPQd06/sv4Gg9srhi7c4aeYMeSmEGEmx7ZtBL7T0SoHklzHAQDZvtFrpto9oD48mMKlrFSeQKZQ3eiNHOtxTtUIt0zsoHsqk5Cjb4dD2MlX8/xWjf1vXc6V8WGgBT7/qK+wkRRzTc7hQD8omO6fcj3QKBr1BjgESkeJFx4OPj+5/MVFhV9U8i48usKysfU3Da5cBNTUV/RfBLYYiUeXIkn773ZzqJMTfmYEU0+vdw8MQENwQahvq5BaA26TNt5Npku4rXlCnorBTrT+1NNsLL8UMAlMt/MqJu0ZM488XfTJumXRc4EGTfx/gkSW/Ueh0L
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2026 17:27:30.7243
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bf09b3b9-88b9-4999-3460-08de6a5c0057
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BN3PEPF0000B06D.namprd21.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR10MB7723
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
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[k-willis@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:mid,ti.com:dkim,ti.com:email];
	PRECEDENCE_BULK(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265162-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[ti.com:+]
X-Rspamd-Queue-Id: 3656712FE76
X-Rspamd-Action: no action

The Main UART can resume from suspend to RAM states when PIN_WKUP_EN
is enabled. Add the necessary pins needed to wakeup the system. Add the
system idle states that the Main UART can wakeup the system from.

The UART driver uses the "default" pinctrl state when the system is
active. In the suspend hook, if the UART is wakeup enabled, the "wakeup"
pinctrl state is selected by the UART driver in order to allow wakeup.
Upon resume, the default pinctrl state is selected again.

Signed-off-by: Kendall Willis <k-willis@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62d2-evm.dts | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62d2-evm.dts b/arch/arm64/boot/dts/ti/k3-am62d2-evm.dts
index a5d5dc0a7bec8c3a5dfa63e984ae398af3ede7c0..768aeeec0e8d6c1f6f1dcca442dae15450ce6c2f 100644
--- a/arch/arm64/boot/dts/ti/k3-am62d2-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62d2-evm.dts
@@ -241,6 +241,13 @@ AM62DX_IOPAD(0x01cc, PIN_OUTPUT, 0) /* (D15) UART0_TXD */
 		bootph-all;
 	};
 
+	main_uart0_pins_wakeup: main-uart0-wakeup-pins {
+		pinctrl-single,pins = <
+			AM62DX_IOPAD(0x01c8, PIN_INPUT | PIN_WKUP_EN, 0) /* (E14) UART0_RXD */
+			AM62DX_IOPAD(0x01cc, PIN_OUTPUT, 0) /* (D15) UART0_TXD */
+		>;
+	};
+
 	main_i2c0_pins_default: main-i2c0-default-pins {
 		pinctrl-single,pins = <
 			AM62DX_IOPAD(0x01e0, PIN_INPUT_PULLUP, 0) /* (D17) I2C0_SCL */
@@ -587,8 +594,12 @@ &main_gpio_intr {
 };
 
 &main_uart0 {
-	pinctrl-names = "default";
+	pinctrl-names = "default", "wakeup";
 	pinctrl-0 = <&main_uart0_pins_default>;
+	pinctrl-1 = <&main_uart0_pins_wakeup>;
+	wakeup-source = <&system_deep_sleep>,
+			<&system_mcu_only>,
+			<&system_standby>;
 	bootph-all;
 	status = "okay";
 };

-- 
2.34.1


