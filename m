Return-Path: <devicetree+bounces-101673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C473973061
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 12:01:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C961F1F22A1F
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2024 10:01:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90FBE18CBE2;
	Tue, 10 Sep 2024 09:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="gDEaBBBa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D6318C34B
	for <devicetree@vger.kernel.org>; Tue, 10 Sep 2024 09:59:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725962379; cv=none; b=PT5iu34uzBTEtVYiGyt9nUznZhCigBlkfhlySEirwxojby94X5iqMhTmn5/0eDT2nh8QPrDxZOw6IOJJHaOwlYhFfsQuhl7U/gCx+q3AgOspLCBXX5FvGmnCh+jbR2/NGq348hn/bcUUEwI2ennahPsRtYc3yN5jKauhyj63ROc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725962379; c=relaxed/simple;
	bh=cPN+c5d1qbghZwAgbLbBKbGa0droBLNlCAHDEF+wklI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OSeB/glcGf7DxWZ3YlzferxeU2qBARByXCGn0JSndGC002h1TQ/nzamjR8bdWWcxziFheJqyO/RBNQQtFIt41zC2Eu18xKPOCRzCDsx/JGibtaBOZye1CQoEROEPtd+OrOqa7pQVMHBubH/Lt3fXGsmgdcj+oAxqixqCrFVCqDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=gDEaBBBa; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-374c7d14191so3510183f8f.0
        for <devicetree@vger.kernel.org>; Tue, 10 Sep 2024 02:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725962375; x=1726567175; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OxZS7VLlvlNcdBPu4dATlqzqCH0SG09iCapcqr1ry4w=;
        b=gDEaBBBaUoUF56F+rRo9PuyFWwCDXHMu9g8K4zUwzDGwMpXycdSh6VN8oSHKoKmQDX
         CBycD7ciOZ1IR/0FyHTBJwSQFgwXanXz3ol8xbl5RK83QGEK0N3oWqobPdcp8bRdgAsN
         zJRHd79Wx0r0r8VkECdsWZb8CG0MTWwIVMwwCsEcAmeXjwPTxuTluhZM7GsBiOTSBwrj
         GicQeuUF2tjHfHAcuM2wfkPOGx4ZbqH0giOqp7i7zEgqh4hK1Pa1zjBQx5YIUhcLJEEI
         cCWTNWPXEUubsUXMUR3rMj8TS/LnZJsaKYVFX+QI/MiP7LRzRAcFnOJ6btWsJUUwXo6H
         JbkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725962375; x=1726567175;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OxZS7VLlvlNcdBPu4dATlqzqCH0SG09iCapcqr1ry4w=;
        b=ejUBevkR7RbInwqrSYJWVE08AFpbX3Z8DSf7xlpmXi5QtILgq8L1JErtW+cqBTrNma
         cGUNr2/IRsYNRKcF5T5+drhkILIanVPmI0ZRkkZrt/pFyeLdb3t0bynWPvZAYyd33J09
         XEtKa/JU8T0gcm4q0FYAhWvEU8xyI+HiQ1VxYqhz2sEJnTka4dywUy9pQPAjUCqclkDS
         OKOY3PCnktEodhlJFYeubyVx66yRMREl4tF5N0x0ge1NiNr387VF/H/NlXcJiFjg5nH2
         pCN4To55P0wUOIGu/1TZKxZywlwSToClFt3ME/PUf5Z8fN/GGncEsnjhQhtPHiGwPAJl
         VLWg==
X-Forwarded-Encrypted: i=1; AJvYcCXdrv13MkjXBuoj72U1B2Tye1pO2qj+lXJj3ZkhuReRATXh59rUfF6a8i+j7wGBOOAuV0f1Sd5IfT2k@vger.kernel.org
X-Gm-Message-State: AOJu0Yy33/crnodD1EV7ox4nBuDaK9qrKwhFQodMHtmnq6aJuTgwYPl+
	oRJa89uAT9KHfvUL3LtCpaMTuz+5vyxucxRqIeAwJa1udCfGMwokp/7hGx25BBQ=
