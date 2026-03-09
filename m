Return-Path: <devicetree+bounces-272673-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 40MNDcRLrmn/BwIAu9opvQ
	(envelope-from <devicetree+bounces-272673-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 05:25:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EEC233AA7
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 05:25:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0CC8E3013D7E
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 04:25:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CC3120E030;
	Mon,  9 Mar 2026 04:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="G16/3Yua"
X-Original-To: devicetree@vger.kernel.org
Received: from CO1PR03CU002.outbound.protection.outlook.com (mail-westus2azon11010013.outbound.protection.outlook.com [52.101.46.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0CE617D6;
	Mon,  9 Mar 2026 04:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.46.13
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773030337; cv=fail; b=OYhQBci1WrDa+Fo5+5dJlZNGbb5a4eZBm7Wne60fgki1WplIpsCq5/yrkcEOO2jj8UK2eGeIMsGbmc0eNTD/CbG+9USfch2uIfc/dq1rjCOw3cw2VEnLc1Sg4sJ4MsemkZ9lLFKdyksOB84WZjOEdeKkNUPMohDbokvT5JYIe8s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773030337; c=relaxed/simple;
	bh=Q1i8qEtWR9C4cWWnbTPyKh5AzPLMolyXnJCBHG0OmZ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=ANbmzPQrwUKiuPeH52Alg2xeK9IUde7l/aphfX0LazdqFLb/79gtsslSF/q09bBfzLTCGLwHtnr7zXJGZ4Kx8C/J5Q8ICCcVbe8ZDK/wZmq8BGYyvVeawpPunxz10XjnPDoOycqvUdSuSPRqb/lfljsX2CpRLzmxZ++BsiGWadU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=G16/3Yua; arc=fail smtp.client-ip=52.101.46.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lRN6nAKgix4Jyzc75bP6tlSW2cQElHhoEPOmxaq5FokSTLaqLcRhS4+BWxDwrHbcD2fQmP5W+tbbI7MMnbOhfz528r4PDNhoT/s1JVgDpjNHn1/SSLILhoPd0v27YEdu/ryB0zdc5FjdojMQvkkw0P+07iJxmyEPS9q1gPAQIFxhsn8K0vwt4VnU0frhNY0JVs7QAGVOXduKxYcS1rsBytA+Ko1Qa905EQM+lRbTtGBiTfR44gh86keCnd5/I/vDSu+/b156Ig/tYiZqOdBWzXNYRL4/JAEP8RaoOpOFlFGSTDPaq+l6Hs2z1exbyk7KSPuv4CtTmFSq31eNXVNZiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gOFYFrNG7csO8LJapcOpG5Swn8fSuI5lRsJu7fwU+N0=;
 b=qU7kOqSn6ySJ1wuJeiRmJ5yy7HShZwBBViyAIwHPipnDT6cXtrimmiudLxfm+FtBLtSSctYNGmNmyVyCRIklSJKNpISzi3+dOtqfX3uwEVyg3IGZ3YunmeG98dINqbr/QEltZHpm3yRoAa5IxZsHCb9w0aXGzXKnBrJiHzNAmtrsOkiyawtzyxUR6OYOcWAZWwoPL9LrUCH1cRT169nwfBxTaqiynd6DOiet1mg3CByzKHBDlq/BVv3oA8fdFZaamo2uppflwNWHWXcqKuxJo0tZUv4Uazy/MqyJaCdWPtxA6l3Yw1rVzptanM7bHo7i/gVZEfUMjCWZaGe7nULf6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.23.195) smtp.rcpttodomain=lists.phytec.de smtp.mailfrom=ti.com;
 dmarc=pass (p=quarantine sp=none pct=100) action=none header.from=ti.com;
 dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gOFYFrNG7csO8LJapcOpG5Swn8fSuI5lRsJu7fwU+N0=;
 b=G16/3Yua7xe8ydCCi+DjcsWI29JcgZ+pAHftINE6CSJSg+qB34x+sXnZfVLmVWBAw7b+yQXGKSU689ZoB9jWEFkS1NEb8Pxe70iWPBjYTj8q7eGZYhPVHGrUCHxnP+i2zT0jRS0jtaHH/K+tY9/ijux/Gmz8T4TgdqWcVV3vvIY=
Received: from CH0PR03CA0085.namprd03.prod.outlook.com (2603:10b6:610:cc::30)
 by CH3PR10MB7744.namprd10.prod.outlook.com (2603:10b6:610:1ba::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.22; Mon, 9 Mar
 2026 04:25:33 +0000
Received: from CH1PEPF0000AD76.namprd04.prod.outlook.com
 (2603:10b6:610:cc:cafe::33) by CH0PR03CA0085.outlook.office365.com
 (2603:10b6:610:cc::30) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9678.24 via Frontend Transport; Mon,
 9 Mar 2026 04:25:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.23.195)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.23.195 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.23.195; helo=lewvzet201.ext.ti.com; pr=C
Received: from lewvzet201.ext.ti.com (198.47.23.195) by
 CH1PEPF0000AD76.mail.protection.outlook.com (10.167.244.53) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Mon, 9 Mar 2026 04:25:32 +0000
Received: from DLEE208.ent.ti.com (157.170.170.97) by lewvzet201.ext.ti.com
 (10.4.14.104) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Sun, 8 Mar
 2026 23:25:31 -0500
Received: from DLEE204.ent.ti.com (157.170.170.84) by DLEE208.ent.ti.com
 (157.170.170.97) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Sun, 8 Mar
 2026 23:25:30 -0500
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DLEE204.ent.ti.com
 (157.170.170.84) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Sun, 8 Mar 2026 23:25:30 -0500
Received: from [172.24.233.103] (uda0132425.dhcp.ti.com [172.24.233.103])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 6294PRxl4063694;
	Sun, 8 Mar 2026 23:25:28 -0500
Message-ID: <e613c3b6-7cb0-4405-b6e4-108f4504b5a7@ti.com>
Date: Mon, 9 Mar 2026 09:55:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: ti: am62-phyboard-lyra: Add DT overlay for
 Lincoln LCD185-101CT panel
To: Wadim Egorov <w.egorov@phytec.de>, <nm@ti.com>, <kristo@kernel.org>,
	<robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <upstream@lists.phytec.de>
References: <20260303152541.2272501-1-w.egorov@phytec.de>
From: Vignesh Raghavendra <vigneshr@ti.com>
Content-Language: en-US
In-Reply-To: <20260303152541.2272501-1-w.egorov@phytec.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH1PEPF0000AD76:EE_|CH3PR10MB7744:EE_
X-MS-Office365-Filtering-Correlation-Id: a446486f-1af9-4121-2d03-08de7d93e745
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|36860700016|82310400026|376014;
X-Microsoft-Antispam-Message-Info:
	qPIUyvnVk8KrIaDF379ciRNKpUAQWLiOAnG2eNISoLSI0FmjV/4z4WLTnOfIc2EHMeb+TKOrmE7iUrOmIPNpbqEhenTHFBtONOp6Rt9Y6I54rds2xTpRM/0n1WC26Do7pMBtPFdDyQ4EKhBr3gZIBipfSr5c3wNeDVUF0Dd6hKFpxJoKl3VqanGonv4m/Wh1stUn51XBXXNUrIfEp+aeCt0AjvM2eEbDW+ui1Romo0Cxe8tx11Z6RyBQcOUOFtJimX/GFBtNX1VM0z3ERAVNAClAdPYgM9V+VOLxhOAUju7J9VjDofDR8KlW6Ptl6HBS2YxbigCMK1jk04i8p6FwRWDHfGb5EwnSocEllwnO09TJ0PaDlPMBCW7XH04nm3SWn9ERm80DxxbDpFlUgy6K4DUP+MXch8F9aKX9CSDDcMhu8GMmqZWcgR72rvm2xIUUqsNoiIU4eCq/AEmiPPpD9zIaNTkHFWglYbNY/3TUGsBmfrk3jL71Jp70/ylIMqbxmyGR6aPWgQNoqd5ucYUlKor6X+oTcM1pBSmf1gaE9KzPPQnGaSB8jyH5WiOIavGLnuC2/mY5gQUvW1++CkIxSClVIt52v/n6umI4UXhjuSaduymY6yCKPv5gkzfXhadCTEpBBbeWUBOgdS6Fl4jMRp+mGvnKlS2grq8uSKaOt6da+CEyEs767BQGGqTyNLp7tAoHFIQeqiDcvEdlEcm/ug==
X-Forefront-Antispam-Report:
	CIP:198.47.23.195;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:lewvzet201.ext.ti.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(1800799024)(36860700016)(82310400026)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	gQ3P4rgGuJ9vPpuPcgHaAGrNNVfAyaZ3FDp4G+GcVoMz3hG8Sy1T10iqT753ZfuMQCqWpzZ0j+ALyvwMIHTt+rulNMVv/PdJZXKESdegCkw5XW+rmTd/Tp5EdK7AnG+WAiT8DA55xWcUsbUs304JqehFSDC4tIAseXQuHUtYWLebsli8lKghZqLB4kuoxMiHR1oOVAuKcl0UlQAkqbHyum1QOQjjEQrZlCUw4JPMNj3d+/tv9p5XmtIdTCHtNfRU2eyttaPqIGS9AIv4ZExoY2UcJe6AO4ACdl0nM//SfPEL9aPaUYFO5oJ4skcKjSjNO/lP6/4xVeaddCQlTKqrL/Ub5U/UKejih7KDh1/7IU8qQhfrj1sNoQ/dI74FO/Z4OmkL/xYd7DU3fR/svHtYImAShJiY14nwqjWncT1cdta/ywmX3GE8NYQoEU6waKGY
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2026 04:25:32.5917
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a446486f-1af9-4121-2d03-08de7d93e745
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.23.195];Helo=[lewvzet201.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	CH1PEPF0000AD76.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7744
X-Rspamd-Queue-Id: 75EEC233AA7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ti.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272673-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ti.com:dkim,ti.com:url,ti.com:mid,5d:email,phytec.de:email,lkml.org:url];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vigneshr@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.0:email,0.0.0.1:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.987];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action



