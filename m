Return-Path: <devicetree+bounces-15526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6E07EA85A
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 02:46:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 79FD41C2084D
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 01:46:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41E46612C;
	Tue, 14 Nov 2023 01:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b="iChFUhSb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 651BB6101
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 01:45:07 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10olkn2060.outbound.protection.outlook.com [40.92.42.60])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD901D43;
	Mon, 13 Nov 2023 17:45:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KUX7ZqQVQyAMLouds+alBOUXtXi1DPdr89WTQqFroFWsTzcuD4B+70DUg6YKNeVHXzAcpKuBf7zG/TFR4LfpKd1q6uu4JplNLxcCeiZsoLHXkyXZnDiBxauzi/K/NoXN9nYtUeZ6mSW1qfWdBSs0V5Zk3lhWPVSg4isJGbALy49FDEhVDZdjCaQINSJLZ8Jp0ze/VvP5jerAUjmDxbRKjiLvsJvTLe93hH0CD78sZccw1L26dgzioxsznsPyD14s1WP8xqWRoPUN70+SQ4wjhMLwsYDBYPzX4CZC4DGHqbKpP9ILudckhJenaHaOAHB9TnrnOJMaVQCb5ttpa+aVSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w55uGHYAiXPyE2WciqceQNTFuT5ytx+sDK/NNdoyhVw=;
 b=ix5GC4RFiNDUt5ameNxfIvVMwOY1au0/SeA53S3mCGf1ErAmS5q4uvhdfeyY6SkFxlPfiqxKzcWsZ8Ii26UaQZKywHRUo7x/oa1/kUAvOOkWHoQ/4+d1YXTToCbssuLoG2SMRBb03ADE2pfmjIoYzC37lgT9DA7GYPWJSE1olfJ4BhxGKQKlS1nimiGVwFglxV+Avu4lhgMnbJjZ76TLWKVG41Q5U8SxkIR22Zc0psNjgPBFnbtcCwc42c8RJ2ngBhquc8diUDKSVuUDuLNWN/iuVnzoTo8wYbILWmLaRabYvPKE7ptojkTD5UyKjK+NwGrenxDqtb4Hle6zmMXLYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w55uGHYAiXPyE2WciqceQNTFuT5ytx+sDK/NNdoyhVw=;
 b=iChFUhSbrC/i37uTjzYbMtL1ELPWQh6ltqHI0hWOlWoeebfpOQd9kUEbtop0owH7yxVHPPc8YaX15Y+J9KYiwlu5sj9fAkHm4bzEeE2RvhignMCHQ+qcgMKRgnSH/itphuUARSlIRiO9gGqZ8Nz9Q5pv99e2Hs+DBH/MrZ3Hqip+Aw9wHbhxgGtBG99DkkhLs2TA8GLi1sViKQ/XPm0Ubc55WjI30HUsuJ3okO+tBWvs8ue8+bRFVQ3drprHOzh3RkqnZcabVEhyE0B/B5kQ7VKv2PpmjgOmjDFPfuYS4yAh1ePZueFCZyOKHIztXwvPfzjwKZpXLO4+rTxVYihiBQ==
