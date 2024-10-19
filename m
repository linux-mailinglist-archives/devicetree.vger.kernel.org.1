Return-Path: <devicetree+bounces-113271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 006C79A503B
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 20:16:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9AD412857A6
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 18:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3066A18CBFE;
	Sat, 19 Oct 2024 18:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SKK1sKiz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3B17B647
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 18:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729361803; cv=none; b=uNbz2eUEt7ja6MR3AWGN0CpSah8XcXwzouMeEDLS7DHmBzHlXNruGApiFV4Nkk6LwfzVrdiNfQhdPKGeRkNz6R5uijmTUet0/ZBPqEENUhyvXzGeLG72QLmzMU5u8cke4Cmpwc1fjFiuwZK3vKUQa8cfeRBGiNlZBRaV6VNndno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729361803; c=relaxed/simple;
	bh=fm4/TW/XP6VyjNkR7aVNVPKpRM/+37sn/T2jS9WV0ik=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J6cbpP/vWwC4v7fxdQzyjYbc20VydXdB1RY4gt1I6s4g/1d266GoaUGOjjTIhPpUJjrYZZa0HO2nn8pyL9gYBdxFPhs91uFmPoILRaBYYHGVigAPqtWMIAMJuNoagVI57pb7iqGqzoEURO1WD7xYQZox7/hTkKVx7ks3VEBVqkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SKK1sKiz; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2fb3da341c9so32566101fa.2
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 11:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729361799; x=1729966599; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fm4/TW/XP6VyjNkR7aVNVPKpRM/+37sn/T2jS9WV0ik=;
        b=SKK1sKizczEgTHfecxOhWciuXpxmAIQT6V2QIa7024IHh+swSNpX1QFtF4MlvTa+d+
         ERC5whxdqoxknZxbFuh+5z57LIQaMy8SS2ZqtCqCInFhd3xoDDOlIcsz8U/FccKiWEoQ
         V2WnPqfM70supDwmrfUEMo6cEBowDHXHyliqCubgDW10NL6pcU/8jRuHlFsJrgx/Bp7F
         1+lEGvCmbOSVLEfmE0G0pM0tZmosfdKF3s4HlNwjDtfQMxqWZpbfaxFmtTvcVpwB/AKp
         u+hxir/uKaoyLZ/NcrJKt23fYPngPRxiIIKMR9NMNnhXzA3KqhuPn4fDH8oixXNgHyek
         8fhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729361799; x=1729966599;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fm4/TW/XP6VyjNkR7aVNVPKpRM/+37sn/T2jS9WV0ik=;
        b=l4UzqeAay8AamReZu4+P98QPmD44rKVGLdC5oY7SeqRGFuzE00YMDCAYMRpezkHUew
         H9Kshf5YcTSsVrpcuRX0QbXhwMyzDugwJPQOZ5FUY9DM8tcB11c9vfbcVvwXus5uHyUL
         LXjN4Zko9Bypk9p7/kH34m1t4Sl3R/40KJ66A3nJD+teDY8FZK5L9FuGDjIRTXMsAnMa
         wzz+GWdERynung9NFLazUyBLPvbX13lf8R8BJTLPILcopPwJnR7YxGfaIjMm9DboDBtc
         fJUQ/ILbZMtgE77pDnSwdIqCBxxlApETv4r+B8Hnp7L08/8xZFksCtyxUbPegMFWZmRJ
         tMpw==
X-Forwarded-Encrypted: i=1; AJvYcCWBephdoCKU92z4l4rgw4czbchAF1/MRqJA529owRTRir57OxEsmnaupBu/Urir2FR1Tz2MZyET3LV+@vger.kernel.org
X-Gm-Message-State: AOJu0YwyPSyOz53i91KBAOFNW5Xd2qrz/kC9aGbVaxqG/H+22HLpDDsH
	CUt5xC6Ptnm0AahaYfBki3Hao4bHjf47IMXxawngvbbbvs5TSY+7LsMOokplBiuKrF6oFmkCpsC
	ackJU72HyP/8THk4L0fp8lMIDIK1WSgsfoYE+1A==
X-Google-Smtp-Source: AGHT+IGUIof/qmUxPJlydOgfWxZ3IUmvMmAPDvHqH5LTK6/M1DHw70PzZPpjH+qyF5nhY1Ls17fpniLDuexAWk7NRWk=
X-Received: by 2002:a05:6512:1582:b0:52c:9e82:a971 with SMTP id
 2adb3069b0e04-53a15441e9bmr3361553e87.7.1729361798914; Sat, 19 Oct 2024
 11:16:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241016-02-k1-pinctrl-v5-0-03d395222e4f@gentoo.org>
In-Reply-To: <20241016-02-k1-pinctrl-v5-0-03d395222e4f@gentoo.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 19 Oct 2024 20:16:28 +0200
Message-ID: <CACRpkdYnaJsKKfcdhHeMGTTp86M+wNODzZx2e=OYbxQ4Jc4Rjw@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] riscv: spacemit: add pinctrl support to K1 SoC
To: Yixun Lan <dlan@gentoo.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Conor Dooley <conor@kernel.org>, Yangyu Chen <cyy@cyyself.name>, 
	Jesse Taube <mr.bossman075@gmail.com>, Jisheng Zhang <jszhang@kernel.org>, 
	Inochi Amaoto <inochiama@outlook.com>, Icenowy Zheng <uwu@icenowy.me>, 
	Meng Zhang <zhangmeng.kevin@spacemit.com>, Meng Zhang <kevin.z.m@hotmail.com>, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 16, 2024 at 3:00=E2=80=AFAM Yixun Lan <dlan@gentoo.org> wrote:

> This series adds pinctrl support to SpacemiT's K1 SoC, the controller
> uses a single register to describe all pin functions, including
> bias pull up/down, drive strength, schmitter trigger, slew rate,
> strong pull-up, mux mode. In patch #3, we add the pinctrl property of
> uart device for the Bananapi-F3 board.
>
> You can find the pinctrl docs of K1 here[1], and the original vendor's
> pinctrl dts data here[2].
>
> Note, we rewrite this series as an independent pinctrl driver for K1 SoC,
> which means it does not use pinctrl-single driver as the model anymore,
> see the suggestion from Krzysztof at [3].
>
> Link: https://developer.spacemit.com/documentation?token=3DAn1vwTwKaigaXR=
kYfwmcznTXned [1]
> Link: https://gitee.com/bianbu-linux/linux-6.1/blob/bl-v1.0.y/arch/riscv/=
boot/dts/spacemit/k1-x_pinctrl.dtsi [2]
> Link: https://lore.kernel.org/all/b7a01cba-9f68-4a6f-9795-b9103ee81d8b@ke=
rnel.org/ [3]
> Signed-off-by: Yixun Lan <dlan@gentoo.org>

Patches 1 & 2 applied to the pin control tree for v6.13!

Please take patch 3 through the SoC tree.

Yours,
Linus Walleij

