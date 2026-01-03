Return-Path: <devicetree+bounces-251187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9711DCEFD61
	for <lists+devicetree@lfdr.de>; Sat, 03 Jan 2026 10:24:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 921803012957
	for <lists+devicetree@lfdr.de>; Sat,  3 Jan 2026 09:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 656E6274B40;
	Sat,  3 Jan 2026 09:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d8HzXp6S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E927A1A0B15
	for <devicetree@vger.kernel.org>; Sat,  3 Jan 2026 09:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767432268; cv=none; b=rGOkbLYV2SpT7W7CpD1oQ34qU8Z7V67Lh0OrJpoqKbyenkQicRU1cTOoH499y+MPVVLEGT3dfmSVJTiRpwkYszOHcokj6LraM6CBk4K13F3dvoOT3Kwlkk5WUA1HRUDfg3wNVDx/aql+5aWVM5gQIGU7hbK96I49138KK0fEI70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767432268; c=relaxed/simple;
	bh=dxBTfAqbU+ssYiCyBcmLofVhgWHDWq+BxIX6sti7n9M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h+1UUcVELTRfWsbMkSwJZrjCDqMYC8oS1Gl2yN8DLnkmgdQNT27JU/nDLhqg3xO4f9aOBCwPSeDAiicPmvWIFixqrLzTNG/jcUuxh3rKLcy5QTcNJe97IEaQZ+67qUpZqxYxJ+AJC4l6/M1epDZD1GNDIOnl/LqK5XiIWY/PDRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d8HzXp6S; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2a0eaf55d58so2634785ad.1
        for <devicetree@vger.kernel.org>; Sat, 03 Jan 2026 01:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767432266; x=1768037066; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3rBvkbWafymKYM9EOiGX/O5p8v9z+L13Xl9gXWhIxg8=;
        b=d8HzXp6Sv1tVxsd1seIRycsQLIRjCExOuanRIULd9UpxHDlTv1LWQIXkuFCHdDm58S
         DuO22/cAcDnfU06SBxiKuBlYTI/DI6KHn0GzK8fEvf8O4Fg4mH3wzA0oHgFdcYHBEu0G
         +xwioL8ICw4yD+tPKt38Bur/iwT8y4F5Jj3rdMs+ITY3fd3B1OGls1pvCbZva2MlcXmy
         GQYLXnrxAph/bMKt4+u0LhLbzYeQJ83dLIBuTpwHagS52rZUzcT+pWP6kXp9ROtaeU24
         2dS3V3a830wOvO6kYUvH/ClglzzwM15DZfMQzHpc6a7hICzXpkUo/7fl9vd+YJbqLmlG
         ZrFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767432266; x=1768037066;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3rBvkbWafymKYM9EOiGX/O5p8v9z+L13Xl9gXWhIxg8=;
        b=wT1VYydygbH3+rwRn3T/D9d++2EL/uN2w1JD2sU0DPzn1Hin/pE1RA71Ff2kR4GZZi
         eTM/lOnVPaF2W4m2LfJrge2+MUfeB0E39INUoPLnNGRF184+Kq6aRB4tx1qsjFLXg1IG
         uZ58Ozl+pNqPGpoO346NyULU4Q6A6w7crZzaiPSxaJXVPlcJn910o5UaFMpo41/n9Awg
         rLkHEyJ8FHSQQHc940i1cg5XYiubyhW0ES6cL40cnQw2TDzlk2W/WuyqTabpqKC7C//q
         LIyKGaZJBvXq2EirReDJ9hXFQ63KnkLs1AL9qvQGwaULjUNuBLom2ia/12zzjhbFKSnF
         QzOw==
X-Forwarded-Encrypted: i=1; AJvYcCWAKkYofNjNJlXDBkNLfstZ9N8FZklmbvOi14ni3Pj9NWaHBLXb9Vkygd9xNnx4i4KXD2LOJA1qip0U@vger.kernel.org
X-Gm-Message-State: AOJu0Yyl/3jRum1eNBAUDd9ct2XuKpi/G+FRqXMiwAZcFuwNGCmxwnqd
	nmDGUrsbbW1uY3QjVOMYm5A1rDOg4GKV5diqyM8dYH0E0CdX4GwOuntX
X-Gm-Gg: AY/fxX4Bdpcnr2NcHzhpFS1FRJJ8wFqOgCZ53y+ZN6bOjw/rXYbJkRic97JCPby+mCQ
	ZAuVqgPHTgc+Qk7A62G6Dtu0VGr/ARDaW8/h2p+u4buXE9Ygw7TGz6Ii7EPWiziNb9DGJiTRopw
	12HQK6B+3f6tSKj9gCwgoXP27hxLGQW7t8vpqrWUOh7J2RdvRm9UZXyr15HZZbHf5Y2uwWD9UwK
	BIuG7EDGtI0x+o88pasGBTKIz/9MsHDNcvIAYu830JCsOiy8lQ5NYK93+Qjz8SNbPOAgB/SpEjY
	Hli6MeDe7hX8F3Pd/UsePId2CVhQPPH9QoMFx6Xa9awKE7CI7Jiscx8rHWlP+Is6cO+ocNSHASK
	8cgH1TGnLuGZV81yaBXAXecZ9BW3FeM8081LmduT6TDrjh8UzseVhtjBCEqkMnpd90XDU7JFvFW
	+4seYIEiAiWiY=
