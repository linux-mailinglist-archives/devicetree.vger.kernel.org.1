Return-Path: <devicetree+bounces-137850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2140A0AE1A
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 05:09:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A721D16527F
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 04:09:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC22F14A609;
	Mon, 13 Jan 2025 04:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b="XoF5F9+G"
X-Original-To: devicetree@vger.kernel.org
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12olkn2034.outbound.protection.outlook.com [40.92.23.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC9B14A4E7
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 04:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.92.23.34
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736741346; cv=fail; b=aCrXBV4woFogts18DsP44oyg1LUvoaq9bbE8m/ZmaQ8VrmsSjhlIy+aSQo/M2U/1IQ94H18QVQpo4vLNl5mmyUtI6bFXTk893586P3V9u7P2v8OPZvVqmatV2ORu/z4t3NrFH/mr06zOXJDJqS9KluotsPI4yw5kamk+zBhkUDU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736741346; c=relaxed/simple;
	bh=VNVSiYXrVKfCrcUMArRjpidBHjW/DABi1DNdvArcu7k=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=CJGfgV0egFyMaXB/ZP+sWw85g8yLTYSJzkJRLXoIzi6iGnnKNX0KdZk2gioty/XI8YGigOjw9ggbO1ut+DulzmteSBgliCjN0jPTQSOZUXtSVOICljgsXxzsT5xMQCtHwYbKmTpRV0AKRqdQVfn6C725RXo/hDJ/DV1eK7iTYjc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com; spf=pass smtp.mailfrom=hotmail.com; dkim=pass (2048-bit key) header.d=hotmail.com header.i=@hotmail.com header.b=XoF5F9+G; arc=fail smtp.client-ip=40.92.23.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=hotmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=hotmail.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KWh7FOcGIwCQuu9omfbcMJdPlB+u6vAJCyO6vNyl3YMvvN3PU/DNOe1LQBfBsnCRXqklJr97+krrgadybhOLSCmSftLTWqfdSQrpWfqaTKaT/q84yKcoWxJQOxcxjv6LuPhhqxfYMwn/aJb2O6j0r68epo15gdeqzG34ds77vZ9VSpS6lPs6SGRG4/oxSz5J6i8RQWhG4VEhUEs4OcTq2NlEle+0Bxn0oXkecs9kVwMng8+kDXr2JhVMlM+qybC+KbitBLd+hkyTdwS/wzTTxBezWtA0HTeEyqSuawSpp3rj4uXPpWmj+WvArKkCTiTimM7xtPlGqkgrQidAXNbvVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VNVSiYXrVKfCrcUMArRjpidBHjW/DABi1DNdvArcu7k=;
 b=Wt3iPU4zqx9UzZECbQmRR+0BfX7Nsy5vQz6HkN97/eroru73wVoy9xaQtdWtpi+iI6KJrOfRbodpiJyP3yVTtFsBiXgpQhaicPXezUF+ARSrk374BRnpqaURtNrOOSFJXNkCYrfZQRs2C7zKpQU5qRclTp4sgH6DJgRZZ9XmzoafnbLdBja+Bte0wg+n1reCHwwMFZaXcc1eA1zaurIxPr3AkY3U2m34tc2Js9CvDNowR5riy1UduCIibuCzbBx1cDt7BdD/yeUjzXeUAfJO6hM3aLYRAswu3TegG3qJS+uQVys7RzYFjLqev8xK5/Vwp3tet2PcS251Mjo+V31b4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VNVSiYXrVKfCrcUMArRjpidBHjW/DABi1DNdvArcu7k=;
 b=XoF5F9+GNbtUY5nuzEGyUQf19BJ7FOea3KGkJwldctDfzPO6p8Zf+umJDhFIPaqdq2HtEdxnQ4wYmsQP8q4GQFKz+aBYI1c9qFt1K5GeAOy9GRpnFcIx9jGt7dKOMwwRpIIzWaOfCyLyVBp8k11fjmAD4ZO58zbgr6v0P647+ueUxN86wvwKv2QwGALK/nkCJlPoQD4NZM3DLsGR1dF+nW+YtN+KMs0RGAxr0UWso+ZRKXhNib3NimEWB9oeM6IPwO2rA3U0iHBH/V3FbCdA+fGSm/C5w8ZWWngoOnIl3H/4yEOLkdmmvSyv682GrEwhvocb+7VyAcsLQ2Br9OJxsQ==
Received: from SJ2PR03MB7041.namprd03.prod.outlook.com (2603:10b6:a03:4f9::6)
 by DS0PR03MB7727.namprd03.prod.outlook.com (2603:10b6:8:1f1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 04:09:03 +0000
Received: from SJ2PR03MB7041.namprd03.prod.outlook.com
 ([fe80::9dc0:7193:8a8c:ad9f]) by SJ2PR03MB7041.namprd03.prod.outlook.com
 ([fe80::9dc0:7193:8a8c:ad9f%3]) with mapi id 15.20.8335.015; Mon, 13 Jan 2025
 04:09:03 +0000
Thread-Index: AdtlcODDBiaP9CcfD194B1cVvT/BLw==
Thread-Topic: =?utf-8?q?https=3A//orthodoxkorea=2Eorg/clergy=5Fen/?=
From: Qing Matthews <qgncm5mzk7mwa@hotmail.com>
To: <devicetree@vger.kernel.org>
Subject: =?utf-8?q?https=3A//orthodoxkorea=2Eorg/clergy=5Fen/?=
Date: Sun, 12 Jan 2025 20:09:01 -0800
Message-ID:
 <SJ2PR03MB704177D1390494CFF45F9FB7BC1F2@SJ2PR03MB7041.namprd03.prod.outlook.com>
Content-Type: text/plain; charset="utf-8"
X-Mailer: Microsoft CDO for Windows 2000
Content-Class: urn:content-classes:message
X-MimeOLE: Produced By Microsoft MimeOLE
Reply-To: mrsmiho.oshima@gmail.com
Content-Transfer-Encoding: base64
X-ClientProxiedBy: AS4P192CA0028.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:5e1::13) To SJ2PR03MB7041.namprd03.prod.outlook.com
 (2603:10b6:a03:4f9::6)
X-Microsoft-Original-Message-ID:
 <173674134192.29524.7373283812491132754@NGUYEN-LTD-OEXE4N>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ2PR03MB7041:EE_|DS0PR03MB7727:EE_
X-MS-Office365-Filtering-Correlation-Id: e61178a6-8c76-439b-ca53-08dd33880405
X-Microsoft-Antispam:
	BCL:0;ARA:14566002|5072599009|461199028|19110799003|6090799003|8060799006|9112599006|8040799003|56899033|3420499032|3430499032|1602099012|10035399004|440099028|3412199025|4302099013|16045399007;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?eHM5cXNJUVNxTkhOTS8wNU5IM1VSQkZaazBiNmM3VWNwZm5tbHJMeUExdHAz?=
 =?utf-8?B?T2dGaDF2WkEyODFLdVpycndCTGJrdThjSUFoZWNJT3NuL0Z4YjhwNUQ4c3RL?=
 =?utf-8?B?UkpUVzJCbGlXR1F1VHV1bnJyV2doZWhmUENnZlVwS3FKamk3dFNUUlEwSElX?=
 =?utf-8?B?aE51UnVMWGNNY0IrMGVJQ2pTRFkrK29LOE81THdCWHFPUVp4eGpVb1JmWGo5?=
 =?utf-8?B?MVdJR0tHWU5qQVEyMkFJdEs2eERYTitmM0RaRW9IVlFXbFduaWp2dXVvWDJF?=
 =?utf-8?B?bEZFaDhsa3BDZ2I4cHVNY2tKVk1VODR6dG1zQVppM2Q2VG5PeUpVeHNwNE5t?=
 =?utf-8?B?cmViNFZMcENid0hMR0pRYnBjc3g1UXNSYnRnU3o2dDJ3Q2ViM2JpK095d2dJ?=
 =?utf-8?B?WkU1MVhzbTU0MHQzVGtHdVlMQzhnTVNMcTRyR1RaeVBFZHNTVncreVBRRHRV?=
 =?utf-8?B?bTFHTTdEdExNVFlLM3p6TzMzbW9RN3VzUmFjc3gxU1dHTzM1Z1ZPakhocldW?=
 =?utf-8?B?SFRTQklBU3E2S2RHUjBZTEpUUFp5d25lTzJiQ3p0ODAxRkg0TzZNN1pBTzEw?=
 =?utf-8?B?bTFvbEJWeTFTbmNzUGIyOVNlWDkwdXpQdVowSkhucXFpZlFFRjFYeE5UWG9C?=
 =?utf-8?B?R2daWElBY3dJM3Z1cy9TV0JqZjVkNWRnazlUUEIvVzNTS1doZ3YwTHhZYzdD?=
 =?utf-8?B?dE1uUjl6U05QK0VqMjRPaGRYYlkzV2lKa3YvN3prQjFIS0hNclpKNi8yU0Ez?=
 =?utf-8?B?VnRVeThOMEp5ZTdzWlZpSWtOazdLdTdjeUIrZFNONzBTQkF0Vkp2c3RNSVkx?=
 =?utf-8?B?YUNPWTltUy9pdmpSamp0dDFlMklyOUV1V3ZOeXV3Y0Z0ZUNGYTlSczJmM3N1?=
 =?utf-8?B?Ykw1M2RReE9oWEM1QmdjY0QvajhOd2ZrREc0bWJLT002VVMyWDJWS25GV2lw?=
 =?utf-8?B?R1d2ZGROdVZGc01lQlpScW1CWUpyWUYxT3BBbS9oM2c0S3d6d1JReWNoV1hx?=
 =?utf-8?B?RFp2U1Ywd2ZyY3RuM0QrTnQvOS82eU5GNzlZd0Q3Sm5VRDlMQ2VlTHVwbHJQ?=
 =?utf-8?B?MDRhNnF3Q2JFR0kzbUdPakozYitmeERER0lkd25nL1NyTVlrNkpFMi9ISW1i?=
 =?utf-8?B?OU5SZUJRRVJ2cGV6SVJ4SVVlcnlXcU5uemZ2S3E1Q3VnVEQxWlJBbWNPUzdI?=
 =?utf-8?B?bXplQ3V4aTZFUWRONDB6TkpOVGY1dHhuTjdkTDM0QnZmSXI2cnNLdnFUVlQ0?=
 =?utf-8?B?eGZ0cDB0RUlqWTVmMUtVcVVPbVRLOUFEaklPUXl4UVQyczJlaFRDU1ZmM056?=
 =?utf-8?B?d0R5SGxSVFhCdjNHbGNwbWhhZUY2dnNWWERheWdRRCtTM0p5U21BZHFySU02?=
 =?utf-8?B?YmtTWDMySy92c3M5dmlxL3lsV3dCTWFnQWhmZ1VVTGF6RXMwWnorVFVhNUxy?=
 =?utf-8?B?REozUzRrYWp5OUpONUVKL1psK0lMZlJJNEpzd2JaOXhCcjNjQzVzRXoyWHMw?=
 =?utf-8?B?c3EwRTNvakFjM3U0TG9FcDBNV2ltWGFoZUU2ckxOcGltSHF6SUpFUVhGRzBE?=
 =?utf-8?B?bnF6OVV1cDNST3Zoa3pJbEQyL3l4QnJDdE9VTjdobUViZEtHWmNFR2taOGhx?=
 =?utf-8?B?VkphdGk1Y0NTVTJLYUNwL2dlbW15azBFMWNiU1Zkc3k0QWpNWlJYUG1EVVV4?=
 =?utf-8?Q?P7Sn3XB3UO3CIHZLTr4c?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NkRadlRhRXljWnhveDVNTUt6TGNtdVNxbUxpQjR2MThGN2hGRndUNnkwbGxS?=
 =?utf-8?B?cEhoUHBveStrWUdIZmdYZmN0SFVQV1hDUUx4TEZFeUN0eWpueEtHWkVwYkVs?=
 =?utf-8?B?dGgrdkVadUl6VmtZSHdHRFhZN2tZczJtaHRqTDE1RTd0SjhDOHVDVHEwaWs2?=
 =?utf-8?B?YVJNVE1STWVrL3puODZLdXhtc3oyMUl6QStwZGJKaWI2aVhCWE13VjgzcWpK?=
 =?utf-8?B?ZWdmWVM0MFBnL3JpeUJ3MURFYlZoWStLYTF2VHZPNThvT3dwUHVFaXN3SE82?=
 =?utf-8?B?ZzhDcHp2aUpHTkVTMjN5cS9Za0x4dDY3MTA0OHdET3U1YXg2TTh5bnl3U1BV?=
 =?utf-8?B?U2pKR2hxMENhZzFhYmNUeDZJZytaQ1BxUm9tSlgxODZqVE5WMEZDcXpxL3dJ?=
 =?utf-8?B?bjFqOGxTRzRpeUtQRG1lbEVZT3E1R3VjNHlmU2p4VWFsZ0MxVWVsWVptbXJp?=
 =?utf-8?B?OVc3QnJlc2dGcVlXVFpXKzhqc0pTU1JhNjNmWFgvRTdVb09EbmdhSFhtNTEw?=
 =?utf-8?B?M3ZtczFXWjBBUXJaMEk4UEpEYkFaM1RHcW9Ia1poaHUza2hBWkV1Zlh0cjM3?=
 =?utf-8?B?OEU5QUR0MUdLMVQ4akxkUSt0bHBkRGt3UTFVaW1rK2F0eDBYb3dRSzh2eXVo?=
 =?utf-8?B?YzFWTU83MWtiZjRsOW1Rc2d3V1RNdWd2V0lQMlV5ZHF4clFsV3BCK0tLNkZn?=
 =?utf-8?B?T0RwNjBIdEJUczkxNVBDSkRZUkV1ZTBRYWNPU2lWRmUyVmtrOHhDNGZ4NXBJ?=
 =?utf-8?B?RnV4NFBaTENVYlg1Z3cyNi9UcUhONFBDZStzek9wODFjNEdxUGo0V2xJSlJM?=
 =?utf-8?B?QWYra0drZUhQMGJ5c3dZME1LaVlmQUNPbHRTS2J2M29mWElwZTRZVXpEYjd2?=
 =?utf-8?B?MGdUbzdzWjFzRlVQQXYzdk5uS0lwaFh0b1I1MEpXdFhlQjJEWjl3dE1aa1VK?=
 =?utf-8?B?c25NcjZNZWladlNJLzMyWWJQSUZaS2ptakQ5eTRaZXFYSzNORm1YWjVsQWo0?=
 =?utf-8?B?ZUV3ek4xNzZKNU1PSXVyc2VTTkRxY2w0dmY1cUIwNTdKeWtvUTBpdGIvWU1W?=
 =?utf-8?B?WHJPOEt1M3ljREtzU2Fqc2lVWTkyWVFVMnNEYUtJdTRpNy9HR1pla2RuTnBF?=
 =?utf-8?B?K3JwNStvbHErMkRyZkxiNTJMdnJxREhCWThTWEQrUVoyV1hTLzJJWTNRWGdy?=
 =?utf-8?B?OTh6eGZ5UTc4QjA3cXJ2eUhWZGZKR01uTnZpcWwydXFSQllEUnlCL1AwYzAr?=
 =?utf-8?B?QTk5N3NoNWY0K2krWWxVWnVFWEhhdDFRRFg5Z1hTdUVYanYveXhQQUM2Nk5M?=
 =?utf-8?B?RUdVb0xCZmxNSWRpdnZtWUhneTRaQ0d3Z2JuclpBUnRLdnpJMkYwZVJnZGtI?=
 =?utf-8?B?N01Xa0NxSU9PWGFmL0piakhEWjVlWjIzU1JUWUd4em4zTTVUWDVoOFpadUlu?=
 =?utf-8?B?bnJoUmxhb2s5SnY5R2xxMWZSNjhTQy9OKzdTT0ozUkNZSUlSN0NWaGt5cEJT?=
 =?utf-8?B?eGpnOG5DYmVtdXhTcWRuR0JIYngwTUxSdkk4Mit3MjR5bFV5RnppVGZHTkRP?=
 =?utf-8?B?a2MzaEVnZG9VUGV0RzhsZU5nL011YlhyUTJXS3I5cDliS1ZnSjJrVXBZakNp?=
 =?utf-8?B?UHRuZ1dJUDR4d2dqdlRmZjJVaDY5Y0hBcXVLRmlnd01VYi9MV3VxV1FLVHJw?=
 =?utf-8?Q?VW1O6cdiGIrNvap8jRvl?=
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-fc925.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: e61178a6-8c76-439b-ca53-08dd33880405
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR03MB7041.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2025 04:09:03.4766
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR03MB7727

aHR0cHM6Ly93d3cubGNtcy5vcmcvcGFydG5lci1jaHVyY2gtYm9kaWVzL2x1dGhlcmFuLWNodXJj
aC1pbi1rb3JlYQpodHRwczovL3d3dy5tZXRob2Rpc3Qub3JnLnVrL2Zvci1jaHVyY2hlcy9nbG9i
YWwtcmVsYXRpb25zaGlwcy9wYXJ0bmVyLWNodXJjaGVzLWFuZC1vcmdhbmlzYXRpb25zL2dsb2Jh
bC1wYXJ0bmVycy9hc2lhLXBhY2lmaWMva29yZWEvCmh0dHBzOi8vd3d3LmxvY2FsY2h1cmNoZXMu
b3JnL2NodXJjaGVzLwpodHRwczovL3d3dy5iYXNlbC5pbnQvY291bnRyaWVzL2NvdW50cnljb250
YWN0cy90YWJpZC8xMzQyL2RlZmF1bHQuYXNweApNdWFuLCBKZW9sbGFuYW0tRG8g4oCTIERpYWtv
bmlhLVNpc3Rlcmhvb2QgaW4gS29yZWEKaHR0cDovL3d3dy5haW0ta29yZWEub3JnL2NodXJjaGVz
Lmh0bWwKaHR0cHM6Ly93d3cuc2NiYXB0aXN0Lm9yZy93cC1jb250ZW50L3VwbG9hZHMvMjAyMS8x
MS9HcmVlbnZpbGxlLUFzc29jaWF0aW9uLUV0aG5pYy1DaHVyY2hlcy5wZGYKaHR0cDovL25hYy1r
b3JlYS5vcmcvZW4vY29udGFjdC11cy8KaHR0cHM6Ly93ZWVrZGF5bWFzc2VzLm9yZy51ay9lbi9h
cmVhL3NvdXRoLWtvcmVhL2NodXJjaGVzCmh0dHBzOi8vbm9sYWNhdGhvbGljLm9yZy9oYW5tYXVt
LWtvcmVhbi1jYXRob2xpYy1jaGFwZWwKaHR0cHM6Ly9uY2twY3VzYS5vcmcvbmNrcGN1c2EvZmls
ZXMvcGRmL25ld3NsZXR0ZXIvMjAyMC8wMy8yMDIwJTIwS29yZWFuJTIwRGlyZWN0b3J5LnBkZgpo
dHRwczovL2thaXNlcnN3ZXJ0aGVyLWdlbmVyYWxrb25mZXJlbnoub3JnL2VuL21lbWJlcnMvMTYt
bXVhbi1qZW9sbGFuYW0tZG8tJUUyLWRpYWtvbmlhLXNpc3Rlcmhvb2QtaW4ta29yZWEKS29yZWFu
IENhdGhvbGljIENoYXBlbApVU0EgQ2xlcmd5IERpcmVjdG9yeQpXb3JsZCBDbGVyZ3kgRGlyZWN0
b3J5Cmh0dHBzOi8vaXBjLmNodXJjaC9jaHVyY2hlcy8KaHR0cHM6Ly93d3cubG9jYWxjaHVyY2hl
cy5vcmcvY2h1cmNoZXMvY2h1bmdqdS1jaHVuZ2NoZW9uZ2J1a2RvLXNvdXRoLWtvcmVhLwpodHRw
czovL2tvcmVhLmZhcy5oYXJ2YXJkLmVkdS9wZW9wbGUKaHR0cHM6Ly9hcmx5Yi5vcmcudWsvY29t
bXVuaXR5L3NvY2lldHktb2YtdGhlLWhvbHktY3Jvc3Mtc2hjLwpodHRwczovL3d3dy5jY2Eub3Jn
LmhrL2NvbnRlbnQvcHJlc2J5dGVyaWFuLWNodXJjaC1yZXB1YmxpYy1rb3JlYS1wcm9rCmh0dHBz
Oi8vd3d3Lm5ldW1jLm9yZy9maWxlcy9maWxlc2xpYnJhcnkvQ2xlcmd5RGlyZWN0b3J5U2VwMTUu
cGRm

