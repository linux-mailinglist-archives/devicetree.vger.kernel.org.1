Return-Path: <devicetree+bounces-179011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E2BABE5BC
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 23:09:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7DD264C2E94
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 21:09:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71F6C25228F;
	Tue, 20 May 2025 21:09:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="x6n74Akw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3502472BD
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 21:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747775341; cv=none; b=q85GOC/vwJ8msG0g6XJ05V6GLUGEG3tR+QagcK4vaf+2a1QT1f0RBM67uIWtgaJmerEkQ8dy4oWO5yQVi8uC0eHmTvLYrmUkGH7PsW9ZOqdFHEfwgDTyYvkVWuoiApxzYHedzXQPExY5TblqmTbs36XN/9JLRe5cx1Ki67LDYG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747775341; c=relaxed/simple;
	bh=ihB+rwt5XDis//1sTiN024h8VjUw07QCmCpDrWYU5hw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I1fhLG/6uncehJyywz8cAZ0aqw+dAvi9HFyGrU3QuWf4vjT9r2FgwzpXaD1NMdk42JH/plNZgGNT1FCMEIVhHOEDJk8cYKQMoPDSgmBM24TiV7JaPb4lnLgJCVyjErvbWFzxu79Dnle8OmtD7xhfOMdojZGBZPcINr+jmPeNdbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=x6n74Akw; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7424ccbef4eso6111876b3a.2
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 14:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1747775339; x=1748380139; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ihB+rwt5XDis//1sTiN024h8VjUw07QCmCpDrWYU5hw=;
        b=x6n74AkwAFpbYkt7ERe96mP5gD8BqCUpitL4qEtoQNve/3Ky4A6OewY3JkZWBZz4GY
         wL6fTPt2fUhtTmc9bhOumBSdbK1Z816ZRV0o+CiNq7TEmavE0RqiMZV0VrZINQGkceFY
         B2vdA+vawHS/LnjfJJwxxHxzJPDTvKOzQSZywb0w/yQQeZK5uGbJAcMdszv5wSp3HGvq
         XJufoQDFZQo+DbLZyVZLFEr+kcQHP0qo6J1wAAjlvRdNVO3z41JS46oub2UH2q49uPjC
         RtucD6z83BzAY23u1DjeUnIbZxmG6lxv7RElvHtp07P1OxnAOcDdguMiFUg1ozDxP5TF
         ttlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747775339; x=1748380139;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ihB+rwt5XDis//1sTiN024h8VjUw07QCmCpDrWYU5hw=;
        b=PSh+v8qr5x2eZ/fi5qFqRq0VqXo7vO+nQry46rQ60x7DvEqPXtS06nRxIflPUF33Ol
         YO41cyxIqvX9wK8c0vGB9tG3QZ5ItzhNTM5gwpIBHlGBlGJAwJzqcdAdio0XPfuMLzoc
         NC4ncECHeL2pd0rfSvB0dqI4FNOzK9quZhfLUzyt0DosD4slU5aHvAeCKTK5GFN/i6yj
         gHxkj9RtD7mdm7bCkjc8m7b8z4sXqUA5sb5TmukJ+mI5tkU7kDl/EJzl+Ho+nOkNOjE3
         /H9UGe4wZhXutbOFh4k8pl3LHbrKgimgmGPl6lgleAeY3tkvMDLArkt3yWIMof3r5uZi
         4XSw==
X-Forwarded-Encrypted: i=1; AJvYcCXy0+MWucFdPyNFZ90HuHd69lOx9n9i0cCpd4q72zVQNQoZB69F1tljglXIMKTb1Sc5ovE3zcKqmPTb@vger.kernel.org
X-Gm-Message-State: AOJu0YyhA4QhYm3TvvsrRQyqTfsFYt4aBDHrD1/koT6qr58hKeAjgBe8
	l+uD6FjX6O1m9RaQHAvRRlG8ZoVNR4JNEwBQ268gU2rVESoiW0tU4hIikBE9rTLNps4=
