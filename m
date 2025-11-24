Return-Path: <devicetree+bounces-241727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A87B7C81811
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 17:13:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 282783A1D3C
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 16:13:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 763D7314D33;
	Mon, 24 Nov 2025 16:13:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bk0B3ZJb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57593314D1E
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 16:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764000807; cv=none; b=FxAvE/YouvE478P3XUauuQeh/TaJS/Ot3gycS1clAzXwzbn1IXuV2LmyP3R55BTz3etcQ2B53Abwx2HTsF1nh8zot+l+lqv4DaaiPCIP7uqmXDIO7Bc656lc3lqO31TcS48bsClKu6NUTNV1rXKWsEOmiDeHsh2/chssv/cQGnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764000807; c=relaxed/simple;
	bh=s3e2+5ErfhqMPd2m9183lfzRZ3SAL+PNdFL42U93T6o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Fthm55aZnHEj0ZPEjS5FJnYZ8VvuVGq1LmN40srPezy/ufUQyJRUGnOvYaRbqRrvgxB14o5iEZWby5hmGvZcXUAXyfWEexkoB2Lj7WVnaqq+tojE/gxrr0kfxJtCQmMX4Alwz73oi6EuZsryq72dmMsGsvQVJB1OpbGLRIYFQcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=bk0B3ZJb; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-64180bd67b7so5950256a12.0
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 08:13:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1764000802; x=1764605602; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s3e2+5ErfhqMPd2m9183lfzRZ3SAL+PNdFL42U93T6o=;
        b=bk0B3ZJbVAc7bEpTRf1bsMpozsgOS+lqzhVX1Lh3GgVVgsghCNTfFn7wR90l7gHhOH
         BFmtO/Zk3zKfAd7ycrDcYwTm64+uaYtyPChJkFBZEcnfovOB5F7woV614buOO80ZVfkv
         3sqmU0PQif1TNreBFSbzKYApqPOfxS1ljNHPE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764000802; x=1764605602;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=s3e2+5ErfhqMPd2m9183lfzRZ3SAL+PNdFL42U93T6o=;
        b=ejnSyyGeTCgNY04w3XHzqcPahse+neVsSCL3UPSXoiV0LwuNa3c9kgwcWJr6UxLOaf
         QtJwRCsR06z2mD7yBqtK6VBrCKelG1hjJISYsOxtbE01akFw0S4Rdn5brZx3zpVBHKno
         839Rw6bB8WQq3Bg0tz3L4CVJqWthyoUEr0vX06sV0m4IOawKE8UmGMln5iR4a15r75Ou
         rxkS3lKc/bIFqX8cAupQeUI+PrtJU5XcETRiwGl9Zpc8Eo4N9eIfHwD1WskHe2JIClUO
         o54U5xvuUckEbgG9Tnl8HT4Xfdowq/wAY3iMYtGBPtl0vMKE951OdWED6lwU/kF1zUpw
         r8OQ==
X-Forwarded-Encrypted: i=1; AJvYcCWWd/eNLPsScUAQF/S+XlPwU0lNEYdm4amucfac0ey4AL1RhvepqTCmSNsERI5arFz1rM2dklL++tSi@vger.kernel.org
X-Gm-Message-State: AOJu0YyGMdJEOP+XzkwLSkYxEiheknsodXPA2nPe4T4gjHl2OA0FiFyk
	9DPe18yC8Le4UiWvioeKhPvN6Ph9jVuF97MdYoDC+TCkZV53xhJ+3WOiZLoGJWQNvNyg9GyL3rz
	J5ESvdg==
X-Gm-Gg: ASbGnctMhW8QtuOc48zyeEHcKnZHrhhmeAM7m/yftILpQjcJCCUzA/FiFwq0sayY2/P
	IQup+yOMeFqPCgQT78DWA99K28zXIkucJNF+m6TE0ZonilDshAJs0oyz7JgR/teLpUNlY2zPNH3
	P6bxuwWi2tw70zcuBY8SNrtKNEzCntJiCjE7darn9EdL3jCSr88Rx9dAc/fBDGFYeYdcU9mTsAD
	2pAV98Vl52eOjaDcqQAl3Kl5JWBllOxq69E0cSRXy51YtMn716g1/AeHHqQ5BVO/m45f420ENbv
	kd1vfzVhYuAiYyV3EJVp/y5qHJ0aAI7Xw7ZHrauJAsvVR00M30BMJ23ZNa9ctIsgGxsnilG17hW
	XgEpptAgo8TDeiDVuofXR67FwEkNbDDWmElavTjKMoVCIzVF+o8W5Ba8XAdGPOJ1ZDtDlNDwJxe
	yAYNjGF+kE8WgqW81jw7ZeZsTfNw2Mi5z52yH9U3+W/7GLZNp/lw==
