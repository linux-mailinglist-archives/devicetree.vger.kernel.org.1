Return-Path: <devicetree+bounces-267718-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yCAxIvQ+nWlUNwQAu9opvQ
	(envelope-from <devicetree+bounces-267718-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 07:02:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFD018243C
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 07:02:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1C8B3308C584
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 06:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EF862D59E8;
	Tue, 24 Feb 2026 06:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="RF+xgawB"
X-Original-To: devicetree@vger.kernel.org
Received: from CH1PR05CU001.outbound.protection.outlook.com (mail-northcentralusazon11010025.outbound.protection.outlook.com [52.101.193.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 925162D2382;
	Tue, 24 Feb 2026 06:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.193.25
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771912925; cv=fail; b=o3aL670QqtytwDrraJXzTllEuwfkQUbipvXxuMtCwGdzIpHH/cl++b1TjqpgqddNtEQYPIC4B5t0PzsWKZkf2pOm3KBZBuY7Bv/htRjKXlGQJ7KXeN3rEo88kqbsd/0+Wa7+cT9OMNUWSy8jEQwjBYhIyeY9BwHkhd/bzKxqyv8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771912925; c=relaxed/simple;
	bh=a7y20gaAXcXscKV3pE4bgzSf/cJE9nyM/Xw060E9li8=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=tJTyP7saVOV9v7cO295/omLj/ZgVtrjbtjbg8oaiRaG0il7EO5pjp3Zu3457FaqtK7t2jsfWif9C2Uux8fJdp8sa6ML5wURmEgGK8XwSOlol6fyV6oP0f1CLiU8oiEYXpgPs9HWPOLhPPs1PNtejbAga10N2ga0Cwa1xiKs7i20=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=RF+xgawB; arc=fail smtp.client-ip=52.101.193.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M0S3EIwGH1WS5AgAKB13/yaRu6x0RV2dL4lz6FbWew8cCBl/CF4gcMit6Vqt+50P0cFZgSgP1BZAV/Z/OJAElIT1oiBjlVfALXq7wIGuZ4zVzslKIXg7d1xhVom6NauWWotrK4HI0fp+7BxxXca4pTFRqPgF5EKvZpoflY2nGiuYAHLGK/CWEoGAQnzspLFYcAnrp8kgc4ik8m27MFxLdIZF5TXTTtm4/G6jDHgibn2bniedJ52CRT+RfL2jrit/9l3pHVleVOR7TEs2BrQhhHqmjWKsLIDvgcnZW3rJx1E3dNhDjkyuf5mOfEexKn/xfzY5mHlusSDxNjJtu3GnYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yXOHtaA9/qHvaOQfJaa5LY4LIyT7snDehJpCiy1awRw=;
 b=JO+LY56H/OJHezsdc7SJD2rUbE+fTBhYOMag1Icq4Y7Xk827NxDukcPBUXkET522NfeBRnbx3CUWur7ffrxrXAmp/u/6/UXCGEf9xG0JaTpEB0rXqmuJ10pN3CXmc8+guNlbI/4T9qSloPsOIzj0EM7B9p9McyFnEw1pf/0Vbvr4h8kqb5WDJFsJBJPE59cB+mudEHpFWi6Z7p4OcBJ6rQghSKAL7Qztnc4CONmyCeB9NToLaHtbERpPDUdcHxgSJv++CBKvMX/uRw2d8mfjibKWlGI+r3Gpvrwjvp35pNSwAdHZo/U7zCt7wZDI7Do9oeM/ZklmsKcd641BEePASw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yXOHtaA9/qHvaOQfJaa5LY4LIyT7snDehJpCiy1awRw=;
 b=RF+xgawB6mqLTaLc9HobjRuv59/IPTXOx5iJhDhiC1jT0zO2MP/VY/XXsYq5KkX3+88HYtl4No8pjA+HleaCODSLmSphm3rsJUGE0dHmN1vPiinzvNjbPcsd57OYaynU4l6TIt2ro/3VM6yML9CKVPyTXaJraAwWhBugAGWLEt0iD5bq+Z+LuP3ltL2lGe26V4DmCbdSfACR72MCJzSYfAo/irDUc3e6WmNbc1e0smvk+4+h4RtNy72lv2sxPNnQdNTFcNteSaZgHhcVBUTAwS5etZDONsxhKi/12wIkymf3nxQNfOtCyj9niz5b/BlPO0uHSQFKKnCTAT1AlKL2ng==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=altera.com;
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com (2603:10b6:a03:2d3::20)
 by DM6PR03MB5113.namprd03.prod.outlook.com (2603:10b6:5:1f0::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 06:01:59 +0000
Received: from SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::53a0:bf93:6b6b:de01]) by SJ0PR03MB5950.namprd03.prod.outlook.com
 ([fe80::53a0:bf93:6b6b:de01%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 06:01:59 +0000
From: tzeyee.ng@altera.com
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 2/2] arm64: dts: socfpga: stratix10: Add emmc support
Date: Mon, 23 Feb 2026 22:01:55 -0800
Message-ID: <7928ca3de2cc6757744ded4d40903276b14ec578.1771911773.git.tzeyee.ng@altera.com>
X-Mailer: git-send-email 2.43.7
In-Reply-To: <cover.1771911773.git.tzeyee.ng@altera.com>
References: <cover.1771911773.git.tzeyee.ng@altera.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY3PR05CA0059.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::34) To SJ0PR03MB5950.namprd03.prod.outlook.com
 (2603:10b6:a03:2d3::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR03MB5950:EE_|DM6PR03MB5113:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ae69357-82f8-41f6-760c-08de736a38ca
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?UY381RVyoAeWoI+BPK+3E1i0T9nnzCiECdvWm2zUH86rlwmICTKr2W8YAY2d?=
 =?us-ascii?Q?b6WOEEkDamCDtYfJsmKEq6naU8sY8+Ae6T/bD4tsdpNvAgbio/L2qxGnaoH7?=
 =?us-ascii?Q?F1FF57zrrnGuPxnnzvCnMFN9d0LoIE6/B2ZwKBdO7OtyyJ58TeoVIE+iTc2b?=
 =?us-ascii?Q?Yw9aqugbUdvIIZm8PO0HczpQ17T8pvm7RPf3Pd4dXDl7F2IGvbOc6pFhDUUU?=
 =?us-ascii?Q?BPm/2aOl+9yxQpVvmeqnYOYfXeQWK4fwK0Nw402sCNJspXMxIbDzlHlIvtP0?=
 =?us-ascii?Q?WArr2YIixuX1pHJHnvzvfUcDSKeoo+gOVkega0uX5WzKiFDPnZ5uuX1suXlZ?=
 =?us-ascii?Q?PWdzDjHmOLQ3lwilXWPyQPN3x5hYfraqS46AWIyomjyrldJxb1MOVPsI5L5l?=
 =?us-ascii?Q?chy3LWFTgoshE0I+1eFAbRFY7bxfSJXGoY5QY5ahh05fNDSivlFMW66CEnkJ?=
 =?us-ascii?Q?R3p8v9jpQ/3je9MY3IuNorC6IQ440cp8M8JfpwGYe68Y6NyHCStL6K01oBcv?=
 =?us-ascii?Q?0e46PCwi/eqsVjRMMOE8C1xKQDew0NBNFurKV9TKgBtkUoDsWWNjFZhd+t7f?=
 =?us-ascii?Q?wzkCc3AXKW8Oe7PHcadeKhGkDJ3oJCbzSFjTQ4xEz6f7EiTqcOQmpI10gDDl?=
 =?us-ascii?Q?YbMti2HBXcj9mX9ktMhZdbwKRjKtUj4qw88/g2/jOwDz+wzJVu07pftbLSQ6?=
 =?us-ascii?Q?74iHqRq+bxWc5aFwbpiRs2DdmMrdj/L9pHl6Ku6XVmAjvCj3AjePWF/gg0Lr?=
 =?us-ascii?Q?PBawEMliIl4m/LKhhfV06U0Q+EwoS+3apTf8RdGUukBgKZZw/k92VHA3qy+R?=
 =?us-ascii?Q?UgPnuCgwyrxPVT3c60m9u6/w7orSq12e9DadFy2E4kahPUAGY8R18zgcvogN?=
 =?us-ascii?Q?I6rK6Cf5HjhApY83XGNVi2yR1xDAA80yCowTe1lq0od8B5jmjaHrYDg+/uzj?=
 =?us-ascii?Q?iSORxc3qzDV368By6MCPLl3eOQkwiTcXpZ+KSq5bOeXgdXNh9Kx/K1bMkm59?=
 =?us-ascii?Q?gV2sufPtv3Ey6LxqqDkAoEEyhADl18MC+mwNheqaEdzX3zlag+pKTx91e20n?=
 =?us-ascii?Q?dzs5XkkTHFnbsPY+4EEWCU3zZq1rxpjFPIcQZuGiajW2yQH2owU9eCnBB6Tc?=
 =?us-ascii?Q?Xoz/+KTi9VDrFOB/csQ/0xQxZjXLUP3mrQne1jWSgBKaMgHnftKoQpu8ZGNW?=
 =?us-ascii?Q?k31w3I0J0DdoD+m2O6pM6WPIj6GfYtTvxZUgTjjRcszI8K4eAKROKpVvFYlv?=
 =?us-ascii?Q?8wAJikQ2L5tFxdFx4NPjdJiVbu0b8iGc1MCnEvDgOFOR0nP5miG14zOp77OI?=
 =?us-ascii?Q?diyMeNwyFAkkV/3GyJ0QorDQzn8S/BbVKicHfSEdz5t+/Kdq0e58/MZsa20t?=
 =?us-ascii?Q?Hny4hcaTJLGbRurdgAlz8AnWJZ/BJfdDOrLxcwUTtEJ9C85SKhiyRvDWJSVk?=
 =?us-ascii?Q?bDpSExSVn9tRneg65+FlU6yhiCMwe55ImnLOXcjPenfvI1QrWKTWVEFrkIEJ?=
 =?us-ascii?Q?ZQkl5NNw1bEkKZGDqHo0/HVhnGkggMyRNL8u0B7I7v9glDfWVSdHRFsaHExv?=
 =?us-ascii?Q?F024SfQUQfhjBhiLnks=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB5950.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?v74FPDZvy/OwilhHOZKi0Q5ZRXGDfvMCqObhmXXso8ovg6bqoFILvTmsgqfO?=
 =?us-ascii?Q?GDnhLGNRBnFpo+2RpJuYgPQbpNIbLRfG9iB8m9RiDeZWDWe+TmXiF/AEZpNX?=
 =?us-ascii?Q?HUMY+8QodseoC79/fhcGzpC5RdUtENth3ajMYq9noENoBe7ocZXYdPGk1Hzn?=
 =?us-ascii?Q?2bdHLpsaSuS8SRYhOf+12xYEWpjh6758w5Ys+6zsFtSCVPBKdS9FQuP/bNje?=
 =?us-ascii?Q?4//E6BcK3rgJaabETYIqYSu0fJuOLxiOi6o1CRQQXBiNNvZillUfbkNJ98w6?=
 =?us-ascii?Q?v7Z9C8neZBNmOu/OVQmAKP0lBQ5TercvL3B73OHPfTlTW3E90pIcizmTILVm?=
 =?us-ascii?Q?YkfQa7kucqRVR9a7UNaFc0WWxWYlz7CfjuGsUZqU4e4UsBF5kkn58Wo1kOUj?=
 =?us-ascii?Q?Vgcj5dl2ZRNEgtgz+yqnjBYWLgFSsBGtODRArPJxHUtNXf3tGxIVPU4CGnRA?=
 =?us-ascii?Q?pHoVqVScFBS2xSY4WI5Lhs24xTY7nhfbAiSYDnz17+lEOIIZN7ZOxwGqXcPC?=
 =?us-ascii?Q?oEdHZPLDIGYJpAx7Vv+KaX9mUCm+0DwcrXaIT8c1QGnTBTgp3fW4QU326rcb?=
 =?us-ascii?Q?5Ey1oyRvm/YyfXu91qVhivWId0Q7xhVHk8kOMFZzr5XfqTihg/yUskDjnp5t?=
 =?us-ascii?Q?v4eUrVHz7jkb4nGOTIWnrFZIgFYF6p2yxGAYbSAUCL0xicSUB0u9dKGwmWyB?=
 =?us-ascii?Q?EuJ5GWuJHi+sh15uN+ED3CQ1rsP0dBIr6dpKQKYZIq3Igsi5GlJp6VXf8aFq?=
 =?us-ascii?Q?mQH6r+OtVs44ltCj7V5chiNfdFm8IT9Jm2qwnybjF4J4E1+IJNYxVchIZoB1?=
 =?us-ascii?Q?80FQoz1ksHz2eR2TXYfz/1RDWzS5hu30+Yc0SCa8LO0lvpX1tFCR6hH5y9Ag?=
 =?us-ascii?Q?5lJzBjDXs8fGQYeNlsyPKguHs40U9j/d+SRUadRFNJqdjAiVco/ksilci0XD?=
 =?us-ascii?Q?GDNScvQRbDVenlxjE8Y9xcbac7FG90X6TGNS/Hw1F2zQAl3K/PkkUyj6xtiK?=
 =?us-ascii?Q?LGTieafgOpdgiOh4HWaI7e1k/EFaxJaegCfH+/AEHPu359d8rrtykjSkG6Gj?=
 =?us-ascii?Q?4VXLsm6Thp1/xODYsD8Q4NSot0Tu5+c3wAwebtDJ2ZMlDHhlJY/PW63aer6n?=
 =?us-ascii?Q?f1dY+y8b1jTIMPdoiaKCekJ8KEzV52cJ4K+0MFUN/HNAPmC2jlDyJjj0JwJT?=
 =?us-ascii?Q?LhFrpvUcfI0nhrOFSimfV+4F/RGByd9F0Okp9Txt34VgST+CLhoFxt5rUK2c?=
 =?us-ascii?Q?RLIycUhz8y8ry9SovP080/0oduRzL+EblGTry7bHBmW8uFlxStEu2tMZEieQ?=
 =?us-ascii?Q?/cmoq/oMM7ZN1XVORkrmRevzi1sruTKWlpqgN8a0Snr6MH9AMgZgZFi0mhxT?=
 =?us-ascii?Q?kSvb0guMqCUCnSJPnrxOPz+Kj8K0t1aI8hKJrx9Aai69nWWbdtafhnplMZVC?=
 =?us-ascii?Q?/ZDhJO4thvSqirNLrHNQI9SrRQMfy+voUBEOOEEGfQa1zx1A8YC6WYn3c20S?=
 =?us-ascii?Q?1qHY8BVZRiCqjCCqoTIycy6Dp+H2Vw0ewBChIyPtuOcxRVVYqV+T1BYpFYRO?=
 =?us-ascii?Q?x3jTWwPsDn7cI+H4L44gfYWvldq5R2S31Tnns5oUMGZIpKJ1x8a5NCvemzS4?=
 =?us-ascii?Q?H2UVr5Fg8Sg9vjFZ8KngLfEFeEnm8VZ6SNFZPadnJJZMk8HZ7vgyzhmJnSgk?=
 =?us-ascii?Q?Ycc4a79GVJJbslN0y71Wg1oei6hPuc+wFL9caCBqApSI610Yz0EEqM8f1cvp?=
 =?us-ascii?Q?CjMSAXtDtA=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ae69357-82f8-41f6-760c-08de736a38ca
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB5950.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 06:01:59.4448
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F+vsTvugZH813upogxFpDKRrkfzvSIDJEcaeh/FCiKos6TLiJEmOQd/hf6dzdF/qZYLcIrpUdnZrYtkJyjSyug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB5113
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[altera.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[altera.com:s=selector2];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267718-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[altera.com:+];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tzeyee.ng@altera.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[4.196.180.0:email,0.0.0.51:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.4:email,altera.com:mid,altera.com:dkim,altera.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.68:email,0.0.0.14:email]
X-Rspamd-Queue-Id: ECFD018243C
X-Rspamd-Action: no action

From: Ng Tze Yee <tzeyee.ng@altera.com>

The Stratix10 devkit supports a separate eMMC daughter card. The eMMC
daughter card replaces the SDMMC slot that is on the default daughter card
and thus requires a separate board dts file.

Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>
---
Changes in v6:
- Rebased to v7.0-rc1
- No code change

Changes in v3:
- Refactored socfpga_stratix10_socdk.dts to use socfpga_stratix10_socdk.dtsi
  for common board configurations, eliminating code duplication
- Moved gmac2 and i2c2 nodes from socfpga_stratix10_socdk.dtsi back to
  socfpga_stratix10_socdk_emmc.dts as they are specific to the eMMC
  daughter board variant and not common to all Stratix 10 SoCDK boards
- Fixed PHY address in socfpga_stratix10_socdk.dts from @0 to @4

Changes in v2:
- Introduced socfpga_stratix10_socdk.dtsi for common board settings
- Updated socfpga_stratix10_socdk_emmc.dts to include the new dtsi
- Added fallback compatible string "altr,socfpga-stratix10-socdk" in
  the socfpga_stratix10_socdk_emmc.dts
---
 arch/arm64/boot/dts/altera/Makefile           |  1 +
 .../dts/altera/socfpga_stratix10_socdk.dts    | 67 +--------------
 .../dts/altera/socfpga_stratix10_socdk.dtsi   | 71 ++++++++++++++++
 .../altera/socfpga_stratix10_socdk_emmc.dts   | 81 +++++++++++++++++++
 4 files changed, 155 insertions(+), 65 deletions(-)
 create mode 100755 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi
 create mode 100755 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts

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
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
index 4ae18a013bbe..e2a1cea7f3da 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dts
@@ -3,53 +3,11 @@
  * Copyright Altera Corporation (C) 2015. All rights reserved.
  */
 
-#include "socfpga_stratix10.dtsi"
+#include "socfpga_stratix10_socdk.dtsi"
 
 / {
 	model = "SoCFPGA Stratix 10 SoCDK";
 	compatible = "altr,socfpga-stratix10-socdk", "altr,socfpga-stratix10";
-
-	aliases {
-		serial0 = &uart0;
-		ethernet0 = &gmac0;
-		ethernet1 = &gmac1;
-		ethernet2 = &gmac2;
-	};
-
-	chosen {
-		stdout-path = "serial0:115200n8";
-	};
-
-	leds {
-		compatible = "gpio-leds";
-		led-hps0 {
-			label = "hps_led0";
-			gpios = <&portb 20 GPIO_ACTIVE_HIGH>;
-		};
-
-		led-hps1 {
-			label = "hps_led1";
-			gpios = <&portb 19 GPIO_ACTIVE_HIGH>;
-		};
-
-		led-hps2 {
-			label = "hps_led2";
-			gpios = <&portb 21 GPIO_ACTIVE_HIGH>;
-		};
-	};
-
-	memory@80000000 {
-		device_type = "memory";
-		/* We expect the bootloader to fill in the reg */
-		reg = <0 0x80000000 0 0>;
-	};
-
-	ref_033v: regulator-v-ref {
-		compatible = "regulator-fixed";
-		regulator-name = "0.33V";
-		regulator-min-microvolt = <330000>;
-		regulator-max-microvolt = <330000>;
-	};
 };
 
 &pinctrl0 {
@@ -68,10 +26,6 @@ i2c1_pmx_func_gpio: i2c1-pmx-func-gpio-pins {
 	};
 };
 
-&gpio1 {
-	status = "okay";
-};
-
 &gmac0 {
 	status = "okay";
 	phy-mode = "rgmii";
@@ -83,7 +37,7 @@ mdio0 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 		compatible = "snps,dwmac-mdio";
-		phy0: ethernet-phy@0 {
+		phy0: ethernet-phy@4 {
 			reg = <4>;
 
 			txd0-skew-ps = <0>; /* -420ps */
@@ -111,23 +65,6 @@ &mmc {
 	clk-phase-sd-hs = <0>, <135>;
 };
 
-&osc1 {
-	clock-frequency = <25000000>;
-};
-
-&uart0 {
-	status = "okay";
-};
-
-&usb0 {
-	status = "okay";
-	disable-over-current;
-};
-
-&watchdog0 {
-	status = "okay";
-};
-
 &i2c1 {
 	status = "okay";
 	clock-frequency = <100000>;
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi
new file mode 100755
index 000000000000..1d50f7b21160
--- /dev/null
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk.dtsi
@@ -0,0 +1,71 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright Altera Corporation (C) 2026. All rights reserved.
+ */
+
+#include "socfpga_stratix10.dtsi"
+
+/ {
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
+};
+
+&gpio1 {
+	status = "okay";
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
diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts
new file mode 100755
index 000000000000..b2a3449638dd
--- /dev/null
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_emmc.dts
@@ -0,0 +1,81 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright Altera Corporation (C) 2026. All rights reserved.
+ */
+
+#include "socfpga_stratix10_socdk.dtsi"
+
+/ {
+	model = "SoCFPGA Stratix 10 SoCDK eMMC daughter board";
+	compatible = "altr,socfpga-stratix10-socdk-emmc",
+			"altr,socfpga-stratix10-socdk",
+			"altr,socfpga-stratix10";
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


