Return-Path: <devicetree+bounces-3629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8D27AF87A
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 05:12:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id CD0621C204F3
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 03:12:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 396B67468;
	Wed, 27 Sep 2023 03:11:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46EDC7464
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 03:11:57 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2062.outbound.protection.outlook.com [40.107.21.62])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CBA31FEF
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 20:11:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ObWNcDacHiDB8ryE3zeErx5u/K0ztEI3S/vxweZcl30sikDgnkczPGCPdmt3mCYR8fkk2XS9STQM4GIHGl9CR2PRCc+jSebJJlFLaCVOoLDPrUreznGmv5bPveyODZfrk1nrZeQQ7Gx+/zSdAMydvqEZF+S8FJKp36RZsBsZDw0i1wZgxW0eYVBi9k4XdegvmaynZKZ2ofQDNQYis9g2rGiv/r9cMyxrCpJKLcflBDOW41OC32mUcLn4HBxh08pmizsrX6TXzVwpnY5/w2oTYTi+2MEtAv7JKhml9gftpxPE3INrJVCszu4NYCn+gRup2ns7GVlnDPChSpDl+sxA0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cQE6aTcogg+GLNRdHoD2azWcShUGfUI66pveT3diig8=;
 b=YX2D+vRYbg3nEQv2SztGKoGFltH+udEzGPr/jeD8eKF/U/5caCUKqth1vS4ftlMNjdUXMEfKdrs8lr7KXV7tuhNhwR/6EejpALKS8lhQ2f0wFZqhFxmbXtPyjuWsn7FnRVuN44pEWMDEdEZgdjnlY3a4REjW5+FPF/e+DMF+GIWGLzJcBE9tZAcuOE5k4+seLBLcxULWMHto24puhWkYppSu6V9oMSqUi3KW50EfMHtSuW4kBOEUitfZqag4qWEfntnrjlC3IwsqKoTBKH49z0k14yaYxTJd9KPB6eIvAkXmX4sKwlur5uMJSp+Aw+F4CwJ4lC0aPhininwOXrsRxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cQE6aTcogg+GLNRdHoD2azWcShUGfUI66pveT3diig8=;
 b=ibRG3aZ1wtT8lUgvLbI2sMYwtIBuNlO2xzTM9XasR7eALat5UJ6+ZEGvB6pRVE03uZauQKj7gliKRTv5/NgrArc6n6qjKVIcXhW3LESHLBOvL0W9l6dPNr/ebms3z0LX1OM8OgbaSXs63+n95shvgFNBPOHRfuceW8LGJPiLYcc=
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by PA4PR04MB7757.eurprd04.prod.outlook.com (2603:10a6:102:b8::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Wed, 27 Sep
 2023 03:11:53 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::f2a8:5a50:cdc5:66b0]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::f2a8:5a50:cdc5:66b0%2]) with mapi id 15.20.6813.017; Wed, 27 Sep 2023
 03:11:52 +0000
From: Jun Li <jun.li@nxp.com>
To: Fabio Estevam <festevam@gmail.com>, "shawnguo@kernel.org"
	<shawnguo@kernel.org>
CC: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, dl-linux-imx <linux-imx@nxp.com>,
	Fabio Estevam <festevam@denx.de>
Subject: RE: [PATCH v2 3/3]  arm64: dts: imx8qxp-mek: Pass gpio-sbu-mux
 mode-switch
Thread-Topic: [PATCH v2 3/3]  arm64: dts: imx8qxp-mek: Pass gpio-sbu-mux
 mode-switch
Thread-Index: AQHZ8GRHDo0dtndsO0idwleS5i+ZYrAt/pkw
Date: Wed, 27 Sep 2023 03:11:52 +0000
Message-ID:
 <PA4PR04MB9640F8FF63A8D16C89786DAC89C2A@PA4PR04MB9640.eurprd04.prod.outlook.com>
References: <20230926102821.306860-1-festevam@gmail.com>
 <20230926102821.306860-3-festevam@gmail.com>
