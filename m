Return-Path: <devicetree+bounces-313584-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZQz5MXkqNGqyQQYAu9opvQ
	(envelope-from <devicetree+bounces-313584-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 19:27:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6211C6A1EEE
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 19:27:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=Z3qmcJwz;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313584-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313584-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3FA593009F49
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 17:27:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9651347521;
	Thu, 18 Jun 2026 17:27:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77DA5348886
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 17:27:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781803637; cv=none; b=K5Zkt1mY0d+ine/FVoPlM71cb8xCfjreQAazUpVYTci05B4M4kMZU1xoCUVmG0q33jkfE+QyfINQU4r5ZvxalUeE4UniFcU1g9h7/B2ZaXyyiPHDdfJ4LCqlHekOeHbEpRM72vYEFw9p+Q9qIpYaMfXOGjEqnd1+L8Z2qMM8iYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781803637; c=relaxed/simple;
	bh=FCuHxpYgxO4RG9gYkMZwslXkCzKhyiciZ7zZe4XbNiM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pTvNqrgJisoJbfqjwVQHxWfWtmd4nSt1rN4R3iAYK4oZCooBFGypWoF1rK2klFsvTY7SWs39khSeLQCTDWpgtcLq612x+D+F7D3g3GVY9SkmxrLYEqHJM0rMd05UFJq2mOkdl16o5++yQiUY/rWTVf8gBvZGntdoSmEzLqzAuo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=Z3qmcJwz; arc=none smtp.client-ip=209.85.221.42
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-462ebd5d37dso1424387f8f.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 10:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1781803635; x=1782408435; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iNDB7XgfVYghFL7aUUs3X8ozprZSoKOcYdUOwpOmztA=;
        b=Z3qmcJwzqjqcTprsHIQ/wldFaKacMjigFR3uNcmL79HfJ3dHulGT+YcD9b0IwIp0qq
         /AI4p1uu/7bpwiBSahdJteNGgnlDJwfuIYWjAdzt539rTpYZ/cXHFeSYCGzVHRgozu3Q
         cRnXwkwiky3jbQkH8f+gDIFXihvi5AjJdufdvAxWei6EE+fnTKqTAUB9BULhtCTMtYFX
         QKv+iM3WTkYnGBVBaK0HLxanyD/xpHCD7HVzp4rvDUWG9Nc5duvJSkJMeGpXUMXlb+mp
         9naATjt9NQS0TjGKMim0sOqfZRxrI2b4V9HISPucUS5vts+/C/RWluiILAfqvoYSnbx+
         9YCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781803635; x=1782408435;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iNDB7XgfVYghFL7aUUs3X8ozprZSoKOcYdUOwpOmztA=;
        b=TPO7BikhQAnIAx+oyOK2d6awNoUHbS60FYeW3Bp18ClmFZdI3Z5RCW3J0tjE/zunlz
         hWJThrBQI4UsT3rugpFqhtdUvWJQeQyiPqdZY+MT0heUIfRO2KTulUx49HeUli3mmpYY
         vPIoggnpw9JJK6IqVIIZkg6o1WynNlYURd6HJHKvSXzSyIDFejX5u+EnTyjDrUNLx6yv
         PThGabEQ44Vfln8ChBl/g4gB6O7/14UGXSNzlzN2ss8pJYy+OqngQN7v2nYYcha8k1DP
         zZB6ZHbeC0dDr40uZggF8n0t27hcvPrnZOqJUTP0QMdr+E5ooF+mM43y79/KOHP4H6KF
         iRlA==
X-Forwarded-Encrypted: i=1; AFNElJ9f+Sx9R1geCEBeIg86YkuAkEcrxMg+mrB0ozfdMEDxM2TzLxlljqRllYF97GfWpgAYayQT4+PJm8Cv@vger.kernel.org
X-Gm-Message-State: AOJu0YzupnK02en3Id/01Wa4w+NSTuCmcMIJ02hZmGFA+vtx7I/MH0QW
	t5ksRD/HBU/uVt6fA9GI1I56mFWOlQINHowHO/zL2CtzX3+7LHGEtYgW6BomtuuqlqY=
X-Gm-Gg: AfdE7cljz5gWbd71yBquAT3nYab1iD2B63K8imlR7Koxjpu0hfvsFBos4v+2zVvDEGQ
	iDB26+on9pon3c53Cu3RTdJxvSqDRVmVnsqQSmhv5qNx3nfj+QUEmx6ID6tI7/rEZcC+LLzYQv1
	ntaeDP7D19h4TRauArBCYKHcRjTpcYjZmXX4B3x9tG6VcZbLJfGY/zNy8ssaiCV/+hevghd9eAx
	u4lJDC9pBG1bVlIWRth/nSq49434kB+EM2f1BHupx1w8MfEQnk6xMZylPHISahNgO9W4IB2qFoL
	cxyVnTKir/4roJqAU0kolEAzcu8tVOycsYKWWw4wBNErtCr7aYs8IhzshC8/9ttPBqKI9XRLoV1
	G03HGHL935QzDhKj8jjz87Gy0x2DwuWt1D2VKUYZjWoz5p8XL4ODU0XiH2Nn+gjHOIgbVsRucCO
	1bbp3ocHcV9vFrHDstMoNcM6AFtStkJr6FBWS5c9uLX1Rc3OeWD7gpMu9h4AePKF5sl5YmcKd9D
	rES
X-Received: by 2002:a05:600d:6451:10b0:492:37b7:607a with SMTP id 5b1f17b1804b1-4923fc7760emr4758705e9.31.1781803634861;
        Thu, 18 Jun 2026 10:27:14 -0700 (PDT)
Received: from localhost (p200300f65f47db04cea0a59ab11cac9f.dip0.t-ipconnect.de. [2003:f6:5f47:db04:cea0:a59a:b11c:ac9f])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4923fd15535sm4699995e9.3.2026.06.18.10.27.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jun 2026 10:27:13 -0700 (PDT)
Date: Thu, 18 Jun 2026 19:27:12 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] media: i2c: og0va1b: Add OmniVision OG0VA1B camera
 sensor
