Return-Path: <devicetree+bounces-216385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E067B549C1
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:27:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A38AD188E264
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:27:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E1222E2DE6;
	Fri, 12 Sep 2025 10:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RE/4tV7Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 805942C0297
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:27:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757672823; cv=none; b=Q+713WEACSnkszalY+ia+KyGAuAyxJxHn7zRaV+HBIU9EG0IIc2kDB4mnK3ipQeDzQ66d9KD0MV8JFaJ/8hXYLa9BmNJrjyCSGztKO0fzwsoxUg0zEnlGrgNa3uRhxVdcRfsEkZQQCz1O6r0zFtV++DgvfaUxTDkIwlZZ+paiFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757672823; c=relaxed/simple;
	bh=a/aXEMGb2BQDbPqE+kiC0jbKGYkUHUoAmyib1xRnP7E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NUfq/BzylSJqeMix9/a4XSjmm3N1WtAdgLmhgPs/dFT+tJ5T8gP89SU2Ot76r9Vfg3CbzCNds7NZSw9ke94IMJSoCUFtpjaupwXsO0LTh4vGX109bAJnZeoRBCiv30rC8M91AugPSC3ENBnQG3IfpXOC8rj9/YFAfftobXBimPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RE/4tV7Y; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-45ddc7d5731so12497255e9.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 03:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757672820; x=1758277620; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VEszHJ67kocets8ry4iAcIkKEULLubcUd+fSnC0UnKU=;
        b=RE/4tV7Y4LN1WirJdE64Tp/ROSNGu6T/IPF8AWszaNqFeUgZ4g9RRu3L7R0vMVrSLC
         b7STZLa6vCwgdwWH+PHLS43tYUH2ZDlw8aGtXfrIytZqmSZtVQLO6kzKs8wGfaKm0H8M
         PelDnxWJMlXosRGSXMStlKlYViy8YK/aTQxQr6iioGid3HseYrmuQfNGXjISFeriBXwq
         p1m8ciQPoGUfeDJElUI7TbEbQ/pTyu+ICiWk29phNLUfr9ErSc664eoZAtGjdxrZgQex
         xWAnr0E3ExmtnGeVo5exREB6d1uQLFxlv9KgrwrWcNqgH1iUDapR25WsZESydkT9uQma
         e7tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757672820; x=1758277620;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VEszHJ67kocets8ry4iAcIkKEULLubcUd+fSnC0UnKU=;
        b=hgRO/RclqMpaoW8j1dXOoCzt09X6c3gx4bAeI8L8EL8tYzycIK7hweGHmgc77Iv1cP
         +QNSz9OlC2PDsvUVJ2OMzzFshUogYGkIQAXUe41LjpUloKuA/baRyWza75kU/u6bkDTF
         1U8jhyvofl0IygjzvuNEq8km2UvyGi9Ar898E+N37Qrnho0IDHnzdbQJ00QDghqanwic
         nT5LoLc4IKeFQg0POE3LrYx1Kq5ndqI5mPiKXvwVrUEbMuaP/OnhZoO93MmgCtzPaRah
         wpsZCzDqKVnotgAJnoE36JW0FH7tXl3xgogCCO63aWeXyV2nPnGXOmVYaUVqH/XTDOO9
         ghLA==
X-Forwarded-Encrypted: i=1; AJvYcCVMI8dUgszcoKtAiBejERLSryc0gdM3Qe1P29Iu6CUHC1Xyk+YJdp9N7uZjOYkqZHVtBtdEPP8T3iKX@vger.kernel.org
X-Gm-Message-State: AOJu0YwkoTh6R9RqkNZ0arZi5z/LRRb6OuNqq2/QAAlDUMJkkbiA+8UQ
	vfxI7qD+k9XgHi4Kdr9yT/416s5ouCsTzi51PeXRJ62QI/zEyFdd8ub7
