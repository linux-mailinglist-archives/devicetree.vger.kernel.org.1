Return-Path: <devicetree+bounces-74620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 035E0903CDC
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 15:15:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E2AC11C2200A
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 13:15:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D447417D886;
	Tue, 11 Jun 2024 13:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RIc0qDhp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6DF17D377
	for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 13:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718111655; cv=none; b=u0mCheFDNHVF6kDnztjtgrJuGEn3AV5RyLwfWm0PyxsbdHt4gRuulXal/dsdwCzrBmHvHkHwWBDNMF4SaOd/JK1ZNyrBtV6YYuuJNFB5GMlTL5TGra6+3XmTAvpSODZdDTjcxyMq9k4XZTrgAafbwzyBc4sOie+3JabCNEcfRMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718111655; c=relaxed/simple;
	bh=S6N9yC288X6gryfChW2ktbFCp196YoFEzJpWyYA5Nyc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fP0TzAxiQOz91LyYftv2xOJz6/t2Hs4BMcS3qU6VJ4eCzP1uP/Xozk0TGQldCxriVkU6Rb9/d1453t2KMbOH3q2RH4qSkAWjMDM17DqsCiGyAkDfowAlt2lDj9NHwR+uuN4FMo/PNZG9hyNkM97HMV7bbX90aB11v5kohHytiP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RIc0qDhp; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-52c84a21c62so2739349e87.1
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 06:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718111652; x=1718716452; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QV5K0Ro3eY4f2QViP69c0fhla1OvAvhf/tnKE0VUbIg=;
        b=RIc0qDhpnHtKZQP9/OLQwYa6G3ehQCNbQLTMyBJrKHprTgFu5wLy/GYsawk5hc8J0p
         a+YNGcNnm818eFB0IyJxelf5lInYbnFm+4oJe4JYiJbBzUyfCQdbInMKKIF4CGrfKiuY
         JNoos/5b9H9udKNp55VxyJYir3b48b9DQwNeu3l0jCYtGEtoKc0V/92Su/WFgAgr2T8Q
         wXxyhdq+Z3uaWqUYceQjXLkb8GRNXWLczVsE+yYx7jCAZQaDFKnlBZYZHG0aIW90D6Rz
         WlpXg4M6J2Ju8FbZGwVkD3QW1bBkqG+WsrJb7UoDdPXl4kPybYg4W7V+gQu3XDG+YlyS
         vK1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718111652; x=1718716452;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QV5K0Ro3eY4f2QViP69c0fhla1OvAvhf/tnKE0VUbIg=;
        b=rIsM2jeGzSwVsqQf9TjBEHoUrRIfLmlGpila93KeNnnNs1zLLrPPtL97HRMplFUFt9
         q7MnT+Ya12N2IZTdI3ff7m66NRQPGr1t+aCgAoANRJZZ74VCAcpBU5QUL/Po4149kqYL
         Ur6P9y0AW4UuPjYin7O9VCapHJjvVdFv2lHjJRmW6tVjrjkRwYbz7B9uXNkpeLU1zgKT
         5RawFExtxaEdSzUzotAgUf7hx3Q9Y7CVRdOta1TxNBZsGK3duJrvSpr2ek6OAFECmkwS
         aO8Ab51L15216QtaCNp83lPFZpEHJQKjPmZbJGPpVn7qjitAtGvUyIoI6XnkbGaPTTrQ
         Z4wA==
X-Forwarded-Encrypted: i=1; AJvYcCWfM0pKWc2LI+C0r98MO72jPvs/itvM7vT4i0JPtvBa4W5tupkdkjvXWJztGpUjRsFjE+oZkF52ZTftxUsyJuvhuPDvZH75RFqbDw==
X-Gm-Message-State: AOJu0YzhK8W5EeH/ckfZk12g0ofS34iBbNHijSK9+7H9ZdhABsrBk/Xr
	s1zftXPA+jK9uYaPaQuQpOfTrwrLWlJERd/dsFi66GgJwauK3jqKlti+MYRlX9tlSt4Ixruas1L
	ncAKYNuLF4Owo25a3rAtlW/xT/IIF8BouWHfWa/ThSCKmdn9r2sk=
X-Google-Smtp-Source: AGHT+IF2Jwr6mle3VYNit5lXohZkzWkv9DlMg9O9TILeDdaKuQee+IU2Jv/y1ncE9tDVgUoKH69MUibYVhklRfOIPqo=
X-Received: by 2002:a05:6512:693:b0:52c:85aa:a597 with SMTP id
 2adb3069b0e04-52c85aaa64amr4870009e87.36.1718111652171; Tue, 11 Jun 2024
 06:14:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240611113204.3004-1-paul.barker.ct@bp.renesas.com>
In-Reply-To: <20240611113204.3004-1-paul.barker.ct@bp.renesas.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 11 Jun 2024 15:14:00 +0200
Message-ID: <CACRpkda9q53s95K5egjvDii1VsEc2E=bJxbeij56RFZ5=cS4uA@mail.gmail.com>
Subject: Re: [PATCH v2 0/9] Configure GbEth for RGMII on RZ/G2L family
To: Paul Barker <paul.barker.ct@bp.renesas.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 11, 2024 at 1:32=E2=80=AFPM Paul Barker
<paul.barker.ct@bp.renesas.com> wrote:

> For devices in the RZ/G2L family, we have so far relied on U-Boot
> correctly configuring the Ethernet interfaces in RGMII mode with
> PVDD=3D1.8V before the kernel is booted. Instead, the required
> configuration should be described in the device tree and activated
> within the pinctrl driver.
>
> Changes v1-v2:
>   * Rebased on next-20240611.
>   * Changed the approach taken in the pinctrl patches to be compatible
>     with changes made by Prabhakar for RZ/V2H support. I haven't picked
>     up Reviewed-by tags on these patches as they've changed a lot.
>   * Clarified that patch 6/9 also affects RZ/Five.
>   * No major changes to the dts patches so I've picked up Geert's
>     Reviewed-by tags for these.

LGTM
Acked-by: Linus Walleij <linus.walleij@linaro.org>

But I expect Geert to pick up the patches and send me a pull request when
he's pleased with this.

Yours,
Linus Walleij