X-Google-Smtp-Source: AGHT+IEtmAPvqyyaWuRoKy32eCJyGneGNTbPJN2tRd224P8AECPcesi7ike/qTX7P5GRwYiq+pSdJw==
X-Received: by 2002:a5d:46ca:0:b0:374:c3e4:d6e3 with SMTP id ffacd0b85a97d-378a89fd45fmr1331874f8f.5.1725962375253;
        Tue, 10 Sep 2024 02:59:35 -0700 (PDT)
Received: from localhost (p5dc68d3d.dip0.t-ipconnect.de. [93.198.141.61])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3789564a072sm8465192f8f.2.2024.09.10.02.59.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Sep 2024 02:59:34 -0700 (PDT)
Date: Tue, 10 Sep 2024 11:59:33 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Dzmitry Sankouski <dsankouski@gmail.com>
Cc: dmitry.baryshkov@linaro.org, Sebastian Reichel <sre@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Pavel Machek <pavel@ucw.cz>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Chanwoo Choi <cw00.choi@samsung.com>, linux-pm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-leds@vger.kernel.org, linux-pwm@vger.kernel.org, linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v4 27/28] gcc-sdm845: Add general purpose clock ops
Message-ID: <uevafpb6r7rfutiqrm5asfvv7zfxcb3acrlxqpispele5er52x@eegonpzqlm7j>
References: <20240719-starqltechn_integration_upstream-v4-0-a7f644821941@gmail.com>
 <20240719-starqltechn_integration_upstream-v4-27-a7f644821941@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d2rlzxmgwshy2k4w"
Content-Disposition: inline
In-Reply-To: <20240719-starqltechn_integration_upstream-v4-27-a7f644821941@gmail.com>


--d2rlzxmgwshy2k4w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Fri, Jul 19, 2024 at 03:55:04PM +0300, Dzmitry Sankouski wrote:
> SDM845 has "General Purpose" clocks that can be muxed to
> SoC pins to clock various external devices.
> Those clocks may be used as e.g. PWM sources for external peripherals.
>=20
> GPCLK can in theory have arbitrary value depending on the use case, so
> the concept of frequency tables, used in rcg2 clock driver, is not
> efficient, because it allows only defined frequencies.
>=20
> Introduce clk_rcg2_gp_ops, which automatically calculate clock
> mnd values for arbitrary clock rate.
>=20
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> ---
>  drivers/clk/qcom/clk-rcg.h    |   1 +
>  drivers/clk/qcom/clk-rcg2.c   | 162 ++++++++++++++++++++++++++++++++++++=
++++--
>  drivers/clk/qcom/gcc-sdm845.c |  19 ++---
>  drivers/pwm/pwm-clk.c         |   5 ++

I don't understand why a change to some qcom clk implementation detail
needs a change to drivers/pwm/pwm-clk.c in the same commit. I guess if
the change to drivers/pwm/pwm-clk.c is needed it should better go into a
separate patch with an appropriate commit log?!

Best regards
Uwe

--d2rlzxmgwshy2k4w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmbgGIIACgkQj4D7WH0S
/k7x2AgAluuv/f/FtpsMhu/tAKjHUOr1Y+1vUefo+pFCKzhUDjMyHMtIz8by9GsE
1pZ9fiw/to0h6iyEctQmMN3sqoMqkEwL4aKMYb9WOopkDgY36I7oAWjXs4mio6Ed
DPguLwTovw/p+OJMmgb/ndu5GNyQCb9AsmjekXGIx4ZVDJPX3pc8v/DX5HQj2y3x
sCi8NmmXABsckLz42oxrky2ZGcNmFddqBJxJdgjVcXfa5BEetdtLnUhmtmhiKyJy
g1rWCprL53Lj1ZWKLdQgu6yiNCQK9LS45ETRzHX8idzAODnagfx6by+X58QljgMg
i72ZlH212j1K035K3UHJar7Lo0D7FQ==
=xssr
-----END PGP SIGNATURE-----

--d2rlzxmgwshy2k4w--

