Return-Path: <devicetree+bounces-10235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B48AA7D059A
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 01:56:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ABC101F234CF
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 23:56:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECF9B45F7D;
	Thu, 19 Oct 2023 23:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="pQ9TsKK5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2B91321AA
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 23:55:57 +0000 (UTC)
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2100.outbound.protection.outlook.com [40.107.113.100])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA88A18A
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 16:55:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BasLV0G5L/4d+PbD2qlfsL8BIkE3YioytbXTgKF34JmWL0e8CI5CQn5O4EMR3vsRDFVq5XKRkIlaqoyZel5M/80EvJntP+j2QklYrVyHrHQB/mR2qz/z7AikxdrJUonlrVl0O94u0ZpKNJLrCRP9Ak89siOjsnfVzWh6BWWaIwvzIQ0GdqRqEF35pDMLzrB/VcyY8L35IG5s0kAKIdwiJ6UJjAVORPHQ5M/P1hnw+8fwmOwwLxzSigv88otgcrn7zmAdnS4qQ8i9sLt3wWqbbMI5xY1xVYfSa/hYHcV4ikc6iQLBwCb6tR3JqZKPc+syST31GQKeILtBR2ZsG4VbOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FzLz0goVMtgZFQhGAGhKvCgtv01XgWArnOPZaNoVKYs=;
 b=kvI57qfIN4kdB3k6Mf/S6JwzaFt2d1r0n1eLOQQnmT3M5JNA7yrOKk60TGvQZ02hkPN/IdQ630ITKoKX3hU2f8ztfH42DLLynNL+FDq31TYyJxGKpwXLZG7I8ZvUNuTegfRKINVYDSfpyArfprXdw1YIJ2o7wqfWzyAvIvlE5NFDaR4M+g/SILWcIZC3EF99d/2D52ohHT0S50BfyJGj8j0ofjPjuhb9m2KwfwxgILOqoiMtHwF6/cdoiWpYTVDgBGroAxtRHtOlG2QXRT/gKCXeDRSZ3qo6p67udePSXM8rXPdDwLL7qQbI22UTOcwUfeUR1UTMc3R0EQFQvRsNJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FzLz0goVMtgZFQhGAGhKvCgtv01XgWArnOPZaNoVKYs=;
 b=pQ9TsKK5dDuQ3mbl9estw/IS15wEJ9WxwCjvDqjCDKuI10u/qzmRHSwJCEkW28iPhNgVIKLPydfJi2JoRnu1BlYmdH/4oI0uRWMgxjDEfgUh7DsX/5FSyiJr/molDEzPQiwnuzdvjk3ZS8CCgO/rFernStdqaVDhORIbLOHOodk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by OSRPR01MB11488.jpnprd01.prod.outlook.com (2603:1096:604:235::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Thu, 19 Oct
 2023 23:55:51 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::d2a3:45df:a180:595c]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::d2a3:45df:a180:595c%6]) with mapi id 15.20.6907.025; Thu, 19 Oct 2023
 23:55:51 +0000
Message-ID: <87a5seqi9l.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Cc: Bard Liao <yung-chuan.liao@linux.intel.com>,
	bard.liao@intel.com,
	Mark Brown <broonie@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jerome Brunet <jbrunet@baylibre.com>,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH][TEST-REQUEST] ASoC: makes CPU/Codec channel connection map more generic
In-Reply-To: <246c670b-1d98-454e-b0d3-0fa40f7c5e03@linux.intel.com>
References: <87zg0jwdnz.wl-kuninori.morimoto.gx@renesas.com>
	<87y1g3wdng.wl-kuninori.morimoto.gx@renesas.com>
	<d3c97c54-d149-4bed-9013-3f07bc6a7f52@linux.intel.com>
	<874jiokg1r.wl-kuninori.morimoto.gx@renesas.com>
	<5667241d-6976-4b44-8edd-79ee426415eb@linux.intel.com>
	<8734y8kd1a.wl-kuninori.morimoto.gx@renesas.com>
	<87y1fzpdxe.wl-kuninori.morimoto.gx@renesas.com>
	<87wmvjpdut.wl-kuninori.morimoto.gx@renesas.com>
	<246c670b-1d98-454e-b0d3-0fa40f7c5e03@linux.intel.com>
