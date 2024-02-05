Return-Path: <devicetree+bounces-38440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A769E84920F
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 01:40:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C12EC1C21205
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 00:40:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26BD38831;
	Mon,  5 Feb 2024 00:39:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="Kqa58pc6"
X-Original-To: devicetree@vger.kernel.org
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on2107.outbound.protection.outlook.com [40.107.113.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2EEE79CF
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 00:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.113.107
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707093598; cv=fail; b=GKw4RFI2X0hHj4AgT93qDprn0UZqmzzNuHPNOPuWwKoDFWwIaWMnPEdQhcCMX5w9OdBjj2jVjDeWbmjnxfWRPpT6gW+KgJ1gnNwoQ11BZWJYPbevdELLwU6hueb372AtsTGW7ZEJCfIPv6Alex7LlEkDeLVj+ILwlZEJsWMRNyg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707093598; c=relaxed/simple;
	bh=h5wAcfx7aMN+ilCSWVxnnVdd0QHf3k7HHtBsZd2+10I=;
	h=Message-ID:From:To:Cc:Subject:In-Reply-To:References:Content-Type:
	 Date:MIME-Version; b=f7phcffsVoD8n1S9IZ0Uh9X5ZglMDSLy77VXdrMhOXOIc9rtB9sP12Pw++BWRhfYr3qUWkX4/uZ+WkSuW8bYySd8AASGZ0t3l/Tq0dnF6oNmqcBmzDD2iyHQNJ6g9PmxrK07qE9Eiz4ciiDkhI2+Q+uuhDRmpJpaI12sT2HJv/g=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com; spf=pass smtp.mailfrom=renesas.com; dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b=Kqa58pc6; arc=fail smtp.client-ip=40.107.113.107
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=renesas.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=renesas.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MrhJ3My00E/CEI6srwjw52Cv6/3sZ2rn4cMdJOmGc/3pdamRNmXWwG++d24OEVYmaE/b5VkxlnGFQ8Ahxdh/iu47QxlM3rASvyaVtQaLgmOxL0cA+SlfQkWw4hnXQdvOcjcQ5jFLyKZtA0q7uZNDTed3LjmyXprw3TLDj/lPYaZ/8oiWILIXZGG/5D9zMp3kUM+PKLefWw4T51C7xbcX+b8iRf2groLjAeErNjZtqbBiorvzu7ELTC5EQ5IYIBthxQu/jvVwAlbj8gEIyZeFgDCyiOIh3uB5XMqjOA+JdOKdErmj0r7wpVBX9Brt+0wThtBGwZNjYYqTX4DP6QqpPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=szjbzkz68p6vwtfBPELpgNlPo3xNGL9mKxVi7GwlrqY=;
 b=JviOaFPNCP0wwRSBsmTnamboGX443UEhjDlm7bgyOcHYG7Sb4rpZjSFNQhBEBWGb2e/c2oodxUJp9M7ohfSOtM16TIN2QNmWHHVDThfyR8xO0lz9lvnOHoqdXDnCg0YZ/2NVHSlujRlW4dpTu7WPd203RTwCMs3Q+ziNwybJMCcWaD0ZrU9fMNjc0sKUIhkxufvKbTpoHgMIueOarH9HM98Skf95pVlmF/Bgpc8RSJk2oP1vBgxiIGs8DgUJ7tP29e3nXwoalkwaGws8AuuCjl71hbRqWISwWEA1fRDUmIJSVhBLU8EVn2xwm8enCcjd6mQ3TfrXWOLF7i6eInyHWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=szjbzkz68p6vwtfBPELpgNlPo3xNGL9mKxVi7GwlrqY=;
 b=Kqa58pc6UfVUunMeBBkrRYDfNbp3/zNN1gsEVgSYURzQfKobojP+fXj1vl6hZ7oDKJ09MTPW5H6wa93WN/i1AEu9uppNNJRZySjf+8FuXqSGsFN87vMigh5Y+og4NX2SG/bPS7uQ4ATdV0mmhTlvU2KheFdworv/nLHVUijRCQE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11) by TY1PR01MB10801.jpnprd01.prod.outlook.com
 (2603:1096:400:327::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.15; Mon, 5 Feb
 2024 00:39:52 +0000
Received: from TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::4d0b:6738:dc2b:51c8]) by TYCPR01MB10914.jpnprd01.prod.outlook.com
 ([fe80::4d0b:6738:dc2b:51c8%6]) with mapi id 15.20.7249.032; Mon, 5 Feb 2024
 00:39:52 +0000
