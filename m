Return-Path: <devicetree+bounces-225111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F56ABCAA6B
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 21:09:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 031014E1CAB
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 19:09:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4372C25179A;
	Thu,  9 Oct 2025 19:09:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="W4Tl8U5g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94D421D86DC
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 19:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760036959; cv=none; b=IztX/lrGPY3znTe6tRgZUN/cyXKwvs8t1WoT0oKvEp/q/aLwFhhS40mBIPkxoc5A+Pmv2rKjZUFYKXus1M0s+ZbAcSVhvaTUFsH5MwdJ0u/yNO4q68yQJtlN4e5mTSNJQ49+3iKD3XCcc4B8amZTf/HYx5FD+K+3moUGyaHw4RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760036959; c=relaxed/simple;
	bh=9MqJx0gUQ52TxA2W7Y25VlgDCtAIuV9z6Jv2hVaa4+4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ubySiZDDPpzWMEQ7fKrKNGbdU8DoVQOzq//ARe4Kx8C2zuYSCLXC76V4Q1ZHmoGWMuLQ1dKwOKDYbRHejq3JbxJDs+b7ByG5/u/V0peOgqJJNIq+2S4b9te8fRl22VQ1+CBl+DdvNN/I0TQrJ+iNB0idhypUwCWKaod5KVP4kSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=W4Tl8U5g; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-3352018e051so1627340a91.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 12:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760036957; x=1760641757; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=F9f8IRpEk7412bbQluvPNm0ibdpWeLSvfeZRqJSy12s=;
        b=W4Tl8U5g98MCTpNDHxikhqcZmExfcrJWvg4dOen4Omny2CFiyJp8EdVlA6+wu2aw/+
         z3zVURvhjT/knkigfJXoAwvGSZiJu5hKx/CEf8ohKDNgkI627jNAPI9rUVOxNgYJSHxH
         +ZDLK8NvYW8uWA9wcz6woeY9YW3f5bW3clyPVr+fA5CCWkwXhLL1ifGR5vUl2sAYeJFp
         sAgCGRcsPl9w35eq5/JhTCrcmdYWAFa8rw+mxUYQ4jeioxPWUtJBncCf4lcyXSrvcNUh
         FUUOwLjZvg8AuNfyq1jVTnPlrEsPocix28drrYARMF/MtqpMpxHeQ8FoyQiiy7sQFkSl
         9YJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760036957; x=1760641757;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F9f8IRpEk7412bbQluvPNm0ibdpWeLSvfeZRqJSy12s=;
        b=FEWx7jf69jHmmgoOlqveAGepX9PtaYBxlqdZ3TKFS+dF+abGPEgQHt1V80aMwrjxsi
         z5tIpsrhQOG5Oq68oNobdB86B8m/yOrO8BBWwyqCLWZ+MRatKCscSzfWnunqWC7sW0R5
         qtwTcJB4Z8suqsKq0L162qnYJIKR3GKbWJ5V+dM/nvcoA+9ECi2xP9QKV7SkFgJO30SY
         jb8Qg1R+IyoXYNbLszAmkNrMAk+gYuMFZMU+kbtZYrfdbnUpmz4nZRdJ6F3UHw57RRuv
         YcSX5qbkLuqRi6nIJDxdeLP2Nu5z4DL14Hqb//F5hTrkEomK0rsNgbVCjBHFf+WaZhA3
         I4ag==
X-Forwarded-Encrypted: i=1; AJvYcCXKGkXesQ6/9BGm4j8K5a5lZqEat/q3YpUiOr6xCrbabi1O2LG/7grXlnbUBxOTvHvad59qmQ7UvguT@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/F++qeMPZpP17LaiFOxx87kE8b/iL2fZ/58CzSaipbHex/lYz
	rnidbr0148wCe6qFQCU8AhSYv1BGH7lDjUockSmsOf7tuIdUOLy9RMS7fsYgI3ZUSQ==
X-Gm-Gg: ASbGncvjIZtzmYceBcoz+XgIqIFp/VcUkjT9g9IbTH/hHw8NVu+nNEAOV0e9UsfZnrH
	iZsmM0cenU64FchA8Z7Je775KM4LsET9YRhQc7ADi9dg7dNTPLiaF3LCXS+0UKv+kuI9QVngQJt
	DzDXS00/2Pjyio0DoLPh/8kIdy2P0A1syWRsaecwG55n/LiLHq7U5CyrKNVFnL+rNqWHMbmGIH4
	ArIT0sV0wlp4uPp9fTq4lhVXCAkoNmtbHyWAhPLPcNAsugndAD7naUvpBnmnUXCb/2y+58pwiyF
	ZNXGsRH8PjNTdvktqMM//FgsImly6X7OBD1sKb5+OCpGm7grWANcAwNdhl6H9hPTS5Lm2/TR4Dt
	9s7s2o3LJ7qmCGzcgairvTTVXi1fuX4ol8369ZbU0QUjeCedKyF+QrHtie/9BRKci2mNakXnRJQ
	K7eLfehE5wmuf4XtTEkCki
