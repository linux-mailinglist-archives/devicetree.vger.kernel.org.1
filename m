Return-Path: <devicetree+bounces-257430-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLfiEnKib2mWDgAAu9opvQ
	(envelope-from <devicetree+bounces-257430-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 16:42:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D30D346703
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 16:42:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9B084729167
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 13:55:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96E7742982D;
	Tue, 20 Jan 2026 13:55:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="bEeMEUAJ"
X-Original-To: devicetree@vger.kernel.org
Received: from PH8PR06CU001.outbound.protection.outlook.com (mail-westus3azon11012040.outbound.protection.outlook.com [40.107.209.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A48691684BE;
	Tue, 20 Jan 2026 13:54:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.209.40
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768917301; cv=fail; b=fXC1+4CWGeLzl0tnZStcSA9OwMJCFCR2aqKwZCGjiB7J/5wqpRcehkSvVlO/l4QhvwIOHQnchTVT51TeZzoSnpmj9Pdcpwnt3duMagAL1iz6amgh5AYmGQUaBnrcLMw871r+R2SK3swLT0b2GuBVkrfCL20G7cU3RYWaYD44C9I=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768917301; c=relaxed/simple;
	bh=6NGSD5aIk/FDrx9BiRR91CMA4NgRzDrHu0Uew/TyqB8=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=IOuiz9/xhazImUSMIluP7M7e1tGm3O+/wjwr/joGEnGNAPAIEZRHEqf2dEGzwI6hBbxeJFj5T96v2hP4lNMAw60zruy6CSOgN29YMrRpiw805JfqkiBRthNeNkVMpXILQf1B6d+auCGIIKvQm9BX+Gc3SwgEDqA1QIl5Lhebfqw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=bEeMEUAJ; arc=fail smtp.client-ip=40.107.209.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=leoL1plrRyLxQE0DsOuO1T6Qjs7fCta+el1iFWsE+/27YTgS/BACKz8qZ0shgLrtLH6+YqC9QlcB1meUqweLvvLHYOqftu4sBytuHuFQ0b5syIvXuwObScUlHSsxyXRh1Q5jIIPE0B1cOw0Pg6j6jUW6kyNypjJNn/YfkKPkTkq3TB0DjNApHCh/kUFgH93HPByXzCMsqPd6IATcWkPlmySPf1u11mYYIvI7vBnb1cYI5/D6fWHjfdzITZcJNWo+dVPv1HKm6v8eGeyjussURR6Mc0TPCI6Gm0GpU8wrwKuDhlDsb26at4umEz2zmOVXMjbhiYFq1CD9nPHz6KeIjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v3hXMFpV4vpJ/zihkRCSHiESgz55FFVUcaeVo1M4XHU=;
 b=Egj4xdJjgZ0yNFDo0MmWsfHGQdpqxSigMDr3U4UTGrzNkrPfL0N839rJ4jVWyhlxrQW480Wc13AG0ZH5r1TFU95QABii/Ln1Fjo4zc6UWBYfBPbav6VGdHk/rTDvnj+ZIMPSHZoRA1ZbOepW1XcZio+sKeuLslVc5ZLcbH+AkhyotvG6zgAK1R63ouEKKIl/GNAT6Y+gflI2npe8OhAWfZMNOOjpfbQAy9B/nDXuKJ7lErrQH4jHHShftO34Lo2ztl6q5Ug8TO0udSkSiEY8IBanFJozH5KMJ9uA2UhWDyKnVhXAsGR5RfpnVzW14pXkCP5AnrKTE4BeI+iOFLpeQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v3hXMFpV4vpJ/zihkRCSHiESgz55FFVUcaeVo1M4XHU=;
 b=bEeMEUAJNYdd98kiYFCPRcyI0uzE96ZuLyylMdAN7xRozpi/6dA12b+JqC9PmHuFsifelJDL8aR6ISZQADzUEkunwgGXeO99uQy5WUC7k4VzNKRL9LHdCq358pX6f6QI+M8k5uNf+fbscpJkFFZlp5iPInZGbynAfKBGF0cFnlzUGiE6IK4mnzhvfSWIL4cUdNUTAW3Gxqe7IBbSSQYGuW2/X0t0KKjCuQBR2Ka8NaZZOzDNNqvchaRk0yjcFAsCsGwoUU8SIDh1ICIclluIFxA5Cu+Hp9E2LpeCHUkNHemoYj6WsVufHGhAz1C+6qwKUkrsb5yA4z4hG7jaaSq/0A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com (2603:10b6:a03:2d3::20)
 by MW5PR03MB6957.namprd03.prod.outlook.com (2603:10b6:303:1a8::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Tue, 20 Jan
 2026 13:54:52 +0000
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf]) by SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::ef1a:f658:cd17:e6cf%6]) with mapi id 15.20.9520.005; Tue, 20 Jan 2026
 13:54:52 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: socfpga: stratix10: Add emmc support
