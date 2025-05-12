Return-Path: <devicetree+bounces-176305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF14AB36A6
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 14:07:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 74B2516CB25
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 12:07:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0DA828E61F;
	Mon, 12 May 2025 12:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XMUMeQXc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAC5267B92
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 12:07:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747051624; cv=none; b=gCztuoEhd5W7A6k271TnAOODok5tWQUocQbfQgThtXxRkcDBNJO65M1T6cmw5pinHjm33sXxMnbER3Q8RoH38w2rMqSKGigib1ytpr7BO2fPF6BIxvOQHaz80BtXV5+yQ0VxkoDFDK5FzRXBAVcC31K/KfAm3U2OWzG/U0CWyIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747051624; c=relaxed/simple;
	bh=8WWWgeWVvcbHTtv0RBP4r1XUoDGKd++Wm/OvMpeSFds=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cc/Zr8f8fJ1Kchq64uBneTmXOcNLj8wsvoswMXGl9eE0W2oTxd+rpn0Av1x88jSokYZp5Bye+pxYqMvuMHNwD/EljcsTn3pP0c8F0+7uTMvoKVVAN2ubj20AjNoOV4J9DKXLCKDZsgHyq0ZYpT40NqEKSAi+XozmH3HLmvQmrzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XMUMeQXc; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-54fc35a390eso5173104e87.3
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 05:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747051621; x=1747656421; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8WWWgeWVvcbHTtv0RBP4r1XUoDGKd++Wm/OvMpeSFds=;
        b=XMUMeQXcovQjNx2ZimJu/UlqDDyOLDgmgXlXFs61Pa1G1nF55+GUxWlksRbU6CUwhT
         gmCp0iTOGcZmx/l/og07QRf7BcOtbvtJg66+/2vv8CNLGfxqJ2X91Ti3FB61BQ23No03
         /lsxpICPQtwjBYskvVugWN10OsPnA8r4LLx0aLKJ05M05erHs9c9VoanTcvRX4f2ZAmO
         4XfOqlTHcJuYkq+KPFRHt/KxGioYhc6omWxxXaqRBiwrJC/TxZFiABx2EvJVKPkxJCEr
         aC9c5tBv0y3WcczQHl/dbkjO63tR4Yzd9ob2JfbJjEgI2k5nTjgCjvjNc/7Z8mf8Om9D
         NyDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747051621; x=1747656421;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8WWWgeWVvcbHTtv0RBP4r1XUoDGKd++Wm/OvMpeSFds=;
        b=KCKXActLJZoAftEOTG5e2xSjybPWhHn3QKbjK3eWJwG0lAWmW7u6GE/r+kKmxTDAGQ
         QuSTl3WLGm6qMvOLZiREsY9il8L2GUqX37vc/7jgd49bd9+oo6a6e5FzGVJnLiuAsEpZ
         lEVccl5q3KxjKERJL+qLi4wzCJTP4bjlJbSvxQUBCzu3AQ6pyRPEWARtJC8+XFTvcugo
         pnoQsKr2gugnG6lpIuNAfVAY6hvUEz5jRelLOMUSqdSOlgVtZar/5iF7TQ8jonqljczB
         /ZzGxcErt2LfHa+hixX1Kq8Z1kQP5yOldxFRcefX+EAu5Y9oqLtQu7MxHM/vIizb9IYy
         qmOQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZS02Y54E5sDXw7pCjiqU8SawhH9GeUjTcc8Ej5yA8HJDT/GS+3uf7AnogevrOSg4epERlpJZl7inj@vger.kernel.org
X-Gm-Message-State: AOJu0YyGP1A8uGjqncYNRYhYsvcfBXFe4J4PNbyG5xvIAXK8iWG+ri15
	N2pVxxUsDsDc6bGVXytfu7ZJJ7glccDr2TYwSQdUTMugl59/0yLzbdnLXqhH4XrHQO0HVJjhLhm
	e7UJQa1pQRU6HbTtCNEHrJHGtNPhddOBjOSMDhg==
X-Gm-Gg: ASbGncsV1s8pKL1jCi2T0QA5/iIMOjnsgfnvFj4M8QY63O4qd7zzdnx83Ze8yL16cQ1
	MHN0HfI/X8TNtFy2wRHAURXPKMAPPzw5w9R/nWtnSuztFTlh0M7TqCnxakDKB3eqnrPxjgK+MKV
	yfKw3jPovsNGiE8zzHGIe/Dq2tOPae/9he
X-Google-Smtp-Source: AGHT+IEx8k4So5xIBQnsOvPLJlE1JiI/knZvAo1IR6NtL1z/XpXpp8RjehZWw4mU/3r3Q3kmxi4fVz2sQoxO2BBk9mc=
X-Received: by 2002:a05:6512:6602:b0:549:38eb:d694 with SMTP id
 2adb3069b0e04-54fc67c477emr3402667e87.26.1747051621225; Mon, 12 May 2025
 05:07:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250406-bcmbca-peripherals-arm-v2-0-22130836c2ed@linaro.org>
 <dc47e9ba-e23d-45d2-bae1-cac8bac2310b@broadcom.com> <ac86467d6f0b2c531f7d1356ade78e17@mail.gmail.com>
In-Reply-To: <ac86467d6f0b2c531f7d1356ade78e17@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 12 May 2025 14:06:50 +0200
X-Gm-Features: AX0GCFuoFVJJ2KLgVFQoQTOvfp299H6PlFukenI3FYuId0cEte28aXrmVaRLmh4
Message-ID: <CACRpkdY0_u_7J_6JLAiVRz-oX+UZViUhyD0fSfi2u3ogVOPdbA@mail.gmail.com>
Subject: Re: [PATCH v2 00/12] ARM: bcm: Add some BCMBCA peripherals
To: William Zhang <william.zhang@broadcom.com>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Anand Gore <anand.gore@broadcom.com>, Kursad Oney <kursad.oney@broadcom.com>, 
	=?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Olivia Mackall <olivia@selenic.com>, 
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, May 10, 2025 at 3:11=E2=80=AFAM William Zhang
<william.zhang@broadcom.com> wrote:

> > Linus can you resubmit a v3 addressing William's feedback? I will drop
> > your series for now. Thanks!
> > --
> > Florian
>
> I wonder if you get a chance to review my feedbacks on this series?
> Let me know if you have any questions.

Sorry William, it fell off my radar!

I fixed up the patch set and resent a v3 now!

Yours,
Linus Walleij

