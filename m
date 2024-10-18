Return-Path: <devicetree+bounces-112686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD889A33DF
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 06:34:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 94E50B21E6B
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 04:34:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A4901714C0;
	Fri, 18 Oct 2024 04:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="fuH4GOcd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0FC20E31F
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 04:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729226079; cv=none; b=qE+7h0xPZ4tBDgqqLWPhpNWDhD0zxF+VZMJt1GZLWrl2Ew5FQY40iW09yuzQFuZ8ZYps61IW3/DX3BlTwYcUG6HHvEn9RUEw/qZiZ/F8OAJkaFl0PFt0jvWGcpJN557fvN+M8ECk7RhMihZHmJ4ZDzsXTfXbAQC+Gazywcd+5pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729226079; c=relaxed/simple;
	bh=NS1Sz0LKTyjYliuiu+0xBv5Zm35cbmqxiZ7Ygf1MonQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u37zXhabAmfcDfA43cjzGSY9yQodC4PsogqlJbl83qkcYy+c/UuX3p38WbqLqjvNOeyanAHUE8Z6MBKwovFfFybQi7MrtP7aW3ehRO5imAcEpDSNiZHTjuUYPn/tANpDv3t6EcDz4tb79jyfm2CDFhP5Lh6bkg/JT0FANKeOne4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=fuH4GOcd; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5c948c41edeso1927012a12.1
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 21:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729226075; x=1729830875; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PS/ACDurPb5nBFPu0Cxs3/OwSWilo1gi2atw+wbDQts=;
        b=fuH4GOcdT5qDJjr8//o4Ua7mEg5zi1ZED4AMuiTtu6W+dxNH3tJotCtDCvIx05pDtz
         trlSvBbs1LGMJCjnhuG6069k0pO4+g8Gg8qdkgWjXyP5RD2xAzix8mMzx58b1jfjQGx7
         J7ufrrPelCeMFxuqTBr1tKdDreNZl7lNZEVkpQ1ohCGGEwTzYW1hs6csA1MRRf5+zFWi
         r7+ZWLFQATSAXAbfUMnANoOgGSyMiPTNWsdEi+tgQm/nMXqEFzrP3PA+Dssg9SnGTkPK
         62X46Vt5DqPUd53Nj0XeoP8MZdbEFQaQf4Yl4sf4S/LTXcwOS1lLXpbAURUlDv2vR6ju
         dNoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729226075; x=1729830875;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PS/ACDurPb5nBFPu0Cxs3/OwSWilo1gi2atw+wbDQts=;
        b=nilSzBqThoe2sumc9Y8HOwpooDgqVmeFRWcXDizOjmIpDsu8HU/wre4fcqY6qAmuKV
         FbCvFzJfGBzrYjcOAHH0p+4/4eB6hH368bjiGUg7D7lKE0P2BsTLHUaocft3Sw0iNl1l
         d3AVFiG5808w8r1m87REMxsWwhzCpulTlJv++nznDUclKvoaoTcKwKHvXUJ9aW2d48Gl
         Ety44tTZkCKfVfnF5R8Jalu4k7DsvZ5jDkfgqDzRN3Y91dSktPP9Y5wDECc53hz8iWnl
         7Jkd+rk+plD/8GyS7i3Ud8v9klX07FFXZaj8XxNc3deNqTs4BIl9CFU19R5CzE3YY+ew
         SxIA==
X-Forwarded-Encrypted: i=1; AJvYcCXe9bsWmroEx8HesfzJROspYQD1tD58GzLll3GjmdXeRypuuNCicNgPIn22sZN844e2dTjxe1qi9GNQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzNTCtNWFz9zS/gCPt3B37qjOl/NcsC1dZISd8Uoow33USSF2fP
	tNmcPuU0eSM8JH9lrSD9BF7TdfzK0NAgPMf8NXao/HGAt/ahl528sDj+qVocQws=
X-Google-Smtp-Source: AGHT+IGV/Z8Bp7RztnJ7HB2MP1CdFHDEON9SMuUS/lFIUwfh1mG6rxGz6XUEs5/I1mUZYyC0WuNPbA==
X-Received: by 2002:a05:6402:4343:b0:5c8:8cf5:e979 with SMTP id 4fb4d7f45d1cf-5ca0ac627efmr662722a12.19.1729226074948;
        Thu, 17 Oct 2024 21:34:34 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:7ac4:30cf:c3f3:f544])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ca0b0809acsm236785a12.25.2024.10.17.21.34.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 21:34:33 -0700 (PDT)
Date: Fri, 18 Oct 2024 06:34:30 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Mayank Grover <groverm@codeaurora.org>
Subject: Re: [PATCH 2/2] pinctrl: qcom: add support for TLMM on SAR2130P
Message-ID: <s7tc7cq42qeuj3d63is2dmq2szzq3ezlvv7zpd26qc7boyldnk@yvofxbx3kfbr>
References: <20241017-sar2130p-tlmm-v1-0-8d8f0bd6f19a@linaro.org>
 <20241017-sar2130p-tlmm-v1-2-8d8f0bd6f19a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2upy5tozsq3jeqzu"
Content-Disposition: inline
In-Reply-To: <20241017-sar2130p-tlmm-v1-2-8d8f0bd6f19a@linaro.org>


--2upy5tozsq3jeqzu
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH 2/2] pinctrl: qcom: add support for TLMM on SAR2130P
MIME-Version: 1.0

Hello Dmitry,

On Thu, Oct 17, 2024 at 07:15:46PM +0300, Dmitry Baryshkov wrote:
> +static struct platform_driver sar2130p_tlmm_driver = {
> +	.driver = {
> +		.name = "sar2130p-tlmm",
> +		.of_match_table = sar2130p_tlmm_of_match,
> +	},
> +	.probe = sar2130p_tlmm_probe,
> +	.remove_new = msm_pinctrl_remove,
> +};

After commit 0edb555a65d1 ("platform: Make platform_driver::remove()
return void") .remove() is (again) the right callback to implement for
platform drivers. Please just drop "_new".

Best regards
Uwe

--2upy5tozsq3jeqzu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcR5VMACgkQj4D7WH0S
/k7rkAf/WOmVvrbdnIv2b6TVVs1F57W1EtfcUsTwbm/S4/JtEMmsrDgBAeoTR9M9
OSdnfeODfzj86xVRLAm4QidGl6oFxgu0+Xhedl8xBL26B93N7tXOAsnDKbF2PmOW
KOLZ6VSWdcch9Ap9I1ayB9GhUZPBLy7tasy44QAlb353SHQmWrRrAgNxrYcRZTvA
UpNojlhqK+5MbZkhjDQJgq+m0J7i5lY3z2UVk6fR9MWUXSOhfTe3YOdoSC2ugyQK
zCFIicgUAdkoJZQoVMMRUrbK4AvBrTW1tj1310wQmQziBgi3Qw9xt9fdFdHgLiXT
ClEZiztG2vQdNTQjFJg8gScTPSYofQ==
=fMIF
-----END PGP SIGNATURE-----

--2upy5tozsq3jeqzu--