Date: Tue, 20 Jan 2026 05:54:46 -0800
Message-ID: <bd9b9c8d7d19bc7e02140a40ac20c5ec9e6aa466.1768916730.git.tzeyee.ng@altera.com>
X-Mailer: git-send-email 2.43.7
In-Reply-To: <cover.1768916730.git.tzeyee.ng@altera.com>
References: <cover.1768916730.git.tzeyee.ng@altera.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY5PR20CA0005.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::18) To SJ0PR03MB5950.namprd03.prod.outlook.com
 (2603:10b6:a03:2d3::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR03MB5950:EE_|MW5PR03MB6957:EE_
X-MS-Office365-Filtering-Correlation-Id: dd122f6d-735b-4db6-4543-08de582b7c40
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?gF9+sHDQYmsTPKWME7Pai/NFyptxUaWfKrg+dwT3FfiUuvlaboDWapjgReP2?=
 =?us-ascii?Q?2lh88gw2qav7PoiqrXt4a6dMsAq2GYUnM60X2714IUf/2S4SAIf+cs13gKVg?=
 =?us-ascii?Q?WoN1JO7D4440SDJNTlSj7NuYjEDXkM3L0XCEIwTaZHp4y6OfM4n+nAdBHz2V?=
 =?us-ascii?Q?NJdRfp9MnefeNUrYbcS8xo0XDTKTvlovHlnSxXZ18fIBQXqJKyI+dNf2JDdu?=
 =?us-ascii?Q?z39CWnEuYJsGQLEeH1YVEEmp3vEk0SgsYwEQzY0MOky3B8zh4ks5r9v+v7wi?=
 =?us-ascii?Q?PG13fHFLXn7cb6cAo3XoD7DTp8l090KYalJgdOTDjsZ8CDVrvoO9HMIdF9fe?=
 =?us-ascii?Q?ilnB/ZEJ5Jb8vNK8tOZTbPFKUO2vfdsN7nrqTnOSh0x09OiLjBarKMLCzgIb?=
 =?us-ascii?Q?YEjF1Ixo0whfjSYRdofs/3eUQlB3TsfjFCPEB0zM7OXbaIZNd66w1N9BjQaJ?=
 =?us-ascii?Q?2OE+rX1luLStVfHZo1EBuQyBECt6Hk0SlmFFJaaLHnaQWp+kdIDHUicVn3H3?=
 =?us-ascii?Q?SlK+YCT+YDeQMZC+Eo6KISQ6XJXr9UDHM2TQnC89vmkon/OOH3QNiPRFfuJy?=
 =?us-ascii?Q?wGrWiDOCoTdaEHubphkXNyF+t6IX+aspq5GHp0dNqBEfgnbnhZv5OyraXwzY?=
 =?us-ascii?Q?kNOsaXL1Sk3mMmjsFRt1XlrIzQuhbcf/r5T7muLETSCtS0JzJ7+sFiullFUF?=
 =?us-ascii?Q?iuUTYcrkfsFXcJN8Y9RESVbO8ps+RMVzJ7ZYH8Ggozn+Z8UWiTA7Q2l4HCXt?=
 =?us-ascii?Q?s/S+7M6+yr00N50X9TIfpkTxVC27CUGu4CMFQC9R7UZotv0HnQrczZjOHtJq?=
 =?us-ascii?Q?9D93VCYRoQ5jGVWm1BN7hRTes66ECEOY6xj8j49ZqijLoVrxFz0dc6hZjQZe?=
 =?us-ascii?Q?guNHJ/tdzUiYJmBBXd/Q6vGQeeQlokE1L2aT/DhRvZ8YsM5NH+QWxh357E3C?=
 =?us-ascii?Q?GkFUuWyetxxlr5E9YClIZcP99UMKtJk1WuSpJ1G3zm8NlBr1CtCStOg0WLCE?=
 =?us-ascii?Q?rnQNhxaBx4dVZL2TjDGRA+cpYj4ym+IOIZNy6rRjIbuttbwNsr/Ep5j0Xj+q?=
 =?us-ascii?Q?fR0mR7fi/BKPnXbDpyFCub0VNsCNYHvGK2jTXcWBtfG2Qey1ymTigoT2RIpB?=
 =?us-ascii?Q?4+Q7d9AY81RQkdHkhOvf/K2MC/uwiMnZk4VM27Zw5G6t/5vnczTfpgPvx4Q4?=
 =?us-ascii?Q?R29TuPH+uz0dDdl6I4eTYAhKxMupoqHDZCQpR3sD6ni1UZYz35HVng78GweY?=
 =?us-ascii?Q?rpHfwG7qenesKT8gc8tEmvPQykJcPm7XRjvST5xaUUBNTCFERKkBuOWuxXMs?=
 =?us-ascii?Q?XMxsKfceaD44hDiIUqMllCiQTa3xc3DsTZf6t0zB3Jjv2kztp4Nft9eXBcrV?=
 =?us-ascii?Q?In6y0YDA5S2XPy9s080fDUq8qdyNg1I+nC0CJB7dTUPBng412GRHUMkQyKs+?=
 =?us-ascii?Q?WTQ/3juBb89LaqdCctqZe2CEBAyar9iCSxzmEUFArJ19/ILFQpcShRBHHZBw?=
 =?us-ascii?Q?jLaBT1WjEUmizL10DpQF7EEPI7GoJg0e3C4KfZBVC6Jfeu/ibtODwxoFgvKH?=
 =?us-ascii?Q?1xXruiIMzKdjJ6dAKK8=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB5950.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?BH3FzueJ8kC3jtbSxpRlZW9N/eC8rzmVikUKLMGqAnRoXpJ0Wm0TWLgXf8h+?=
 =?us-ascii?Q?XGeecBabXheM+kLsOfrfxmBVDiRgKEwQg//+pr3yJF2qUO7euLjEz4Gb1Pel?=
 =?us-ascii?Q?HvugMsqR6pp1WkglaTYvbGY/E7uFGMl5CRMrIkH5wvxXOQk39S6LwTNSK2b9?=
 =?us-ascii?Q?InRB/+B1JC1XJ7ET7QnYpYRYB72APqlxablCbxcZHRUMcL+eGheNTOvmuvyw?=
 =?us-ascii?Q?9AAmMZmrtcivszioqVVuVZIn5oFKdI7FdYTjJb9LAzzW9L5O3igOnmFyP8fL?=
 =?us-ascii?Q?opdzreqgKOsVa5DgeDCP7Dlk5FTS1DxjjalnoA8LlPJ8ck6mZpPIXJMqk4Gk?=
 =?us-ascii?Q?9KZQa17FA5dopaWJX5rRiVAreUikelb7H1iw0v50ikA1DdLZ+zlFTOUswzjd?=
 =?us-ascii?Q?IeUkhEN/mf7XLSStY1wW8o4H1dlfjpxiIsVZ4X1OZ6pmLLrOp6C2dYqeyeLT?=
 =?us-ascii?Q?vQun3Aia9/M5Is12IdKaZNUMk+JfMX437aCyZaAjYLuxOQYPLR8/09q5aTTH?=
 =?us-ascii?Q?jogKQNXxdp0fYKidBXlyK9KxKq2Tvx+U/ONMvmF5+ub1yXsFKL1Knh82nnHV?=
 =?us-ascii?Q?BUt2vghwk3M9PM4We0L6vhssZD2u1S7Jou00zur5zBrvA69g9C0AfIGVcbk+?=
 =?us-ascii?Q?cF1A6cEW5mY5P4lbPW7M33Arg3VpmX3jCvloctqeestBmDDRShVadRHvvQsg?=
 =?us-ascii?Q?YBKQ5NDhfd7zVzwW+L9mKA+1AGOu4y58nTWdsYyavrE3K7u5zz2SIl11hT0y?=
 =?us-ascii?Q?a77RWLcqfkqEIlAOGrT80mtlowlmfFTh3gQYd7+Hhyxm/D/mgGlU+TBuJoYk?=
 =?us-ascii?Q?gky0aDaBC6CskQAGRnBshgr1zZEvcaAKcxk8VZvDRTsTEnSYZhPZCaS9IyIf?=
 =?us-ascii?Q?yDBEQ5RoRl8e1w8nuqwGhY9dI+HR5cCXfWNxnB+PdfktHgMLpDLqopdYRow2?=
 =?us-ascii?Q?7oBZVDeqw9XQYEptX3oFhkT/5tQnWm1/BjOFbGyWllGUp1OFp2qxRronZuT3?=
 =?us-ascii?Q?HJplN3maEdJ3lV7jfj4Jk1G1gMG9poQvdmetjBWzrxpvMxvMdmVXJ7/tpjfZ?=
 =?us-ascii?Q?xsHLhV7CWN13CitEkYKtdM1ZRhM3wcV4dJuGdiuYb28Dlqkwl8yf5nTp2xBH?=
 =?us-ascii?Q?6bOUzkRb4SwgFBdzv27qYyQ68/uNvgeFwsAsEDImWEqEPNJM2tb8UIDo0jfM?=
 =?us-ascii?Q?zYQrXzSBF74PfMmIyfS8pEKl7AIb91eYXF9FtihoZq0VLTuV3PlqF0+/26PW?=
 =?us-ascii?Q?A3V/fjf5mux+vxWeBOmGWPRuv/lkwnvabMLYyVV9K5mR6Dw8/a9rGAd9qX72?=
 =?us-ascii?Q?n+/ja41NVysdu3682yQFMIgXPulrfGZJXd4gReZaAcmkz9Ko0BWWrk0mZOhj?=
 =?us-ascii?Q?PRrYvd+BC6aeaE7FMLwWbQ/nRNblwq1La9QwaC1p7KxwNMTIiJ7xh3YJ9x1j?=
 =?us-ascii?Q?viRV0Nw8WFRrAL+H9GtZdzM5ti7p77SOYIUclUPBCStA/MZrwsLwQ7lqh9UU?=
 =?us-ascii?Q?5MN/NomN4bvQMcH6PojlZIBdpk8ApECM66C0IZEM1qKBH8LnZZjuMiazt+3a?=
 =?us-ascii?Q?3YjNEQvde6O7k+ZskHnfPOjwVdLQj1s3rVPhk+5Xz6ak8U2fvBZbPjuEv8HB?=
 =?us-ascii?Q?CqHEk+LRZckahiH+ejsa193ekXJ/J7MkfmSUy24ozwGhuc2uv3akfwyykR6y?=
 =?us-ascii?Q?WGTz20LUA+YUVBPAQOcjAbfoweYzL8XmNnBK9qFSDpLkU6BGCtaqYT3ppeZL?=
 =?us-ascii?Q?iInlcDEatA=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd122f6d-735b-4db6-4543-08de582b7c40
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB5950.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2026 13:54:52.7866
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IWSI6ZwOuUKQqoqhqi/9IXkZn2ueU3/koL8q29WAUSwCzikoQt23cFLzggboHwyjq3ABz/uWkrX8h71UusY1VA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR03MB6957
X-Spamd-Result: default: False [1.54 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257430-lists,devicetree=lfdr.de];
	DMARC_POLICY_ALLOW(0.00)[altera.com,reject];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzeyee.ng@altera.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[altera.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: D30D346703
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ng Tze Yee <tzeyee.ng@altera.com>

The Stratix10 devkit supports a separate eMMC daughter card. The eMMC
daughter card replaces the SDMMC slot that is on the default daughter card
and thus requires a separate board dts file.

Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>
---
 arch/arm64/boot/dts/altera/Makefile           |   1 +
 .../altera/socfpga_stratix10_socdk_emmc.dts   | 155 ++++++++++++++++++
 2 files changed, 156 insertions(+)
 create mode 100644 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts

diff --git a/arch/arm64/boot/dts/altera/Makefile b/arch/arm64/boot/dts/altera/Makefile
index 1bf0c472f6b4..540bb5ae746b 100644
--- a/arch/arm64/boot/dts/altera/Makefile
+++ b/arch/arm64/boot/dts/altera/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += socfpga_stratix10_socdk.dtb \
+				socfpga_stratix10_socdk_emmc.dtb \
 				socfpga_stratix10_socdk_nand.dtb \
 				socfpga_stratix10_swvp.dtb
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts
new file mode 100644
index 000000000000..01694920afaf
--- /dev/null
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts
@@ -0,0 +1,155 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright Altera Corporation (C) 2026. All rights reserved.
+ */
+
+#include "socfpga_stratix10.dtsi"
+
+/ {
+	model = "SoCFPGA Stratix 10 SoCDK eMMC daughter board";
+	compatible = "altr,socfpga-stratix10-socdk-emmc", "altr,socfpga-stratix10";
+
+	aliases {
+		serial0 = &uart0;
+		ethernet0 = &gmac0;
+		ethernet1 = &gmac1;
+		ethernet2 = &gmac2;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		led-hps0 {
+			label = "hps_led0";
+			gpios = <&portb 20 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-hps1 {
+			label = "hps_led1";
+			gpios = <&portb 19 GPIO_ACTIVE_HIGH>;
+		};
+
+		led-hps2 {
+			label = "hps_led2";
+			gpios = <&portb 21 GPIO_ACTIVE_HIGH>;
+		};
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		/* We expect the bootloader to fill in the reg */
+		reg = <0 0x80000000 0 0>;
+	};
+
+	ref_033v: regulator-0v33-ref {
+		compatible = "regulator-fixed";
+		regulator-name = "0.33V";
+		regulator-min-microvolt = <330000>;
+		regulator-max-microvolt = <330000>;
+	};
+
+	soc@0 {
+		eccmgr {
+			sdmmca-ecc@ff8c8c00 {
+				compatible = "altr,socfpga-s10-sdmmc-ecc",
+					     "altr,socfpga-sdmmc-ecc";
+				reg = <0xff8c8c00 0x100>;
+				altr,ecc-parent = <&mmc>;
+				interrupts = <14 4>,
+					     <15 4>;
+			};
+		};
+	};
+};
+
+&gpio1 {
+	status = "okay";
+};
+
+&gmac2 {
+	status = "okay";
+	/* PHY delays is configured via skew properties */
+	phy-mode = "rgmii";
+	phy-handle = <&phy0>;
+
+	max-frame-size = <9000>;
+
+	mdio0 {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "snps,dwmac-mdio";
+		phy0: ethernet-phy@4 {
+			reg = <4>;
+
+			txd0-skew-ps = <0>; /* -420ps */
+			txd1-skew-ps = <0>; /* -420ps */
+			txd2-skew-ps = <0>; /* -420ps */
+			txd3-skew-ps = <0>; /* -420ps */
+			rxd0-skew-ps = <420>; /* 0ps */
+			rxd1-skew-ps = <420>; /* 0ps */
+			rxd2-skew-ps = <420>; /* 0ps */
+			rxd3-skew-ps = <420>; /* 0ps */
+			txen-skew-ps = <0>; /* -420ps */
+			txc-skew-ps = <900>; /* 0ps */
+			rxdv-skew-ps = <420>; /* 0ps */
+			rxc-skew-ps = <1680>; /* 780ps */
+		};
+	};
+};
+
+&mmc {
+	status = "okay";
+	cap-mmc-highspeed;
+	broken-cd;
+	bus-width = <4>;
+	clk-phase-sd-hs = <0>, <135>;
+};
+
+&osc1 {
+	clock-frequency = <25000000>;
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&usb0 {
+	status = "okay";
+	disable-over-current;
+};
+
+&watchdog0 {
+	status = "okay";
+};
+
+&i2c2 {
+	status = "okay";
+	clock-frequency = <100000>;
+	i2c-sda-falling-time-ns = <890>;  /* hcnt */
+	i2c-scl-falling-time-ns = <890>;  /* lcnt */
+
+	adc@14 {
+		compatible = "lltc,ltc2497";
+		reg = <0x14>;
+		vref-supply = <&ref_033v>;
+	};
+
+	temp@4c {
+		compatible = "maxim,max1619";
+		reg = <0x4c>;
+	};
+
+	eeprom@51 {
+		compatible = "atmel,24c32";
+		reg = <0x51>;
+		pagesize = <32>;
+	};
+
+	rtc@68 {
+		compatible = "dallas,ds1339";
+		reg = <0x68>;
+	};
+};
-- 
2.25.1


