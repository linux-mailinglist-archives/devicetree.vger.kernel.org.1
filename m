Return-Path: <devicetree+bounces-238690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id E3376C5D529
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:23:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 360CA348D22
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 13:17:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57CA1313522;
	Fri, 14 Nov 2025 13:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y/kVW6YL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6DA311967
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 13:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763126244; cv=none; b=k+OjdrVenmUL5Rw8o4G16Oz3pH6l1/mf+QV7cMjEHjFVxQgzLiPBJTMWIMD8DPCrVhk0Ek1G0QbSN1t54PRnolHgnsMq5SBVI9vqgERvjYc11Asa0UjFUFdid1J4qYxxpJ3EWTFfrBqhfQSlKJAswnAjA5+Eys7e+tSR39BEKC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763126244; c=relaxed/simple;
	bh=l14bAdG7sSenVgnTvQe0fC1UGWAoSkEFo21BRNcbNGc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rHTqRsXLpwMih7SZYwakaveCEsvyeoX5f0GGIoqHKLMQTg4O719ZtRTLVPsyq6M9iwuQ7Rx19oYxKf0kn3E1rijfD9p7epU4kTQrawP93L1pejH4WQnyLVkBKlii0NVPCv/zqtqdTeXPpXscpWPwGvJfGuE2oYrilookBd5tvUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y/kVW6YL; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-477549b3082so16771705e9.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 05:17:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763126241; x=1763731041; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=N0TpL/uQKcXjj/1P0tKp0hA2j+bgPUGaGAw/0f/W2wM=;
        b=Y/kVW6YLdkdywKyhIM5phM1gGda9DINj9qS4DXw30LQ5eYeEqHRgChAK8ONNgwR5QF
         JOUz0yZwVm1lm5HJARQotOK1y0f55d/vjXWNuBBzy+tW8bSUoog0PwPejhIaMBNQewQ9
         ygEsmjiKo/RcO++um/7Y1DsF9DuOn/WXzKETFNrPyi+SNFKoHUeP2+BxnG1tNL2U9fT7
         LExRYh9WvHgmd++CD1yIIp6YaHK07phureTHNU7tUxQhj3FjCwtJU7q4ZPSKOL8o9Zt8
         PC94lG1dDPrtL95xWuRgoInTytnsJ7Xvl2qh5yAtYnJkfHzRIZtpLn8p3+lRFCboFRVD
         ShLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763126241; x=1763731041;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N0TpL/uQKcXjj/1P0tKp0hA2j+bgPUGaGAw/0f/W2wM=;
        b=nfSc3J2FbgmhWjlp2F6xOEIp+AN8SprV4igniDnPFWLjQhaB3j9LM8pCbrQzxL3M/Q
         zRZV/4CUVgn/ti+KYXiaOIV53qO9xYdlTCQ7npDTK/A0POwdNfJWEwqS4dCybd0b6jyG
         xRE9I/7/lO0EdxbjxpiLHy7tN6FG4EamnN+9mRQs9waf9MzhF2PWHEWOc7SPZHKIqwWI
         d722GjfFhcn9t0vkm2bPNdsB5KIHRI9gnDlHr0Po0Eu/i42lr4QEaTVfF19LYBCFkV2F
         qAvltCZx0zFI8OPs13lLztREan1tchPk3pBVMEJ783TADlrKyPGrs3Rrqmv9IEgQvVKw
         aG7A==
X-Forwarded-Encrypted: i=1; AJvYcCW73TX1RpVITxeQAvKVQ4QSLkBM00AhUOclZpzM950biRFqmUHx3F9onL18Y/MFLQktZV81D3D9quK2@vger.kernel.org
X-Gm-Message-State: AOJu0YzOw0nGBlvcNlNhJ7Ri8gmQ0uFD5GC1cKgH0VMkcp/XiHn6iSZ7
	TB+yAjXJ1PvQL7zJ0S91FRpg9d8CIzCDY1+6aP2WjQ9DqpaPWcA9OEiJ
X-Gm-Gg: ASbGncu2NMJvtAPSTjl3B2du5ep+ykWtZ03PYBZHXYuYUU3tkllk7/C8oJ9IhUD0XpN
	9Xkzzvx4VP6dVRyKcfC+GAmuHvofDnv1RXxmfFJf4HPmcfvsdzd+PSM9CxB+x0lBFq46wedrtzO
	GjHwpjnciNa6ImYK5BQephw6RAPTQZTACE96y0pQMGbKn+NLzogfJyNmTzoxwnKJ6UGBzlh+rYI
	OtWZ9Tfb23Q9muftnx2ZzNKaXJJBGq3iUMdndUbRSkRRLJDsT+8tzl2sz5pQoU6Jo/duVIwpWHn
	V0lOpCCxPVYhfOSee1qZ0aMfGVgovsTo18hNnFmPYlqle83goNMgKZLQKEVy51BpHQ/J18t+F7Z
	fqKHmKELhjpbGO/MHikvwC/9iJTYOT7ZoBIfBBrJPhlyu3GmYzYXAUu0KjeMyzQs7cqReaf7uNN
	R2tVNmOm28Uy/ku0fBM41G08xq6XgczUYaa97FxQLLRdz1HgW1OXnrb2U0BwZbjXM=
