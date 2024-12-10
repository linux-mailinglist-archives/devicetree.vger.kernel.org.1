Return-Path: <devicetree+bounces-129513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCBC9EBE91
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 23:55:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EDF9E2845CA
	for <lists+devicetree@lfdr.de>; Tue, 10 Dec 2024 22:55:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD5C9229143;
	Tue, 10 Dec 2024 22:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3/0Rc7g"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EFE721129C;
	Tue, 10 Dec 2024 22:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733871122; cv=none; b=EJxl7T+EkJ8axeoZCtkkbvl93x8Uc5x7VdM0QGBUGrAQTawYWGfpofuO9nJVKfuhtxsXmmg89cBaP+IYSEaP58nwP+/CLAMJdlThcDjYSQz7LJvpaKw8kV3ETdEqcgowCjPkPBUXE1sAnSFKZ8TVa+UvijLfdo1SVrC5LZe2dok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733871122; c=relaxed/simple;
	bh=UW5h1XStgrRU6YsQy/UsIAox8gwJWzpospv3WLKNH3g=;
	h=Message-ID:Content-Type:MIME-Version:In-Reply-To:References:
	 Subject:From:Cc:To:Date; b=Je0sAF9MSB9AOwXBSltEJg9HO5VU31+XdLWQEeqK8We3o3RTIse/ZxzG2moBZdU3JkJ8IjvcJLpVkW4oG/eb9jMR1uufKkEQR4eP/4DAQs3d4nDp/xz8MYjfynSNk42erhq/ldDc+ef9pc7okNWR/u5qREcK8vJgYwVvxzHjgHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3/0Rc7g; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7FF4C4CEF0;
	Tue, 10 Dec 2024 22:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733871122;
	bh=UW5h1XStgrRU6YsQy/UsIAox8gwJWzpospv3WLKNH3g=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=f3/0Rc7gaY6QuiNJNlfCdMM97zKiTGNULYd4fAhDMWOogM3HveIf7FBhSPTtYtZao
	 1OPqG+AT0OQ2vK4vQmIaPkTILsD8QAsXnEyC5l4zInzE/CaE9TYK1F9mmwTjvpScl4
	 Z6bYWftxU3eUGwTu2urxJEpza3wrB9cU2N6rER8L8LwZIea4TpH/IanzavrflITXeQ
	 Y0JLZ56Wr4W34uUBDgdZB5lA7uDWnvLZQb0Bx6w24x07lkMpZe+N+E9Tj88sGfWVWu
	 YEiicmEYz48WClP5zbtgGgFe7U61qp4n1NfcCPGrAkhnCQlI/C+lWXvGT1UIJFnvxG
	 XM9bfHI8Jpy7w==
Message-ID: <4190bb148fcba3903821db17b06f7ddd.sboyd@kernel.org>
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241210170953.2936724-2-claudiu.beznea.uj@bp.renesas.com>
References: <20241210170953.2936724-1-claudiu.beznea.uj@bp.renesas.com> <20241210170953.2936724-2-claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH v4 01/24] clk: versaclock3: Prepare for the addition of 5L35023 device
From: Stephen Boyd <sboyd@kernel.org>
Cc: claudiu.beznea@tuxon.dev, linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
To: Claudiu <claudiu.beznea@tuxon.dev>, biju.das.jz@bp.renesas.com, broonie@kernel.org, geert+renesas@glider.be, lgirdwood@gmail.com, magnus.damm@gmail.com, mturquette@baylibre.com, p.zabel@pengutronix.de, perex@perex.cz, robh+dt@kernel.org, tiwai@suse.com
Date: Tue, 10 Dec 2024 14:51:59 -0800
User-Agent: alot/0.12.dev1+gaa8c22fdeedb

Quoting Claudiu (2024-12-10 09:09:30)
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>=20
> The 5P35023 and 5L35035 Versa 3 clock generator variants are different but
> the versaclock3 driver could be used with small adjustments. The features
> that are implemented in driver and differs b/w variants are the PLL2 Fvco
> and clock sel bit for SE2 clock. Adjust the driver to prepare for the
> addition of 5L35023 device.
>=20
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---

Applied to clk-next

