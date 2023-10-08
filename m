Return-Path: <devicetree+bounces-6795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 396577BCE62
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 15:00:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6347A1C208C5
	for <lists+devicetree@lfdr.de>; Sun,  8 Oct 2023 13:00:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D88E5C135;
	Sun,  8 Oct 2023 13:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4C59CA49
	for <devicetree@vger.kernel.org>; Sun,  8 Oct 2023 13:00:13 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB888B6;
	Sun,  8 Oct 2023 06:00:10 -0700 (PDT)
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qpTO2-0004O7-Qw; Sun, 08 Oct 2023 14:59:58 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Sam Edwards <cfsworks@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Daniel =?utf-8?B?S3VraWXFgmE=?= <daniel@kukiela.pl>,
 Sven Rademakers <sven.rademakers@gmail.com>,
 Lokesh Poovaragan <loki@gimmeapis.com>, Sam Edwards <CFSworks@gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add Turing RK1 SoM support
Date: Sun, 08 Oct 2023 14:59:57 +0200
Message-ID: <4613093.CvnuH1ECHv@diego>
In-Reply-To: <20231007043600.151908-4-CFSworks@gmail.com>
References:
 <20231007043600.151908-1-CFSworks@gmail.com>
 <20231007043600.151908-4-CFSworks@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
	T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Sam,

Am Samstag, 7. Oktober 2023, 06:36:00 CEST schrieb Sam Edwards:
> The Turing RK1 is an upcoming RK3588-based SoM from Turing Machines,
> designed on the Jetson SO-DIMM form factor and meant to be compatible
> with most Jetson carrier boards (but especially the Turing Pi 2 cluster
> board from the same vendor). It has the typical I/O you'd expect from
> a Jetson board, including:
>=20
> - Two UARTs (UART9 for console, UART2 is auxiliary)
> - PCI Express (2.0 x1 + 3.0 x4)
> - Gigabit Ethernet
> - On-board eMMC
> - PWM fan w/ tach
> - USB-OTG [1]
> - HDMI and MIPI DSI [1]
> - Miscellaneous external GPIO, I=B2C, SPI lines [1]
>=20
> Beyond that, it is pretty similar to the RK3588 EVB (in terms of PMICs,
> RTC, etc).
>=20
> This patch introduces a devicetree to enable most[1] of the SoM I/O.
>=20
> [1] These peripherals are not addressed with this patch.
>=20
> Signed-off-by: Sam Edwards <CFSworks@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3588-turing-rk1.dts   | 627 ++++++++++++++++++

This is more a general concern. You're introducing the rk1 as a dts file
but the from looking at the module-page and your patch description
this is "just" a SOM that most likely cannot run without some sort of carri=
er
board.

In the rockchip devicetree directory you can see a number of som boards
as som-dtsi + base-board forming a full product. Simply because the number
of usable peripherals will highly depend on what baseboard is used.

Thanks
Heiko



