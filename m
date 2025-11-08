Return-Path: <devicetree+bounces-236287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCB4C42ACA
	for <lists+devicetree@lfdr.de>; Sat, 08 Nov 2025 10:46:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E112A188C397
	for <lists+devicetree@lfdr.de>; Sat,  8 Nov 2025 09:47:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C4D71C4A13;
	Sat,  8 Nov 2025 09:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lNEdJQQl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4587A38DE1
	for <devicetree@vger.kernel.org>; Sat,  8 Nov 2025 09:46:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762595207; cv=none; b=m8BbsEuw7SogUT4O6X4lWOeNOSeQ7RoIP4MLvIzMW5SXRGkItIXmDZ9Wotg21frq0vgund27LV9/o7AzcAKkhBwDZ1BfGAOFdYVHYdJWht02PorfB6EZXMi5pWR6JMiQ1nTzrjpnnKeELcJHv/7Y2Jjfuw1gaXSN3BJeyJHtOUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762595207; c=relaxed/simple;
	bh=aOwq143RKroQJvO/hjzbNHkwe922fvcvmxRe5cHZbKk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LBPO+vu9yl6/JlxeCGRda9K315J1yv7IlXWtoU1flv/JpeadR2CulNopUvGYNG4IE8qexfvhm35Baebxn6Iz5fABswqX+Q3j0ZsSMrg1uAssShCUsJl1SH2LfKV2x79uFse+sjU7M4XrRg6kRfXfhgrqP47kjSFQMHLx5Ds9z48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lNEdJQQl; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b71397df721so175235466b.1
        for <devicetree@vger.kernel.org>; Sat, 08 Nov 2025 01:46:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762595203; x=1763200003; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lSUW/WjMhCO0Veyp/5U9fPi2v4UQHFyEZLh62h16fCE=;
        b=lNEdJQQlYXO4Y3CJB92e2DG8RmRejewBi1Ohywpxq0G6I/c5zz2us8KlP1h1+I7CJS
         XiqVGoIjuVdys3is7s87rSeRTFwSGEKNDnhu/RtuM81KjKOFQBYD+CwutsgqINDJ4hGW
         S6qkywraRYGsTA+ngc/kCYSHJjMR4wLd6vClew4IVNyPd1rU7lWYxbxM7sdZMv1Ht0+7
         XbrBGH8ZH3cYsyT62diAFu/4DQQ67YpIt7utqBRFZxxXiXMY/gqsTh7fqBjDUMOO4YuC
         W1QGhxmznKV/hTw1wkejFqJedU0DXedEft+FIf+gKfK/piB70pl46YLi/IdWMPjKFda7
         Crbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762595203; x=1763200003;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lSUW/WjMhCO0Veyp/5U9fPi2v4UQHFyEZLh62h16fCE=;
        b=M+NYUdNx5XlV7gs3lFhFCSa4UXp1GZd6Q4ZXPn8tGfN/Bz9pU4dX5XasYrFcnqIbhd
         nRSRYrjUsBsf5KDxCNuuNOw+QkUEfwiK7fgWkvu+Y0ydr+6UDOezJnOjZ5Fu9v6AtVR9
         wYA6PnmMSMUXSrb4jI+HOnryRNXPRJ3bXRDGRfNw0aYeQiDifz0nZMLIaY7sPf8qrKRT
         IF8FdNwNWZHTYBTiAuEdU5lHXiXifWlfHBwpUv2L6FP4mG+2jAhZcQhqLJQPc3+I3xc3
         RfH7hSca7simF9tgAgfeeSlGFvefyluEqQsUG2xTY1ucvy/ECYJ4FjlmS3regc/7wPk7
         wAHw==
X-Forwarded-Encrypted: i=1; AJvYcCUvow85cPzAFE3/aiqL+BvM9NJPI6mUyAKWPcVsobU6zY4WhO0bN2XaDmqm78tpOBtsMJRjDlnMEyld@vger.kernel.org
X-Gm-Message-State: AOJu0YwMK+Hz6KYnoSJn3MeqcYO+PDLO/KXwM2LwlBILAlaw2kvkuthW
	7pHyG5mprBxQxygIv0uGVEQUf2wC03/eVP/LuH3jGWrLN0kgUW67qZTI