X-Gm-Gg: ASbGncsQZJS/qYU6X0zAg65qiGATe+Zbj5SEeroQZ5EuTsUy9d2HOhUVOeLKxYeU1Pu
	Aa1fc9o4p+SKyO9Wb1gIkMmF3keiKS/ExgAjyYrU9rASj+G7dz7b0Kyic8FiIKIKmGILF+fqhJi
	5ra7EYIyvrTtg4Y2a4CyKb956yop40HWWtXoMbpUJ2cjntWlgjQ4WisUQ4P98cRhDniteGPVK/3
	Ijw4ilQvyNIkQT5loQze0O4UFzeNILeGYgaXP2p3tSZZNlIWPF5vyuo8n5G9SgMaO1bWa/XW7kH
	4Kj5e0RZMhsPI4E4N8mbAF/pbvO8kwAiKEenQUxXssaM/yy2y5CBg+C4qvRnQ4SgoSwdLHo7GxX
	u5zLOts6rMgWwMtlM1gSGdOayuG/tdCoe/QLNlnmIHm55P8THE0SgWMKjoRJK6uy4djgp94jWnP
	mk5W7eXjScwBnSC67hSRw=
X-Google-Smtp-Source: AGHT+IEbyHndbn+wwznPnv5dSbk1PDx0bdvxUnNmyX0t9tVPgFtH6+RjNOs4QbIfK49oM38shQc3wQ==
X-Received: by 2002:a05:600c:354e:b0:45d:dbf4:8882 with SMTP id 5b1f17b1804b1-45f215641afmr19183295e9.28.1757672819578;
        Fri, 12 Sep 2025 03:26:59 -0700 (PDT)
Received: from orome (p200300e41f1c4d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f1c:4d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd415sm6002552f8f.30.2025.09.12.03.26.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 03:26:58 -0700 (PDT)
Date: Fri, 12 Sep 2025 12:26:56 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Svyatoslav Ryhel <clamor95@gmail.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <treding@nvidia.com>, Mikko Perttunen <mperttunen@nvidia.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/6] thermal: tegra: add SOCTHERM support for Tegra114
Message-ID: <amc5e3sffmwqguivwch6b5vtmlgu5dlwxm7bsrn6nd3rllbvxg@koqmavn6uuy5>
References: <20250828055104.8073-1-clamor95@gmail.com>
 <tdknls7jieu4ple3qhmdqntllmctks2auxhxzynwjjmgl3hnx2@nubqlzpgohwf>
 <da8aa4c5-4aa0-42f6-acb6-55d37cc29774@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="77pu5semdcfvsxfi"
Content-Disposition: inline
In-Reply-To: <da8aa4c5-4aa0-42f6-acb6-55d37cc29774@linaro.org>


--77pu5semdcfvsxfi
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v5 0/6] thermal: tegra: add SOCTHERM support for Tegra114
MIME-Version: 1.0

On Thu, Sep 11, 2025 at 08:56:12PM +0200, Daniel Lezcano wrote:
> On 11/09/2025 18:27, Thierry Reding wrote:
> > On Thu, Aug 28, 2025 at 08:50:58AM +0300, Svyatoslav Ryhel wrote:
> > > SOCTHERM is thermal sensor and thermal throttling controller found in=
 Tegra
