Return-Path: <devicetree+bounces-11078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 213B47D4160
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 23:07:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 445BF1C20AF7
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 21:07:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F43F21A08;
	Mon, 23 Oct 2023 21:07:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ni.com header.i=@ni.com header.b="HRScEAwH"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7E6219EE
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 21:07:14 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2133.outbound.protection.outlook.com [40.107.93.133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D975110;
	Mon, 23 Oct 2023 14:07:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eEsK7/HEL6u08pHBcLzpGi6wKQKIqC6kDgAyOseDGiGPJ2Q5b9nPasWtPFVWJs108kV7/Clr8hVlicsRhWfqhylq+Jhu3LSFDt/23DNaB5CiB7CeLGlRDGdekPsqpxxyjlc4Kvnvfy+oJzcB59Dse0ieSQ3OgoIo3t52+jdfVsoKWa26mdy8r6hbnT8X4SmBf9dooUssSYIfSHX2CSU6kLVu7TT8pN6k+2d58NvpRwofS7jv8rHaNA2Dk1o33IqBrHHZ6GhdkKqq7IGWqeCFasDe7hXA8dR/AabLmCWSU2B2alSH+1uTeBvTWqd9PJpc4UGcZoQBAFqDW4dNAZOnMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5VxahNJvg1fevmOR8fte5obsPgGZZs2bgPIUgAUdt6I=;
 b=MfQYGTLy3yUUj5a8r98nzVJVPtnl18VhV/hLJuu4UHiePx+bQlDhXSBRTmp4ZCwqjggtMMrjoik+2g7xjRS6O5mpYC9cX2sSuDhNyk2DSO2G/yxM/AsR+g4W/ovYnBqHcpT7Gl/c08QNZx1wDnYfv+SgiGd2jiFELg5AMesNsVwv/3TUu9bLtO5jzV1oo9rLaiWuI0BCh2U/eZMdkfB1jD7sSrzRoUtmoVp76rgtjAqKTQ0dfeQR47xQXkWd1xX1AjtVenQggWdqR5/wUn6Ul97lH0XiKuRmFY7Rm3pa36avUHDaKz0+TIqT92Q1XrUi7HN40Z+qH5DxH1DQKifEJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5VxahNJvg1fevmOR8fte5obsPgGZZs2bgPIUgAUdt6I=;
 b=HRScEAwHRkCUIe9lbR9vY8FGM3m1OflQLcwz/pIv52g1CGZ6cn1g4yzIXCxvApQJ9UWlleatoWt8vLzFoxGM70YIRdzNPxiiS1rfbkzDV4nrP6PzVD6kmVUOCQE8znVrlgkBazksYiNtyjd4T47NnGza88Bxk+84z80Gk2OKty0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
Received: from SN6PR04MB4973.namprd04.prod.outlook.com (2603:10b6:805:91::30)
 by DM8PR04MB8134.namprd04.prod.outlook.com (2603:10b6:5:317::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Mon, 23 Oct
 2023 21:07:07 +0000
Received: from SN6PR04MB4973.namprd04.prod.outlook.com
 ([fe80::9481:d7e:63a6:1bef]) by SN6PR04MB4973.namprd04.prod.outlook.com
 ([fe80::9481:d7e:63a6:1bef%4]) with mapi id 15.20.6907.030; Mon, 23 Oct 2023
 21:07:07 +0000
From: Brenda Streiff <brenda.streiff@ni.com>
To:
Cc: Brenda Streiff <brenda.streiff@ni.com>,
	Gratian Crisan <gratian.crisan@ni.com>,
	Jason Smith <jason.smith@ni.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-serial@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v6 tty-next 1/2] dt-bindings: serial: ni,ni16650: add bindings
Date: Mon, 23 Oct 2023 16:04:56 -0500
Message-Id: <20231023210458.447779-2-brenda.streiff@ni.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20231023210458.447779-1-brenda.streiff@ni.com>
References: <20231023210458.447779-1-brenda.streiff@ni.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DM6PR12CA0029.namprd12.prod.outlook.com
 (2603:10b6:5:1c0::42) To SN6PR04MB4973.namprd04.prod.outlook.com
 (2603:10b6:805:91::30)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR04MB4973:EE_|DM8PR04MB8134:EE_
X-MS-Office365-Filtering-Correlation-Id: aefeb68a-f9a2-44a9-9736-08dbd40c03fe
x-ni-monitor: EOP Exclude NI Domains ETR True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	rN3nh2JiZvd8Eb4rUFi5tq4hDE58eUSptpqjZw+IR7d9CQYpsSyfKkBxbQgl12eJGo4lb68hjCfL8mZuNYaKLLVFlBAe8Om85Z/IKduys9Jgh5E+oDlnrfP51J0i5xlWqy4lSE6LZlLYpEHie/1a6q5E+vB1wZmdHHP4evzIKwip2nLtwNymv+0Smxamhc08DvCJX9JuoHuNSB+jc50BEpFPkhdXdjCKmvRi6uo1qjknU241sH2S+1EEb5gAbThMxJfZN8YikZx6DAGcu6a5hQoUgBeFXiElu1QdfCx6yyOcsBMT5kVfB+9VvdVGouDQk2n2hpbkYa3WghlwXkuA9wBOOlEo0DHuzAqnFny3iKHmdGjW7pb0Sjx1fSwvSlG1emddK+QJW1Q7Akw6H6M5IrXjPnj+xZolvwC5Zyj3cMAYupQiVvwczETqEcfYbKt/kJASuu6Hc2tOXcnOH5eiW4Bv/Fs6ZLkZTXuwDzJ5neLA7cfrxQ0BRusznyDN1siX/iRe7+8GvkfKO5Ed+ruXQMsZdfIxpZw+QPSZqxigX2lvp1UXZaKznxK7EubV80RgogogtZmR3nddgCVF2WJgj7p9sogqvbDtUUXlm1XvV5U=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR04MB4973.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(366004)(136003)(39860400002)(396003)(346002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(109986022)(2616005)(6506007)(6512007)(38100700002)(36756003)(86362001)(1076003)(26005)(44832011)(2906002)(6666004)(966005)(6486002)(478600001)(8936002)(41300700001)(83380400001)(4326008)(8676002)(5660300002)(54906003)(66946007)(66476007)(316002)(66556008)(266003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?SVh/GPasGX1mXVFYiDagIaKDnXICgkU09IVp+HkeaRMNpE9wjs+uI0kPUIbj?=
 =?us-ascii?Q?aSAFZRkFupIgFOjPcXMgbre2sw6X0FdqOnA1fCV2S7QmloxYwxwttFeI43rt?=
 =?us-ascii?Q?NQ4B5WT7yASkH4wqGzbMrBBhFu5Qi8pvlZ/4MRI8srF2XymuHifb6s/THTSc?=
 =?us-ascii?Q?EsqScWkiwLplB87/28CbTXD4lYBm9TaBIw4Y3255QnoUS76Z7ynq64Z1ux41?=
 =?us-ascii?Q?HvgxUkLsLMsTgoPX8tnQ/P0ECK7p2X61VyFbrQ48LzWogB6tyORUBujY1PZh?=
 =?us-ascii?Q?Tni2qfrbhYLu4kZIh3ipHOb/5RbYifd8pspgi/iquZJsrLy9nqNsLYlLC7oS?=
 =?us-ascii?Q?Jl9UXV3VmBCZcu9isalHz6+5U+xsRAeZk26I1EPedwyLfgncp+gMdg3FzF2J?=
 =?us-ascii?Q?z2vWY4WWtVbfZQclM5A0gXHdOLVwQ3G1W5TOWA2dctoc4/xaHNSHy/FDN/Sc?=
 =?us-ascii?Q?t8wUicax6d67KQtKkD9U52JQIxgpMPugn+Wq88WRgpjbra9KeiJaGenDSSoO?=
 =?us-ascii?Q?GAeRsQPx7D3JLdrv9nG2N4coe6QMVVp+0RZER8y9haVoJ1omDmihEMvd2+NC?=
 =?us-ascii?Q?4yGpfTLTZLVtFCdhPfek+0Tm9a4A43yOCfbF0fNOcWCJxd64EHyLLpBA143C?=
 =?us-ascii?Q?j592cjV6VpMUPEgMvB/XHeaszHampP811nLrMvI1UYogEGeM17l48h4Vf5ax?=
 =?us-ascii?Q?ZAYlrq42y3Kr73s16s2lIzJuQnIoIfzfNQMVtrS8m4JgejqBXAT0TVD8Gl5s?=
 =?us-ascii?Q?GgyKU4WXN9N1cWv6qeuLAnWwjXK9GWzrPy7Lp99lBwdUGoAb+oXt4AfBu7T3?=
 =?us-ascii?Q?rLnQ7CpB3r16DdnIaVmO52p4wiR/lQ8oqqAsWO1vj+2NzqElywWRZ48LeJrG?=
 =?us-ascii?Q?2u6Tu+7JqV27JdCVquuQi7paf3FpG+GZXMRBAssC1X9V1WY+anKxn5Gt/2Ui?=
 =?us-ascii?Q?oYczjO70dC9PHLzynPjal4tPeIYDxdjq++LOt08A10PiDfT6o7LdpDwqdyrM?=
 =?us-ascii?Q?v9fEs9AZyapwKsJJKFshsfyiG/3IwiLOCidsrsgHxi/SuSr01e6LV4gLFPXC?=
 =?us-ascii?Q?d9/m7f6YSJHBJVLeyZIOfzTKlGI9dgOYVt9AUa49BRetwVtHco84WFL1lCcw?=
 =?us-ascii?Q?yStf8r6+RS/8jaGEtVaZskw10X5BNXX5HKZ3mAX7PwxEyTddK4utHZWbu3KZ?=
 =?us-ascii?Q?j8W120Nyp7TQSs+l2QslQX4EOafYQGUBMA8lYFPaJegycTqBsjmuN0tyAE0x?=
 =?us-ascii?Q?vRwZxoqbb4tb8OB/A+uL8Vz297kzuuE/mTX2Li/psFwZJHFxOlZKIMM/FkB9?=
 =?us-ascii?Q?RUCRDMzZ3PLiTZjRGJ6SlFyAV9tUBUGBU0mu7GD6cJwbObm9tuIG7Iyd17rX?=
 =?us-ascii?Q?YFjuYfxc94n8OSRyOQl+bgDAClxoP9yBMH8g82NLKhmuu48i1kdKD2DFkM7E?=
 =?us-ascii?Q?NUIt3fQTyustffIqSicrqD67GUd1PzKfaGLzNflSV748AWHFzfWpex6Psjje?=
 =?us-ascii?Q?T9pwEUtZp3oaKNRiP6AavXW0sKwTH/Dyb91OqbgO1DR8JV7WN0TZv6V3sMLk?=
 =?us-ascii?Q?lJgRoGbDmtrugC6S91UVnrSC6S4SmqTLcLLs146Z?=
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aefeb68a-f9a2-44a9-9736-08dbd40c03fe
X-MS-Exchange-CrossTenant-AuthSource: SN6PR04MB4973.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2023 21:07:07.6567
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vARmxL4yVqQORqdomFcV/IXhHBH3m9f6e3rtpeXIkvZi1BrrCahltO31+bN3qW/o3iz0+AOWifi8zQRBzXGjoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR04MB8134

Add bindings for the NI 16550 UART.

Signed-off-by: Brenda Streiff <brenda.streiff@ni.com>
Cc: Gratian Crisan <gratian.crisan@ni.com>
Cc: Jason Smith <jason.smith@ni.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/serial/ni,ni16550.yaml           | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/serial/ni,ni16550.yaml

diff --git a/Documentation/devicetree/bindings/serial/ni,ni16550.yaml b/Documentation/devicetree/bindings/serial/ni,ni16550.yaml
new file mode 100644
index 000000000000..72ab125dd892
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/ni,ni16550.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/serial/ni,ni16550.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NI 16550 asynchronous serial interface (UART)
+
+maintainers:
+  - Brenda Streiff <brenda.streiff@ni.com>
+
+allOf:
+  - $ref: serial.yaml#
+
+properties:
+  compatible:
+    const: ni,ni16550
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  ni,serial-port-mode:
+    description: Indicates whether this is an RS-232 or RS-485 serial port.
+    $ref: /schemas/types.yaml#/definitions/string
+    enum: [ RS-232, RS-485 ]
+    default: RS-485
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    serial@80000000 {
+      compatible = "ni,ni16550";
+      reg = <0x80000000 0x8>;
+      interrupts = <0 30 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&clk_uart>;
+      ni,serial-port-mode = "RS-232";
+    };
+...
-- 
2.30.2


