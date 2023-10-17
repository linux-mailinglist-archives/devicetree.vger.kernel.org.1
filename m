Return-Path: <devicetree+bounces-9111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3733C7CBB8A
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 08:45:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E55F52814F3
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 06:45:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2885111CBA;
	Tue, 17 Oct 2023 06:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="b9/GJUKO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F10A8F5C
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 06:45:53 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2051.outbound.protection.outlook.com [40.107.8.51])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65E8D95
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 23:45:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m/+JAICwhDlBiEDaJfyxuJKtT++BPFwTBmxRvdxk8krFx3mLmSNjCmkSvCeOo8nVNPMa2UKC6phxrrBLnnBccdIovtlNdDXK6At1ilc2b52HW5TFssEpwqw5ODNKlZnCpR5q/F1VqwPpXP/2/pmrN1J3zxNfZOszjaQZ8EwMI1Dt6KamsiTEYFQXxXX26DpxZSwTJUS2TP966Lg8aaThYKd53SDNqidk1UyhUDjnHWYSXn1iSPBk/Uw8trXsZ/YRFmN6WtUC8515NLAfqkrdG9b5xU19ZIjZ6O6OdrhZCTm7XkvSJFgMDSJ98gSbpTcffFE0BB8d3AzBt90b2IazBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KjjW8a1Il6HNWPsbaTKtwDKkS05M7Inro+AML/t46Ys=;
 b=M7WhyLeV0ooeo07vWo3wPlq2CzhabV2HVIHFw3H0te8j+lgOTfvOvjs+Tb1YliKRPB/w+5kOvExrtBFDBVdJ78A+syPgvRsKi73JX3dygjYB/M9BMzjyoFrGkYL+RdgZXs5LNQrhFLe6bWLnvJLN9PZoa+OORoQC6MzqYpmDPRGZNHNF40JMyMkQbn4MrpWg7bwps4jfRqp4CLOU9HWtYHUYKZ0ql2uiA5LkAPL6mWuAYQBd87D0CfKQa+JY/2kIQsqQ8R+0VYiRFr/3O+BpesJL1Gj8SS2RYkeW+Cs1b66Om36c5aVDLN4jTWeVXA+2MeT51S89K9gsVyK6/Ug8gA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KjjW8a1Il6HNWPsbaTKtwDKkS05M7Inro+AML/t46Ys=;
 b=b9/GJUKO4brFuOkgfc1uRLsYIj/+oT/TE+KnFelt9d6c4D1X6zOg2ec9YJLt9NqvKqN4yQ4PlHSRcoeWw72WPZWMAJyzHAr18QGa/PRY9SdgdeWAZz5xqmP6ZuCyL8gpfOdxwLyw9nuT5XLaQPsIkkPD9U6qDwVOCUfP8LU3cSo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB7PR04MB4010.eurprd04.prod.outlook.com (2603:10a6:5:21::30) by
 DBAPR04MB7336.eurprd04.prod.outlook.com (2603:10a6:10:1a9::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6886.36; Tue, 17 Oct 2023 06:45:48 +0000
Received: from DB7PR04MB4010.eurprd04.prod.outlook.com
 ([fe80::e796:8366:5d4:4188]) by DB7PR04MB4010.eurprd04.prod.outlook.com
 ([fe80::e796:8366:5d4:4188%4]) with mapi id 15.20.6886.034; Tue, 17 Oct 2023
 06:45:48 +0000
From: haibo.chen@nxp.com
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de
Cc: kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	devicetree@vger.kernel.org,
	haibo.chen@nxp.com
Subject: [PATCH 1/3] arm64: dts: imx93-11x11-evk: set SION for cmd and data pad of USDHC
Date: Tue, 17 Oct 2023 14:50:46 +0800
Message-Id: <20231017065048.1304294-1-haibo.chen@nxp.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0129.apcprd02.prod.outlook.com
 (2603:1096:4:188::19) To DB7PR04MB4010.eurprd04.prod.outlook.com
 (2603:10a6:5:21::30)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4010:EE_|DBAPR04MB7336:EE_
X-MS-Office365-Filtering-Correlation-Id: f4445035-d46d-41d1-8353-08dbcedcb23e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	ELNxOWQfXUC4OGBlDrFmMggoB0yc78fREyCEj0Hdz3lLWicI1gFySrnrJhyOXedqef+zpZIlP0eF1H+Q46vvOSdS+oZJKWVLNmHWtJ75eKgzYplJgewu2/0o9vdjAG6jGs6nRjIOuKzozkhWuhF0KPWlFIdsRpEuafPLnaihL0R4fVZnY71TQnk9WVGA47YNIsEQjslj3Rwj0esva/YrDl5sttJP0Xr2rsONtH/BMiN3XOvpodYkRDJyHOYf9hCQjC1StRN9xa67ghDlyePOXxJwVj9nhhGqw8t8dMLrbvuEjSe7PoEz2A9fAlrEoWY2ytpzvGLwo9qw6+hjRfLAri+hQUHmpF1JQPx5AoM1YEKHTFKN4L052evEUYBVCyMPOQLQf88AMX/Y8z7SiRaliurS2YBaUCEBn8S/m82dn3nY7w0nFYptNAbvBEVFaXDNoyZQR2ljtQiK/DBWh6jckJtH82zd1JZeYTqzUgyDYyve5KicD1I0zQJagTcc/SnoSK5DfQlBTW95yzTeK6QEN/c6/QnIdPJ8S6r9ABCuXiqIjfyFil4mQKDD6cN8pmXzP/7wQgPDYeyoeVY5mlQUT5SLPqLIOufLrvmv9vS59HBHj8/JlBhkGZkUCDWiei25ktYrhldsI7971zizaBAETQ==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4010.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(39860400002)(376002)(136003)(366004)(346002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(38350700005)(6506007)(6512007)(2906002)(5660300002)(4326008)(8676002)(8936002)(41300700001)(66476007)(66946007)(66556008)(316002)(6486002)(478600001)(9686003)(52116002)(1076003)(2616005)(26005)(83380400001)(38100700002)(36756003)(86362001)(473944003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?rjl6bxHQ4P1ezsjvZA1PRAWNmfH0xvLBVgOAhhd99Ayn3WPjurtp1XIykIBY?=
 =?us-ascii?Q?Y0HcmMo1OILUI6v/U1uNAn1wR5NVRRQohJBPyJVq2b0o1eme1ygPCLsW7K1b?=
 =?us-ascii?Q?GQH8XZfTH7OJaI/3+VjRtieorxn4XuJmL+7DYdYZCKfyEnAkUHc5gcVEJmrn?=
 =?us-ascii?Q?6eZUZ3nebFTfTvXXnto2i2ZaO8tK8N1DfefEA1DVRbiIcNRKnIca/e3k6q8r?=
 =?us-ascii?Q?0ibjpGJ/qbibZd45c7kJhNyu1fkWtT9n0xI91TcVTsc2MAxj8FLwTov8u+6Y?=
 =?us-ascii?Q?985zVcSX6qFJjqDQ8qquHockOWQCl15GmwBRUa4DKnFcyoz0LekMcOZtwhML?=
 =?us-ascii?Q?/Xe/U/nR682A2MSzh1j6uT34e6MTkInymj0F2G7lnJBRucGXOXQWAsDnzEDH?=
 =?us-ascii?Q?w4DhEutr1/1sN9EQ0c8MA06o6/gQF2guXHRzKfzRCaQuvqtPDnbU43i6u4bV?=
 =?us-ascii?Q?oWahIG0otXmzMmsC3eMXaD4iv3l6cfKTBwQ8ulZ2fjMbrzxDOnQx8f76nhk6?=
 =?us-ascii?Q?4OR1QrlFPy/NnZab4e7t0ADwxFD9sSh4n7cU0y3mdzXO5eZBsXxcnNDFiHEa?=
 =?us-ascii?Q?7LgpVzqStcrM9wgu6r5VTMmRsKct9oLq9hcK3ZOUp4S6ZKOP5Qh+BKIpVanz?=
 =?us-ascii?Q?RLE6RkI6vVSgBaq0iqPg5je8LZ3mu6pKvYvlD7Zm4QyelvvnTgxFzkiwKFmk?=
 =?us-ascii?Q?KDN148r6Tr1LnyfjRX2utGNIkdHXZNdecryQQNKuO098At2/Kv/TQRI8wo/K?=
 =?us-ascii?Q?eD73RfCqCVPiPWDsGNA0zlDQY5318GY5ORPAUBIxhTcnkLEDseC7yVIsFQc2?=
 =?us-ascii?Q?ViP4CIeny2EHClD91cFXi1YQ34eoxtcG07KJlBeHjKNQ2gMv793xJpeVu+gL?=
 =?us-ascii?Q?DjOpZWDK9pYosndW6GjtVDi70arn2ZzY2WEQ82OxH7uBESZrrYE0ywnS2OPr?=
 =?us-ascii?Q?raVJEpzH2w30RwkjDz5FLPvmPy6BZ+/QvfJvoolvuKS+xWRKM7ac6AiNXLPZ?=
 =?us-ascii?Q?159lSNnBtvIR+pek+nw8VqpOnW1MnQYYcg1+5yt4/5BylojimiTItEZWFWXt?=
 =?us-ascii?Q?6xxHFha7ug2DKlndhe7rqWF0hYWd+LWzHY9m3Ys81K8+CuB88hdZfcA7C/oB?=
 =?us-ascii?Q?F1RltHJ+ZcrY4iyPpF8BF30yilrjilZrDL77AqSn2ny6bMOv+rkTZrEjBqOF?=
 =?us-ascii?Q?2HIVZFG72mQEEKEkT8V4VYerzg2lvk4wcuClAAJwKYKPaeZ9c3paWPT7zMip?=
 =?us-ascii?Q?CD++AI5p7CLKAc2AsUGKxtwlF+5djfiQ+wBNCnWGN2pj9CzJy74pc9UgXfzA?=
 =?us-ascii?Q?sTrnLh/gNyTw4WPat6bx5z2+SL0379UQGavssltsTLTq85t3vY9Ite31MOsm?=
 =?us-ascii?Q?xEhhE8rDv49MREWTvVf0j/scg11F1HLydXlEpaEWhd+abqwLP7ysH6yhhQ8z?=
 =?us-ascii?Q?be3ByK1/xZ0BoIG1zK1EjTKPoMyWwekMaZnoqds+eHiK73Emw3h6ySVQGVCU?=
 =?us-ascii?Q?K8D6+h+sQvQf7p3HR7wXhIqbRLQzZoqfHneduR07RMAdHGlqr7ZoZyDYusqk?=
 =?us-ascii?Q?Dw0tuFAbEyODJh/Ujgmk3+GjWnWpNPvX0/21my60?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4445035-d46d-41d1-8353-08dbcedcb23e
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4010.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2023 06:45:48.4773
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y2z3gEiDXwMVQzWv/xBNpQnu15QCLpVxoEyjwfOx+H2l+acT13JJycvtHkr3XZ99PTgJJxioN4/6n1nTijUUFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7336
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Haibo Chen <haibo.chen@nxp.com>

imx93 pad integrate has one issue, refer to ERR052021:

ERR052021 uSDHC: Sometimes uSDHC does not work under VDD_SOC low
		 drive mode and nominal mode
Description:
uSDHC PADs have one integration issue.
When CMD/DATA lines direction change from output to input, uSDHC
controller begin sampling, the integration issue will make input
enable signal from uSDHC propagated to the PAD with a long delay,
thus the new input value on the pad comes to uSDHC lately. The
uSDHC sampled the old input value and the sampling result is wrong.

Workaround:
Set uSDHC CMD/DATA PADs iomux register SION bit to 1, then PADs will
propagate input to uSDHC with no delay, so correct value is sampled.

This issue will wrongly trigger the start bit when sample the USDHC
command response, cause the USDHC trigger command CRC/index/endbit
error, which will finally impact the tuning pass window, espically
will impact the standard tuning logic, and can't find a correct delay
cell to get the best timing.

Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
---
 .../boot/dts/freescale/imx93-11x11-evk.dts    | 30 ++++++++++---------
 1 file changed, 16 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
index 2b9d47716f75..021caf471bf6 100644
--- a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
@@ -237,18 +237,19 @@ MX93_PAD_DAP_TCLK_SWCLK__LPUART5_CTS_B		0x31e
 		>;
 	};
 
+	/* need to config the SION for data and cmd pad, refer to ERR052021 */
 	pinctrl_usdhc1: usdhc1grp {
 		fsl,pins = <
 			MX93_PAD_SD1_CLK__USDHC1_CLK		0x15fe
-			MX93_PAD_SD1_CMD__USDHC1_CMD		0x13fe
-			MX93_PAD_SD1_DATA0__USDHC1_DATA0	0x13fe
-			MX93_PAD_SD1_DATA1__USDHC1_DATA1	0x13fe
-			MX93_PAD_SD1_DATA2__USDHC1_DATA2	0x13fe
-			MX93_PAD_SD1_DATA3__USDHC1_DATA3	0x13fe
-			MX93_PAD_SD1_DATA4__USDHC1_DATA4	0x13fe
-			MX93_PAD_SD1_DATA5__USDHC1_DATA5	0x13fe
-			MX93_PAD_SD1_DATA6__USDHC1_DATA6	0x13fe
-			MX93_PAD_SD1_DATA7__USDHC1_DATA7	0x13fe
+			MX93_PAD_SD1_CMD__USDHC1_CMD		0x400013fe
+			MX93_PAD_SD1_DATA0__USDHC1_DATA0	0x400013fe
+			MX93_PAD_SD1_DATA1__USDHC1_DATA1	0x400013fe
+			MX93_PAD_SD1_DATA2__USDHC1_DATA2	0x400013fe
+			MX93_PAD_SD1_DATA3__USDHC1_DATA3	0x400013fe
+			MX93_PAD_SD1_DATA4__USDHC1_DATA4	0x400013fe
+			MX93_PAD_SD1_DATA5__USDHC1_DATA5	0x400013fe
+			MX93_PAD_SD1_DATA6__USDHC1_DATA6	0x400013fe
+			MX93_PAD_SD1_DATA7__USDHC1_DATA7	0x400013fe
 			MX93_PAD_SD1_STROBE__USDHC1_STROBE	0x15fe
 		>;
 	};
@@ -265,14 +266,15 @@ MX93_PAD_SD2_CD_B__GPIO3_IO00		0x31e
 		>;
 	};
 
+	/* need to config the SION for data and cmd pad, refer to ERR052021 */
 	pinctrl_usdhc2: usdhc2grp {
 		fsl,pins = <
 			MX93_PAD_SD2_CLK__USDHC2_CLK		0x15fe
-			MX93_PAD_SD2_CMD__USDHC2_CMD		0x13fe
-			MX93_PAD_SD2_DATA0__USDHC2_DATA0	0x13fe
-			MX93_PAD_SD2_DATA1__USDHC2_DATA1	0x13fe
-			MX93_PAD_SD2_DATA2__USDHC2_DATA2	0x13fe
-			MX93_PAD_SD2_DATA3__USDHC2_DATA3	0x13fe
+			MX93_PAD_SD2_CMD__USDHC2_CMD		0x400013fe
+			MX93_PAD_SD2_DATA0__USDHC2_DATA0	0x400013fe
+			MX93_PAD_SD2_DATA1__USDHC2_DATA1	0x400013fe
+			MX93_PAD_SD2_DATA2__USDHC2_DATA2	0x400013fe
+			MX93_PAD_SD2_DATA3__USDHC2_DATA3	0x400013fe
 			MX93_PAD_SD2_VSELECT__USDHC2_VSELECT	0x51e
 		>;
 	};
-- 
2.34.1