In-Reply-To: <20230926102821.306860-3-festevam@gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA4PR04MB9640:EE_|PA4PR04MB7757:EE_
x-ms-office365-filtering-correlation-id: 8251eccf-3809-4bcc-089b-08dbbf077f9e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 UMRdS2O+CA0+yI+hQK68ZhUVrXndnihTAHJNy4VJNSW//hDyvSxInr+429pYYdL1URPmU4fFrBcVxFgrobS2E4v0QABfwDl3H/CoeQsWPmd051Lf9JXsQIMa89exGJnvBAXAh7oC8zZv6yYtK+K6Tdt9KFjFQZeBivVh7NTs+DRGhhRKY1Q6+zAHLLk6hS5j6ObR4COTcX0Jx/HxE015gurffmq7hWUkDK2+TuvaH/GwWT4AzZ33GHiXY3iQD4kWeaitwwjOb878AiSjER7Xoya3sitBdv/GGshZMnhiLha8E/IDTU98Nu+ejDS2rkeMBGM13+WA4E0f5xZvmElG81Wn83U/V6xkXmrG8sHXb4kPjy0vKENQ0pZUgqItDMpflQcvPv9uInp0yQpXtBARDrr+fmjweA8yolba6XSWWZEX+doMyLzbtA6PheUHkJ/E84KzVzKdI0Rf/Zo1tRSlrWPd23OilBDP/+a5ThFU0CFkseVnh9u57BmxQI2BrRIK9MuOvFd7ctB8MzUFjX/Q88vO5qt4rUhvqdsMs+kSnh3Y9iojmAayNwTRVKCoDY9f+siMKp2PD0g5UsENomALUAzWLNS5I5p5ZiM+r4Na8E4z1GNfHYdl1GIUBD9USrq1LrC5dhYk6tCGSyjoChWeJQ==
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(346002)(376002)(136003)(39860400002)(396003)(230922051799003)(451199024)(186009)(1800799009)(55016003)(2906002)(86362001)(33656002)(38100700002)(38070700005)(26005)(478600001)(122000001)(316002)(9686003)(53546011)(7696005)(41300700001)(54906003)(66446008)(966005)(64756008)(71200400001)(66476007)(76116006)(6506007)(66556008)(4326008)(8936002)(45080400002)(8676002)(110136005)(66946007)(52536014)(5660300002)(83380400001)(44832011)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?us-ascii?Q?YBE/OGtviNgUbsodDd77deBxAaDcwiNZz9ZqNuz0XdseaTn9rL+BuRK3YQKy?=
 =?us-ascii?Q?tZZbC6KKcbZaa18GMbbavET2wzjar+xqRFUDWPUmAvtJcCXTcFs8YdHZdSEx?=
 =?us-ascii?Q?dfpbHh0yWMg/XvCRVOSP/nOWbmU/GtenKNFJ0Seyr8I9mV9QinPZmnZsLO/m?=
 =?us-ascii?Q?kjV7j4RVnUywhYBhnXNCeDSdGtBMAwyu5mH8ab0KsCvLeq00aHeRa4GDfGhx?=
 =?us-ascii?Q?jMMF1jJptqgeBRPbDhZdw9Z67vB5u9IS6ZX3TZa9L75dYKYAaJPF7q2aK73O?=
 =?us-ascii?Q?T0U251o510KE+ypVWn+xgWn//kigTdCtz67vRbGeA+3lvKeLNf8on75bEM/P?=
 =?us-ascii?Q?NbjUIoPbphuyQkX4jxrubKJy/2vyAybIR3r7y/YdlGpkbEDFf+lZKlxPvOwX?=
 =?us-ascii?Q?Ybe1P4Yv8RW7mFiuxX+98euj+sVwi2+En55+S+6zj2q0swA4r7h71GggJiSL?=
 =?us-ascii?Q?9JqPTiTxUbsZlA15c0VDHRuVkyYs1GhMXEvwRCVr3QUgivsLB/UNLzBttFDH?=
 =?us-ascii?Q?LKt22/716p3qdLsDjtdkUHOzzphFX37n/plclGZEVxOVdXrEgn1s+/GSQ+Xg?=
 =?us-ascii?Q?QKPks7wnVP2ZFXwXFU+QRVVbx9DCawqvj5ebgCjTRdpWNvs+1+onIeVaNQ7X?=
 =?us-ascii?Q?Eekwq+p5OP6revl1M7/5LCFBCWCHwddpO9111HKCYh8Stu8wyHpBdXHvADxD?=
 =?us-ascii?Q?+t78Oj+18+Y1R0+1/uLuqOp+KAcBuACuem3R4Ome+kTcz3ntS1ttrKj2qwyq?=
 =?us-ascii?Q?DBw0JJA2uH6zwXEfulCVJTD4e0H3JgS6IsHTL/BIfzrmNuQ8d1oR7/bnYpOI?=
 =?us-ascii?Q?hvn71WkbMcFdq4qlprzU26HA2kALiF76uWqaGnjIxag51m8iTBvhB6XcpL4n?=
 =?us-ascii?Q?vLyLrh/DRcXq9G7SVtd8VwY6HT5YTYpbF7DMjQPshrua+FXHVzBr0dTtUcUW?=
 =?us-ascii?Q?WTkGSdPc8sLgzetxcIoSnSMXd7FsHHhvRyT61W41B5W1JoQk5XrFzagnZITl?=
 =?us-ascii?Q?o4FEj+ICF7waN/dcf2GjeSYpBbR9kLIco0uO1/wPC8gmGBwHCLpun4zB6deQ?=
 =?us-ascii?Q?UIYpzRFNalRRA02tM3uISko3zPJqfXQQWwwAHzffXo2ZQ18LcXBj8U5JN+cP?=
 =?us-ascii?Q?qN9UiHJFJBrQRUVE54DceCRBjIcVCAtIp2btKqVfng0XLQxzjIoo924a/kA3?=
 =?us-ascii?Q?OAv37HKTN72BVDR81Q5ZzltupTOwimIT2GZ4EhMsGNfmyueLOfplceFyYsRI?=
 =?us-ascii?Q?gOFGCNfI/uE+Z9LSAlnVXRgreztECwBEPOpaf98MEgyLitxXW7PePCgmaKIg?=
 =?us-ascii?Q?MzB6cMDOjN4N1CIkapny0Wk8RWZt5qIoYNnFbm02OjMKaAkpYb+FsxfUilqu?=
 =?us-ascii?Q?aelkgR5mOmw/vF8pWW9LrAwEeBatatjKjiovZ3fkE5BKShWvqp1wn6qopNi2?=
 =?us-ascii?Q?lmQyt0gYIAZeng0q4q3UTUE4aigdoSpFI8PneB/oW8HRgflPrd7DoPr2KoM7?=
 =?us-ascii?Q?gPApMKbQrDCSfiVmzHkeE4NQEDKZRMivnI+jXwNQ7pmtWoV+BJeQLQU7u6YY?=
 =?us-ascii?Q?Kd+SxOskYlSSLeHaWRc=3D?=
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
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8251eccf-3809-4bcc-089b-08dbbf077f9e
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2023 03:11:52.9780
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cNXgMhLAVINY8yfN1AM3hS37K201lf9vCP/XLkj7Jlcyvk0EYQAKHlqTSSRqUHRs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7757
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



