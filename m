Return-Path: <devicetree+bounces-22094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3138066AE
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 06:46:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 90BC11F2127A
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 05:46:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFB61101C7;
	Wed,  6 Dec 2023 05:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="k+MdylXq"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2060.outbound.protection.outlook.com [40.107.22.60])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3958218F;
	Tue,  5 Dec 2023 21:46:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cYtFZRwKnFmoR011AI0Rq7Mrf62O9H8erFoM/c1XdfV2zqlqKIbTUvv/71pXAInn+yXtxOqGLjsmktUDIoISQvF9YPyDLYQ/Y95RgG4ewm3t2k94WSThlSnUSlCkyCOZj6CphbbIpLn605UkISUx23h8nG+AleUPCHTUFlrHen1AD3eYRPOghF+NI5NvbaKCtM1zIqW9aXnRvBMUEERoT3JIFrVk+eDo0WX7mR1ffQ6IFmut3mQtFjVPshBMbmCK9D+/Y1YMb5YHDv6zahNCba1Kv+zxDpGshAYMEDoAVA923uNcck7QtlMjfAsBNoDtn1oxmVvB/fnqyR3ARFS94A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vq0bdcMzWC/IKMJq8Nym4AsjF1dJyJqNVXPjo9NXEXU=;
 b=gC92CY9S5DOjLEGKsuJDMdrHZ1TF7SIjtAilSUwxziJnZbJzYe1C2a8LoyQLFB12Bywq3xvq469TybivXX0rVOWbq6RtEyUoma/Zt9hAIyej9j90/MVml7i6j75WhkrmFIUigO/zrAVBLrhqlwRcC5R1tNgBnSR5eO8y81sNLOLc01AF4VnsYsCN85EDHUcV6wsdY9nQQd3I2ZzVaY1hRKOmSphad+ckoGPvaJZrPLt2mCIx4WR+r3ZaL9s42ku4jqLPP5SOl37o46R5PI7DIEPWyi5PKY3vFLAkLg8TEjVd34GpEYyDqFRIA1nPjub89ZPXVQgYtD4NOkJYmnV5vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vq0bdcMzWC/IKMJq8Nym4AsjF1dJyJqNVXPjo9NXEXU=;
 b=k+MdylXqJ4COy+M/K9T6VTOt1rm8x0cNcODVpwYktObYZ9ZMRNLecypyjtlHYU5kYZIMNcP1D9zfX961bgJ+UBnsUKjPNNzDRT8zLwYzqx28VWHhZ5vBP35yaLuw3Hd/TLvLJVvqjS5QT4RP5sG+OXs1eooCCVBBq8yVhcuP8Pc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB4838.eurprd04.prod.outlook.com (2603:10a6:20b:4::16)
 by PAXPR04MB9665.eurprd04.prod.outlook.com (2603:10a6:102:240::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.25; Wed, 6 Dec
 2023 05:46:27 +0000
Received: from AM6PR04MB4838.eurprd04.prod.outlook.com
 ([fe80::95f5:5118:258f:ee40]) by AM6PR04MB4838.eurprd04.prod.outlook.com
 ([fe80::95f5:5118:258f:ee40%6]) with mapi id 15.20.7068.022; Wed, 6 Dec 2023
 05:46:27 +0000
Date: Wed, 6 Dec 2023 00:46:15 -0500
From: Frank Li <Frank.li@nxp.com>
To: Conor Dooley <conor.dooley@microchip.com>
Cc: Shawn Guo <shawnguo@kernel.org>, alexander.stein@ew.tq-group.com,
	alexandre.belloni@bootlin.com, conor+dt@kernel.org,
	conor.culhane@silvaco.com, conor@kernel.org,
	devicetree@vger.kernel.org, festevam@gmail.com, haibo.chen@nxp.com,
	imx@lists.linux.dev, joe@perches.com, kernel@pengutronix.de,
	krzysztof.kozlowski+dt@linaro.org, krzysztof.kozlowski@linaro.org,
	linux-arm-kernel@lists.infradead.org, linux-i3c@lists.infradead.org,
	linux-imx@nxp.com, linux-kernel@vger.kernel.org, peng.fan@nxp.com,
	ping.bai@nxp.com, robh+dt@kernel.org, s.hauer@pengutronix.de,
	sherry.sun@nxp.com, xiaoning.wang@nxp.com
Subject: Re: [PATCH v2 2/2] arm64: dts: freescale: imx93: add i3c1 and i3c2
Message-ID: <ZXAKp1WS97cAI5X2@lizhi-Precision-Tower-5810>
References: <20231017194657.3199749-1-Frank.Li@nxp.com>
 <20231017194657.3199749-2-Frank.Li@nxp.com>
 <ZUz/8fBWtnwdSW9w@lizhi-Precision-Tower-5810>
 <20231127022140.GJ87953@dragon>
 <20231127-cherisher-falsify-8193656e8872@wendy>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231127-cherisher-falsify-8193656e8872@wendy>
X-ClientProxiedBy: BY5PR04CA0009.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::19) To AM6PR04MB4838.eurprd04.prod.outlook.com
 (2603:10a6:20b:4::16)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM6PR04MB4838:EE_|PAXPR04MB9665:EE_
