Return-Path: <devicetree+bounces-192065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CEFAF1476
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 13:48:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 55E5A163F44
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 11:48:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F7E6266F16;
	Wed,  2 Jul 2025 11:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="OVsGMsLs"
X-Original-To: devicetree@vger.kernel.org
Received: from AS8PR04CU009.outbound.protection.outlook.com (mail-westeuropeazon11011069.outbound.protection.outlook.com [52.101.70.69])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D3A23371F
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 11:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.70.69
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751456879; cv=fail; b=HiDXUT5HzEuKHiQgF2QDgZY2iDUMK2rDwuITYxlaF8yo9pHNAFCRes4rJYrIWL4EQA0MJUaTYu/KncivTKFlC9h6sWTfzB0VFziC78sGqOOHIrwOxRIzLhG8r+HVuxPVMDmxp3LETUo1Z1nyyH+6/XkzT9AUwNDYwex/f2CF58A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751456879; c=relaxed/simple;
	bh=5CsJNMe5UEaIEMvECkXjghUDv/drrzrBX9XXGqgkEuM=;
	h=From:To:CC:Subject:Date:Message-ID:Content-Type:MIME-Version; b=NposIHmBCyhs+o8rsr8mzehGKoFKMskUgrG2QE57eKd3rsG1pn6hZYbt3T4bLj1FN20TsHhdTi7g9Kbc2UvIAZOyap7nMCfpC2YcT8YGB+NOuehkKsKFIX9muQYsKIaPTd6GN9k/ZjX6CRf/j68/ukTtZWQrtKtbmDyYHXTynZ8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=OVsGMsLs; arc=fail smtp.client-ip=52.101.70.69
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oHqmcFgUWVV8DEwLZliSlZpzu5qvLzvvvLruPQEef/bom4WLfE5Q9kkCsce8E77B3BoKszPc4vzBExMxJiunRpWb34bLjExlHkMEiknUtrAng//QdpsskdVE84u/0nZK/ShWcCyl2ok1AJPVYBWj63NVF4g/fpI7Ushtb6dlcjtQGZd3b5anpNvFD8foJdiLDmjZMNVTFxfuy3kVZPcNwPVLK/BXWlygze2DESBfUEZxpj7aAEay06NT+DrLmblwJAsrVVdd+hQFeXkPjn3QuVmiBUxwk95KgXtbxY4D9WUg8/MOegjxD174O+PtygI8VZ1sKLTlnxwmw9zj4Lxw0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AJboZudHVNKAf11VwpAAnSu+ukV7Ki6V1hkDNPZcGTc=;
 b=qodn/NX0XBPB9ApV9F7UWgLNISKDLG9vpKCqMjHZxHWnfb87NPWATLlFBi9gLNdxF04lDTeirfYgAhYv1VlOxS3v3DjzsMsIrsdy11jO6Og/EdHYMyWBsJiHfaZ8o6tugR/8AC/i32WHAkcVAA9bvNBxbCRKwel36KKTFDV21Tx4BJ42+z2Kt0uSXPrOZKJ+GeJ1hTWO9SSH2gn8SQK/PXO9fxnlDl5NH3mb4y1cUGU0E6+tTe32caT1m6IXE1P++vpnACIlK1c6OoCrOF2CaaUH+YdI09gcb/266BpPlQeMMPAnDqlPnJPJ/h7msTe6a5iHDNqWmeSxHu30VGL5Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AJboZudHVNKAf11VwpAAnSu+ukV7Ki6V1hkDNPZcGTc=;
 b=OVsGMsLsXSawb8UgEEqwGRWqTCUM9ohvxSpiQnFGC2oF5gxVv6g16Y7tGKq0ApZL4rdSKm6UsS8zm+QgIZE2TGEC1YwqolNWpZMG0BOdiKQAeHUU74yx8cFIwRl8YmxoYoAehvGzyZFXQoE1RPL/Z5JcolWtlMM5Yd/9H393dgigIG2+ZMtX7KwjuMP3WZD1vB3qPk0HOVslA+cMT+sh89YjrGM68+cb22mh4nAad4FcgGW5dHJygh7VjUE1uvVz9Yu2mDWanUISRweYxTRbOAqs1uM4LNznqmFRwHSxljZDhNAqO1o7WCNl1k982QDx2XtOjHDXi9oHC/qDjT9XoA==
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com (2603:10a6:102:1da::15)
 by GV1PR04MB10872.eurprd04.prod.outlook.com (2603:10a6:150:20e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.20; Wed, 2 Jul
 2025 11:47:53 +0000
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::165a:30a2:5835:9630]) by PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::165a:30a2:5835:9630%6]) with mapi id 15.20.8901.018; Wed, 2 Jul 2025
 11:47:53 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
