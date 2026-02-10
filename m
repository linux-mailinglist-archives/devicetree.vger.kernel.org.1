Return-Path: <devicetree+bounces-264555-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uPkGKU/Ai2l6aQAAu9opvQ
	(envelope-from <devicetree+bounces-264555-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 00:33:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F28120068
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 00:33:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7BDD13008D5B
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 23:33:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25C6332694A;
	Tue, 10 Feb 2026 23:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b="ny3oFT4B"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11021096.outbound.protection.outlook.com [52.101.70.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A751D2D8767;
	Tue, 10 Feb 2026 23:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.70.96
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770766414; cv=fail; b=mFiDhZ6z/0rVYPTZzddCLLJSk+CM4nhk+Cmgiva0B0+REuD7/tV97uD3WDyUH35Ky5PtXiQX6xpOWyWVCg+7tqgsmUZSg5Ez+o4oqPU9xlrwpFmn+gTCLnHAB+Nrn2hE2HRsuwpdKB1HJbh8D77wxMKjRAa7zq23V+e06KU1P9U=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770766414; c=relaxed/simple;
	bh=PzAEtVC1OAN+ZsbmD15x5iHLCTZxgoR9+x01WEeARqs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=cAaIT8Tn0gC1UJxe/XQfjEdLBd3fgjzp0y91TDnTh5A8iEG/TCFiOHns2e81RPO+VlvbSKNC0nJSHY0FYIYVmzcFHz4XEvIRxiJjdKZFZaT7KzcpxqVHxLCYXNRSuuU16hhyfDsuMLF0ZwvDg6f/ydL4UZMGXtG5mu8/6BvV8Oo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu; spf=pass smtp.mailfrom=genexis.eu; dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b=ny3oFT4B; arc=fail smtp.client-ip=52.101.70.96
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=genexis.eu
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Blz8oYxZepaa3lIOCGxG7kVtFAXIrAOg8TlUosqy4fN+IPcoQNsNfibcPlbq6sn6q7HiVMl1o0BagU6BUuup7DDRA6Cha0jbRD209wOsoHhoRK/FQ0aE0Icem0i7bzDyjDgriSjzyHEZWCEFsx2XCVDsyb1VTO73X0JTpk3gPDReP7XxJqbTV18JtFiLnwsCcqq4GNEdg+Ty+AZ+8WILe0zFWsP3NofV5Yad/ugrZaHZrs+8ftC6Msx9lYxruFcR2mVsStN76DZXc9YDOS2/CDVwwihHi0TkiKHKcyNav7O7Q7q3+BdHSq3TRp8tUxpZOSbQf3bQPRUJ0ikyE1ZVqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LcjwgzJuu4GKdW6MOzMtH4k6Gjp8Fj9ec0RGvqyijPg=;
 b=ZDUdJFfyXK0jGETDEuVNj7Ziri/BsOdQcwHqfbVLIMxoQ84Hj1928UP7BYDZh2Cap22H0LOMw/OtxwOhG6ubt/8RU4HaEIsIqDLFFFPU9Hdn2IIaGRlANrwVxck28eikBNF6THYvTkH5s5yXlB6P8oSN89Bb6e+/kg1+PQUsWn34Bd/lh8RTaPsS5K1Cxs9ai1mUvGxPlwOP7lrt1MaUqWfJ5YktVCXSKelKnULZOEqb2LX58H6BcjoonoiiPAYWHEuDnRmwQ/yGf7jEKLzat6qGAmRdtIClzXKnz35loi3NXYXbiTsQbUsrHc/HTDVvsAbIgqLkXL4qvAdgf1h9GQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=genexis.eu; dmarc=pass action=none header.from=iopsys.eu;
 dkim=pass header.d=iopsys.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iopsys.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LcjwgzJuu4GKdW6MOzMtH4k6Gjp8Fj9ec0RGvqyijPg=;
 b=ny3oFT4BS6i05AmnFJNfz2jVRbxdgBnlAvK2qAjQ/5iVUz4fYo1xzBsAp27ZAt4mMBWDqVsbILXQkcDTeRuB+QVYnsTUVDT16KDMOyboNCZXS7ob6MINePr3JupmDCSdK9xHwoRMxwMzeOjTBOdgsiQSUsD/yj3IfaEErLUqr/7Be4x/RObVLpqFxYdphNm0NPXJYk3HifBiKS/VSGrNQz0/jDcnnFSYRbddwu4YQicqoMibViS+I1ulwCk846kUcFLjt22XjI2u0ez698rPlfRHKjp50y5MfNdoE0OmwYJoeeR9sDVNzf4pEUOo2h8qUmzr+mACwQCGtK3labSaDA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iopsys.eu;
Received: from DU2PR08MB10037.eurprd08.prod.outlook.com (2603:10a6:10:49a::20)
 by GV1PR08MB7313.eurprd08.prod.outlook.com (2603:10a6:150:1c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Tue, 10 Feb
 2026 23:33:28 +0000
Received: from DU2PR08MB10037.eurprd08.prod.outlook.com
 ([fe80::3c7:6d2e:8afe:e4dc]) by DU2PR08MB10037.eurprd08.prod.outlook.com
 ([fe80::3c7:6d2e:8afe:e4dc%4]) with mapi id 15.20.9587.010; Tue, 10 Feb 2026
 23:33:28 +0000
From: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
Subject: [PATCH RESEND v3 1/2] ARM: dts: airoha: en7523: add node to support spinand flashes
Date: Wed, 11 Feb 2026 02:33:11 +0300
Message-ID: <20260210233312.199766-2-mikhail.kshevetskiy@iopsys.eu>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260210233312.199766-1-mikhail.kshevetskiy@iopsys.eu>
References: <20260210233312.199766-1-mikhail.kshevetskiy@iopsys.eu>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MI1P293CA0016.ITAP293.PROD.OUTLOOK.COM (2603:10a6:290:3::8)
 To DU2PR08MB10037.eurprd08.prod.outlook.com (2603:10a6:10:49a::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR08MB10037:EE_|GV1PR08MB7313:EE_
X-MS-Office365-Filtering-Correlation-Id: 869c518c-d0ed-4d88-8254-08de68fccad1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|52116014|376014|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?HBUGD36hh6dP/DIJtylmuf1RyfnmOqskxv7XXazPexSqfzDdyfazfvJisIrZ?=
 =?us-ascii?Q?OlFidN59NEIPbtH+iOe0LelGQGXAnWpOAQuzMist15buNOmpiKWSUZIZhLnE?=
 =?us-ascii?Q?W1EtV587dqg1X5EoRfAIEp31qkBUVMUPLCQ3PJdLw/tm9cIif4lRYuX/i/XM?=
 =?us-ascii?Q?XBgZRhmbp8RHouER0sZRhp/68itTI2u9m9M4Lw/XvXQiZxpDPYIvqVsrZ0kH?=
 =?us-ascii?Q?AwYNoVZOCnxYNVDf+A9eUbbjbaNvNfYvPdhTyZkCVdP6e+I4y2RiX0MsV10Y?=
 =?us-ascii?Q?+SPcLFpLxgxsh6Q7bF9UlZFhskl6+ODZAa6N87+t2GF3mkHkKg80jIai5c7r?=
 =?us-ascii?Q?EvBeind45xw39o37GL/tMkJw4uqZ6T3JVRWudFI7pHpDI79LJo+sPDOoQREw?=
 =?us-ascii?Q?FscF2OiA/a6x0wxMie622DxM04dkiQGcgW0pFUhtkRIBdgmm2ShnEgyA/A3l?=
 =?us-ascii?Q?HnFo5v0hSv/L8yzJwLL4jTDBJq9VCWGO5IH7X9H/rHtRShxAa2joKgmqyziO?=
 =?us-ascii?Q?wVRTK6LXbDSBf1NITKk8NKLUc13HmHZVmDOboTdznGghULm8T5rFUtQ7PBOj?=
 =?us-ascii?Q?ryVxGRU1vQfjQZ8ERYZIIzJhj1NYQ/ILkLuxrKJyslNRfgmkwo+FV69Y6bU7?=
 =?us-ascii?Q?8POXCRAUZlv8+CJISE5FVYp6NIVTdMch48NAadJU6xD/9iItHMp7+ZcPwCFb?=
 =?us-ascii?Q?3J0CGtntkJU/Md6D+PdNHezEcgohvC3SN2/5AJsgWBsD/SWA+xDLpiCsgn/S?=
 =?us-ascii?Q?k+G1lrrDWy3Oa28hR/0UXo30habp0dNLbARVVvI9tcX91pRLIRqgBWUeXUHp?=
 =?us-ascii?Q?ZdzwGMoTQAtPY/PLQJzh6JFeum+24F3ttWLUrg5ThwoY69+AjPLKPBWwOZJr?=
 =?us-ascii?Q?76Ixa7rEABTyNTTkm5HyD4MRvzw1q1b4SD2WiODijTJfKT1deF9nkO/Smv4X?=
 =?us-ascii?Q?jhXIy08hDByMjz/omyZaI/+IVWS5Xe3VcxPhSo6z+eYsfytNSmKrNgRes89e?=
 =?us-ascii?Q?hwn9K6wpdhGG1nQ2N1w4dGnd9ItB+6vuIe64exJluh9Lo2QHgKPvkw1Is7vz?=
 =?us-ascii?Q?wq322tkLyLPUracoWeZlykZP4nq51KbGvIb3kyqD+rpb6jXmx8nE13dzpYlb?=
 =?us-ascii?Q?4Z3kjMe6A7W4rfbQ0L3c9E0fLNVqQV0rNCP2pTpcjvA3RopeVwHQ4yN6miuP?=
 =?us-ascii?Q?B+RTNGyCLgayTcFfLHJLruhs8HeTeJ1s7ugENRMdRci/7NpGnFLxx+B8CKFq?=
 =?us-ascii?Q?pNAtdJXREKYAgZqOEFaLn1QQPc8ldyWUadCkPDhsARkUl6obthRif2/WI7rd?=
 =?us-ascii?Q?0r7yahXAo9xuhYPUCwxs0W+F9YV9hbRMjtWW7VRzEyZjgcfLR0om884PKpP3?=
 =?us-ascii?Q?vO+k1OXCDeEKyFp8YbCd8Q1l37q400X5V+eWC+vXyogfAQ56oJ/HS45MexQ3?=
 =?us-ascii?Q?ev+r8g5NZ3znhpePfymkSCan0Iz7jb2bLHnsjvDxy1j/N1jrQcChaxbq5N7H?=
 =?us-ascii?Q?8TN4dGyjUI1rW8NUePZrkABaco3AJJkcnvLOZ4wBqV3nNofnhtb/7gGZazaE?=
 =?us-ascii?Q?kAnZJzgCMh7/tm5abu+Vpn2YO3wfbI7xQq4pZCiSh1tVd0273nRTDnZtGp2k?=
 =?us-ascii?Q?p2KATZWinUe3lXIH4un3xsk=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR08MB10037.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(52116014)(376014)(1800799024)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?42iBZe5iEBW3w7EOAxqg6x3slGI04hPK5P0i0sHPnBpz1DhPK2ci8168/DB4?=
 =?us-ascii?Q?FQPoeRjrt4WMPqucO5gkiZONMVHDy8kx91/EiL3eZnVTg7XS1RtuSuO29J7w?=
 =?us-ascii?Q?mjOHCkbcbC3uu1j/5BMJg3wVARJh3316JH2U9qq+thC+ggt0Pw1GmsM0Zu7a?=
 =?us-ascii?Q?PslLsEm73IEc7m+aJaM7CVlD62nQtQXADAHpUzWghVlnchPISyZJ+IGh/WII?=
 =?us-ascii?Q?aS0fJG9fpUorcGsSxJpqbw1Rp0fHAxxi5juGadn8FmE4Qc8SWt+XM9Dlb1un?=
 =?us-ascii?Q?9OmphNzFJhhs7R7Ofb1xy11KYFFIUPDqFBNYi8l4HuOhrfpxN5ZiBSqta6IU?=
 =?us-ascii?Q?H87MlDL92blbbuOsUABG83HrkTHbjPnVxEiBXOmwIT6P7MXCDt2A1eiT1Oj5?=
 =?us-ascii?Q?gxo0Z8OUXJsi+kQNoueTcR61/qdRvjjXYKvwDA/bz8CIJs20Wzqdzz4+ETEA?=
 =?us-ascii?Q?5yMXBV7+x3/lHPjiiId/rtfObG2emw4WvepazfBwx7q851JjiOd6CdiVkBb8?=
 =?us-ascii?Q?/HXHnUNHWOwKTss1TbEBxl96zPDAs7gbzAMNRRIqQHJeRjpE2Cl8juBpsj6p?=
 =?us-ascii?Q?6ks3Y5msDrZ8YiU9XFHp7NzkeQKCD/aejptAUX445b1cwG0bNerbWey6nbcx?=
 =?us-ascii?Q?+WUKjSNU9Aoed2X60SBCSoQX0zfNp6+JYdZ1bjG8o6CQplVEFk/c+r1G4JTp?=
 =?us-ascii?Q?yB86VnOudCTgUgUiJWgK1YF5tUm0fEP7kQqqjEIWf0jP4e6I3VeLWd3GXNOi?=
 =?us-ascii?Q?vBXBLJofL/AcOhE9EoMd3PG2bPBE6q8TRwpWD3O9a3XfSe5MFmF6IgosCF/I?=
 =?us-ascii?Q?QYhyW/3cwZQgISX24sMa/otlNGv4CW1+e6Kdn866IIcZESZhY62bm1niAUmW?=
 =?us-ascii?Q?V2hg/Xc/N7flK2r0KR5En9QXcH2qdSNwxI0b5YgmFMXQmRTqr6P9DCcaZabH?=
 =?us-ascii?Q?oIO7CykEI+tX6jKThe3B0PUd8dzcDSyg/BA5TsdJMb8z0xQt7UDclc54ygJt?=
 =?us-ascii?Q?27Ofm20X9U6mlDPJI0qhJIjECtYgQSrMETRjarNrqEN3g5BwFNsxn7IbzapK?=
 =?us-ascii?Q?D7sCmIQhSa/Cly4Hve1FSm27W620d7r46ouuFI4u43erZVQblFAHP8m8kTb2?=
 =?us-ascii?Q?/OBZma+YOGCePDLKifQhR4t2zjMT5drrit7VCtpZT8ZwBXMzWrVdCas5OahA?=
 =?us-ascii?Q?GhwmzEjmZTRbXqodS+vgJpz/LCzHCxMNgmSyjRqwUgsgjTOR/ntBlVZX9+EO?=
 =?us-ascii?Q?OVXEwVA/yk3/SShQA5S9AJI3pjHUlA26vhFvXbnk0k8BN0RXeriC9hby7LWZ?=
 =?us-ascii?Q?gp5k0Wv/f+GOWZSUBrdxrrYPu46ADuIYyznl10nzjRGNamOFU0QnL8PRpAkt?=
 =?us-ascii?Q?BKkB3iYBVX/MMw3xliThuD2e78WQm65275Ofls6GzJb9axIprUu0WjqcB+Zw?=
 =?us-ascii?Q?OV+3pTaPgU1ADidOqLxFcfA7F9WQXlZfxFDwYKt2YczYfI8QCVjLUnwvND80?=
 =?us-ascii?Q?KbZcOyZL2MzP+d7WQxCDrN+rWWYadn5vHwD/ms/pZi6zY9X9egzIHQu1hfCb?=
 =?us-ascii?Q?9Fp5FSm5AS4894/y6dcq2WbpmJ48sJGGuBW36s9qdU8lYs7w7RSP3zHJ78p7?=
 =?us-ascii?Q?x3Zycd2SZgvA1wG7x9UbpWXazoWoICYC70zCJR5oNOMtkYDnFqX4T01udz1d?=
 =?us-ascii?Q?2hErefRwp98eQDgkaf8NsSbbfKCITrWYUmq/OlW/Oz1ME1atFwPYvEU13cVL?=
 =?us-ascii?Q?2NL1fusAfW5yPUuXlfjA8PQDWlxiyWk=3D?=
X-OriginatorOrg: iopsys.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 869c518c-d0ed-4d88-8254-08de68fccad1
X-MS-Exchange-CrossTenant-AuthSource: DU2PR08MB10037.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2026 23:33:28.0039
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8d891be1-7bce-4216-9a99-bee9de02ba58
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U692f03vlDA/eIY5R5MVOHYVFpf2Hcb37Zi8sVhl01SHy/jwH2Faw3v2T4V8VNoQAB3gl1z31ZkXFdxbfcsyuoK5KwhqEf8cRIJIL5K7Gj4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB7313
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[iopsys.eu,reject];
	R_DKIM_ALLOW(-0.20)[iopsys.eu:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,kernel.org,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264555-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mikhail.kshevetskiy@iopsys.eu,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[iopsys.eu:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,0.0.0.0:email]
X-Rspamd-Queue-Id: 21F28120068
X-Rspamd-Action: no action

Add SNAND node to enable support of attached SPI-NAND on the EN7523 SoC.

Signed-off-by: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm/boot/dts/airoha/en7523.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/airoha/en7523.dtsi b/arch/arm/boot/dts/airoha/en7523.dtsi
index b523a868c4ad..31191b8d1430 100644
--- a/arch/arm/boot/dts/airoha/en7523.dtsi
+++ b/arch/arm/boot/dts/airoha/en7523.dtsi
@@ -203,4 +203,24 @@ pcie_intc1: interrupt-controller {
 			#interrupt-cells = <1>;
 		};
 	};
+
+	spi_ctrl: spi@1fa10000 {
+		compatible = "airoha,en7523-snand", "airoha,en7581-snand";
+		reg = <0x1fa10000 0x140>,
+		      <0x1fa11000 0x160>;
+
+		clocks = <&scu EN7523_CLK_SPI>;
+		clock-names = "spi";
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		nand: nand@0 {
+			compatible = "spi-nand";
+			reg = <0>;
+			spi-max-frequency = <50000000>;
+			spi-tx-bus-width = <1>;
+			spi-rx-bus-width = <2>;
+		};
+	};
 };
-- 
2.51.0


