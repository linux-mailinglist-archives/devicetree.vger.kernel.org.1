Return-Path: <devicetree+bounces-15529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D7A7EA8AC
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 03:17:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66A80280FB0
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 02:17:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD8957497;
	Tue, 14 Nov 2023 02:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=outlook.com header.i=@outlook.com header.b="KdcHOnc7"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B328833
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 02:07:45 +0000 (UTC)
Received: from IND01-BMX-obe.outbound.protection.outlook.com (mail-bmxind01olkn2051.outbound.protection.outlook.com [40.92.103.51])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38ABED43;
	Mon, 13 Nov 2023 18:07:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UV3IdLVkjVtRj4wFa/wpjRvF09teRN5/mcu1pMLtSBcjPS5iAuAmh6Anc4YAzd+c4l+4CHm6k+uWG3XWyarLFZ4kD8k038PJp/wA4tDV2iF0XfMc0JnIeMKF9bqIN0H3Gn8g7Xm/gTRpI9lHzyr3Vu3eiauBCtfIpTpgvD0tXsDC8lkjBTSpSfb80G8Iiq2+gKbjG9fQu9qeL5CzbDWMgeIrLmm7Ilk6dN9KRKzdkGB6HUDdrxec9gs5wSeHDZIQfrreWi/YCUntLEzYtmewKGrl/0ciTh12QSHUQ7cDagmTvhsP4EIAasKAA+V7/6FtqZ8679n70Z7f0m4+n/v+zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kGplRka9ruJuJj+l0iEWcI0bbUbUO6Fjb0i3/kA1mgo=;
 b=Q/g7+fZGA3UxzCOIYCZs7/GEa4LcXP/3Pfqe3miTWYjE64Sq7aX3nPJDrIzlx4gpG+GNTXG+o6WXd+TsVau+shcDrsu5MgIl6TgG7rlZxrSpvmKo3JxEz7clzl8urwsiAOQhuWs7u5KfqKAI8LNujezkZ/qwaGYlbOd2I9ID34ctOlNA69ScIDecvlsekjNXitcH/Tnd2LHfIBaf8DhiQvveV1CwzGReWsgNnpmx8VyBMs86GFdh2TghCP3tkKUDGJv7ysBfWnChCCW5UWMlnciqk/AFoA8SVx9XHWd7ol/gBypL3JSI1OGRp7YX3+g2u0iZA9iyK1zrk2/KkZWbqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kGplRka9ruJuJj+l0iEWcI0bbUbUO6Fjb0i3/kA1mgo=;
 b=KdcHOnc73EcImtp22QTaBb/Ii3mNrC0gJRYVALUK/4CCKtZLlQ3mJaoIHFJBSTf/k+53MoHoYc+2tvDOaUSNj+Ly/GmWg/9UsJLfwQbsUA02y35BZ9jqLcIjdfoU9r1eZ1PE4zJTto0LzQLUII2DqTqUn1Mx0XCjW5yd3DUAirm2BWuWA9XVZHoQdUdhos5c44B6Wpc9d40cAPjfmwBbqiROtOLzRFmi9idKaa45Z7rTzCFA8eaVLz8qtS13jxu+tt1pgWd5Ckm8rENVZ4HwZBZ0de10vIWrbOP083mlQe+CezrKgGuPeA86/LC5nw3HOEqnmJhGQK4PdWk+kiS/cg==
Received: from MA0P287MB0332.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:ab::5) by
 MA0P287MB1450.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:f6::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6977.31; Tue, 14 Nov 2023 02:07:36 +0000
Received: from MA0P287MB0332.INDP287.PROD.OUTLOOK.COM
 ([fe80::b1a7:eee7:e903:9ef3]) by MA0P287MB0332.INDP287.PROD.OUTLOOK.COM
 ([fe80::b1a7:eee7:e903:9ef3%6]) with mapi id 15.20.6977.029; Tue, 14 Nov 2023
 02:07:36 +0000
Message-ID:
 <MA0P287MB03326967705EC6B97B3D1CF0FEB2A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>
Date: Tue, 14 Nov 2023 10:07:31 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] riscv: dts: cv1800b: add pinctrl node for cv1800b
To: Jisheng Zhang <jszhang@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Chao Wei <chao.wei@sophgo.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
References: <20231113005702.2467-1-jszhang@kernel.org>
 <20231113005702.2467-2-jszhang@kernel.org>
