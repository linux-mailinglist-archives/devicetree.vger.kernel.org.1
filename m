Return-Path: <devicetree+bounces-11504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D56B37D602F
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 04:56:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 814C9281C40
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 02:56:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 363F22D600;
	Wed, 25 Oct 2023 02:56:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=NETORG5796793.onmicrosoft.com header.i=@NETORG5796793.onmicrosoft.com header.b="n0UFaSlk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D9551360
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 02:56:53 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2056.outbound.protection.outlook.com [40.107.93.56])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72D3C186;
	Tue, 24 Oct 2023 19:56:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lzzLQX2v3+6hziG9+rJdGONMeg7E2cLjXuCCXYmTPbamqZtrYGfkFxYJ3gWGFRrabLUFlU5NYu3l99eSPg5Qdfkwd1iplenoHwWAqB2YTZTIUSQ0EeMk0v8L/6wNl9SiKLrLuKimrbjPIYyF5D2A6XXvLI4bpx8NEWHodo1GE4mPNEID2tfuGRHIZrXvqCGk45JP9FMGoLX7/u7SpCGqZvSY47a9ov436an7gfE5b9s6TkIInpah790VcLU2z8oHLgytkUDryL5JHl9riljkITWzp3Mcp7q/FSxBX1RVgjaPJ/FLQWc2/GDvwSpbB31pFIPHyrsYVZnBZXIliuT5SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R9o5wxgkPehcTXPe/0dLkbM59Vxw5SHcE1yYseEqvNY=;
 b=XEqe4+Dpr8uov8ixusMuuTOPaDLl2G6ci2/mM0ivuQLB6cEcDpVuJj40IhspFE5hBGf3dmqm0Dhu0p4if8JTnLGrxOKxv0wXwstaE0my3xYwSjzpzHaSw19De6+xvzJJw0hdA0FTacWbujkhMdOanfrcjsQHPN7rxHpgE3tcmIeysVKIzRwVAbyLO4Z/3h/2n0UZ5lL6n9SJe75G5GFMWix49SYg/8krOoM4GVQjvL8N7q0PlaamVT1f0LH/Hnft4ZctDJ2MfZsHxhz1kn0vY5uFcU63bw14OP+6hwelolTqfqPSCz/grw9I2kkZJWqKA2/OHWZrxxeT71Rl1wehgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=labundy.com; dmarc=pass action=none header.from=labundy.com;
 dkim=pass header.d=labundy.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NETORG5796793.onmicrosoft.com; s=selector1-NETORG5796793-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R9o5wxgkPehcTXPe/0dLkbM59Vxw5SHcE1yYseEqvNY=;
 b=n0UFaSlkSWyJ+XfKEe8q9vaL9EJWXksIL367oCciaGGNPVVvvzR4nGUqLIxu5CBXu7olpBZijg4jq0ai6G5WYeXavQzfi8h0EDL+N1Z6XMuoTaYW2ahsaDmTP9XBmTtDKi8BthcMGPOcliq8yTLcLB2oNNPDyDMb6zf0I0+ivW8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=labundy.com;
Received: from SN4PR0801MB3774.namprd08.prod.outlook.com
 (2603:10b6:803:43::21) by BL3PR08MB7378.namprd08.prod.outlook.com
 (2603:10b6:208:355::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.19; Wed, 25 Oct
 2023 02:56:45 +0000
Received: from SN4PR0801MB3774.namprd08.prod.outlook.com
 ([fe80::e73c:270b:75f7:5302]) by SN4PR0801MB3774.namprd08.prod.outlook.com
 ([fe80::e73c:270b:75f7:5302%4]) with mapi id 15.20.6907.032; Wed, 25 Oct 2023
 02:56:42 +0000
Date: Tue, 24 Oct 2023 21:56:37 -0500
From: Jeff LaBundy <jeff@labundy.com>
To: James Ogletree <james.ogletree@opensource.cirrus.com>
Cc: no@web.codeaurora.org, To-header@web.codeaurora.org,
	on@web.codeaurora.org, "input <"@web.codeaurora.org;,
	James Ogletree <james.ogletree@cirrus.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>, Fred Treven <fred.treven@cirrus.com>,
	Ben Bright <ben.bright@cirrus.com>, linux-input@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 3/4] mfd: cs40l50: Add support for CS40L50 core driver
Message-ID: <ZTiD5VUSi65OK4VK@nixie71>
References: <20231018175726.3879955-1-james.ogletree@opensource.cirrus.com>
 <20231018175726.3879955-4-james.ogletree@opensource.cirrus.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231018175726.3879955-4-james.ogletree@opensource.cirrus.com>
X-ClientProxiedBy: SN7PR04CA0086.namprd04.prod.outlook.com
 (2603:10b6:806:121::31) To SN4PR0801MB3774.namprd08.prod.outlook.com
 (2603:10b6:803:43::21)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN4PR0801MB3774:EE_|BL3PR08MB7378:EE_