X-MS-Office365-Filtering-Correlation-Id: 75aa8b6c-e145-4a63-f15c-08dbf61eb031
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	91dz/ePH5ZVFGWNQX/2IrbCLFX0X5uEaLqEsPq8kGDXL6N/Avoqd+1QYzXWTtHdYqSsPd0vg9rQKMoJqVs0pIHcbJgXb2CKNhC/6eoPY0g5e9ctmpc9W27l6EUQ9MuWE950YeTagopc89VNWAFpIE3ss3GivCIynIRudEHqE2fjMr6g2T6+4/hqtNBv2Z7ZNy1ct2N0fdoU396nBBEeLV2JqIH4u4RdJ5nbyTz4aX1DyGULCot/qT9bDHCd5fHEaYVRLNQBYHZiZ2hxhKcn2A0Ob9oWjLqNUJGNNP9i1vBMuY5cfi691ekhaMaEsidEQgzZuRYEDwII6HBPp8UzhZnvgNIqNDAQkw6FNPlJ7S//VGWViWGzCKYhJs0+gCf+Qg+slhpj4P2DBGFJFEO0LkfaLHwjcMWPkE0FaSTygkwgWmItDWz02BEcGeDpZ4j/j9ujXrlKVntWcWh4qHhsZpyUL0cbywxnQXsj2YufIFxhdYk4qWtXRpzXF9pXJckqi1WpisPTGQCMeprOMleNQISUsKAwphxNkSVo4hB69KFZFvafjeHHhZi/0MLJr0zN404tp8rgxyTxe/yR2rG/+lJ+j6MJwst8k2TEGNMl3pCUHJsmz+ouIhYM1duagM34H
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR04MB4838.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7916004)(366004)(396003)(376002)(346002)(136003)(39860400002)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(86362001)(6666004)(33716001)(52116002)(478600001)(6486002)(2906002)(966005)(9686003)(6512007)(6506007)(4744005)(38350700005)(83380400001)(26005)(41300700001)(38100700002)(5660300002)(7416002)(6916009)(66556008)(66476007)(4326008)(8676002)(8936002)(316002)(66946007)(138113003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?EpXqJffcLdBjx6rj0ppQwk0lDCir25h4ZLcXzMQU6yM79gP+I3SBIRUWEQio?=
 =?us-ascii?Q?oofqlbZOgaRfCi4iaXlRX20XxhQThzbhF1PGL7g/J1ALg2kinurCddZQlQ6U?=
 =?us-ascii?Q?tPfXQpYW09qLnzLNOudhKc+AYvbhNjbyAg9c5JTqLJ9n+4tEfcDkSVWCqg0L?=
 =?us-ascii?Q?tZWfjfw7Cbxpb8DVbfDu5iyMoEFrnRxM5vYmqdmn/rZ0to/DYqoB9wuq0uuc?=
 =?us-ascii?Q?yrg63NUoQh66yVN4MOhWMCngdFlAI7Y+itYV0KXQGcgFG9yng3W1GIcd7Zd7?=
 =?us-ascii?Q?0LrVwS3J6FfB0HCFZQr0UsoriixiGF9CVowtx3IVC0bvQFE+K4qPMISYVfc/?=
 =?us-ascii?Q?zyDvWlCU6FzEwuVze0ZU55CiEdnLuwXabw5czkC65oEwcUiMUx4lfE9DMkc/?=
 =?us-ascii?Q?SxuY9xzIokG8VD2bjaM7r6h4YuOBk126OyHUQLstE16N37FS1JZyPtCyqzMl?=
 =?us-ascii?Q?NwvCfj4uM7PQw9946KGAoWxMkonIfAUuA00dIcmeyoybnH+eIegbouGpAtRJ?=
 =?us-ascii?Q?1n9t2eWoWiKHZG/botlY6/P1c6ESWsn9nj4xiC22aVsXRsA/KMrAeMRu7R8/?=
 =?us-ascii?Q?K23xZfWiaAJNHiglmn+eJ6LrXIkLTaQjrA9Gnrpa2lDaD/684OBLLRXhISlQ?=
 =?us-ascii?Q?sas6jydQZrFAIA3S8/B1GRHAzJLPZSCRvC1yJfTQODn0dS1nbQOaMwTR2msp?=
 =?us-ascii?Q?KT6lp9/JEkrFzqJS4BjTl9gLT8SJ+VmDOSC9QFGW5eis6/ym5VMIQp/BJ2bh?=
 =?us-ascii?Q?DhEXar+sNheH+/fr/adPZqlv2iFYF980ph6O8x3O5AKZvYfkYy17PoArnCvJ?=
 =?us-ascii?Q?pA500IBHTMm4b/fx5TeeixASwFeh/YSuMrr68V/d4Be94f40XUIvJFz6CwyF?=
 =?us-ascii?Q?puyBRbhVCDLToJsVIvzxa+zF2s4oZh+7wWEgBT3vyluH75x09E70uKFSFT76?=
 =?us-ascii?Q?Jp4EVp44W80V9ChM20cb2rIe99DUnj+bFoZF9VND0sBsyMtJFVTFmNpmFzzz?=
 =?us-ascii?Q?K1xyolM7kny1uHCkbd+Nh6Si/k+s0jMlGhhR5/aumkP+uvSxqLAq1aPuI4A6?=
 =?us-ascii?Q?goiqX9farmFZKFyOAX4HOZTnpPsGT2s03tWpopGkCVu5ulDmGHhyfx4Jv1FQ?=
 =?us-ascii?Q?r3wDSXE4za1TDbC6PtZvug7noNeoJqdQvSGUTqn04ojBcHEIJ6aFIHTFcPuY?=
 =?us-ascii?Q?dtWI2N/JeS3KUaMMDpJfKoP2c+cn5RDNB3M4neMrT23LuoeBcd+s56t9jveT?=
 =?us-ascii?Q?/NFKH4W3/vaFqGDs1NxpDvjFhppkfbUo/BKV2SGXs5n/r8HrRRY7rTGdbfUz?=
 =?us-ascii?Q?3bURqjg8EVrv4+BPI7eJiupAgie0Rn/ZxSWycQiRbHqtfeWwPHn7xFSx/HDd?=
 =?us-ascii?Q?jw4VN27g/KUhSYMb1EdlA5vNdXLw9Q8tVEXZd2wU5zQc+PSQTZre5dn+4Nfj?=
 =?us-ascii?Q?gi3RrIIXlw8m3OGUN10PDiRb7QVg9zuWCOKM2VSmhv9RxnkZ0KQZ9KLzixZM?=
 =?us-ascii?Q?7OhNKT7822YVyew3V3zykagLq76e5U0WlkFYmcJI3lKLuua0VdEk8G0xRMcf?=
 =?us-ascii?Q?0sE/6/FxKqNOjaQD+oI8FkbWoj/YLQNMf7VQdIUQ?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75aa8b6c-e145-4a63-f15c-08dbf61eb031
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB4838.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2023 05:46:27.0474
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qdOljeRyoghjq2DS9MU4Jg4z2YK6bjlLU7IRHC/03m8Eg4KNy/ntdr3Guc137W2Q07WdLzCFwg5kZtjcA4paKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9665

On Mon, Nov 27, 2023 at 09:35:39AM +0000, Conor Dooley wrote:
> On Mon, Nov 27, 2023 at 10:21:40AM +0800, Shawn Guo wrote:
> > On Thu, Nov 09, 2023 at 10:51:13AM -0500, Frank Li wrote:
> > > On Tue, Oct 17, 2023 at 03:46:57PM -0400, Frank Li wrote:
> > > > Add I3C1 and I3C2.
> > > > 
> > > > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> > > > ---
> > > 
> > > @Guo Shawn:
> > > 
> > > Driver part already merged. 
> > > 
> > > Please pick up dts part
> > 
> > Rob had a comment [1] about SoC specific compatible.  That's not what we
> > want?
> > 
> > Shawn
> > 
> > [1] https://lkml.iu.edu/hypermail/linux/kernel/2310.2/03035.html
> 
> Yeah, Rob's request here looks valid to me. Should just be a bindings
> change Frank & fall back to the "silvaco,i3c-master-v1" compatible.
> 
> Cheers,
> Conor.

@shawn:
	rob agree on "silvaco,i3c-master-v1" compatible.

Frank

