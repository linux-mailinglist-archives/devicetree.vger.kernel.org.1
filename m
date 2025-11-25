Return-Path: <devicetree+bounces-242079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 6198CC85F49
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 17:24:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 8C671344BDE
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 16:22:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 046BC238C2F;
	Tue, 25 Nov 2025 16:21:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d0QkPZLY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D80D238176
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 16:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764087718; cv=none; b=G7wZQ7DLwZCn2VUtpR7ienxQS5PmrBITLNf7GQxg4g34WsLtMAnNcEruAoFC3x5uEKYzqjQAKqejrN9PwRgOzeCTVwryBBiUaYR5GFseVNyqn23ByE6zlJe4unCro5Bngv5v5/kswb9QOVQtGalG/FKA/vB61F6+4+aPWsCDf8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764087718; c=relaxed/simple;
	bh=gsqoBe/P+gDXSg+Co7lmatw2lDoEMGYKSHIr2hmgxPk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HDd7/9x7bM/0ezLngm/p+AD18Q2v63EAdldaYh1xth6AkMg09jfVUB4lQGeTFlpGfDHplHB429WoBYarevDk+fQW8jHOnTxUhAlb9TPfLTUdaKwKGF5W69W8BzH0Odf3asQ8iObOJOfV+s2TqY0wSgzCBm5Dpqz5/KM6JUJ910A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d0QkPZLY; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b735b7326e5so1127428266b.0
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 08:21:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764087715; x=1764692515; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eJkq02ikHZSwRsClVSJ/tPC8U25hKZKbxH46PlYpMBA=;
        b=d0QkPZLYaJsJ87+/2GO4+X2kiuBsO9o9WOxXHmlML8zuMabRzTFHckZU991VXIS9B/
         AEkm9AwM8748Idl6rj1n9WuX+fhUkb+mEXyPwvXjDwXmF+axyC1t51a3q+fLuGHyQTvM
         2Qe9npu7vqDsOSEOiZeBBaC9XRSRWsxayfiPeU5fQTWZbUB/XzE0OQA5fO8HQU1QEkaf
         1Mytp5Sfo14janC7gI1Zw1roefFLDexQ/Ds+X/tdlUMtjfmQxjfHi+jmS6FJu1etX3uN
         s7J4Z329ta8feuzPEHUsbo1llMgV4DHlGCZgd8QW9zSKhTsmYQYnx7YVeD+CddqLd6J/
         WFEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764087715; x=1764692515;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eJkq02ikHZSwRsClVSJ/tPC8U25hKZKbxH46PlYpMBA=;
        b=BwiTC8FnmgQKiVDtm9e7KSkCyd466o3bZ4ovb3jlBrqQ4g8oPX1nZIclXgxMm4p4RC
         FvAeKdhsWUS0x+YFTsJkWOp9RSBrsFD8c+2QxL+8NPClc57Yoni7nkX2ryT8rgbVDj/a
         yp28IyJRcbjy9p7PTwFqnEX2gmV4LEXQxpYcFT7jo8pSQpPRvOsjBVtcsgJp5/gbeZCD
         4ZEC8KKS+sDgxdC6BONcrJNZXUiBqk2n3yC/2lxS5npZVMnTyHEimZ+2kuL1w2sibGOU
         3isB5chZbj6Tp6ScXBGWYd45NVc7VoVIUj6aytD2akDeVC0fK4/SAVHfMP4+oeO/nQDB
         Y9rw==
X-Forwarded-Encrypted: i=1; AJvYcCVXLN++SHghcfeOQ8hRoUBJ7c2S79L2jvQLF5Lii/9xdImwLOA7nIGhPeet2loBtSF+VQcRjsSUNML+@vger.kernel.org
X-Gm-Message-State: AOJu0YyweMkuE+6weTZmNXC2yeWBpA6kpDz4YGnJMx5hbxCClyN7wD95
	J3NQeA7+YUtEswVQ2xQ5eahtwhJIB9Vmoq/VsiuwlLrde9huOcIPW9Vt7zvnPrB97buEes1NI84
	sUbahQbWzs9avi3d3q32GyegTAeBH+UA=
