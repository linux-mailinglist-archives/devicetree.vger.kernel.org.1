Return-Path: <devicetree+bounces-11485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 768B67D5F6C
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 03:14:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 20C4A2817DC
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 01:14:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 360BB1369;
	Wed, 25 Oct 2023 01:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="XNFgUWmv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF0B15B5
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:14:47 +0000 (UTC)
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2115.outbound.protection.outlook.com [40.107.114.115])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E23A210D7
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 18:14:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dQ0L0iJPnO0xLX4XpQS3zQd0jne2tMg4MFz0vNwxT/X57mCAGeIRjiFqLGTw9UmUOSTvfO0O2kYlb8keNTW1nQaIZxKe77y3HWrSms3tXCFDH3dxzh35OhTwk+692fCGs+Jt10OrdcPbPKIxb5opYN3QO8mOV7WNAeLiRvW3OTRDPDKtHeorld1dxCZO6p9OG2LJ71tjMPRpG7geYe+0S6d2AmL11PgIMaExpMNKdys7qwLlrwprhBEjK6AXzAj0PL9xncF3L132Sp7fdWCOdIWWTIs9Vx1Dymxi3Ot0GW8q+WHZhhbGiXPs2BPXJRuJAL6umZQuFz5Fb5QQSqR5BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4Oui8/ZO66jkUnfF9sRfekVusYeuLC3Ff3WWinFCt1Y=;
 b=Viu1CcVx3+AlE5LBhHrsaFe15z+HvwtE6hQYW0zPsTQcL6hSOaa0SEg72vT90OWiNww5vOjFPN7MlsUXOj7TDHy6DoxkTNtMy82IN0BQUXZClpTBBgGhZdZ4dvucbPQCho6T2/0cVTdqGXr8z67o6VTKer1djIWpjCETnnrUatw66C7ogD0My76BGsb1qW/ArkPS1pI3fOHw7YozoqPgpw/3216CLSyDgo3EIWV2RCgrQ9Snnw/B0L4aWf7mEo1dVpc1XkGovwH/mETITOfONZhZX67fnZCGXRGpyTizDQYMnffVezpknB1Q3HHPAwjFQ94ocROP7Im3A2G27h+uzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Oui8/ZO66jkUnfF9sRfekVusYeuLC3Ff3WWinFCt1Y=;
 b=XNFgUWmvxuSUeuCmvoKaKG7G0XMjCNU/5yloeY5nPbrHMUeZPK8j/TY9ySu6zExbYaFR735cflBl6YuTPE9+Ef/L10ubRALMcEg6s2S/LxYxxkrBIu8LnTXjUICp3163/O0qIhNWMQv/mUI2dAEotqv5cDUDpkX14mayANWVvYc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by OSZPR01MB8766.jpnprd01.prod.outlook.com (2603:1096:604:157::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.31; Wed, 25 Oct
 2023 01:14:41 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::f7e9:e682:d78b:f55a]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::f7e9:e682:d78b:f55a%3]) with mapi id 15.20.6933.019; Wed, 25 Oct 2023
 01:14:41 +0000
Message-ID: <87h6mfbj0g.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Conor Dooley <conor@kernel.org>
Cc: Mark Brown <broonie@kernel.org>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Bard Liao <yung-chuan.liao@linux.intel.com>,
	bard.liao@intel.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jerome Brunet <jbrunet@baylibre.com>,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v5 5/5] dt-bindings: audio-graph-port: add ch-map-idx property
In-Reply-To: <20231024-tug-marbled-3302a66e4894@spud>
References: <874jihlx44.wl-kuninori.morimoto.gx@renesas.com>
	<87wmvdkiif.wl-kuninori.morimoto.gx@renesas.com>
	<20231023-security-tadpole-8b4fd45a96da@spud>
	<4565f60c-ee6b-442a-b509-e54e60cf77ae@sirena.org.uk>
	<20231024-tug-marbled-3302a66e4894@spud>
