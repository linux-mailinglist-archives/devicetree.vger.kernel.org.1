Return-Path: <devicetree+bounces-260780-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Hn+Ecsde2msBQIAu9opvQ
	(envelope-from <devicetree+bounces-260780-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 09:43:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E39ABADA85
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 09:43:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C0E423011C59
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 08:43:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE7DC3783B6;
	Thu, 29 Jan 2026 08:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="QjUXilvx"
X-Original-To: devicetree@vger.kernel.org
Received: from DB3PR0202CU003.outbound.protection.outlook.com (mail-northeuropeazon11010056.outbound.protection.outlook.com [52.101.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5610E37C102;
	Thu, 29 Jan 2026 08:43:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.84.56
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769676220; cv=fail; b=GEi2mxQVUuXKj1dhaZqWCy8vha9O8nl5+5+fZaBAwTY6V+nyEatKd6BPBZfwogd2OgV0sBUdgRIbE1441YoZbye12rPDfJnurSR0fN6n3f6E+qRFAlWsweorJg9mMA8Yap7zOBoeDRiMQ3GYTnvA4GyuRyYfdrgzZmmLNrNAN3E=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769676220; c=relaxed/simple;
	bh=SDMG2OUp68wT/V5y0kxhqPywxUWFyS/8lJIjEI8wnCw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Pne545dVgkHERei6JBxCZgDCzPYFJeuenmj77kgclS/B5yGQjRhd2RkPdnRQS5qUtJIZwkvPBIHWhIahwJ1vFQYm9pxyiCu29Wg9x2VEk4BjlRdBL1ftk53oZzinjUv70G4ytLGN6LHMSmI8fQDR0GFiWRxwcpYmULLP+QVgYi8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=QjUXilvx; arc=fail smtp.client-ip=52.101.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OcR/zoB2gx3a1W7zqpYGPqd0NquX0vZ8U015IGpTmEVlbqDiBiUNfjZ0avEUy+awamA6tMITu+1t8YzYnCUqw7Q9+cxiRvNWKa/ZDsq/GwHHHqPZN3VumKU/0lIZoNpFYEV9VG7CE9BgCty8BQCUf6D3TXJCezdGfCRmT4vflJArSfEg4z1309Sc1H6U2p3sdVcQjEwUUjcBNfzJHHAjpRY8asroxQW+D2JL7gtzN1Tjb96jg59yrxoE+6iB0Ion3St4KEAYWJ/2kxHKi6dxdJYB6Sbi8eYm+8iKNVc4z0QCyEFjZlTb+6/4jwq+LrMSUDIRc6CsnpqNiGE6sBb3bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mq3yEq86wsuYZVpSw+Hh4JIsficiXQkAuoCFSwnlpcM=;
 b=lYwmO9yilXRTXPQYOMBLmxpuYPRKtBDRVZaIt4YaZYJuD00SB0PcnjcDfTqCTd1bTnQH/q/yGBJixv5duJnycKFex1zeHRDcNCecfv4jlT+ZxJNw++ctI/JcG866n+fkYmVktcHffuIOGZKQRh9HqG10NG4eKKrvgpn+yM2+EOYK0heKeEL2NOH3opTB+azSL78WNybosiDl6A8mB+r3/ymoCtOGn7koDrprP/l6srseuEud9FzKYhr84MwanirOaYV98nk6w3p2etLY1UvJn60FsJ34YybCj6rHWCN07sFGMspK1IylrAFGEyN4yoel1rVLHo5WlpnVpA4ASFsNXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mq3yEq86wsuYZVpSw+Hh4JIsficiXQkAuoCFSwnlpcM=;
 b=QjUXilvxpBofatd78CnvGOQ5an9UFX1P9yATCuB3JtK57kw+L5W1WjbIFO3eL5SrFSUyK/nrp/WHJ1/U2dOgiiUYlTple/z6D4G7Yikot3T0MRCunma46iWIpcsOGXacmr2HWSgRsLpCGdowvPEN8Emodm1eLeXYaaLKdsBWVNSvBHhHfAsQZxttqff71Zw+9K3hscpMaTw3cP8/ZqZHED5lekLlCq0vZX4cWZDATY+qHElwWTlLCzjwVL+0aZwtbG1oCQXrzVvPSeLE6laICsjDS0dPuIfxa4UttLIkUGYLWWjfKmvKIGhbRBh2VbEviizezLDq7azoQB7+WwhXXg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from VI0PR04MB12114.eurprd04.prod.outlook.com
 (2603:10a6:800:315::13) by DB9PR04MB9674.eurprd04.prod.outlook.com
 (2603:10a6:10:306::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Thu, 29 Jan
 2026 08:43:34 +0000
Received: from VI0PR04MB12114.eurprd04.prod.outlook.com
 ([fe80::2943:c36f:6a8c:81f7]) by VI0PR04MB12114.eurprd04.prod.outlook.com
 ([fe80::2943:c36f:6a8c:81f7%5]) with mapi id 15.20.9564.006; Thu, 29 Jan 2026
 08:43:34 +0000
From: Sherry Sun <sherry.sun@nxp.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	frank.li@nxp.com,
	s.hauer@pengutronix.de,
	festevam@gmail.com,
	daniel.baluta@nxp.com,
	dario.binacchi@amarulasolutions.com,
	alexander.stein@ew.tq-group.com,
	Markus.Niebel@tq-group.com,
	matthias.schiffer@tq-group.com,
	y.moog@phytec.de,
	josua@solid-run.com,
	francesco.dolcini@toradex.com,
	primoz.fiser@norik.com
Cc: kernel@pengutronix.de,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V4 1/4] dt-bindings: arm: fsl: Add i.MX93 Wireless EVK board
Date: Thu, 29 Jan 2026 16:42:46 +0800
Message-Id: <20260129084249.3079432-2-sherry.sun@nxp.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20260129084249.3079432-1-sherry.sun@nxp.com>
References: <20260129084249.3079432-1-sherry.sun@nxp.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI1PR02CA0010.apcprd02.prod.outlook.com
 (2603:1096:4:1f7::17) To VI0PR04MB12114.eurprd04.prod.outlook.com
 (2603:10a6:800:315::13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI0PR04MB12114:EE_|DB9PR04MB9674:EE_
X-MS-Office365-Filtering-Correlation-Id: 75815220-1d4e-483d-c42e-08de5f127cc0
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
 BCL:0;ARA:13230040|366016|19092799006|1800799024|376014|52116014|7416014|38350700014|921020;
X-Microsoft-Antispam-Message-Info:
 =?us-ascii?Q?DzxNnbyqWNriNTT974YhKU+FIhQo3jnp5Cv5d7w5JB2CcbO+/+vDToRsEyhO?=
 =?us-ascii?Q?xIVHYk4AWrdbU9125cU/GkRi9S7V5n25VFPmzkI/uYzzkhzNzXwh+CChqCEH?=
 =?us-ascii?Q?W76Jjc+3txXkK0xX8I76lBg0opQUF9APepHe5/S/Ec+Jqe+wTRpUe/iJ09Zu?=
 =?us-ascii?Q?5UrVswBY+TbPIjHRAnuNZ4YBIngIIhyCKJ6WQapp84SuOst4y15OWDjmhHyS?=
 =?us-ascii?Q?3f1ZFm/ydd5SXYa4Obj38ZUtpk4k7AzYkoHoa//0BEU+RSzOwbZC5ULaCOwM?=
 =?us-ascii?Q?ajljJDtEIBBaNbpGBMZlH1mBZcwGON6ypTSXizD+Tsg+xI9Er7A9eJqdLR8G?=
 =?us-ascii?Q?ka7SBsHDeEsLfh+gICJefmtNDxK0/tTnvc/TNCHVL6CiSA3urWq2LqddFVmT?=
 =?us-ascii?Q?5X6DfFsDK5noyjr5qwzP4ndUWiN6uwgNGY1emFg+vXq5ERJPwO+yM0VblywX?=
 =?us-ascii?Q?zWmrJ5BTi/i/4b86pzgxbfZ02biuWHCj2M74pi3P+zHFd5r3bawPZla1XHrP?=
 =?us-ascii?Q?CzpXJToZ8bTW48CbEaHs62CtcMmEWZGR9tMqRjwEeVJy1qorNGfbhuzbU+yn?=
 =?us-ascii?Q?AR+7Kn8fUNyYJNitWjs9T6WHZJgvGPq0metzwJ4nGb5xFBcs0g4PhnHPQKGK?=
 =?us-ascii?Q?CbBFMbxM6IPGUn7No4Y67E5CCjKC+tKx1ocNlhHui48y/l0YBLu14qYeZzyy?=
 =?us-ascii?Q?WbPt8bhu2aKkUKRbKfiKwcAt372gL8vKfxWTtHD+hQpaL5CNTM2tEj/SKLzs?=
 =?us-ascii?Q?VOnW3wgnYXjV9ohQz2cD19rQoxHYFn+mxsn8JC8f5aQHVhcK8nryZZZ+pnBH?=
 =?us-ascii?Q?GUjq8q7KHd4QUHqhxnEbljy5kGSpPhVnE7iWrceYHTOp2ayFVDEuoh94g6ft?=
 =?us-ascii?Q?fFh5mh0T6sI7l23lsUbqKyb2nrWXN+Zr69GrePD2uXISS3bwleGias9iaQx3?=
 =?us-ascii?Q?4zgBhmeq8VCLbqW7ZWu4YCh7SDPHJKBs8ewx2eRkN6dZtkQlFTKffHtzE1bC?=
 =?us-ascii?Q?DIQsNbupxlwMwhEp4L2CqJEYKmLPIXXhAlYbhJPqbsLQ9e8WwCZV/QgB44M5?=
 =?us-ascii?Q?of6Yrr2TcHYJhTmV5lpRmo8Fs/R+PORny2iKNRBMyso6xYKuTvHFx8djs4mh?=
 =?us-ascii?Q?1WKpwGEthNMNv6M54pX8FN4SAoW+RlhCO+iOxXYoV9gzWFBXiJiQL7LeJ4ya?=
 =?us-ascii?Q?qFkz7uoefdqth0rRbioqA53emm9CM7sZwRcEXkIoJBZYvH+1lo5eOuK63b73?=
 =?us-ascii?Q?V+HBU3bq7MHfbpDaXQpdK5tIPVkptH9LWBfRqOC1cZkDoazQA+Dx4STdDXUd?=
 =?us-ascii?Q?6q+zavN2wTNy9cRqI8sLywC+oRVnIXXSiHuMuk0APABg8VqMSB3SxEltN7Bb?=
 =?us-ascii?Q?LsLmF4nQIOgJdIV8So+WgksWt0kBihpDV83Df5okbc//afW4iwW2FOqjtXAN?=
 =?us-ascii?Q?OF4hckpJjhELiz0y741WsDp5IF+5uXCuEzqqbyJZBidDLpKxBxQqaCOTIwyv?=
 =?us-ascii?Q?BqsfV1SP565QGS0DZJHOFzQ5FYEOlQCV8DHb1yvxIjXyYCMwlXGmgCSQE+73?=
 =?us-ascii?Q?MHx0mkk+XnUkWmPxw7rNOFKB9pLFOqPkOkgqMyuKbwgjzaTdJ+BASuf21EvP?=
 =?us-ascii?Q?t4Y/PrpUYxsZ6da642n+dMtB/EKDPGuWv8UM12GhWZwF?=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI0PR04MB12114.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(19092799006)(1800799024)(376014)(52116014)(7416014)(38350700014)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?us-ascii?Q?PKvpZzaRw/LS9l7gMad/ujGLSaFQ+6q+iFmysRGoZKPG17K9mAIN9Nn2E0QJ?=
 =?us-ascii?Q?UG6zAFYML8MuIvlaIkLzE4RvHvbpYHE/aB+D44QQ65U3P9DS2ToXadDevg2E?=
 =?us-ascii?Q?Pwo4w/QxmBvp+hzU8+kLppVnDntRRn8EvxkN2SbdokCtPJRgfzmkFMfVYWfn?=
 =?us-ascii?Q?rGCn9POLy6cANQnjE2WiWQgn5z949MWO2WH0SvqCB2WC1rK9LU0vcJ6TfGtq?=
 =?us-ascii?Q?MT9LgSEBHCrMW5QW2guLgzmQDvW0NPTCnbkDjxfDTfHtF8kA5sn2Rv3tjfJL?=
 =?us-ascii?Q?ZJEiYGSiK9tjhVmNdEvjYyHG8uaCieAJasGDBRx4cySWjr/wNHwnZ8MEg1n6?=
 =?us-ascii?Q?npIzNa/FZSlkxX0sxKj1X3DNY1ywCGgH8n2/13ETl8VFZrH2yR2fL9kQAJl0?=
 =?us-ascii?Q?ngjJg7Gs6vv1B3O596RU1QLJq6MiLupBhFKKPQKbBQ8gLB8RYCWCZqZjqvyH?=
 =?us-ascii?Q?qS522866drVaJjHoX8RD925C3tKBvpGkv2ZEp2KhcmcTNOow/Fi+lIOjzmXb?=
 =?us-ascii?Q?X39YYmYYA8sYZdaDJr3Bv5Xs0J6BIm+8Mp1oNhKN2rd21lt9C6GWOOpWjiFC?=
 =?us-ascii?Q?KXE/FQikABwL7DO7v8nqSMo7L0mUWmDyaM7icSRIQekO0oTI8mTmsx6KlM1E?=
 =?us-ascii?Q?hH/5u54D71EFJMAmCUfAUeOHcw97vUxhIBhN8LlmM7TWkHNgvy90WDYGaOS7?=
 =?us-ascii?Q?fHO31XBUsa20VbUP3MBk5Y8BKAnts+rBA3dB5oQNZHpNNn0BsLl11WZGLPMo?=
 =?us-ascii?Q?DykOniS8TEpGW6q9CUKgBOavyxnI9LUccgYxMJoe+g5ZVl1TYDCZ1OJol9WO?=
 =?us-ascii?Q?fch9vQ/tDcv5FJPEPHFM7nHpuiIDJ4A6e3h6scb585T48Xs2PIvP95smB0Zc?=
 =?us-ascii?Q?YenYMcG+vpmMwiJ3I8Irh/mchC+dYRIX73H/oVPBCgQU18zXxVkj8t8cMjuV?=
 =?us-ascii?Q?fSMvQhjbsiUhgADQf1CEhfZeglZpX2a3RXkLrQCOEsPfbsmhSOmqR1Alzj+F?=
 =?us-ascii?Q?OkwnWnlXNGktbHzEODICl6YGaia81zDVcKZCl3M7Nj/jbvz8YID1hhfvf5Em?=
 =?us-ascii?Q?T0lHeMfh9sGljaaHcHVR7I6yVnz9v1MEMrMqYTQIhLY/2IxU290tiJ1Xm2zB?=
 =?us-ascii?Q?bG6Kq+kpBFAkRI64aQ2lLmlRa8I92vSAv1SYQ+Tpb2GVRWfIrbPCLkxGDRtZ?=
 =?us-ascii?Q?Rf4wM609dJQzEVlAryU8j3f0FIyCyPWJfHSt5zdKck+BIKmTec3DrvesIaAn?=
 =?us-ascii?Q?FadAokFFsE30w8T8ffCV/s1gjj22bAt9FiuYzyfsNFj+oPXNQqLplQ9EcJYF?=
 =?us-ascii?Q?bTyfpAmHPi+pztRBAJR9KZ+dnWhZ8PyE5Xr9/9Azuh/upaG0ntIW3UoV2026?=
 =?us-ascii?Q?FuZ6rOH1a23XoZ1o7fyvJOBm32tpnLhj2F3X4B7jNg7KKhZgQv11v93nvqGn?=
 =?us-ascii?Q?vrDMRDoB4u4zI243HlpK1D7xYW0k44M8OIHE4azUNbxS/0XEuxuBcz+GzdYi?=
 =?us-ascii?Q?2vUxg87bRIPNQOzVlPZ3zfDvplbDryVqrMvYqxaU9AgIsYUhAzEN+P+jjs2U?=
 =?us-ascii?Q?gzq7EBbFRCf0JlBm7+W9lER8/OtdBby78UQp7cEqLzmzJAUrePLx/0PhxVRg?=
 =?us-ascii?Q?lHNILIftFzu07+OFl1uN3sCueUrIhR8t5FdWBjkPI4cL/qscqt0dBZialAs+?=
 =?us-ascii?Q?AmUj96NAuta4aZBlIjGwGShmbysrLbjRRO/OdyO8HMR3funkcGJYUDJvEmZU?=
 =?us-ascii?Q?aXsn+UHrlg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75815220-1d4e-483d-c42e-08de5f127cc0
X-MS-Exchange-CrossTenant-AuthSource: VI0PR04MB12114.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 08:43:34.3071
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /NqVZ8esn0+MujwT11PuuAAXblf1zE7WWEBhhvY5DyoF0+QnFPyxgjr8/10Bt+f3n9Au1lLyKuc9voGQb8fANw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9674
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,amarulasolutions.com,ew.tq-group.com,tq-group.com,phytec.de,solid-run.com,toradex.com,norik.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260780-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sherry.sun@nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,nxp.com:email,nxp.com:dkim,nxp.com:mid]
X-Rspamd-Queue-Id: E39ABADA85
X-Rspamd-Action: no action

Add DT compatible string for NXP i.MX93 Wireless EVK board.

i.MX93 Wireless SiP is created by integrating i.MX93 and IW610 WLCSP
(Wi-Fi + BLE + 802.15.4). And i.MX93 Wireless EVK board with the i.MX93
Wireless SiP basically reuse the i.MX93 11x11 EVK board, with some minor
functional and pin connection differences.

Signed-off-by: Sherry Sun <sherry.sun@nxp.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 5716d701292c..df01b928c6c5 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1441,6 +1441,7 @@ properties:
               - fsl,imx93-11x11-evk       # i.MX93 11x11 EVK Board
               - fsl,imx93-11x11-frdm      # i.MX93 11x11 FRDM Board
               - fsl,imx93-14x14-evk       # i.MX93 14x14 EVK Board
+              - fsl,imx93-wireless-evk    # i.MX93 and IW610G WLCSP (Wi-Fi + BLE + 802.15.4) SiP EVK Board
           - const: fsl,imx93
 
       - description: i.MX94 based Boards
-- 
2.37.1


