Return-Path: <devicetree+bounces-271957-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JYFEbGnqmlTVAEAu9opvQ
	(envelope-from <devicetree+bounces-271957-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:08:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEC121E751
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:08:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8B263300F170
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 10:08:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94F8035B62C;
	Fri,  6 Mar 2026 10:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="DPpjrnPQ"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11011029.outbound.protection.outlook.com [52.101.70.29])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AFA35C192;
	Fri,  6 Mar 2026 10:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.70.29
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772791724; cv=fail; b=n1vZw9Tiwuc5q6xuW5NvqogvtlgTJQ0AJe+Q3Fr2hnWN4zsfPrhTuSJP+tQq1nt1XuBNYL+6B4jNONk9eZKYLEtAGWkmjAKq1p5iVprRXPWt+/GhWNB0fsg7IiHL+yPRWAygUQZqueVIRKGAPdzmmVhSns6PJSMfgUEZsdoBo9k=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772791724; c=relaxed/simple;
	bh=jLt92ilxxcWveaU4K4MvG4GY7qpgrryZoh0Y0WBr1ig=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=heR1A3ZUR/JvXVxBVfHHvh7ZpBsfo0DsII97/VhK6FRo4v0m1xm6hMN7CXXtuwHfaP8PzCTgBrs6oSADYgvqnafMJ/lumf9BOJsuDgsT29XZMZTCXfQbO18+9uGPq/I6ck4B+sLMo7/WkFmUq1NFwKP/HptWNlF3OH0n3xVyAPk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=DPpjrnPQ; arc=fail smtp.client-ip=52.101.70.29
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QjuVUc2vrIAqNtXM9I/ev4zoS7HeY8xNyzmW7i5nzTcnkgS3Wgn/gy6CrtX5zvccjX42tjRvxURqBs0K6xZv3FNkfPd/tqz9dB1QzSTqApo2HdbI5JOO9KA53ZutEaoZrw349DtDJDeNMpcncSPF5jVOgnnXoOnbXQeM815ZoJ3MauQM/fh7Avyazgb/NOQHHeMoUw6GII6r/QFGUXim6ybCTHmkpCvQElHgyvZT6JdUW4GzJxrhfqZrtnU8toUYF4PO7G+s9wStv7UnssfxmYc2ddL4gLgpFxfJ/ED9kpyCR3kxxTc8b1r2YGOVOoRe2iZHZgqHRzZD4fa6DeWuxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t0S/7pAMInwSX8OguL9Eku5P6cr2r/g20BQyXYhbimc=;
 b=ccLkrm4/yYBBkny1RDOgtWmmo0jRj7xdEknRZnEMEi17FwQJ/eNEFead0as4hV8C9w7oPYUEiB/W3MMwHT0LDrWLo20ENIWx/Q6NXG3bGt2m0IBsANbyr7VGIMqKLiaoB4zy6EgcGjPzFu6jUz94S7FaNz4eE/dU8URE1hOVEc3qfa+yM9tSR/zg+aiOytsfGwKaWQ1NXU1liuAzCrth9e++HrXvGqQjYtWKFKtWwd9hsvd1LSyQpTkT4Z37V9f3u8R7+DFBYGvuYqZpdAfKS4YaJ9Z3B5s5X6fujICoerDpsmISbmA2puWQuzaE4E2T9xCejnZ6bl46Wke5yYtx7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t0S/7pAMInwSX8OguL9Eku5P6cr2r/g20BQyXYhbimc=;
 b=DPpjrnPQJcSZv8wPk3zDdRJfyb0B9Y1r+4wW5Fw9rxQOdhmWFmNMlwyq3ztILQPSWR/Dob7YXm+K9Kbnqg69cnfl4TZ7nzJIqeuAsFfP+2mCx8Rh6uqquOu68AYD1sEq4snxIk8PH1fCICVALEVXn2lde/XVLX6PLGL8vhJhmO+n//oCF99NOUqSuJhyr6gmfIzzogYacY9u8Y7uXhnQslkt+zhu86dVPS3DvUDIZaFAgrHltLsdma6q1ve6JcTgWloLdR/pjh2Mn8ImOBbfw5sv/37FdXrejnCEBSmUdajNIiwz3p6w49ALyj6GMBQCqMcCAvxlvYpoBOFMT1E2Tg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB8829.eurprd04.prod.outlook.com (2603:10a6:102:20c::17)
 by DU2PR04MB8517.eurprd04.prod.outlook.com (2603:10a6:10:2d0::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.18; Fri, 6 Mar
 2026 10:08:40 +0000
Received: from PAXPR04MB8829.eurprd04.prod.outlook.com
 ([fe80::52de:f9c9:8c2e:7dd5]) by PAXPR04MB8829.eurprd04.prod.outlook.com
 ([fe80::52de:f9c9:8c2e:7dd5%5]) with mapi id 15.20.9678.017; Fri, 6 Mar 2026
 10:08:40 +0000
Date: Fri, 6 Mar 2026 18:01:00 +0800
From: Xu Yang <xu.yang_2@nxp.com>
To: Frank Li <Frank.li@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, jun.li@nxp.com
Subject: Re: [PATCH 1/2] arm64: dts: imx94: add USB nodes
Message-ID: <gipvn6ggraf3pc27tpokkefua6vufnlmtx5xwn3i4jc76tok3z@5kbam2pqndyl>
References: <20260305075527.1116943-1-xu.yang_2@nxp.com>
 <aamivVBK7Aygh_cJ@lizhi-Precision-Tower-5810>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aamivVBK7Aygh_cJ@lizhi-Precision-Tower-5810>
X-ClientProxiedBy: AS4P191CA0008.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d5::19) To PAXPR04MB8829.eurprd04.prod.outlook.com
 (2603:10a6:102:20c::17)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB8829:EE_|DU2PR04MB8517:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d82a4fb-1fd2-4b61-861c-08de7b685730
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|19092799006|52116014|366016|7416014|376014|38350700014;
X-Microsoft-Antispam-Message-Info:
	c54/R0s7heAbfPoCVFVa3ED6OqcY1LC8oJTbghYmFAUnkp+npnvl2Imbcop+7WunT3d9vCCQ/6G5RsDnVubjQktPed0Y4WVPrGCNbIoTu+FQVDlyMYYgpmX5kCnMod/i4d97SJmUSaTiUZeXsZfcQDuUjVLudpeF4HxnFrQHW6CdZs5Qq3KA2qW1XFXSigV/5OC0Iyk+PHkvJCzBKJOGbH2EnPHjJiLww/4IKoP2Cb69qoedIxe6bGKJcLTI/dY2hTx6qNzR6MSJNdULZdRHTvJgYTkP6wX5eY3A8mHH7Fc2m8A1Q++WXjARkxocBF6F0OqugTgmoK/x3koeKYY8XBARS6BTCPohIlhNUekokuhHVdqzkS47HsK9+jNO/UmHp7QJzF1PxWzkKs4U0VAabNj+Utt0JYqWv3xdRLZUd9bJt2rD0b16wMVHHktnYObP2irelfoK08IF+2ATB0q0vQ1Sh46DKQ4qaWAbPsc5X41xdmAHP4792aoa/qVvjOLptrROu0F7+hIHS+S0OOYC1gsYEdAC7DbDUydxUIWb+r8NIRNOAJC8MsUzKXkYpTeunaG9T6HPIxszmmEv03Z5IUuI9fTuCyWak+SJSRGtkhrmIXz57HDhNdlitCd/s5TqiIy6hnZJUW0PgbhQwAcDvzJ/E6MsjnH4Js8lxK2kaSKgwPsfXL6tmSxhM/XicMgClAkXgpGmTN9W8TME/jt6ElLgN0btMI1XMAwgmPUQaZdhFTXg4mCBclAMB339wIl9q58xppxJDI80uZBIjasVMIfwL0DDKzH7n6LLwHnN+Ew=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8829.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(52116014)(366016)(7416014)(376014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?yXE5jhkP7sqg05EFHyRd7klk0F+g4mIkxmxfyROAiN3hY+5NgM+18cMmBc5z?=
 =?us-ascii?Q?u7X0b0rVIVXW+Hz5EooJXw7Qgsb0pQX7YeMooJsMugGGlYRoVHbO6gcsaqFQ?=
 =?us-ascii?Q?MhR8voozDjcpwhCRIM3yS8Rh/Tqv8x5yNK6vAf8VwfEr7JeaLJDRztlCfPkl?=
 =?us-ascii?Q?CHauVj3hHrwSqDV/hl82Yq8WQYjmRpcv7sRoR0zbCzGPwXVpJlwgiCyGsM++?=
 =?us-ascii?Q?nrYfKkDkXKaYStA0BfZeNCYOCVrh9MRdzwHJuH46p6osTQE9EWEqslNI0Sgh?=
 =?us-ascii?Q?hDuZY5T/X8PfAfEDyGexj7h9Iglxic8hoBsXSZBVAJkxTXjGLedXwu9xB8AA?=
 =?us-ascii?Q?X/vgt//XYZwFTjcAVvmvLdtAr2B/LC8tO6QoDcEwT7+hvDIYMLAHL6WwHSJB?=
 =?us-ascii?Q?zMAfnajyk98+5ZXlQc0+aSxz/HmngUUh5g27t+l96OoyZg/DbkXx744NRCTK?=
 =?us-ascii?Q?PKFePXfcTq6bYDKYzk01sKmPQiOYjzQRMAgK6mMSWJFLEA4PbbzsGGxqX0UB?=
 =?us-ascii?Q?xMQl9FmzGKshgt8HSZACeYJZKM1fk7yDh1GFJnoYSKPEdp+ivMV1TMLjuSWS?=
 =?us-ascii?Q?ciMZ5no+gJqHDgAi52ir5vgNv8Vz31G2osydrDPbDJutQ7GtekczRuaDDcvO?=
 =?us-ascii?Q?kVsO7gbNd/oMKsh7bqsC6igA/gbaJBMwmf51SzGICGDUId6yvOawGbh+vR1V?=
 =?us-ascii?Q?pau7PZdojUe4EaQdTqILeRQTuk+MV4WyEbzpLL9b497zRuQ9hrqYJP1LokOx?=
 =?us-ascii?Q?3snZbEfcVC+Q3exzCXCdX34UWZLaVmATsKASgyNLq4r6SDt991QVLIpFLKja?=
 =?us-ascii?Q?SBLmZdnjX2BnteMz4pw3ZdIAUN6ECoDZkS4CEKZIkRAjjuN4opbKbMnXrmfj?=
 =?us-ascii?Q?i98/0dPIb8MS8ADEFMoALaW2QFNC1I/VyP5HSZBVAiNZ4EUNtIon6IXjHKAw?=
 =?us-ascii?Q?dnBqeiH+MhRdXi817oMKAY1JXa50Ka29+Tv7XiT0+VGY1qkg9W0ffjkzOSGJ?=
 =?us-ascii?Q?ylq4zPTCv6QaaYGVbNXyHgz2wBmT+TeP0SQnJpEKS4zPbnEofj9vr6yJ+yYI?=
 =?us-ascii?Q?GXQWljvhLJxuYolKzPNx9YGxS2VrrnkeLsF4OPFeZVzy+2ITN5jEu9IdJt8C?=
 =?us-ascii?Q?8k66a35GJexZTJgSruaZZgo241/dog4GcPpndfqYK7vtWdoqccT3PSlkfEvI?=
 =?us-ascii?Q?KI590nPupvs//Vvl1usDuOXgJ1o607uC+m3CW/QlvN95AQg1aqn1luHCFf7s?=
 =?us-ascii?Q?c6goWvVa1zTpDHdxbDZgfRlhqopA7qsAF6yKfwwsupvAMdajj0muVVanT8QB?=
 =?us-ascii?Q?xx4Y1ALlzLL9vbwxYiOkmNPmWk3zR4UdTORsTvatt1DMCboXUjViLPhVJyFo?=
 =?us-ascii?Q?C1qsjjJ9mpsAAHprW2iBhnD4TsQ9w+qUKWlF3AYMBPTMeStuhxpqvJbh8Nr7?=
 =?us-ascii?Q?1oMSjZcnOgIjtMpEg6blqiL/DosaOEcSYel3nV3ZK9DeK1L7rd9djitO+cCI?=
 =?us-ascii?Q?j3TzARhkdU2Az3hthv6IR2xkPysAo7DJmo0Q0SJQ8BLG1cCCrZF4zhKrFmEC?=
 =?us-ascii?Q?0ptsjGI9sath/w64metD+qC8tHC9qGyPYQb8fG3L4CJei5aTWblAiX3xTET+?=
 =?us-ascii?Q?EcOJpPQsdga7eUeBRgQwR6rrefsC5xlYlDp/aajnUuxAJpoTmb9veADzu03L?=
 =?us-ascii?Q?BTbnhC/BagfPPXbSgBnaYF4lYKnV3piEjKQV14lnqSzAS85fM4sd6WRuHAbO?=
 =?us-ascii?Q?hnptAiBYxQ=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d82a4fb-1fd2-4b61-861c-08de7b685730
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8829.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2026 10:08:40.3942
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kYF+CtTEaT1wRW46EWdfKuP0jvLjtnGLwHaW9nufuOKu6SRKV+UfjJ3lDCR1X2uZhxV9G4Eo7ocZBKHAPW96LA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8517
X-Rspamd-Queue-Id: AAEC121E751
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,nxp.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271957-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xu.yang_2@nxp.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[nxp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 10:35:25AM -0500, Frank Li wrote:
> On Thu, Mar 05, 2026 at 03:55:26PM +0800, Xu Yang wrote:
> > add USB2.0, USB3.0 controller and USB phy nodes.
> >
> > Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> > ---
> >  arch/arm64/boot/dts/freescale/imx94.dtsi | 61 ++++++++++++++++++++++++
> >  1 file changed, 61 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx94.dtsi b/arch/arm64/boot/dts/freescale/imx94.dtsi
> > index d2f31c8caf6e..8384166400e9 100644
> > --- a/arch/arm64/boot/dts/freescale/imx94.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx94.dtsi
> > @@ -161,6 +161,13 @@ its: msi-controller@48040000 {
> >  		};
> >  	};
> >
> > +	usbphynop: usbphynop {
> > +		compatible = "usb-nop-xceiv";
> > +		clocks = <&scmi_clk IMX94_CLK_HSIO>;
> > +		clock-names = "main_clk";
> > +		#phy-cells = <0>;
> > +	};
> > +
> 
> move these to after clock-sai4-mclk1, no address block is before @hex node.

OK.

Thanks,
Xu Yang

