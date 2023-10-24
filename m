Return-Path: <devicetree+bounces-11479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1627D5E8E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 01:06:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D2E131C20CCA
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 23:06:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A47C33CD02;
	Tue, 24 Oct 2023 23:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=renesas.com header.i=@renesas.com header.b="pDVtEF06"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E09BC2B756
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 23:06:48 +0000 (UTC)
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on2131.outbound.protection.outlook.com [40.107.114.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3729610C6
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 16:06:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HpHRt3LMx4eZk8P6m9GpSD96vMRw7SovhiOKW6lHP+15ZrupyDwQWKlXdF6wKWy2GUpMyEkzv76B7iF0Bi5zdbLDJE07gB5BXniiZ3SSajYMAY5FBRSlPWQIBKasTbM2i0cgiyAsS9JPv3t3bRkO6KevCJtpziCS3QjQgk4SPqaEQ0xiV1Y93nY5C7VlGTXRqr3avOurIGziNoS/uDyv4BxePR9+/Lf6bMUvkj7aOlmJ5romaKwRiLEl7rA13pDe0enObrjqaPJXyDUmQuZYnJUWV/wL5lBpewq0GOo2jMv5aQd+CNwlmoo+yKrDPATYnC5BuMUWTqO0XqzbX+wAIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hdBGH+xHG7wrfqhsuoNHNTK/SmK625HF4U0VwYZsvWY=;
 b=ibpI368KdHLu/5VPh3lnLztc7IeJFLxskl7nZjinUOjp12wzVH18LTWjVnhgcNaJDXNWvKTwHYR9KAPoYuKiQ5XNLQ0Eh3UGWC/NJacUpQE06y3dcSFsTpflBewIkcVLqwFgO0f+8WPitGj+IvZHsQna9Qa6OlKtufxEkphLDarj2c5ZUfQk5rxv+VzedREanFijnLFt8DXkeeOXK1fhBnBkcCIBid+DFVhJM1wcWPY8ya1tApvogYSxKhrfxQpbCdEJOo/evJ6GizjEmXJ9k/u0A7gEIpK2zBX41ccZUi6T6zdbAayVCyMqrqDl7vv3Ztc3vYc5w5Jubc+LJuKKzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hdBGH+xHG7wrfqhsuoNHNTK/SmK625HF4U0VwYZsvWY=;
 b=pDVtEF06R8yFzpUrUdE6t7onFTN1tnrq91oqM0vv9GORA/3oeGf+L3OdTOmVTOnzmEQJUiQ3G2FVdDpO7OoxcIJRhbLRK80rHR49jAu/ebfXGoQhzYYOXddjt2IFrpRhrI42JGcXRLcYcO+W9j2k97wHBQpRCJvauoj3X5KIkXc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by OS0PR01MB5587.jpnprd01.prod.outlook.com (2603:1096:604:b9::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.31; Tue, 24 Oct
 2023 23:06:43 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::f7e9:e682:d78b:f55a]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::f7e9:e682:d78b:f55a%3]) with mapi id 15.20.6933.019; Tue, 24 Oct 2023
 23:06:42 +0000
Message-ID: <87jzrbboxq.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Rob Herring <robh@kernel.org>
Cc: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Mark Brown <broonie@kernel.org>,
	Bard Liao <yung-chuan.liao@linux.intel.com>,
	bard.liao@intel.com,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jerome Brunet <jbrunet@baylibre.com>,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v5 5/5] dt-bindings: audio-graph-port: add ch-map-idx property
In-Reply-To: <20231024202418.GA507328-robh@kernel.org>
References: <874jihlx44.wl-kuninori.morimoto.gx@renesas.com>
	<87wmvdkiif.wl-kuninori.morimoto.gx@renesas.com>
	<20231024202418.GA507328-robh@kernel.org>
User-Agent: Wanderlust/2.15.9 Emacs/27.1 Mule/6.0
Content-Type: text/plain; charset=US-ASCII
Date: Tue, 24 Oct 2023 23:06:42 +0000
X-ClientProxiedBy: TYCPR01CA0128.jpnprd01.prod.outlook.com
 (2603:1096:400:26d::20) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|OS0PR01MB5587:EE_
