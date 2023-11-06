Return-Path: <devicetree+bounces-14052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA927E1DF4
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 11:09:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6FCF41C209AC
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 10:09:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FC8717742;
	Mon,  6 Nov 2023 10:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="COME70yc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3701772F
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 10:09:29 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D324123;
	Mon,  6 Nov 2023 02:09:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1699265367; x=1730801367;
  h=from:to:cc:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding:subject;
  bh=B4Oe0b1cFvTgmEbTwGSSok8M6UKv+lWjUW+dPbjQ7Hk=;
  b=COME70ycXq7EChq3MGdSdyNBgToocblR5qGnOiap/0gMWX09Q8SVenHR
   RvqXscZNih1cnDNP7iyF1kAXGmE5YjAQp8ip2aeUM8kwTgKq1zItofH/0
   Eh7nl3erwt0HO4oizaPNqJ0Ub5vZX0tvbZIy8zo/BDdp3v24giq1Zs1ci
   hirDhBdZaE1EvGLBZhCT42zMdBt+J9nUvLxwcGZm0Vfsw5JnKN5mm24PK
   aWNAZM7t5zZSH4PsA4a92s6VyMpDt1FO0E+uIX+8oAkUCLMiSgdhR8g/V
   zspOpFt2kJrekSuW3R//zLiF35ISEu98zXGZUUvOsy6UGX0smCmy4TSys
   Q==;
X-IronPort-AV: E=Sophos;i="6.03,281,1694728800"; 
   d="scan'208";a="33823655"
Subject: Re: [PATCH] clk: rs9: Fix DIF OEn bit placement on 9FGV0241
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Nov 2023 11:09:25 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 4C7D628007F;
	Mon,  6 Nov 2023 11:09:25 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: linux-clk@vger.kernel.org, Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: Marek Vasut <marek.vasut+renesas@mailbox.org>, Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Date: Mon, 06 Nov 2023 11:09:27 +0100
Message-ID: <4530887.LvFx2qVVIh@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20231105200642.62792-1-marek.vasut+renesas@mailbox.org>
References: <20231105200642.62792-1-marek.vasut+renesas@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Maker,

thanks for the patch.

Am Sonntag, 5. November 2023, 21:06:15 CET schrieb Marek Vasut:
> On 9FGV0241, the DIF OE0 is BIT(1) and DIF OE1 is BIT(2), on the other
> chips like 9FGV0441 and 9FGV0841 DIF OE0 is BIT(0) and so on. Increment
> the index in BIT() macro instead of the result of BIT() macro to shift
> the bit correctly on 9FGV0241.
>=20
> Fixes: 603df193ec51 ("clk: rs9: Support device specific dif bit
> calculation") Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
> ---
> Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-clk@vger.kernel.org
> Cc: linux-renesas-soc@vger.kernel.org
> ---
>  drivers/clk/clk-renesas-pcie.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/clk/clk-renesas-pcie.c b/drivers/clk/clk-renesas-pci=
e.c
> index 380245f635d6..6606aba253c5 100644
> --- a/drivers/clk/clk-renesas-pcie.c
> +++ b/drivers/clk/clk-renesas-pcie.c
> @@ -163,7 +163,7 @@ static u8 rs9_calc_dif(const struct rs9_driver_data
> *rs9, int idx) enum rs9_model model =3D rs9->chip_info->model;
>=20
>  	if (model =3D=3D RENESAS_9FGV0241)
> -		return BIT(idx) + 1;
> +		return BIT(idx + 1);
>  	else if (model =3D=3D RENESAS_9FGV0441)
>  		return BIT(idx);

Nice catch!
Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



