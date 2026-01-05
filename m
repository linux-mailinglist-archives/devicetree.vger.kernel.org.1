Return-Path: <devicetree+bounces-251334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 018A8CF1B28
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 04:06:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42B5C301A197
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 03:05:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A5E731C56D;
	Mon,  5 Jan 2026 03:05:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b="FAPuLBHk"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR02CU008.outbound.protection.outlook.com (mail-westeuropeazon11023075.outbound.protection.outlook.com [52.101.72.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A098D31E0F7;
	Mon,  5 Jan 2026 03:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.72.75
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767582339; cv=fail; b=s7PAfofbVY1x/wODsrub2dC2zbKY8px6Y9nCu8UubwmnYQnsYfbXR/r0Tih+1FJ7+M60bcJ09qkOehLzmlNutxzgJJwsSfQEFO89bUcjIswPPmHFr9oqmTLeo+E6l3BBw00ZhNAKChn/r+p5YCZOYwu5bM2hY0atZjplvtnx4/o=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767582339; c=relaxed/simple;
	bh=+UAhc/zzPiPCaXbF/XbVfQxRuLYEafKKsFNMdbe1wSI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=nePg1CslBjJsiwVlXJwOaCYxrJFDkszwP0bvYHUf4Qcd/d+awnJ1BdhfVpGZGO08u3NfAnNYgcMzL7oLSzXvns1N/4YauL0mhLmMzVPhiYO9V0wmefY+WpkYMTPO8R9XDY81htSsEBpGQ/kLxjEsIJsZt/OY5a92eAxm8mVFZxU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu; spf=pass smtp.mailfrom=genexis.eu; dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b=FAPuLBHk; arc=fail smtp.client-ip=52.101.72.75
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=genexis.eu
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IhAhRzymibUkuv57Hejj8Mp4t1ugNmAEJ9e1v9XsGRY26idINRAy93E1qtaDaGLgHRCxdZ59D5GMv5WnxyUzJWSrHvZpLAPsnR7NaL9J8BGez5Uc6EiTmw/1MbNZ2T3NjZ+JCO+x1CSqANtpzYhd3xNmC4JntYJSz2WbET01zFNImYNJgkAkH2IkUVsmwP9wbFd0+gh6yhIyhHw5kMjsAZgK63tGmk65YOP3L68a7lHeO6N2eDeZx84VrTxjimwtyrUThEwMI8/XitssQjm1tAWnN5GtCA+51Pv5J5IIGj6DyVDCS1d744mPysfyBaYzDormuazWVgSEyaxRvdedag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ADTHSpRp+uv+dVOZtQkY5yAvdQXOfCFG4kzF4oSxP9Q=;
 b=LZ+MFimqYbP0L766sRQGnnPDcD9VKJo6T15AqMPmSqGlhvyIuMCAA8zE7YWadTyd/6BVjvPnqMmJK/2R639fdycIrlUq/kWX7uSt8DtLkmIupEkRXObiCdyMb2kXskmtTe0mANUibgJbhDuxlzq3rq09Ux4IC1/LxwH8lKox9O+u+8f8EJZIG6Cy+M9KSA9v8nxmxgtAepRw0GZ3o//gJCfWSUX2K0pJJD/fRhwR6YamjuBNJJVLfZJlGUKK2yOe+/zWUUtOJQ6zDCp0ZkvCPOdiFK8vbQFQ2Dfrh+VSOmMA0gF7brvgE59gZPQGl2/i77wwdIJyUqWwa3GXhFdxww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=genexis.eu; dmarc=pass action=none header.from=iopsys.eu;
 dkim=pass header.d=iopsys.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iopsys.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ADTHSpRp+uv+dVOZtQkY5yAvdQXOfCFG4kzF4oSxP9Q=;
 b=FAPuLBHkKj9SO9OD+8jwRNtKOCYgxCWE3LYKkdI3HqUgFCu6cQoo8tLr2aj2zoTo6hfREe39f35MBsL3J7MeDdw1GZx3FDkXM0UuNXlwTR1h5NMRbIs83MwzzmLoGGb/RzWrarAU5+GxUzQly5wvLFrPPo/aJRqQVVzDoKr2cLHRmNkVCwJKBRbvix4/ZxV9Ss5O65oorlBnzCFNUyMY0nCZVvkKfNEcR8VNdkiExIJbFXDwOYaOmmYnvR4VLjlTkZctUGmhGmSOK+KLo8lBPx/0R5pX62GEvcHfivyJrqIT+cLOIrVz6HOAH4OdtXrFvUkfQuWzjU4sM/zk1yKYqQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iopsys.eu;
Received: from DU2PR08MB10037.eurprd08.prod.outlook.com (2603:10a6:10:49a::20)
 by AS8PR08MB8492.eurprd08.prod.outlook.com (2603:10a6:20b:565::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 03:05:34 +0000
Received: from DU2PR08MB10037.eurprd08.prod.outlook.com
 ([fe80::3c7:6d2e:8afe:e4dc]) by DU2PR08MB10037.eurprd08.prod.outlook.com
 ([fe80::3c7:6d2e:8afe:e4dc%4]) with mapi id 15.20.9478.004; Mon, 5 Jan 2026
 03:05:34 +0000
From: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
Subject: [PATCH RESEND v2 2/2] ARM: dts: airoha: en7523: add reset-controller support
Date: Mon,  5 Jan 2026 06:05:19 +0300
Message-ID: <20260105030519.4101456-3-mikhail.kshevetskiy@iopsys.eu>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260105030519.4101456-1-mikhail.kshevetskiy@iopsys.eu>
References: <20260105030519.4101456-1-mikhail.kshevetskiy@iopsys.eu>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MI0P293CA0005.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::19) To DU2PR08MB10037.eurprd08.prod.outlook.com
 (2603:10a6:10:49a::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR08MB10037:EE_|AS8PR08MB8492:EE_
X-MS-Office365-Filtering-Correlation-Id: 3b0738f2-3f43-416a-a442-08de4c074b17
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?kVXtC1UQfDg0IU9w/AM2TTWoGWJpHf78jubC9+SZIxjvSIAT3kTpW8OMQYbF?=
 =?us-ascii?Q?jhito11fWF7gaA2LmWwUAj7QywQGycEJ5GRlWxwdHbK2VloLrnmZYFkkRuzJ?=
 =?us-ascii?Q?el4GMnDub9xWRXPY45hnbnhP5W7/CL3tGbEzyGwvr2ESD6fED7msJxJaktbU?=
 =?us-ascii?Q?ZXAScCI23p7dW2WXOKDvi3QN2ZX2jXCogPMpQdjh/peUAzmX+y2UG/XMUd6k?=
 =?us-ascii?Q?bDNZ8OSi7a4PkkfPr8m/hd7OpCrmyTT/mgt1pociOxGy8ApNPCzxvC/mJR0r?=
 =?us-ascii?Q?LXYu+hTCq7wzJaVWIO+1ekXejGb1Yz5cpjEjXb8jCz0pFd+3nFS4yVmNdopv?=
 =?us-ascii?Q?3dRYy9bWkNZ1mx8mm7t8vbv/rONMGXFt4miUBQQYU5mhNsASuGZwxwtJJOIG?=
 =?us-ascii?Q?GKyYeaYrA7h6eq1oj4Cm1D5ZWTiRnp9qeOOev4ff1RkgCg3fQRrJ3GqRMkOs?=
 =?us-ascii?Q?CI3kMibQ4aqXKxv7Q1hMdQ25WDGp9BYYOSU7nqPbd0CPhtK42IAQ15ZVQnxN?=
 =?us-ascii?Q?88urtWMmyFzgoDJiL3dNTmK5ZnWf+00rk9OdrnBpksgtPpe8pTtqB7SQP8lV?=
 =?us-ascii?Q?Rex4C/xggkxVQFoGHaFKTvSo+jKZ7Ra/ql4Ow0DVSm7UgpdcnJ5S/jTYzkdW?=
 =?us-ascii?Q?0E54as+hRMsmxCIxMBDaAPzLhoDsrTchINPVB4arHBj8Ug532vhMREVQiS+Y?=
 =?us-ascii?Q?LXxSl6Nfsv9agC7zJZD6qFvrVqfqsiupomWLEvFwDVO4i+RaRiGLs4xMuaaz?=
 =?us-ascii?Q?Orw4cI+aRNgZqWa5gvlZpKQqLUuN3nUxylp8iUGnqGw7HmCOUXAFFwBt6gQq?=
 =?us-ascii?Q?9sqJH1hWTR5cDp6Rq8pqyqVtPm8nC2mC8S0OPqTwvezEScJngK03Pkr7/ULY?=
 =?us-ascii?Q?ciSWBLifT0jkbarRtOiiX0OH3+HcNGD+gzn+58UdFygrbzMfEU/j3pCfhR7Y?=
 =?us-ascii?Q?T1s0gx2bjKTmN3vkoJ5NvW9id4OWz6NW2wMfAPADGgpv1kmCdPFP7z1oMUwA?=
 =?us-ascii?Q?+82dA66ZSeDOXs4jpUepQpSwjDCg7GD3VKOCtw9L7KZ+DwHOdsu+8R5BfLZV?=
 =?us-ascii?Q?XvCEHcBGZC5IP42CyvwYz/tolun+p/2ekrg/5F2SaRq2f74A4jwBRy3NEkNC?=
 =?us-ascii?Q?bvBNxG0tZGCKDZkne62LoJk6QVubzAyA4tUtjQ+PEf3ubQbu0e3SYGJuji5l?=
 =?us-ascii?Q?QuJdyd7NXnrDbPZSxnwHXNa9WagnWzE6jddxs66tkpHZb//sF26qMZK92aO9?=
 =?us-ascii?Q?C+EasDWnLfkHBnnBMhqUOaXg3RyD32Vodpjm11rQmvpmdakeSNZmMIwTjPH4?=
 =?us-ascii?Q?8jJXbBOTL0gbMMDe7gLpgdfEAjepPlddJd8cliinpjWwUboOZsm42nFZtYZd?=
 =?us-ascii?Q?4ZIJAlXtCDfmPWqhBHVvUfV7e0aSXp2EPmjsEP9yEV+dsYeEkpFV0Rjj570l?=
 =?us-ascii?Q?S0q3Po7euWipEo4B/y7wS8b0GeCiKNRrj7vJtC/Ys5uyZGezGzYqUIRv8D9e?=
 =?us-ascii?Q?zsedApXICJ+FKt9OHr95S5fpD14AI40S8JPc?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR08MB10037.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?Itzb/ZxlFHOBY+tGvajOpLzreBk/XulJ1ovYjoMaiZjSyo9wLVkSnS83Vg8f?=
 =?us-ascii?Q?4I07O5Thbz5kTYsFJ0mBF9orxUi/yfhP6bu5qtiYyO8V7iW1MTzd4JSmfUYh?=
 =?us-ascii?Q?Q+vTxNuG0xUoNC+Z5WXyqnLHr4AbWicpQ5RaoDaM+B0Jq0VAFwXZyrQscrLp?=
 =?us-ascii?Q?h0yYJaTtIg9KibivfpqT5XYf2gLmRmsff1WfRbQpthNAKtllF2VbFUqzVHv1?=
 =?us-ascii?Q?ahOmOOWyGgtT2Hzs10yliXltoGCLiShW8wOmlyzHPDgIATtZTtJXrNpwAyA7?=
 =?us-ascii?Q?VaAahHjEY2eN5LEhu5ochzvGx2yRHESndDg5PDd5HeqTRcbDv2Fm+uXsZKl3?=
 =?us-ascii?Q?UIaA7+h8rYxUym3Luf3qjqF7zwBbmGQU4aN6ik5zfnNMwUjFAyXql1CTveG0?=
 =?us-ascii?Q?SwtMM52tHSrtu448XKLS++xuBhOvpC5yYyjl4lwVMRQ8WoExvY1B5JQkVdie?=
 =?us-ascii?Q?GK2gLtovIFUbl33H52vo+aQXPCCa2Qa4O8Bhlqg9PbERbSGRkZhaVfrqeLMs?=
 =?us-ascii?Q?OWCQlDwS3fV85t7iEwLZKkPcpXmgVZu+1d1+sHm8gIYYsSOBPx5QoR3sJD8R?=
 =?us-ascii?Q?MuVaaj3Ga6kj4oNTteeT9pC7bUOJptWEmSq0wimUp+J/kR/gaKz81keT72C3?=
 =?us-ascii?Q?X0/MzWXTHkPmsKScmW1FLGcOLY0aUevKOzMT+4EBaEDFR4VC5v27HPK51b9m?=
 =?us-ascii?Q?GzwBWEs6IwRuOHu0/+kzNwfOSjKz3btBTAk300gG5rNvLqJrNyCDiIVDrv7C?=
 =?us-ascii?Q?MdT5IwmxjAjkX8mFuSY3GY+5e1Gcn6FLm+zVr2Zz7Esq23aI2Btuqk7h1I+r?=
 =?us-ascii?Q?C/v8SXoT4bRoOuxUM6x6SskvG0DbAi+CVYFfcVYugk1RvxqgbRXS41iHjKn2?=
 =?us-ascii?Q?De9Q2My7XdJwm34scD6YSPcUwzOmKjzW0YCaXrnMtMmwUIK17Lmlvw6XPKhw?=
 =?us-ascii?Q?03B3VnglEe9jq8ZHC0yTCkpd9jE81LRfeD+9vmS998CJfyOkKuxXeZvGUQb7?=
 =?us-ascii?Q?cGb1l/eh9AksBtRie1NIYvK6OeIajEJ42IKMFrtn/Rr5ehHStrwMCVBdWtR8?=
 =?us-ascii?Q?zVZtytHALBO3Rk+UHsMcG74WaJziNGng4nFkacHHbvvyJ0eRTrL+n5gWXapz?=
 =?us-ascii?Q?rsB9AKCnIsKUQDV3aE8CgU4ILoUt3jNnC7kcCAnB9YerKtNZ8FCdofu7pmQ2?=
 =?us-ascii?Q?BM80dRzvz+PK2tM+RKU5wXYqizA+LSulAh0sk6MOtPGGAf+OC070Ki+y3tqT?=
 =?us-ascii?Q?vsgpDJ/Z9CG/7R/W0sDQNbUp7K02EGxx3aojY/haU/zx/SC9GFOjBKykNqBS?=
 =?us-ascii?Q?Ze2aSBYqtbG+1tf+lS/lBytSLvvMZnRfntbvkTob/IclFIBrGecC17PhZjAE?=
 =?us-ascii?Q?zt2aheWFFXqJrdtKBFT6+a32Yr99I4MnOgYTNMBvRC44ABNJtJM+09M3DcAn?=
 =?us-ascii?Q?ihASN5mdm3JvwCdOe6D4YrHyUV+lwWS0rKOO+jq4AhrHQFFCk5RA7S0VkUdr?=
 =?us-ascii?Q?vLQnV/BTv0hbh4LfH7j765XUWRZKiaLUh+mDjgoC/I33x46MgOrSTayu8k59?=
 =?us-ascii?Q?F1aMNxyEpX5/ZAisU87hLuVwUYs4faxskT/mo0jvV7mjQLJcTxb5yaPU2JaJ?=
 =?us-ascii?Q?8vnRilM3AGbsg0RIpBb20BZzW1fTPwWdhuLsVGAdQDw0LTY5RrsftCf/8eZQ?=
 =?us-ascii?Q?C+bF9znObfKq/Wl3ipce40mk/iJVSYEhek5qeZsFa3Uk7YJm7jq+35/qPC3S?=
 =?us-ascii?Q?BnA42Raav05pARi7jAwEksa+1r4F8gA=3D?=
X-OriginatorOrg: iopsys.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b0738f2-3f43-416a-a442-08de4c074b17
X-MS-Exchange-CrossTenant-AuthSource: DU2PR08MB10037.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2026 03:05:34.4096
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8d891be1-7bce-4216-9a99-bee9de02ba58
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1B08aaaxbJGbw1iWRT9c1EKlITc8EToocMvBP3tf7wZIWBsVnVcdeN9SptXuylP38OJcv5l1SRek0jY8DFtw64IjSpN72Ua1WvKHoXtzHjY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8492

This patch updates EN7523 dtsi to reflect the reset-controller
support for EN7523 SoC.

Signed-off-by: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm/boot/dts/airoha/en7523.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/airoha/en7523.dtsi b/arch/arm/boot/dts/airoha/en7523.dtsi
index 31191b8d1430..115cc44093ab 100644
--- a/arch/arm/boot/dts/airoha/en7523.dtsi
+++ b/arch/arm/boot/dts/airoha/en7523.dtsi
@@ -4,6 +4,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/clock/en7523-clk.h>
+#include <dt-bindings/reset/airoha,en7523-reset.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -91,6 +92,7 @@ scu: system-controller@1fa20000 {
 		reg = <0x1fa20000 0x400>,
 		      <0x1fb00000 0x1000>;
 		#clock-cells = <1>;
+		#reset-cells = <1>;
 	};
 
 	gic: interrupt-controller@9000000 {
-- 
2.51.0


