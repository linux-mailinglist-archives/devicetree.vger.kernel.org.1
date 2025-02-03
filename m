Return-Path: <devicetree+bounces-142473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DEDA25850
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 12:39:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B940F3A3614
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 11:39:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7D0A202F90;
	Mon,  3 Feb 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="I02vjXZY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEFF6202F99
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 11:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738582793; cv=none; b=FfzUY4iDgmJZV9oLZlgbVYOmv1rXtKoLf+niZ5Ja5JAe61wPbHYP6GO6ToVcPkw2BngO6vwDv+8A8mFEZX1EzJ9WtqZAATH+2vF7QyKZXqaV8WqhxL4ef+aT5Qj7Oq3MK+7FzIBEUaT+rlUdBReqz+K0Q9Ocl63mVUu1e1BHB+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738582793; c=relaxed/simple;
	bh=/0pDdRK8FHvzGryB40ZDKPZhSiIwc4CVzJrXTpwydU0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S9Eye/roSadyXgmyXwI46m9LPb+2d1035/0Oovl7tGZm9rM+tDnp+9XYooArfj91fJm1fzzIeliKpIXnZY2cSM5bxA2HBXW9ZaP8UZ1tX/WXNgyQztyP1gTcmsQdsbJYhYaG+pLiDaISMWqr3lg3iuJSsuGFF3cv+Q2U1Gj/xMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=I02vjXZY; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ab737e78900so70762766b.0
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 03:39:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738582789; x=1739187589; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8BXrdJDAlUgRqrgaymmaSYWRF0wWfscG1nGJMjIFxBE=;
        b=I02vjXZYDtTnk+C4v4AJ+l1ljJXv21vJyhqRoGrkhN5/NB+EEdfOS+jmfrHnZykY/k
         2W4ODklnIuZF1JIu7fWBLrTYkH0w8EW8XVPQAOBCtNHgUOzTA25omOydDWcjnOyu+dPc
         p2LeSDyRMEx1hzDvitgMVQip/2QQ5tjZ5JcoSgKI20t3j1qdFa72b0JpUUIU4GN8l7uU
         nL8puPlgvZdQdt298k63QCLYlIqjyHP2N7F2chz9ZYMGsM3m6q5Ft4rLFKCZr1i5OKUc
         HzuioshiFVfpZVclxrMFylWNaMr2KEfhSY3aUOuqiA7PjUoNywCdbGXuyYPa5F6vJ7N1
         ZM0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738582789; x=1739187589;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8BXrdJDAlUgRqrgaymmaSYWRF0wWfscG1nGJMjIFxBE=;
        b=XYDopndKThdW8ILgFa/Xsexju2DLqq4sK63DNHj9KOWu0+SFUs/99sZAC6FR/EcgtM
         6zbedvzwZbyr9SqWq3lPUWgLzdI/C5rTywCY1jG2dy6dObULet4hKcU1N/F5BNJyRzP9
         1SZF/rQRnbx+0emw8iqvdEGfROblPvImIttJY/bYFLSTG2KeVzS4Xt0/YQEuu17gyxc5
         yho1x4uX+rtbZK/x5N7bbIP9S+wcB6UEGzVrjXC1OB3bBq0RRXKdsW5e7UCVLBd3Wprm
         nQGnXsm/TpjUrpz2LSDTLYDOTKg1XBP7nzZW94tBYDtnc7Z+U+XTdLQXJIJi30jpfzDm
         Mi7A==
X-Forwarded-Encrypted: i=1; AJvYcCXrh4f6WOzz+hqnABha6G8KxyRuBlkEcntbkZiOao2da/khKhOlNJCtYZOLYMpraHAXjSHDT3ulgUvs@vger.kernel.org
X-Gm-Message-State: AOJu0YzcHP4eNaR2Z/0PjRU5g5hchsyS8XmWCkYzMGx0PkP6KDaYvpVN
	236ZReE73TaS9KJyN/YbAvZkFCfC+Suy7xP385qvkUGUeEj58IWHMnUu/Ey1uw7gnKeNTx4YOg2
	A9b07D8Uc
X-Gm-Gg: ASbGncslqoYyv+t9wANPf4xfPOe0QkJ4t/MGvQZORS5+M/PkGC5zbAO/VQw4QQcSrD0
	5Cj4llPn59nm6Zwt2Wc7agoljgt2oWgYtd0fxe/TbMVAXgnlpVkF2AUxR/EFk2J9qzd3Kn2pAxe
	6nm1up904pzfcFY3A45cZnZQBo9r9a2BwyiiMB9rer3GeApitai3AKaIrPKF3MFZDJFtdkeacut
	wwgmADmYDZtiXkTSGLjGLDft7NVt4L89oCdiMt67IyU2YCF7xIbrk4zEDKCNJ4P0erZ77XAvNRC
	DFAy/J4unuyVqJn78iaHDfhhQgFV15/me10Pxz1lbC00v3rzL3MMdTGUdQ==
