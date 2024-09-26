Return-Path: <devicetree+bounces-105489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB25986DD6
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 09:38:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FB902820CD
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 07:38:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E60218D656;
	Thu, 26 Sep 2024 07:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="BxY8rIPw"
X-Original-To: devicetree@vger.kernel.org
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11012046.outbound.protection.outlook.com [52.101.66.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A38481D1
	for <devicetree@vger.kernel.org>; Thu, 26 Sep 2024 07:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.66.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727336335; cv=fail; b=oWcAEAbUI+5U/792XSXbAo4Z49V3Q2FgkQvJHt771DvltRri9jRE9jA78L8wlSXsp5UsOyna8BSu4mZGIahy4sOqkjg5VYtX5KZ4WO4I4SKeD0A90c3xt+VhqR2SwvqptyU7OsltcUxUOrQrsFwySfYBHm+riNd6sUL7fv5ks3s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727336335; c=relaxed/simple;
	bh=zya7uQLeRf9em0Rc898rwRo1ZSJneTGvM/T+Hp1unvU=;
	h=From:To:Cc:Subject:Date:Message-Id:Content-Type:MIME-Version; b=s9+qZ+TeNrRBD5ZMHQG1c06bCtiIyoUeysQmEJTUvJUf4TcpKKZmiHyhfKrfKxVF2WgT9YofDwS64sxknk292YMuPzCGWubfqa5S4NcFg0A3LEiZfcEswydIe65pxJ82CyK9KckSlWTofrcxM8ffMelDpwLmBeCrmtLxreB9epM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=BxY8rIPw; arc=fail smtp.client-ip=52.101.66.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n8IjBzS/NYLtUVG4ZSLCKIqKDy/jN5QqUUSfjgSCv05Y+REZtZkJzC0rYnECsHHfN7Njepire6fEsEv4K+KqIWQ9vCFgCB8a5Plrs3dXn5/ysWQYrWS0VMERpDQXdSi+EwkjdW2UgCCuKTAReXAnWgH+PxTnQmx9+RNfGXa9UaiZDm+MXuw220OEJ2vFYk9wYWm469+SbxGI2AD/1SHLDVe91LEtb70Ve92KBkpgGRA7fZgMM5hzQQU98TckXIoByEg6Td5AZkNV/+wV8Ij7tcYemdcITf61sODDoT/tNCEj+V+X6UfpQSWPcNIzL+opCyDMd6VGaMYLWv1jikkmmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DM1FBxndHTT1qYVHMFyjLYTOjjznHhSAlZGobx6ucsA=;
 b=adoCZKI5lfTm8+DKKETDmNGZz8tZMuBHCuSs0eIkRV6jVvGnh6kLEupjjms2ZkSE/yEAIsCkWRHfbDC7o0jJSVWdQHRG6Y8ENn37Z5NOmjqw55whAvcIPQwJWgJnwPMFLf5cs2bxgM1i9CmtO5+S9gmAYeXDJlb7grkiVHkP4raKDD5acwXWNtblOEaA/W2gv1QCxuyuKkWBriOUpb/U8fZ+ZUETHoOCUnhQIarICRumPFdA/c5T8fnFZoSr/V1pnVkW1j6Ba+sExo+OO82q9gTY96gnj611MW6E361u4VWEapwhOxhRNxtuBkZgF63DW+8oXvq8sFwFxYOE3ZOOdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DM1FBxndHTT1qYVHMFyjLYTOjjznHhSAlZGobx6ucsA=;
 b=BxY8rIPwjKfKUqS29jPOPiLtyuOEdBKYfAE8XuGrUaWunD1INi94BTUXbnsu9lSynl5MRfQqtOaTWxdjK2ZM2SnGAt92Mn9xY0sk+F7GAJMNfZVaeVOtAhlXjmWbADeOIGaftUuL/5dsJGLfo8Hntx4bKF4YrToVClaSW0zhhGgnfKtzJh/Z8CrkM1u2wiAMjlGg4ugMxPft57UJxQ2e/ALGmxxWonK8e3jRF1EMRdoq5vxbCHhSO06OMI0CJNVgclsabgbiL/2o/rUy4RzhO0UxTCyq5OI8+ywoODOykkoZ4zcUDuIDoRsicynrpDKAUDxaAHT0K3cCeaZaIXCd0w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXPR04MB8829.eurprd04.prod.outlook.com (2603:10a6:102:20c::17)
 by AM9PR04MB8763.eurprd04.prod.outlook.com (2603:10a6:20b:40a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Thu, 26 Sep
 2024 07:38:49 +0000
Received: from PAXPR04MB8829.eurprd04.prod.outlook.com
 ([fe80::cdc5:713a:9592:f7ad]) by PAXPR04MB8829.eurprd04.prod.outlook.com
 ([fe80::cdc5:713a:9592:f7ad%3]) with mapi id 15.20.7918.024; Thu, 26 Sep 2024
 07:38:49 +0000
From: Xu Yang <xu.yang_2@nxp.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/5] dtbs_check warning clean up against fsl,mxs-usbphy.yaml
Date: Thu, 26 Sep 2024 15:39:46 +0800
Message-Id: <20240926073951.783869-1-xu.yang_2@nxp.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR01CA0022.apcprd01.prod.exchangelabs.com
 (2603:1096:4:192::14) To PAXPR04MB8829.eurprd04.prod.outlook.com
 (2603:10a6:102:20c::17)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXPR04MB8829:EE_|AM9PR04MB8763:EE_
X-MS-Office365-Filtering-Correlation-Id: a059cabe-d45a-4ae8-7eec-08dcddfe429a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|366016|1800799024|7416014|52116014|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?ZLrA1F1S6b8iu/88M+qeRLjbnUOCDUAjQMmFYK6cg1WvVJuuP0/dVdat2OUW?=
 =?us-ascii?Q?clhDy9UN6g3BYi9NtrmqCEEpRVJlGYjDQJDZ36TI6Por8XwpfdAgZxO728gP?=
 =?us-ascii?Q?UriV4qwkBfVuZRg8asmDuYOq0xuPBBv3bjXfkshz9yGLUqrfKUIoELLEVjmy?=
 =?us-ascii?Q?kYTRvqfBOMH6zKkc9AbrgHz3S4AIIZW13Al2qIKUK/QOjq3n0ryD9Fu0N4QX?=
 =?us-ascii?Q?809L9ZlgvvyFwnS48skGc1us4iEkU1nMFt1D238bk9jSyotVWP1RABenZNBs?=
 =?us-ascii?Q?mEXHDWutz3SHLT4/Bf3Quj1JdMy/d+61yXwnaDRGDTgU3/QIvm4RH1bWzkwK?=
 =?us-ascii?Q?76YQW+uktgMTYCDLS6/xLTIl2oI9//UM6JAuFurIGP6QC+rUKJbBKcov6Bud?=
 =?us-ascii?Q?ya5GSvMKhliEwtaRJxQUKty5kW5BuJRh2bcoDgxxe6YUTFMeWG1MZ6ShRsnI?=
 =?us-ascii?Q?3t3kRJs62teMq+hKweuaohZMZjebNDJl/Sr8Vn8QKXOOko5uM8MCWo97/HQR?=
 =?us-ascii?Q?/c0g/yNthKgazK3J7qU2GjXUYEW8LN69QqoPrpUZItTzi061OJpPq6FizOUo?=
 =?us-ascii?Q?75QDX4TKxy2hNED8BQT48ll8M8TE6eaLV0RBJZckhbF1LYfEuB7j1kFg1I2v?=
 =?us-ascii?Q?olvY4eLXJRah8MrQSsc9pCaJh0Uz+HArr7VsHDgHtEdep3noC7/fWQQBS0m+?=
 =?us-ascii?Q?ZnAGAomskB39XoapQfIwdpqCScsKXHNsYEuzvOb559tbG5T6C3PIXezVmGtW?=
 =?us-ascii?Q?RchO+Yd1qeNe17KktzfeMvyGxDwhL4AVNwTbt6VnFmHQyB84Hkfdzb0a/Z7p?=
 =?us-ascii?Q?rc76OpGjxavp2ThKZx7Ic49+x36ApWOzhp982X83DGxFp6qWH5wjSc+ZMxVB?=
 =?us-ascii?Q?Ah9+4yBeXtg39DbhrCHcLZ4dWES3tMwn4LebRuH+qQR5p/HICWfTcJ7x1myD?=
 =?us-ascii?Q?d313AXeefEUmKpoDbDLto1p0E3Prmp/JFcuz5PwdBEgywXxiiINyva41BZhu?=
 =?us-ascii?Q?5VnV7VSxTju8o5mK2LgS+/P811UXrbY+4tDh8mCNaslzuQ7CX/OY46VXdTz9?=
 =?us-ascii?Q?RvV6W1lSjGkhtpBMerYP3YUKS9aY5YfSMLXkMFA2btpPK4oXwtr5MannOvLL?=
 =?us-ascii?Q?Sp74TDTNwhxpSNmfBXhTEiNPI6rWNEMDcTg8SZp4cOB+iNXGPLcmT522hFlD?=
 =?us-ascii?Q?TlgJBAEJnY0jHKD7zjQn/DTXgqH/jGXHXhBeRmRZ/9CuNu8soa7dz8Gt9732?=
 =?us-ascii?Q?9DoU6TFobtw7/2GT2XUGWt33uvS2RlkDkT5dI6Iq9VRtKVdOh5h++QxEjc3E?=
 =?us-ascii?Q?8Silf/QWJfkVhpYjFW0CxkSJyXuqdQIVELrPK4wlK/MHCA=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8829.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(7416014)(52116014)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?HJ4HuxVwAJL///E+s+wsnof3bWpq+ntiLvpCqCfjpO45VkLqGiWM6VBCqpNW?=
 =?us-ascii?Q?kL3doPTFVHGuAbrdw+yBwmSDQELQBNrkvJpEvxqJiqVlOTjvp1913bQ8+w6L?=
 =?us-ascii?Q?4cn8PbKrThgoBgL34RAGlco2tWrvMU3J5Y1Ddw2tc9BpElAObU/kQIZR3Mj2?=
 =?us-ascii?Q?zfoxIjw3dXkyK1gaeFhLwW+O/laI6KsLOGEU4vkfJsuhJ7VJf76atmZqi+S7?=
 =?us-ascii?Q?is8P2bxNNMhYak0+PlACErmXnFY1TdDYbGV1Lq0vKQ9qjmdTLMdq3SuLovY5?=
 =?us-ascii?Q?qtI1YVliyykDVyDs9ZR8u3zzqr5vGEai/0qRXzQimjf3oGgq6fsvgJM2CeYz?=
 =?us-ascii?Q?ldMoSxWUOMC3Kxf9m3L6NIE3CrkvUGtmsQ3N4cLsTbkE+RoEyMKKtV3SepQd?=
 =?us-ascii?Q?5fvow+MABu0gzZqIiMkeSDrs3hFK3dJGMSQnESr/EPJsPCoa/9bcQ9kwBeod?=
 =?us-ascii?Q?V/s9TNttPPqLOAQA1RNBY/Yz4Z91Y87BB/hu9pHAlFmDhD9bQpU+GgEjZXTe?=
 =?us-ascii?Q?zzWLN6Oq6iL5Brck1RX/H86lmPcS9RylgTL/RPfZKGu1b8nh2W2a9e3Vl6sP?=
 =?us-ascii?Q?lr4FAEU4znxBNXOVe1qF2l3Ze0YMlgFpIw1hnTAJ9FbLdQv/MyI1stwAny9a?=
 =?us-ascii?Q?71YU8RIcJOmQ30Cz5Flh24zaXQDF3CE0gdVrP9GBl6lvJFl0E9OjcDj7kHv2?=
 =?us-ascii?Q?21Q235ju2epuc7x58Jdn5wqfdiNvAFQpt82wsEA8eTVJVBJn2X0J0P1023Fg?=
 =?us-ascii?Q?U9gFSHgKOAvZb66uVxNSdNKBcHybeQsV23bohdxbFsQeslP4RYDfB05iDcdl?=
 =?us-ascii?Q?HChF24JkuD8ekCjiwaVrWk+zDCKjsjU1nFzczwuichzbXw6v/VSGLht8haA3?=
 =?us-ascii?Q?VV7BaeG9US/lX1ghwyDNpV2FRhQXWTYtKW+SJSUx7jB+PcRo9VRWV9aqj7ns?=
 =?us-ascii?Q?mNjfP91WQI0VqcCamyeS4Zxc11c88bqjFno5J8TUx5SQHjHCMm9tbijHd4q5?=
 =?us-ascii?Q?fxtY8mlwvfmhPyihi8odY5koqx76m0gJFz614qi2luc2EK+9JnaHIHCjG94n?=
 =?us-ascii?Q?s9UvuESwu3Kj/kl9gsNW+OmudvrCzF5v8yYh+YblY11oj7HxUccSlXfFvnVd?=
 =?us-ascii?Q?B0QHr6tFf2zORWy+kWwBg3FJaE2juxBFaizfWqDVBFDeuftmTRCN5ohRKkoM?=
 =?us-ascii?Q?IoVT1hiEp30Ardz9cFV5yajImfZ2UFH2/sjGSyHwLqr3lzdzLazFHNO5p01E?=
 =?us-ascii?Q?mI4vLCk5lWa7LPgQR/8Hn8quz43IveONR2deysj1SScXHgWPAT28Xxr/DrVy?=
 =?us-ascii?Q?WfOr67RQ52IHCSjpp+fQ3LM6U62ONiAdP+UYXb7B1d8SXAyDF0kKPFQgksU6?=
 =?us-ascii?Q?Y3vSd+2cwrTO6Bnp4EtnxwO1zNZPzN9Dwe8SL9rj+SfniliNX8fHIGx4pc5W?=
 =?us-ascii?Q?rbEmosD9HUBvzTdHqDUhpMH4OwSk70jqs+aJymCS6CvHxv4q/Gpdwu/9vMnB?=
 =?us-ascii?Q?DdEeZQxe7a83ngYkQNV1KuQ+ixcBa4QCJY9tMieNX0VigBqZ3bfrDiIv9HCp?=
 =?us-ascii?Q?7hCWFXRewOMMsOvAJ5XGhyAqOKSO4/1wny3dsqMg?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a059cabe-d45a-4ae8-7eec-08dcddfe429a
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8829.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2024 07:38:49.1992
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RqHz9d1fCK6l7B9VHVkes1NM+Zd3ySl6s1Y9JqHrJxSGMOiebt1TEM2C7fTMZWjj96K8KKPdgqGYKmgDEXI/0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8763

Some changes to clean up dtbs_check warning against fsl,mxs-usbphy.yaml.

The first 4 patches are used to fix below warning, "nxp,sim" is only
needed by i.MX7ULP:
 - 'nxp,sim' is a required property

The last patch is used to fix below warning:
 - fsl,tx-d-cal: 5 is less than the minimum of 79

Xu Yang (5):
  dt-bindings: phy: mxs-usb-phy: add imx8qxp compatible
  arm64: dts: imx8dxl-ss-conn: change usbphy1 compatible
  arm64: dts: imx8qm: change usbphy1 compatible
  arm64: dts: imx8qxp: change usbphy1 compatible
  ARM: dts: imx6qdl: convert fsl,tx-d-cal to correct value

 Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml | 1 +
 arch/arm/boot/dts/nxp/imx/imx6qdl-var-som.dtsi            | 4 ++--
 arch/arm64/boot/dts/freescale/imx8dxl-ss-conn.dtsi        | 4 ++++
 arch/arm64/boot/dts/freescale/imx8qm-ss-conn.dtsi         | 4 ++++
 arch/arm64/boot/dts/freescale/imx8qxp-ss-conn.dtsi        | 4 ++++
 5 files changed, 15 insertions(+), 2 deletions(-)

-- 
2.34.1


