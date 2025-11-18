Return-Path: <devicetree+bounces-239801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8673CC6962A
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:31:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 52EE74E1192
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 12:31:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 585CC2BDC3D;
	Tue, 18 Nov 2025 12:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKUSGF9s"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4BB1F0994
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763469083; cv=none; b=Vq4lDP3SHJiw8iFMgAKoa90W5Q1B2QmbgQ2k0tIG9K47Jo402TJyHebd/hrW+tnLsa02betcMx6zbwtKUqQ8DYlZBzOPmwk6ULL9DXE7S6ENzw2F5FHzFs51Ns2CL4o53YDpUVQjsBQoFTu7i0vneJVINAbAzNfDtG36t1EEhg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763469083; c=relaxed/simple;
	bh=m9Ag0XwVcJ/i2TFhn9hX//x3aSHh7Km+I2yQlj3xFy0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lijFwmpPekMU9InImfyPWxYqoAEKzneq359KyfEZNTmK4MI9mcPfPstYF7X+xlmsdBbYxp3IUIxRl4uAYGL86ZMetdWQIX6KOy4MPNaGSUzIc0ntSvQxBhUevxOjXAMtFhs7bwtrs/Y+FUt7K7tgZk9xreTX+aCbNVnE0wQGPqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKUSGF9s; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A57EFC4CEF5
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 12:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763469082;
	bh=m9Ag0XwVcJ/i2TFhn9hX//x3aSHh7Km+I2yQlj3xFy0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=eKUSGF9sEwGdNyHbnmH2ofCDD/ZK8dIfn8RY0IyqXljGFe179G4lGMGZ8wM0lBbye
	 qipa0QBnWOJsZv38ldxduNXX4Hd35XASoHtoQxscJGlyi1HpYlHCRfyzok6XiqLveV
	 Xk8Mhw57n75+o8xs6SEQXEoPJBKpJ6IJONixCkQWjN0AdhEXMVyTCXwpdMkbIKBSaj
	 m9nCcjLahT8vkhP2B+vE+swL6LVbUpGIYl/vV8OdNhSs1WVHjsXRiPDYvoxoC6D1iq
	 OtodYdLlWug+er6JUf8/SFG/6UzzpdGMcjQp0XtnZjPOuYB5ck8UIh+EOgvV4mQZT9
	 7+7WEkXLoHjZw==
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-64198771a9bso10174711a12.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:31:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVDKTUp1sa+9oI22eH3ZF0lkTLMu3CaVmXhA5SUSpBB1nJfDukND/wHd17ck9NKvT1JytpxJ7OkaEdL@vger.kernel.org
X-Gm-Message-State: AOJu0YxNUj5+LKs3zj8ZKamfziy/z9Q3ZILGkpiYPJI0NgliFCawTYIq
	5GO5b9K1NLG7y37oH7qh97doAWcu/iLBKs3n0u36g6mvxOAmYhziYuyrPbMYkT6UAnkIP6TEv7P
	nHiw5mMhtF3fdVsMFnSllf6uV9HbiUw==
X-Google-Smtp-Source: AGHT+IGLxy/uh+U7H2PxxZlqgLgPmhKuaV5k4O0onhRVWFJDD4hQPNzjBubtkUHLJz8ovFsi5apooakSSoclnXyLM9M=
X-Received: by 2002:a05:6402:42c8:b0:63b:ee26:546d with SMTP id
 4fb4d7f45d1cf-64350e20abamr13777696a12.12.1763469080768; Tue, 18 Nov 2025
 04:31:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251117211306.725678-1-robh@kernel.org> <679c1f30-7c62-484e-b4e5-7351a23f15e5@collabora.com>
In-Reply-To: <679c1f30-7c62-484e-b4e5-7351a23f15e5@collabora.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 18 Nov 2025 06:31:08 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK4jvZQTQAXCjPgxBCUiENGKgkgaDgZ680QqL1XpS6bbw@mail.gmail.com>
X-Gm-Features: AWmQ_bnX-Hy8ABX9esWeMfZpv2yXK2YBtFjlmKu751pMQcabZozJHtnbzue0-FU
Message-ID: <CAL_JsqK4jvZQTQAXCjPgxBCUiENGKgkgaDgZ680QqL1XpS6bbw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: Apply all DT overlays at build time
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 18, 2025 at 3:36=E2=80=AFAM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 17/11/25 22:13, Rob Herring (Arm) ha scritto:
> > It's a requirement that DT overlays be applied at build time in order t=
o
> > validate them as overlays are not validated on their own.
> >
> > Add targets for all the Mediatek overlays.
> >
> > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> > ---
> > This will soon be a warning[1].
> >
> > Note that if it is desired that the combined .dtb is not installed, the=
n
> > the combined .dtb should be added to 'dtb-' variable instead.
> >
>
> Uhm, sorry, can't we do something such that we don't generate a DTB with =
a
> preapplied overlay?
>
> Even something like generating those and deleting before build finalizati=
on
> could work, I guess, though that'd be hacky maybe.
>
> I don't know if this is the case, but I'm worried that various people hav=
e
> scripts to copy DTBs somewhere (in some partition) or embed those in imag=
es,
> and if they get the preapplied overlay dtbs in the same place, havoc coul=
d
> happen as the bootloaders might be selecting wrong dtbs (as a plus, there=
 is
> no dtbo that varies machine compatible strings, rightfully).

If they aren't using dtbs_install for that, then that is their
problem. When we moved all the arm32 DTs to vendor directories,
dtbs_install maintained the old structure which seemed sufficient to
not break folks. The same should apply here.

Rob