X-Google-Smtp-Source: AGHT+IF5WnbVRDZXotUf8TYSEatYXXMtOCulL97ured8qdtvof9WPxhocfj6Wfwn8gpky0XJdeJhYw==
X-Received: by 2002:a17:903:1b07:b0:294:8c99:f318 with SMTP id d9443c01a7336-2a3c0956190mr21049255ad.3.1767432266011;
        Sat, 03 Jan 2026 01:24:26 -0800 (PST)
Received: from archie.me ([210.87.74.117])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c8286esm400700485ad.33.2026.01.03.01.24.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jan 2026 01:24:24 -0800 (PST)
Received: by archie.me (Postfix, from userid 1000)
	id 088484092C2B; Sat, 03 Jan 2026 16:24:22 +0700 (WIB)
Date: Sat, 3 Jan 2026 16:24:22 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Alex Tran <alex.t.tran@gmail.com>, Andy Whitcroft <apw@canonical.com>,
	Joe Perches <joe@perches.com>,
	Dwaipayan Ray <dwaipayanray1@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH] checkpatch: Fix false positive check for dt-binding docs
 and include
Message-ID: <aVjgRs4ODrKiItvd@archie.me>
References: <20251224-checkscript_dt_bindings_fp-v1-1-0e18877ced62@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6ebmoGS4bKF0vTAw"
Content-Disposition: inline
In-Reply-To: <20251224-checkscript_dt_bindings_fp-v1-1-0e18877ced62@gmail.com>


--6ebmoGS4bKF0vTAw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[CC'ing devicetree people]

On Wed, Dec 24, 2025 at 05:41:17PM -0800, Alex Tran wrote:
> The check for when to display a DT_SPLIT_BINDING_PATCH warning
> is performed on all files that are not MAINTAINERS files.
> This causes issues, specifically when checking against a
> patch that only touches docs/dt-bindings or a patch that
> only touches include/dt-bindings. The warning is still
> displayed when it should not be, giving false positives.
>=20
> The check for when to issue a DT_SPLIT_BINDING_PATCH warning
> is currently too pervasive and should only be performed when
> a change under docs/dt-bindings is detected or include/dt-bindings.
> If the current changed file is under include/dt-bindings or
> docs/dt-bindings then it is compared to the last file detected
> under include/dt-bindings or docs/dt-bindings. If there is a
> difference then a warning is issued.

Can you elaborate on example of where this issue occurs?
I'm still confused...

>=20
> Signed-off-by: Alex Tran <alex.t.tran@gmail.com>
> ---
>  scripts/checkpatch.pl | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>=20
> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> index c0250244cf7a3cb5e289b04fa4a9f644692dc278..fe3499bc9adda158c88231b48=
b3b0100f3af0ee1 100755
> --- a/scripts/checkpatch.pl
> +++ b/scripts/checkpatch.pl
> @@ -2668,7 +2668,7 @@ sub process {
>  	my $authorsignoff =3D 0;
>  	my $author_sob =3D '';
>  	my $is_patch =3D 0;
> -	my $is_binding_patch =3D -1;
> +	my $is_doc_binding_patch =3D -1;
>  	my $in_header_lines =3D $file ? 0 : 1;
>  	my $in_commit_log =3D 0;		#Scanning lines before patch
>  	my $has_patch_separator =3D 0;	#Found a --- line
> @@ -2924,13 +2924,13 @@ sub process {
>  			}
>  			$checklicenseline =3D 1;
> =20
> -			if ($realfile !~ /^MAINTAINERS/) {
> -				my $last_binding_patch =3D $is_binding_patch;
> +			if ($realfile =3D~ m@^(?:Documentation/devicetree/|include/dt-binding=
s/)@) {
> +				my $last_binding_patch_is_doc =3D $is_doc_binding_patch;
> =20
> -				$is_binding_patch =3D () =3D $realfile =3D~ m@^(?:Documentation/devi=
cetree/|include/dt-bindings/)@;
> +				$is_doc_binding_patch =3D () =3D $realfile =3D~ m@^(?:Documentation/=
devicetree/)@;
> =20
> -				if (($last_binding_patch !=3D -1) &&
> -				    ($last_binding_patch ^ $is_binding_patch)) {
> +				if (($last_binding_patch_is_doc !=3D -1) &&
> +				    ($last_binding_patch_is_doc ^ $is_doc_binding_patch)) {
>  					WARN("DT_SPLIT_BINDING_PATCH",
>  					     "DT binding docs and includes should be a separate patch. See:=
 Documentation/devicetree/bindings/submitting-patches.rst\n");
>  				}
>=20

I can't say for the actuall diff, though.

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--6ebmoGS4bKF0vTAw
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCaVjgRgAKCRD2uYlJVVFO
ox7hAQDfn980jqte9BkPwixk9XoUzaNjYpqT/e4wyg9tRHk4dAEA851Dr+KzTRkO
UdXS3N2Jf5QfORvhS7Qy30knYVgmlQ4=
=nA77
-----END PGP SIGNATURE-----

--6ebmoGS4bKF0vTAw--