CC: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
	<devicetree@vger.kernel.org>, Frank Li <frank.li@nxp.com>
Subject: Question: use nodename clock-<freq> for fixed-clock nodes
Thread-Topic: Question: use nodename clock-<freq> for fixed-clock nodes
Thread-Index: AdvrRyPGb5lVPTwZQoy5auVesZIKnw==
Date: Wed, 2 Jul 2025 11:47:53 +0000
Message-ID:
 <PAXPR04MB84593D0C225D85065C5F60078840A@PAXPR04MB8459.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR04MB8459:EE_|GV1PR04MB10872:EE_
x-ms-office365-filtering-correlation-id: e62c979f-08db-4851-1d76-08ddb95e477e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|19092799006|1800799024|366016|38070700018;
x-microsoft-antispam-message-info:
 =?us-ascii?Q?35aYShVCDWiuQtc2YDGPkk4lfFW3J43hqQc9f6IBmMUxlsFg6Y9/vMm6wKx4?=
 =?us-ascii?Q?T0rSxCCVoSQxoD08cCkBLAOeg+jQWKAdppmBI16+vD0e0Q/KuOCr9oCyLWhT?=
 =?us-ascii?Q?ZM71WhOS1OJGzlcqwS8FvB8c3c7NfqHisUKgAwBk6itqGpROFHuvVvtLkpg+?=
 =?us-ascii?Q?TVfsaivvrTM52H7G0T+Ndr9GbxOpfJbfElZn14SBmd+hDz9R1wMhceahHdK5?=
 =?us-ascii?Q?5gmxxH9MC/DBTwt6dBJsh1Rtkm/4TosIRZbV3BiDCwroaWK6zcbwWph7tMZM?=
 =?us-ascii?Q?esEG3Q+omwZam++dbVcSwDpZSz1sxOR1oQBZhPYGKoOUjeJ8nvHgKdxOMpMH?=
 =?us-ascii?Q?Mr4W6AhQgu5etvpvp/RmNssT6azLcB0fn0JqMxlVUQj56GioqGylp7wpTLxn?=
 =?us-ascii?Q?dl86yGhLhcGxk4IXdX0p5POmX+KobPtup1xac4MTA1IzlFDNB92HELMFLkwk?=
 =?us-ascii?Q?R+ojoptNHmEy3ct53ZvQJJ/6TOLkpQIO5Cy69hQXFchhY+LcYozKzJfU+3zp?=
 =?us-ascii?Q?YTwuOw/X6+KoHQPthYKz+wsC93iuULLmwz+OSYlg8h3xwtVj7/3IHTMq6mf6?=
 =?us-ascii?Q?wlg/5ZoIeXGC4/XQ6MlicQv6SEtZMHPgf+X+XeYYSJiZLyWVB47IHN3xLUoT?=
 =?us-ascii?Q?R0c6rsdeIprzDt23GRNCaf8ivqnaScjiIrlOyzflqgbI3xO2OLLtUV/DnktH?=
 =?us-ascii?Q?yuxNYCNC9NdLcbq7xc1QAYi2z5T1NwxTdHFJRmvRb9xbTStBTVSTq8Mf3leH?=
 =?us-ascii?Q?jZnpd+txm19jM61OhyT2axMQob54IuQA/Buj3sfnzmc3EjZGfJswHhUG6gHy?=
 =?us-ascii?Q?69/fzHzB7kyxGxb9wE4igQ7V6hbCt7rId3rPeM/zg3c/79MdptTnzs0G9vPG?=
 =?us-ascii?Q?pFF0T9RoIuJ43cQ8ijv7Hve6Pcv/aHWK1F8/jJUhsmJ0v5XAwHmX8Xem7Vht?=
 =?us-ascii?Q?NLSuEjDt6uxqgXESDgLvTjhW6tHd7a8E7rK5YbDcNoCUVaudCbfD8gls9cvf?=
 =?us-ascii?Q?j6tNPGJ64wEn0KLQrEC0CjFLnLqb+LY6pvZ3Je5jnB8R51ck+bI5MQ/N+YTG?=
 =?us-ascii?Q?ny5OBzVV2eVrjw6KaqudXtOU+sRUm/CV5gdQG26DT2IdoMxCHVwfZz9GTrXo?=
 =?us-ascii?Q?WwaF/6L1SEfQ/EZ/1AayMI35CbtXzzKVmo1J9hpmRq1XWegtAH/RMJpKG0E9?=
 =?us-ascii?Q?2tToIPtsiMkJ+0Lvq9eUWdu6rCsVHwA67Qg1kjZpHX+r8dW2nSs15vM6eUEy?=
 =?us-ascii?Q?BmRqwC6lJus/MZme6W/sRA7TS+lXWHT87s8yqGjvxf+YYOYCO+BNZilXry/k?=
 =?us-ascii?Q?UfKwsXDqthEL6B3+MMdF32OHaaevbb4vIdqcO8I1WydhmfEZNSnRqGw8mKvC?=
 =?us-ascii?Q?RhFMXEg7Ia4KqXxz0/biaxmp++DhDOF4zz3bSSCai3F3wcS3gXK/GFK+sTxn?=
 =?us-ascii?Q?Ur3n13Gxp6NRbULEZdcpXOHfgILJ+WEePTD8E4c5x/UXGUWw8l5dp2M3JOOc?=
 =?us-ascii?Q?Rd1RXnK828UhLZg=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8459.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(19092799006)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?OxybJdBArK4rFXuQnu9guDNw25/7RJrdNvaFYjFo9v7Rtfdyeh0QQVVol5BM?=
 =?us-ascii?Q?JnG7X5g3WrVSp2gwRKRHUYiYVh+zaqWx+6gQnLvOEBtXxKKRr6E5gXpqjjjs?=
 =?us-ascii?Q?pVdV7mfo4FxiAd5LexSugomEGbGw2yctGY+h0+wCQuZovNQ705BWyLFWOG91?=
 =?us-ascii?Q?PDh5Ra7QXw1X2E8yYomEpRF5Dxa+GXMEye0qBnCouyMUqd5gBuwlqHcNP3tB?=
 =?us-ascii?Q?5XOkVxR9s9bztTU/MVqZYPZMabgpVy8dLPnMg72VNf00xLOOqKyZ7dbkcteg?=
 =?us-ascii?Q?SvKQWxwqYPS49LO4DcLAj3vWEv7wHqafsAWVDKZh8TlvxDpOfNtlCNiGNW83?=
 =?us-ascii?Q?jVyE3JMmwSc4crRgOu0OMJywLDKawlSAuxxoy1CgIvrjdBrxSb4MoAmc0Q9+?=
 =?us-ascii?Q?6FKG9SF1odZUciMIy9ASsfudqBRjGv4YCv+GhKhNMQBOOD3ukf18T35selAg?=
 =?us-ascii?Q?rN+V93+37xVNr0g6TM7TR0EPxrf7vvInC4pdvf7Awigt5J1EUQs+RzNu2bPq?=
 =?us-ascii?Q?b/PUGtQFOwKXOoPO99jAmMtgA3/2BgJTGuHjYjur69YYu1tfUL98gwCjkNAY?=
 =?us-ascii?Q?4XPSIgGdtTrcTNQBRZFNHcHGR83VAGC9DRZvOwsAiG9Tgv/cBho91NyxdJTY?=
 =?us-ascii?Q?bqXMD6dnsTQ6Ro7bSh2wkDY4XiYEPqhdUvebBF4gZnZ+FdW7KzWorWfSsLcz?=
 =?us-ascii?Q?zsAPQPmJglethTWQH1aDfytTyy3wCXi47qKh3vscRBJIVo1mCOEqR2qNG9Eo?=
 =?us-ascii?Q?FoQ9ub3UKKpys/TOD4qwMwmiUEWGKfICAy5RjWDBROKFqVTomwuU79uNSsUd?=
 =?us-ascii?Q?PSAqYe+NlfBqy4PRVYlej0PLdXGtfk0nWywEL08lemuKZLQJY8bOc12PF/L5?=
 =?us-ascii?Q?x/UfBWqhYNiEGxl4E2yDdmboVpriCHMQWFl03YGa5lRJRbr8cmWAnoCyt//b?=
 =?us-ascii?Q?RmKEQds4O3ILln/FuWkMEPyeUR/oVh5elhqneyIBdDT1rrtjNmFcVodJwYhO?=
 =?us-ascii?Q?/a8vHCqqGkxlzzJIZJYcE6t8vUZ7Imo2XLPkH3oTPRPJoVkopU2MXCtXQo5N?=
 =?us-ascii?Q?AR2aElMSc4xb0JBC0U2H9kQOoLYvWqcCa15bXw+rRz6jyxbxd3fU2Kio2GkR?=
 =?us-ascii?Q?BNaUZReepO1Gg9W5wAHo3ggLiMVte7eZI9lLX0PoTkpHIQQgoGkvujEFAkxD?=
 =?us-ascii?Q?EDeJqZ5/WV9m9rjEmNKQ02XvZHnHicQuMjPtCnBc7xOy61JLrjt0SvDuUpI/?=
 =?us-ascii?Q?qxAf+w9xHwR+8L3QU1mOEtaJE2IRHodx4ifwIJf61IBQSrVHw2HtmyRal/az?=
 =?us-ascii?Q?F07QnJyI9avFJLYHKF03JHsfNs1plk3JA6VdnaWRBffxIyu0MfvT4wKv9IHR?=
 =?us-ascii?Q?OkYDCUpEidjlLznI9fOfAkRbM5wZqr8ndMWsqGjmkyXRDr1hiKTpMSCxZpXQ?=
 =?us-ascii?Q?U9ytAFAIHjxqJ2KzLDDFoSwQMhQCLKg3lWrSKODVbIrYl9yvS2Y1qrkjFG8G?=
 =?us-ascii?Q?nIz0dZHIXkk9qI5XOyz5V1T7KVl57t9q1rUQ8tkubeVtcx34U70nY46oLuOj?=
 =?us-ascii?Q?Cq6oTHCuCoCZ1wS3hKA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e62c979f-08db-4851-1d76-08ddb95e477e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2025 11:47:53.3467
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DUKSMQcD1nPmUfwwaqQKHWkJRIs9i1zZQTeKfs+0SWTy1hQt4lzFK5AeQtUuj8cEWScDhIFRMSwB08mDzHgkRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB10872

Hi All,

I am thinking to write a script to convert all the "fixed-clock"
nodes that have clock-frequency property to use new node
name "clock-<freq>".

Then we could drop this from fixed-clock.yaml
"
      - description: Any name allowed                                      =
                        =20
        deprecated: true
"

I am not sure whether this work is preferred or this is
an ABI break because of nodename change.

If this work is welcomed, should I use a arch level
treewide patch to use one patch cover one arch,
or use small patch to for each dts[i]?

Thanks,
Peng.