On 03/03/26 20:55, Wadim Egorov wrote:
> Add an overlay to support the Lincoln Tech Sol LCD185-101CT panel.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
> v2: 
>   - Add entry for build time test of overlay in Makefile
>   - Drop patch 1 and 2 from this series (both already on master)
> v1: https://lkml.org/lkml/2025/9/25/645
> ---
>  arch/arm64/boot/dts/ti/Makefile               |   4 +
>  .../ti/k3-am62-phyboard-lyra-oldi-lcd185.dtso | 188 ++++++++++++++++++
>  2 files changed, 192 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am62-phyboard-lyra-oldi-lcd185.dtso
> 
> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
> index ba01a929e06f..0a7efa6347c4 100644
> --- a/arch/arm64/boot/dts/ti/Makefile
> +++ b/arch/arm64/boot/dts/ti/Makefile
> @@ -25,6 +25,7 @@ dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-wifi-ivy.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-wifi-mallow.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-am625-verdin-wifi-yavia.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-am62x-phyboard-lyra-gpio-fan.dtbo
> +dtb-$(CONFIG_ARCH_K3) += k3-am62-phyboard-lyra-oldi-lcd185.dtbo
>  dtb-$(CONFIG_ARCH_K3) += k3-am62-lp-sk.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-am62-lp-sk-nand.dtbo
>  dtb-$(CONFIG_ARCH_K3) += k3-am62-pocketbeagle2.dtb
> @@ -186,6 +187,8 @@ k3-am625-phyboard-lyra-gpio-fan-dtbs := k3-am625-phyboard-lyra-rdk.dtb \
>  	k3-am62x-phyboard-lyra-gpio-fan.dtbo
>  k3-am625-phyboard-lyra-qspi-nor-dtbs := k3-am625-phyboard-lyra-rdk.dtb \
>  	k3-am6xx-phycore-qspi-nor.dtbo
> +k3-am625-phyboard-lyra-oldi-lcd185-dtbs := k3-am625-phyboard-lyra-rdk.dtb \
> +	k3-am62-phyboard-lyra-oldi-lcd185.dtbo
>  k3-am625-sk-csi2-imx219-dtbs := k3-am625-sk.dtb \
>  	k3-am62x-sk-csi2-imx219.dtbo
>  k3-am625-sk-csi2-ov5640-dtbs := k3-am625-sk.dtb \
> @@ -289,6 +292,7 @@ dtb- += k3-am625-beagleplay-csi2-ov5640.dtb \
>  	k3-am625-phyboard-lyra-disable-spi-nor.dtb \
>  	k3-am625-phyboard-lyra-gpio-fan.dtb \
>  	k3-am625-phyboard-lyra-qspi-nor.dtb \
> +	k3-am625-phyboard-lyra-oldi-lcd185.dtb \
>  	k3-am625-sk-csi2-imx219.dtb \
>  	k3-am625-sk-csi2-ov5640.dtb \
>  	k3-am625-sk-csi2-tevi-ov5640.dtb \
> diff --git a/arch/arm64/boot/dts/ti/k3-am62-phyboard-lyra-oldi-lcd185.dtso b/arch/arm64/boot/dts/ti/k3-am62-phyboard-lyra-oldi-lcd185.dtso
> new file mode 100644
> index 000000000000..3466890ee947
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am62-phyboard-lyra-oldi-lcd185.dtso
> @@ -0,0 +1,188 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2022 PHYTEC Messtechnik GmbH

		   2022-2026 ?

