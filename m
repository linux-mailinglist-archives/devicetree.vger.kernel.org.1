Return-Path: <devicetree+bounces-225986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 053D1BD2B4B
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 13:05:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B1BC1189CA01
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 11:05:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FCB62571B0;
	Mon, 13 Oct 2025 11:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cV0QrZYQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2857E305974
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 11:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760353370; cv=none; b=Dogpn5RWwgeJCGQQm6YelQbQF5WiQGCe8f1VHeLhw3f8ZHPD2s7UTZyLrMEBiyUKDTVjnclqadj7mUBDUR3aloOuc+CxEiSpWFaNpy2QfXMAqO2gGoR3GxQzbOWS/DzWRwrvBJSMMV6IG/T9c2TaH5b2Ravh6KBIJlyuVsRCpKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760353370; c=relaxed/simple;
	bh=CKoGj0EfJSSSZnNc93o/3z1IhI5G7ANKF/pI/LrBGI4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cYVtp6MlGpRjnFHjsR6KRLaJEr9VmsqMFy2oQVPlt0bZvpAba7D9CRJaVAnMis67Aq1P4KDT/XIynssj5cbfUoFkm7jEZYjRJ3JIjJkojopC68/p4dzF/eYcVJi9v6MLJbAwp7PaWjITxvkG1c2gwgWJbtSrM/8+vDXO1lXfiyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cV0QrZYQ; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-59070c9111eso4994843e87.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 04:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760353367; x=1760958167; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T7wVvrelX1rBOcw+ZepaH7C5yTmrA+Ts5kdb52LOjIc=;
        b=cV0QrZYQfXByovhpSOsKHMNgMIlZRkruRBwT17Abq50b+ytRxcKgw+PjH2qQslyzro
         kl4b8u7WPBtZb04369kXWwIvgE6K0bpkeB8fne1vX9b2jhOcSJPX4yBX+aDdVzxao+Pp
         oiehWr87POc7cVHFWuhNmGU+zDJBl3qR26p9NHx6VPmkE6Q4LozamAlp6mJ6V6pNF9sP
         te0m3HSGI9YB9iuFdi+VCik6/VySemSlCt3swj3DBkDhJCvBjDNmHarUtqXh2w7YX4/x
         us14+U2GwqwejjWyHcHSfuN7AELeiJ8Wes5Twk2jEqbq2S58dTIOwBEi9WBlIJplZli3
         5vRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760353367; x=1760958167;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T7wVvrelX1rBOcw+ZepaH7C5yTmrA+Ts5kdb52LOjIc=;
        b=gxjGvKEx3YFB49sQoblo0rXjMToRjbIET+j0nBLIaTuWlVggWMFHZq73y0N0j0uX2h
         piSLkGjXexF/ha6cnMFwwUqSuSaimxKD9+sln2oni5w/DACCr1ytI/3jAj4QhQLbidZX
         tpcCViv2+wz0cte0vTY8XR0ArYCPRavgfMbZzGN7u3ukAZ3Ch1J69Dew6RNXbBSIm71W
         bkz4LviPePhzV93PybvLrB51nL+ozmgf4uTxQvFImNlX8IMYWttbDbnq797z3l+vZlQE
         u8x3zLTnZ/nnTbori3w5Mkqold/D1ojpKiGE8BL6346oPdqX/K4oT1nw4tb9Jc2jj44+
         1ddg==
X-Forwarded-Encrypted: i=1; AJvYcCVki/l70nrQfbd9qC0B7QiR3BL4fdSFs4fhIYBnDqjtd5dYCCBT+rdJVyngu99YtMBo1Iin2GT6f5Q4@vger.kernel.org
X-Gm-Message-State: AOJu0Yxdcw0LpC6jx1vren+1S+hcajp8QH489DbGO72YsBERlU2niQ62
	BkZkpxu2VoZtgdEt/YMH4PgSAJCfnckgbtj16MRDmwZZnJ0k5bE1pzlOPSq8o0uIEO45HAAQ7yZ
	t0SRvCoyADEsS9xvneITi6dvEd9BNJ4uw/h/8jBiwtQ==
X-Gm-Gg: ASbGncvTNMspYdljBAYq81h52HC7cVe8giJ1Z7nEcZ6EQuR8VHxBEidBLWR9ey3LZ7N
	o4dQD/Ua2QZAIdOxLuON/RcWHY2oPdeq0w7YX3pZyO0dZ5ivP4xro0wdLfGZF2UoypDOvtmin1y
	nflEJMsXD7Z+fSWSrMLsQXaj0ESeucO8mmg5zywbZxuRwhZ/mnybPJqlCQ2gkdyVQ6p8IOiWAhw
	6tzLScoW3atVd+zJPn+Ljw5WcElww==
X-Google-Smtp-Source: AGHT+IE5w8+CFwr8uCG9h+7RoIC2CQYU/iHXde/XXvD4ftzJpLa+56fpca+R4z2uCP2WV6KK8wJ5ehq1lJGOlBMOm2k=
X-Received: by 2002:a05:6512:3b8e:b0:576:f133:9288 with SMTP id
 2adb3069b0e04-5906daea903mr5757309e87.54.1760353366541; Mon, 13 Oct 2025
 04:02:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250926-manpower-glacial-e9756c82b427@spud> <20250926-unshackle-jury-79f701f97e94@spud>
 <CACRpkdZ5RCcaNJB_3ufAgpDtdJBKfOVrMbJVAQWaVSOkY0-XNQ@mail.gmail.com>
 <CACRpkdZo=c0BnSLm=FKRMNYKEaPAHBgtfhD9txhPofts4ApDkw@mail.gmail.com> <20251001-backless-cattle-a98db634d7f0@spud>
In-Reply-To: <20251001-backless-cattle-a98db634d7f0@spud>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 13 Oct 2025 13:02:35 +0200
X-Gm-Features: AS18NWDldBKDLZmy6X2cYSIZCD5j-DgRpx4ZkxSimEcAB1Z5J3nwMyhaKn7ksvQ
Message-ID: <CACRpkdaEsa5gSpGxWG8xudMePt12nZaZRCRrW5Bf5JQ0f1K9Zw@mail.gmail.com>
Subject: Re: [RFC 3/5] pinctrl: add polarfire soc iomux0 pinmux driver
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 1, 2025 at 5:45=E2=80=AFPM Conor Dooley <conor@kernel.org> wrot=
e:

> They're not actually package pins at all that are being configured here,
> it's internal routing inside the FPGA. It does operate on a function
> level, but I don't think there's a neat mapping to the pinctrl subsystem
> which (AFAIU) considers functions to contain groups, which in turn
> contain pins. I suppose it could be thought of that, for example, spi0
> is actually a function containing 4 (or 5, don't ask - or do if you want
> to read a rant about pointlessly confusing design) "pins" in 1 group.
>
> If I could just work in terms of functions only, and avoid groups or
> pins at all, feels (to me ofc) like it'd maybe match the purpose of this
> aspect of the hardware better.

What I would ask myself is whether the abstraction fits the bill,
like if there is a natural set of functions in the silicon, then the code
should reflect that.

When it comes to those:

+static const struct pinctrl_pin_desc mpfs_iomux0_pinctrl_pins[] =3D {
+       PINCTRL_PIN(0, "spi0"),
+       PINCTRL_PIN(1, "spi1"),

At least be careful with the nouns used: are they really "pins"?
Should they be described as "pins"?

Maybe it is best to come up with some custom struct if not?

Yours,
Linus Walleij