X-Google-Smtp-Source: AGHT+IFiiy8pdKItHau7Vu35qTjP3kxvgOkUtJD04Wd4W2kcZYRbMdfuRPhFg5zprKgeTIznJzWWOA==
X-Received: by 2002:a17:90b:4c06:b0:335:28ee:eeaf with SMTP id 98e67ed59e1d1-33b5138e51amr12457527a91.29.1760036956315;
        Thu, 09 Oct 2025 12:09:16 -0700 (PDT)
Received: from google.com (232.92.83.34.bc.googleusercontent.com. [34.83.92.232])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b6262de8bsm313096a91.5.2025.10.09.12.09.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 12:09:14 -0700 (PDT)
Date: Thu, 9 Oct 2025 19:09:10 +0000
From: Benson Leung <bleung@google.com>
To: Jameson Thies <jthies@google.com>
Cc: akuchynski@chromium.org, abhishekpandit@chromium.org,
	krzk+dt@kernel.org, robh@kernel.org, bleung@chromium.org,
	heikki.krogerus@linux.intel.com, ukaszb@chromium.org,
	tzungbi@kernel.org, devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: chrome: Add cros-ec-ucsi
 compatibility to typec binding
Message-ID: <aOgIVjMXHWkyzV-N@google.com>
References: <20251009010312.2203812-1-jthies@google.com>
 <20251009010312.2203812-2-jthies@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0e5tzWU7Zc/f40iO"
Content-Disposition: inline
In-Reply-To: <20251009010312.2203812-2-jthies@google.com>


--0e5tzWU7Zc/f40iO
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 09, 2025 at 01:03:06AM +0000, Jameson Thies wrote:
> Chrome OS devices with discrete power delivery controllers (PDCs) allow
> the host to read port status and control port behavior through a USB
> Type-C Connector System Software (UCSI) interface with the embedded
> controller (EC). This uses a separate interface driver than other
> Chrome OS devices with a Type-C port manager in the EC FW. Those use
> a host command interface supported by cros-ec-typec. Add a cros-ec-ucsi
> compatibility string to the existing cros-ec-typec binding.
>=20
> Additionally, update maintainer list to reflect cros-ec-ucsi and
> cros-ec-typec driver maintainers.
>=20
> Signed-off-by: Jameson Thies <jthies@google.com>

Reviewed-by: Benson Leung <bleung@chromium.org>


> ---
>  .../bindings/chrome/google,cros-ec-typec.yaml | 19 +++++++++++++++----
>  1 file changed, 15 insertions(+), 4 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/chrome/google,cros-ec-type=
c.yaml b/Documentation/devicetree/bindings/chrome/google,cros-ec-typec.yaml
> index 9f9816fbecbc..fd1a459879bd 100644
> --- a/Documentation/devicetree/bindings/chrome/google,cros-ec-typec.yaml
> +++ b/Documentation/devicetree/bindings/chrome/google,cros-ec-typec.yaml
> @@ -8,17 +8,28 @@ title: Google Chrome OS EC(Embedded Controller) Type C =
port driver.
> =20
>  maintainers:
>    - Benson Leung <bleung@chromium.org>
> -  - Prashant Malani <pmalani@chromium.org>
> +  - Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
> +  - Andrei Kuchynski <akuchynski@chromium.org>
> +  - =C5=81ukasz Bartosik <ukaszb@chromium.org>
> +  - Jameson Thies <jthies@google.com>
> =20
>  description:
>    Chrome OS devices have an Embedded Controller(EC) which has access to
>    Type C port state. This node is intended to allow the host to read and
> -  control the Type C ports. The node for this device should be under a
> -  cros-ec node like google,cros-ec-spi.
> +  control the Type C ports. This binding is compatible with both the
> +  cros-ec-typec and cros-ec-ucsi drivers. The cros-ec-typec driver
> +  supports the host command interface used by the Chrome OS EC with a
> +  built-in Type-C port manager and external Type-C Port Controller
> +  (TCPC). The cros-ec-ucsi driver supports the USB Type-C Connector
> +  System Software (UCSI) interface used by the Chrome OS EC when the
> +  platform has a separate power delivery controller (PDC). The node for
> +  this device should be under a cros-ec node like google,cros-ec-spi.
> =20
>  properties:
>    compatible:
> -    const: google,cros-ec-typec
> +    enum:
> +      - google,cros-ec-typec
> +      - google,cros-ec-ucsi
> =20
>    '#address-cells':
>      const: 1
> --=20
> 2.51.0.710.ga91ca5db03-goog
>=20

--0e5tzWU7Zc/f40iO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQCtZK6p/AktxXfkOlzbaomhzOwwgUCaOgIVgAKCRBzbaomhzOw
wpeAAQDiXMiRuPeOqgOPTPEP4cX+Ib+zQo2hcnRSBWZWrG1kDwD9EKi/tbH16fVU
aPsEzu+VVH/RPO5y7lciksg04qVVhgU=
=xh+u
-----END PGP SIGNATURE-----

--0e5tzWU7Zc/f40iO--

