Return-Path: <devicetree+bounces-162618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 35736A79067
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 15:56:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E703F1724EF
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 13:55:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AA4A21B905;
	Wed,  2 Apr 2025 13:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="CBtOU/+J"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8067914375C
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 13:55:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743602103; cv=none; b=TavaHzHF0ll+YD3F/FEyiw9zendNqy3cER6CXVkJRP3p+kQ/2YagYCfF7rhm81BAO3+3iDJ14CtSREcex2kD/QL7vH3EwUHG/IrlGivCG8la6UCsgJMKR9GxbqCBmjd0GgZk1XDIAyaRAwoyDxunIsQz+bH4idTYlR7KZRzWcVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743602103; c=relaxed/simple;
	bh=CG5eB3tDd5xsJ/jOYBTYA69qP6uMiQTIFvTatjTPiDY=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nCE++UsCqxq0yb2S98CuatHnrLSREWCikXr2+illtonWpzP5/N1FEFabTPTB1AQubgcSDr0cnYHmd8Cl9tgkxBte0KW2lBD5/glZqoYurTTVWNE734+2BQuGJGb1xey35yJ0yyPXWFOWNgDSNTP8WhLwYw0pJUDe9qZ63eVo/ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=CBtOU/+J; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com [209.85.128.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 5029240060
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 13:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1743602092;
	bh=CG5eB3tDd5xsJ/jOYBTYA69qP6uMiQTIFvTatjTPiDY=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type;
	b=CBtOU/+JEfoUh4LEhOkQfQU2qfb2KPVrxzfB+6WcNej5qzaA+p34yh2HKiSN21OXD
	 J70bxJKa5PzfEHkGeKJxOmRmt3D30O75Z33Io+quWy6DjmLIx9LcziQSYI6Oa7Wiev
	 jyMRpu/+Jhna8lcZf8nPeMZu+mdiLHVUeBE/u71LAZeZpV3f30tY9tPM5mhNYxEaba
	 lQYSSG3aDlSeQ0rIvBOQpZ7YwDai9V9eq58rUPPMDeTUZDqpM8okPPnV2jdnI27E2h
	 DWW3cqsc0UUx56biGxUmIBBhpAuVNZgwigJS5InZUwek2R+vpFWqJMmm8+99BxLpfj
	 WsDG+Dyi2ZUJw==
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-43d6c65dc52so46624165e9.1
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 06:54:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743602091; x=1744206891;
        h=mime-version:organization:references:in-reply-to:message-id:subject
         :cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CG5eB3tDd5xsJ/jOYBTYA69qP6uMiQTIFvTatjTPiDY=;
        b=Ss1aVzwP3xKJ4rLaC9Hc3olt4mJjRyZisx4elTDYmy+vAI3b9zIR8HIdwQhxs3igl8
         pHjtaROTqo9bStOs8niKuCfi8KY2hZ8nPdXnoTLM6bolk1uKaSOdxZgvsQaxl/XNEVUU
         S0GotLe767Zb+UO1nuaKHXoXyQHHLGgHi9dDkH7HHZwhkH7pk+hZOFdx50nnc7+Kl9Ae
         sZtbZSylvtpA9qCZ+RxKnvZ2TYqc73Bym8oxCOk2pXSE+PcpGsznrS/6wo2SpwQnYerN
         qTJMbYcs3X53D3Y0KTIbBj+uK0VuzLBkCqieHf4mmg8+fO2aK93RPAJ3jt+bweCQpYZI
         t1IA==
X-Forwarded-Encrypted: i=1; AJvYcCVNadvEahIVkbhI7X/y1sArGYHn/O9ObIpWVvT42yOE9tzr3L9DQeg/RhDgxgtVhGiRBaCDQhR2p+bH@vger.kernel.org
X-Gm-Message-State: AOJu0YwidVYGEFnqW1o6Bw4XytFbT4M8Gw+jYVZwYKGj0tsfwP35l6+V
	h4OxwtRGgFqrI1wVqIvQx22rFoxAaQUuf+k83G1MQpKLhiGx7k5oI7SOKqRNhB83ru8fMOAVoOQ
	gAIfsD3005Flt7qWEKYiwlVySvR34T8fFPzMV9kSBCDh2fR1n88L2rgq2afPaUmaJk/1GIzGsNy
	Q=
X-Gm-Gg: ASbGncvXfWiHG/dCO3blS6rsjLePbWP6B+/2yvEVBu5wnStAE8UgRl1KZcxH+dmCtbg
	/7eN/pNDIh4rAd1imsNvxlxITnUI35Q3Gky3Qw9CKKFpoJF1aMOteLhVEgTmhDumfFeKUd10ovD
	qu2CusF/Te6CV9evFBnT+W4fVc8B1Pty7DOuHwwRZIF9mw2MMkF9lh1kIxz1S+yulIF+FDp4D4L
	BNK9IF0rRE3QG74U88R2lDBqyacv7pGM/8DrO9qxooVoghsTmR0/JInl6bKzfFfbu5bLvIxRvbq
	7SdVScRNexEr3GSkEbisU0oMQI44Xz6XDoSw6Ba8L7XKjeIS/syLUgYp
X-Received: by 2002:a05:600c:3b9c:b0:43c:f8fc:f6a6 with SMTP id 5b1f17b1804b1-43eb5c2072emr21841305e9.9.1743602090794;
        Wed, 02 Apr 2025 06:54:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGqAoRMw1orcBT36O/KAk/YHF2nnwZ4/dFtqfWdwVBT7tQpYvTXtM2QoP91qXVtO9TcFxzZmQ==
X-Received: by 2002:a05:600c:3b9c:b0:43c:f8fc:f6a6 with SMTP id 5b1f17b1804b1-43eb5c2072emr21841005e9.9.1743602090222;
        Wed, 02 Apr 2025 06:54:50 -0700 (PDT)
Received: from gollum (151-243-191-194.pool.dsl-net.ch. [194.191.243.151])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43eb6190bc4sm22399685e9.31.2025.04.02.06.54.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 06:54:49 -0700 (PDT)
Date: Wed, 2 Apr 2025 15:54:47 +0200
From: Juerg Haefliger <juerg.haefliger@canonical.com>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio
 <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Jens
 Glathe <jens.glathe@oldschoolsolutions.biz>, Abel Vesa
 <abel.vesa@linaro.org>, Stephan Gerhold <stephan.gerhold@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100-hp-x14: drop bogus USB
 retimer
Message-ID: <20250402155447.0f41fed3@gollum>
In-Reply-To: <20250328084154.16759-1-johan+linaro@kernel.org>
References: <20250328084154.16759-1-johan+linaro@kernel.org>
Organization: Canonical Ltd
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/lRao/ETFr.OIayZzb_CvQcq";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/lRao/ETFr.OIayZzb_CvQcq
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri, 28 Mar 2025 09:41:54 +0100
Johan Hovold <johan+linaro@kernel.org> wrote:

> Jens reported that the sanity checks added to the new ps883x USB retimer
> driver breaks USB and display on the HP X14. Turns out the X14 only has
> a retimer on one of the ports, but this initially went unnoticed due to
> the missing sanity check (and error handling) in the retimer driver.
>=20
> Drop the non-existing retimer from the devicetree to enable the second
> USB port and the display subsystem.
>=20
> Note that this also matches the ACPI tables.
>=20
> Fixes: 6f18b8d4142c ("arm64: dts: qcom: x1e80100-hp-x14: dt for HP Omnibo=
ok X Laptop 14")
> Cc: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Tested on an HP EliteBook Ultra which is the same HW but in a more
expensive (?) packaging.

Tested-by: Juerg Haefliger <juerg.haefliger@canonical.com>

--Sig_/lRao/ETFr.OIayZzb_CvQcq
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEhZfU96IuprviLdeLD9OLCQumQrcFAmftQacACgkQD9OLCQum
QrfzvhAAgHLjVHvyXXP5zJfOLJqHphrQda58zyyZ6tler4eI3cjjOZAQDOTFjTbK
L/+R5z1UZLHyeXNNv3q+6RoLJcJvlLdF5F+ms4GNoA1qCyMXvPExJ9ZyaXRpAQoU
sT5krGTsA8UcRk/6IMifywtILNGO9AatALRxL7eAKbDIVJNho/BirNHmWIWvJS8f
sHcC1M9qD1c54+kTZ4omcTPRSJrOCofp2r/kcblWkVSWkh7sUhp7fDbRKk8tB/qm
MkDXIesdoSv9aVRBe0bN29sEbE+em1lYO6824NwLYgVpyQBlD3Q65m/agysV/Vb6
hmR4dI9PkGLnGQMjbKNsIzqa/05oEx+HvByCtsvjfLp3zo3K2sk3LL3guQCSpMaR
pRKr8ayNRjxSSL5PVn1aHqzQfuNtxQPCWcDceXMby9s+VA2KsnhxYWDr3LebUgEk
7eHvZrzHGIxdFzT8DS7G082nR0d1Q7qMVNf1OJBDoEgEgvJHQacUf3OmAo/U0Dzh
xpPDf0GEzSWXjr5pda1CWZvtaWbOVHEpe2ChnauZgOpPums2uAy2kt7xXskYVr1+
ce0s8JdRO3QoGlSdfzVXeM+7o7vqxQDDp54/HEs2NtVPTDatdmthq3UwRjAbYVzQ
HhNzNkVpgeT1piWvDfQTDXGjz/WJqDdN0tihh2yotm9jmaSBPNg=
=qK4+
-----END PGP SIGNATURE-----

--Sig_/lRao/ETFr.OIayZzb_CvQcq--

