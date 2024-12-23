Return-Path: <devicetree+bounces-133488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A59B59FAB55
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 08:59:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E622C188470B
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 07:59:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 272B818D62A;
	Mon, 23 Dec 2024 07:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pTrtkFVe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1808E624
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 07:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734940764; cv=none; b=W22mQ/qdLqfOwtE5IGi1f5xLXUAtrKJJUI66DmGmUDAxDviqDsJtzPMXt0lKrbqSXKx77e8kW3wZRsF+EcATyiviL43kxDe9SqVJ5+dB1wW9cM3apxdC4itxx+PGjZ4glYk2UIkKQiYpN18NT9R962Ia4oX7C6mDUvMWgDzvySA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734940764; c=relaxed/simple;
	bh=Xf6i/kO4zsqL35tvl1Xm9c/RKHg4rkgPnHEPUGMAcpM=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=oPmdkfUxT3HugKf61HQ5SFCMR4+mfsfRjQMICScv3BMM5etU4HFp+duy+nMvmphZLNVM//Z3Ju+ysn1og0XrIf8aMa1PmgrQnEhBG8IsDQx+Qy/ud3llB3cHBH1wbicoyOwJjO4bzk59rU9zwlJAOeCQU2zWJxR7+/3C7aXPycU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pTrtkFVe; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4361f664af5so44155155e9.1
        for <devicetree@vger.kernel.org>; Sun, 22 Dec 2024 23:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734940760; x=1735545560; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Fp1YxkvsR/8CN00+dpyPmbcZfQP2ZBedcDMsnGRxi5U=;
        b=pTrtkFVebZQEW3EL3uh3/jZkHjb1upnlFEtyLNyLEOuovLlEs/FoDtACqm585bERlg
         3WpRj+jkdWNQTph53mOwAy+j/oHYPTcyaJCaKak/dqKfoqBcdIjAgvTBR9hk9puJXNG+
         yQKNWfrd0GEkqVogWCa6seKND4hUY46PeB+oSQXEcpQTUX2OBd8Bk7sOTw/Ne7qBJs90
         qDMR7Opu4Fh9LO0UotvRbexUWv+IJQADY0UuZ7b1ccWldxUEHG+i8jr+nydvOF0euqjQ
         PcyXBa6qaUVgfqWAw51BcakS9I379llTqeaiisOXyVckx3Hvenc+1GwdhZbvsWu+hQV+
         QcIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734940760; x=1735545560;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fp1YxkvsR/8CN00+dpyPmbcZfQP2ZBedcDMsnGRxi5U=;
        b=k8VKDjMQQ/FsDbNoRbBwk65vMeuPiMxRbFsmEy83vz4oIWrD9z4Nbj95eLrwHPidAf
         rjcYNHN43F02YzfGiuikPWhDwYgaH4EuXD9JVqieL+GrrzfksdvufXm72bsyFTPjqFT/
         K9rGzG5xxS3asL9un01dDXsBsBpXa+cBPlpwwusZzUwI2YOcjgn5oLzFjCQuIDBHSsTg
         YCQZPXEiT5uNoAVYgj9nEPa8YXr+XpaalrpJyLLnSvDiM0+i7yNB7X9ixyuB4c60e0+G
         Zuq59bSQ/++VkpLkZJl7l5cNRIpfB5CnCcF06Hw0UmeDg2z82WM2bmxzXlTk+ylYw0um
         OV1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVn0rrOTaWmowZRDAIJpMGhoryQnaFNnkLHIdEPBRaS6KMjoa4pWZuOZIvSi7/rNlP051rKMTpdooDh@vger.kernel.org
X-Gm-Message-State: AOJu0YzPUTy8GU6MKQxo+oK+tRRfy151hSCGJrSLw5/qTKtsyjajhE/z
	zNBXOLVKkg28ji5EBAavNSEjMG+YeN64chcd1K9CrVQUkXyV8zRVUtjZMvarj2k=
X-Gm-Gg: ASbGnctqQlEB0HNUNtRIYEhULexLI2OUiwr6yUHnsUMucmRKCJQLnijgiIO89vGWnWw
	o/2+hTi/xf6dftanOVygoh+j8krJ1/qyL2ekvtus+nmNzcMh6/6C4c49J5yJJdyu1omljNL7Xyo
	GDJxzTAfne6U/9GAVjjeXmtcclImWSUmaJbSYldA9uSq3tVCbQpXQi73Ml5p9O4BNHCeynJtXtQ
	uKkHGui4Kr9AymQk4Cwf1LTU13X/2G8a8aTpblBdCK3deVEz0AOk94LP63uWA==
X-Google-Smtp-Source: AGHT+IG+7q2Pk6kjCGK7xP+YYvFm+gtX/raK0+U2VnVE+LPf0nz5Qeq7UKxPj3BRYbDVBrwjQeR9hQ==
X-Received: by 2002:a05:600c:1c99:b0:434:f218:e1a8 with SMTP id 5b1f17b1804b1-436686476eamr98549695e9.19.1734940760198;
        Sun, 22 Dec 2024 23:59:20 -0800 (PST)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4366127c488sm126855745e9.27.2024.12.22.23.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 23:59:19 -0800 (PST)
Message-ID: <e85505c808661bedf2cca2433ef4c06038505a5f.camel@linaro.org>
Subject: Re: [PATCH v2 2/3] arm64: dts: exynos: gs101-pixel: add generic
 gs101-based Pixel support
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Peter Griffin
	 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Alim
 Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Date: Mon, 23 Dec 2024 07:59:18 +0000