User-Agent: Wanderlust/2.15.9 Emacs/27.1 Mule/6.0
Content-Type: text/plain; charset=US-ASCII
Date: Thu, 19 Oct 2023 23:55:51 +0000
X-ClientProxiedBy: TYCP286CA0050.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:2b5::8) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|OSRPR01MB11488:EE_
X-MS-Office365-Filtering-Correlation-Id: 46e39f23-2642-4b57-c6d2-08dbd0feecba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	RAuk8jRsvu8LA9Z3D/ZC7HBSKenYSMx8/AEhrFou4OsbAMKWyp46e2gXo84bORmjAzYAmyz0Czkb/c6xVix6o2TxFc/qa4Ou9ri05JYQifmOae/k6cVf7PatKht80RG+szDAuTtuze1py1pfysL78zUsDeZ8USjr2cPZiKk0OsqYPzeU16wQ5mv7EO6swSHfQ5rmP+C+VeZqof1QGoNhkzWzvTZxEq0nD7/ErIwOUDMjmp2G1phmbI2adokY06WuOAwYGc4HJyHByZaEiVmuAJIA4VKHc78hZhsMAB8XV4eV+lvG4gjDCKFtGR2b+Iy6lIvuoW699t7LFx16sawDh7R5tPMKNJN6P7QOlCvKsVC0/imtSQtyFy/3iJVpZsQjYejbqkw17binx4x6zuZzHC/VpGwpBDD/aQmORmvcviLHPP9e9FYY8XT3z2MpE1mY9PWBaO1sEGVvzOk25NKMreIwxWzqEklQuUC53u1Pq7a8RoFgW7CKVCtU4hq+S6el9hv/aMeRq/asijveEcvIBl1dkGrncJiA9beqJgASZEKGfL4S/D9DmDzpBR2yb79wAvMHJaji09JJ6gYUmC9ouaSgoSxxQsGs4NVVJd6Iddmu8VsXrfjmKhrT/TiwKPlcv4XXNFpZr4x5Iugv5RWSAw==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(396003)(376002)(39860400002)(366004)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(66946007)(66556008)(54906003)(66476007)(478600001)(6916009)(316002)(6486002)(41300700001)(38350700005)(5660300002)(8936002)(8676002)(52116002)(4326008)(86362001)(558084003)(38100700002)(7416002)(2906002)(36756003)(83380400001)(6506007)(6512007)(26005)(2616005)(41533002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?37POOELk8DN0RS//6FbEcK9wMewbUWFxwVGbStJkuxyAX19qt3MSLF73pTYB?=
 =?us-ascii?Q?n83HfS1lwYOWH7sFnTHCvMx64dY9ey5J5sYHxnrxd35hbRlHn1eeM6L2pPri?=
 =?us-ascii?Q?f8GexyOVYHLxhRiMg5BJEI1EOxr1seDQBSXKQH8B9BgX58oKGJNkkt+Thggp?=
 =?us-ascii?Q?KeeS3ht1l7w/I5NkbTpAUlLz9Do2A/iyYW1mLReZdxPMJceAZ/0kKWnGnpTn?=
 =?us-ascii?Q?o7BTDr9RDJ2R7Fii84mrQlJEKxeNR5amND0yNfLCGaYTY+D6TB4iOnh+Yhip?=
 =?us-ascii?Q?2UujYCJUeDb+yUUBSyL+gtL2nn85mY3jVLXhzK7yVj6sKpxwkv0mDj7rvsVz?=
 =?us-ascii?Q?oM49YZqGbQM3S8NZTTDmQLUhHhhe0T1QaM0WpkZGBTkyaesQTJUUMWBft23e?=
 =?us-ascii?Q?x8fqR2fSPJUkgUYYoH5G2o2JFHKKLXMA/f7KRwPgWpC6fLjxs7o7Mgn2BAw3?=
 =?us-ascii?Q?m+0xvBATSrV+gNo+jre+KKIVCPKUXTF7HWZ0szsj0WOH0bOmWIOSMj/y7iFz?=
 =?us-ascii?Q?ntkZkPcNCAK9zRxvstjRJK1Taans9js2NGEpFtJlJDLmmK+jKRrovn5fKOGo?=
 =?us-ascii?Q?5nbUeFPkQjb/R1eyONMuoMv9LA6jT1JUvQT5QTS5d/AC6IufWzEn9s5KQm3L?=
 =?us-ascii?Q?7iqwSPg+ECiXD87+spoVEZDdPaewlvgumdvU/s8TNunn4vi9h0DDF8qXVDjX?=
 =?us-ascii?Q?ui8EAhqqsp4H4Spa6G1N1sfcSORvxkjnYWpiSCcS1xXIfK3jVzoMlfSTOS8o?=
 =?us-ascii?Q?FxepXA3pIXm069B7H8PxQGEx7Q+VrIsrBb59B4ZkZcv1b/F7Mbxv6WA1UiF7?=
 =?us-ascii?Q?J4i2SwLgKiGm2knR7Zc1pP61xGZmjyeEjTlrhSmxebW6zEzjLwkDHnKCopyw?=
 =?us-ascii?Q?2Eyrb165qsfZ/qK/oduKMQQ3ADIWkPwQjFqoGSJksgKZjfE1S+mm3q2KklFD?=
 =?us-ascii?Q?3Eur5tL7tpm5RiKy+okZAqS90pc4+Io0HY7kKugzVqJ70kOpzyRAhnXtrPCw?=
 =?us-ascii?Q?5VxjJO+w36+Y1zHAJjBAdr4Btd4MDpmga5+rflxQQ5gbARIzsGhmdmKsi9is?=
 =?us-ascii?Q?gDEFd2xQm6BB9A1EyZkkVrGpSceq4lpRh14esFR6NLaE5UCpSbCaVCmLdI4S?=
 =?us-ascii?Q?lpHzdnnn1+wFMh5387QkdBcWkd1TTtdmi+FFZgouZdFyPJKtetW0aZpQLA7B?=
 =?us-ascii?Q?1i4mNWdXo2+q/+Tmaqa+ZyU3fkost603olPflXasNuqmMtNbfMUAIqSBDtg9?=
 =?us-ascii?Q?Q/OP/SPjzY2n8uiF6ey4m7BTEQcIytpkPf8Mv2Wcw/idnv/K6r/9H/znof4U?=
 =?us-ascii?Q?CwsAu2onWWv4lGxrE5pW2NHsN1eZkTcm8kXwLFTqxrCZSAaS4itYtbbEKi69?=
 =?us-ascii?Q?3k1u3upmkqgnDhs3IgYl522mhpoPtzIEI3BQinewCcSTsCXR0bbphIiKCov3?=
 =?us-ascii?Q?noTkT3ewsT0mq6mkJk4kJDVOH1xydG6wphOQB51/9JPsz01mNExPPmgCxOFT?=
 =?us-ascii?Q?D8CSMXLJ7qN7tY0UcPFwA7LyhARqPAvk/2DBt5aP9qIEQIhnoQbKDHTjnWa3?=
 =?us-ascii?Q?FLANy2JTwVts+l2zrZV0nto21K+7uYPcdwWidQI2u3u6xmx+4zYDrbSUmZ7v?=
 =?us-ascii?Q?VizQ9u2GHhRLH/rIW3VyEX8=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46e39f23-2642-4b57-c6d2-08dbd0feecba
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2023 23:55:51.6060
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OstqADjHCHtCd1eTxlfjl+6Y+HX96jt9UUaj++HVPci9JJiiAurISbTSfKb1j62A+J3GZiS+T1DIs+pPsEgOyz3OmKwwPMNcL1symU8ELj1Jn7D5Eyea2w0rsIoJ1gIA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSRPR01MB11488


Hi Pierre-Louis

> No issues detected with this patch by the Intel CI (other than the usual
> suspend-resume timeouts that have nothing to do with this patch), see
(snip)
> Tested-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>

Thank you for your test

Best regards
---
Kuninori Morimoto