X-Google-Smtp-Source: AGHT+IGZzhEabUTBviGKkUWT4f2kPeGhVUMDYNNfH6ue3t02mzfYOitus18sFXW7L4kB9Hc5CNqASQ==
X-Received: by 2002:a17:907:9622:b0:ab3:3184:6890 with SMTP id a640c23a62f3a-ab6cfceb881mr2384239366b.33.1738582788923;
        Mon, 03 Feb 2025 03:39:48 -0800 (PST)
Received: from localhost (p200300f65f018b0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f01:8b04::1b9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6e4a3145bsm743494366b.135.2025.02.03.03.39.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 03:39:48 -0800 (PST)
Date: Mon, 3 Feb 2025 12:39:47 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, Andrew Lunn <andrew@lunn.ch>, 
	Dinh Nguyen <dinguyen@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] ARM: dts: socfpga: Add basic support for Terrasic's
 de10-nano
Message-ID: <6r4gx4r3yjefo2zhjfoq4ebozcjbkozaof3imouub52f4o2ebj@i7ajlqhs7zae>
References: <20250130074553.92023-2-u.kleine-koenig@baylibre.com>
 <173828013131.1872475.6879199940703724951.robh@kernel.org>
 <qkruehkvdduotjzhut3w2fpbr364dtd2vztpewoy3h3j55bqxt@e5niklwtpuue>
 <3101a214-1498-4671-9062-89d2f9d8369b@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uvp6oc667tbjxgbl"
Content-Disposition: inline
In-Reply-To: <3101a214-1498-4671-9062-89d2f9d8369b@kernel.org>


--uvp6oc667tbjxgbl
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] ARM: dts: socfpga: Add basic support for Terrasic's
 de10-nano
MIME-Version: 1.0

Hey Krzysztof,

On Fri, Jan 31, 2025 at 10:28:52PM +0100, Krzysztof Kozlowski wrote:
> On 31/01/2025 17:47, Uwe Kleine-K=F6nig wrote:
> >> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnin=
gs
> >> are fixed by another series. Ultimately, it is up to the platform
> >> maintainer whether these warnings are acceptable or not. No need to re=
ply
> >> unless the platform maintainer has comments.
> >>
> >> If you already ran DT checks and didn't see these error(s), then
> >> make sure dt-schema is up to date:
> >>
> >>   pip3 install dtschema --upgrade
> >>
> >>
> >> New warnings running 'make CHECK_DTBS=3Dy for arch/arm/boot/dts/intel/=
' for 20250130074553.92023-2-u.kleine-koenig@baylibre.com:
> >=20
> > Maybe I can learn something here: Is there a command that only checks
> > this single dtb file?
> >=20
>=20
> You asked about this and I gave you the link to blog describing this twic=
e.

Ah, I thought I knew that blog entry and have to admit I didn't recheck.
It seems I remembered wrongly. Sorry for that.

While pointing to the docs only is legit in a review, I think you could
reduce the effort for patch submitters (and so maybe also the number of
patch submit iterations) if you mentioned the command to run that lists
the problems. Of course not completely reading the fine documentation is
no excuse.

A bit related to that: I think

diff --git a/Makefile b/Makefile
index 4117cc79748b..e6bde20152f4 100644
--- a/Makefile
+++ b/Makefile
@@ -1759,7 +1759,7 @@ help:
 	@echo  '		Multiple levels can be combined with W=3D12 or W=3D123'
 	@$(if $(dtstree), \
 		echo '  make CHECK_DTBS=3D1 [targets] Check all generated dtb files agai=
nst schema'; \
-		echo '         This can be applied both to "dtbs" and to individual "foo=
=2Edtb" targets' ; \
+		echo '         This can be applied both to "dtbs" and to individual "$$v=
endor/$$machine.dtb" targets' ; \
 		)
 	@echo  ''
 	@echo  'Execute "make" or "make all" to build all targets marked with [*]=
 '

would be an improvement now that vendor subdirs are usual. I didn't know
that worked and I was annoyed more than once about that because I expected
the right command to do that was

	make [...] arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_de10nano.dtb

which doesn't work but is (only subjectively for me?) more intuitive
than

	make [...] intel/socfpga/socfpga_cyclone5_de10nano.dtb

given that the full path is also what you need for compiling individual
C files and having to specify the full path of the file to build is the
norm for the make build system.

Best regards
Uwe

--uvp6oc667tbjxgbl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmegqwAACgkQj4D7WH0S
/k4FFAgAkfDqn54EWZPlQVy1U9gd2RWgd5pU1tzUZW6nxyxJ5isULdlDmXBYlQLb
2Pcc0LHmnLPKBfVAh7xGjBzXrrltYMi9sGjWVgLpvAC0cnn+5rs+6xudd7REtiFM
tj7xTEpwgrzYQGLOXPzOwfqMIA94/CWtfMq0JZtrvdCQgzu81Z6J2meZFBqx6o7Q
alNNiTkMuWFqX1yKmfi+RUtHZIcGF5gXoiJ5Qfsp7skZaIgvxcy3D4KUncNNHRRf
2VQ1sln64wxkR89f0AJgO80u3Wpa69fiRQU+7qNFtltNELvPtoFuwVNiIQUQlnVL
1qbt5OSvouZHawwRUGHaZSlj/qS5SA==
=MY9T
-----END PGP SIGNATURE-----

--uvp6oc667tbjxgbl--