Message-ID: <ajQqRj4lX10M5dQj@monoceros>
References: <20260618-og0va1b-v1-0-dda71bb83009@oss.qualcomm.com>
 <20260618-og0va1b-v1-2-dda71bb83009@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="endujef62ugl3neu"
Content-Disposition: inline
In-Reply-To: <20260618-og0va1b-v1-2-dda71bb83009@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[u.kleine-koenig@baylibre.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-313584-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:wenmeng.liu@oss.qualcomm.com,m:mchehab@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:sakari.ailus@linux.intel.com,m:linux-media@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[u.kleine-koenig@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:dkim,baylibre.com:from_mime,vger.kernel.org:from_smtp,monoceros:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6211C6A1EEE


--endujef62ugl3neu
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH 2/2] media: i2c: og0va1b: Add OmniVision OG0VA1B camera
 sensor
MIME-Version: 1.0

Hello,

On Thu, Jun 18, 2026 at 06:37:44PM +0800, Wenmeng Liu wrote:
> +static const struct i2c_device_id og0va1b_id[] = {
> +	{ "og0va1b" },

please make this:

	{ .name = "og0va1b" },

> +	{ }
> +};
> +MODULE_DEVICE_TABLE(i2c, og0va1b_id);

Best regards
Uwe

--endujef62ugl3neu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmo0Km4ACgkQj4D7WH0S
/k52EAgAgUXx6nNuRbD3KgLHPYbej+Zt7WTlvyKKhWJIP1NqEepGQdgtiabv5z6U
MvmU4mBit39O4SsAn0XGjM9Bn7FrUNb8oYbUiEGJrcIz6gkIWxHzpY0gsBb/Qb3O
Fi7JYyYPXyeNsreM8IhXc8kOGeEZiZ/1o4I3tPAAri2DN6UD47JitgGlzyuzhZij
SO9DLUriMNs0H9fGW++CTCTtOjArv44YyKW4hjUuvPqtwaH7HfXQOpkOA61weKbd
dvYsv8pDPfkNE5CaDgSHcaI6t24mQoYRxiclxyY/3cIY5Ag877Rlw33hFcnhvt1J
zqvLBw7YLGiRHcu7RSHkpboKYFwq7w==
=grwz
-----END PGP SIGNATURE-----

--endujef62ugl3neu--