X-Google-Smtp-Source: AGHT+IE9bBUs5+fK/teaotf1hwhzAkTnpdK+HO3WDqdKR+mWJDdDdywb+mQyN3FtSPr5SthQHUQsmA==
X-Received: by 2002:a05:600c:4695:b0:477:7b9a:bb1b with SMTP id 5b1f17b1804b1-4778fea681fmr33855485e9.32.1763126240242;
        Fri, 14 Nov 2025 05:17:20 -0800 (PST)
Received: from orome (p200300e41f274600f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f27:4600:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47787e43c2fsm141848115e9.6.2025.11.14.05.17.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 05:17:19 -0800 (PST)
Date: Fri, 14 Nov 2025 14:17:16 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Yangtao Li <tiny.windzz@gmail.com>, 
	Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Claudiu Beznea <claudiu.beznea@tuxon.dev>, Maximilian Luz <luzmaximilian@gmail.com>, 
	Hans de Goede <hansg@kernel.org>, Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>, 
	Daniel Lezcano <daniel.lezcano@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-arm-msm@vger.kernel.org, platform-driver-x86@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v2 11/11] soc: tegra: Simplify with
 of_machine_device_match()
Message-ID: <jhrvha3ytpt3wqvyfrlt5zirfnnnijssrufzg6bc4cfah7ahln@wxnnrdv3qbid>
References: <20251112-b4-of-match-matchine-data-v2-0-d46b72003fd6@linaro.org>
 <20251112-b4-of-match-matchine-data-v2-11-d46b72003fd6@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3uqy45lsar5fgfon"
Content-Disposition: inline
In-Reply-To: <20251112-b4-of-match-matchine-data-v2-11-d46b72003fd6@linaro.org>


--3uqy45lsar5fgfon
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 11/11] soc: tegra: Simplify with
 of_machine_device_match()
MIME-Version: 1.0

On Wed, Nov 12, 2025 at 11:28:56AM +0100, Krzysztof Kozlowski wrote:
> Replace open-coded getting root OF node and matching against it with
> new of_machine_device_match() helper.
>=20
> Reviewed-by: Jon Hunter <jonathanh@nvidia.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>=20
> Depends on the first OF patch.
> ---
>  drivers/soc/tegra/common.c | 12 +-----------
>  1 file changed, 1 insertion(+), 11 deletions(-)

I assume that you'd want to take this through the DT (or some other)
tree, so:

Acked-by: Thierry Reding <treding@nvidia.com>

--3uqy45lsar5fgfon
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmkXK9wACgkQ3SOs138+
s6GJEg/+Lvwv/Uc4dUYUzG/6oY2h1PdiGuJvJA9YspnmST4S0yhN92w4uF7VktO8
48OfDwxqJHwx3SDbrqTyuzmBBpk+vUOVyILkxEFHIHHfU3FSie3o3o8xQ1reITF5
xRkKWVj4drW/J3lr7dXETpSnaq8ASU9LbXzjA5V5WEZIjvOwEDTOiUtjycoL+dJN
EZcP60yEeH9WZqPvBNJcDpppUFwZINIUJ41aLebwav40cxSOr9AWGyaIoirg0hAC
4B5FfUrlvpG6uToKYAI+F8onTpuhbY7ucFNx420eOkY1MfcBDx6CxL2rATwe0wso
U9+7SRCF59hiIZLQVvPj76JtLjAVrvmfanOKa5J2/Y/2vUG/3PfSdzCzqXykmv3i
fCsdqHqur0RkWwjayS76p/QSldpOQszoGL4Uio2k7u+RM5SXEA+E1im8qq7ed2+N
0XjgaZjOoGP24Gn+V1UUyD04j/IjPm36o1hHwa27wJnEf33rp932nOQch3/T0fA+
3MERBRP+Px+jXOgg3D3F/gzJa3Ps7rRNp3XRHmv4EwjSMU1Hoq9ePdT38fW1Xl0o
x+gIeNWpWoVeI7D+3OfAoJTthFdmNVUznKco4qxwigLQnoGo1s0Id7hRygTsz1fC
MGSxHO88pn2zCtJqXCByFHjVRYA+y5zQx0zB6IX5ndliVu/HM3k=
=GzNq
-----END PGP SIGNATURE-----

--3uqy45lsar5fgfon--

