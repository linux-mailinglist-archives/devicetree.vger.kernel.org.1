Return-Path: <devicetree+bounces-287370-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id vp1jMfNo3mnyDwAAu9opvQ
	(envelope-from <devicetree+bounces-287370-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 18:18:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F613FC74F
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 18:18:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2720F3015E35
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2026 16:13:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75C413ECBD9;
	Tue, 14 Apr 2026 16:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwu/UDtg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5031E3EC2E2;
	Tue, 14 Apr 2026 16:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776183235; cv=none; b=TbilHah0PZSAY+JRcWcKkb562Sxp53Wy6YfVkvp+qVXJopEqZh1v9mcDgzuI9xitGeX8UTwAVt9l7gg/CPzPlZ2uCNcyiGV7WCRNxmwRezAqYPN3YIogTckc7BMJizuOHl0JUh48r+nUYaeVBLacEfydaZ8dfw5Y9XS1dosI9q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776183235; c=relaxed/simple;
	bh=IO4ywonkL7DSzA1j7r2F5qYT1Kbev7PVfGagAwllQUI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cKijz4PW65l5Dxbby38CeiajEJdRZnSs8f9FUGkliH1Av/1Yh0bfVZyqf4ugyFETWNGv2nWNVvbzGGUqC5/BTn25P68Un2z+LT2OXoHP44qrN2i+1A1K708F7LXKzwq9FmJC0EkvK2Adc3XggbhAPrw3pauSgUwWspIhtvEycW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwu/UDtg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D690DC19425;
	Tue, 14 Apr 2026 16:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776183235;
	bh=IO4ywonkL7DSzA1j7r2F5qYT1Kbev7PVfGagAwllQUI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hwu/UDtgx4/YBtc19JUvhfvJhkFrBAYIw9hFKbVJ9rkT/NzYHIXz1bkX7hZ1YiWgK
	 dFhM18Gx/DMoH9UFLd9BxGu5/PmQiR5YTxLV3N9zJC6diSM//0Pslvx3DC2kTAYtEu
	 EQ9Gwe2ukP9P4QA9Wh2Qn8wvNqy5vUuewdtOr9mqCXDfR6XBXM7jxjvkmIaCcDpJKw
	 eIsG+u+MmEIPqPjNJYIFRUCactBIfXTNC7NpNCTb3CkDKI9mo7SAMH2792OzzWqCpE
	 Ivf6qGdeJqrEOmy/VMtQanxxGPQ43qXDyNPP8QUo05RiqeeTBn317TTMgWedR081og
	 SN4zGU/zQl12g==
Date: Tue, 14 Apr 2026 17:13:48 +0100
From: Mark Brown <broonie@kernel.org>
To: Valerio Setti <vsetti@baylibre.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH RFC v2 02/11] ASoC: meson: aiu-encoder-i2s: use gx_iface
 and gx_stream structures
Message-ID: <58d1df89-7c97-4e2f-af15-93d1f7bce5a7@sirena.org.uk>
References: <20260411-audin-rfc-v2-0-4c8a6ec5fcab@baylibre.com>
 <20260411-audin-rfc-v2-2-4c8a6ec5fcab@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gYIy0O5bB28fsder"
Content-Disposition: inline
In-Reply-To: <20260411-audin-rfc-v2-2-4c8a6ec5fcab@baylibre.com>
X-Cookie: Academicians care, that's who.
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287370-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[baylibre.com,gmail.com,perex.cz,suse.com,linaro.org,googlemail.com,kernel.org,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sirena.org.uk:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 26F613FC74F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--gYIy0O5bB28fsder
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 11, 2026 at 04:57:27PM +0200, Valerio Setti wrote:

> @@ -200,13 +200,17 @@ static int aiu_encoder_i2s_hw_params(struct snd_pcm=
_substream *substream,

> -	aiu_encoder_i2s_divider_enable(component, true);
> +	ret =3D gx_stream_set_cont_clocks(ts, iface->fmt);
> +	if (ret)
> +		dev_err(dai->dev, "failed to apply continuous clock setting\n");
> +
> +	aiu_encoder_i2s_divider_enable(component, 1);

If we're checking the error here we should probably return it as well.
Including the error code in the log message is also generally helpful.

> @@ -214,16 +218,20 @@ static int aiu_encoder_i2s_hw_params(struct snd_pcm=
_substream *substream,
>  static int aiu_encoder_i2s_hw_free(struct snd_pcm_substream *substream,
>  				   struct snd_soc_dai *dai)
>  {
> +	struct gx_stream *ts =3D snd_soc_dai_get_dma_data(dai, substream);
>  	struct snd_soc_component *component =3D dai->component;
> =20
> -	aiu_encoder_i2s_divider_enable(component, false);
> -
> -	return 0;
> +	/* This is the last substream open and that is going to be closed. */
> +	if (snd_soc_dai_active(dai) <=3D 1)
> +		aiu_encoder_i2s_divider_enable(component, 0);
> +	return gx_stream_set_cont_clocks(ts, 0);
>  }

Note that we only hw_free() if we preprared, but we enable in
hw_params().

> @@ -284,6 +295,8 @@ static int aiu_encoder_i2s_set_sysclk(struct snd_soc_=
dai *dai, int clk_id,
>  	if (ret)
>  		dev_err(dai->dev, "Failed to set sysclk to %uHz", freq);
> =20
> +	aiu->i2s.iface.mclk_rate =3D freq;
> +
>  	return ret;
>  }

This means we store the new rate even if the set above failed.

--gYIy0O5bB28fsder
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmneZ7wACgkQJNaLcl1U
h9Ad3Af/RhJ2L28N7i/aChvggwpANR0yRXtQJkvt0H9t5MTtdmhzQNlshMoA2NHz
Eh60IZd4InWHJrBe0Vyof62VkoKw1ryRN/devj6c7NVbKCtJ6LmNfqSut4h55Q2z
6Eu1qde7moQRulSJHRqnW3mNDn2B4RDaTw3mexGlKqHui3R0V6numiOhXGZ08ms4
cKKF9qaVy5rB0QjKuCpShcGR2x1hUXBboeo3szEQwJTDoiS99eA/S+3WP6THKIJR
eUqVORpNbCLmT1Pho2rTohXc0tnuPFtb8NocgtnVemwfm9C81B8TxspTwNmLD3qA
+iS3Kd+96yoD8HCRWH7szyxO78eRfA==
=iHoZ
-----END PGP SIGNATURE-----

--gYIy0O5bB28fsder--