> > > SoC starting from Tegra114. Existing Tegra124 setup is mostly compati=
ble
> > > with Tegra114 and needs only a few slight adjustmets of fuse calibrat=
ion
> > > process.
> > >=20
> > > ---
> > > Changes in v2:
> > > - no changes, resend.
> > >=20
> > > Changes in v3:
> > > - expanded desciption of "thermal: tegra: soctherm-fuse: parametrize
> > >    configuration further" commit
> > > - changes title of "thermal: tegra: soctherm-fuse: parametrize
> > >    configuration further" to "thermal: tegra: soctherm-fuse: prepare
> > >    calibration for Tegra114 support"
> > > - Tegra11x > Tegra114 and Tegra12x > Tegra124
> > > - ft and cp shift bits dropped
> > > - clarified tegra114 precision
> > > - lower_precision > use_lower_precision
> > > - nominal calibration ft and cp hardcoded into SoC specific structures
> > > - added tegra114-soctherm header into dt-bindings
> > >=20
> > > Changes in v4:
> > > - fixed Tegra124/132/210 cp mask
> > > - dropped TEGRA114_SOCTHERM_SENSOR_NUM from header
> > > - TEGRA_SOCTHERM_THROT_LEVEL_ made SoC specific
> > > - adjusted soctherm node and inclusions in tegra114.dtsi
> > > - dropped use_lower_presision and nominal_calib_cp options
> > >=20
> > > Changes in v5:
> > > - fixed CPU and GPU hotspot offset values
> > > - added static_assert()s to assert the TEGRA114_* and TEGRA124_*
> > >    counterparts are equal
> > > ---
> > >=20
> > > Svyatoslav Ryhel (6):
> > >    soc: tegra: fuse: add Tegra114 nvmem cells and fuse lookups
> > >    dt-bindings: thermal: Document Tegra114 SOCTHERM Thermal Management
> > >      System
> > >    thermal: tegra: soctherm-fuse: prepare calibration for Tegra114
> > >      support
> > >    dt-bindings: thermal: add Tegra114 soctherm header
> > >    thermal: tegra: add Tegra114 specific SOCTHERM driver
> > >    ARM: tegra: Add SOCTHERM support on Tegra114
> >=20
> > Hi Daniel,
> >=20
> > there's a build-time dependency on patch 4 in both patches 5 and 6. Do
> > you want to pick up patches 2-5 from this series and I pick up patch 1
> > and hold off on applying patch 6 until after the merge window? We could
> > also do a shared branch, but it may not be worth the extra hassle.
>=20
> I can take the patches 2-5. Regarding a shared branch or wait for the next
> version, I would prefer the latter

Alright, let's do it that way. I've picked up patch 1. If you take
patches 2-5 now I'll pick up patch 6 once v6.18-rc1 has released.

Thanks,
Thierry

--77pu5semdcfvsxfi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmjD9XAACgkQ3SOs138+
s6Gb2w/9FzFuO93dIq8o6wF8l7bzhiJ1Xadi6emh4ye9NQ/Xzu9S1KPszf+WaJYl
WQPyLCxBFvFb3BuARreuZbgnbM37jEW2N+JZbpbOE7Mq8cfXUPJ0xcR3hO7a6YiY
R9xDYSVAvFpAAxPlUU07wYRswWpQHRUk2kiFO8goc0m17/kd2nbiwhdYVzRg3wrJ
YC2ZX9m/3l7TmsVd29NfEdKV4nW5FRH2v3aSi+IScXwjObd0oHo4ygrruccMbCPk
RSRSXCqvEpol7cpx7kY+jCJTQ5h7lLrewycb1P8Dwxvz89ER9mtk+F5kwJiACGgN
G3OeAaN9H9z/yuidIrgczHu1k1NezHBE3e9pytu7XHBlvC44Is/hOeGn3Wr+KBux
as8CB/cfKSAnIn6SaXCbgxfHqQrBlO+FvTWWpN/6HYz+KRQQD42pz7AdhOMeAuCG
Q+9sExxgd5M8BHZIdLpHvTalHbseuZm3kQdMJgfqCQdwGXgM6rCBaq2XN9loILdk
6F/JNKe5ktkTT6DGtmDjXGfHKWrVa6oQ0F5MXo63EDHUwdPZVPBj3BQfAtRBbMjo
mJQmDcOwACPS7wnW9wuDyJdPdllXRajiRIwt1j4nrYms7kVnOoikJf81msUwRucc
ze5Fz4UK2uARv4qMX0qNDms6am7uL9DG+kWRaIFWUeERiSOmbDo=
=ilf2
-----END PGP SIGNATURE-----

--77pu5semdcfvsxfi--