From: Chen Wang <unicorn_wang@outlook.com>
In-Reply-To: <20231113005702.2467-2-jszhang@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-TMN: [k1gDzdwU9w0aeJC05+jmUzXvTHYxSQR2FhAQLTi9Wus=]
X-ClientProxiedBy: TYCP286CA0328.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:3b7::17) To MA0P287MB0332.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:ab::5)
X-Microsoft-Original-Message-ID:
 <a115fe97-43fa-4166-9915-8a0d0ecf5bd9@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MA0P287MB0332:EE_|MA0P287MB1450:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e7dc2b9-54e8-4350-bfcb-08dbe4b67882
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	P5p7Jj4eO/MdA0YooPiTsJaDAw50x0xZFJI8WkFp8gklczw8vw/8Xe3BflRY7nzyGPV6wyC4wNH6XhnrjbLUbRYE0Nmjtro9u73Ijl0JAG3E2ls7wliahFTUsnZorJHlyCPCbcDX6K15BJOBG8lcy62WW46uuOnTXFRefbLS/GFhrvWtzvIf5uhcyDH9zX7BMoD6z59wA7DnxnOZd5/118M6C+KihQTxiOaGmOeboebnHQIskWSWOAlqIy8aXwkfTD2j6NuiotLo68TY5Hs+ZGLptxdY44/JVz/F9VJBjN1y6GQ0RXhkBjBtlCQKxKUIjjTe4BTebqhBRswpCM7Vb3sR+GdF6t1Zj/1pBhagCuIcjw4/g9wscyXPfbUw3iOzqaPxGYOzRPW3JWbBacTcNHf9eEv7LtKW5d5UpjRywptWxdv6WC3Y8rejRI0HmbCsS7xeDcwVQ++hbjKa8buseV6T3ddr7XUJk92WINx7szuy2e196QJhgXccpQ+B7kHbwUuvEWUtmrEa+HXx0aezx6LlJpXmgyBMFWb95iyIvhTYSjCV/dqkBxfI2eTN7NiP
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?TXdIemZYbC92TnNzamxkVUFyNW5rTTBQOGZLSnRUdlluK2FodVd0Z000bnBM?=
 =?utf-8?B?YnFLN2ZkTS9aNUp0MEVaRjdKaHZRcFdJajNhTEZydm5RQXBiSkFRanMyWWhB?=
 =?utf-8?B?WGxJKzVQd3NmNmFVbVo1UlBWUXIvcFlGRmk5bGQ4Z2ExaFFEL0toRTcydXJX?=
 =?utf-8?B?SlJlMzU3LzZWUUo4VXQwdExjZEN6K3pqK2JJUVUrYndlSzFHeGJIMUFGa0Mw?=
 =?utf-8?B?YlpYOGZBamYyWjBWNGxoTVpBV1hBQktER1Q5QXVCeVRENWpHOHk4MFdmNjFs?=
 =?utf-8?B?U3BKekVwUlppVXZaWHhmVkJnekJpTjJtUEVvWFBPUE1td0d2Zk9kYk8wS3dM?=
 =?utf-8?B?UzdZR2thTCtndnJ1WFpWU0FVWWVKS0NvY2piUFZPd28vTDVmWjdyT1dzclgx?=
 =?utf-8?B?QlJicW1PWXNsY2MvUStSanJRQ2h2SWVpOW40bytWaW5IdXNkNVdsa09zbE95?=
 =?utf-8?B?d3NXVnA4M0QxODNqVnNDbERNazhNUUNzNGZHWnhkUE9xWXJWeWo4bkp2S2Q0?=
 =?utf-8?B?bFM1U1IzaU9oMWNkdFJVWTRnWlRpKzloWTJKSk5FKy82TFEzMHZrakU1elVp?=
 =?utf-8?B?OXJ4dzQ0WDV4VWNCc0gwT1pEV3Z1bW0wSllxUjdWYW54dGdkdForUTd0M29V?=
 =?utf-8?B?MnVadmYxR21scUxpZER6ZGFjMDB5Y25KQUVqd25oTnNiUVJwR3k1Ujg1S1lI?=
 =?utf-8?B?OXU3eTZBNjF1cER3TENaZVF3RHBtQUhDWEp6dDlSdEJyNzRncnN2dXQyakNN?=
 =?utf-8?B?N0lGRXZDOUJFRVY5VnRZSFk2M0V3cndmNVRYbTNZbVNMSEZZeEdpYWhKRXIx?=
 =?utf-8?B?M0xDYnFsU1dtbzN2NGFWUkRveGUyb3hPcjArRDJ4b3Q1bFhVZXVuM3hFaXFX?=
 =?utf-8?B?UmJnWmZpdEluN0k5eFo3dnJRQXkzbnJwNHRLbjdKU0tjenlsTzZyYnVQY1li?=
 =?utf-8?B?M1BOQXRZSHBUeVJmdjhtM1hTMFpPTldqanUycGVvcy9HcXhvRnRPbEFIUVVL?=
 =?utf-8?B?ZVNvQzhxbkJqM2JiQXdkbXdXY2p1c1E4dVBsU2VKd2l6UDVJZXZCY3VOZi9q?=
 =?utf-8?B?bHRPUzhJbjFNbURnR0RyVVk1MGRqd24yeUpvY0g0RU9ReGdWZDZKV2NxM3Z2?=
 =?utf-8?B?YjBwU3pzNEs0VkQyNmpTY0lLWFJ4aHcvc25SNGJQNll5SWUxRWplMzkwcDlM?=
 =?utf-8?B?ZjJKeVZlM2xGRkREeUwrZ1hrM1Jtc2VqTHF2VzNqTklKN0JTNDJzRlpvVlRP?=
 =?utf-8?B?TWF6WVZDZjBPZXBMaGl0UlQ4NXJzcEEwcXduM2cyOHI2eGVuNi9ZejBnbVcy?=
 =?utf-8?B?S1pzSkJ6QndIQXRSK1c1aHpXNVhKbmZncFRwSkdCZmhwY3dVVVM0Z1ZCVHV1?=
 =?utf-8?B?TWNtYzV5WGVnaUxkT2hlWVQ3MllLK2srUjJDOVNWaDhVRzUzeC9MaWQ2K3Rs?=
 =?utf-8?B?UXY4M1ZZbjNjZjNCWi9MR3c5SDBYVUYzbzZZZmNJMFhaeFRBOTd5RGZuckZW?=
 =?utf-8?B?bzg3cFM0L2JhN2JENnV1aTZQQ3ZKRmhtaFpUZWkzTmhBRzA4dG42bStPOEow?=
 =?utf-8?B?aDRPWFAxdm9vMVNGQlhuVnVpbmlWcllEc002YzZ1VkEzM2IwTE9qOHoyOEkw?=
 =?utf-8?Q?hO7ewLvV3LktyRitygksLs4TQ8cc8ZjR2B9zYAQ44dKk=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e7dc2b9-54e8-4350-bfcb-08dbe4b67882
