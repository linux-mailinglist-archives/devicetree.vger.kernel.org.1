Return-Path: <devicetree+bounces-254042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC473D1349D
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:50:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DA3D231101A4
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:32:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E2AF29BDA2;
	Mon, 12 Jan 2026 14:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="thc7tCXH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB7B429D27D
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 14:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768227973; cv=none; b=Rw9+ewbx4u4Ij6QSeLCbCqk20A48Gps9tMHwD21pIzAsQptfzLumSqc4D5P7wEx/8n7ri7jP5Upg4vcmyIAElLSGfa9rJhcyl0qB17xE0h/VEA1qpWA+Q5nBt6d84DUloGOZEseOrxGuf1kHHC1A7Uv4WC3gve0ytq7tH5pSQDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768227973; c=relaxed/simple;
	bh=MS8wKf7u9HcQpruwLfOyUPj69gKiTphjKQB/fIaDSQ8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=nqn8fBuQFGaKsEH1J6yGrntoAWt5TYZNZaaRaSxfvodxXB39FFh7AaxgeRqJtnQvfFVsLpHVLVN94Am/WUEfudd6CGdfn+wQ2OLIz5ODnk1+pkwMdW4OOlVIdQmchNK/k6vnvUDP1ZEs1J8GU3uws+PGJ4FH9igHfdLni3GaXOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=thc7tCXH; arc=none smtp.client-ip=209.85.222.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-8c30365ac43so612466385a.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 06:26:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768227971; x=1768832771; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MS8wKf7u9HcQpruwLfOyUPj69gKiTphjKQB/fIaDSQ8=;
        b=thc7tCXHqXR1NShM8ZzJy/on+iZeMNFCH5izWy9/OBjTiX2QrkASYAknkkQ1dBZJzX
         IpcjQzcIaXHx/oIJz3xMJtVlsM17ZOeDD4aK8x0c/EsK2wOqgIv4XFLa1V6P5MNJbP/D
         N8iLKXuNGz6c5n21SvQcoQsCboAYAZEmyoDDgbdeM6Fi4a8jbaYWLr132hjk1d9oEJfk
         36sX89A9LtFFyYH3qeSZOvhINGG1ZxOY9pWUNpxmeFxlBnhJ0tQWc5P4p8FY6e4saeCn
         eFIimsQwDX2zPP7DpvL5l154EExHQhaBmtZzqbHGkvPDRm1lFqjHSxD065lzU00lXFCj
         j9aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768227971; x=1768832771;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MS8wKf7u9HcQpruwLfOyUPj69gKiTphjKQB/fIaDSQ8=;
        b=jV5qm5Zv8ItjVkYI2z4rTpqh1ZgbKG0D61OOGTXLruFJHykge9sMhChhMI4E5t83Ym
         zekhyGBAAZleXLvWq8iot06vGgZHd1nf84gqfSwnXXp1/p5hFnU89+jVkXuq/BRyYFTF
         QpHyf8ztEAwjHA+g6NF+S7eUKqhwVo20lKUqF98X7BqDhchePOazM2cuWG+Xe6Es0XzG
         bs2g2KJHYa/m9dmIBJrwJFKZSXyk/67L4/G1UG2n718OOY5u2YM8MRsu1088X0c+6knb
         Nu7cbcxkVxqQTxZEG+5nQclanprxyZa8pwBByGLpW4ZAzonc2j2DzS8Qh2bUe1OhJX98
         rBRg==
X-Forwarded-Encrypted: i=1; AJvYcCWw9ayrYJYujW6y+2QijbE6TwGzez8UmzQIz5bXMn9GuLGAVBxQZmSyOBT0hY3OmJILxp8UGY2/ZsYt@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1YTWJam4EjVpWENEK80om7YenwkuWpg+BHWBoBbQhcv6NsjH6
	LuQ8xp9ZeWg6Az4IrL1YRGbg5nVEj89wanKABEJi0cg1pw3oSkPgdp8SOCoyn9XBs9M=