X-Google-Smtp-Source: AGHT+IFyCq0oxiYIImBWP2nY0pS0ri1JBJwFMf1n3WgcKO7+YvsILIi1kXiO7tE7GKnkENZtepy01A==
X-Received: by 2002:a05:6402:1e92:b0:640:fb1f:e95c with SMTP id 4fb4d7f45d1cf-64555cd8ce7mr10717101a12.20.1764000801882;
        Mon, 24 Nov 2025 08:13:21 -0800 (PST)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com. [209.85.221.51])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6453645f2easm12341437a12.33.2025.11.24.08.13.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 08:13:20 -0800 (PST)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42b3b0d76fcso2814355f8f.3
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 08:13:20 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUpqDg7tDXamy8pgzgg7H0ToaG0cv6nB0/hF2Twd57Y3OfjDoNesbPFScvkIX7IUo4rhL/pzJL0sqXY@vger.kernel.org
X-Received: by 2002:a05:6000:2504:b0:42b:5448:7ae8 with SMTP id
 ffacd0b85a97d-42cc1d2d6fcmr12194643f8f.29.1764000799689; Mon, 24 Nov 2025
 08:13:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251111192422.4180216-1-dianders@chromium.org> <aSOKS35/huSWd/RW@duo.ucw.cz>
In-Reply-To: <aSOKS35/huSWd/RW@duo.ucw.cz>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 24 Nov 2025 08:13:07 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WVeiGa6YkRmce4McnePEV9X_n79YA0bywPdNZcZCV=ZQ@mail.gmail.com>
X-Gm-Features: AWmQ_bnTIIDYlcAzuiT7QR2OuZm4XUUvQ7JBRQh8rXJBFJr7sqsbbpHBMlqok64
Message-ID: <CAD=FV=WVeiGa6YkRmce4McnePEV9X_n79YA0bywPdNZcZCV=ZQ@mail.gmail.com>
Subject: Re: [PATCH 0/4] arm64: google: Introduce frankel, blazer, and mustang boards
To: Pavel Machek <pavel@ucw.cz>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, linux-samsung-soc@vger.kernel.org, 
	Roy Luo <royluo@google.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Chen-Yu Tsai <wenst@chromium.org>, 
	Julius Werner <jwerner@chromium.org>, William McVicker <willmcvicker@google.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Arnd Bergmann <arnd@arndb.de>, 
	Catalin Marinas <catalin.marinas@arm.com>, Drew Fustini <fustini@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, soc@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Nov 23, 2025 at 2:27=E2=80=AFPM Pavel Machek <pavel@ucw.cz> wrote:
>
> Hi!
>
> > This series adds barebones device trees for Pixel 10 (frankel), Pixel
> > 10 Pro (blazer), and Pixel 10 Pro XL (mustang). With a yet-unreleased
> > bootloader these can boot to a UART command prompt from an initramfs.
>
> Well, booting to full system with working cameras would be nicer,

For sure!


> but
> this is good start. Do you plan / do you have resources for full
> support in some reasonable timeframe?

As you can probably guess, I can't really make any promises. :-) Of
course, "full support" of Pixel 10 by an upstream kernel in a
"reasonable" timeframe could arguably be impossible no matter how many
resources were thrown at it. There are just some drivers / subsystems
where getting upstream working as well as downstream is working
doesn't feel likely as a short term goal.

That all being said, interest / support from the community helps.
Knowing that people are interested in this work helps motivate folks
at Google and (hopefully) upstream maintainers.


> Please cc phone-devel@vger with phone related patches.

I will try to remember.


> And... thanks! :-).

Of course! Hopefully many people find the work interesting / helpful.

-Doug