> -----Original Message-----
> From: Fabio Estevam <festevam@gmail.com>
> Sent: Tuesday, September 26, 2023 6:28 PM
> To: shawnguo@kernel.org
> Cc: gregkh@linuxfoundation.org; robh+dt@kernel.org;
> krzysztof.kozlowski+dt@linaro.org; conor+dt@kernel.org;
> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> dl-linux-imx <linux-imx@nxp.com>; Fabio Estevam <festevam@denx.de>
> Subject: [PATCH v2 3/3] arm64: dts: imx8qxp-mek: Pass gpio-sbu-mux
> mode-switch
>=20
> From: Fabio Estevam <festevam@denx.de>
>=20
> Per gpio-sbu-mux.yaml, the 'mode-switch' property is mandatory.
>=20
> Pass it to fix the following schema warning:
>=20
> imx8qxp-mek.dtb: gpio-sbu-mux: 'mode-switch' is a required property
> 	from schema $id:
> https://eur01.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Fdevice
> tree.org%2Fschemas%2Fusb%2Fgpio-sbu-mux.yaml%23&data=3D05%7C01%7Cjun.li%4
> 0nxp.com%7C81075d4568d24477088408dbbe7b67f5%7C686ea1d3bc2b4c6fa92cd99c5
> c301635%7C0%7C0%7C638313209472999434%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC
> 4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7
> C&sdata=3DGfQ15vL%2BIQoX9u8tFW60aO%2FrGDLEOBfQoKqP%2FN7tHXY%3D&reserved=
=3D0
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v1:
> - None.
>=20
>  arch/arm64/boot/dts/freescale/imx8qxp-mek.dts | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> index a06a6491ef20..f95b58c69c6a 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
> @@ -36,6 +36,7 @@ gpio-sbu-mux {
>  		pinctrl-0 =3D <&pinctrl_typec_mux>;
>  		select-gpios =3D <&lsio_gpio5 9 GPIO_ACTIVE_HIGH>;
>  		enable-gpios =3D <&pca9557_a 7 GPIO_ACTIVE_LOW>;
> +		mode-switch;

mode-switch:
    description: Flag the port as possible handle of altmode switching
    type: boolean

I don't think there is altmode enabled on iMX8QXP MEK board, there is
only an orientation switch.

Li Jun

>  		orientation-switch;
>=20
>  		port {
> --
> 2.34.1