> + * Author: Wadim Egorov <w.egorov@phytec.de>
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/pwm/pwm.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include "k3-pinctrl.h"
> +
> +&{/} {
> +	display {
> +		compatible = "lincolntech,lcd185-101ct";
> +		backlight = <&backlight>;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				dual-lvds-odd-pixels;
> +				lcd_in0: endpoint {
> +					remote-endpoint = <&oldi_0_out>;
> +				};
> +			};
> +
> +			port@1 {
> +				dual-lvds-even-pixels;
> +				lcd_in1: endpoint {
> +					remote-endpoint = <&oldi_1_out>;
> +				};
> +			};
> +		};
> +	};
> +
> +	backlight: backlight {
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&bl_pwm_pins_default>;
> +
> +		compatible = "pwm-backlight";
> +

compatible goes first.

> +		brightness-levels = <0 4 8 16 32 64 128 255>;
> +		default-brightness-level = <6>;
> +
> +		enable-gpios = <&gpio_exp 5 GPIO_ACTIVE_HIGH>;
> +		pwms = <&epwm0 1 50000 0>;
> +	};
> +};
> +
> +&dss {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&main_oldi0_pins_default &main_dss0_pins_default>;
> +};
> +
> +&dss_ports {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	/* VP1: Output to OLDI */
> +	port@0 {
> +		reg = <0>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		dpi0_out0: endpoint@0 {
> +			reg = <0>;
> +			remote-endpoint = <&oldi_0_in>;
> +		};
> +
> +		dpi0_out1: endpoint@1 {
> +			reg = <1>;
> +			remote-endpoint = <&oldi_1_in>;
> +		};
> +	};
> +};
> +
> +&epwm0 {
> +	status = "okay";
> +};
> +
> +&main_i2c1 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	touchscreen@5d {
> +		compatible = "goodix,gt928";
> +		reg = <0x5d>;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&touch_screen_pins_default>;
> +
> +		interrupt-parent = <&main_gpio0>;
> +		interrupts = <19 IRQ_TYPE_LEVEL_LOW>;
> +
> +		reset-gpios = <&main_gpio0 18 GPIO_ACTIVE_HIGH>;
> +		irq-gpios = <&main_gpio0 19 GPIO_ACTIVE_HIGH>;
> +	};
> +};
> +
> +&main_pmx0 {
> +	bl_pwm_pins_default: bl-pwm-pins-default {

This will fail make dtbs_check

> +		pinctrl-single,pins = <
> +			AM62X_IOPAD(0x01b8, PIN_INPUT, 2) /* (C13) SPI0_CS1.EHRPWM0_B */
> +		>;
> +	};
> +
> +	touch_screen_pins_default: touch-screen-pins-default {
> +		pinctrl-single,pins = <
> +			AM62X_IOPAD(0x048, PIN_OUTPUT, 7) /* (N25) GPMC0_AD3.GPIO0_18 - RST */
> +			AM62X_IOPAD(0x04c, PIN_INPUT, 7) /* (P24) GPMC0_AD4.GPIO0_19 - INT */
> +		>;
> +	};
> +
> +	main_oldi0_pins_default: main-oldi0-pins-default {
> +		pinctrl-single,pins = <
> +			AM62X_IOPAD(0x0260, PIN_OUTPUT, 0) /* (AA5) OLDI0_A0N */
> +			AM62X_IOPAD(0x025c, PIN_OUTPUT, 0) /* (Y6) OLDI0_A0P */
> +			AM62X_IOPAD(0x0268, PIN_OUTPUT, 0) /* (AD3) OLDI0_A1N */
> +			AM62X_IOPAD(0x0264, PIN_OUTPUT, 0) /* (AB4) OLDI0_A1P */
> +			AM62X_IOPAD(0x0270, PIN_OUTPUT, 0) /* (Y8) OLDI0_A2N */
> +			AM62X_IOPAD(0x026c, PIN_OUTPUT, 0) /* (AA8) OLDI0_A2P */
> +			AM62X_IOPAD(0x0278, PIN_OUTPUT, 0) /* (AB6) OLDI0_A3N */
> +			AM62X_IOPAD(0x0274, PIN_OUTPUT, 0) /* (AA7) OLDI0_A3P */
> +			AM62X_IOPAD(0x0280, PIN_OUTPUT, 0) /* (AC6) OLDI0_A4N */
> +			AM62X_IOPAD(0x027c, PIN_OUTPUT, 0) /* (AC5) OLDI0_A4P */
> +			AM62X_IOPAD(0x0288, PIN_OUTPUT, 0) /* (AE5) OLDI0_A5N */
> +			AM62X_IOPAD(0x0284, PIN_OUTPUT, 0) /* (AD6) OLDI0_A5P */
> +			AM62X_IOPAD(0x0290, PIN_OUTPUT, 0) /* (AE6) OLDI0_A6N */
> +			AM62X_IOPAD(0x028c, PIN_OUTPUT, 0) /* (AD7) OLDI0_A6P */
> +			AM62X_IOPAD(0x0298, PIN_OUTPUT, 0) /* (AD8) OLDI0_A7N */
> +			AM62X_IOPAD(0x0294, PIN_OUTPUT, 0) /* (AE7) OLDI0_A7P */
> +			AM62X_IOPAD(0x02a0, PIN_OUTPUT, 0) /* (AD4) OLDI0_CLK0N */
> +			AM62X_IOPAD(0x029c, PIN_OUTPUT, 0) /* (AE3) OLDI0_CLK0P */
> +			AM62X_IOPAD(0x02a8, PIN_OUTPUT, 0) /* (AE4) OLDI0_CLK1N */
> +			AM62X_IOPAD(0x02a4, PIN_OUTPUT, 0) /* (AD5) OLDI0_CLK1P */
> +		>;
> +	};
> +};
> +
> +&oldi0 {
> +	status = "okay";
> +};
> +
> +&oldi1 {
> +	status = "okay";
> +};
> +
> +&oldi0_ports {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	port@0 {
> +		reg = <0>;
> +		oldi_0_in: endpoint {
> +			remote-endpoint = <&dpi0_out0>;
> +		};
> +	};
> +
> +	port@1 {
> +		reg = <1>;
> +		oldi_0_out: endpoint {
> +			remote-endpoint = <&lcd_in0>;
> +		};
> +	};
> +};
> +
> +&oldi1_ports {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	port@0 {
> +		reg = <0>;
> +		oldi_1_in: endpoint {
> +			remote-endpoint = <&dpi0_out1>;
> +		};
> +	};
> +
> +	port@1 {
> +		reg = <1>;
> +		oldi_1_out: endpoint {
> +			remote-endpoint = <&lcd_in1>;
> +		};
> +	};
> +};

-- 
Regards
Vignesh
https://ti.com/opensource


