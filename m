Return-Path: <devicetree+bounces-139531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A966EA16154
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 12:14:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F3FB1885543
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 11:14:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4AEE19E967;
	Sun, 19 Jan 2025 11:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hDgo9QTK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CA774BE1
	for <devicetree@vger.kernel.org>; Sun, 19 Jan 2025 11:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737285243; cv=none; b=uQkEJUlEDHI/ZOqk8FT+RlG+C3N59RwsOR0ujC9WLbGKM1MgFJ/Q9EeO1ZqoH48MQrOyMsQnt+RO1XNwm4t/eAOqR/HUXh01sUHcGP97nprbPt0bp6WgWh2sBEkb8a5i0gsVpWydaDmjHznLVQIrMpc56Ur/VpTMbVR/9KzK5lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737285243; c=relaxed/simple;
	bh=farCSn9nIwDEYesATkrLZqDi4SS6wrr0tkHz+ajWl3c=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=kWmBslaQ17tO6F4IWxXDsrn5NCwWVh0vFxGx7VTreAhy80i7209ySm02EPKyrKI6iigQ4D1dblDqteFu80JaSJcL7h8nyKuFQdxEaTVK4djDLU5IBwiNA9cT3H4Rau3TRkWYCK3ckM0NMRRIvLQUDYYdE6DuFqcKYHQNsqAIL8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hDgo9QTK; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ab2e308a99bso745491966b.1
        for <devicetree@vger.kernel.org>; Sun, 19 Jan 2025 03:14:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737285240; x=1737890040; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=farCSn9nIwDEYesATkrLZqDi4SS6wrr0tkHz+ajWl3c=;
        b=hDgo9QTKrAumYf7g3WyHodWpVzbBi8AstsLp3bReW9h3+dyWWfIZujWbBXcQ6hydqB
         WiBK3vwrJ3GDzFsG8LmjNPlfxbTaQ8ahENPNO0Z6CvSD4qsnutesOiMTIEIG3yPWuZAf
         wxSxJ21ipQL3/Luu09fEl4BVEYWsTXBD9AUsDQX6zROHwVUOYSfkrbxwxmsi6t0RqmNO
         +bkA2R6RIX0Fp5kA7saA0WutzDbaLWsL6rKkGb0yVNpl0SgZCfA6oH9+/9PA7Fd4epgA
         BhlACPvytsTEJ5LB70ZzEueOjPgiwTiuvt5V25FMa92/8YRG43fEJPtARPsbwxOfcjNP
         4XUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737285240; x=1737890040;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=farCSn9nIwDEYesATkrLZqDi4SS6wrr0tkHz+ajWl3c=;
        b=Hk8yRHUdRF1h0yu81Tvat0oVbtkFDCyjEYkGV//OMmQcNx+NzzMhJ1Cf/lIXHOTXvL
         iqGF2/2E0DRHnCaa1+EjHlk/3387kITbToKOVe0HnT3Q+NIBF8WLoEr/V/3sy+QAP/Nu
         XPkVts54D+dQRpfUVSmenDVXyHom9bBc/iMnS4NDGQUQtM45QwR6KcpmOxEAQCSEKt/M
         K/KFIjrE8CsltrTNnW/RKNx8pxmPA4Zh+MtIcVCB3u21k/amygnItHAxqm/5+0TDirCq
         2X3YgHtpopGpEcgfeDKgV529cV+sGu/ywm+xpwHmjOzlqpYD0qbo+BKlVTElpZHkB0W0
         O88w==
X-Forwarded-Encrypted: i=1; AJvYcCVi6HN7e31sVd66JNpvYVYVYpqM1TjrKhY7lL3Ffve+C3LS2lP7Zcjjk27H/1g/FCroAJUwv/C4TrKS@vger.kernel.org
X-Gm-Message-State: AOJu0YwzbYpcNYPdbrqJ/wBagH1FEdaua01Yn4+XyOa9/VDIdI8hvlY3
	C1Ug3OJ8yqg4isvG0YL8gQ4l26175yjf71SnS4x4HsNiuW1iWQ45
X-Gm-Gg: ASbGnctqIoYUqh6gyXG+5MWjLBChbLiRB7BcO/PVS5KxtYIX1HT5uCMMwycKF9tV5wv
	5YoRlCyQY1mJ9cOM9aFrBI/Y8//e9mzO4s6gssNozLHII8qP8NULH1MpRbZUWSVayyadgloGLUX
	tUCucoiv2P73NJUTLrs0uGONbI7wEi8KElE+g3UgICiwZH8oS0BEvs5+LOc1gIyt54HoyCYdNqp
	M9XZdPYAROLregj1CK7bC2uaMnivNfCaW1/A6GiXqHEK0nOPs3hgTS+1DUT4Q6niXvjRbTh8XsI
	/XpyuTvcV9cEHg==
X-Google-Smtp-Source: AGHT+IEoTFLC8iiNkEfMuvLuAjGsOcPoNsCUGkRVkaCTnkI/9FAsHLtodq8RJ0LSASHuxw87IeFMAg==
X-Received: by 2002:a17:907:9405:b0:aa5:53d4:8876 with SMTP id a640c23a62f3a-ab36e406c75mr1277119466b.20.1737285240156;
        Sun, 19 Jan 2025 03:14:00 -0800 (PST)
Received: from giga-mm-1.home ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384c63b5fsm475163466b.32.2025.01.19.03.13.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jan 2025 03:13:59 -0800 (PST)
Message-ID: <acc25734b7d89b04c19ad50981e3a82a7737dac8.camel@gmail.com>
Subject: Re: [PATCH RFC] arm64: dts: sophgo: Add initial SG2000 SoC device
 tree
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>,
 Inochi Amaoto	 <inochiama@outlook.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
 <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
Date: Sun, 19 Jan 2025 12:10:58 +0100
In-Reply-To: <20250113-aftermost-whole-18401dc54137@spud>
References: <19bb108e93bb58eecc6a53d78ff4e75fc380f072.camel@gmail.com>
	 <20250113-aftermost-whole-18401dc54137@spud>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Thanks for your hints, Conor!

On Mon, 2025-01-13 at 17:37 +0000, Conor Dooley wrote:
> > What are your thoughts?
> >=20
> > =C2=A0arch/arm64/boot/dts/sophgo/sg2000.dtsi | 164 ++++++++++++++++++++=
+++++
> > =C2=A01 file changed, 164 insertions(+)
> > =C2=A0create mode 100644 arch/arm64/boot/dts/sophgo/sg2000.dtsi
> >=20
> > diff --git a/arch/arm64/boot/dts/sophgo/sg2000.dtsi b/arch/arm64/boot/d=
ts/sophgo/sg2000.dtsi
> > new file mode 100644
> > index 000000000000..96afd342bde5
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/sophgo/sg2000.dtsi
> > @@ -0,0 +1,164 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +
> > +#include <dt-bindings/interrupt-controller/arm-gic.h>
> > +#include "../../../../riscv/boot/dts/sophgo/cv18xx.dtsi"
> > +#include "../../../../riscv/boot/dts/sophgo/cv181x.dtsi"
>=20
> FWIW, this can just be #include <riscv/sophgo/<whatever>, /should/ be a
> symlink for that, as there is for arm64. At the very least, I did see a
> patch adding that link in the past. Check out what the RZ/Five is doing
> (that's the riscv renesas chip) for an example of how this already has
> been done - I think it's doing what your "Alternatively I can..."
> paragraph describes.

That's exactly what I needed!

--=20
Alexander Sverdlin.


