Return-Path: <devicetree+bounces-9113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 429DE7CBB8C
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 08:46:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 92379B21091
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 06:46:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7B17125BC;
	Tue, 17 Oct 2023 06:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="ODut7tRu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69EE48F5C
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 06:45:59 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-vi1eur04on2057.outbound.protection.outlook.com [40.107.8.57])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2008A7
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 23:45:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c3QfNVPYVYlu0YYclClYUmg9q2fv6pKmM44xCN1kXHRI4K6Om5qbr1zVVFW03035Y+51v5lsxVTEZthxzYXrwUQ+a+KcSLsFwnzY4qLUyPqxc1LJ8CoEveKjnnkj3xpsgde/iS4h9Wb7R3smUOau60rHeioVJ5crs2SIjrqbREQ3HQZxejrAkQzPaNCxCYxxXmQECdS6cV5ZDzwlgcMbPt/iy+TV2QcH8+B+W3Tr9UjTRziuvPhE8pl5wpyOp4lTxxlJcMjk5x3Awyt0Dtl0+5XW78+C2JUgkoOmSNmC0GJyaLc8rzOgXRhTv5vix4VaPkLEAk5EZU92Ft42/dJx+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7LDMrzrRtYklVci9fjXILdOqey0Yie9rhVvxPUhfg0U=;
 b=SqxPNad2ABmDGclEPx106TcnTt9Mo8unnuSgtQoatMhA6sOSooR9RhgVcRO0u63ODTT8raqiYGedIxnkg6PmcAR0qawklsU5ATry/BxAhw+lRb8SGM3PNs8BxHz4P4B8pTSsQ5IBbtqT5P/LiMqBVKOSyUT4UZMw8z8S90pnfQWrEOHvJLMzZn1WiZ7aUAsyZW+p0EDQKdUTJUeTCwg11GuD7RmNp/5IqLsXfIjK4ABy6IGXRan0H6S2Ut8vKwvRferPmw5Bhr9zzDPKX6apa7vxlnzVx8HVUfAL1urG6hhgj+SZfbmjlaQwLjvkFKZQj2yZCi1KTGxVhjjYgWqZMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7LDMrzrRtYklVci9fjXILdOqey0Yie9rhVvxPUhfg0U=;
 b=ODut7tRut2zK1U69+dldUDswMvUTQp/xH3WcTIhUnMV8F2M9iCmOmpByqODaRJsCIJznkhJQRp+ygpRjnBuz0J8y97DZMOdzOPSXYbhWTyuoGoK0KV/fVFrIvm3w6JXEyuFAdtFEBiXVw8+QkwSUgG/QdDoisko1liFeS5/Hpwo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB7PR04MB4010.eurprd04.prod.outlook.com (2603:10a6:5:21::30) by
 DBAPR04MB7336.eurprd04.prod.outlook.com (2603:10a6:10:1a9::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6886.36; Tue, 17 Oct 2023 06:45:55 +0000
Received: from DB7PR04MB4010.eurprd04.prod.outlook.com
 ([fe80::e796:8366:5d4:4188]) by DB7PR04MB4010.eurprd04.prod.outlook.com
 ([fe80::e796:8366:5d4:4188%4]) with mapi id 15.20.6886.034; Tue, 17 Oct 2023
 06:45:55 +0000
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
Subject: [PATCH 3/3] arm64: dts: imx93-11x11-evk: add 12 ms delay to make sure the VDD_SD power off
Date: Tue, 17 Oct 2023 14:50:48 +0800
Message-Id: <20231017065048.1304294-3-haibo.chen@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231017065048.1304294-1-haibo.chen@nxp.com>
References: <20231017065048.1304294-1-haibo.chen@nxp.com>
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
X-MS-Office365-Filtering-Correlation-Id: d4b9ac7d-295e-4159-772c-08dbcedcb663
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	pa6pqP+UiaDvVIRgMPM23rL/mxm47O09AZgESHv9RiQM6S3T7EPCc4nL1k5q7TZSpwWukI6ZpPo6Ms4fVA9kDTTScTsypWJG3f4KhsFjhw5apHhvhkYNaRPC/5itJALEGBarj47mO+y4n1wOTEHn+0UIx1YGiWMlFwviuieIS7XgYg1/bEcadA3QV1aIWtgl6rATui01a4g7Q7a3hWzSeoDnRUfCj3UABtPVcIiKMgm9128EcpRBzhoe7Ef1c7Uh2QN9n2xIqzaypNvV8WLJtMkfrIgOJ7fd6zzrCA56uOcxN8pyx7TvvPxhodImdmqDvQdZ9V4mR1tm0uF0nKt2mapGcny/khf+RdYjZPJIyd8y/HksyB182a8id52qpsBPYUYpEEtVaat2Dn+dLebBAT45euluR+ZmglmvtHdnpLCDBumIqEhiPwwMH1NPcqZlan4IOIzPe/SupPu1fJA3cnalZ1M/AJHDZjHkwlydllOsHiXouEwyADxcZaxkkuyqv/0VhMcga654vltG3NAwP4rQdKCoTyJijERJdK9lctw+fBpk4FXXSjfq4pzdOp21xJHSlXDs+aXSmNodfUKEQn7oQMz6qTPe3xhxuWvtO4GQX4/VBqbLPvUQceG9Peom
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4010.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(39860400002)(376002)(136003)(366004)(346002)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(38350700005)(6506007)(6512007)(6666004)(2906002)(5660300002)(4326008)(8676002)(8936002)(41300700001)(66476007)(66946007)(66556008)(66899024)(316002)(6486002)(478600001)(9686003)(52116002)(1076003)(2616005)(26005)(38100700002)(36756003)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?y3ZU6LYZplLCUtsSYfDgedJu6Ptc/ZokUo6SOxHoswCsirgDvL93XM6gsNRj?=
 =?us-ascii?Q?163e7ci0zeGJV8v7T7ZfxpZhwCvSirfvvH01gY1iHidAiuAnYQvlfs5pmJ1Z?=
 =?us-ascii?Q?an4Tr30a1gGGZtfthmADQWgd00OQ01bxSOecXOzgJr6NQXW0bDdXpaF+y752?=
 =?us-ascii?Q?eDzijEiMHk1jOhGw8zNj9UYkvLIQ1cdxGeZrJdH+7sI1OKrrS+h1KylKMZF/?=
 =?us-ascii?Q?aCmTvuhzJCeiEoTsXolIiKRhYVcYwTw50Em6sqFbGr6iEZzVykqbgUeXdzFj?=
 =?us-ascii?Q?EwGLVLHcw2yDJilo1BX0KMOgult6w96lWqcksAqJWz+RiJDjub0EeA1ev963?=
 =?us-ascii?Q?v180jGrwD0ui41M4uOE5gUAVKE02AZbb2zAhzVpF4zw2lFsNWrmxjxkpX+BJ?=
 =?us-ascii?Q?oO8XMs5PPqIQsQsdD7cqL2FB4+1veeypY9FK8IIOLh7mzANabo5XIkA9OCs4?=
 =?us-ascii?Q?dEKIuOh8AL3mqp3sUBRTW1A2TvyYgSOdth47pS6DyFh57+evpqOdlOy1UJ4D?=
 =?us-ascii?Q?jya84tyEVmTI/etynP2k8zp+dRz4manEforuJjABL04o0o8G9UfpIJBqlixO?=
 =?us-ascii?Q?McE9RMwYNCX7tPBSAczPSTRgJcuLEVx66eC4vZR0xi6TPoxsZFVlwD5qj5sU?=
 =?us-ascii?Q?5r6Mhd+T0QsgBH/MtrcBOBEmAIyUcWnbFPIKaic9Z3PodGvFGFUHpjEPDqzV?=
 =?us-ascii?Q?4WRbs8vElAGYEc2pgQdsJROoFLuPXh2CTRgfTPyzd630XE9SWW7xffjvLURg?=
 =?us-ascii?Q?AgG8HV0DqdAFsoyuX6kzyWo4EHNY2LSQozD+AvjQy/pCTUjTlD4pbvq9VTIQ?=
 =?us-ascii?Q?e3K2KPTlv/HGicLCN141MMg3vnFQjFWaI10Y4TyEIt6rhPtxaaEUA1PIAqrE?=
 =?us-ascii?Q?mfbmJ1ZJXcg6IDUEjr4/OjCq0L7IaoV1nY1o/fgM2GA5CouJVNuUNAPjC32O?=
 =?us-ascii?Q?dYJeKibqDmKwbf7N5wYQ5HwehH9vPDXQtX+7yFm+V68lOgO9LmEqWbt5Hrb7?=
 =?us-ascii?Q?gdJI1EGs2AfB2zZ04Yn5GzYV314JMuJLgPfx7Z5N1R1jUeWXx5PRHiWg3FLR?=
 =?us-ascii?Q?UrF2PlUsMGmyQLXPCWjZg0uwO5m+zpcSUBe2Pblobl6bjDxbRSARjwBloHII?=
 =?us-ascii?Q?n/N7oaevGyxVyUAZjHSFC/W3X2fYsVH24pqwVD5G6XanQ7A9JDP0Rlok8ySa?=
 =?us-ascii?Q?qwNGTN/P9HGxxyuMphiO2xTmY7qyOQj6Cbb3rY3Ot9uAN43mWp3Gk7X4B/LU?=
 =?us-ascii?Q?r4wcjNtvlMG98XwiTF8pFg/A3hxf1x0OsSx/A123yJecT9EVssdgnFXr1Ikh?=
 =?us-ascii?Q?cQ33f4NeWWRJBVAKmkyatPwLJ/FzJpLscPesq/g5evQuBsW0A86dYMvnogfX?=
 =?us-ascii?Q?BK1bEJIpt2q7JgAqJR79oFx2s2hCsamHQ0hqVOGmrLXCuup/jTp4tGyLxgtu?=
 =?us-ascii?Q?3T728N6mHF3+3PY8dtEjQm251nyu3Y4R+xzfAeP2RHp9vSS4AerpNnyfgg0/?=
 =?us-ascii?Q?VenwNRJzOihNzFYaKfVNtjkVJC9Kto0w6V+brHSJ3YMoGG0bBfSlLpdozsca?=
 =?us-ascii?Q?6NpCHZKrTBzlpP7W9qRQZEuOCVIKbqRJCIStQ+E4?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4b9ac7d-295e-4159-772c-08dbcedcb663
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4010.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2023 06:45:55.5242
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7hqZyVwY1bC8Z4jN3Fqlq5fNdGrED/ZrF9nXOeyAr0Ddnc4Ny1dA6VfumuxyayUUjphGtXnYzKYOR34mxwOcbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR04MB7336
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Haibo Chen <haibo.chen@nxp.com>

To support SD3.0 mode, according to the SD spec, a clean power off
for the VDD_SD is keep the VDD_SD lower than 0.5V for at least 1ms.
On imx93 board, gate off the VDD_SD, it will cost about 10ms to see
the voltage change from 3.3v to 0.5v. So at least need to dealy 11ms
to make sure a clean power off and power on. Here add 12ms dealy.

Signed-off-by: Haibo Chen <haibo.chen@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
index 021caf471bf6..9921ea13ab48 100644
--- a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
@@ -76,6 +76,7 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		gpio = <&gpio3 7 GPIO_ACTIVE_HIGH>;
+		off-on-delay-us = <12000>;
 		enable-active-high;
 	};
 };
-- 
2.34.1