X-MS-Exchange-CrossTenant-AuthSource: MA0P287MB0332.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2023 02:07:36.6214
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg:
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA0P287MB1450


On 2023/11/13 8:57, Jisheng Zhang wrote:
> Add the reset device tree node to cv1800b SoC reusing the
> pinctrl-single driver.
>
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> ---
>   arch/riscv/boot/dts/sophgo/cv-pinctrl.h | 19 +++++++++++++++++++
>   arch/riscv/boot/dts/sophgo/cv1800b.dtsi | 10 ++++++++++
>   2 files changed, 29 insertions(+)
>   create mode 100644 arch/riscv/boot/dts/sophgo/cv-pinctrl.h
>
> diff --git a/arch/riscv/boot/dts/sophgo/cv-pinctrl.h b/arch/riscv/boot/dts/sophgo/cv-pinctrl.h
> new file mode 100644
> index 000000000000..ed78b6fb3142
> --- /dev/null
> +++ b/arch/riscv/boot/dts/sophgo/cv-pinctrl.h
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * This header provides constants for pinctrl bindings for Sophgo CV* SoC.
> + *
> + * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
> + */
> +#ifndef _DTS_RISCV_SOPHGO_CV_PINCTRL_H
> +#define _DTS_RISCV_SOPHGO_CV_PINCTRL_H
> +
> +#define MUX_M0		0
> +#define MUX_M1		1
> +#define MUX_M2		2
> +#define MUX_M3		3
> +#define MUX_M4		4
> +#define MUX_M5		5
> +#define MUX_M6		6
> +#define MUX_M7		7
> +
> +#endif
> diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> index e04df04a91c0..7a44d8e8672b 100644
> --- a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> +++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> @@ -6,6 +6,8 @@
>   #include <dt-bindings/interrupt-controller/irq.h>
>   #include <dt-bindings/reset/sophgo,cv1800b-reset.h>

Another question:

Does this patch depend on anther patchset "riscv: sophgo: add reset 
support for cv1800b"?

If so, you may need to add comments in the cover-letter to clarify this. 
But I'm afraid it does not.


>   
> +#include "cv-pinctrl.h"
> +
>   / {
>   	compatible = "sophgo,cv1800b";
>   	#address-cells = <1>;
> @@ -55,6 +57,14 @@ soc {
>   		dma-noncoherent;
>   		ranges;
>   
> +		pinctrl0: pinctrl@3001000 {
> +			compatible = "pinctrl-single";
> +			reg = <0x3001000 0x130>;
> +			#pinctrl-cells = <1>;
> +			pinctrl-single,register-width = <32>;
> +			pinctrl-single,function-mask = <0x00000007>;
> +		};
> +
>   		rst: reset-controller@3003000 {
>   			compatible = "sophgo,cv1800b-reset";
>   			reg = <0x03003000 0x1000>;

