Return-Path: <devicetree+bounces-98954-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E5F9681E9
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 10:31:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C6B9F28124F
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 08:31:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 775321865FE;
	Mon,  2 Sep 2024 08:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k8iCUpru"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99BD0185B78
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 08:31:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725265884; cv=none; b=iq+Z/9uROD8YLp6hG/124a3x99BRekrLdwA4VFWZAxROvQ+cFyTw0scMKlp8EIuEQMYVxVp9ZMe+T+AXuVTc76knzXZwUJ9VbuZjQOCn1630KgQuHyDdeyQqWSLgPbCtkXMsWm52Bj/dnLR9VgmFmvxN1gFwLzjsaCIJkAxLkc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725265884; c=relaxed/simple;
	bh=G3gV11q86gLSIWi/VQcr+bcHn2gjDOR7s+fdLQWwkBQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Content-Type; b=PuD3u/1xiddTXvy1JdYqgvmROSucWUvd2P5d4Kuc6Aku6+VSy49vfVTddQ3wvT3eoj48kJSBKpJbO3DXNHtFf0SIQpS1GFGtYBGinjqZ5jp9br2i5+1wE2VnkWyr7TqwxE63ygMC5/Lrufpz6m1GLdH4UBjBVbfH7Zj8FIziMfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=k8iCUpru; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2f51e5f0656so43419151fa.1
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 01:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725265881; x=1725870681; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G3gV11q86gLSIWi/VQcr+bcHn2gjDOR7s+fdLQWwkBQ=;
        b=k8iCUpru2ZYEtf8BugTdGqVeWrsM8qpLdOykuK3mL1XxjfDE8EAT421V5bhuCX5I3W
         dvyfPp/CkmOkJE2jwWuumUkdHAs0B50N9LTK5aaOcDahgDamNGRKvcQMoM4fX0ZKrK7v
         X7UM4+4O5+lfoFdfNDDyk/nDpInQeE8n7XXmmCxShHIZUFSDgDxCZKZseUhR2gUtZi5T
         9fFqcGjK8iWbOdGKDHucoWPT6TQf77cfrMM2jLTfXVssxEXpMIOgI/QDGQqAvJdoCWK3
         UB+5h7GCTcCdch2DVYaQwRkW0Y60JVd4gJnpO9gg0PCkgIqlrLIx5ssKOfADaqbejMrJ
         2Wrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725265881; x=1725870681;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G3gV11q86gLSIWi/VQcr+bcHn2gjDOR7s+fdLQWwkBQ=;
        b=ib22u1if7EZRdlngUpmNsRlV17t0DKEf0Socdeg7/+qQHPPQRN12PmoLN57OPMOFmk
         eYTBFZPbcWWAy+UDApnhRgOkavSbBZFNliMAhh4DL1hGI0XWtrqm2SCIv1nRTTIQRWkO
         sL946bnPn609QP5HTbpkNGJTYZjCkfuk/URAiF0ji27NWPkkZaHam6JE91qwjtcItZAk
         5n1zDCdPRamFnSSidf5+A4miBoz73FChS+qBsG6r2n5A1Bo8oh2Karx+bbiwJ+BetsAd
         Ikc78f6oYYDpFl/46Liy0ONjXMnv2wtvVdONtdCh5T/eLugZLevhjSS33QhZqU4g4mdu
         XdLw==
X-Forwarded-Encrypted: i=1; AJvYcCXSSGeVMBcBLF014k0L+SBH2mx1a4BLmPk5gCi5mk8Jyg9Ruo2A2U0JIeGedCN/FVyZSZaTKNqVBGaJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwIvnfuK0aTUYs2JNrTJYUAe/q3NNGjJ2o0uIWbuoqhLtyz45mY
	EwiBJGkPq36HYgCLKP4Wg0jf0Poq/yAKSE/BuIHixsPTq5YTRTWADS2UaYBIuuE3TYqLDcxZNzC
	/f4aFwzblViIRVQbHlxx35ip4FNsc2RN8owRc/Q==
X-Google-Smtp-Source: AGHT+IGRL8h6r+SD4R0zZ+kiLxe7VKFRZsEj6vy9zcV4VOcD5QNZi35zdLfodwPasLFWGC0AC3H+OmYWi8fYlu//JVQ=
X-Received: by 2002:a05:6512:1328:b0:533:466d:698c with SMTP id
 2adb3069b0e04-53546b91ecdmr6646060e87.39.1725265880099; Mon, 02 Sep 2024
 01:31:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1724159867.git.andrea.porta@suse.com> <eb39a5f3cefff2a1240a18a255dac090af16f223.1724159867.git.andrea.porta@suse.com>
 <CACRpkdbdXNeL6B43uV-2evCfr6iv8fUsSVtAND+2U0H5mSL2rw@mail.gmail.com> <Zs9BN_w4Ueq-VkJr@apocalypse>
In-Reply-To: <Zs9BN_w4Ueq-VkJr@apocalypse>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 2 Sep 2024 10:31:09 +0200
Message-ID: <CACRpkda7RjjBLApun1v=i9v-G1zbCX66ZcXsx=T54RkMH0zozA@mail.gmail.com>
Subject: Re: [PATCH 07/11] pinctrl: rp1: Implement RaspberryPi RP1 gpio support
To: Linus Walleij <linus.walleij@linaro.org>, Andrea della Porta <andrea.porta@suse.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Derek Kiernan <derek.kiernan@amd.com>, Dragan Cvetic <dragan.cvetic@amd.com>, 
	Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Nicolas Ferre <nicolas.ferre@microchip.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Saravana Kannan <saravanak@google.com>, Bjorn Helgaas <bhelgaas@google.com>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, netdev@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-arch@vger.kernel.org, Lee Jones <lee@kernel.org>, Andrew Lunn <andrew@lunn.ch>, 
	Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 28, 2024 at 5:24=E2=80=AFPM Andrea della Porta
<andrea.porta@suse.com> wrote:

> > Looks a bit like a reimplementation of regmap-mmio? If you want to do
> > this why not use regmap-mmio?
>
> Agreed. I can leverage regmail_field to get rid of the reimplemented code
> for the pin->pad register region. Do you think it could be worth using
> regmap-mmio also on pin->gpio, pin->inte, pin->ints and pin->rio even
> though they are not doing any special field manipulation as the pin->pad
> case?

Don't know without looking at the result, I bet you will see what
looks best when you edit the patch, let's see what you come
up with, I trust you on this.

Yours,
Linus Walleij

