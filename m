Return-Path: <devicetree+bounces-257429-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GI+nKbMYcGkEVwAAu9opvQ
	(envelope-from <devicetree+bounces-257429-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 01:07:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 451154E4CE
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 01:07:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id EFAD2728F16
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 13:55:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BBEA425CFE;
	Tue, 20 Jan 2026 13:54:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b="rV5MF1HM"
X-Original-To: devicetree@vger.kernel.org
Received: from PH8PR06CU001.outbound.protection.outlook.com (mail-westus3azon11012040.outbound.protection.outlook.com [40.107.209.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE08914F70;
	Tue, 20 Jan 2026 13:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.209.40
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768917299; cv=fail; b=N2KpDWgFg3dZ3i8mK5xlDHaxZVGxO+ldLRmbtvL+HhuvdpriUvGtJAZVDBF4Vw5FPEN7J3SsPKXTmaZjgaxbmJY2CjAv/G7O4aR5oqdFjHs+cAQDgDOM95SVB+YAqVz+UIllPm8YLGVh8FQ+2OgL3XKSTwRyr2XLimwrBV9GHp8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768917299; c=relaxed/simple;
	bh=L2nGiyRiS2Rulufdr8p/nVUg3q8qLhwpqWMJoXa2rKo=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=iie8IIRMhoyfRGdkfqs8onZcKCWM5rUgh6nBD+f1buATPgRsbquNWHIyRKeLrgEJe8o/053Bl/V3kz2ECn6c89jLwXgFFNt2977itsMZxQ5HtiFtB5ieXhTsRhr3vQm+BUu7LA3El4jKQfW2j9+Fjn0V7Gu4P6GMe+rmuXT0CRE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com; spf=pass smtp.mailfrom=altera.com; dkim=pass (2048-bit key) header.d=altera.com header.i=@altera.com header.b=rV5MF1HM; arc=fail smtp.client-ip=40.107.209.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=altera.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altera.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rROXT/fWaEUs9Ffp3bfkwEK4rjxi97IlFKo0AMrgNAeHtpicyCM6V2L7bmyQ/YpbOMkFOqoPsP0egv7Jrad/PvG22EkqkTUkeg0NKbm5slSQzECOTs4MWkNZv2FzuqWuGKoFXhKztO2HWKy28u2RqT5AE8RNyUDFAlTEi6ZK3MdC/bZBxmMilWM1FCwbdQ2c6kurVgLgtKKTIBhbmrD2NVWJY1H4/NHs9HH6y+Vrj1yQmKJRmapyV2qzKW5tqzGqv2UDEECnZoXwVorzyTC5x/Dls0V+bIrY6Yrmg2g4BmY14N4lIJFncQxPFF7t7gmLCX92g2epYGqf0f5lzdHezQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4gPEhs6iT3t9BXPsjJLQ6BQtzsA3VuwwiJR0EwaHJYw=;
 b=BgzavMYdLTxuDOcNx4KRM/8YXzIsLQHox9u34foGXUAz97RvrDgnXW7G0C9tac5w31dPYBACGL92LdGZ89YAKwCQ6Ojwhcj3Un0CVb1eSWugFsKgPKJGF+EJ0ObxJcauOYB9aeRYko6BS7Qh8FhPxMyWkOE7nR25F3F1gH7mSRvnSTT8O161fhkJNFcUmeaFt+zWL6VBuP0BCb6qoMViouaO5vm3nrbrJcq2M9znO7nsQEQY6l2V2THbffLGrXfgUfmPQzzTiE+jIlCibSPgbUhKd5y5kvPKv1FGp0WWk1AlS8yOQWya2IDs9PpufZS9qmHJi43yu+C4+XfcNTOKDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=altera.com; dmarc=pass action=none header.from=altera.com;
 dkim=pass header.d=altera.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=altera.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4gPEhs6iT3t9BXPsjJLQ6BQtzsA3VuwwiJR0EwaHJYw=;
 b=rV5MF1HMoKS47Ug+Ypao/0jn2RyMG0+59UiNvn7/CRZqHvbK7uj1RQjcq6oJwjf1zRya2KcrDtFJI3DTvdfJ6NUaLbUBaqxvJCHZqGXo2k0vkcfFQ+TqP+x95P8cldvO6sKmPyLIIpDmj/Tdi9/vXG8NbgR7hfZNdPocgvF/p6xBa1XkZy9y+Yg59gsuqRIXMGJu3Wh7fjTklb5xSka8ZgxTnsN52Cb9hrjSWm00hcbLeUHcqLgPJOLlKX/H6VRqFGyqXuD7vTifrB1e3wNEG57yDUQbIsnBMsqS5EoJP8K2SQusIz1DqJw4keeV4FDEO+IaXY2LNcBfsA5I6Ba/qg==
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
Subject: [PATCH 1/2] dt-bindings: altera: document Stratix 10 eMMC compatible
Date: Tue, 20 Jan 2026 05:54:45 -0800
Message-ID: <cbfe8eb6547b6fcd815712ad637e061229ed63cd.1768916730.git.tzeyee.ng@altera.com>
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
X-MS-Office365-Filtering-Correlation-Id: 5c654626-5505-42f7-49a1-08de582b7bf5
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?ppS26HV4f9KrvudpcVPAXH0V5tNrNzlxkcrzgIhBK4yQpjGw3c6YZh6cfQCw?=
 =?us-ascii?Q?gHWNweruW088gnRXm42cLQCqSbQoYaEr+bW7CY2R4ASK2EZc97KfYoq7vXaY?=
 =?us-ascii?Q?JKPk3oqMMfGmwBb4m1zlDJZkdZzlWuNCIr2GUerH07POXsYbt6/rficO5UvT?=
 =?us-ascii?Q?vMckhJUkuf3hcC/IRb/H0eMol/XQn0FTV5wpmViQhF4NvlWshvbL+dE6u0LN?=
 =?us-ascii?Q?8K9X/nG4PaNeEePTh92d7Mg/eXFyl0Ollsze9Uv+L1fhYHNbQrBhoTciEwo7?=
 =?us-ascii?Q?ahtgJORXPWJR/PNT9AN8OC9VTt96cyRV4B2P2TdDhUkYqmTxQwb82HOhjlhj?=
 =?us-ascii?Q?W8LZtfwJlmp5kd1BpfmM0EQ7JlEaAn73+L+no3iAmlLJP7d2rQfAqG0ixxzU?=
 =?us-ascii?Q?iYix0bwmb/Zx7zMhNvj3a5u5L0aETd1FmCSXGRbdaTXeaXilUyqGPE+vXOY9?=
 =?us-ascii?Q?ZJlA+6VJJ4b8MqH9ZDAaZ1hY1wIS+vLLj+Nih2cWI9itSb8n16UeOgOQNmBb?=
 =?us-ascii?Q?CM4byeO1WHtNXL8wySpqgPySxI43adsazd/LSiMO0ZbSr5dUUE9qpYR+ZoEn?=
 =?us-ascii?Q?wQOXjlUCuD4kbl+Q6eF+TPUnB7p7fH2LRmZNpSw8nD6ZkBgFO4wmkgMd0cqb?=
 =?us-ascii?Q?4pq0QcNLTxjtN99QUwM3BXM3CFw6BgZk+sbjRl0TUZjlLDRduLNDOqIxVF9b?=
 =?us-ascii?Q?+RPLkdRHHhjStQ8rWqltwKmS7cvbrNuxkTMcqtW6nGzAIbFA9tZYnaIp5xIb?=
 =?us-ascii?Q?Ney2qXJscu/KUdklu0bXeyhQsIQuujTaSDkblot0J9K5Hf6vGFuP8rGL1shK?=
 =?us-ascii?Q?PrYURubkWQ4vbTGw9oIJjOlcGSLmVaurxzIxMfTnMltmnwrWYbf6pEAyu1P7?=
 =?us-ascii?Q?b0q//UXcAXdkJzv690vKvCijPrzGeXYO6bjDQXXJpkCGtjLrw54QISbi9dyr?=
 =?us-ascii?Q?j5ecZg3WhCw2+TcseaQLxqHR7NaP7UDCpYMpFyx8FDfRCkI4asMzlxtgUFgy?=
 =?us-ascii?Q?KsVRZALGX9P+1IhYYZCKaBDqr0dTsyiOhj2jiv2ah/O1G/bNPwii7+es7/jY?=
 =?us-ascii?Q?whHhv+RVd39/cUlpKE50NXNIG5tOnDZ5LJh7Lbtj6xIJ0WYIm0XEES+R8aI5?=
 =?us-ascii?Q?Pb0BqJ3aOQ4E6OxhyBm1aO14R9/N3DdbWgk+5NB/Er+FTdRCsXOqK5BlvzIr?=
 =?us-ascii?Q?ElbWpFOQ0NQrGfHZ3lqU1NMdvXkUwXCh83GOcchZ12V/k8QUnfvmAINKu0AQ?=
 =?us-ascii?Q?ItH1rhFUUaBeP9HaAlKY6hyFG/DjalNKUJnmROlCEzS5L7OBEh1pqttje7HR?=
 =?us-ascii?Q?+2p7HP6xZbwasFyBm3gS1X3iw6bFk9fIwoRr3/bj3VtnMb+k1pbjB0O1i8ch?=
 =?us-ascii?Q?8q44Ucyopiam4v+oIXdV/n9Z6ZWF0AKIV0OmzOZXLLKA0eLawrqhGIwn8BlS?=
 =?us-ascii?Q?hALVWWxZpuztqaS1hy/BQbk8Ze0DU4HAtswva1xbvEpKlDJ+tw6QWhYQv2bL?=
 =?us-ascii?Q?BmiOCuTi1BzY7LwjCXEDs3pxIVA6fCIFzl+Ji/4aP+Oy6SMD6pFcGY9YVDfv?=
 =?us-ascii?Q?xA6DftKDfTHgG3RrGWU=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR03MB5950.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?KQ2r2t/NXFBgGv2Umgzy4FSRqVGZzESYrKIzOdFWGGHaGoNu9Tnq0QM7A8K2?=
 =?us-ascii?Q?7qXGofBH/ZYd2BFuMskbB53HMbFxoSDTJOd+L2bnSdf1W5srSFvmM3EWYlRH?=
 =?us-ascii?Q?rSita8smceZsTuqebGxfLUBjykFYieo4ZTb8Xs2E/LLjEcb+diXJPyCL8ZCf?=
 =?us-ascii?Q?58O3vNggC66QWacVqpUL0hg03nMBcQyEoLE0yszZSNZ+MiR2q3Moml2A3Jfi?=
 =?us-ascii?Q?+mFIkAySN2uuQqjci7nCRxEvsLOnKihPHZAQyN1pS+eXFx4CIasrtslbGQLf?=
 =?us-ascii?Q?MSBL910EC5TikuznLzHWu04hp35JoIbWj8JC+8/YdFtZ84lHURoTUknOaevs?=
 =?us-ascii?Q?KQp9iPF6Z/Gi+30rBHDKe8bguik4dfsoMnhEHDAHjOu99+lJte0ZITVXgbqP?=
 =?us-ascii?Q?/3s3lish9Sy16O9q+Azbw/zdb57tH2Yr0SQ8gZER4QXo7GMQKc2hvyWZMmPA?=
 =?us-ascii?Q?h6uPF9K5KAXYYkU/xkNhGMovYgh9BPkJN2Rxw+AdkCMTTyGnz1DA7Zkcge+Q?=
 =?us-ascii?Q?6SlJLJWGeGypcD2mhgACYfF2Jg44GglWXfbgixqMkCUGg+4JXq6AmU2s6PbA?=
 =?us-ascii?Q?CAMaY7nb69Ceb4Zq3hGRH40wVNT25oZMFabi9+HFf1g8eNxtnhhyqSH1+6ny?=
 =?us-ascii?Q?TQ4zxbhThKVCGEAEfFmSrQI7xH9TCGHqqu8mS05R2gMbw/49MN+ORiP4lq97?=
 =?us-ascii?Q?vGCg2tXy9FaEj35QwieZ9744h7e4bpSkpFOTIOvXMsx9e/HysEDpmAGYshk0?=
 =?us-ascii?Q?R2VgeQ8M2bp9LZEU7i/qcdRDGPAJ0+CWXiy6gDfx3Ivigl+cHgP/SfQkubqX?=
 =?us-ascii?Q?8eV5kw/sL8B4l/0Bh8Qwarqjust9mjJhewY7Dv0xo+g6Q8hetBQNNYbY6P/J?=
 =?us-ascii?Q?eKbjmfIe3LnxB2niUcP15O8NceZNZ7ld0gXU2c2KtqThwoUC3MmgiJfmo7FU?=
 =?us-ascii?Q?e6SmceqIpRqNAUOLnZEy9uh/36d3Jrr4T3QKeKJbqMOxs2KQ7gty1OsrnFXs?=
 =?us-ascii?Q?I42ykr/wT53DIEXfyTky5f5Zoy1iwbWm7LPqch6PYe/t6tNk4QO2tGZo2S6C?=
 =?us-ascii?Q?lmOcK83Y2hwkodRcVhxX3YtDqfMbv3LC8t6U83Dtzs3RPZdmBeFD+ObrHd1L?=
 =?us-ascii?Q?RihNrAG+z9EgRN790fGBBrOBWNIyMgwpaPzY+K4fG01hWX0jHas8Ww2IAjBC?=
 =?us-ascii?Q?pA0Z7ERhrmfftD9Cxp6z5BzqHBVElsjQCFAKh6SYt+dEWYPNyP8QtkVnDZjH?=
 =?us-ascii?Q?Y7PXPG3lzphFPkgtHKuJl2voOy4piAdTbcSsJqpiFVsdgqxKh+PZZ6DIKOnC?=
 =?us-ascii?Q?NOMJsyFQ4iXF0ICSayFWWqdlHlyWxtHlvcjCx0hmp/1qTNrQjVK4U3W8u0pd?=
 =?us-ascii?Q?mb1aQphXW6nGzqbc4Y1RI9uQzt2jrWZv8MSzv6w3bbrxqxLmr8azBKhIcQGB?=
 =?us-ascii?Q?8r1MGyW23NtAzWcIhVNyh0ekDFPYoxlHcIZ3613zqggM0mhNEjZ5wMZXMbCS?=
 =?us-ascii?Q?0djnyeD0IKLqGeczjiI9VI2Q14LyzG5ZbA6zuEa+j4yGkb7AVci27kUwmHmH?=
 =?us-ascii?Q?C64skkjuJr9JTlgGiBFrfuPQq+onMMnqASXkUkcyMzCl8W6/ctEs/6dplfNU?=
 =?us-ascii?Q?vonCZ7r9hocZF988NAH+Y52fkhCPuoyGkcTXssEvT1qOPoUlKThplzh/NPnq?=
 =?us-ascii?Q?XAu57Irz+ypM96N4VexNRG5WQbUK+/pboEfa+mTfzB38nayzCRcBn5RQu1Ri?=
 =?us-ascii?Q?I45iLV0CSQ=3D=3D?=
X-OriginatorOrg: altera.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c654626-5505-42f7-49a1-08de582b7bf5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR03MB5950.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2026 13:54:52.1582
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fbd72e03-d4a5-4110-adce-614d51f2077a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U/WyOcl7UAzCZL3X/7kdfOjAvhHm8PKQ28K7FXPWii8LnKyfM8uvMVjuS8zNxB0dhazY7ZIw4XJ49Epe7g8f0Q==
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
	TAGGED_FROM(0.00)[bounces-257429-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,altera.com:email,altera.com:dkim,altera.com:mid]
X-Rspamd-Queue-Id: 451154E4CE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ng Tze Yee <tzeyee.ng@altera.com>

Stratix 10 devkit support a separate eMMC daughter card. Document
Stratix 10 eMMC daughter board compatible.

Signed-off-by: Ng Tze Yee <tzeyee.ng@altera.com>
---
 Documentation/devicetree/bindings/arm/altera.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index db61537b7115..2a8bc85e9be9 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -78,6 +78,7 @@ properties:
         items:
           - enum:
               - altr,socfpga-stratix10-socdk
+              - altr,socfpga-stratix10-socdk-emmc
               - altr,socfpga-stratix10-swvp
           - const: altr,socfpga-stratix10
 
-- 
2.25.1


