Return-Path: <devicetree+bounces-264888-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIv+Ey84jWng0AAAu9opvQ
	(envelope-from <devicetree+bounces-264888-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 03:17:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD1112920F
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 03:17:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 03F413006998
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 02:17:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3FB21F4613;
	Thu, 12 Feb 2026 02:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="ajvlTM9B"
X-Original-To: devicetree@vger.kernel.org
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11011005.outbound.protection.outlook.com [52.101.65.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3761AB6F1;
	Thu, 12 Feb 2026 02:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.65.5
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770862634; cv=fail; b=cCwKXu+6GK4J7yw1TXeSzXMW562vfYM6oIREu2aw/AKiwifkCNFFTWSndTzLdT5Xm0BNGlVHKkYOwy84F5XmQKO2hC6WgfZPyUz7WlvjmYG8n/+aVYuJM5qejzWWP/V8+O6/fNlqqnSn655L2YODTvXTGQzlSKjm54VUf3Rdc0A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770862634; c=relaxed/simple;
	bh=NkGlqdlg/q99JuKrkFpB9BwWqoxF+2jJC8ZsHcvgX+I=;
	h=From:To:Subject:Date:Message-Id:Content-Type:MIME-Version; b=UQtpBl24E8wn+6FDElw1GO1hPuvReKiFx5AX3jImlYnBuuRP+fC0mgupSiuerNTtiO0gu58r6aqhLzheke6Xsjf1ACx1WeiMLSD+AQLaPV0D/jE+6xtaOxhH3nl9WxKt+5uFynJpV0S8TDSqXPtweQnqweh5pMq70cXAKntfwqM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=ajvlTM9B; arc=fail smtp.client-ip=52.101.65.5
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ax62r/jYDGKkG5RfafA04/xRJu5VRtaK/Kr4dbU6Xqa7Y6MXXYJIYk4gTHQAFLZLsiDxQMWEp1U45+6OYHGvISyKzoMjzJDROrSt1ocRUkUI5o6p+shacvyp6qfZLSFGhPnDZt3LnDIOLu9ogwvVwGDxDnq1pRpiIOmQpFCOBn34bJnv0Q+gZhANZlhaavDxusjDDywRBD4bhlkgWPSV47OUjqBT8NFGbJmRffoOtg/jLTTjqHIcxrtkpCcL2zho0+Ygic4TUXPUyQsxQ1UH2Eq5/18uFdxCL8FSlwRvvfGXnCpSK0Q/dgBFyGSq3spbqhAqKrmf2wGGk6o+WKySiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aX0cMY9Of4G75WRbanbT/VXeStl5diHEJt+s6U5N870=;
 b=T1DLcormuKIPzfalr1ZUOt+2FHIGsptWOTnbUeJG90HG+s/yXXYevwHJSGzXEPHUALRV+iYoA5FDFfVUws9dFWH3iT2odStVRt0HOqZSGMLIx7eKUuAMNgiGNiyPu1zwA4ATC5tDXBWidIwN8UxJ1otv70m4sTE1zGDwVOtdgA/V/zWUHgA3qblloOgzDDSDdmYjG5hWT2wElpiTUXEPLdH92zkkqTWSK9fCJwtjL2NqJX4Etpnbg2Zo8P4h2Z5CeotauAqR8NJGEBlSweI93phZ+LJXiEA8bB4kpMy2ymhqrTLDCSzNLIH1dWpnhq6m4jCCzmkzarkjd2lV4jU1KQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aX0cMY9Of4G75WRbanbT/VXeStl5diHEJt+s6U5N870=;
 b=ajvlTM9BLuG9osmbk6mZKsfoXDGyArEO+R8oqOqCZuOZejLC615NGX05brmSKWterheTpXdOZZkmdww4leOhOJyI2c0MdP1MaRc4XT/ylOT5439Eez0lQ/PO08e4ByjEBzvmf8Bga8T3jWV4Q96NPNChDhGB9i2q9tOp76MvFyP04DXbR5hDPS2pKE7kKSdr7u7enXBodOu7s1uHeZXBWjVJ70FaCOFRXsebvqDlOjuT2pXNS4cY3W9F8lDvBUvBNthvwQu6hFaQh+ZomEzv8MFLwmhWKRpwPawU9CXHZbMAcCzzeI1TWmZg0UEtErfBFD7K9nhRAE8xwWCJM+ERJw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from VI1PR04MB7055.eurprd04.prod.outlook.com (2603:10a6:800:123::21)
 by AS8PR04MB7973.eurprd04.prod.outlook.com (2603:10a6:20b:28b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Thu, 12 Feb
 2026 02:17:10 +0000
Received: from VI1PR04MB7055.eurprd04.prod.outlook.com
 ([fe80::d6ab:1538:d868:bf8]) by VI1PR04MB7055.eurprd04.prod.outlook.com
 ([fe80::d6ab:1538:d868:bf8%7]) with mapi id 15.20.9564.014; Thu, 12 Feb 2026
 02:17:10 +0000
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	ckeepax@opensource.cirrus.com,
	andriy.shevchenko@linux.intel.com,
	nichen@iscas.ac.cn,
	kuninori.morimoto.gx@renesas.com
Subject: [PATCH v2 0/3]  ASoC: dt-bindings: fix the ak4458 and ak5558 binding doc
Date: Thu, 12 Feb 2026 10:18:26 +0800
Message-Id: <20260212021829.3244736-1-shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.37.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI1PR02CA0016.apcprd02.prod.outlook.com
 (2603:1096:4:1f4::17) To VI1PR04MB7055.eurprd04.prod.outlook.com
 (2603:10a6:800:123::21)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR04MB7055:EE_|AS8PR04MB7973:EE_
X-MS-Office365-Filtering-Correlation-Id: b543c408-ec37-46fa-8162-08de69dcd3da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|52116014|376014|7416014|19092799006|366016|1800799024|38350700014|921020;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?jEDkFBnsdh4falXeD7F5VRooV6SZzbNiVRgzOMqL4hKjDO1Mtq76RoTf4Fjb?=
 =?us-ascii?Q?4iZs+C2DMJ0nmb4b7VwstxvCbUTRaBG6+du/HTkcMa9CNXY9GkdY/Sox8BQm?=
 =?us-ascii?Q?ThbmhB+yp6AiWFSxFD22aKHcb06JAWxS9w9mQ67K6dVnS46WzkO96vRsdmbH?=
 =?us-ascii?Q?MGpK4bYYKezehc4WKDBLuSf4ykx5mnOtoGPqux6aP4yS81lvi5jINbauhYnw?=
 =?us-ascii?Q?r6SR3tUbXnzeVCswevmcbrxG+hXerMO/sc49S9HftyVKijlEjmzhABPhf3n1?=
 =?us-ascii?Q?mDaUwdhiB3bIofZ0CVa8AnjF5bVHJ277Q9od5eVr7lsFahO5Rl1i+m/ZEj1k?=
 =?us-ascii?Q?MbCiFwvOrs4N+ueezdcajL1m2v9mJk6MEYpNLiXJwMLAj0qBJDYOdR2h63VI?=
 =?us-ascii?Q?cwVD1LDeDBxktDDapCOnqEczlK9GVHw+98tjKvzkv6hnuTHH6D1lRijhJZWT?=
 =?us-ascii?Q?3qvCm8L1MqDbGz+20z1xtp+tRc/4LfBJywrpjfYds9vy1jNRWyQdpDnpUfyP?=
 =?us-ascii?Q?JVPHUk+2oPG/V63Gb5cQe6gOKgIz3VX4aSUP0WsGkub9QZZAUqtzOdZboPu5?=
 =?us-ascii?Q?lDi00j9EhyHaF4htnfiGvpk8stEATg3CFytWbuTjaW2FhUOkPErkrTXeSq9Z?=
 =?us-ascii?Q?Lq0J1jwNzTl2Wr9+5ynVXoulvgpvDx4t/h9o1YKZo0+JYmz02oYkpFaGCcS5?=
 =?us-ascii?Q?iW8KCGj7bi4qqC1zoOCBVXk+3QI7gZXLbDvhBSVOf58l7Dukttna1ugvech4?=
 =?us-ascii?Q?gmrHdzJqDfuPY0LnCQtY0cIgkLtEhGgXk5kNDi/AHmdapTP41E/4ylJyVEeV?=
 =?us-ascii?Q?N/DHJ33Vihb6m3HXfv3uhWEgHCV2/lSI+126UhAKXXYKsrLXJBV8DjdVRlSn?=
 =?us-ascii?Q?h91vLK2OpHPcCz68KF1AvX7qKbNYXS0dDOO6hcZtaBKiZiDczLP5dFK7pni2?=
 =?us-ascii?Q?PlFW+YCiR5BSARSjHMNeo32g+GR/e7nPZoyfP3hx3mBz1eRycqB+mbH6pinH?=
 =?us-ascii?Q?POdp0sK8+FjlQNJOInus3G0OQP6MAZnv7dG51+KXiWaoEvDNs9c4iJWTntv8?=
 =?us-ascii?Q?qRZjEbgxGsMV8iGS3aPlBNRBCqTxYBcWcpfpHW8KoMunGspqrkIXzOfDqVL9?=
 =?us-ascii?Q?52x55HGuAB/Whn8ZOqMgAqWOi4TYiL/Tat7DLqt5cRO1U/fmdDu4qI1woQxp?=
 =?us-ascii?Q?zVRzRLUFD0OtiPu5zmVV8UsoVadW3nFlj/WwRPMlAR0OFnsaRmskZWC/PX8t?=
 =?us-ascii?Q?VLmhO4iPSeN0ycCDkQ5vM9lInsSWy5KsnMmzBu0hmd91rwTzQbQ9HK7TZv4D?=
 =?us-ascii?Q?GWXLRugpcvteExMoVHjMeO09DNFVHAOLWzMir+u381ad7/BDtlss4NIqRuO3?=
 =?us-ascii?Q?KwUJHbvkdImOAr7fI1vkIT5LESuDNG8YAvrjV0Ls6Zv9quqqSd4edp2T26+s?=
 =?us-ascii?Q?VPEGvmZvQvzDBtmosGSMZYP3dtOUweof8h0JhlOA5bN11ivxvEFRVM9fibfz?=
 =?us-ascii?Q?y5xDk2/zbEDA/j6mGLAnVMnRlaT9W0kS8VgxIpy2ZYg8gyjWnT2wlHqiP2mZ?=
 =?us-ascii?Q?3abt6gn9cy4DfdV5VYU9CZ6MkqrbXAWnlrkp2blBRYPq65rEP4sPnlSDg738?=
 =?us-ascii?Q?VX20taDTbrwkQbd2xQuFJAzh9D6im+g8uvB2DGVJvPB+?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB7055.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(376014)(7416014)(19092799006)(366016)(1800799024)(38350700014)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?MDOYZ0ldPZfMm2/nSSQsKHqMlepRvtlflE8lHxW5fRlEPlPvSAYTSPWcD9Sh?=
 =?us-ascii?Q?iqK0AivIFQx88zv0qe/ooTTgijY9DgU4qc0uauzyhMvNcbOEPmQ7xaa9DpjX?=
 =?us-ascii?Q?6zemaJVbwBB1Wz7UmMHqirUXfAEurj3tU27vpwyAXzUwjFW5Uh2f79G0j8cc?=
 =?us-ascii?Q?I+fSz7k4IWaQSG/Hda9mhK659ytcLoGRBGdBTun8qq17LLJrvi6nHuVSE8xY?=
 =?us-ascii?Q?y735aXk4Bx7pZUUkN3LWtLXQQKuAFeyYrQd5Q2ZYMETasYo+Xa+UH9bGgCSX?=
 =?us-ascii?Q?BU9e8OYsctsIWfPcPCRDpm9NNiYYycwyXXQDp1RyhfVD2V/FTRYo5winpuan?=
 =?us-ascii?Q?baTxB4OP+3UbOyA3MVOfd1XdT2O6vDjHFHzTvbAd15PJtVn1yrODP/HTN5wm?=
 =?us-ascii?Q?J4xkbxphF+2OLuxZwVERGFFBXhjnjk5pGdco0lObtswQCRAEtU/HKEEV50I4?=
 =?us-ascii?Q?Ipwfg8JNhIFnA/UN/8A55KQoYmlXgvmO7zjZPxVTEh2Y0Nqg5RnqBuE6FxNz?=
 =?us-ascii?Q?8SD/oUiYmqLe0YWFyoheX+qgDBT/kYZunS2c46LQD08iBV1O5OXKKEBYIdjr?=
 =?us-ascii?Q?gw2fIB87Xn/toO1wKzOZuo40cQdpGGmlNHAxBuSYP1bOSTPlOS0eleIhZ9He?=
 =?us-ascii?Q?sFqtlFCnFh38msVxgxBaLJ9Ub2HIwzgyxpGhw45jqvNxWjXwlAxE4gq8nhen?=
 =?us-ascii?Q?JaYiP5wfZ4KXt4VV0Q3Kf5GsO65jh+1eptm4IT2TBsFeFu35wXh0LDyaRHRd?=
 =?us-ascii?Q?G862PcO1jbips51gfLhOv/cKkrd6HviEudhDCXf5V73Qp3WaXi5W8tLZerRL?=
 =?us-ascii?Q?0oRgcMjF5IYKxTHdjmnqUstPIY47IY+kU/X8ilmhg4XDRMU8vm++RQTgsg6G?=
 =?us-ascii?Q?kRaEcAmztv10rweW3USdP0lUykfJE11I0ypJ0FjUgDVXf7p/8bs4awB2wtKd?=
 =?us-ascii?Q?EB7yUCZ9GEj2JZJF/xRphHj9RW+mW2mmxH76t3XTEwFAEOAsiiqrjBDeFPqr?=
 =?us-ascii?Q?pwBZ0Mn0gNr3HzvHbH+Ah3ZMbuDKXQnitEULnJ2VcuFvrg+m0taU5pp48haw?=
 =?us-ascii?Q?jhv8O0pG/Wf2WYNKS0VN8OgyWBbQqAxm23GyFxRB15VvZgcAEMDkKr2w8KUD?=
 =?us-ascii?Q?rXDP24CrLuPlixRInoZ2Q9kkfKdtTNeRbib082+CGK/rVNvYU5t1xkDdHwWB?=
 =?us-ascii?Q?aATh6KP1zbij8z16AD+Z9WVKA3kJJQ7HvxeW95VPtxHZKn8+E681ZNuGXUPw?=
 =?us-ascii?Q?QXJgo65JFhiFiibe+q6kB+1mRoitqa+5fAxgldHYFTAfyXShOOUpi4/0ZY5G?=
 =?us-ascii?Q?8ZdCFOrXIAoxD5NtQv7ahKg+rs3JveB54JI9YixrkyxlbQoY9l4ycqWUFMeI?=
 =?us-ascii?Q?VkSpjDLN7/1/4Vj1WgA9C/jg4KVGix1jI1p888r9jqh+6jpmTNy+KY8wb88p?=
 =?us-ascii?Q?PslLHG7fHEE5nouUZ7FmjYhWhrQ7VhUGuN8ScZD05POitMASOCmFvnaZKB7J?=
 =?us-ascii?Q?ObiZAjc0/m1bAJFy4al1ssQKHYibq9r/kJm05JRaUesPgXSHbNj35NWIa7JS?=
 =?us-ascii?Q?3aOiiPOeIy/Oc7IuzD/65AZB/FsLdV9zVBmez3QyJzl28wImfNxUEIyF+2wB?=
 =?us-ascii?Q?334QkIpCm8PrpU3C42QD2b3gRV1i9bA1sY7HzEL9BchOyf5/iK1gsIynIb1B?=
 =?us-ascii?Q?whXDbFq8lus5ugQfH470dVd9M91ZrpcUYuVN0HrbjTnJGWuUiEPfBzDRRDI1?=
 =?us-ascii?Q?6+dNcA2PKw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b543c408-ec37-46fa-8162-08de69dcd3da
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB7055.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2026 02:17:10.4305
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oag800iuN8EnzXCbI7ei3N+3YuTcTxuHIpw3axc0/F9nx5WuGHfxkDtvZ1iJUhjsADhv+RH7P0ufzQpGfhwwVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7973
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264888-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,vger.kernel.org,perex.cz,suse.com,opensource.cirrus.com,linux.intel.com,iscas.ac.cn,renesas.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiu.wang@nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_NONE(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,nxp.com:mid,nxp.com:dkim]
X-Rspamd-Queue-Id: 7BD1112920F
X-Rspamd-Action: no action

Set unevaluatedProperties:false in ak4458 dt-binding doc.
Fix supply name in ak4458 and ak5558 dt-binding doc.

Changes in v2:
- update the commit message for patch 1/3.
- Fix the supply name in dt-binding doc, not in driver, replace the
  patch 2/3 and 3/3.

Shengjiu Wang (3):
  ASoC: dt-bindings: asahi-kasei,ak4458: set unevaluatedProperties:false
  ASoC: dt-bindings: asahi-kasei,ak4458: Fix the supply names
  ASoC: dt-bindings: asahi-kasei,ak5558: Fix the supply names

 .../devicetree/bindings/sound/asahi-kasei,ak4458.yaml       | 6 +++---
 .../devicetree/bindings/sound/asahi-kasei,ak5558.yaml       | 4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)

-- 
2.34.1