X-MS-Office365-Filtering-Correlation-Id: c754a9b9-60dd-4759-d4e4-08dbd4e5e301
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	7TWSX0Xa9YjJc9rRW7i9ZFkGBHS8gt7X/CX8vEzdu2BX1tlDDgSIP3PMDsTDSjl1j7SS+lAEhAklF2iESP0yKv26R5S2Z5sfRK591r7I0ThPmm3hh+AsPu64ma92QqxW9spiGHYczI0ha4Q0wilXJ62vMCYT4Zm4I9N05dPAUyPcgZwVFh4fFSe0ERMYSlf+cqZwt7dzTVx4x2zIXr+rJgtazlG4eoSdTkFFr/4HBKepvWoSZ/6orQ+eLUdnmoGLsiFzVe1+obyBvLXTpN6N2vR+Zo+BX274u4V/4m8HuMMZjIAgcjj1/ifrXYyP0TpdaQunQzVQi0vc3SEvWLbh3r8mf4HR2ES3hA/2020UT4k6o73VmFL34OI/RQZImS8NSoJ8Gak4wtzmjQHWNHZLcJbzSGJhVkPClnj8VRU3YammNuCrSpomPxtz1U9StN6I5O1YBZJ8xXKPVsOW3aB4iUZI6tVIs4UbiAMzpVZGXf4nqkeLEWJk/VUWHxXpXxbSasolgovLh6c5f5lArjNu/WAYUZ3r40V8rp6BLsH6h+h4MUZEvsEuuzT+x7Ezv7XmuqDRJoIT6lXephvJCgH1N71K8jWBj2diDgn7Ci1D3yCvE8gkYd6S8j0a77FW56+llwvCrMST3nDuCr/Oh9u0tQ==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(136003)(39860400002)(396003)(366004)(346002)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(26005)(38100700002)(2906002)(4744005)(36756003)(86362001)(5660300002)(4326008)(7416002)(38350700005)(8676002)(41300700001)(8936002)(6506007)(478600001)(316002)(66476007)(66946007)(66556008)(6916009)(2616005)(54906003)(2013699003)(6512007)(6486002)(52116002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?l/Kvm1rW1oCGtAuIGvEPzc4/0sBqQu5JuO4UWXvS23Cj9UQ9FG1j++HPRWGH?=
 =?us-ascii?Q?5UOaljXhRLE9qe4xtg8eaxyDu/rLH8oM9sFA4eFcQyGacV2Y+2JBILc2X2ie?=
 =?us-ascii?Q?7XzJPGzTjrslMYKokOu0xYXlAY2O1oHjMqZVUJTy/uKfiic1JEcgVxciNmsn?=
 =?us-ascii?Q?b8308xo55NIqvqjQe0+xcTtcJ3W/6mAzHJOh2p+LusQsc06tIPFVe+1H4WwG?=
 =?us-ascii?Q?0D3lbCcZE+ICiSRhl9xqN1aAPuf1E6dJe+8oFTmRVeR+ApRIbDA7oUZP1TNn?=
 =?us-ascii?Q?bI4N7uRl3LeA+1huaOHS7jXcsXCN4n64hhPCNwqv1E5eTmdKrgR2QGvY3eDX?=
 =?us-ascii?Q?o5323cLgjAV3jEq+hxUiz1WNRI6J2uXymXgIcac1hoV3lOMoX+bo76PF7zmT?=
 =?us-ascii?Q?5MIa2Go60eG18lixk+a4KSZLVPSAkK6zXBLNu6hXWNrbr4Stu+rQX/qscKHw?=
 =?us-ascii?Q?v5FxgxUzyRa3i741bjsDUryPd0SgOOwA/fInIUGnnRHB7r3rZDUo8nKd1YlF?=
 =?us-ascii?Q?IQ/FA8aULMWKrJw5CR6t5E+gO3VBm+39CiCWsWOhli+R+XxniUX/v2wZablz?=
 =?us-ascii?Q?E6ZJ8vEdKA9ljK87tmxD/KX+HQS/XW1Emep53GegexcXS1+qj9F6fHZ110KW?=
 =?us-ascii?Q?gJryAdxnQZM1zuYCohamu03rPIuoJIdD7+Eix7s6SvdwxqpN/s4HxBiVGjHR?=
 =?us-ascii?Q?xDzjgffEx3YKSv+9XOmNIaIfW20cRL2S/35f5vRO5RGwRb4Q4lW253muOMxq?=
 =?us-ascii?Q?MzCMMw+bpMaYZMAed0vfkDwRwpUXXfxUHdn5mYpQoMDwgyb03jZfEawMQoGO?=
 =?us-ascii?Q?HB4aKjFc910+U6tX7tX/7R7pSeG9Q//sXSiKY5G1Xt1PeJAYoSUsFzRk1XLt?=
 =?us-ascii?Q?sSG73oh07hEl+nTF+dolmmglXFQJ5NTPhVf8Y9g1Iez+KFEiFrSYkTnNzk3E?=
 =?us-ascii?Q?BgEIorc1wqkVIOGl/txOSEXFp5uwZwuw+v7PDZiWMQDPcEAWJGAC2B1Mc68I?=
 =?us-ascii?Q?r/xcVAoZQfCZbqI9d+FqDWupVT15wYGWa0nmAkKWZdn3K+e3fUgdgmzcJ6nT?=
 =?us-ascii?Q?EHkYy7KEWtyPESoetg54KIpNLCUMaEdmF6SauZpg573mtpi2nS+2MaCY0zxl?=
 =?us-ascii?Q?QD9HIOMtd2ELdAne+Yl4HI4NfaOiN0tWnUEx8voJ+Z7F/MnaMRu1uzT4JGFD?=
 =?us-ascii?Q?AvLiN4eYulQ4twrRI7xzouYxZiwwPhg3CqVpOMGhrQfeZJPg0snAUGi6S+uv?=
 =?us-ascii?Q?9vWLI+7s+BwYTdSh9CXbpERQ15bAj9+kvn0eCyqhY2st9wKi44jO1X81GMCl?=
 =?us-ascii?Q?Rzh84DUzzHKr7g2fId2kFmTx4pvFW/MGuu5jnMgEIf/ULlBQaz7vWBFreOJE?=
 =?us-ascii?Q?iH+AKZnxfgocWPssZD7HFLJAXMpp6/uPdnSWTPFQtkRCMk2lXUiU4Db15g5w?=
 =?us-ascii?Q?ogAhgZjYXx+BSDP6WD6+b8WKTpE/3E6OV2vMuJuI2H5pKNVBbE219llTJnw5?=
 =?us-ascii?Q?DUgbjVgmHayq2yhc3yT69qEjQUIOuH+iWa8ZlYUoqaHYiDCZ3h6eCyHCh73h?=
 =?us-ascii?Q?a25TwZthTle/jol4m0FOozzrI7fH3SG4Q/PSkIxHPO0M3YNln4yiIaW1qX1l?=
 =?us-ascii?Q?A9uEVaCyKq5JZ6jsJJufVLw=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c754a9b9-60dd-4759-d4e4-08dbd4e5e301
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2023 23:06:42.8601
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EH3B6LghXx9LBemxpYUwA0h5upN+ZvyvrhAxxzkUtgM6QcNqHOatYVmrMDPofnDNYbrps2lz8AtAGEkKXfc2z/LXuOQ8DNDpsxSVtO3wYC3X6XCNUy/VKHX4UMqwQ2wb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS0PR01MB5587


Hi Rob

> > +      ch-map-idx:
> > +        description: It indicates index of ch_maps array for CPU / Codec if number of
> > +          CPU(N) / Codec(M) DAIs were not same in one dai-link. ch-map-idx is not needed if the
> > +          numbers were 1:M or N:1 or N=M. see soc.h::[dai_link->ch_maps Image sample] and
> > +          ${LINUX}/sound/soc/generic/audio-graph-card2-custom-sample.dtsi. It is good sample.
> 
> Why do we have a dtsi file hidden away here?
> 
> We have examples and actual users. Do we really need a 3rd way?

ASoC is supporting many type of (complex) connections, and Audio Graph Card2 is
supporting all of them. There is no actual user who is using all type of
connections. Thus there is no good sample for it.

Above is using all type of connections. And I'm using it for Audio Graph
Card2 test purpose.

Thank you for your help !!

Best regards
---
Kuninori Morimoto

