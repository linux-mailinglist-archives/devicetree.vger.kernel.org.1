Return-Path: <devicetree+bounces-1416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E0E7A6244
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 14:13:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 463411C20D96
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:13:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7A42339B3;
	Tue, 19 Sep 2023 12:13:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67738339B8
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 12:13:19 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id E0AD8F2;
	Tue, 19 Sep 2023 05:13:17 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 887B61FB;
	Tue, 19 Sep 2023 05:13:54 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 715A73F67D;
	Tue, 19 Sep 2023 05:13:14 -0700 (PDT)
Date: Tue, 19 Sep 2023 13:13:02 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Claudiu Beznea <claudiu.beznea@microchip.com>,
 Peter Rosin <peda@axentia.se>, Sudeep Holla <sudeep.holla@arm.com>, Jesper
 Nilsson <jesper.nilsson@axis.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Paul Barker
 <paul.barker@sancloud.com>, Michal Simek <michal.simek@amd.com>, Heiko
 Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org
Subject: Re: [PATCH] arm: dts: replace Bananapi with Banana Pi
Message-ID: <20230919131302.26c30a31@donnerap.manchester.arm.com>
In-Reply-To: <20230918074122.73265-1-arinc.unal@arinc9.com>
References: <20230918074122.73265-1-arinc.unal@arinc9.com>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, 18 Sep 2023 10:41:22 +0300
Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.unal@arinc9.com> wrote:

Hi,

> The brand name is Banana Pi. Replace any mention of Bananapi with Banana
> Pi.

So in general this looks fine, and the comment change is surely a
no-brainer. But I was wondering if changing the model name is something
that should be done, as there might be someone relying on that?
And if we go there: "git grep" finds a number of boards using "Bananapi",
and some others with "BananaPi", so I guess those should be changed then
as well?

Cheers,
Andre.

>=20
> Signed-off-by: Ar=C4=B1n=C3=A7 =C3=9CNAL <arinc.unal@arinc9.com>
> ---
>  arch/arm/boot/dts/allwinner/sunxi-bananapi-m2-plus-v1.2.dtsi | 2 +-
>  arch/arm/boot/dts/mediatek/mt7623n-bananapi-bpi-r2.dts       | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/allwinner/sunxi-bananapi-m2-plus-v1.2.dtsi=
 b/arch/arm/boot/dts/allwinner/sunxi-bananapi-m2-plus-v1.2.dtsi
> index 235994a4a2eb..ef532494fc9d 100644
> --- a/arch/arm/boot/dts/allwinner/sunxi-bananapi-m2-plus-v1.2.dtsi
> +++ b/arch/arm/boot/dts/allwinner/sunxi-bananapi-m2-plus-v1.2.dtsi
> @@ -7,7 +7,7 @@
> =20
>  / {
>  	/*
> -	 * Bananapi M2+ v1.2 uses a GPIO line to change the effective
> +	 * Banana Pi BPI-M2+ v1.2 uses a GPIO line to change the effective
>  	 * resistance on the CPU regulator's feedback pin.
>  	 */
>  	reg_vdd_cpux: vdd-cpux {
> diff --git a/arch/arm/boot/dts/mediatek/mt7623n-bananapi-bpi-r2.dts b/arc=
h/arm/boot/dts/mediatek/mt7623n-bananapi-bpi-r2.dts
> index a37f3fa223c7..7f0948074945 100644
> --- a/arch/arm/boot/dts/mediatek/mt7623n-bananapi-bpi-r2.dts
> +++ b/arch/arm/boot/dts/mediatek/mt7623n-bananapi-bpi-r2.dts
> @@ -10,7 +10,7 @@
>  #include "mt6323.dtsi"
> =20
>  / {
> -	model =3D "Bananapi BPI-R2";
> +	model =3D "Banana Pi BPI-R2";
>  	compatible =3D "bananapi,bpi-r2", "mediatek,mt7623";
> =20
>  	aliases {


