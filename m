Return-Path: <devicetree+bounces-35893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B097583F236
	for <lists+devicetree@lfdr.de>; Sun, 28 Jan 2024 00:35:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6DA972813E3
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 23:35:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EB2A2033F;
	Sat, 27 Jan 2024 23:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cdQGcePf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0FF21379
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 23:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706398520; cv=none; b=RxvPQjOnEr5f94VEVPZZwZdYzfEn/FKGRw2Wlj91G6C5eMcBKAWkrrlo4opqk8tg51C0DI00Cpw9U1zBTBs94FDf3HQ4OCCZAe4SDGogr03Gs71zPRwnyVa9aXED2xqELTmjCPaHQz1OxuF21Y6DxuIia4GhVqt06qR2+q1ze7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706398520; c=relaxed/simple;
	bh=8dcs2TTkHifbaPOo0/++EzaKXk8QckqprO0d5UdvmNM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gd5qCvBILtdTXrdCL1arI0XT0aXnJAmio9ORqXC60TpRjtxB9jFq0r+tu8/H+D57J5/I2hl8tlcJiBQArFKqqHlATYfA/g8QmClJJKYpfUEuwPFuoAoGqk7dQCqDQw6YNs/ourjvhb6vOfFLfygB9O3hVEDbp8gy03Bz43LvhvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cdQGcePf; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-dc226dca91aso1499224276.2
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 15:35:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706398517; x=1707003317; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8dcs2TTkHifbaPOo0/++EzaKXk8QckqprO0d5UdvmNM=;
        b=cdQGcePfn+hWNuLbjso96g32qo8/g2TeSlD6FwjRe2t4wKn30YYAr8TA+t7sdi2h6h
         rt1dmwhPWR7FJWmyBlGgnHgCzDY5RJBuAKgbJQjSv/5Tnhk2JaEY2/5M6SBuPVkiZax5
         frvV24EabdjJZYpVIr3aR1pVC2NUurehT77c4U+iTyq5AFlG9LB6DiKsVVTo+8Dg/qYs
         hCm3Ei3Nx9vT/y+2gAVKJMR73CCiRR9snspWLrQudQ+9IX4WGFjZQDg9VaHN4XhgBuMI
         yQ8cXYx5+RmH+ig3geK6pJRoqq5WXNTYT6ymKi3o4ga6imFCtZovEKis2F/hu2L4u7rj
         yr0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706398517; x=1707003317;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8dcs2TTkHifbaPOo0/++EzaKXk8QckqprO0d5UdvmNM=;
        b=Lq1bRAej6CI4bzVjpYtK/QiGba8z7hEdogPqMZokV9znoaZr1zN8WVLCnNzk6WQfyv
         eqgDoELBy+enMA4t0ae9CQfN2KJfLE1kVNNxzLgf97dS+4LPJ9ws8/bnIE0fBP298+NM
         S+sFTOU7sMSwFMOLD29T9xZdRv0YHtQ2BtjRiqKVKP5DAgGoHplmAVzB9LWutfewFDXn
         xI1pmnGUcjNvQB4QlvA38j8OGfvdxiF/uyqFZq9/QVRNfMMqrGhQTmfzIxiUU4gyVO/P
         pk9N3u/Y+/vyJfKlD9vpx6EZOtY62+N7lXM/7YKVBG3wexsgewo3CXno1pXDPL4v3FzO
         hrTQ==
X-Gm-Message-State: AOJu0Yzcje1lE6A+w9j8evhpLEy670IkGQzG5OW0sw6sp5jYJDI8e85B
	pFQg4K+huR/S/euLkWj/yjae6MTmRLqstxY7km2S4Ve7DDP0d3FBO3OafLL/gxxgGa9lNnrLkkp
	nSq4TiJepHra1jbRh0M+x2UPwWU8RfPHzKT8ZBw==
X-Google-Smtp-Source: AGHT+IG+6hWb0s/foSEZLTCcN7SlXEPPPDIG9Ie8b6zG/DvFbXAnoRbb9i8W1JXuHzPD5xc+sCGWgYH3mLKI3aCinio=
X-Received: by 2002:a81:d80b:0:b0:600:2a65:cad2 with SMTP id
 d11-20020a81d80b000000b006002a65cad2mr2081570ywj.26.1706398517251; Sat, 27
 Jan 2024 15:35:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240110-pxa1908-lkml-v8-0-fea768a59474@skole.hr> <20240110-pxa1908-lkml-v8-2-fea768a59474@skole.hr>
In-Reply-To: <20240110-pxa1908-lkml-v8-2-fea768a59474@skole.hr>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 28 Jan 2024 00:35:06 +0100
Message-ID: <CACRpkdbSSH6mBYVyk2u3G60vmbED7WhEdYnXoc3TwovOo3oJhA@mail.gmail.com>
Subject: Re: [PATCH v8 2/9] dt-bindings: pinctrl: pinctrl-single: add
 marvell,pxa1908-padconf compatible
To: =?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Haojian Zhuang <haojian.zhuang@linaro.org>, 
	Lubomir Rintel <lkundrak@v3.sk>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>, 
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>, phone-devel@vger.kernel.org, 
	~postmarketos/upstreaming@lists.sr.ht, Karel Balej <balejk@matfyz.cz>, 
	David Wronek <david@mainlining.org>, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 10, 2024 at 8:04=E2=80=AFPM Duje Mihanovi=C4=87 <duje.mihanovic=
@skole.hr> wrote:

> Add the "marvell,pxa1908-padconf" compatible to allow migrating to a
> separate pinctrl driver later.
>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Duje Mihanovi=C4=87 <duje.mihanovic@skole.hr>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

