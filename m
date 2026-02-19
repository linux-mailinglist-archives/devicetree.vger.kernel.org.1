Return-Path: <devicetree+bounces-266711-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHFKGRBol2nfxwIAu9opvQ
	(envelope-from <devicetree+bounces-266711-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 20:44:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E7431162209
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 20:44:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 174D23045E15
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 19:43:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFA0030C613;
	Thu, 19 Feb 2026 19:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="COQiXQrL"
X-Original-To: devicetree@vger.kernel.org
Received: from MW6PR02CU001.outbound.protection.outlook.com (mail-westus2azon11012044.outbound.protection.outlook.com [52.101.48.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED34030BF6F;
	Thu, 19 Feb 2026 19:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.48.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771530218; cv=fail; b=KHm/JCzx2S/hsIhCCS/hLOE75wRFZXEwgJsGveCCoAPx4i3KJkxyladnwQj+abA6rA9XoRj2wM6v7TZnc6AtUGxilRvVD3nM7zzVT0AADoq57K1abB+fs3ygeDTBq10QPTuW/iY03epRR6Fp/gPPq3rJeRx5MnzjEF/rraktVfI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771530218; c=relaxed/simple;
	bh=1ZxMc9ncBbzDhwxAXDWLN7NxMjak+QSxosiKsC5wBqY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=Hlz1CdYdsxtffHhOQJ9Hpe/f4LLSZMDwndyuD2PF/jaIesqr9lObuhBqlsWcdF8NnWbyziwB6TSoThvAws0sQwDnPuly27DX8VKTBoc6njwjTmfLMXcusUyFmsz4JUCyEHisFGGaTk63zheR5GtlBFc6cW26PLma6bR82hdKkeI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=COQiXQrL; arc=fail smtp.client-ip=52.101.48.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hHrBhsSpvOKCiy/gZLOuV4lykYqG0isjjbRB2D4EReZSSmo21l7B8DKlG3kvsdNgYkLJgnc6AJvp7cWk2HxzBJBalN8SwZaTaZS5p5KglHcfJzTI3tdOpeYkKiVTNDKQUODcYpvgoBVsQ2DyKrMcT3mA48ToUQUqRBR/6SQu5IEousdmdaPNZe/p3d+OSsmtMJ8LGwykraZ4vp4wW6PLLSmAzMBfR3Fwn1o5LKA8UAWZV4hKUnTVHHeBY1jLB41lsRjoD9YecRCUM0AEqSo/I0MxMunAOC3eqDYgXznDxO1ynLnouhG7F1KCNAJmmVSkcbvpKSYHvPG5NwY7LwrhAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/ecuPlXiFq1EoofzvRGpQlMDrz+pl33rx8PlqKlxoBc=;
 b=eYdAuxdAcA/KHUf67V3wjy5fpMxGM1bxW0Cfnt3dBVHEB9l7qmEwC+Q0LKC65tSVjg8IPX7fppWM0jG2fLgARQXxj0HJJcmP6NGo4fWG9sM/SswaGMc6OkCbkd2w5UTyOr2sGurAVpslLeWTck5SUIeg5hmXPI1ki4cBbxxw3V0Yknv5yhRYAK9VLyogku2mAmv8J/PADX/oWpz9cVrlk9xCqZMkPUFOJ9fGTrPOjGMIDMpfN8C2PEG6RlYcNWSbSnBm97W80f2YPvkYbdsTE1F5FmHewxQjFcBAxOMwkhgSEIXPbcqN8oWNWLaoLUDAfmMpRnLMvtbnS3fggP7xMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/ecuPlXiFq1EoofzvRGpQlMDrz+pl33rx8PlqKlxoBc=;
 b=COQiXQrLQ5UkAouLWt9Dd+YtDyT5U0Vziho3oDRq0kTff/3V6Me5YOqaHNXGwQoRUdAOrRJd2DXLzl/AaxzLHiawieNZG3klZdyQRVt/ScclCG+Xmc2+I8gimvI443v19y3Y4nOqxqNj/G2h4UZreFYLai46FEee7AWtJpf8yTY=
Received: from BL1PR13CA0203.namprd13.prod.outlook.com (2603:10b6:208:2be::28)
 by PH7PR10MB7849.namprd10.prod.outlook.com (2603:10b6:510:308::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.15; Thu, 19 Feb
 2026 19:43:35 +0000
Received: from BL02EPF0001A106.namprd05.prod.outlook.com
 (2603:10b6:208:2be:cafe::79) by BL1PR13CA0203.outlook.office365.com
 (2603:10b6:208:2be::28) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.16 via Frontend Transport; Thu,
 19 Feb 2026 19:43:31 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 BL02EPF0001A106.mail.protection.outlook.com (10.167.241.139) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9632.12 via Frontend Transport; Thu, 19 Feb 2026 19:43:33 +0000
Received: from DFLE201.ent.ti.com (10.64.6.59) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 19 Feb
 2026 13:43:21 -0600
Received: from DFLE200.ent.ti.com (10.64.6.58) by DFLE201.ent.ti.com
 (10.64.6.59) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Thu, 19 Feb
 2026 13:43:21 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE200.ent.ti.com
 (10.64.6.58) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Thu, 19 Feb 2026 13:43:21 -0600
Received: from [127.0.1.1] (uda0506412.dhcp.ti.com [128.247.81.19])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 61JJhLBa2638942;
	Thu, 19 Feb 2026 13:43:21 -0600
From: Kendall Willis <k-willis@ti.com>
Date: Thu, 19 Feb 2026 13:43:17 -0600
Subject: [PATCH v4 2/4] arm64: boot: dts: ti: k3-am62l-wakeup: create label
 for wkup_uart0 target-module
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260219-v6-19-wkup-uart-wakeup-v4-2-eda09dce5623@ti.com>
References: <20260219-v6-19-wkup-uart-wakeup-v4-0-eda09dce5623@ti.com>
In-Reply-To: <20260219-v6-19-wkup-uart-wakeup-v4-0-eda09dce5623@ti.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Dhruva
 Gole" <d-gole@ti.com>, Bryan Brattlof <bb@ti.com>
CC: <vishalm@ti.com>, <sebin.francis@ti.com>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Kendall Willis <k-willis@ti.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771530201; l=950;
 i=k-willis@ti.com; s=20251230; h=from:subject:message-id;
 bh=1ZxMc9ncBbzDhwxAXDWLN7NxMjak+QSxosiKsC5wBqY=;
 b=e5fo+/9BaTw4pCYCEOrqVr0kupNVeUnnD1iJ0i16B/l3I6aXtF6cKv3Lw55zN7h+5LxvsNwJ3
 gXvnCjfaW7MCiwk1a14+wsmw8dJwE3yFvKXx0JYR6FT5amRlhOiAmU2
X-Developer-Key: i=k-willis@ti.com; a=ed25519;
 pk=fQiPVFwmogfDAKdaAKq163RWSfgHZVE/MrsDzp0Xo1k=
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL02EPF0001A106:EE_|PH7PR10MB7849:EE_
X-MS-Office365-Filtering-Correlation-Id: 7cf5b21b-c3f3-4f42-0659-08de6fef2a83
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|376014|36860700013|82310400026;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?V1hBWXExSDFzaTdtQVVOM05oRUkycC9JQWt0WVFjZWZtbmRMOHEvSlcwMlFz?=
 =?utf-8?B?VE5KZkRySnJGMUNBTWEza0FuR1lRbU9aczZGbWFCT2hVaXYreXd4c013WTFz?=
 =?utf-8?B?aU5kN29MdEhGN0MyK3lXaVVsdzlEbFMzbkk3d2dEdkkyQzI2YUszeHVvelJw?=
 =?utf-8?B?TzdKMkZJejdocVFmaU0rSlIyUHNJOU9XdjVRc0pibGY1NklHNzBTM3VmcW5y?=
 =?utf-8?B?dmR6M2pUWHhhb2JuUml5bDBqaEU1dVpxUzZ1RmVjTFA1ekEvQUpkd0Fjczdk?=
 =?utf-8?B?d2xuY3Q1ZHVqTzMwZkRiR3N6akcvQyttZ2RJOWF5VGlMSURSU0RPcTlPdkN6?=
 =?utf-8?B?UXVzdVF2RlpOL3pFMGxqbmtNWHQvQTMzOHp5bnVpNmNhZExHeERsMXBNVzN1?=
 =?utf-8?B?NVVpY3hVWFcvQXZjanR5ZmxHa3lRYmhNeVJpSnM5TldiaVRyTjNLQ0huSW9Y?=
 =?utf-8?B?RVU2S1UrU0orUEt3NVhURjM2Ym5tRDBtUS90ZHBXQ0Eza0tGdHRXbS9KNlpP?=
 =?utf-8?B?WFFsbFNiblR2aFFDSDVGUlFlaHNxbzdUSnZWdVFVWnByVWo2eUxKSDEzS0Qx?=
 =?utf-8?B?cjBNQmF0UzNjeDV5bTROSkp6aTd6VVEybE1ueFhHRjVDeWQxMFUvaFc2WWV1?=
 =?utf-8?B?SEJXby82d0NXTnJkWG9yNVV4RitlMmNJNE9mcUdjcXFlYUhHRXlDVUg0UThr?=
 =?utf-8?B?djZDRUZxcFQ3Vkg3TGtaT2x1N2pWZ2EyWmpkbmlWOFZ4YnRXN2FsTU1NYXFo?=
 =?utf-8?B?UUZ1K3lqMnlRbkx1eGUzZFhONldScTR5aGFBMG1yVzVZMi9QN1J5RnJRTnFm?=
 =?utf-8?B?bXFlOWRDcUVVZWdxTEovNVJnckM0WVZLZElJdDVTaVhlQnJSOUlISFV2NDY2?=
 =?utf-8?B?WklidHJ4MDhkcHpXaGFpRG5ZRUpidy9uZTBsT3g0ZjlwZnNLczI1UjA3RWVa?=
 =?utf-8?B?N2NOdG0zeXdjaUovenBVR2xCa1BFeGxjSE0waEJteFBDNlBpaHNQZzRDd1hD?=
 =?utf-8?B?eittd3JIV092dTZuWEtwdytVeFpvUW9PcngvYWh3V1VVR1hlcmJEWENwWTJV?=
 =?utf-8?B?SldSa1AzYTRmVWYyOWJGTy9LM2dpUnpzdU1DMHZqR0oxMGRzZHR3clMrVmNr?=
 =?utf-8?B?dXlFVnQ1VkpVeXgzT3poaEhDTXJqaVR1dDVuY1ppWVlwOStJbGU1WnhOanZD?=
 =?utf-8?B?VFMzeXA5Y1pYY1F5cUNNZ3dyVTQzSm5Hd3lIOVF6aXpjZVFmVERISDAwVnR4?=
 =?utf-8?B?cHFKUHI0OTREZ3pQVDZpb2V5SDBoRHRtWnV3YzZIVzRLamNVZUFWQm9QZXJU?=
 =?utf-8?B?U0pwZ2QxL1NGVU9LWHQwaGlXUzJGQ2pBL09Rbnp4SHYyaCtnWmxuNFJEdkdn?=
 =?utf-8?B?ZzZjVmg5NzVJZmJ0eGFkY3ZPVXNKY0NDRHBxN1JFRVl5VGVGUmxYWi9CN2E0?=
 =?utf-8?B?eG9HR29iL2cxKytncHhTOEt6d2RUL1BpbWVYVjlGVXk0R2Y1YTVBSkxSWmts?=
 =?utf-8?B?M3dmRUZTeloxMmFEY0dxRHk0OVN1amwzQ1l6T3JKMGRYM3Q4dkZlS25DRkpr?=
 =?utf-8?B?WVFRUTFCOFpaM0NFNERJSk83Wlp2di91MFZnWXlPQXdoY1FubHRFVy9oZlBS?=
 =?utf-8?B?b2JNejNoQ0xPQ1NiTS9FRjNBSlh1YnZnQlVpTm9rQlkxa1kxRU5JVEdQWGJ4?=
 =?utf-8?B?QUpLanlraTc0NmM5dlQxK09QS29Ma1dPZkxzekRZV2swWHhlc2FMaGpmTUpT?=
 =?utf-8?B?N3VVN000azlzbjh3LzBnYS9wbXJhUFpoVDRweE95dy9FM1ZVd3JMQkVTYWNT?=
 =?utf-8?B?VnpyemxZOVlnK2RkNWxOTjNHcFdrU2JMSGo5QUFOU00rS29lWkJVVTJoYVk2?=
 =?utf-8?B?N3llN1JTRnVTSVAzQ3VaZlYzNWt1aGVJd1V4MEFabUlnRmU0TVFtLytwOEtw?=
 =?utf-8?B?bUlsMGE5WXhtOGgwc2lSU0luNGdqanlCc2FCc0x3T3JBM3FtMlVNSVBOaU5v?=
 =?utf-8?B?elR3SEwxc1RIR2JQU3ppSUtWR2lYUC8wL3JveXZaVTMyZTVxYW8vbmVsY0ls?=
 =?utf-8?B?cGNqbjdwVXR3bDNncmtEYkpGMVVRaXV2cjJldEtuUEUybzhFY1h6MERSOWpD?=
 =?utf-8?B?c2ZreFNzdXpxaU5yajhEdFkwbGpvZTkyR0FQYnoxV2gveWhCUGZidFFocHdB?=
 =?utf-8?B?YTlOZ2tXa2lQclF6c2dIL29ERnFkTHRLM21QRmZxdDYzRkhhakIralEyN0tM?=
 =?utf-8?B?MEF2a0RmT2xxNEZpT1hOU0V2Ykl3PT0=?=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(1800799024)(376014)(36860700013)(82310400026);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	hoDCi+EVXN4ewAk8U+Xin5t23sLKtHrbBLH7XYnRGxly94XDt8L99CG71/PWj5vk46B3mybM/LTq5CpKviOzTRMTF2QlW7imn8jZKoGC2oIBMp3GWyPHk4oogG9Iau/nnPCHa+z9GsDavlhe4z7JnaZor/YVEzIMv/LsXK1a1H0rixybF0nOBpTFnjqs/vgMYHEPl5umcnJaaC9Qt1xksiZFW9DgWDLfaXZrxwQEF7yXmsKAHbI3RcRjMaa0lne+4Kpt5WyNgPhORKkUWXafQzajiVW7Hs+vLzrsoQMPNnBpYGG1GasH7Z9Cyo1jkL2Q3pTO95F1qTOVULQCW1TFL+KhN1AqA30jwzirtkzVyb7I08ApEKerpkZ33J+Y/qWy0L75/u1lbrVW+NNy8yrXJL9wUi2ZeQkMJaqksv81Mx2lgqTmqLI0d+6xcm2pd9xS
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2026 19:43:33.3166
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cf5b21b-c3f3-4f42-0659-08de6fef2a83
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	BL02EPF0001A106.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB7849
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266711-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,2b300050:email,2b200000:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[k-willis@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: E7431162209
X-Rspamd-Action: no action

Add label to the target-module node so that it can easily be referenced.
The node specifically configures the SYSCONFIG related registers for WKUP
UART.

Reviewed-by: Dhruva Gole <d-gole@ti.com>
Signed-off-by: Kendall Willis <k-willis@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi
index 61bfcdcfc66ea8d802a36ed43cd01fbbf3decc70..6e87c3297404f1e2925141d747fcced3cee86564 100644
--- a/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62l-wakeup.dtsi
@@ -81,7 +81,7 @@ wkup_i2c0: i2c@2b200000 {
 		status = "disabled";
 	};
 
-	target-module@2b300050 {
+	wkup_uart0_target: target-module@2b300050 {
 		compatible = "ti,sysc-omap2", "ti,sysc";
 		reg = <0x00 0x2b300050 0x00 0x4>,
 		      <0x00 0x2b300054 0x00 0x4>,

-- 
2.34.1