X-MS-Office365-Filtering-Correlation-Id: 4140cf0b-8015-45bf-54e3-08dbd5060467
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	UYKA4gKrjn0fcXU46cMi+o2lYPRKThnk8m4vhtpehBToVVX+7KO0hEFHrzpKUcO3P1IB50OkZRWVysie+bGJxptea0r22nN6WFCPZGWmY4HHQHoSgeYSX400GtQZODQ05AfuI8kxcnXWpEuWztRRnsH2seFd5LmLF9vMee/tIT08zLCrHI+CgukUe1vz5ayIFZ2u37lEN2bA1k4Goc2q9OgxsUyHR2mfpWvRn9c9ak0E7LA8ogtX3WTt/W4irQgLUJb1mGOVLI5+rWBib392B77naCrwz4tKLQyP5E44kp0JibRSo8yojzma0cpwp7G7Igv6DbUOzP6y5HjjyhJVXG6nlZ1Sw2um2+YGR6B/sQIOz9CCY1pVLvDcI9VwJKhENEG4nc2JhzR9EoHf/ixZXnMhAR6jWR9NpZ1Eq7gAxTJIeFRYyoZ65o8VYPnDTVAyUStUmH2E7n4izj2fH0zKAthkBdxgjezSh3ETUIVzY48OM2zHw79YDE33deJIanNQxaOFxm8kev9CekZWJvPbOff2RRMBas0t6Lq+V8fNM0Yb7ZWAutUPImOKSam4xT5s
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN4PR0801MB3774.namprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7916004)(39830400003)(396003)(366004)(346002)(376002)(136003)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(7416002)(83380400001)(2906002)(8676002)(4326008)(8936002)(6486002)(30864003)(9686003)(41300700001)(5660300002)(6666004)(86362001)(6512007)(6506007)(6916009)(316002)(26005)(478600001)(38100700002)(66946007)(66476007)(54906003)(66556008)(33716001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?vQ3S3u3z2ABsZK+BWMdFzRYvw/pq/zNJv8i1UtW2MJw4AzYWNQge5V1lu702?=
 =?us-ascii?Q?8pAZ49u1W/NkWMu2FJEXCuLz6yQctLxPYutVp94OiCoEG/5EfPFcc/7y54M8?=
 =?us-ascii?Q?BxByyMJrkdGZ7Gw7jiLGYgBaZyAoDsI3mxlepkeAlprNO03AKHssz3P7F0X+?=
 =?us-ascii?Q?vFc9dtXQ/CC56CG+7/PPFrUsXhNvPVy5jHrqe9ZEkW5iknzB2/qh4mVA35LW?=
 =?us-ascii?Q?XTxIF0oHXXR9hadLAyYmtlK6yZSmUqoV1hzlmXkxVpxpOvKrYMeZyfzQzJgN?=
 =?us-ascii?Q?nuoHQESPmBigp3TRGhMmmuTVJ8lvyE8qIXpUxwiwCizzAdFB4CScI8KFgYXh?=
 =?us-ascii?Q?V+3iDlUst7teyfyZFvDLFPtZZwTmzxRoYRlKLOfXyjQFwACshqccnBF5tG4X?=
 =?us-ascii?Q?0PgKVdaXnc+dI7k8ITalNDhrTf7SvbNanh+nD2fJtG6z7/hZMpWyeXYQXBhk?=
 =?us-ascii?Q?UpISvlWndw3F4zxzBS12yf/+Z+Q0pnfsDBnXQwZ/HHnOiz3KLj9ev5avCdTY?=
 =?us-ascii?Q?8j3q+EtmbFDRZ+aF9Eg28eSgRxXC0WYwocT+W0APZQF/gtkk4Khw7P197Prm?=
 =?us-ascii?Q?0tYh79EQnpsb5f0O97RaemAtGR+veSavrOSHQIJ5J9aA7OYsGLIPs++OYrGD?=
 =?us-ascii?Q?Kv+AYzOXLOO5IeC7tOhX9WFStgbrnbjH3iUgrQwP9VGfnzyEFh27f2j595Pg?=
 =?us-ascii?Q?EGCPIGrG0tgHTrDSqGFu1matJmneUfoiWoSXjXxXj+pTkjfAbu3TCTJrco5d?=
 =?us-ascii?Q?5Z/NDzhl6zdyPeGBKAIoIZViU2582tljCy0A6jxhQxuCYsbNfZczCe7bdyY8?=
 =?us-ascii?Q?GP/WYuQP1z1e206k+Vjj1NAY5R272G34u0qunB2vr/QT0OBA3jm3M1nu/v1d?=
 =?us-ascii?Q?mf8din/jQ+vFcxnCxg1bw4aqLPIC8oARhddqRFGvTY1FlamtgwjlvLXf0GlI?=
 =?us-ascii?Q?FytZVjOSde16aWUASBe9qHlqKyxLvSepmUiu7A0KtGolFfRMyrfCnuC4Nev/?=
 =?us-ascii?Q?NVfX1H5DLnZQBj93kkMOJUnugabpNeWEkM+TWmua5Z872JSdiscvyeAAVLUz?=
 =?us-ascii?Q?F3ExVStR0cKcyZ9reCfklVnvRE6Mti4aUSQ+KDEr2807o2lgYdcR0Ngm4mYG?=
 =?us-ascii?Q?m1lbQkzGku8zOAC0TrlpqU5zY1NcMnmH4h/JL5PKrK1/b1dasq+RZnmX1hqH?=
 =?us-ascii?Q?yYE5SaHcON+MWhhu+kGcbQu5fnVo/SMKfiffJ2siKym6pGx/XprVcMd/HUDb?=
 =?us-ascii?Q?jIGPntUb1mAfFcjyp8P1c3lXhvYqWbCh9kCxeM6+u5NwUPaV2boJCV6R7xas?=
 =?us-ascii?Q?QQ2rW3tvO8PFz1J3jKKgPd3My/MWEBmTQ+TR8+b0KrjTpWKQGjAzstqd0sow?=
 =?us-ascii?Q?rdCEhn0kRAfc+VD5GgYyK28Vm2h0InDtty7KYdD8cpSxMMlpWbCidOLYwxpn?=
 =?us-ascii?Q?cxtjoeNM2lWkJ7yw7cyWv1cxTWjIXf5oWjrRU+htF6n3JkVb93CtNoGE1R9d?=
 =?us-ascii?Q?rengAWmNiCBPl0hADB20A4atiU42YWv1omNAla96il3wnPuEsqXkcjX3bQG3?=
 =?us-ascii?Q?bkictI4ad/aKdYMv0AOt2ksQqApq1mXYP8f4GXFm?=
X-OriginatorOrg: labundy.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4140cf0b-8015-45bf-54e3-08dbd5060467
X-MS-Exchange-CrossTenant-AuthSource: SN4PR0801MB3774.namprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2023 02:56:42.5929
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 00b69d09-acab-4585-aca7-8fb7c6323e6f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eg9QzhobVpF7ivx+3unBuGwAlyFkzLuyoVhe/7S9Nt/xSthYN6eU7q+0RoYbUwUbdaYuMQ5G+LAgQDet891CDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR08MB7378

Hi James,

Just a few trailing comments on top of Lee's feedback.

On Wed, Oct 18, 2023 at 05:57:24PM +0000, James Ogletree wrote:
> From: James Ogletree <james.ogletree@cirrus.com>
> 
> Introduce support for Cirrus Logic Device CS40L50: a
> haptic driver with waveform memory, integrated DSP,
> and closed-loop algorithms.
> 
> The MFD component registers and initializes the device.
> 
> Signed-off-by: James Ogletree <james.ogletree@cirrus.com>
> ---
>  MAINTAINERS                 |   2 +
>  drivers/mfd/Kconfig         |  30 +++
>  drivers/mfd/Makefile        |   4 +
>  drivers/mfd/cs40l50-core.c  | 443 ++++++++++++++++++++++++++++++++++++
>  drivers/mfd/cs40l50-i2c.c   |  69 ++++++
>  drivers/mfd/cs40l50-spi.c   |  68 ++++++
>  include/linux/mfd/cs40l50.h | 198 ++++++++++++++++
>  7 files changed, 814 insertions(+)
>  create mode 100644 drivers/mfd/cs40l50-core.c
>  create mode 100644 drivers/mfd/cs40l50-i2c.c
>  create mode 100644 drivers/mfd/cs40l50-spi.c
>  create mode 100644 include/linux/mfd/cs40l50.h
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 57daf77bf550..08e1e9695d49 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4971,7 +4971,9 @@ L:	patches@opensource.cirrus.com
>  S:	Supported
>  F:	Documentation/devicetree/bindings/input/cirrus,cs40l50.yaml
>  F:	drivers/input/misc/cirrus*
> +F:	drivers/mfd/cs40l*
>  F:	include/linux/input/cirrus*
> +F:	include/linux/mfd/cs40l*
>  
>  CIRRUS LOGIC DSP FIRMWARE DRIVER
>  M:	Simon Trimmer <simont@opensource.cirrus.com>
> diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
> index 8b93856de432..a133d04a7859 100644
> --- a/drivers/mfd/Kconfig
> +++ b/drivers/mfd/Kconfig
> @@ -2187,6 +2187,36 @@ config MCP_UCB1200_TS
>  
>  endmenu
>  
> +config MFD_CS40L50_CORE
> +	tristate
> +	select MFD_CORE
> +	select CS_DSP
> +	select REGMAP_IRQ
> +
> +config MFD_CS40L50_I2C
> +	tristate "Cirrus Logic CS40L50 (I2C)"
> +	select REGMAP_I2C
> +	select MFD_CS40L50_CORE
> +	depends on I2C
> +	help
> +	  Select this to support the Cirrus Logic CS40L50 Haptic
> +	  Driver over I2C.
> +
> +	  This driver can be built as a module. If built as a module it will be
> +	  called "cs40l50-i2c".
> +
> +config MFD_CS40L50_SPI
> +	tristate "Cirrus Logic CS40L50 (SPI)"
> +	select REGMAP_SPI
> +	select MFD_CS40L50_CORE
> +	depends on SPI
> +	help
> +	  Select this to support the Cirrus Logic CS40L50 Haptic
> +	  Driver over SPI.
> +
> +	  This driver can be built as a module. If built as a module it will be
> +	  called "cs40l50-spi".
> +
>  config MFD_VEXPRESS_SYSREG
>  	tristate "Versatile Express System Registers"
>  	depends on VEXPRESS_CONFIG && GPIOLIB
> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> index 7ed3ef4a698c..3b1a43b3acaf 100644
> --- a/drivers/mfd/Makefile
> +++ b/drivers/mfd/Makefile
> @@ -95,6 +95,10 @@ obj-$(CONFIG_MFD_MADERA)	+= madera.o
>  obj-$(CONFIG_MFD_MADERA_I2C)	+= madera-i2c.o
>  obj-$(CONFIG_MFD_MADERA_SPI)	+= madera-spi.o
>  
> +obj-$(CONFIG_MFD_CS40L50_CORE)	+= cs40l50-core.o
> +obj-$(CONFIG_MFD_CS40L50_I2C)	+= cs40l50-i2c.o
> +obj-$(CONFIG_MFD_CS40L50_SPI)	+= cs40l50-spi.o
> +
>  obj-$(CONFIG_TPS6105X)		+= tps6105x.o
>  obj-$(CONFIG_TPS65010)		+= tps65010.o
>  obj-$(CONFIG_TPS6507X)		+= tps6507x.o
> diff --git a/drivers/mfd/cs40l50-core.c b/drivers/mfd/cs40l50-core.c
> new file mode 100644
> index 000000000000..f1eadd80203a
> --- /dev/null
> +++ b/drivers/mfd/cs40l50-core.c
> @@ -0,0 +1,443 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * CS40L50 Advanced Haptic Driver with waveform memory,
> + * integrated DSP, and closed-loop algorithms
> + *
> + * Copyright 2023 Cirrus Logic, Inc.
> + *
> + */
> +
> +#include <linux/gpio/consumer.h>
> +#include <linux/mfd/core.h>
> +#include <linux/mfd/cs40l50.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/regulator/consumer.h>
> +
> +static const struct mfd_cell cs40l50_devs[] = {
> +	{
> +		.name = "cs40l50-vibra",
> +	},
> +};

I also recommend including the codec driver, especially because it will
force you to think what core components belong in the MFD (e.g. PSEQ
housekeeping as per the other thread).

If L50 shares a die with an audio amp that has its own codec driver,
finding a way to make it work as the codec child of this MFD would be
a beautiful solution, since presumably that audio amp has to manage the
PSEQ as well?

I'm sure lining up the audio and haptic amps is a lot messier than it
sounds in real life; maybe something to think about for next gen though.
For now, even an extremely simple codec driver should suffice.

> +
> +const struct regmap_config cs40l50_regmap = {
> +	.reg_bits =		32,
> +	.reg_stride =		4,
> +	.val_bits =		32,
> +	.reg_format_endian =	REGMAP_ENDIAN_BIG,
> +	.val_format_endian =	REGMAP_ENDIAN_BIG,
> +};
> +EXPORT_SYMBOL_GPL(cs40l50_regmap);
> +
> +static struct regulator_bulk_data cs40l50_supplies[] = {
> +	{
> +		.supply = "vp",
> +	},
> +	{
> +		.supply = "vio",
> +	},
> +};
> +
> +static int cs40l50_handle_f0_est_done(struct cs40l50_private *cs40l50)
> +{
> +	u32 f_zero;
> +	int error;
> +
> +	error = regmap_read(cs40l50->regmap, CS40L50_F0_ESTIMATION, &f_zero);
> +	if (error)
> +		return error;
> +
> +	return regmap_write(cs40l50->regmap, CS40L50_F0_STORED, f_zero);
> +}
> +
> +static int cs40l50_handle_redc_est_done(struct cs40l50_private *cs40l50)
> +{
> +	int error, fractional, integer, stored;
> +	u32 redc;
> +
> +	error = regmap_read(cs40l50->regmap, CS40L50_RE_EST_STATUS, &redc);
> +	if (error)
> +		return error;
> +
> +	error = regmap_write(cs40l50->regmap, CS40L50_REDC_ESTIMATION, redc);
> +	if (error)
> +		return error;
> +
> +	/* Convert from Q8.15 to (Q7.17 * 29/240) */
> +	integer = ((redc >> 15) & 0xFF) << 17;
> +	fractional = (redc & 0x7FFF) * 4;
> +	stored = (integer | fractional) * 29 / 240;
> +
> +	return regmap_write(cs40l50->regmap, CS40L50_REDC_STORED, stored);
> +}
> +
> +static int cs40l50_error_release(struct cs40l50_private *cs40l50)
> +{
> +	int error;
> +
> +	error = regmap_write(cs40l50->regmap, CS40L50_ERR_RLS,
> +			     CS40L50_GLOBAL_ERR_RLS);
> +	if (error)
> +		return error;
> +
> +	return regmap_write(cs40l50->regmap, CS40L50_ERR_RLS, 0);
> +}
> +
> +static int cs40l50_mailbox_read_next(struct cs40l50_private *cs40l50, u32 *val)
> +{
> +	u32 rd_ptr, wt_ptr;
> +	int error;
> +
> +	error = regmap_read(cs40l50->regmap, CS40L50_MBOX_QUEUE_WT, &wt_ptr);
> +	if (error)
> +		return error;
> +
> +	error = regmap_read(cs40l50->regmap, CS40L50_MBOX_QUEUE_RD, &rd_ptr);
> +	if (error)
> +		return error;
> +
> +	if (wt_ptr == rd_ptr) {
> +		*val = 0;
> +		return 0;
> +	}
> +
> +	error = regmap_read(cs40l50->regmap, rd_ptr, val);
> +	if (error)
> +		return error;
> +
> +	rd_ptr += sizeof(u32);
> +	if (rd_ptr > CS40L50_MBOX_QUEUE_END)
> +		rd_ptr = CS40L50_MBOX_QUEUE_BASE;
> +
> +	return regmap_write(cs40l50->regmap, CS40L50_MBOX_QUEUE_RD, rd_ptr);
> +}
> +
> +static irqreturn_t cs40l50_process_mbox(int irq, void *data)
> +{
> +	struct cs40l50_private *cs40l50 = data;
> +	int error = 0;
> +	u32 val;
> +
> +	mutex_lock(&cs40l50->lock);
> +
> +	while (!cs40l50_mailbox_read_next(cs40l50, &val)) {
> +		switch (val) {
> +		case 0:
> +			mutex_unlock(&cs40l50->lock);

Interleaving the mutex through the switch statement like this is dangerous;
it kind of looks like a zipper. It makes the code difficult to follow and
can lead to bugs in case the switch statement grows over time.

In general, we want to lock as little code as possible; maybe the mutex
needs to move inside the helper functions called from here.

> +			dev_dbg(cs40l50->dev, "Reached end of queue\n");
> +			return IRQ_HANDLED;
> +		case CS40L50_MBOX_HAPTIC_TRIGGER_GPIO:
> +			dev_dbg(cs40l50->dev, "Mailbox: TRIGGER_GPIO\n");
> +			break;
> +		case CS40L50_MBOX_HAPTIC_TRIGGER_MBOX:
> +			dev_dbg(cs40l50->dev, "Mailbox: TRIGGER_MBOX\n");
> +			break;
> +		case CS40L50_MBOX_HAPTIC_TRIGGER_I2S:
> +			dev_dbg(cs40l50->dev, "Mailbox: TRIGGER_I2S\n");
> +			break;
> +		case CS40L50_MBOX_HAPTIC_COMPLETE_MBOX:
> +			dev_dbg(cs40l50->dev, "Mailbox: COMPLETE_MBOX\n");
> +			break;
> +		case CS40L50_MBOX_HAPTIC_COMPLETE_GPIO:
> +			dev_dbg(cs40l50->dev, "Mailbox: COMPLETE_GPIO\n");
> +			break;
> +		case CS40L50_MBOX_HAPTIC_COMPLETE_I2S:
> +			dev_dbg(cs40l50->dev, "Mailbox: COMPLETE_I2S\n");
> +			break;
> +		case CS40L50_MBOX_F0_EST_START:
> +			dev_dbg(cs40l50->dev, "Mailbox: F0_EST_START\n");
> +			break;
> +		case CS40L50_MBOX_F0_EST_DONE:
> +			dev_dbg(cs40l50->dev, "Mailbox: F0_EST_DONE\n");
> +			error = cs40l50_handle_f0_est_done(cs40l50);
> +			if (error)
> +				goto out_mutex;
> +			break;
> +		case CS40L50_MBOX_REDC_EST_START:
> +			dev_dbg(cs40l50->dev, "Mailbox: REDC_EST_START\n");
> +			break;
> +		case CS40L50_MBOX_REDC_EST_DONE:
> +			dev_dbg(cs40l50->dev, "Mailbox: REDC_EST_DONE\n");
> +			error = cs40l50_handle_redc_est_done(cs40l50);
> +			if (error)
> +				goto out_mutex;
> +			break;
> +		case CS40L50_MBOX_LE_EST_START:
> +			dev_dbg(cs40l50->dev, "Mailbox: LE_EST_START\n");
> +			break;
> +		case CS40L50_MBOX_LE_EST_DONE:
> +			dev_dbg(cs40l50->dev, "Mailbox: LE_EST_DONE\n");
> +			break;
> +		case CS40L50_MBOX_AWAKE:
> +			dev_dbg(cs40l50->dev, "Mailbox: AWAKE\n");
> +			break;
> +		case CS40L50_MBOX_INIT:
> +			dev_dbg(cs40l50->dev, "Mailbox: INIT\n");
> +			break;
> +		case CS40L50_MBOX_ACK:
> +			dev_dbg(cs40l50->dev, "Mailbox: ACK\n");
> +			break;
> +		case CS40L50_MBOX_ERR_EVENT_UNMAPPED:
> +			dev_err(cs40l50->dev, "Unmapped event\n");
> +			break;
> +		case CS40L50_MBOX_ERR_EVENT_MODIFY:
> +			dev_err(cs40l50->dev, "Failed to modify event index\n");
> +			break;
> +		case CS40L50_MBOX_ERR_NULLPTR:
> +			dev_err(cs40l50->dev, "Null pointer\n");
> +			break;
> +		case CS40L50_MBOX_ERR_BRAKING:
> +			dev_err(cs40l50->dev, "Braking not in progress\n");
> +			break;
> +		case CS40L50_MBOX_ERR_INVAL_SRC:
> +			dev_err(cs40l50->dev, "Suspend/resume invalid source\n");
> +			break;
> +		case CS40L50_MBOX_ERR_ENABLE_RANGE:
> +			dev_err(cs40l50->dev, "GPIO enable out of range\n");
> +			break;
> +		case CS40L50_MBOX_ERR_GPIO_UNMAPPED:
> +			dev_err(cs40l50->dev, "GPIO not mapped\n");
> +			break;
> +		case CS40L50_MBOX_ERR_ISR_RANGE:
> +			dev_err(cs40l50->dev, "GPIO ISR out of range\n");
> +			break;
> +		case CS40L50_MBOX_PERMANENT_SHORT:
> +			dev_crit(cs40l50->dev, "Permanent short detected\n");
> +			break;
> +		case CS40L50_MBOX_RUNTIME_SHORT:
> +			dev_err(cs40l50->dev, "Runtime short detected\n");
> +			error = cs40l50_error_release(cs40l50);
> +			if (error)
> +				goto out_mutex;
> +			break;
> +		default:
> +			dev_err(cs40l50->dev, "Payload %#X not recognized\n", val);
> +			error = -EINVAL;
> +			goto out_mutex;
> +		}
> +	}

I don't think we need such a large chunk of code just to translate the mailbox
codes to human-readable strings; leave that to the datasheet. Just print the
numeric value.

> +
> +	error = -EIO;
> +
> +out_mutex:
> +	mutex_unlock(&cs40l50->lock);
> +
> +	return IRQ_RETVAL(!error);
> +}
> +
> +static irqreturn_t cs40l50_error(int irq, void *data);
> +
> +static const struct cs40l50_irq cs40l50_irqs[] = {
> +	CS40L50_IRQ(AMP_SHORT,		"Amp short",		error),
> +	CS40L50_IRQ(VIRT2_MBOX,		"Mailbox",		process_mbox),
> +	CS40L50_IRQ(TEMP_ERR,		"Overtemperature",	error),
> +	CS40L50_IRQ(BST_UVP,		"Boost undervoltage",	error),
> +	CS40L50_IRQ(BST_SHORT,		"Boost short",		error),
> +	CS40L50_IRQ(BST_ILIMIT,		"Boost current limit",	error),
> +	CS40L50_IRQ(UVLO_VDDBATT,	"Boost UVLO",		error),
> +	CS40L50_IRQ(GLOBAL_ERROR,	"Global",		error),
> +};
> +
> +static irqreturn_t cs40l50_error(int irq, void *data)
> +{
> +	struct cs40l50_private *cs40l50 = data;
> +
> +	dev_err(cs40l50->dev, "%s error\n", cs40l50_irqs[irq].name);
> +
> +	return IRQ_RETVAL(!cs40l50_error_release(cs40l50));
> +}
> +
> +static const struct regmap_irq cs40l50_reg_irqs[] = {
> +	CS40L50_REG_IRQ(IRQ1_INT_1,	AMP_SHORT),
> +	CS40L50_REG_IRQ(IRQ1_INT_2,	VIRT2_MBOX),
> +	CS40L50_REG_IRQ(IRQ1_INT_8,	TEMP_ERR),
> +	CS40L50_REG_IRQ(IRQ1_INT_9,	BST_UVP),
> +	CS40L50_REG_IRQ(IRQ1_INT_9,	BST_SHORT),
> +	CS40L50_REG_IRQ(IRQ1_INT_9,	BST_ILIMIT),
> +	CS40L50_REG_IRQ(IRQ1_INT_10,	UVLO_VDDBATT),
> +	CS40L50_REG_IRQ(IRQ1_INT_18,	GLOBAL_ERROR),
> +};
> +
> +static struct regmap_irq_chip cs40l50_irq_chip = {
> +	.name =			"CS40L50 IRQ Controller",
> +
> +	.status_base =		CS40L50_IRQ1_INT_1,
> +	.mask_base =		CS40L50_IRQ1_MASK_1,
> +	.ack_base =		CS40L50_IRQ1_INT_1,
> +	.num_regs =		22,
> +
> +	.irqs =			cs40l50_reg_irqs,
> +	.num_irqs =		ARRAY_SIZE(cs40l50_reg_irqs),
> +
> +	.runtime_pm =		true,
> +};
> +
> +static int cs40l50_irq_init(struct cs40l50_private *cs40l50)
> +{
> +	struct device *dev = cs40l50->dev;
> +	int error, i, irq;
> +
> +	error = devm_regmap_add_irq_chip(dev, cs40l50->regmap, cs40l50->irq,
> +					 IRQF_ONESHOT | IRQF_SHARED, 0,
> +					 &cs40l50_irq_chip, &cs40l50->irq_data);
> +	if (error)
> +		return error;
> +
> +	for (i = 0; i < ARRAY_SIZE(cs40l50_irqs); i++) {
> +		irq = regmap_irq_get_virq(cs40l50->irq_data, cs40l50_irqs[i].irq);
> +		if (irq < 0) {
> +			dev_err(dev, "Failed getting %s\n", cs40l50_irqs[i].name);
> +			return irq;
> +		}
> +
> +		error = devm_request_threaded_irq(dev, irq, NULL,
> +						  cs40l50_irqs[i].handler,
> +						  IRQF_ONESHOT | IRQF_SHARED,
> +						  cs40l50_irqs[i].name, cs40l50);
> +		if (error) {
> +			dev_err(dev, "Failed requesting %s\n", cs40l50_irqs[i].name);
> +			return error;
> +		}
> +	}

This is kind of an uncommon design pattern; if anyone reads /proc/interrupts
on their system, it's going to be full of L50 interrupts. Normally we declare
a single IRQ, read the status register(s) from inside its handler and then
act accordingly.

What is the motivation for having one handler per interrupt status bit? If
multiple bits are set at once, does the register get read multiple times and
if so, does doing so clear any pending status? Or are the status registers
write-to-clear instead of read-to-clear?

> +
> +	return 0;
> +}
> +
> +static int cs40l50_part_num_resolve(struct cs40l50_private *cs40l50)
> +{
> +	struct device *dev = cs40l50->dev;
> +	int error;
> +
> +	error = regmap_read(cs40l50->regmap, CS40L50_DEVID, &cs40l50->devid);
> +	if (error)
> +		return error;
> +
> +	if (cs40l50->devid != CS40L50_DEVID_A) {
> +		dev_err(dev, "Invalid device ID: %#010X\n", cs40l50->devid);
> +		return -EINVAL;
> +	}
> +
> +	error = regmap_read(cs40l50->regmap, CS40L50_REVID, &cs40l50->revid);
> +	if (error)
> +		return error;
> +
> +	if (cs40l50->revid != CS40L50_REVID_B0) {
> +		dev_err(dev, "Invalid revision: %#04X\n", cs40l50->revid);
> +		return -EINVAL;
> +	}

I recommend this be '<' and not '!=' so that the driver isn't immediately
broken if a backwards-compatible metal fix hits the market (e.g. B1).

> +
> +	dev_info(dev, "Cirrus Logic CS40L50 revision %02X\n", cs40l50->revid);
> +
> +	return 0;
> +}
> +
> +int cs40l50_probe(struct cs40l50_private *cs40l50)
> +{
> +	struct device *dev = cs40l50->dev;
> +	int error;
> +
> +	mutex_init(&cs40l50->lock);
> +
> +	cs40l50->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
> +	if (IS_ERR(cs40l50->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(cs40l50->reset_gpio),
> +				     "Failed getting reset GPIO\n");
> +
> +	error = devm_regulator_bulk_get(dev, ARRAY_SIZE(cs40l50_supplies),
> +					cs40l50_supplies);
> +	if (error)
> +		goto err_reset;

You shouldn't have to reset the device here; by initializing the GPIO as
GPIOD_OUT_HIGH, it is already asserted, which is required while the rails
are in an unknown state.

If GPIOD_OUT_HIGH is 1.8 V and not GND on your board, then the polarity
specified in your dts is backwards. gpiod is a logical API, not a physical
API. HIGH/1 = asserted (GND for active low when configured properly in
dts); LOW/0 = deasserted. Please check the flags in 'interrupts'.

> +
> +	error = regulator_bulk_enable(ARRAY_SIZE(cs40l50_supplies),
> +				      cs40l50_supplies);
> +	if (error)
> +		goto err_reset;

And here.

> +
> +	usleep_range(CS40L50_CP_READY_US, CS40L50_CP_READY_US + 100);
> +
> +	gpiod_set_value_cansleep(cs40l50->reset_gpio, 1);

This confirms your dts is backwards. To drive an active-low reset high using
the gpiod API, you must write zero here. Fixing this will allow you to get
rid of the goto label.

> +
> +	usleep_range(CS40L50_CP_READY_US, CS40L50_CP_READY_US + 1000);
> +
> +	pm_runtime_set_autosuspend_delay(cs40l50->dev, CS40L50_AUTOSUSPEND_MS);
> +	pm_runtime_use_autosuspend(cs40l50->dev);
> +	pm_runtime_set_active(cs40l50->dev);
> +	pm_runtime_get_noresume(cs40l50->dev);
> +	devm_pm_runtime_enable(cs40l50->dev);
> +
> +	error = cs40l50_part_num_resolve(cs40l50);
> +	if (error)
> +		goto err_supplies;
> +
> +	error = cs40l50_irq_init(cs40l50);
> +	if (error)
> +		goto err_supplies;
> +
> +	error = devm_mfd_add_devices(dev, PLATFORM_DEVID_NONE, cs40l50_devs,
> +				     ARRAY_SIZE(cs40l50_devs), NULL, 0, NULL);
> +	if (error)
> +		goto err_supplies;
> +
> +	pm_runtime_mark_last_busy(cs40l50->dev);
> +	pm_runtime_put_autosuspend(cs40l50->dev);
> +
> +	return 0;
> +
> +err_supplies:
> +	regulator_bulk_disable(ARRAY_SIZE(cs40l50_supplies), cs40l50_supplies);

I recommend moving the disable call to a devm_add_action_or_reset callback;
this will save you the trouble of having to disable the regulators in the
error path or a remove callback, which can go away.

> +err_reset:
> +	gpiod_set_value_cansleep(cs40l50->reset_gpio, 0);

This won't be necessary once you fix the polarity in your dts.

> +
> +	return error;
> +}
> +EXPORT_SYMBOL_GPL(cs40l50_probe);
> +
> +int cs40l50_remove(struct cs40l50_private *cs40l50)
> +{
> +	regulator_bulk_disable(ARRAY_SIZE(cs40l50_supplies), cs40l50_supplies);
> +	gpiod_set_value_cansleep(cs40l50->reset_gpio, 1);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(cs40l50_remove);
> +
> +static int cs40l50_runtime_suspend(struct device *dev)
> +{
> +	struct cs40l50_private *cs40l50 = dev_get_drvdata(dev);
> +
> +	return regmap_write(cs40l50->regmap, CS40L50_DSP_MBOX, CS40L50_ALLOW_HIBER);
> +}
> +
> +static int cs40l50_runtime_resume(struct device *dev)
> +{
> +	struct cs40l50_private *cs40l50 = dev_get_drvdata(dev);
> +	int error, i;
> +	u32 val;
> +
> +	/* Device NAKs when exiting hibernation, so optionally retry here. */
> +	for (i = 0; i < CS40L50_DSP_TIMEOUT_COUNT; i++) {
> +		error = regmap_write(cs40l50->regmap, CS40L50_DSP_MBOX,
> +				     CS40L50_PREVENT_HIBER);
> +		if (!error)
> +			break;
> +
> +		usleep_range(CS40L50_DSP_POLL_US, CS40L50_DSP_POLL_US + 100);
> +	}
> +
> +	for (; i < CS40L50_DSP_TIMEOUT_COUNT; i++) {
> +		error = regmap_read(cs40l50->regmap, CS40L50_DSP_MBOX, &val);
> +		if (!error && val == 0)
> +			return 0;
> +
> +		usleep_range(CS40L50_DSP_POLL_US, CS40L50_DSP_POLL_US + 100);
> +	}
> +
> +	return error ? error : -ETIMEDOUT;

This is a style preference, but it's perfectly legal to write 'return error ? : ...

> +}
> +
> +EXPORT_GPL_DEV_PM_OPS(cs40l50_pm_ops) = {
> +	RUNTIME_PM_OPS(cs40l50_runtime_suspend, cs40l50_runtime_resume, NULL)
> +};
> +
> +MODULE_DESCRIPTION("CS40L50 Advanced Haptic Driver");
> +MODULE_AUTHOR("James Ogletree, Cirrus Logic Inc. <james.ogletree@cirrus.com>");
> +MODULE_LICENSE("GPL");
> diff --git a/drivers/mfd/cs40l50-i2c.c b/drivers/mfd/cs40l50-i2c.c
> new file mode 100644
> index 000000000000..be1b130eb94b
> --- /dev/null
> +++ b/drivers/mfd/cs40l50-i2c.c
> @@ -0,0 +1,69 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * CS40L50 I2C Driver
> + *
> + * Copyright 2023 Cirrus Logic, Inc.
> + *
> + */
> +
> +#include <linux/i2c.h>
> +#include <linux/mfd/cs40l50.h>
> +
> +static int cs40l50_i2c_probe(struct i2c_client *client,
> +			     const struct i2c_device_id *id)
> +{
> +	struct device *dev = &client->dev;
> +	struct cs40l50_private *cs40l50;
> +
> +	cs40l50 = devm_kzalloc(dev, sizeof(*cs40l50), GFP_KERNEL);
> +	if (!cs40l50)
> +		return -ENOMEM;
> +
> +	i2c_set_clientdata(client, cs40l50);
> +
> +	cs40l50->regmap = devm_regmap_init_i2c(client, &cs40l50_regmap);
> +	if (IS_ERR(cs40l50->regmap))
> +		return dev_err_probe(cs40l50->dev, PTR_ERR(cs40l50->regmap),
> +				     "Failed to initialize register map\n");
> +
> +	cs40l50->dev = dev;
> +	cs40l50->irq = client->irq;
> +
> +	return cs40l50_probe(cs40l50);
> +}
> +
> +static void cs40l50_i2c_remove(struct i2c_client *client)
> +{
> +	struct cs40l50_private *cs40l50 = i2c_get_clientdata(client);
> +
> +	cs40l50_remove(cs40l50);
> +}
> +
> +static const struct i2c_device_id cs40l50_id_i2c[] = {
> +	{"cs40l50", 0},
> +	{}
> +};
> +MODULE_DEVICE_TABLE(i2c, cs40l50_id_i2c);
> +
> +static const struct of_device_id cs40l50_of_match[] = {
> +	{ .compatible = "cirrus,cs40l50" },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, cs40l50_of_match);
> +
> +static struct i2c_driver cs40l50_i2c_driver = {
> +	.driver = {
> +		.name = "cs40l50",
> +		.of_match_table = cs40l50_of_match,
> +		.pm = pm_ptr(&cs40l50_pm_ops),
> +	},
> +	.id_table = cs40l50_id_i2c,
> +	.probe = cs40l50_i2c_probe,
> +	.remove = cs40l50_i2c_remove,
> +};
> +
> +module_i2c_driver(cs40l50_i2c_driver);
> +
> +MODULE_DESCRIPTION("CS40L50 I2C Driver");
> +MODULE_AUTHOR("James Ogletree, Cirrus Logic Inc. <james.ogletree@cirrus.com>");
> +MODULE_LICENSE("GPL");
> diff --git a/drivers/mfd/cs40l50-spi.c b/drivers/mfd/cs40l50-spi.c
> new file mode 100644
> index 000000000000..8311d48efedf
> --- /dev/null
> +++ b/drivers/mfd/cs40l50-spi.c
> @@ -0,0 +1,68 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * CS40L50 SPI Driver
> + *
> + * Copyright 2023 Cirrus Logic, Inc.
> + *
> + */
> +
> +#include <linux/input/cs40l50.h>
> +#include <linux/mfd/spi.h>
> +
> +static int cs40l50_spi_probe(struct spi_device *spi)
> +{
> +	struct cs40l50_private *cs40l50;
> +	struct device *dev = &spi->dev;
> +
> +	cs40l50 = devm_kzalloc(dev, sizeof(*cs40l50), GFP_KERNEL);
> +	if (!cs40l50)
> +		return -ENOMEM;
> +
> +	spi_set_drvdata(spi, cs40l50);
> +
> +	cs40l50->regmap = devm_regmap_init_spi(spi, &cs40l50_regmap);
> +	if (IS_ERR(cs40l50->regmap))
> +		return dev_err_probe(cs40l50->dev, PTR_ERR(cs40l50->regmap),
> +				     "Failed to initialize register map\n");
> +
> +	cs40l50->dev = dev;
> +	cs40l50->irq = spi->irq;
> +
> +	return cs40l50_probe(cs40l50);
> +}
> +
> +static void cs40l50_spi_remove(struct spi_device *spi)
> +{
> +	struct cs40l50_private *cs40l50 = spi_get_drvdata(spi);
> +
> +	cs40l50_remove(cs40l50);
> +}
> +
> +static const struct spi_device_id cs40l50_id_spi[] = {
> +	{"cs40l50", 0},
> +	{}
> +};
> +MODULE_DEVICE_TABLE(spi, cs40l50_id_spi);
> +
> +static const struct of_device_id cs40l50_of_match[] = {
> +	{ .compatible = "cirrus,cs40l50" },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, cs40l50_of_match);
> +
> +static struct spi_driver cs40l50_spi_driver = {
> +	.driver = {
> +		.name = "cs40l50",
> +		.of_match_table = cs40l50_of_match,
> +		.pm = pm_ptr(&cs40l50_pm_ops),
> +	},
> +	.id_table = cs40l50_id_spi,
> +	.probe = cs40l50_spi_probe,
> +	.remove = cs40l50_spi_remove,
> +};
> +
> +module_spi_driver(cs40l50_spi_driver);
> +
> +MODULE_DESCRIPTION("CS40L50 SPI Driver");
> +MODULE_AUTHOR("James Ogletree, Cirrus Logic Inc. <james.ogletree@cirrus.com>");
> +MODULE_LICENSE("GPL");
> diff --git a/include/linux/mfd/cs40l50.h b/include/linux/mfd/cs40l50.h
> new file mode 100644
> index 000000000000..c625a999a5ae
> --- /dev/null
> +++ b/include/linux/mfd/cs40l50.h
> @@ -0,0 +1,198 @@
> +/* SPDX-License-Identifier: GPL-2.0
> + *
> + * CS40L50 Advanced Haptic Driver with waveform memory,
> + * integrated DSP, and closed-loop algorithms
> + *
> + * Copyright 2023 Cirrus Logic, Inc.
> + *
> + */
> +
> +#ifndef __CS40L50_H__
> +#define __CS40L50_H__
> +
> +#include <linux/firmware/cirrus/cs_dsp.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/input.h>
> +#include <linux/input/cirrus_haptics.h>
> +#include <linux/interrupt.h>
> +#include <linux/pm.h>
> +#include <linux/property.h>
> +#include <linux/regmap.h>
> +
> +/* Power Supply Configuration */
> +#define CS40L50_BLOCK_ENABLES2			0x201C
> +#define CS40L50_ERR_RLS				0x2034
> +#define CS40L50_PWRMGT_CTL			0x2900
> +#define CS40L50_BST_LPMODE_SEL			0x3810
> +#define CS40L50_DCM_LOW_POWER		0x1
> +#define CS40L50_OVERTEMP_WARN		0x4000010
> +
> +/* Interrupts */
> +#define CS40L50_IRQ1_INT_1			0xE010
> +#define CS40L50_IRQ1_INT_2			0xE014
> +#define CS40L50_IRQ1_INT_8			0xE02C
> +#define CS40L50_IRQ1_INT_9			0xE030
> +#define CS40L50_IRQ1_INT_10			0xE034
> +#define CS40L50_IRQ1_INT_18			0xE054
> +#define CS40L50_IRQ1_MASK_1			0xE090
> +#define CS40L50_IRQ1_MASK_2			0xE094
> +#define CS40L50_IRQ1_MASK_20			0xE0DC
> +#define CS40L50_IRQ_MASK_2_OVERRIDE	0xFFDF7FFF
> +#define CS40L50_IRQ_MASK_20_OVERRIDE	0x15C01000
> +#define CS40L50_AMP_SHORT_MASK		BIT(31)
> +#define CS40L50_VIRT2_MBOX_MASK		BIT(21)
> +#define CS40L50_TEMP_ERR_MASK		BIT(31)
> +#define CS40L50_BST_UVP_MASK		BIT(6)
> +#define CS40L50_BST_SHORT_MASK		BIT(7)
> +#define CS40L50_BST_ILIMIT_MASK		BIT(8)
> +#define CS40L50_UVLO_VDDBATT_MASK	BIT(16)
> +#define CS40L50_GLOBAL_ERROR_MASK	BIT(15)
> +#define CS40L50_GLOBAL_ERR_RLS		BIT(11)
> +#define CS40L50_IRQ(_irq, _name, _hand)		\
> +	{					\
> +		.irq = CS40L50_ ## _irq ## _IRQ,\
> +		.name = _name,			\
> +		.handler = cs40l50_ ## _hand,	\
> +	}
> +#define CS40L50_REG_IRQ(_reg, _irq)					\
> +	[CS40L50_ ## _irq ## _IRQ] = {					\
> +		.reg_offset = (CS40L50_ ## _reg) - CS40L50_IRQ1_INT_1,	\
> +		.mask = CS40L50_ ## _irq ## _MASK			\
> +	}
> +
> +/* Mailbox Inbound Commands */
> +#define CS40L50_RAM_BANK_INDEX_START	0x1000000
> +#define CS40L50_RTH_INDEX_START		0x1400000
> +#define CS40L50_RTH_INDEX_END		0x1400001
> +#define CS40L50_ROM_BANK_INDEX_START	0x1800000
> +#define CS40L50_ROM_BANK_INDEX_END	0x180001A
> +#define CS40L50_PREVENT_HIBER		0x2000003
> +#define CS40L50_ALLOW_HIBER		0x2000004
> +#define CS40L50_OWT_PUSH		0x3000008
> +#define CS40L50_STOP_PLAYBACK		0x5000000
> +#define CS40L50_OWT_DELETE		0xD000000
> +
> +/* Mailbox Outbound Commands */
> +#define CS40L50_MBOX_QUEUE_BASE				0x11004
> +#define CS40L50_MBOX_QUEUE_END				0x1101C
> +#define CS40L50_DSP_MBOX				0x11020
> +#define CS40L50_MBOX_QUEUE_WT				0x28042C8
> +#define CS40L50_MBOX_QUEUE_RD				0x28042CC
> +#define CS40L50_MBOX_HAPTIC_COMPLETE_MBOX	0x1000000
> +#define CS40L50_MBOX_HAPTIC_COMPLETE_GPIO	0x1000001
> +#define CS40L50_MBOX_HAPTIC_COMPLETE_I2S	0x1000002
> +#define CS40L50_MBOX_HAPTIC_TRIGGER_MBOX	0x1000010
> +#define CS40L50_MBOX_HAPTIC_TRIGGER_GPIO	0x1000011
> +#define CS40L50_MBOX_HAPTIC_TRIGGER_I2S		0x1000012
> +#define CS40L50_MBOX_INIT			0x2000000
> +#define CS40L50_MBOX_AWAKE			0x2000002
> +#define CS40L50_MBOX_F0_EST_START		0x7000011
> +#define CS40L50_MBOX_F0_EST_DONE		0x7000021
> +#define CS40L50_MBOX_REDC_EST_START		0x7000012
> +#define CS40L50_MBOX_REDC_EST_DONE		0x7000022
> +#define CS40L50_MBOX_LE_EST_START		0x7000014
> +#define CS40L50_MBOX_LE_EST_DONE		0x7000024
> +#define CS40L50_MBOX_ACK			0xA000000
> +#define CS40L50_MBOX_PANIC			0xC000000
> +#define CS40L50_MBOX_WATERMARK			0xD000000
> +#define CS40L50_MBOX_ERR_EVENT_UNMAPPED		0xC0004B3
> +#define CS40L50_MBOX_ERR_EVENT_MODIFY		0xC0004B4
> +#define CS40L50_MBOX_ERR_NULLPTR		0xC0006A5
> +#define CS40L50_MBOX_ERR_BRAKING		0xC0006A8
> +#define CS40L50_MBOX_ERR_INVAL_SRC		0xC0006AC
> +#define CS40L50_MBOX_ERR_ENABLE_RANGE		0xC000836
> +#define CS40L50_MBOX_ERR_GPIO_UNMAPPED		0xC000837
> +#define CS40L50_MBOX_ERR_ISR_RANGE		0xC000838
> +#define CS40L50_MBOX_PERMANENT_SHORT		0xC000C1C
> +#define CS40L50_MBOX_RUNTIME_SHORT		0xC000C1D
> +
> +/* DSP */
> +#define CS40L50_DSP1_XMEM_PACKED_0		0x2000000
> +#define CS40L50_DSP1_XMEM_UNPACKED32_0		0x2400000
> +#define CS40L50_SYS_INFO_ID			0x25E0000
> +#define CS40L50_DSP1_XMEM_UNPACKED24_0		0x2800000
> +#define CS40L50_RAM_INIT			0x28021DC
> +#define CS40L50_POWER_ON_SEQ			0x2804320
> +#define CS40L50_OWT_BASE			0x2805C34
> +#define CS40L50_NUM_OF_WAVES			0x280CB4C
> +#define CS40L50_CORE_BASE			0x2B80000
> +#define CS40L50_CCM_CORE_CONTROL		0x2BC1000
> +#define CS40L50_DSP1_YMEM_PACKED_0		0x2C00000
> +#define CS40L50_DSP1_YMEM_UNPACKED32_0		0x3000000
> +#define CS40L50_DSP1_YMEM_UNPACKED24_0		0x3400000
> +#define CS40L50_DSP1_PMEM_0			0x3800000
> +#define CS40L50_DSP1_PMEM_5114			0x3804FE8
> +#define CS40L50_MEM_RDY_HW		0x2
> +#define CS40L50_RAM_INIT_FLAG		0x1
> +#define CS40L50_CLOCK_DISABLE		0x80
> +#define CS40L50_CLOCK_ENABLE		0x281
> +#define CS40L50_DSP_POLL_US		1000
> +#define CS40L50_DSP_TIMEOUT_COUNT	100
> +#define CS40L50_CP_READY_US		2200
> +#define CS40L50_PSEQ_SIZE		200
> +#define CS40L50_AUTOSUSPEND_MS		2000
> +
> +/* Firmware */
> +#define CS40L50_FW			"cs40l50.wmfw"
> +#define CS40L50_WT			"cs40l50.bin"
> +
> +/* Calibration */
> +#define CS40L50_REDC_ESTIMATION		0x2802F7C
> +#define CS40L50_F0_ESTIMATION		0x2802F84
> +#define CS40L50_F0_STORED		0x2805C00
> +#define CS40L50_REDC_STORED		0x2805C04
> +#define CS40L50_RE_EST_STATUS		0x3401B40
> +
> +/* Open wavetable */
> +#define CS40L50_OWT_SIZE		0x2805C38
> +#define CS40L50_OWT_NEXT		0x2805C3C
> +#define CS40L50_NUM_OF_OWT_WAVES	0x2805C40
> +
> +/* GPIO */
> +#define CS40L50_GPIO_BASE		0x2804140
> +
> +/* Device */
> +#define CS40L50_DEVID			0x0
> +#define CS40L50_REVID			0x4
> +#define CS40L50_DEVID_A		0x40A50
> +#define CS40L50_REVID_B0	0xB0
> +
> +enum cs40l50_irq_list {
> +	CS40L50_GLOBAL_ERROR_IRQ,
> +	CS40L50_UVLO_VDDBATT_IRQ,
> +	CS40L50_BST_ILIMIT_IRQ,
> +	CS40L50_BST_SHORT_IRQ,
> +	CS40L50_BST_UVP_IRQ,
> +	CS40L50_TEMP_ERR_IRQ,
> +	CS40L50_VIRT2_MBOX_IRQ,
> +	CS40L50_AMP_SHORT_IRQ,
> +};
> +
> +struct cs40l50_irq {
> +	const char *name;
> +	int irq;
> +	irqreturn_t (*handler)(int irq, void *data);
> +};
> +
> +struct cs40l50_private {
> +	struct device *dev;
> +	struct regmap *regmap;
> +	struct cs_dsp dsp;
> +	struct mutex lock;
> +	struct gpio_desc *reset_gpio;
> +	struct regmap_irq_chip_data *irq_data;
> +	struct input_dev *input;
> +	const struct firmware *wmfw;
> +	struct cs_hap haptics;
> +	u32 devid;
> +	u32 revid;
> +	int irq;
> +};
> +
> +int cs40l50_probe(struct cs40l50_private *cs40l50);
> +int cs40l50_remove(struct cs40l50_private *cs40l50);
> +
> +extern const struct regmap_config cs40l50_regmap;
> +extern const struct dev_pm_ops cs40l50_pm_ops;
> +
> +#endif /* __CS40L50_H__ */
> -- 
> 2.25.1
> 

Kind regards,
Jeff LaBundy