In-Reply-To: <33c7a520-dda9-4d3c-aa27-2f48786996a9@kernel.org>
References: <20241220-gs101-simplefb-v2-0-c10a8f9e490b@linaro.org>
	 <20241220-gs101-simplefb-v2-2-c10a8f9e490b@linaro.org>
	 <33c7a520-dda9-4d3c-aa27-2f48786996a9@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.1-4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Krzysztof,

On Sun, 2024-12-22 at 12:42 +0100, Krzysztof Kozlowski wrote:
> On 20/12/2024 12:27, Andr=C3=A9 Draszik wrote:
> > In order to support Pixel 6 (Oriole), Pixel 6 Pro (Raven), and Pixel 6a
> > (Bluejay) correctly, we have to be able to distinguish them properly as
> > we add support for more features.
> >=20
> > For example, Raven has a larger display. There are other differences,
> > like battery design capacity, etc.
> >=20
> > To facilitate this, we create a generic gs101-based Pixel DT that can
> > work on any such gs101-based device. At the same time, we move the
>=20
> No, whatever insanity Android has there, please don't populate it to
> upstream.
>=20
> There is no such thing as "generic board" thus cannot be a
> "generic DTS".

I'll rephrase to gs101-based Pixel base board. Unless you have a better
suggestion.

>=20
> > Oriole specific parts that we have at the moment (display) into an
> > overlay, making it easy to add support for Raven and Bluejay in a
> > similar way.
> >=20
> > Note1:
> > Despite being an overlay, we instruct kbuild to create a merged
> > gs101-oriole.dtb and a gs101-oriole.dtbo. This way existing scripts can
> > keep working, but it also gives the option to just apply the overlay
> > before boot (e.g. by the bootloader).
> >=20
> > Note2:
> > I've changed the simple-framebuffer node to specify the memory via
> > memory-region instead of reg, as that avoids unnecessary duplication
> > (of the size), and it avoids having to specify #address-cells
> > and #size-cells in the chosen node (and duplicating this in the DTSO),
> > which is otherwise necessary to keep dt_binding_check happy and DT
> > validation working in general.
> >=20
> > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> > ---
> > Note: MAINTAINERS doesn't need updating, it covers this whole directory
> > ---
> > =C2=A0arch/arm64/boot/dts/exynos/google/Makefile=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 6 ++--
> > =C2=A0.../arm64/boot/dts/exynos/google/gs101-oriole.dtso | 33 +++++++++=
+++++++++++++
> > =C2=A0.../{gs101-oriole.dts =3D> gs101-pixel-generic.dts}=C2=A0 | 24 ++=
+++++---------
> > =C2=A03 files changed, 47 insertions(+), 16 deletions(-)
> >=20
> > diff --git a/arch/arm64/boot/dts/exynos/google/Makefile b/arch/arm64/bo=
ot/dts/exynos/google/Makefile
> > index 0a6d5e1fe4ee..6e6b5319212a 100644
> > --- a/arch/arm64/boot/dts/exynos/google/Makefile
> > +++ b/arch/arm64/boot/dts/exynos/google/Makefile
> > @@ -1,4 +1,6 @@
> > =C2=A0# SPDX-License-Identifier: GPL-2.0
> > =C2=A0
> > -dtb-$(CONFIG_ARCH_EXYNOS) +=3D \
> > -	gs101-oriole.dtb \
> > +dtb-$(CONFIG_ARCH_EXYNOS) +=3D gs101-pixel-generic.dtb
> > +
> > +gs101-oriole-dtbs :=3D gs101-pixel-generic.dtb gs101-oriole.dtbo
> > +dtb-$(CONFIG_ARCH_EXYNOS) +=3D gs101-oriole.dtb
> > diff --git a/arch/arm64/boot/dts/exynos/google/gs101-oriole.dtso b/arch=
/arm64/boot/dts/exynos/google/gs101-oriole.dtso
> > new file mode 100644
> > index 000000000000..43572039cd07
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/exynos/google/gs101-oriole.dtso
> > @@ -0,0 +1,33 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Oriole Device Tree
> > + *
> > + * Copyright 2021-2023 Google LLC
> > + * Copyright 2023-2024 Linaro Ltd
> > + */
> > +
> > +/dts-v1/;
> > +/plugin/;
> > +
> > +&{/} {
> > +	model =3D "Oriole";
> > +	compatible =3D "google,gs101-oriole", "google,gs101-pixel", "google,g=
s101";
>=20
> Boards are not overlays. Board equals DTB.

You're saying this should move into a dts instead of dtso?
There are numerous boards upstream which use this same dtso
approach.

There is a base board, and also different versions of it,
oriole being one of them.

[...]

> > 	};
> > =C2=A0
> > =C2=A0	chosen {
> > -		#address-cells =3D <2>;
> > -		#size-cells =3D <1>;
> > -		ranges;
> > -
> > =C2=A0		/* Bootloader expects bootargs specified otherwise it crashes *=
/
> > =C2=A0		bootargs =3D "";
> > =C2=A0		stdout-path =3D &serial_0;
> > =C2=A0
> > =C2=A0		/* Use display framebuffer as setup by bootloader */
> > -		framebuffer0: framebuffer@fac00000 {
>=20
> I don't think this exists in current source. It does exist in thing I
> was applying, but then this does not make much sense: add a framebuffer
> which has to be changed, because it is not correct.
>=20
> I'll drop the framebuffer patch.

The framebuffer makes sense for the oriole version. I can fully remove this
node from this base board here, and just leave it in the versions.
That said, can you please expand how having a 'status=3Ddisabled' framebuff=
er
node is different from any other nodes that are enabled or modified by
overlays?

Cheers,
Andre'