User-Agent: Wanderlust/2.15.9 Emacs/27.1 Mule/6.0
Content-Type: text/plain; charset=US-ASCII
Date: Wed, 25 Oct 2023 01:14:40 +0000
X-ClientProxiedBy: TYCP286CA0294.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:3c8::6) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|OSZPR01MB8766:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ef94300-acb1-4bef-3b3b-08dbd4f7c374
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	Md0wxHUXGIdRGCSMECeVVRvxZHbV/BXwL0N6ayf9bYBN39H8Q8LRIrJ5nnrW+AjeZNy0OyJnU6FwpqsaztrMwapLIbfHsd3MZzUhtMKNAcS4FOIhCiraFt/3G5RX/FCn6Vhu5mVQdZO/mCRtwnFgE87abXxN3EIQ5SxKWgaVyC8XR16iWQfUKt4+C/2fpWM6pBhi7Udu1GnXXN+Xu59LUu0B/NJgHl3Q2cu7eK1rwBi5AN9NI2ORFQ5xdw1Dt1t96S0Rw5cEG5EDBJDnxYHjTRkuRTmpbebp/rV/z8TzcAIJOybfJhLLPb0Dyq1xzmFx27IN4MpK5y/RKBJ3atwNXYNdh1WdAdvnjXGZE9yom9DnZ27I9E4rlzysAHhvFEhreczKzboX2e5vkkev0jZI3x35k09cRXw3h6mctRyi9keN0/6gih3bsqPDQZQpzONPWTvPJXF/nYcsFsGaduKMPBVOQjDWbbArdUodcbOvMOYptq+BMLjW6YOEh4LdhCCfVnsI1O31+2NIlWROeOKfNBKq6FsRnV3Gc9e4e7B5CGuSm0yr5LwZqkmhLwYZVWOZyZSS8k5P6SQKW9ZGnb+EapXINaRoLgiIpmgEFbmSFERi8Whggj7qkCrY4uMDHE4uOLhXSKjzaYLriP9FdS4HOw==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(346002)(136003)(376002)(39860400002)(366004)(230922051799003)(451199024)(1800799009)(64100799003)(186009)(4744005)(2906002)(38100700002)(54906003)(2013699003)(316002)(66476007)(66556008)(66946007)(6506007)(478600001)(6916009)(6512007)(52116002)(6486002)(2616005)(36756003)(4326008)(86362001)(41300700001)(5660300002)(7416002)(8676002)(38350700005)(8936002)(26005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?kPT7onaOLPgMuEqUc3mhEbGojN3d2kxA//uw+YgelEbtnyvLEePLc1ip8yBC?=
 =?us-ascii?Q?ExXNNaNteLIEQ6im7RVXNudlyuP66K2e8S63azPeXl6Mo1Gl74+nfNEvy9Zx?=
 =?us-ascii?Q?F2DNteP+TPE76tWhuWuIiDzZQnRAvjT42fwxs+g71FSQfezek9CUByLUsHrD?=
 =?us-ascii?Q?A5GJ1eiqZXj7hzX9WAlLVFOyyxTTVYQcS4w+uJKLIG0roHJbIRWDQwdJzb44?=
 =?us-ascii?Q?mRi3tR+Oq3+Bq3VWp/5KdRb+WVfXRfsic/huTgi98AjdOA5auzmN5Mmm9FAf?=
 =?us-ascii?Q?oJwPZsiHxXva3NOTD2L0r/nrPaNjwHLnrfbgaV7JACn16Psm+b9db7F+71//?=
 =?us-ascii?Q?YCCbrGmhkpLfBVAnDwVVMB1ssf8PgA3MchQmlXt1NukGi5g6Q2XL42WBocYo?=
 =?us-ascii?Q?EKIO2gYoXWEKh+s40ix1IHgtulNw2g89UUNuyEvOod29PQb2cubeEmr8xvq9?=
 =?us-ascii?Q?7DCRr6nX5wSpWwV+M6LhdQQhIic9V/8aLRx8NoOi4n1qe0TgCxf5TeD0awv/?=
 =?us-ascii?Q?3DzgZZR16L6ABoNX+mZEHIayziOsUOuj9cPNcszsJWNgN/PTZRSKLjbS5PXX?=
 =?us-ascii?Q?hK1QlelifGP6sjNqgktI+7o+kcM0Q/yEp65sf277DK6e5ixE8tXq2GEAKaIZ?=
 =?us-ascii?Q?lttBsLdQTznSHoJYMB/N8mYuSnYmqriO9Ap3IvUlybe0xujSDIwX1BtZV9VW?=
 =?us-ascii?Q?VEBPedbLVHsPY2ffSXXvQtFX25M+oqWkW0kjcX5naBNkoh0VmnYatg3kKjGV?=
 =?us-ascii?Q?Z4P4vynr/5hhyciuKjDDjokT4G8UDcMkvmdcwG9JrmOugnsguJaD4fUiYoS7?=
 =?us-ascii?Q?INHDu8GXLVn7XzSn5I901iqQwln6/bP85Ox9VARcY3jScm9isP5rpMNJpCwR?=
 =?us-ascii?Q?lLwShwW9TRBLNF1Gh9GoGAnSW2GIuQbgDXif98qg0sDqJco413MNIKNnenYg?=
 =?us-ascii?Q?oG1u0RMT5RiWEMVZ8H52qkOTxfrD2wUv4fHl3FVboFvji59YAQyozuaGe+FZ?=
 =?us-ascii?Q?PbD3Sf8GWFhzsHsxtSnr1EaODWM8gDQl9LpG67cnpGvtJOgBFxyyG9tQWl7v?=
 =?us-ascii?Q?iJMxTgo6Oo4SzDx14NgUlf/cQtO8u4jL/rMyyStrq+Ff75HYJ2YJFCP3oFPL?=
 =?us-ascii?Q?CpJuV2NaDL0t7KtIV6P1FxYiXGVePITVYRt+xeGzoTEd7cIqkjwEpT4Mm4Um?=
 =?us-ascii?Q?xKtLMSJ8hfZq+WfubQ6Zm2/Huqdj9HajNIUDZ2T8OD9fKK1JJzrLWsztUWf5?=
 =?us-ascii?Q?b/9R3SvDM+JKyktlhqyDJi9YpqYyTUxoz8NyJEwny2Ix4JMbzqruBWzMnRy9?=
 =?us-ascii?Q?6IpDUqJY6cC+fWev+1LnSCZP1kWwq5GCV4ZqsvLSUEyWwxO4s6y9l5jD2LtT?=
 =?us-ascii?Q?e84maPtc0ACQHyPJ1vyUciwLNqFlrdsTYwlcOobBEye25byzLnsUXbs6rLUA?=
 =?us-ascii?Q?DG5v37fQafhlklBFui/UZ/lv1UvW5e4tcgCUk91CKrsMS4GplbPzrszjuTaU?=
 =?us-ascii?Q?H167YLc2IcEWL8P6jT5lRZohUr9ALW+mg3H1aW5//DbFDS90J/7mEfZrtGS8?=
 =?us-ascii?Q?OwbNQFs4DEJmrhGymSO76GGuscUPL37x0Lc/ZjXtuMvWv0SZPSuTHS+3HRpC?=
 =?us-ascii?Q?FSRLbSZSfuJ7PUrTu8FdEpM=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ef94300-acb1-4bef-3b3b-08dbd4f7c374
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2023 01:14:41.5837
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hLZyeV/Z6VdNaLKqqgOb0OmoSfbxh4HRDDiH5DOhcyHmmKzLwT0ibIr02JzqbY6faAd3TOjwtzszrm1NY8e0++AJEJxkCb6AJ53NaA6XtyXhA1fyy/PX+3iB4iZUkWiv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSZPR01MB8766


Hi Mark, Conor

Thank you for your feedbacks.

> > > > +      ch-map-idx:
> > 
> > > I would rather this be spelt out as "channel-map-index" - although I
> > > don't know if that is the best name for the property, as it seems very
> > > tied to a single operating systems variable names.
> > > I'll leave it to Mark as to whether there is a less linux implementation
> > > coupled name for this property.
> > 
> > It's not particularly Linux coupled, this is a fairly general concept.
> 
> You'd know better than I, it just seemed like a rip from the variable
> name :)

I have no special opinion about this, but let's use more generic naming.
v6 will use "channel-map-index" for it.

Thank you for your help !!

Best regards
---
Kuninori Morimoto