X-Gm-Gg: ASbGncuKwvyUglNx+XwtXejUZt033p58WYh8aVI3UKqJ/UXEQ8v6K6gaoYq4aM0AGcX
	eL+Z1fbReuMa6wNNL+InFL92SyHRdTFgvAjqks0tEpqbYSIsnvhoBBm8eWlZVuHcrdq1WckGLLk
	gn9EXFym0CucTPJR3F5DHh6fm5iD4/GL6ZBwaispTEluf2OTUEIusRLCAUOJiO6B0RnxaLWkOjf
	5tCH/VY7UqVH2TH9csxTjjWj/FcGjr4/9ZARxfNUD7kGTUFWZppZOZj1HGBM6DTosaUqwuqqb3/
	RNe19qGbqYk+LPSRbm58GDtD1DRBYoiTEQEzWLTfT4KOusnLodQbezaijsotwhZ9HVArgkYmJ9U
	SnSZbXtENG9ZP9kX46HNU2H2FnlZHOV8gk+XhPJ2EjhdzsoWU52WBjW+rSc8Otcfd/21Cr2pzaj
	mVV4WFxO2nfUOvSW85Ymwoyw==
X-Google-Smtp-Source: AGHT+IEF4CkxscNYi/C2XNylHCh280mub3VhXy2YsQtWnD+IOuCk3xiDthoT6Cd2QfMZg0xUKQ0czw==
X-Received: by 2002:a17:906:6a27:b0:b45:60ad:daf9 with SMTP id a640c23a62f3a-b72e028a602mr227544366b.3.1762595203327;
        Sat, 08 Nov 2025 01:46:43 -0800 (PST)
Received: from jernej-laptop.localnet ([188.159.248.16])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72d7996c4csm291514066b.5.2025.11.08.01.46.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Nov 2025 01:46:42 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>, Han Gao <gaohan@iscas.ac.cn>,
 Yixun Lan <dlan@gentoo.org>, Drew Fustini <fustini@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Guodong Xu <guodong@riscstar.com>, Haylen Chu <heylenay@4d2.org>,
 Joel Stanley <joel@jms.id.au>, gaohan@iscas.ac.cn
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, Han Gao <rabenda.cn@gmail.com>
Subject: Re: [PATCH 0/3] riscv: soc: re-organized allwinner
Date: Sat, 08 Nov 2025 10:46:41 +0100
Message-ID: <4692596.LvFx2qVVIh@jernej-laptop>
In-Reply-To: <cover.1762588494.git.gaohan@iscas.ac.cn>
References: <cover.1762588494.git.gaohan@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi,

Dne sobota, 8. november 2025 ob 09:20:22 Srednjeevropski standardni =C4=8Da=
s je gaohan@iscas.ac.cn napisal(a):
> From: Han Gao <gaohan@iscas.ac.cn>
>=20
> Allwinner currently offers d1(s)/v821/v861/v881 on RISC-V,
> using different IPs.
>=20
> d1(s): Xuantie C906
> v821: Andes A27 + XuanTie E907
> v861/v881: XuanTie C907
>=20
> Han Gao (3):
>   riscv: soc: re-organized allwinner menu
>   riscv: soc: allwinner: d1: use the ARCH_SUNXI_XUANTIE
>   riscv: defconfig: enable SUNXI_XUANTIE and SUNXI_ANDES

This series is incomplete. It introduces ARCH_SUNXI_ANDES symbol but it is
never used.

Additionally, patches are not organized properly. First, you should introdu=
ce
reorganization and only then introduce new features. Also, not a single
patch should break existing functionality for bisectability reasons. First
patch breaks compilation of DT files while second restores that. This must
not happen.

Best regards,
Jernej

>=20
>  arch/riscv/Kconfig.socs                | 22 +++++++++++++++++-----
>  arch/riscv/boot/dts/allwinner/Makefile | 20 ++++++++++----------
>  arch/riscv/configs/defconfig           |  2 ++
>  3 files changed, 29 insertions(+), 15 deletions(-)
>=20
>=20