Message-ID: <87zfwfd9rb.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Frank Rowand <frowand.list@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH 2/2] of: property: use unsigned int return on of_graph_get_endpoint_count()
In-Reply-To: <20240204092002.GI3094@pendragon.ideasonboard.com>
References: <87h6irs8fp.wl-kuninori.morimoto.gx@renesas.com>
	<20240204092002.GI3094@pendragon.ideasonboard.com>
User-Agent: Wanderlust/2.15.9 Emacs/27.1 Mule/6.0
Content-Type: text/plain; charset=US-ASCII
Date: Mon, 5 Feb 2024 00:39:52 +0000
X-ClientProxiedBy: TY2PR02CA0037.apcprd02.prod.outlook.com
 (2603:1096:404:a6::25) To TYCPR01MB10914.jpnprd01.prod.outlook.com
 (2603:1096:400:3a9::11)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYCPR01MB10914:EE_|TY1PR01MB10801:EE_
X-MS-Office365-Filtering-Correlation-Id: f30b053f-9474-4260-88db-08dc25e2f78f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	6D3FAFnC+VHqnRxAiOVCBwYzP1L1iM0okm8JvZy1NW7lQ15G/lz2YXhn/f5Wgw5VLZSocIN9HGWn4SkLUL+4w83o5Y8rNvRzYyCpAykvX5v/AmKk8lDl3xmTvOyFwD5VQo2Ro/CNj26R0OGsuw1hFI7abyCPWPJgcoV2GFZb/hEm2cXt9qry1qm+Gf+C2vVLHwoSVm2tiMMuhLjE+89fRLYXprv6z5qejhHdQzZKDR6XwzyPKPOzwLr4To5ESQH0mH50v2KKGgAaBn/u/1ZtaJgJDoE+alu8SRQMIEZP11Aw8rwjtHsfTPlg1mtr+6Ke8qkY6v1Cua1wofV2NOR0Mlv6f+V27Rn0IKQjHAfkCHFyHJaJqvNtiW9lrV8b7RaKoovhuO8XSi4DZPZs16StJC2FVB7oS6BmnMHNpVviRWD3xQZtBM/Ec6Kz9aRBrusoS1B1qYSjTHfr7jN0exUVMzdYVPrhvdnTxhrRF46MN55NVzi7u76aDvSyua8aCzs11UKxh8ZIPbikvDeIljcOEEQg0Xi1NMf/Mlbm4teO36BL9fTbfeED7sQEvCY7O/r2wEgKbli1mMwJnlpi7m9lOgwJQu5d4kEtzkeIAT64CpEBhP3NYsv559kDx+UZTJ3l
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYCPR01MB10914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(39860400002)(366004)(346002)(396003)(136003)(230273577357003)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(6512007)(38350700005)(86362001)(36756003)(66556008)(478600001)(66476007)(66946007)(52116002)(26005)(6506007)(83380400001)(54906003)(316002)(6916009)(41300700001)(8936002)(2616005)(38100700002)(6486002)(8676002)(4326008)(5660300002)(4744005)(2906002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?gssyJYB3z/FY4qN2MpYZPdr7zkiCtCp8UB8No1/cmPQxkYw2GP8dz7HcXfEj?=
 =?us-ascii?Q?eipMR4xfQfbWWWacpnjyE+uFhKkOTc5OfbzmCMSBT9H539gfozYHSWBBA0TQ?=
 =?us-ascii?Q?Ck6iey1Xrx7jReaYa9qcGEXjotsl4OuqFGERJ6/o0A7gruylL3ycHulI34mc?=
 =?us-ascii?Q?tSKVgMQHm8ROpT3pTE9GwlXDwfmbbBGSAFTE1jLzML2L05+2HcEGFM0JM796?=
 =?us-ascii?Q?6EAI0xMkzqcPtgg5VGQKiITmB8WoZaC3UZt381Z+of31L4p7ln2JxwzT09DK?=
 =?us-ascii?Q?6P47h8uIAt4xJOCt21zMCegGjjnh6BT2BOyc9KMOFwEjr0S3Oqq0Y+r8FOJW?=
 =?us-ascii?Q?gevgMR+Li9dR38LL6PzU5kzTMF/62icpU0+rXj7KJiaAThMJJmqvkbLrr8gp?=
 =?us-ascii?Q?fAUii6dbMq4dK/BAOGoPM+A05s/sCqR/5mF8d3VgsK0tEJs9jMWXp1NRGPS6?=
 =?us-ascii?Q?HuWKZNxooFIUdodrrFP1NWEoMnlFGD+VrRhgYGo/hfhbQ+pu3vzNWKsrdQpl?=
 =?us-ascii?Q?Snb3I0LPIqDDLw9iabna9cUt71RbT9JvjTTAO/nPsi+S0iV36a6DrxGKE1mz?=
 =?us-ascii?Q?nnwojWJYmdEER4jQn+iKvtl1FAl9OnFhcPpiiLi+dBzv/dqHoJVml2x4v4gR?=
 =?us-ascii?Q?FVbvAmf3ilUNbiNEd/DCX5AWsEHpHbfDw5u+dGRPkpc4MfMum3HoK3Vd6xXe?=
 =?us-ascii?Q?mtqZQVG3JTAVwGBgxZ6mLCasP5CiKIv7JMShWRzj3MnBO+TMC7Nwr6DjzJlb?=
 =?us-ascii?Q?ePkssQXJLeTjGGPumiG/+CRH9dtPVxTmc/tROnIaWaS2Tu7jtlG5sSGqQsJc?=
 =?us-ascii?Q?D/gt0/wFpKXl7ftgikIPphz8Ev91pOgJtZWgTt4KmXBb98EaMevXdz/VvqIA?=
 =?us-ascii?Q?KQfOEsm8FNqTcdMKVaYSLAQ/b6OtXIlJCDTqD8gnOnPnsEWFzzQDAdOvA9ZR?=
 =?us-ascii?Q?CA56oDpeF/OT/6Acdpf1bvBf82dxuymg9tnf9OTuGPf+3QO086RNgJWcp7FH?=
 =?us-ascii?Q?U906Edmki8tkm3q0lxaJxNc34R/F/KlETwYVn9+dNu6FRp+mPE0ny6Mtpe7a?=
 =?us-ascii?Q?5ggOmjpej2QOSoLF368TxRqgp2K9Z/ja0kzI1eoxmw8gJcy9PcNL9PC0thGy?=
 =?us-ascii?Q?UIgVcu/h57onNtF6KNLeM77BF2cwLT/K4ENHMEhl76ILVGmo0ro13jwmkCfp?=
 =?us-ascii?Q?nB6D9/WmbmkJj+HnnpDoa7kiW34PGBZG2TvzYXiBxooON7TYWuy5PCNgORBN?=
 =?us-ascii?Q?1yEFy8xVPQpCa5VHxiZqwLNu8NTqBSZr199j2jrX6YVud1Nb0sGGygoJdofY?=
 =?us-ascii?Q?j8rozH9IOpWM1GLcAf6lQuTOwZ8EDh7flAFmiHYK6tAOX807XF/gfsFM5Maj?=
 =?us-ascii?Q?0xul/nJahZ33NKozjR1f0f4pljE4DtJkFk/7j7ywOUO6D7KFOy32DffqQKKO?=
 =?us-ascii?Q?tMAES4c40E6Q7U8h8CXhAIoW05zGxzMc97SnKOh04432BavJ+kgnNK3SzBD5?=
 =?us-ascii?Q?VK5iK+D84TouDXe9Xsz/WlzGFr+yUfZ1PRXGma/B+i38Pw836/BqHqZ95/eQ?=
 =?us-ascii?Q?CvmoVqX+RmNPmBsvyLLNapGIvG/ZAs/fuQMcz9OxYsofRCDyzwhzjZyPLqrt?=
 =?us-ascii?Q?aBJ882NkBRu96CK/mOWDRr0=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f30b053f-9474-4260-88db-08dc25e2f78f
X-MS-Exchange-CrossTenant-AuthSource: TYCPR01MB10914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2024 00:39:52.7168
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AhVrarwGDW1Du3w5HMjzyb68ivS8MrAAMeRWCKM2HWRlGNIHc6IC7+bAzYF9XGIpisvWmQnNYyLRfRiTbUE0sH5MbCuGGx61TA1sAvRmPzh+SPagVr/VpfB3RV9eKnS/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY1PR01MB10801


Hi Laurent

> > Because of of_graph_get_endpoint_count() doesn't report error,
> > just return count of endpoint, the return type should be unsigned.
> > Tidyup it.
> 
> I've briefly checked the callers and none of them seem to check if the
> return value is < 0. We may want to update them to store the returned
> value in an unsigned int variable, but that could be done separately.

Yes, it is one of my concern. This kind of change for example
"int vs unsigned int" / "pointer vs const pointer" might be big compile
warning/error. So I don't want to aggressive update it :(

Thank you for your review.

Best regards
---
Renesas Electronics
Ph.D. Kuninori Morimoto