Received: from IA1PR20MB4953.namprd20.prod.outlook.com (2603:10b6:208:3af::19)
 by DS0PR20MB5894.namprd20.prod.outlook.com (2603:10b6:8:14c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.29; Tue, 14 Nov
 2023 01:45:03 +0000
Received: from IA1PR20MB4953.namprd20.prod.outlook.com
 ([fe80::55b:c350:980:ad8]) by IA1PR20MB4953.namprd20.prod.outlook.com
 ([fe80::55b:c350:980:ad8%6]) with mapi id 15.20.6977.029; Tue, 14 Nov 2023
 01:45:03 +0000
From: Inochi Amaoto <inochiama@outlook.com>
To: Chen Wang <unicorn_wang@outlook.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: Inochi Amaoto <inochiama@outlook.com>,
	Guo Ren <guoren@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: timer: thead,c900-aclint-mtimer: separate mtime and mtimecmp regs
Date: Tue, 14 Nov 2023 09:45:33 +0800
Message-ID:
 <IA1PR20MB4953EBB4DA58A7170D865B0CBBB2A@IA1PR20MB4953.namprd20.prod.outlook.com>
X-Mailer: git-send-email 2.42.1
In-Reply-To: <MA0P287MB03326F420E96FE3198C81C21FEB2A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>
References: <MA0P287MB03326F420E96FE3198C81C21FEB2A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-TMN: [14V6GTMZK3kth1r3/4lzfeAFY3jxbNQPNYYCugxXz/k=]
X-ClientProxiedBy: TYCPR01CA0023.jpnprd01.prod.outlook.com (2603:1096:405::35)
 To IA1PR20MB4953.namprd20.prod.outlook.com (2603:10b6:208:3af::19)
X-Microsoft-Original-Message-ID:
 <20231114014535.54585-1-inochiama@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR20MB4953:EE_|DS0PR20MB5894:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ca5a701-e052-438d-6d21-08dbe4b3526b
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	BVZZ5ObqbowdWHTRqtpw8vN+RYGgj7akjK+/rIuFQ53LvedTijVQIZNvT0MMAKyqqsokZhk2Udek3D60HA0MYWYWjXrngGdRhqLlKg2mf6h3QzmQ9A88Y0KB0pbt224J552fXFFD+I+tDcnydflKRgXwjYd8mYbqd9WGLXBVHvJB+5Zl62TVnS5O/UtzhJ8szy+aWtywqShmqFe42uplVwfqxfpY06TLY4pdjgtusMabfgu83rf9uiOYB738dZ+LNloS5VkNAYepIYqEf48YD7Aj+RjXSyQk14RV8e8jyS2Lo4WEFoy30ErruAInmEMPmI8xz04EapojQ8MiuO1kLhSRjM7yZYUgXZdv2uBRfElsVW7lgUcSPiZk5NubYTaSFzidtc4R4N9YRbbNnGAqlF0Ljaey1wy+spHn4Ynuami49xvgdNO9o/vgi3bjI9XPex1Yq9NlN7GRiZTf1Zd+xSsimbsIY6A1nPT6SGw6gL8WfWAo2r1Qp3G2g4AVf52Am7STpzERnLARU1xmlK/LvpW1aBCBIvd8NhuYwxSxauIvMfani6UwfKx4vcAhP416oZwQAxN5CwNWfrbnUY019EqtdLRrTBDHH8XmN38YYoHYqo4YiDMQhJotB8xPUcnQ
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?3XjcRCNnH4DTNwFoK0h/HNXn6MW/YyU8VT6iCXGW6xP1dokv9gtHvUG4kU6B?=
 =?us-ascii?Q?idAnTWlmDTM42lSrOpLpF0wjUBBDP9e82fzyjKy5z15K15kaeDmWH+8vD6zf?=
 =?us-ascii?Q?NA9ABqCevBeZDcMlssstDXMYsK+kIY9Gyse603b0fXJOwfSPtyOipXFmdjlJ?=
 =?us-ascii?Q?1X2ulDUPcaT3u+N6y8KFQc729aP4n+1yjPLV2DLYdGwaMOahrefooc6rHa9A?=
 =?us-ascii?Q?Wmo4+TGQYrwtoP6nPuTI+JBj0GeUiZPTeWLuFPjZ6/qZsxvw1d8/xcUqSAPj?=
 =?us-ascii?Q?6gBZU0AB+ua9Y5TaCEdfe9FbzWK0a9YyUPbjRmPluu4beqbo2ktpi4jBSY4H?=
 =?us-ascii?Q?KbtYVbz0LlbSkUnw61FujnrSj4JqZ7LsJDdsMyhnDbVAusaWgheW8SzuDnL1?=
 =?us-ascii?Q?GA3oDIvO3cAw5tvtZD42kzg93QJY/ow8XxdRDfttYqsJU7axi/v+iWNgopJ1?=
 =?us-ascii?Q?Nx4Z0Bly21iWcirbFRXASFvTY9uAuYqlNNg7UZ3PmcTYpcu9/PGbDN4PgTDB?=
 =?us-ascii?Q?35zsxpXlkBGmXtlmnSsbA8jNi5TIAx+6r9kmUgqHGaSm20lOkO5M17N53GVW?=
 =?us-ascii?Q?/RdjcaUcB2MS7OGpcR/YA9ojmw5D07R389VK7tGsOOAYGbF9aIJA0LO3exR3?=
 =?us-ascii?Q?6kQmul/Yg/4fOIfJvW2qth/enbAaaXxoPs5E07mDS74W1F8RWJkM+O/mcvFa?=
 =?us-ascii?Q?9+vVUOOwnyN+7w/LYT9JBNeKqFQ+J7S4rCfozZWqV+dtD6WK0gguYOqe5A3j?=
 =?us-ascii?Q?28hbK+BFHXrcJRcCXrukjvN4cxjjK3FRdsV2fd67iJBQulp9xghh0qjPpwsk?=
 =?us-ascii?Q?6fb6yPLl5wags0HEuaga9QNRCKJhUrUj227fOozkZxcXDrxwuidjXaYaERP8?=
 =?us-ascii?Q?awuuF8jJ+YTi/oBx3XIxYLBm8fJvQe1C3DULRPnsd4T+xpyhyVa1KPVnFNYX?=
 =?us-ascii?Q?uXf57AVGFBqyERWGvBsLByYrlDtOo5GGTz8jKLfsbLmqR5qNJ3WuTrwPHlcf?=
 =?us-ascii?Q?YkdGvI/m8IwS81lox5QDYz0JmFs+++CUOXeHkH7dBXCad7ShTiwmDAfeyEAr?=
 =?us-ascii?Q?Qsfmu9tkncJ8iSoMCeulce1R5C76Q9LWE6aLVcpGCKGqC50FrENbJybaXTSG?=
 =?us-ascii?Q?DFF86Kh/3w+7/JR6cuUyDvvIPjPJ2g8736PdWY86R08N02g0g1kNsRj2ba+s?=
 =?us-ascii?Q?KvL8a0JnOBjisJyMcIdPraDWmf+Muojfw0TGFMBya+YEAq+R14bY/Ts1q6g?=
 =?us-ascii?Q?=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ca5a701-e052-438d-6d21-08dbe4b3526b
X-MS-Exchange-CrossTenant-AuthSource: IA1PR20MB4953.namprd20.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2023 01:45:03.8674
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR20MB5894

>On 2023/11/14 8:45, Inochi Amaoto wrote:
>> The timer registers of aclint don't follow the clint layout and can
>> be mapped on any different offset. As sg2042 uses separated timer
>> and mswi for its clint, it should follow the aclint spec and have
>> separated registers.
>>
>> The previous patch introduces a new type of T-HEAD aclint timer which
>> has clint timer layout. Although the timer has the clint layout, it
>> should follow the aclint spec and uses the separated mtime and mtimecmp
>> regs. So a ABI change is needed to make the timer fit the aclint spec.
>>
>> To make T-HEAD aclint timer more closer to the aclint spec, use two regs
>> to represent the mtime and mtimecmp.
>>
>> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
>> Fixes: 4734449f7311 ("dt-bindings: timer: Add Sophgo sg2042 CLINT timer")
>> Link: https://lists.infradead.org/pipermail/opensbi/2023-October/005693.html
>> Link: https://github.com/riscv/riscv-aclint/blob/main/riscv-aclint.adoc
>> ---
>>   .../devicetree/bindings/timer/thead,c900-aclint-mtimer.yaml  | 5 +++--
>>   1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/timer/thead,c900-aclint-mtimer.yaml b/Documentation/devicetree/bindings/timer/thead,c900-aclint-mtimer.yaml
>> index fbd235650e52..c3080962d902 100644
>> --- a/Documentation/devicetree/bindings/timer/thead,c900-aclint-mtimer.yaml
>> +++ b/Documentation/devicetree/bindings/timer/thead,c900-aclint-mtimer.yaml
>> @@ -17,7 +17,7 @@ properties:
>>         - const: thead,c900-aclint-mtimer
>>
>>     reg:
>> -    maxItems: 1
>> +    maxItems: 2
>
>The first one is for mtime and the second one is for mtimecmp, right?

Yes, that is right.

>Recommend to add some comment in binding file to make it clear.
>

Thanks for your advice.

>Chen
>
>>
>>     interrupts-extended:
>>       minItems: 1
>> @@ -38,6 +38,7 @@ examples:
>>                               <&cpu2intc 7>,
>>                               <&cpu3intc 7>,
>>                               <&cpu4intc 7>;
>> -      reg = <0xac000000 0x00010000>;
>> +      reg = <0xac000000 0x00000000>,
>> +            <0xac000000 0x0000c000>;
>>       };
>>   ...
>> --
>> 2.42.1
>>
>