X-Gm-Gg: AY/fxX6Vrbv0rVcO92xJTTg5uggOquaz+Jl7n73EOhiwhB3XIHrCp5ycPVi+IsQJAdg
	1F0bIfThmBftXstIijZXEiAxVWuW8S4KThxQWzaE/F/53rt5DkY887W2MufMCz4M8TJ1nK2Up8G
	C50vQDCJ1TegFxEpuX/AtnOF86Qjpi9GTb/c5N7vhi+sWirkgMr/jenzN1Sa1ho3saiWZYHOrCr
	eOutID0vck+v3jb9hRWdnhBVMXGLVvqtk1TjbTJftIdHnUNcMKyTvAXkkiR0d33CemEQMj0UQVK
	Wp8bJH92pO190Eo3+gGsH75q6wkUdNPQzk0MlIwwSSrFfGtS7kR4GcQuF0r9NmnVFVcoQImVLUd
	semqOOP3na3peLC8xr0Y6TgtweyoAziG8aehgJgH0v0yTrL8igd8r/EIC2bE+T33iq8KfZikKvb
	9QMDNHdaHI1IqWaLqT
X-Google-Smtp-Source: AGHT+IEXjJKk5zH4bo+R8LKpMF4MK489YPX2dESNeMCN9H3Av3eoQMSWyP5H4NLuxZlAI34TDI5m9A==
X-Received: by 2002:a05:620a:708a:b0:8b2:e827:14bc with SMTP id af79cd13be357-8c3893ea256mr2530528585a.56.1768227970407;
        Mon, 12 Jan 2026 06:26:10 -0800 (PST)
Received: from draszik.lan ([212.129.79.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f530f99sm1509223485a.36.2026.01.12.06.26.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 06:26:10 -0800 (PST)
Message-ID: <ba585515010ab9a9b417d000ba744f8178ca9e24.camel@linaro.org>
Subject: Re: [PATCH v2 1/5] dt-bindings: clock: google,gs101-clock: fix
 alphanumeric ordering
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus	
 <tudor.ambarus@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>, Alim
 Akhtar <alim.akhtar@samsung.com>, Sylwester Nawrocki	
 <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
	kernel-team@android.com, Will McVicker <willmcvicker@google.com>, Juan
 Yescas	 <jyescas@google.com>, Doug Anderson <dianders@google.com>
Date: Mon, 12 Jan 2026 14:26:48 +0000
In-Reply-To: <20260112-dpu-clocks-v2-1-bd00903fdeb9@linaro.org>
References: <20260112-dpu-clocks-v2-0-bd00903fdeb9@linaro.org>
	 <20260112-dpu-clocks-v2-1-bd00903fdeb9@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-2+build3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2026-01-12 at 14:16 +0000, Peter Griffin wrote:
> Fix the places that don't have correct alphanumeric ordering. This will
> make reasoning about where to add future entries more straightforward.
>=20
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
> =C2=A0Documentation/devicetree/bindings/clock/google,gs101-clock.yaml | 6=
 +++---
> =C2=A01 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/clock/google,gs101-clock.y=
aml b/Documentation/devicetree/bindings/clock/google,gs101-
> clock.yaml
> index 09e679c1a9def03d53b8b493929911ea902a1763..a8176687bb773ae90800b9c25=
6bcccebfdef2e49 100644
> --- a/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
> +++ b/Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
> @@ -27,13 +27,13 @@ description: |
> =C2=A0properties:
> =C2=A0=C2=A0 compatible:
> =C2=A0=C2=A0=C2=A0=C2=A0 enum:
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - google,gs101-cmu-top
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - google,gs101-cmu-apm
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - google,gs101-cmu-misc
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - google,gs101-cmu-hsi0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - google,gs101-cmu-hsi2
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - google,gs101-cmu-misc
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - google,gs101-cmu-peric0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - google,gs101-cmu-peric1
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - google,gs101-cmu-top

If we keep 'top' at the top as one outlier, it'd reflect that it is the
top unit and all other CMUs are children of it.

> =C2=A0
> =C2=A0=C2=A0 clocks:
> =C2=A0=C2=A0=C2=A0=C2=A0 minItems: 1
> @@ -70,8 +70,8 @@ allOf:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatible:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 contains:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
enum:
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 - google,gs101-cmu-top
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 - google,gs101-cmu-apm
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 - google,gs101-cmu-top

And here.

Either way, I don't mind:
Reviewed-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

Cheers,
Andre'

