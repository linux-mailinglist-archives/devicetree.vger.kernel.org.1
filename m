Return-Path: <devicetree+bounces-11480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A13AF7D5E92
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 01:11:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CC7AF1C20CBA
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 23:11:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD20741E3B;
	Tue, 24 Oct 2023 23:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="U7E1VX2I"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F4E21116
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 23:11:40 +0000 (UTC)
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2136.outbound.protection.outlook.com [40.107.114.136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7C4310D1
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 16:11:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GBnuhLQrOhqaH94NsVnm26vYItT69gxJSmnsM3u2zxVMir5bNUVU+NHUFi2ozHWUFkEm1oysbjnN8lIzvgB+Z09dUmuZbipdDBfYPujwSczYBV/j/b5jJkpRDtPBknxAt2Si+543nfyKsAhjowQdo2iEMpsSabYBUVpOTX7ndlCMc8adoqQPgLqoAvaIBikAYH8Z0wJLpZ4Ut4y+Aw6f4jhSUuXjwW6mGV/BiWQoxIk5WOqsacoAyjyTmKpP7jHBK0p6s1fgii0HPDE+DiOOy6HIiXjGqQyV8WiwR3rt9cHs2blcCP7xXAXx2n+QVCrcWOLEmB4QCZvt9I+iGbz5WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eDp968EzW44juaq/cbSCOICN/F47godgPptmgEOrDwo=;
 b=MiJ9vHPZhyVmA78v8FJcOPLIv064nOR5ntdIIdxnmgZjJ1h5JJUJp+776aOYOarcqoMv7OoSGI77nRoRUgYoE59PbUP/kzxNLyACNGsfOnChbqGawG1CtV1m6MU9XYgcudbgFxKV2c93hA+w5dqBjXuybPRyN2VXwS+M3jUk1I36wmHRuXAnabFaWYChfryf6zmiPywUK3VHcoFs9TdAsE8lDHr8GYTcxcawdVe+qKtaM5BO5/7o7+rxyQU738Dpec2CVJEaICpWcFMQ4K+QYGoooANqrZmnAqps7MZMa8G9IMhAJ2NUd8qNDN1WU8xTpIcNztqyWxr9+TG4wHGQXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eDp968EzW44juaq/cbSCOICN/F47godgPptmgEOrDwo=;
 b=U7E1VX2IcrAqVAk1XkT5tEzQtk9qlmHkZP1c6zPBLfaSzhKb/WT11hbxvSM8iGONvyoYibJfHVwLllRGYtjsPIzQO6q8SNnvPngBtIQnifywQzkPfDQN6WOEzcOxVnRutwYdi8d/j+9/NbJQPfgJLnAyiGSOWrq5bliVHhy5Bdw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by OS7PR01MB11880.jpnprd01.prod.outlook.com (2603:1096:604:239::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Tue, 24 Oct
 2023 23:11:35 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::f7e9:e682:d78b:f55a]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::f7e9:e682:d78b:f55a%3]) with mapi id 15.20.6933.019; Tue, 24 Oct 2023
 23:11:35 +0000
Message-ID: <87il6vbopl.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Cc: Mark Brown <broonie@kernel.org>,
	Bard Liao
 <yung-chuan.liao@linux.intel.com>,
	bard.liao@intel.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jerome Brunet <jbrunet@baylibre.com>,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v5 1/5] ASoC: makes CPU/Codec channel connection map more generic
In-Reply-To: <3ce60545-ba2b-48cc-903d-288d761f2fe3@linux.intel.com>
References: <874jihlx44.wl-kuninori.morimoto.gx@renesas.com>
	<8734y1lx3m.wl-kuninori.morimoto.gx@renesas.com>
	<3ce60545-ba2b-48cc-903d-288d761f2fe3@linux.intel.com>
User-Agent: Wanderlust/2.15.9 Emacs/27.1 Mule/6.0
Content-Type: text/plain; charset=US-ASCII
Date: Tue, 24 Oct 2023 23:11:34 +0000
X-ClientProxiedBy: TY2PR0101CA0042.apcprd01.prod.exchangelabs.com
 (2603:1096:404:8000::28) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|OS7PR01MB11880:EE_
