Return-Path: <devicetree+bounces-21134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F00F8027B4
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 22:13:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DE76E280DCC
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 21:13:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DE6C199A1;
	Sun,  3 Dec 2023 21:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jpngEKT/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-xf2b.google.com (mail-qv1-xf2b.google.com [IPv6:2607:f8b0:4864:20::f2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AEFAD7
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 13:13:15 -0800 (PST)
Received: by mail-qv1-xf2b.google.com with SMTP id 6a1803df08f44-67a44638adfso26804226d6.2
        for <devicetree@vger.kernel.org>; Sun, 03 Dec 2023 13:13:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701637994; x=1702242794; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1zre7k0c+ogY7ZDcC33WmZ/JK0lLUk1oYQyRpKj1+vA=;
        b=jpngEKT/p2wBNkDf6qi/wUTnA5K+mnXLLLbFdkhkZ0nyjU0/QS6dwIZPG4O+qocjFO
         5ZYM3cGNhXv3F0fhR+wAN7RIDeudcEPXXx7hF+Z2KfWBfHhbfHCF4yEh4QbJsADO8KtM
         ZxrW+mYm0kLgu1Z+d2dDGnIk85gtdizAL3nerYyRqbxbPI4LuZcePtmhdh0s3C6TE4Z5
         BrcaEckMk2MMmHFviVpZahhz/bvogKlvJ8KEjAvJMAI9MhJoSTxyG285nEwzC87zyKvs
         jTIILIJMy+RIBhasftBRAMzu69/VN19i6FkHtBpr+qBcOT722SGrwQruAGajnGVKxa8r
         l4WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701637994; x=1702242794;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1zre7k0c+ogY7ZDcC33WmZ/JK0lLUk1oYQyRpKj1+vA=;
        b=CLJtSsynaTEw73QJiViMkuyTx36TOCp6woImw8LQMIJu8FJMWc+S2JwnwL2ZZ5lSXI
         Jmh9BVukBYIjL4dRj6CQIJ4HP0kdiRR+P8YqwOstKKrUL789WptZgW6azi4b8n15bOAO
         D3jnvu9hPn4FszUAbCaGbKMa1IBuqX0IPFKRGAbYm5ov50kM/xZcUKzv1JKd7Pp+VmEq
         XCLLLFhSLi1mGFZB8v/xxCPmaD2rvHln1lhOCkaIs9kuOyWJ4vyZeL1IKtr8rwGr3h65
         M9yxYWFfr9HiH8RZYfg6kaMZQwGhHQigtpX+F6Y3iiMctJmJrfyQwSCRpQ2dlsdRtOL0
         K59g==
X-Gm-Message-State: AOJu0YwiZiyDdzCFR45J52bEuKHd4MQh7TMDs0r6mHKGHPmWk3Gz8qBQ
	hCPfA0xe6z/bcJss6J/tmdnkN4EvMVohgLheGmvXKw==
X-Google-Smtp-Source: AGHT+IEjWYoskDsT6qQclByc2iZUX7v6m4JDySTfzZSHqy+bfmVegv8AsVt1GeFl3vTcQVGoNpPgv7MrMsxp6o0F0JE=
X-Received: by 2002:a05:6214:1784:b0:67a:a721:e13a with SMTP id
 ct4-20020a056214178400b0067aa721e13amr3825700qvb.103.1701637994586; Sun, 03
 Dec 2023 13:13:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231201160925.3136868-1-peter.griffin@linaro.org>
 <20231201160925.3136868-6-peter.griffin@linaro.org> <CAPLW+4mm8+U=wnXRfRG7QQHh02tiS3uo3Fw9ywYaCumV1qPB=g@mail.gmail.com>
In-Reply-To: <CAPLW+4mm8+U=wnXRfRG7QQHh02tiS3uo3Fw9ywYaCumV1qPB=g@mail.gmail.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Sun, 3 Dec 2023 21:13:03 +0000
Message-ID: <CADrjBPqgZsE1v5KTiqfqhraX2skx5b6=5zbsojup+M3r2G_f3w@mail.gmail.com>
Subject: Re: [PATCH v5 05/20] dt-bindings: arm: google: Add bindings for
 Google ARM platforms
To: Sam Protsenko <semen.protsenko@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org, 
	jirislaby@kernel.org, cw00.choi@samsung.com, alim.akhtar@samsung.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, saravanak@google.com, 
	willmcvicker@google.com, soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel-team@android.com, 
	linux-serial@vger.kernel.org, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sam,

Thanks for the review.

On Fri, 1 Dec 2023 at 20:22, Sam Protsenko <semen.protsenko@linaro.org> wro=
te:
>
> On Fri, Dec 1, 2023 at 10:10=E2=80=AFAM Peter Griffin <peter.griffin@lina=
ro.org> wrote:
> >
> > This introduces bindings and dt-schema for the Google tensor SoCs.
> > Currently just gs101 and pixel 6 are supported.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > ---
>
> Other than spelling comments below:
>
> git st
>
> >  .../devicetree/bindings/arm/google.yaml       | 53 +++++++++++++++++++
> >  1 file changed, 53 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/arm/google.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/arm/google.yaml b/Docume=
ntation/devicetree/bindings/arm/google.yaml
> > new file mode 100644
> > index 000000000000..be191e70192d
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/arm/google.yaml
> > @@ -0,0 +1,53 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/arm/google.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Google Tensor platforms
> > +
> > +maintainers:
> > +  - Peter Griffin <peter.griffin@linaro.org>
> > +
> > +description: |
> > +  ARM platforms using SoCs designed by Google branded "Tensor" used in=
 Pixel
> > +  devices.
> > +
> > +  Currently upstream this is devices using "gs101" SoC which is found =
in Pixel
> > +  6, Pixel 6 Pro and Pixel 6a.
> > +
> > +  Google have a few different names for the SoC.
>
> Suggest removing period, or replacing it with colon.

will fix
>
> > +  - Marketing name ("Tensor")
> > +  - Codename ("Whitechapel")
> > +  - SoC ID ("gs101")
> > +  - Die ID ("S5P9845");
>
> Semicolon seems off here.

will fix

>
> > +
> > +  Likewise there are a couple of names for the actual device
> > +  - Marketing name ("Pixel 6")
> > +  - Codename ("Oriole")
> > +
> > +  Devicetrees should use the lowercased SoC ID and lowercased board co=
dename.
>
> period -> comma
>
> > +  e.g. gs101 and gs101-oriole
>
> Missing period character.

will fix

Peter
>
> > +
> > +properties:
> > +  $nodename:
> > +    const: '/'
> > +  compatible:
> > +    oneOf:
> > +      - description: Google Pixel 6 / Oriole
> > +        items:
> > +          - enum:
> > +              - google,gs101-oriole
> > +          - const: google,gs101
> > +
> > +  # Bootloader requires empty ect node to be present
> > +  ect:
> > +    type: object
> > +    additionalProperties: false
> > +
> > +required:
> > +  - ect
> > +
> > +additionalProperties: true
> > +
> > +...
> > --
> > 2.43.0.rc2.451.g8631bc7472-goog
> >

