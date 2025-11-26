Return-Path: <devicetree+bounces-242205-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 468EFC8814D
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 05:45:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0BA4834E601
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 04:45:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 030EC30E0EF;
	Wed, 26 Nov 2025 04:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b="qvYyPa5d"
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR02CU008.outbound.protection.outlook.com (mail-westeuropeazon11023107.outbound.protection.outlook.com [52.101.72.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9422253E4;
	Wed, 26 Nov 2025 04:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.72.107
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764132293; cv=fail; b=WcZTYxZPJwkL1zHtGV2A236XzGsNYWw45uevqxJyGMbWKTAZWLpq0ZpArMkr1A7yM2C6rESmOPo76HsFStEHZXoXMAmlnG4GjhkCRvtJCZZTxXcbY1iSUDHnjbeM1ozOdBMeRZaSQAXSmL1a/bmlFw9TtUE7Oqi3FjMPAQFV3J8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764132293; c=relaxed/simple;
	bh=nUB4bvJpvUiBGFHmdSkVfuUCru7TZvZ/ogpOd4BP/rc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=kUM1CpHDohEYmGuTYRV3Ax6lGlVI9GlWdtCVzW/lg6SKiDWGNfws3v+YYdyqWx4jCQo33gaFg8rc3vu3K9n/C5fkuoZFyzUskLBmMTJjFKEjPIyooa6XhYcZbBc9HeHX29ac6xJLceUKG8w87ENGaEscGubQHx9aa/YqOXvySHI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu; spf=pass smtp.mailfrom=genexis.eu; dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b=qvYyPa5d; arc=fail smtp.client-ip=52.101.72.107
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=genexis.eu
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hMuITqGV4K4Vr5mbsZAJlZIf3SztQgAAgNTQFb46m+gWlPopDdaFXxl2eLl1x9hoVi5ZYRb4JDHbrE1pRCX4Q9N8gVbw1o0eF7y22SFPyQKLJca6oaMnk+3QN9Eycd0rUlgHbjHPg7h5NljeX7B9ydOnKp4DJRw/FXqTRikC4ulgkOcGwxLAltOPHR5LNViwXqb2MsCVVrJFhvHA+sfso+G8qw97bLK2miVrW7u+DYRw1GCXmxfNWpn9zyzqznVdMqsHVnVpDMMZY+eGa/VNV1AoagRtLcweiS8+5Pf8m0lEf7AkKf/wKxjWUEYwIqnM1EyF9xeMbhPKr6RJgcaYLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mWSaJ/J7/NhXRxmf6iuMtujSLfqOvakh+QOEwHSOP4A=;
 b=gfzN5o92rBlsSEL83XjlRGUkVva8eFk6KcXh3wtg+E/GFOflufEou1f4htmcIwfMIJ6aTpsRkmH0bL7GKJR+O3aPR68zG/UQNXsI/NZ1d4WeXjguD+1Pf758EvFn8JUM9dqX2n4ODStDAO5RNDh5s2CY+K4uMgiWlw0UfL2YJHtmuPaKeHRSE2RjoPDynu0heget7JMm7n7ZvUyHJF4qd1mgCjxpfsUdorWatz2p9NUpZeOA+5Zvv6i04hjzrNpmN+Sqnm1E6JWAM6Zn0KL8GfbxtXVkJS37g+VAslaRac3UXM7XEkTeLPdwuPAr1/asUakfDsONT9uZrGqzrAKjpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=genexis.eu; dmarc=pass action=none header.from=iopsys.eu;
 dkim=pass header.d=iopsys.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iopsys.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mWSaJ/J7/NhXRxmf6iuMtujSLfqOvakh+QOEwHSOP4A=;
 b=qvYyPa5dx3JldwCgH3Z3+VRA7hlL5qJs9/2xBvhxudWdFG6YkP+VShTFpBAlULOHk5MjwkdorMmPOIX7mpmdg8DLTBQodMLaAyf9LQyEzrvUhCCGcrT5sNBGLlHg9rdCmFmbLkdpUlogt5dwxJxqBx7xJ2lqhMfKec9eqx/AfpX7owXWrYwi+HiKfimWyoHttYdqmemu3eEppwNXEjO6BHRIzYtwHm8GrXhJEgEgnNkiKwEDC8k1jgHR/voFh/21MgW8loP27W4OvHwnNg7E8gJ8dcC0RjyB81XBz7Ix+pqVSCHR9kEtYaxjQzv2CXhUfw4+7D3pEAIEhhhjLDtg/w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iopsys.eu;
Received: from GV2PR08MB8121.eurprd08.prod.outlook.com (2603:10a6:150:7d::22)
 by DB3PR08MB8841.eurprd08.prod.outlook.com (2603:10a6:10:43c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 04:44:47 +0000
Received: from GV2PR08MB8121.eurprd08.prod.outlook.com
 ([fe80::4cd3:da80:2532:daa0]) by GV2PR08MB8121.eurprd08.prod.outlook.com
 ([fe80::4cd3:da80:2532:daa0%3]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 04:44:47 +0000
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
Cc: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>,
	Andreas Gnau <andreas.gnau@iopsys.eu>
Subject: [PATCH 1/1] ARM: dts: airoha: update EN7523 dtsi to support resets
Date: Wed, 26 Nov 2025 07:44:30 +0300
Message-ID: <20251126044430.1136427-2-mikhail.kshevetskiy@iopsys.eu>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251126044430.1136427-1-mikhail.kshevetskiy@iopsys.eu>
References: <20251126044430.1136427-1-mikhail.kshevetskiy@iopsys.eu>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV3PEPF00007A83.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::613) To GV2PR08MB8121.eurprd08.prod.outlook.com
 (2603:10a6:150:7d::22)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GV2PR08MB8121:EE_|DB3PR08MB8841:EE_
X-MS-Office365-Filtering-Correlation-Id: 7992e2ca-c693-47f8-f88f-08de2ca68683
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|52116014|376014|1800799024|38350700014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?g5zHgIIiE2gZE1AiFGMbiLSOZrUIkNBfw1fzBawnj7FpbXgGgW161qqVJBtN?=
 =?us-ascii?Q?3Xslk/JqP6lUqQEz3jF0lhUAMr5FLNMtfaFI3wtfOjNLL8v6hM0GMd+a34KR?=
 =?us-ascii?Q?2kKIz1N/tb4kPFc8bC0UrmepTXN9a4670QYfJrDnBbSQGzGSGPDjW7IHAb1D?=
 =?us-ascii?Q?lqYvybWoQFVURtv3gD0jmTK4sNOjPmUxHdEtsPOpsn7unFnne6T+lU5TfUes?=
 =?us-ascii?Q?UZ6AYpT/PZYqJkIUDO4F3BKqJ77TrVrjcizhRgsQy2iQ2GfoGkUBJCwMGmTC?=
 =?us-ascii?Q?tWNLI1c8VMBeMT4dkDMPgJOGFaJsaR40wJVrOsyxwX7d4xvf6jnoRs+dGQQt?=
 =?us-ascii?Q?9d3O2Uwfbg0hBuHFtfJYjoJxBq55Mk8hanuZm1X1V3nLU26aU5L26a+2NQj9?=
 =?us-ascii?Q?BTMaQ1ihK+vVunga1laFXSyq47wiKEH2famN61ZgoyhG74lP9Og2gPosTABe?=
 =?us-ascii?Q?z4ozxjLD8LD6q18x8sVA6nuDZH5zAYpkID7KmZP8hbSiWAOMV+4uYNrFFwrI?=
 =?us-ascii?Q?vLqhRX6fNJWG11lph8YiwnJ9VtuBwz9H7nKlzY69OulSqP7PsEjQ2z6ACckf?=
 =?us-ascii?Q?1IdX8SBCaQMPgiCSHUm3J/kSNuq2a3jh865jI+YLfY8d0jKolf9R+GlWTaJt?=
 =?us-ascii?Q?JhoTsSVJ77/kp6L2nTBlg2HmSkN7wcO9PGCDsF6MLSaElmjreQoIRXJzHcP3?=
 =?us-ascii?Q?AoE/52tYQWsWTQN4D0b9jhsR4TuOtAOCxzbES9d+FQNceikZA9sdg0Ira8qL?=
 =?us-ascii?Q?qjyuQ6RMg0MEKTeNgzGDhqSUuZKIeuaYV3S0OuUMuqZPz6UQBWfrtVZ3FESy?=
 =?us-ascii?Q?ROzMX+vrw4eQVQ7Nz9rtLf95XHlkwzO7jthG4xvSU0+ppWekH/vc1aU7uzJQ?=
 =?us-ascii?Q?jlXEH4mxguDR7TDh3NqFV92IJU+o8r69LJEgGcOhrcw4+FbYi/ytbuhgjp8A?=
 =?us-ascii?Q?YbJ1WsSph5fz4EwrUXx00Ei6EV9JPATfJ4y/8pQrZ3+gMM5hexIRH/nrsVzd?=
 =?us-ascii?Q?iN9OPCzzN9/pnpPpMh0ekAraojqolUSema2O+4AwWn5SWg0lUEi3BbGLxsBo?=
 =?us-ascii?Q?DoQolIRq5zVwE2KVZhtD7y7wN3/YKCPOuuBquIxWPUuiEkz7n1oqyzTQpc3d?=
 =?us-ascii?Q?ccRyagwghxa0C2NtQoPjr8FDrwBkki77S5VxNNtprz4SjPs+TGnfLVSiAzjx?=
 =?us-ascii?Q?M67odWFfCoquQj/Az6oPNo0IuiKn0Yw+msgJ+T2G80v4cQhz9wZPAMYzJOGv?=
 =?us-ascii?Q?1HAyAkZz45ziYw+STv0IyNhg4ka0r3tH2AQc/wZ8jMcH5oHw8xoIR98YtPW9?=
 =?us-ascii?Q?f22Fg8SlAndkNJ6nhVdeeqqaxNu59qfMXB7LvzbnNf6fDi4VhdbdaSpLhvBC?=
 =?us-ascii?Q?CPFi5WOsxwmDiqBVRCJv0aAN3/QT+nsIXYCil+M/6T6HhMSfEay3pq5rSJgf?=
 =?us-ascii?Q?CiXCV/KecgN5UQkguLcRlusEHHXSRsLs9DT8lcyQhixBZnWWHYoggdCUlhmz?=
 =?us-ascii?Q?Voj68K9g6+/arfJIqdn2HCjL438Da68k5cgP?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV2PR08MB8121.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(52116014)(376014)(1800799024)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?d6BXCHVKXyaFuQ0j2VhOxmSl7RzFlbKp9S0KUdc53GllxAObcuFsygLS6WVz?=
 =?us-ascii?Q?+y6olBtsarz/uAB4XaQrBbGsJ3kupxKxGBjDmR8Os1jYujY49ba3zvpfvYVy?=
 =?us-ascii?Q?FxoOLxSBxsQhp1Mmf1fdlQF8z2Ka7gHZ2xkxOb7J5Rs4+3WtQFsqfXuZ84DY?=
 =?us-ascii?Q?WPZ0mityH292blsmN926SU40L1sSUK6SjlwISCuJusDjuh6lZbCyy6aIKHf6?=
 =?us-ascii?Q?1f2/fUZi2ePWF8YgoZDegL8AkGOVwncJ9E3Tm6fg8kLonQYfn2tC9a64XCs5?=
 =?us-ascii?Q?mB2M8TDrCQAtIbplQbhzCnjxj4lgVuicagyVDcIcTRImUbtFpUMntRDMa81k?=
 =?us-ascii?Q?0J0vaz2lf5A/DImQqo7tTULA+EHR8SRPgROgk2GRvNcSMrMoaSNxlQNt5JIi?=
 =?us-ascii?Q?BIJIzAuvFl4rPSQLEwbXXEpzSe71zddOUbyLOJG1m7SkCSQMwk93ZQS4GFh8?=
 =?us-ascii?Q?lQcdBHcjkSeQTLUzx7HuxWX/Fb9Pr8OCRM4Jo9yISrmaEb/9R7Kq8flyNKGF?=
 =?us-ascii?Q?79PB+M2UrBdW4seYx4cV3RWEKWQsKVGLnNibMeJpoKhLIkor0kNR97C0P9dN?=
 =?us-ascii?Q?xalvWeJJc9o1ZDGeDXj3TpJ92xjVsVpjLscQmwiBPFd4+vgfe4hZ4Yo5uP8q?=
 =?us-ascii?Q?IiC3fo2aZjZPLj9TwM7NTJ6sTFn6qCF4aSd0oGAY6OFKX1JH+tHFpeLifKbp?=
 =?us-ascii?Q?OgXt5zPNiM7YnVis5KmtF03pExF60u6BnnkkFASDGgohPqiXQEjcSu5wIy6R?=
 =?us-ascii?Q?8+s0wkgRYS3OofPrgdaI9qPEDpqq/kh8wJptRGUQcYHJU9UgXd5LEjEw3GIi?=
 =?us-ascii?Q?PitDrv93vh9JmIv29cN/NpCYClQm/2WLMcq/sjJQ3cjJG92sXEO3Q9DxzTyy?=
 =?us-ascii?Q?v1S29r6pnpxAUuxpP91hzIVbWYtNL2Abtb823SyPv74Omspxh3VOBTOXYKvn?=
 =?us-ascii?Q?HpRGFC5laIz3RXR9KXK55j1ia738Du7Tw4pRrqYSiyi5cJGug6PwxKKdZWLr?=
 =?us-ascii?Q?XVUIinjBj0DxQx46NN0JY3RWrwFPpgkVrJPQgJlu5aam88OUADPWnM20DR4X?=
 =?us-ascii?Q?BqZFRsM7PIIgTNfuzrUA9kPv2W5kt/tMsj+2aQVLIO6+cjx1MrkuWWbvh8ZB?=
 =?us-ascii?Q?8XszXXx/F6BbOIJHhuJt3UvIjf5yAYL8EN3PZlHpZ9+paW3p1ZaUAWGVP2c6?=
 =?us-ascii?Q?LQIubLhfrzbNtBGS2WgAhHVIDXotZP+nrmfbHmovaqR4H0UPxAPkNtcbaR1/?=
 =?us-ascii?Q?1LI6abHD8zZbpZcu6dpHhXhqLvKVKRLWVZLM7QJh0tOh1CFTCkUAkXgpmqU0?=
 =?us-ascii?Q?0Wj9N/GGH66ScKDVyAZxX0eS0rFtf9pN4yc6a9meCkLlK69qk65ae1sF1e85?=
 =?us-ascii?Q?gaJObK5ARZos111aUU+dGPUGn44KHCBPxRJFhiOzPjzhVB3Q0NKhulNthqE0?=
 =?us-ascii?Q?Ww7wW+qIoow9QCi3FimHe9cy0OINYtF4nmf2XQnW0OgSJrxcAjMaqmNd61Im?=
 =?us-ascii?Q?Nksm3H3AZz6OYc7JKjYdJXT/1RUdoFGSn8glCL/9x4UpYqwUqTfFgIG8/PZu?=
 =?us-ascii?Q?twCPRMFaezTCjNywmGIeVS4ZHCb2BEZEI//0T0/hA+kPdtUCW6bujhmbw4y3?=
 =?us-ascii?Q?8lVIpe5bS39dbxMGTxjdQ1E=3D?=
X-OriginatorOrg: iopsys.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 7992e2ca-c693-47f8-f88f-08de2ca68683
X-MS-Exchange-CrossTenant-AuthSource: GV2PR08MB8121.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 04:44:47.0851
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8d891be1-7bce-4216-9a99-bee9de02ba58
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y8YWoCtJW2oKe5QgWQ9eUvvnkxuOz6JxJHPsIHjwPfcYbxJwiBWDBhLiZmWi0kSaUCfrUTefvyuJj9PSUgVdF5ublwvgAAI11V+QtO3Hgtw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR08MB8841

This patch updates EN7523 dtsi to reflect the reset-controller
support for EN7523 SoC.

Signed-off-by: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm/boot/dts/airoha/en7523.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/airoha/en7523.dtsi b/arch/arm/boot/dts/airoha/en7523.dtsi
index b523a868c4ad..231638b25c5b 100644
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