X-Gm-Gg: ASbGncuwz0LQDCt0M/rfYZDMZKwvPiAaWEdPvrUsILJwwLNFSZA4zyC/KrNNBzWdDKg
	4Upy/lzM13uHwGoXAsatRiuVYwgkYul0qhVZT/KGsq5Koel/puTLzM2E6ejgJHWUwxUDtTYs+yU
	adqid+ZSH9Ya6VxoMg/zhDfAzjXohU4dZKLvMFLA+aEzHhNRRcGUBir6XPRIrlhy2WF18FJP53n
	rYoeOmFI6sp/jcBjKUenVmOiEAwqGkheArubgLGbavnhP3rtIs4nb2XtObqkf/zREtGAcj3mxBS
	MRXE8SdLAY3iUogX7B7JgEdZs2IYPRYcGmC3xGTJ1QloUfXCFI4Du7hCzhNHxzVV0cEJ16I=
X-Google-Smtp-Source: AGHT+IFaTuSNKW949J7wt7ryuKboB6N1PqIuF4iN44UphE8qw1LNveP1OKQkxeS5iDn3VJkMetN5CqPzDk1CBYMFVQY=
X-Received: by 2002:a17:907:3da4:b0:b70:b9fe:aa56 with SMTP id
 a640c23a62f3a-b766ef467f7mr1852708166b.20.1764087715095; Tue, 25 Nov 2025
 08:21:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251125154738.55869-1-antoniu.miclaus@analog.com> <20251125154738.55869-3-antoniu.miclaus@analog.com>
In-Reply-To: <20251125154738.55869-3-antoniu.miclaus@analog.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 25 Nov 2025 18:21:18 +0200
X-Gm-Features: AWmQ_bmmTaf3QFSVuCUpoe3z9y2Yzukb3QzUTHbBjNW8T7W_p12_sn3XyqS2VAw
Message-ID: <CAHp75VdGfrbFdqgaSE1dVR-h6p3Ju6EuvsX-cAh_JVJiTmknRQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] iio: frequency: adf4377: add clk provider support
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	=?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Dragos Bogdan <dragos.bogdan@analog.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 25, 2025 at 5:48=E2=80=AFPM Antoniu Miclaus
<antoniu.miclaus@analog.com> wrote:
>
> Add clk provider feature for the adf4377.
>
> Even though the driver was sent as an IIO driver in most cases the
> device is actually seen as a clock provider.
>
> This patch aims to cover actual usecases requested by users in order to
> completely control the output frequencies from userspace.

...

> +static int adf4377_clk_register(struct adf4377_state *st)
> +{
> +       struct spi_device *spi =3D st->spi;
> +       struct clk_init_data init;
> +       struct clk_parent_data parent_data;
> +       int ret;
> +
> +       if (!device_property_present(&spi->dev, "#clock-cells"))
> +               return 0;
> +
> +       if (device_property_read_string(&spi->dev, "clock-output-names", =
&init.name)) {

I would rather split this to two

  ret =3D device_property_read_string(...);
  if (ret) {
    ...
  }

which makes the intention more explicit, otherwise it's not clear what
the return values are and what you do with them (since I know it's
int, the rule of thumb to assign to int variable and check it, for
boolean it's fine to do if (boolean_fn(...)) in the code).

> +               init.name =3D devm_kasprintf(&spi->dev, GFP_KERNEL, "%s-c=
lk",
> +                                          fwnode_get_name(dev_fwnode(&sp=
i->dev)));

%pfw / %pfwP

> +               if (!init.name)
> +                       return -ENOMEM;
> +       }
> +
> +       parent_data.fw_name =3D "ref_in";
> +
> +       init.ops =3D &adf4377_clk_ops;
> +       init.parent_data =3D &parent_data;
> +       init.num_parents =3D 1;
> +       init.flags =3D CLK_SET_RATE_PARENT;
> +
> +       st->hw.init =3D &init;
> +       ret =3D devm_clk_hw_register(&spi->dev, &st->hw);
> +       if (ret)
> +               return ret;
> +
> +       ret =3D devm_of_clk_add_hw_provider(&spi->dev, of_clk_hw_simple_g=
et, &st->hw);
> +       if (ret)
> +               return ret;
> +
> +       st->clkout =3D st->hw.clk;
> +
> +       return 0;
> +}

Otherwise LGTM.

--=20
With Best Regards,
Andy Shevchenko