X-Gm-Gg: ASbGncvYy6qSCKuiZdcD3gkU/XkBun3N2Bz1+4SvixRWKgrG2vW3EGJ0kw0ZHt0veYp
	phGFvIbhGW36phARqbbK/rhlHHbdqPiIPieeVn0PuMaxqTeS/rcU9k5KPSIy4MzRkaPiJe2gkSK
	BGkuKfEK2sGOjiNOcleWnO3uKqVg72sWOEcGbi8Kb8tXMhJ/feTTcpCLl3dxssUltK24EIHMP9+
	yULLcK/4ixd0C+HM0Jh8W8WvAxkTv9pwhm3lx9JRT4ZAfDjWUgA7w9XzMx14i4aJ8ElylUI9Jj6
	+pnJ8U58d1DOcN9GY9I+r1snpfNvt6kMs0QpyXeStAshj98enwlgbtYoDTYRKkWs49SG1tloDA=
	=
X-Google-Smtp-Source: AGHT+IG0jhM90gGAp66mKqR5qQF6fDuQGVKEcTsZXkZTJKrN/agp03BwEkWo8NiFt8QodeRgqFhKrQ==
X-Received: by 2002:a05:6a00:1414:b0:736:450c:fa54 with SMTP id d2e1a72fcca58-742a979528bmr23777834b3a.6.1747775338866;
        Tue, 20 May 2025 14:08:58 -0700 (PDT)
Received: from x1 (97-120-251-212.ptld.qwest.net. [97.120.251.212])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a9829bbesm8361472b3a.89.2025.05.20.14.08.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 14:08:58 -0700 (PDT)
Date: Tue, 20 May 2025 14:08:56 -0700
From: Drew Fustini <drew@pdp7.com>
To: Conor Dooley <conor@kernel.org>
Cc: Oliver O'Halloran <oohall@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, nvdimm@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: pmem: Convert binding to YAML
Message-ID: <aCzvaPQ0Z3uunjHz@x1>
References: <20250520021440.24324-1-drew@pdp7.com>
 <aCvnXW12cC97amX3@x1>
 <20250520-refract-fling-d064e11ddbdf@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="OZWMYPezFAgPwp6M"
Content-Disposition: inline
In-Reply-To: <20250520-refract-fling-d064e11ddbdf@spud>


--OZWMYPezFAgPwp6M
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 20, 2025 at 04:51:42PM +0100, Conor Dooley wrote:
> On Mon, May 19, 2025 at 07:22:21PM -0700, Drew Fustini wrote:
> > On Mon, May 19, 2025 at 07:14:40PM -0700, Drew Fustini wrote:
> > > Convert the PMEM device tree binding from text to YAML. This will all=
ow
> > > device trees with pmem-region nodes to pass dtbs_check.
> > >=20
> > > Signed-off-by: Drew Fustini <drew@pdp7.com>
> > > ---
> > > v2: remove the txt file to make the conversion complete
> >=20
> > Krzysztof/Rob: my apologies, I forgot to add v2 to the Subject. Please
> > let me know if I should resend.
>=20
> I see how it is Drew...
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks for the Ack and sorry about that :)

Is it now just a matter of Rb from Oliver O'Halloran and this patch
going through the nvdimm tree?

Thanks,
Drew

--OZWMYPezFAgPwp6M
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSy8G7QpEpV9aCf6Lbb7CzD2SixDAUCaCzvUQAKCRDb7CzD2Six
DCUOAP9sDOAZPBBh/QTUuTF1j14KmqDTeNB0fB4FKon6h0DjcAD/ZUEtPbEC3x1+
kIv4K/IlzKAkFPw7HYaorSXa3OynQw8=
=TyR2
-----END PGP SIGNATURE-----

--OZWMYPezFAgPwp6M--

