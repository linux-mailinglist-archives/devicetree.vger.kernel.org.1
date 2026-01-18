Return-Path: <devicetree+bounces-256600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F991D39B23
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 00:19:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9BE9B30011A5
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 23:19:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48C523191C0;
	Sun, 18 Jan 2026 23:19:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOb5XTCI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DB827D786
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 23:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768778350; cv=none; b=rtG0RYZXrSY68PgwIOa6lUJ0VhhuBp8+cn5IU6yxlDA9cHXMG5CM9eWJKBEuvOq0V/pZZKnVWc3qSadqIOkUou77KkmLCyxEdXV0EwKFM0rouHrH9/oLnBVcj8wnOyC9fWeGTOR5TqCjSJc81cLmEVwIyE1BuNWgERh4DGG1NxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768778350; c=relaxed/simple;
	bh=ZHXfaC3noysTmx6rjQUJs/6Qvr/oXW0pXeAZCZb8zog=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uipzPz0/FtWhS69Sx+hqTKTvqNlwMl0PFD5oUyVQlxgYbUkO47UA65TgSZ+QOrERdIgpXfmWbT6Udhw1MB3vce+C2fMVjM0sm3gIfsEnKCHbXQYTeGgviItD4YtAf6HfRsupP/lee4ihQhuQnBRpXqmSwA3GYWhGFLgti77QyPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOb5XTCI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5172C2BC86
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 23:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768778349;
	bh=ZHXfaC3noysTmx6rjQUJs/6Qvr/oXW0pXeAZCZb8zog=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=MOb5XTCIB4sh3H8j6Y35gFihpjjTLFeiMn+6yU7J50Wl3/25TGGN86cL1Eiw3xFTb
	 k8rbk6cM3nBjc8jem7mY//VqzsU/r8DxBYf2VWV8hfqrrbgEc2eRLuV1bv2GnG8Bmy
	 mt5hNAq0dJL0J70hijLmJqmvlrg+L3114RTLhuXuOTcqIUfz1h9tCgQpIdNil8/e+f
	 k3fkuYouHbcCeM45tmKVtdmDBjejMI5J0rPaANvAJYN+Fl0XKTUEhBKCMxjdvaskoK
	 YfOGi0vEtmDWeLxY/j2bfdmIEXItKaoTM9XOHhVY0f8kNPPF1sAH1FPVw7i/926daI
	 n0We2ZOGfjXpw==
Received: by mail-yx1-f42.google.com with SMTP id 956f58d0204a3-649278a69c5so655463d50.3
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 15:19:09 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXGDLtFzy0md5t7WpP7sCayCfnWJVnM+WMnvfb3yf/5VczKkMypFJFgFNrZz9CblcnIDGiufDM0JSq7@vger.kernel.org
X-Gm-Message-State: AOJu0YwPDH7a93lk9AUVEur2Ok+eEJGY3CjprS56qouICRlbm1fBZSHq
	Juianlf6QH1z2il9D2sjZQ7AcqLfbWPJE68LOPUhgY0FIRt/F0SLootULH10h5FYD4o2yzEumZT
	uPPlVtPva0IaYzDibpY2gB5RgFi+QIT0=
X-Received: by 2002:a53:e1f5:0:b0:646:bb17:1515 with SMTP id
 956f58d0204a3-6491648c52bmr6418667d50.19.1768778349063; Sun, 18 Jan 2026
 15:19:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260116152621.75205-1-antoniu.miclaus@analog.com>
In-Reply-To: <20260116152621.75205-1-antoniu.miclaus@analog.com>
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 19 Jan 2026 00:18:58 +0100
X-Gmail-Original-Message-ID: <CAD++jLnTM2u0pD3EddbfpmAHY_SDb-cm+5kfEWWEF9o0i5LSmw@mail.gmail.com>
X-Gm-Features: AZwV_Qg7Q52eub8qlUhJtJGR7evLR2ll2yLZsHlSOuR_gj0jgX76Cik-87EOvbA
Message-ID: <CAD++jLnTM2u0pD3EddbfpmAHY_SDb-cm+5kfEWWEF9o0i5LSmw@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] mux: gpio-mux: add enable GPIO support
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Srinivas Kandagatla <srini@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Antoniu,

thanks for your patch!

On Fri, Jan 16, 2026 at 4:38=E2=80=AFPM Antoniu Miclaus
<antoniu.miclaus@analog.com> wrote:

> This series adds optional enable GPIO support to the gpio-mux driver.
> The enable GPIO allows the multiplexer to be disabled before changing
> address lines and re-enabled after, preventing glitches that could
> briefly activate unintended channels during transitions.
>
> This feature is useful for devices like the Analog Devices ADG2404
> (4:1 mux) that require enable control for glitch-free operation. The
> binding documentation now includes ADG2404 as a supported device with
> a dedicated example.

Overall the idea is sound!

I don't know if "enable" is a good name for this GPIO though,
because as I understand it the signal passes through the mux even
if it is "disabled"?

I would call it "hold" and make it active low if it holds the mux
state when this signal is low.

hold-gpios =3D <&gpio 0 GPIO_ACTIVE_LOW>;

this will have the intended semantic.

Yours,
Linus Walleij

