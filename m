Return-Path: <devicetree+bounces-264799-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBlJMFGgjGmPrgAAu9opvQ
	(envelope-from <devicetree+bounces-264799-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 16:29:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D5943125AAA
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 16:29:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E45393002F77
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 15:29:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1016E2E0412;
	Wed, 11 Feb 2026 15:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="IpCuP6t6"
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11013003.outbound.protection.outlook.com [52.101.83.3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF66C2BEC20;
	Wed, 11 Feb 2026 15:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.83.3
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770823755; cv=fail; b=GyllTohYnbwZK7mkhLxxUfHUgDVnUMZvmSqAYK4h/m1aN7+zLPepg7qOX/WmaboTPVCzGtsl6MeZpaF1LN41ef5kGVaQOmlvTOvfAUHBxcRWZcMbztNEoEh5zmktmCC4vXdQTnit5nZvQqsXAGzALb6fm35jgf6FCYXzMNiCkAc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770823755; c=relaxed/simple;
	bh=20ArZSLupKXGl/DhoY4+AAJzdLR9xF/5dlq9YYN+FEs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Content-Type:
	 Content-Disposition:In-Reply-To:MIME-Version; b=APFYSfsga9h5fNfyj1Eq/jvHM3FPi1nPb7LwiSBWIad7yjH3+VVzxh/PY9gbR+5ZxKwN6yZHULTuqHh4LYIROA3lPLwPGWmQRjLcSzOjCKsLtS5z5Kc7Sxdy+N7R7G5wgQC+HB/UWp8DNQfmkk3XGAKTpOE81L7RZh6SS+N1as0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=IpCuP6t6; arc=fail smtp.client-ip=52.101.83.3
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dKVdwSO97GOGyvm07YtJQ/bciYHJ/r8zlySRZcn45+bvpKax8IR0d+zQvyQeB8KsNWQj17qzWTYq75llSRGNK+4ZKATwAlycggVB/rmjKvS1LuP13vo02gRAsczEMJKtS7/GRl31xOsUXLkrQZ13Xdm+LlJ0fQjqdP4s0yfkpyvRxPaG7cgr8UfMpDOi7an5EOM2OQNDOKkCx5ueQEjsv2KNv8fbdjBWx60zxpxC6gDsB+Mk6wNbnq8S7YlovfDvDz5jaHYsidDEjpLI6jGGiCuMftg7M0jfbi3/kH0fwUMM9iYMMFyHgnyC+uIL0mRQLsMvBNTjgr+1QuZm6AeVGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=20ArZSLupKXGl/DhoY4+AAJzdLR9xF/5dlq9YYN+FEs=;
 b=YhWwUaYFMl/W7kE3/KTFyGMi9tlbourKid7HsFbxZMa5VTVzep2dcxj68Lc8/L/pYJrhedn7O9oONOofAO99GTTh73anw9s21BGhV7NBnBbs8I9KAsIz9g6rXgRto3MPTZILO2h9364HvgZKAosaqj0lL7DetiRfsFEiXGfJNfRzgR9QwUSeNZjjbD517J75BFsgBwfdYumqZV4kMHRgsSEcr+VYVHzhoTs+q7saHXtQHWkbIV50x28F/ij9oAree+p8QPCE4KYDK6iEDYQaglJrZGYIDZFdir1n8Bm8meO9i9T3bjlNRTd/gZkmEjMz0VbGO2zSVRagtrzkHpCnxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=20ArZSLupKXGl/DhoY4+AAJzdLR9xF/5dlq9YYN+FEs=;
 b=IpCuP6t68bgTNvktdwVrzQahYd3zqjQ9JxTihwOMj/H3sletyQkqM0oQB6lZt+J2YcmzqqrZrYWj9/FSt2uTmpBE4iPip8cMvs1Iw+dny5hHZ72Au8uqOPtp/bGeDkHlkf1wMbnPN8M/SvMGFSr63f2uthxV6rM7xa5GfFXexdmlZqyvy+l5ITZGHWmwEXKiKFKcLki737hoXQmfdWeMbcoDB8KsOPpH7rxZzRqAp33dNWeB/Nbm/3WKkiuPSrn6sB/RVFq8ggW+8dF/EpcSJeLWE+puSezK+6lf8SWjo5v/ozbTRFpbRvJHGbPuHjV+notDgIGnUdo2hLyG22F9lA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by VI0PR04MB10832.eurprd04.prod.outlook.com (2603:10a6:800:267::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.19; Wed, 11 Feb
 2026 15:29:09 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9587.010; Wed, 11 Feb 2026
 15:29:08 +0000
Date: Wed, 11 Feb 2026 10:28:58 -0500
From: Frank Li <Frank.li@nxp.com>
To: Joseph Guo <qijian.guo@nxp.com>
Cc: Yanan Yang <yanan.yang@nxp.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, justin.jiang@nxp.com,
	Lei Xu <lei.xu@nxp.com>, Xiaofeng Wei <xiaofeng.wei@nxp.com>
Subject: Re: [PATCH v5 2/2] arm64: dts: freescale: add NXP FRDM-IMX91S board
 support
Message-ID: <aYygOtB1d3XYi_EB@lizhi-Precision-Tower-5810>
References: <20260210-imx91s-frdm-v5-0-b3e9a67d2285@nxp.com>
 <20260210-imx91s-frdm-v5-2-b3e9a67d2285@nxp.com>
 <aYtT9vOAYTYuTsC6@lizhi-Precision-Tower-5810>
 <9b223407-9218-4382-9968-6541cf485b9d@nxp.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9b223407-9218-4382-9968-6541cf485b9d@nxp.com>
X-ClientProxiedBy: PH8PR02CA0017.namprd02.prod.outlook.com
 (2603:10b6:510:2d0::20) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|VI0PR04MB10832:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f557b60-40ac-4756-d2f8-08de69824ca1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|19092799006|1800799024|376014|52116014|7416014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?vaTCJ90tkLd4cMhZ0gK1BvyYgQjyWTUuSWyJmWDsY+b2PKxYndRi9LWRnzTz?=
 =?us-ascii?Q?L6ToRzNAHj4oGiyjl+l+hIEnSFsFswqxHKhhlZjWUujQQ05QyooFwbkxxbGE?=
 =?us-ascii?Q?dByyP0oque6YqplHeKtZE+Zd3OxGqvL6T38yXPEtNdfWpzE6UD+XK3IcmjtH?=
 =?us-ascii?Q?S5nVjNLUqbrniTST9UX9Y4dVEMZ1ARltr1wYpQuy02x2t214HNaZxHfjnXZW?=
 =?us-ascii?Q?zzOCcoTO1K7tx4mjspOFhNLgUKntWMisWNyytBqBbXSz8l0UqG9QMt1N+xo5?=
 =?us-ascii?Q?zzvC2c0Ii8u+8wGX/GB6Tsc0GET5Vq9b/iONUEBkeRHCjfUouyzQHgG/faPZ?=
 =?us-ascii?Q?RWR9SUzCcnnda+RpdUqpn1yh+XIDv5vo2Ht3b+8asseoISgreSaaF/3SGclv?=
 =?us-ascii?Q?gH54bfXrI3dV0scOrh69zr80fskUWNfj6Vp6fQfyK8P0nUenjN8UelM93T5p?=
 =?us-ascii?Q?5DUdTm/uVbaY84Zzq8zzOZUGILqwvCFNBzdribikO7zvqgIZHM03wFKoBeku?=
 =?us-ascii?Q?jtv2NrQxG6Ba2LuOWowZmv2MSxrzMF/rn3Y9tmi+lsAt8UP4eYxD6PPdTZ5O?=
 =?us-ascii?Q?/yqc+RTEgNLYSxsmP3BKpLv6kZWLMksvJqkLz+ODPt+YVzd/xpkHEVbmCHOt?=
 =?us-ascii?Q?WS28pN3Rs32oUTNXVdCLTOvSS2K9kXbf7HKBY4nHFJnNnL8zRaYqIc7taarc?=
 =?us-ascii?Q?zhVkBGEllN9VVCvA2B8qc3FIud3hEAiFc9uSAnq4Xpg960z+kxrH3GhDbXEr?=
 =?us-ascii?Q?d+ENw8sxMO5gDE4vTtvZHvVDy573s44yj/POfM3eI2Ovvp+FcRCTcZtKiWW5?=
 =?us-ascii?Q?m9e12vhirdEdmkFsl8RV4g/30seNleKZiG4pJN+jPC9uY/7hg2idpHIXvPIR?=
 =?us-ascii?Q?G4XwxzDTg/cQTVNiHIKwiayJ30zQEjn98VDyJEtbHQwxznaCRJA7n6IlHbh6?=
 =?us-ascii?Q?infcY4v4NoGaoZtjJ0/HFLDzdsGZGkc221IeW16PgyEHugq21HLs6JvkK0Um?=
 =?us-ascii?Q?dPV2kl5f5FkBtbz0YbLkaoQFKFJjZqqfLY8tZyBrR88vuGrMt1NEQVCdoytX?=
 =?us-ascii?Q?61ixATBhD/IIe64AsL7kAqJGuT0+IspWdlECl/VWG6m0qxDTO9ac3e0m6zha?=
 =?us-ascii?Q?xfKNbzlNpc0dgUEUVlxIdr5x/hlkYtSt1X88zllzS8DQkMyAZ23kWRb+P4ye?=
 =?us-ascii?Q?CW5SEpw70nXvDr45+0syhX8Ve7yLwd0uTN8860m8yNxeSiQGjkJPd+MNCs0h?=
 =?us-ascii?Q?qZB7AZVmP6WVNJnWM5kLPrg6cu0DrDU8lpAMh3YDhhJIJ1t6diJg/x8DDub0?=
 =?us-ascii?Q?muqki+u/47P0LrieMZKE+0gWYJII4rLX2YLtF1aSwCLeSpthrtIPjxp7HTq6?=
 =?us-ascii?Q?ZSGGAmq9AdY+8/cQCNo2uY5J9R/X0YaF3GfzQeDe8gBTyusR8jkPtw1O4zxO?=
 =?us-ascii?Q?cDCFTdaKUIuFs5ZiXOiHXlcqq66TxlvuRrEqqZi2NsHoHFLQKP5rGcLVl/fO?=
 =?us-ascii?Q?5Qesx4fxfg+ZNDmm2IKlBo7L7TLQDXBnLqbDdbS1LNj3pBcpfTU2QEhHdHkP?=
 =?us-ascii?Q?PVhWbWLbuE7QDJzmGtbsYYoCpbEo2e23sjxCqgOjZ0ZhtaOrFybpZ6cQ6woe?=
 =?us-ascii?Q?3stbVQ2PkRvnsRB3jok0ZWM=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(19092799006)(1800799024)(376014)(52116014)(7416014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?pcb7dbmXFfTzSEH7PP1AQZ8XwejsIaXsp0Y7YYJUjEAD5TxnNTuBMyHn41KV?=
 =?us-ascii?Q?W8C1UN9xaajEJNwWSL+ZD9NmuJPKQ6JfAJk/V+sqi3/0LjfxDXVVAy3/kzi4?=
 =?us-ascii?Q?H3wOznSIHx5J0dynZkBVh2onKYwctWnPFBUNyVPXyKzwiPAefI28WyqU4yWN?=
 =?us-ascii?Q?uVUmjKbL5utytlIT3Qcz5qJJXZcldQmwTaazD5qFNpZEFtBbbKQjpbRP5rfK?=
 =?us-ascii?Q?cp9MkyAte/PsgAyAMlKF90i7/TmRqeo4cZt3DOB0I56dgV/6IgiVZCnJ/M5N?=
 =?us-ascii?Q?HAynA7kUYO4r6SsZr9qZ+vA54gEDXWeY8YnOWdRQLbz0dBfLBi1XEbn2O9xf?=
 =?us-ascii?Q?BeogHoxCNKNpINiGSU3qvGFqXfNzosZ1cTHbxnMoCA1zO+bJTNzpFPVFXE9E?=
 =?us-ascii?Q?rFYlSwqWnPpPs6N7qWHnCO4TCljaosIH5UXbnpPaAVA7f2hdnyUMDEjpJUX+?=
 =?us-ascii?Q?2GsqPIG86eeWA1waIy/1Tj9QWUhjBcqP9aJV+TEvceZxOhkFquGwSxsPD1h6?=
 =?us-ascii?Q?wT3zIE8cbxEX8Glhi5/H/DUSJTm/yRpoV37BGCzXWm1MM6l1sKsR876boCzw?=
 =?us-ascii?Q?XmSD8LtyGtQibMEp+PQ8NS39W3LcmeaWlMJgwJxT3ISxIjCSFHe/pwGN7u/T?=
 =?us-ascii?Q?QUm4FaAU8EXeyvCtbhHhnTkT4Ic5/RQXlIXFIl14mPlMhFtJjbksF1v/2Vti?=
 =?us-ascii?Q?zXlvrvTdXxNOM4RfDgFaTdHwQFOHjC36o26qlqhGEDAw4/7Z5bxuhNV+vjs4?=
 =?us-ascii?Q?kttcsUA3M+3Z0pPQD5dCqIXeok0gfT/yovPPLuyAKvsv34RXz2lzTZ65Es1W?=
 =?us-ascii?Q?L8SasmFPpcMDw5SYJDokvRvOgY5qsV0xTJaegQ8zXO7utkuR0ubc8yJTsktf?=
 =?us-ascii?Q?+6Q++9HmwS4XlN5x+6JET4u2YlLUvL8siFmIc/gRdPnHgv5ueW4AXwNv7Yeu?=
 =?us-ascii?Q?iKYMPbN8lPFhZR+NfdO0btFZfjNYN9MhQSrvO5k8z3YEiSnoh30GvQCekHpx?=
 =?us-ascii?Q?883Q5R0JHjj/HYD2SxHIyn7rEPpE1SNpA/Ev2C8QG2dMeqvteEwgOq0LiejV?=
 =?us-ascii?Q?W4WtEm01mnc1YQJJLfXRygMzrVUBr8e6VHZD2fi1e4qLhgKiMyuMjDvc8PuG?=
 =?us-ascii?Q?gGY6mT1OqrJoUuDHYQuZ+aBHSOvKym0WBJuCgNPxdW40Pg+V+DalvuZOxXyv?=
 =?us-ascii?Q?YTT9VSvP+t4Ls4srpOXVtchf0jNsEvKstFuz6+UwIWlNnVueXiwlGmHRCs1x?=
 =?us-ascii?Q?EnlkqZy4huJ+3+FBoklhEh6essA1LrLKt+pBVCdEV3yXV8y/1MP2eSb8YS5+?=
 =?us-ascii?Q?Y3rYXCjOK0ZVKg11Oav/G0nTYe26DXeEZDOnU+jprEE/eBd6jm1NPNHGd2yY?=
 =?us-ascii?Q?OHIy+RW0eljpf2+q3LtilKmR6FYYRIZ1itAJ6L5AkeyXMaeZDwWI6Fx2IzVn?=
 =?us-ascii?Q?P7+wUmenwty4c1nYWfIwHrXwYi3sk1d/KkrywgtF8L9nAwCYu0UkCPCPXFSn?=
 =?us-ascii?Q?K/NYfyiEKMMak1PndmRVx8RxUv1FzaBVWyd5Dgix2xIFv3koF566KLnTel0h?=
 =?us-ascii?Q?vVsLQ7Teg4zgNZhIZ29MrBvpAEoswUdBh3r0Jima//DkPAad5wsbapMktUI/?=
 =?us-ascii?Q?jaMKEAavkTh0nJIS2YhYLdz6IQ3Ke4htUNwbNNQI+zHv+wvwyYmgHoW+IKCL?=
 =?us-ascii?Q?bp34ZXLtK/0Be4BWHbtuOvmwt6Q/XuJL0Yz/vd+wEHaTcmDun2Nkn3eeIKSn?=
 =?us-ascii?Q?LrrE0UUG6g=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f557b60-40ac-4756-d2f8-08de69824ca1
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2026 15:29:08.8159
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mkjn5R2Qze/BmyUknqj5sXCwoEYR3PXHTDwbGMsA3VajL2MIGSae7cUSueDafrfRk8qGV/ecB0gT3G0OgNCPsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB10832
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264799-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.li@nxp.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[nxp.com,kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:dkim]
X-Rspamd-Queue-Id: D5943125AAA
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 09:54:52AM +0800, Joseph Guo wrote:
> On 2/10/2026 11:51 PM, Frank Li wrote:
> > On Tue, Feb 10, 2026 at 07:47:55PM +0900, Yanan Yang wrote:
> >> Add DeviceTree support for the NXP FRDM-IMX91S development board based
> >> on the i.MX91 SoC. FRDM-IMX91S is a cost-optimized variant of FRDM-IMX91
> >> and differs in memory, storage, Ethernet, and PMIC configuration:
> >>
> >> - 512MB LPDDR4 (FRDM-IMX91 uses 1GB)
> >> - 256MB FlexSPI-NAND (FRDM-IMX91 uses 8GB eMMC)
> >> - Single GbE port (FRDM-IMX91 has dual GbE)
> >> - PMIC PF9453 (FRDM-IMX91 uses PCA9451A)
> >
> > Look like it is very similar with imx91-11x11-frdm boards.
> >
> > Can you create common dtsi for both boards
> >
> > imx91-11x11-fdrm-common.dtsi
> >
> > then imx91-11x11-fdrm-s.dts and imx91-11x11-frdm.dts included
> > imx91-11x11-fdrm-common.dtsi.
> >
> > You can refer below method
> > https://lore.kernel.org/imx/20260204083551.2867263-1-sherry.sun@nxp.com/
> >
> > Frank
>
> Hi Frank,
>
> I think the two boards are totally different.
> They have different PMIC, no EMMC for FRDM-IMX91S and totally different pin assignment.
> So if we create a common dtsi, there will be not much duplicate code can put in.

Okay. It will be good if diff imx91-11x11-fdrm-s.dts and imx91-11x11-frdm.dts
to show what's percentage change.

Frank
>
> Regards,
> Joseph

