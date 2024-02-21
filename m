Return-Path: <devicetree+bounces-44350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD9085D9BD
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 14:22:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AFEAFB2569C
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 13:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BF7778B7C;
	Wed, 21 Feb 2024 13:21:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DB67C090
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 13:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708521701; cv=none; b=oWrhfHo6a5d1yYzzX9DKpGoCiHT36H2Mvo1gqwzn9SxgYk/2QFrqBTwNGk12kVvbzffiQJqS2n3lE2tiniG8cA1/XikiTPyCud5vAxaVEC0CRwqY5j7rXMKf8M+1fNovVG25Ok47nppg0Ud/lnw+DtrUTfVAKEX9q1kbuSvqyAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708521701; c=relaxed/simple;
	bh=SI3SEn2rXlKhuuBlz7D1YxEpNb6+9jhtk6arFV0Ido8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=GYLphegPNZ+61Lk35lCmV/plbIuWGw1d38GUdKg3u2fpt/hp8HXvkZZTwOLbfVMbF/tl8NoVaf9enXHCzVeSkPsMpRBr5A6c4YkUoHOFV383G217gsh08K/tbSruP3bNEAGpFyqpz4ha4lE3wqQNKKOhIWuhcFp0V7e/0SqqZpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rcmXM-0002OS-FY; Wed, 21 Feb 2024 14:21:24 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rcmXL-00237x-Gz; Wed, 21 Feb 2024 14:21:23 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rcmXL-0009An-1R;
	Wed, 21 Feb 2024 14:21:23 +0100
Message-ID: <09c275d0f0a1bf85f37635d9570514e8fc631e72.camel@pengutronix.de>
Subject: Re: [PATCH v3 4/7] ASoC: codecs: Add RK3308 internal audio codec
 driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>, Nicolas Frattaroli
 <frattaroli.nicolas@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark
 Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai
 <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,  Conor Dooley <conor+dt@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Date: Wed, 21 Feb 2024 14:21:23 +0100
In-Reply-To: <20240221-rk3308-audio-codec-v3-4-dfa34abfcef6@bootlin.com>
References: <20240221-rk3308-audio-codec-v3-0-dfa34abfcef6@bootlin.com>
	 <20240221-rk3308-audio-codec-v3-4-dfa34abfcef6@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Mi, 2024-02-21 at 11:22 +0100, Luca Ceresoli wrote:
> Add driver for the internal audio codec of the Rockchip RK3308 SoC.
>=20
> Initially based on the vendor kernel driver [0], with lots of cleanups,
> fixes, improvements, conversion to DAPM and removal of some features.
>=20
> [0] https://github.com/rockchip-linux/kernel/blob/develop-4.19/sound/soc/=
codecs/rk3308_codec.c
>=20
> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
>
[...]
> diff --git a/sound/soc/codecs/rk3308_codec.c b/sound/soc/codecs/rk3308_co=
dec.c
> new file mode 100644
> index 000000000000..61bfb75f92a3
> --- /dev/null
> +++ b/sound/soc/codecs/rk3308_codec.c
> @@ -0,0 +1,993 @@
[...]
> +static int rk3308_codec_platform_probe(struct platform_device *pdev)
> +{
[...]
> +	rk3308->reset =3D devm_reset_control_get(&pdev->dev, "codec");
> +	if (IS_ERR(rk3308->reset)) {
> +		err =3D PTR_ERR(rk3308->reset);
> +		if (err !=3D -ENOENT)
> +			return err;
> +
> +		dev_dbg(&pdev->dev, "No reset control found\n");
> +		rk3308->reset =3D NULL;
> +	}

Please use devm_reset_control_get_optional_exclusive(). That already
returns NULL instead of -ENOENT if the reset control is not specified
in the device tree. Then dev_err_probe() can be used to report errors.


regards
Philipp

