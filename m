Return-Path: <devicetree+bounces-126269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F589E0D52
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 21:51:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F1C58B2889A
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 20:38:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC6ED1DEFC0;
	Mon,  2 Dec 2024 20:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="wqpe08Np"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB0C31DED76
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 20:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733171897; cv=none; b=LFWY2RA8/7tGK7FvJDHHMhpSncXGSNEKZ+MbDYemMCwc2ShDnh+TvKL4ayiTzgj7mdD4vL7z72Kk/fLsEo2ArDhVEHl9En2ESXXmUjIXKOX799DjMyJMLUQhjM3Ae/yOeXewrwQEnUqFchlKqB225A2jpoSZkPsBCrxtM6PijAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733171897; c=relaxed/simple;
	bh=Fknba/O+ZHWgcmf+uvpRQRxG3dSyqy07apcpBLYjnA0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y/soWISlPrw1Q/omG/a7iEuE4zeW3nt0VEDWyh9MD7UgTvD20yBPvBe6j9ukvKjLM/mFmhZj5IG0BaY57YBCQNKI9SwtTCa5MGeuOOLGQN7PlYbmd2YeZanHJQgJ5fNsL1HSHqfkCDFJgm+3xMwVGQKfuO3Ph8/GP7jF1mtlHfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=wqpe08Np; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-385de59c1a0so3351654f8f.2
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 12:38:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733171894; x=1733776694; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0B11LnLO2cf8eL3FiCrq4OBSETxAhB6ivWgjWwx+o3o=;
        b=wqpe08NpeQg2IwUehmCZx0IzJ6NwGAXOmx+PwHJJ3fyFUy+jrVE8YOaNTgqNx6BLgC
         UEBwWhkb1vvzRC8TWXd9HDI2CMENFUEck+tyFJtM2M3kPLSNERRxu8k5GUmD3QjcYxGf
         IT/gUzkGEg3wQmP8xmzBMI6CvrXMkGfXwTHvSgu1jjcZYgYkXT+hJghWA4Xr4kGtZye4
         2mDS51m00UjwEzE6KJOJCMjziE1hj0e1/SVWlyuWMYykFX0ByHx0aeGQLvGpw27gFWpY
         kILze9u2pUDQwdB+LbtL9sX/yx/1njoN9On44ueWJaXWIhr/kJfbwIgfNAmBib/n/Ewv
         LkHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733171894; x=1733776694;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0B11LnLO2cf8eL3FiCrq4OBSETxAhB6ivWgjWwx+o3o=;
        b=C+y3mG+AyYacAIa0Kd4hI+Rm+lA6CbtEwoWv4eYxfaiNFsxnpuMkj47Dwc966/gQDJ
         WBhXXvUwupZQuiFdV9vwM/ztp/OaHsHd9EUTcgTeyjpVNBvT+UxAFU31cRJtS5bVli/C
         xzvtzww18JG4dy4aJ2QOSemjjgzupYxFs5sNmZiq1rUVtt5oMOINgpNYOEV5HTic8Shl
         Q2SgWwdiAsnWmB63wBYSBx/shXohjU4z1+wlDuyW94kCkeSHw8tqnVUm7khVJWcZDeeX
         y/Y1fzIRTmp/JnA/an+ujiUjXnfqCOda/AKom6WaM/n3Hw5OiPCO5XuyJHxVOK2YHEpo
         nZag==
X-Forwarded-Encrypted: i=1; AJvYcCUG6p8T/lstauvT8teb6nSI2WQ3iCN0LnUqMDws0tCAwrHWfUtiYYes/A0E/RZJmzKyBOkaxX5+F5SV@vger.kernel.org
X-Gm-Message-State: AOJu0YxYF3tQfmrTAyogQAiUniGVxdvl0wbZ720Kd4hOzE21sKdXcSGu
	Ghq2HXzowaRcNqLpNTt3qYFqUFvKt+VTPPA8gtz932fBMPs5Q4RmVNszCmGI3Ls=
X-Gm-Gg: ASbGncv6rVtw907WaZzFE3m4sH9UTbom3AmFusWxMHGHMoM8pU9LvVyIIoP16ZtlVE1
	BIPRebtzIToZX3O+OHK3PjGaN6VIvKrXWdXJYH38cvPMHgkpaqidNCJ4aBT1KEsGaiFOZ28gCHQ
	8n+ECroCbZv7KuZ6MgdGkvCgnVgZFsJdVeGjxkhVURZf3QpwCKG/P36nYmQZdFzrVjbgxAvtv8q
	S9RT9PDE5RW4Ssj0BafJaqRBsdH/DO3cOKV3IUqi1wFVD8PksUKdcI=
X-Google-Smtp-Source: AGHT+IGe28vQDIaFIgCC9RenjZh4P8td2rpt6P0oSCfNhYVmfcSAwCHxdXrQlDqOm7zyHYBCcHYvBg==
X-Received: by 2002:a05:6000:2103:b0:385:ea2b:12cc with SMTP id ffacd0b85a97d-385ea2b14e6mr6583684f8f.13.1733171894207;
        Mon, 02 Dec 2024 12:38:14 -0800 (PST)
Received: from localhost ([2a02:8071:b783:6940:8b46:9e8f:6651:c738])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385e9fda2f6sm6530162f8f.107.2024.12.02.12.38.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 12:38:13 -0800 (PST)
Date: Mon, 2 Dec 2024 21:38:10 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, upstream@airoha.com
Subject: Re: [PATCH v4 2/2] cpufreq: airoha: Add EN7581 CPUFreq SMCCC driver
Message-ID: <ktzz2btcxjlt7l36k7pgv4widhw45p44ol4hr2kjrf6ui62fjk@2yfvkmvdyk73>
References: <20241202151228.32609-1-ansuelsmth@gmail.com>
 <20241202151228.32609-2-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7dl3rip5k2ligpjw"
Content-Disposition: inline
In-Reply-To: <20241202151228.32609-2-ansuelsmth@gmail.com>


--7dl3rip5k2ligpjw
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v4 2/2] cpufreq: airoha: Add EN7581 CPUFreq SMCCC driver
MIME-Version: 1.0

hello,

On Mon, Dec 02, 2024 at 04:12:04PM +0100, Christian Marangi wrote:
> +static struct platform_driver airoha_cpufreq_driver = {
> +	.probe = airoha_cpufreq_probe,
> +	.remove_new = airoha_cpufreq_remove,

That doesn't build on top of mainline since commit e70140ba0d2b ("Get rid of 'remove_new' relic from platform driver struct")

Please use .remove.

Best regards
Uwe

--7dl3rip5k2ligpjw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmdOGrAACgkQj4D7WH0S
/k7a8Af+Jt0Co+uy1yD4dd0JKMWk5nFPZ9EBupH+eH/6sDuFh41r6Ix3P/famD6I
5R6dk2u0GZhSnD1Rw6JODUjRNDMkOZfE/IdYaaEpUKzgTb9BOCmmBksklEibsWjL
2jVeKhcE78owqqoytj0iR1zRFHhkegNsOjVeJ9UwG9urS8vWkX0GtyhziI5HVUAR
+MMhdMAyHT9Kbmi0q3zHbJNtUgb1CIdkkw3b0oBzoDbvvo8yWiwprBTtG+J+yc5v
gY8ZEdXHlPHlWLSH4ca9PgU/tbhAEQRXSMqxQg1Vhz+kYH6oic9UJXMzlSlHVC4T
qWhB5WgLJ1a8G4pireyw1QCOY1X7hg==
=E/Mo
-----END PGP SIGNATURE-----

--7dl3rip5k2ligpjw--

