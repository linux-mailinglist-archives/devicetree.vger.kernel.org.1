Return-Path: <devicetree+bounces-118515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7BB9BA7EC
	for <lists+devicetree@lfdr.de>; Sun,  3 Nov 2024 21:24:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C6401F213AF
	for <lists+devicetree@lfdr.de>; Sun,  3 Nov 2024 20:24:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4482918BB84;
	Sun,  3 Nov 2024 20:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="oyZsnxVg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DFC2187FE2
	for <devicetree@vger.kernel.org>; Sun,  3 Nov 2024 20:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730665470; cv=none; b=SjS8ynAyuKa58D89ZL0ozTQRQUuPlcyBawf53pOIiiwjz/i2jtznTw+H7DAsaiXI9V5TyLY96eutG91/Yw1CQ323/wvqszJb/ONkwz6f+P6gIwXwJGS3hiTRlSVaFeSIT78BANjcOrp/xyWvPwmN8IO8D8eZY2lqBPcAm3v9Y/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730665470; c=relaxed/simple;
	bh=+IuVaiSHVBtyyhgrrn4thrcTjVD/nWVrVaIQ5nYlKpI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VE0tcp0HtG8xuMefngaDVNUsNnKT416Vl+ib43CUas0NU/aosS/3sZp+q+mRMFeSqaXRFhn5zZuiTbQE1HTwLTp6MMz+K8uVCX7yCAzv6PWRACZMxfR+NHAtm4DYDtT5B2Rbw+TdnlYsovZ4zN2KCC1Udvg8v/Hly42YgmVPBzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=oyZsnxVg; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a9932aa108cso586469066b.2
        for <devicetree@vger.kernel.org>; Sun, 03 Nov 2024 12:24:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730665466; x=1731270266; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZbLucy1vznAm/L7ME+S69Mz2iLBOGTcx7R6cx9WeRk0=;
        b=oyZsnxVgTB1unlJJCuZF+5BNQrXk4fTI3XkFL2mGqO0MwVoLErO7lOvjL21LSv7Qh3
         2rU8jhXvDLrvB9ev+WapZD6j3Sf8LblqbLwQ5ZQ+l/LtoZ9ZIMLudJCvIjqPERI9MIKK
         RjG4uLquCIchfDK5fdm/w7b8cEE5HoQksN/6CBYn/fyBJc8lUBgZGtRc7gA0IQlvk3Nj
         qgiKd+rEYH3oga+Id3fYUtjnLrhUeWkHy0Gj7cAbOiYmx2SG5saOSqcxMZpO4PjESFM4
         6PkLdpV/gRDUW6ZHKJ36fLOi/p7ydhwLtBu2tOgSp/1GRurOv5veheINjYmMme4Rj68i
         LJBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730665466; x=1731270266;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZbLucy1vznAm/L7ME+S69Mz2iLBOGTcx7R6cx9WeRk0=;
        b=aeWprx7u63AbMdq/DWo+MVstDLtRT1+Ba1KllcXdGyQRsKBbm0S5qB2KH0K7+MWGTp
         XNGumUw9igJIO2hvS6bTTC8OpgWUBrmsAspy6/sXxsk26tY+SXcjuo0zgRSzJ3xWVFo4
         rhN1e7IfW5dFjAy+YHf2dRor7vU7AuIpvLVXExQuTLTM9JN22J6Nly+BPDIk55T4eYip
         Vm1xEUjDSHJL9iwxM5bwbu7/RU7tx2jxEZP3Ik7SVGDycOavMg+nIPmN1Rav/8QKcNv5
         3R3XMToxmWF9wE82YueScBJP/cigh/vlnt9a3qumS2KEramRebLCj3OLo9+M8R45JhQS
         u8fA==
X-Forwarded-Encrypted: i=1; AJvYcCU3nGUijB2/f+BQVhbS25ghzwiHD2GFYGE5Bd04MujXuqgSlSjJGUBrYHb5LnayS31jR0+yyPiWA4aA@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3QhEeyoove4XKqdzqagQuq4ZTlzxrnzJAtxWe1oENQ4ZtM2Wj
	qznTqh3GSRDqgyDB9Q7PknBMVuZqOMfHgJ5ZHJ5WP6rmX4jXi6prrwV8qaqWrKc=
X-Google-Smtp-Source: AGHT+IHIlVtG5Rh5KjMK9FRTNAdhyoVG02VD9/dw3U9OPVj6iEGlEmzj0nuvnJG8VTlgktXo97a9ug==
X-Received: by 2002:a17:907:7fa8:b0:a9a:1bb4:800c with SMTP id a640c23a62f3a-a9e508aace0mr1403350166b.4.1730665466154;
        Sun, 03 Nov 2024 12:24:26 -0800 (PST)
Received: from localhost ([2a02:8071:b783:6940:711f:c21d:28dc:9f01])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e564cc430sm461284066b.88.2024.11.03.12.24.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Nov 2024 12:24:25 -0800 (PST)
Date: Sun, 3 Nov 2024 21:24:23 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Stanislav Jakubek <stano.jakubek@gmail.com>, 
	Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Chunyan Zhang <zhang.lyra@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: pwm: sprd,ums512-pwm: convert to YAML
Message-ID: <ielio4ys77kgo5qsvrbbqfg6yzlit33yun4leei2giplbedsc4@5qmkwgvqe6xl>
References: <ZyH-JASRcpMXYsmH@standask-GA-A55M-S2HP>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="w5kjnyt6erghd2zh"
Content-Disposition: inline
In-Reply-To: <ZyH-JASRcpMXYsmH@standask-GA-A55M-S2HP>


--w5kjnyt6erghd2zh
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH] dt-bindings: pwm: sprd,ums512-pwm: convert to YAML
MIME-Version: 1.0

Hello,

thanks for your patch, looks fine for me.

On Wed, Oct 30, 2024 at 10:36:36AM +0100, Stanislav Jakubek wrote:
> +maintainers:
> +  - Orson Zhai <orsonzhai@gmail.com>
> +  - Baolin Wang <baolin.wang7@gmail.com>
> +  - Chunyan Zhang <zhang.lyra@gmail.com>

An Ack from (at least one of) them would be great. I see Baolin Wang in
the recipients of this mail, but with a different address. Does the
maintainer entry need updating?

Best regards
Uwe

--w5kjnyt6erghd2zh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcn2/AACgkQj4D7WH0S
/k4o2Qf9GDLGUusJ6j8lnQsZtz0p4dM9bgK5TBtjFfMNViYS3m42wb1dyY01JK9V
9el6EJfM4hxSiRXy2xfUZucDL24iBW1cNuLSoHaSDl8QqwigBsoZWS4N0WmZXrfy
gD46prwESmWEGeC674kzn1LXzUgTdk4ltNy8CJOZdKknu6IVmoYKi4TjEBmv5k3d
ABFeyT8A3fKRz2FdcCQo6WpXZ59MPewenPKZRaJco31M+c6B6aEuWrN/7DX+Jn3B
d+JP/OpUo6ltk2A7T5PHJOqPNNlyWhqvUG9p5KpxqvkL4md3iZhRk77+0cjnFTU+
eKacDeel68acKHq85vClumTmMIa4gA==
=631T
-----END PGP SIGNATURE-----

--w5kjnyt6erghd2zh--