X-MS-Office365-Filtering-Correlation-Id: cc494159-2c2d-4799-3ad5-08dbd4e69153
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	CTk/Sh3GMI6t6pKvldkoYQxrA0omXfMwfJDDbpIMcQINDYAhWrxjR+d+Vjwn45Ugzp+E0qTlSotWYBeogEK7QZI6MHzFJoctkktL3RPmRNZRk2KL245/5lZbBnTF2wcLSrKUkQk4RzRatJ4kXy2COHh5E+cAcISDqYY26SuYl8IYJfMQfTE4hFz+8dmIxRsxMBHFwshYY0BfI7nffhivQSh1Dqsqjy4hlnbFJlXgYIgWT8I0R6dxOFLaaEuqmdzuSm+z21W6t94/CKWyYoa3SavrVCTBFeIX0plBG8HAWpt5woKC+U94N0IRzHk3q83SunTSAc1lOsP95CZTyBnEy5othyrbhYtgKEjp0Y1Lwr9QKBE6+qAWCrxWEC5WWb58ZN34JbfiUw/F8/xJX9fLlZPCmFKPUgIIx3zS5kVlyRUKUxqzCUGdBl0iDINJdYTkbxJw/6UdsCFM+rWb991auek4TXKXvbbMQtmAOAbcahRxTNnHJYudnCcaXZaNvspErcGqvFuNg/GBpTvv9PlE6/o3Tg6F5nN2jUpuVRweiSkAPMD0HTeckl3guSrmgK7xH5ip14TXOyGD9Xto8RY1x8zALeFUyqm3nhpeFpp6lUgKWcCepJUDY3y0I2maw097J02HCxv6AfE9jU+T8EFFFw==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(396003)(136003)(346002)(39860400002)(366004)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(6506007)(6916009)(66946007)(54906003)(316002)(8936002)(8676002)(478600001)(41300700001)(36756003)(66476007)(66556008)(5660300002)(4744005)(86362001)(4326008)(38100700002)(6512007)(2616005)(7416002)(83380400001)(26005)(2906002)(6486002)(52116002)(38350700005)(41533002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?/2YawkGquJcW1b5stjwumPw7FCkwA6oQR8q7T0XX3H9idhTN8tyERwfpWyVd?=
 =?us-ascii?Q?gZutynFBN6WphAC0oMNNTP3kDxN5V0K9dtKBvU6Qm9ROv+VJ0MD+O5NASZJi?=
 =?us-ascii?Q?HAaeC7QGjmI5m7gYw5iWLSUtxDE3OqrYNKiv/vJ8QF0s4dq2MajOkCKNH+30?=
 =?us-ascii?Q?NhB/hu0rWiRGtBfWftD8HGIH8WqmNjKNwsdujsvelffGCuIsqKg9v9NwruLM?=
 =?us-ascii?Q?XbZK9V7bFjmfwd0EjJNIxs2ACxrZNHpVLUjWgkNUFQKezZfkQpI03Vvo7Oj1?=
 =?us-ascii?Q?Izw/bYxnwJmSCwYg/bybrOJOZiU3k4lJs0occ2TgTCRw/8DCgcx3PlgsIOuY?=
 =?us-ascii?Q?iUCtTBBrr9J40wENh67IyuziiMwvLmfTHtox2+2ktWU1FYnymIYRR/gO5VPe?=
 =?us-ascii?Q?WLbF87MSMPAcKsAl4j2xX2+VSp65MpaSBzZzIHfPxoSx+VGnrIPQWdgEyQmB?=
 =?us-ascii?Q?s+CcXlBi0YcJehVsq/WyLIT9cwbqc85j4NONpEe/dIX2830hqJgPIYfwr4Oe?=
 =?us-ascii?Q?OdPRo+8WdGX8XTOyzRn7Vw2de99Gru38pVlcta47seAamUZpKMDszV7+6la4?=
 =?us-ascii?Q?teID45XxTh0ajyxQjiNO8T2vcX9HyA6gknXuqifWYa23GLLNQnQxcsbvsslt?=
 =?us-ascii?Q?At5oUe26wwM79BpSpOvdx0GcKsn3I01uB8jsCejEI+5jBYl5a5M52O6Pidvw?=
 =?us-ascii?Q?HtgVqpeZQvWZgeEa3JGyexMwE6TdAU2I/SqU65Ze3fT6vBW55ci0Ic4xjRRz?=
 =?us-ascii?Q?8+KoFMIIM3ixY89itVPRj4m0W+QNtz4+oU/EyQxVt1zsJDT/ZtJTEttoP+Vj?=
 =?us-ascii?Q?kmxfaO2DgrEWuX86U7SHv/EIFZhSWuItP4Pd0etPtOyGhCRflvo7QUW7o+Sm?=
 =?us-ascii?Q?an8h8KX9snH0mIqRgt+7ZlTXS0EUkZTg9MjUjEvkUrVo44ArWQAeBaJP+7d0?=
 =?us-ascii?Q?8M04gOKKCPIHzRY12WiIc3jLZc57WRAWPQTLC2zGyoeeIaCN01U8DbzQaiCh?=
 =?us-ascii?Q?zNk8lqWXfbFfr2WIb4Rg7m6A137E2UtnLwjmca+5aQk3cku1evZ6DVwryyBG?=
 =?us-ascii?Q?WCQTWpI1MxNZEkpkpfOIYqfcueJEg0Bip0xmrKklvCGd/ezLoBWNlqD/0R2A?=
 =?us-ascii?Q?RQ4T1Ij8bu+W4EASD1RadBtL2KKD5tVRWgkTI5EEx9AyceCXEgaDXz1y7Kfa?=
 =?us-ascii?Q?ClPz8ZYxYsKAR4NyBLaj9PZeswiPVaYo5UmLCRcoK2m9R/YPdNc4X3fPIpip?=
 =?us-ascii?Q?sT8wvAnuPUzu7gmmwE4K8m0rPdojI7q08di0Im5i8exZScsLFDn1Wf5hm417?=
 =?us-ascii?Q?UvrIftZcyhGhSGXwp8m4Zcrpq5CZtf3rY+LJOGhD4e3vVt+/bvvTo5IbPmh0?=
 =?us-ascii?Q?4k9bt2j6XpPOlLznNKydB8RN0rfajIXRNfGkzyckdaJz793KvqQNJKNm730I?=
 =?us-ascii?Q?CuQ0pc4mrovERnKoEQxSsd5CzJZLYuCn+AtfdGBWiAFPFgPLuV7U9paiJMLh?=
 =?us-ascii?Q?5fHNgDClj83PJsTAA3Q5ZiLXKcf9sCyNpu9lGPLTLHgOkLJhblkolzjjNFsd?=
 =?us-ascii?Q?FzN9//e3gTzqqfpU3f1bQsv3BXbmzv3PGqrb81E82AF8znGKt4asCKNVjt9q?=
 =?us-ascii?Q?F/539txZA22dcs9HqeJ687w=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc494159-2c2d-4799-3ad5-08dbd4e69153
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2023 23:11:34.9753
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NJ9rrjV+nULF8IHFrdxHpWW5uYFTp0irR9qD5rqU7oavm5CnSSvZ+Ip+bCKvf2uyCyQSgbP6Z3QsFb0/NHBvN1Cc1lZXYKNAMQlttbs5OJ5DJWRerYF+1DSJ3WDO5TK8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS7PR01MB11880


Hi Pierre-Louis

> The Intel CI did not detect any issues with this patch, see
(snip)
> Tested-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>

Thank you for your test, again !

> Note however the -W1 error below

Thanks. Will fix in v6


Thank you for your help !!

Best regards
---
Kuninori Morimoto

