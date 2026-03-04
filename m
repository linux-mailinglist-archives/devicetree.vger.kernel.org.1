Return-Path: <devicetree+bounces-270997-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJnPLRIZqGkVoAAAu9opvQ
	(envelope-from <devicetree+bounces-270997-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:35:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C941FF149
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:35:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9656C30C5979
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 11:34:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6695134C806;
	Wed,  4 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b="eC1FyJUg"
X-Original-To: devicetree@vger.kernel.org
Received: from MRWPR03CU001.outbound.protection.outlook.com (mail-francesouthazon11011051.outbound.protection.outlook.com [40.107.130.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43153542D8;
	Wed,  4 Mar 2026 11:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.130.51
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772624093; cv=fail; b=pJlXt+Z78xm8GOSscoF/Rry40VPMu4dYeTl3J2ORJXrhGF20fqOF1IJOfVwwxkqXODoM71wZX+PkxwnvRn1s2bxMtfqY3+Fpsc/lS+6AjFCaq3xrdLkYkP2goJmiTcUtLN58OJaivX7QBOQN91+4/kU2ZH1nsJ+PoFD1A07kMVU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772624093; c=relaxed/simple;
	bh=xdKnbX/USz/50VxM3bQS8xJotg78rpvnjETnVvMEKHA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=KNQ0X0dzLYXShUzyxbA7AT3JaQx7hvrfCl5uyhf6Cqu6XuqaxJD0vAOYkh4vZu70cD45ahsNHd5gRhEvRj0kSyJnEVOX1r7TMeGeLneM33/dez3UkCeIlc9BC4hdVS9QhtitaIk2eO0ECTDVYSoSSkFkJJZlnG2cZ67yPOKu3A0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=eC1FyJUg; arc=fail smtp.client-ip=40.107.130.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xktP9cl5J0XXg1e1KeWhc+71zvmCtMQPYGtVxTzxpcFC2lxQuvetmMYjb1W4EsJOKQDQWpP72i8BaYqRYhZ/I4w60kg4tK5OTXOiCkVkDbUzdMm34CPVQkqrmfTVSaJXuooARK5ui9SOpH6y2P+vpPDNnnaQbteiN5CIJ88S8wF3u/s/bKestqKP737nRxpTqjXDqQv1k/9df48owPmsskRFkdjtQ3ZQNx4wfCpK4QJ/0omawUJpwGs9jZSS5icjsADMFNVBOSk9yFQbr2XjOJ+8Yd0C3JIUB3tAEjfJ1Ud8zNpi//JeFUnz/2SbEta07ioT95VVnktt1zQo+RBsMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bkkMlRHRMa0R1vMZ0wcCMT9hJOHlKA1WbEGTSAhUed4=;
 b=GoirUmK/+gzaCRyyY8sfIN1/fgj8JDr8ytCsQpMUJallhxAWrHajPmlWhOUai0QkcLbXLj6k+8U8mylgDzFGhJk2rU5JzAg1mq53md9KOfhG6ctXmeDD765q5mAevSeJSjgW4VGAZkRiyG3bhx4qG3UueIIjhEz0o14tT3O+knhmI2e0zZR8e4IYuXgjmdFHtVng/X531ApFJr/RVKToAPiIhMCHee+XKEuWD6ReN63jmmcclCct+rHr4LylgiSVUreomEUjaor4TSAvXW2AUIDwsNW0KG2DRx9QBHGuQftW+MAbHmQIn4IbbyyIQolfq8cRjngUH5OtWPq/0wa72g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bkkMlRHRMa0R1vMZ0wcCMT9hJOHlKA1WbEGTSAhUed4=;
 b=eC1FyJUgiaZBYITC/PaNm+PiXGh+yw8ymm43rIu26N/W5UzvhfF2jPKpvi9sh3GCcT2/fvW6yUK9OjmsqoJRJjCuD4gjig/L/WTgngvhmdDjayeqgJrhJKlgQrvsLHNwTCmYR2i0wRVYRkJipazFj5UpbEog7tJZVJ33InX0oPn+lF9PlTPIsTXSry1AOht/COlrlx5XA15k0ndqeG5L4ZjPBE116PanuGGj2+NKIRYzfo8bfZcXjeNGsI/A3cFoU1hMmXlFSCMIICMjRQOSRQ69oLsj3ctpKhOi40aFZJDJIf3f8DnE/CgFSZTa4tB6ezyCD1VA6KQLQxJgWkknuw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from GV1PR04MB9135.eurprd04.prod.outlook.com (2603:10a6:150:26::19)
 by AM0PR04MB7188.eurprd04.prod.outlook.com (2603:10a6:208:192::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Wed, 4 Mar
 2026 11:34:46 +0000
Received: from GV1PR04MB9135.eurprd04.prod.outlook.com
 ([fe80::3826:2706:1e81:c9e2]) by GV1PR04MB9135.eurprd04.prod.outlook.com
 ([fe80::3826:2706:1e81:c9e2%5]) with mapi id 15.20.9654.022; Wed, 4 Mar 2026
 11:34:46 +0000
From: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
To: imx@lists.linux.dev,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Vasut <marex@denx.de>
Cc: dri-devel@lists.freedesktop.org,
	Frank Li <Frank.Li@nxp.com>,
	Ying Liu <victor.liu@nxp.com>,
	Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v8 1/9] dt-bindings: display: fsl,ldb: Add i.MX94 LDB
Date: Wed,  4 Mar 2026 11:34:10 +0000
Message-ID: <20260304-dcif-upstreaming-v8-1-bec5c047edd4@oss.nxp.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260304-dcif-upstreaming-v8-0-bec5c047edd4@oss.nxp.com>
References: <20260304-dcif-upstreaming-v8-0-bec5c047edd4@oss.nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: AS4P190CA0014.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:20b:5de::18) To GV1PR04MB9135.eurprd04.prod.outlook.com
 (2603:10a6:150:26::19)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GV1PR04MB9135:EE_|AM0PR04MB7188:EE_
X-MS-Office365-Filtering-Correlation-Id: 882d20a8-a457-4b18-ac8d-08de79e209ad
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
 BCL:0;ARA:13230040|1800799024|19092799006|366016|376014|7416014|921020;
X-Microsoft-Antispam-Message-Info:
 spyGv88X4MkbLr8Jaaa59NCb4tWm/R88ACd7kUlLSKg20zmdcH9mBNDhSw1bgc/4gX4wxhft9SOa65IzumkdmKQ4p4MGrQJBwyOBAbRFrbJW/yOh/tkcyNzPxxFH+wMq792+KN00vC6DyF3KvedHTr3NXxpOGvnLmOhGnkqSnQo6t1O20wvpI6DX0wOKX7I6CtXKdkFbNWpmPjD7M0qha8SB//0JgGI4WO9ryk7/BterNEpu6bpx8qAkJ6CyZ255boS9in7gGLB41+3LOSOxa+0cRrAKCna4YNXbV5O731VyVmGN6S2wKy+mVa3zH/Y52YihO4Rwvxl2Qnwvae7wSZuZfXs5ERDlPYGRgwBT1g7TXjS1HmIjRNdxau4CTwE7UBt6jJ34JxSR+JN06GNcFaO5lyGivErSf+VjGGOtTp7gUEPUdH/Fu6EjK0s/4wi4t2RBIQ8Y3aKtDXS6cO6JEkc7iBo5dy155SXjrk9MTN80LnzhcFpL4n4CW6dZSPkAEafeQvEnj3m0YKhspjwrcqgk0SToAbalbuY/sBlvDsfGrOX2QBpkI2JRG9GVygz9VWuayYrHJxh56a8d+P5kwxfAesxNXjl54d7IsUI6q6s+PAJw+tp1Exty21LiJtwHMTnszlcg25u95k3c3ktg8A8IWdqDSNpjYgwM/UDcTcy2OrAoN2jvpTwlisRsERtVKThHojRwRM8I4gYR+o79QYuVsMak84PX3WoNdjyklddjd2Z7iqCMIIkXxVyPiNLwidkH0Ycq/POz60l+NHhsHA==
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV1PR04MB9135.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(366016)(376014)(7416014)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?TGRjMmdIMXNUUDU0b2g3SFA5ZFhOYkc3aytKU1Q1bUtsc0lZUmRBR1dYNmNn?=
 =?utf-8?B?RW1tYUlJSlluQzkvQ1NlSXdRMGJkcFFNTkJUTEQzVVV4MExXb2ZSbDB1MEdO?=
 =?utf-8?B?TTQxeDhlcnRJZWFWZjNjWWkvNDdkdisrOEJZRWNYM3BWMmJhOWd0enByZzEy?=
 =?utf-8?B?UFlaTXhUNjV1bHRwZjN0UzBvek4yZC9UZjdGalQ0QStqMWlxL1JZQmJpVk1t?=
 =?utf-8?B?SU93TDV0Y0NlZE1IUlFSNEpxY1NtRjBCYVJVRWo5UWRtNlpSa1NSVzlXOERn?=
 =?utf-8?B?STRHSHV1QnNYbXNhNzB1eTIyVlFZTzZabWFvZXRKMVcxY0hTU2RORzltbW1j?=
 =?utf-8?B?dGxJbFVwOFVyQml0TFpmdEYwWWVXcFV5RlNXOVZJbG8wcjFoUzdEaUVrZnVO?=
 =?utf-8?B?YmFSTE5BYmZyZmppZ0JXK3FvT2JON1hDM0lCb3V4eDliamc2ejdjamlrck1w?=
 =?utf-8?B?T1FXeW9nZDRWb3FaYnk4bVBSOVllOHVIanJScXhocTY2ZDRFaWdIcFZ6cGRH?=
 =?utf-8?B?YWtmdm45QStkWGtPWUlhTVp2NlYyTDRIWjY2Zm5QTWlod0pEYjZqa05VeVp1?=
 =?utf-8?B?L2IvdkRmMjdaZS9NMHdoU2VUQ2NsQWF2YkxMWDlkd2ZRaFozeWkycHFxTWln?=
 =?utf-8?B?eXh6dEFJY2tOMk0xeFNuWDM1ZWkrVjQ2emEweFBlcDhwQUNvVzFLOEVOY2I3?=
 =?utf-8?B?dFlGcnlVbzNycDFNc2JxcTErd0dnVGozVG84Z213U0M1MHFHSWJZV2Q4SEhr?=
 =?utf-8?B?aUZqV0oyMWRhUE9UTng3RFkreXM1UndTNmRzb2xYMHNheGd4ODhpd0M2S1E5?=
 =?utf-8?B?UHhsUDRoV2hTUFdvajN5MnlXQ1QrS3AzWVA4SVFuVWxsOTQ2ZmFyRkVzU1U3?=
 =?utf-8?B?Wnp2dGtZdmpYM1VBWWk1c0Y1U0xCOFcvcVFjVHZXSGR6Y3gvNnpWK2dqNUZL?=
 =?utf-8?B?TGpQemFMSklkNnlpZVRzcFdBNy9Nd1ZxR0pTNm5VZWE0R05keitQMEFyMit4?=
 =?utf-8?B?VlJ3SDd1ZXoxLzhLWHF3K1dQdHRGKzFlNXc4QUdXODVzdlVUeFRWa256V0V6?=
 =?utf-8?B?WHFJZTR6MGYxM0l5NG5tUnlFNlVsLzZPNjNRRzI4UFM0YlA4eWRnMy81RDZO?=
 =?utf-8?B?V0crbHFtYnN0UUQ3SGZnTGJ4Q0tPTGVSVXdObDhEV2wvdkhnVTNxRzFwY0JD?=
 =?utf-8?B?UUZsMndoYmR2NlZibWc5TU5veWhEOE5ZekRScXgrT1ZQUGR6V2dIMG5abU1o?=
 =?utf-8?B?TjV3YXFXMWYwb2RlNndoSUFtVnErNEkwVEVoRGRVODBpZHNZZ2l6bkVMQjd2?=
 =?utf-8?B?TU5aZW5GMTh6bUZPQy9nM1ZWQTVYK0wvVUxPLzYyNGJtc1NOT0VPUWJ2RXFv?=
 =?utf-8?B?RkVXM2k2aXdlRE9QSzN4aSt4Y05LdGVBK0JseEtSaVhSems5YVRxUDJHck9n?=
 =?utf-8?B?QXRwOFlDNTNiUTRIZUsxdU1TREs2ZWdDcjd1bGpxVDNBREdyTzlEeDc5ZVBV?=
 =?utf-8?B?c2xmcjhmRmE0ekFaZ1RDNWRveFJDQVlQc3N3RCtkaHh5WFpaVUh6UFROTlF5?=
 =?utf-8?B?UkFSQ2lJZlpvVWtOT3BGSy9IdEkxVVR6NU5wRVNZUm5lWlBIakVmZm1mRWZk?=
 =?utf-8?B?K01JdVUvODdvSm9reEUrK2xaTXNLcVRqYUNCVG10eVFXdzNpMFBaLzhDZkxK?=
 =?utf-8?B?NzZnZGFkSjZuZThwZVh3WnRmckxqM3djekZsV2FkZHJiOFgwamR1REtZcFYr?=
 =?utf-8?B?YlFGeVErMVlVSjNXYkFGY3YwMlRJQVkvbGEvYkJLQ05LUlFuZitMUnFzaDI3?=
 =?utf-8?B?MU1PSE1xSlljTjZjSktHT3VNY01KTjN3Sm1IeThjdzlVTmg4cXJyM2oyam1p?=
 =?utf-8?B?dTI5bkZNMUtMMWRuTlFITURWMGJlQk9FMkxCd2E4NnpqT1I2Mks3ODVTSkoz?=
 =?utf-8?B?MnJYSE5DbERPeVlrYXNTU2RuTlZKYzczVS9PaDUwSTlaK1E5QmM4UnlQYkN1?=
 =?utf-8?B?a2ZTWEpxVXBBR3YvcFc4L3RpNHRFeUdINTNveUMrczhMNVIwZ2VmNHlXOThL?=
 =?utf-8?B?eEpuNngwMzZNRzJDL2s4OHlZSFNNc2pyMEx4VnA4N0VCRnRvLzRkRU12cDYw?=
 =?utf-8?B?V2RrMXF5eCtjUlltQmpYQzFjRE9QSUhtdmRwY05HbFFabFRnbmIzRk9TMTh1?=
 =?utf-8?B?SzI1ZlFoL0N0bE8wZ0ZXVkhSaGdoTUJ1L1V3MGUvb1h6THlyclI4alpCVkRV?=
 =?utf-8?B?QklXK0F2OERmakVmVHJUa3BHQUdQWDhwVWtrZGtBVzZBWGxaREVhYkJDQU05?=
 =?utf-8?B?aHJ5U3FFTGxQbU92UXp4UlRwSlMxMmFGMGRvdStKVzlTVlg3RGpDUitoZkxX?=
 =?utf-8?Q?UVXpnzuyJ/0ZpKF0=3D?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 882d20a8-a457-4b18-ac8d-08de79e209ad
X-MS-Exchange-CrossTenant-AuthSource: GV1PR04MB9135.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2026 11:34:46.6238
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q4N9LT9NpN96dAIGYoWj/MiCL0WAgZ75CDudeYzZpni+FIKGiVLHlYiOizn5/sKBvEGELD8IFEV2maJeO3N8lQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7188
X-Rspamd-Queue-Id: 20C941FF149
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.94 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270997-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[lists.linux.dev,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,denx.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[laurentiu.palcu@oss.nxp.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.nxp.com:mid,linaro.org:email,NXP1.onmicrosoft.com:dkim]
X-Rspamd-Action: no action

i.MX94 has a single LVDS port and share similar LDB and LVDS control
registers as i.MX8MP and i.MX93.

Signed-off-by: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
index 7f380879fffdf..fb70409161fc0 100644
--- a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
@@ -20,6 +20,7 @@ properties:
       - fsl,imx6sx-ldb
       - fsl,imx8mp-ldb
       - fsl,imx93-ldb
+      - fsl,imx94-ldb
 
   clocks:
     maxItems: 1
@@ -78,6 +79,7 @@ allOf:
             enum:
               - fsl,imx6sx-ldb
               - fsl,imx93-ldb
+              - fsl,imx94-ldb
     then:
       properties:
         ports:

-- 
2.51.0

