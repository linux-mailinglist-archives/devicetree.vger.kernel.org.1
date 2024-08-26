Return-Path: <devicetree+bounces-96611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DE595ECE3
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 11:16:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A941C1F2203A
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 09:16:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06983145A1B;
	Mon, 26 Aug 2024 09:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g4CbiyN/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A714145A05
	for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 09:16:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724663779; cv=none; b=So9KIwW3f+8F9jnaJUg6onLHYG1owbKP697cOm6G2ixkLZLPXd2ov8nQy7JkA3jIKCPWo85cUidrdsQr2Onq5AMdjK/AM91SmH7cIMsSsdJpk7IlQTiRuJ4qBVOfn9ZXEdhr28Y/FhnCE1He2KUKkEokrOX9PPq0gfKXAwt1th4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724663779; c=relaxed/simple;
	bh=Vj9u1E7DvkaaO4ShELzXZnCJcuqvug4oIsq0JHfrSiU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HovMushfuFL7OmeEziFYcA7Fvi0t2jZuwRRli4Ke6F9NQwk2j3lvHqyb7XF/shprHu/B65HPYd5Wy6rZRswappLffJyRvALyNdYaJxSVm2XTENaoItUKAClSp95ziK6ZJ+7spC07yXVmX3UiMfZWjcH94k8XoAGNUrPUUssLD5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g4CbiyN/; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5334fdabefbso3667737e87.1
        for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 02:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724663776; x=1725268576; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vj9u1E7DvkaaO4ShELzXZnCJcuqvug4oIsq0JHfrSiU=;
        b=g4CbiyN/kZNqXCWQ1t90HqWG2Iw+KWf42cIuLhxeA4CuZFNvHV5W9ITDqZGG0qDzyg
         wBAK3eqUkQI+brcXXoSbhFjae2pG9a2u9xIXEAG0+cw5Sbo+G2Z+0+kHEvXmYKaQvShf
         ZvhJ2Fc5r0rVBXG8OL9S0CpTlzObccWgI/rNDPIyPfOLMSxONOoWlOUvRgAmmHXuUZc3
         Z3DXKJ8HeDBeHUax9QWTBXB3y/CIh94Atv+3XBl+oQgL6QGagknnweE+G5IwfFwULO93
         GQ9l+AlZ6xuiWwdhCFD/2YoFREaS3YC4fSAxbt/WwBc3TGOYa3z/Z384VHjQimg92m+Q
         aXaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724663776; x=1725268576;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vj9u1E7DvkaaO4ShELzXZnCJcuqvug4oIsq0JHfrSiU=;
        b=bW8aEMb+pCo6+RXxkOuoDEczpM9mRW3YQbdVPeUh+ILkfN7S+T0Bem8ZFzIe1/q4ef
         wGKRQH2ofMmYoBNhnLXkVGuif8iccYXXNmgA8QIpkjER4+tjNSqX67v/oLR5pcIGpwUT
         5cSUigW2aWuMcK5tjXW6Miw3hReJGLtXcgNjLxxZVXQYhxdvGPvyB3HCmBQp1cBh2JI0
         sl3n1jJt0ly9BU/3SRe/ZjEMpqd8CQO/DzUMRv9ctCIMJUOUjmtjYToKcZTBPbMxJHnW
         2mlZm89x3YX5u6SyoQqbLwt2RCfHOZjW4h15l15fM34l1bOFaHOft0Cz/D04pm9LUkxB
         wflw==
X-Forwarded-Encrypted: i=1; AJvYcCU8AUzT/toh35m8ku+doytWoCTgb17l6E2Ii50K3qU+k0saiS/sp+tCj+/S4EkdJz+2oIkLCsbqGm6G@vger.kernel.org
X-Gm-Message-State: AOJu0YzSuVwJxW+1nA2EJR5B8J6jnbeo9dsgp/pyPaKaXh05pQlrR1N6
	INEtSYRqWoPOd457vZKdSxnDKza59iRVMmb66QMDFT3xZB7yYliC+b/bXGd9BfMfgmBLNYTBsz+
	vSeqnbQq0vhWcKUtIXxJdl2MROWIIqmNXj0tQTg==
X-Google-Smtp-Source: AGHT+IEP/7MkKo7czL7mThajxuutkKh/x1ebSsV0QSfRAVCGaGgrEFrGlRyqUclJ68N87mKHwDeMyBX0EFskxbXmpxY=
X-Received: by 2002:a05:6512:4019:b0:52c:dc06:d4ad with SMTP id
 2adb3069b0e04-5343831fb41mr2840347e87.6.1724663775523; Mon, 26 Aug 2024
 02:16:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <IA1PR20MB4953DC78BB0FE0C57EA94F91BBB32@IA1PR20MB4953.namprd20.prod.outlook.com>
 <CACRpkdbaDW2=R881G9C=r1iW4YNdYpRZ2kHaN63T7EX1A0xVrA@mail.gmail.com> <IA1PR20MB495368D784BE3F977617BF39BB892@IA1PR20MB4953.namprd20.prod.outlook.com>
In-Reply-To: <IA1PR20MB495368D784BE3F977617BF39BB892@IA1PR20MB4953.namprd20.prod.outlook.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 26 Aug 2024 11:16:04 +0200
Message-ID: <CACRpkdZ5zAgQyo9y_nO8M0Z6b8zqbkg5H_3ceEJN6z6mHL4TOQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] riscv: sophgo: Add pinctrl support for CV1800
 series SoC
To: Inochi Amaoto <inochiama@outlook.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, 
	Drew Fustini <dfustini@baylibre.com>, Haylen Chu <heylenay@outlook.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 24, 2024 at 1:26=E2=80=AFPM Inochi Amaoto <inochiama@outlook.co=
m> wrote:
> On Fri, Aug 23, 2024 at 05:44:17PM GMT, Linus Walleij wrote:
> > On Fri, Aug 2, 2024 at 2:34=E2=80=AFAM Inochi Amaoto <inochiama@outlook=
.com> wrote:
> >
> > > Add basic pinctrl driver for Sophgo CV1800 series SoCs.
> > > This patch series aims to replace the previous patch from Jisheng [1]=
.
> > > Since the pinctrl of cv1800 has nested mux and its pin definination
> > > is discrete, it is not suitable to use "pinctrl-single" to cover the
> > > pinctrl device.
> > >
> > > This patch require another patch [2] that provides standard attribute
> > > "input-schmitt-microvolt"
> > >
> > > Note: As current documentation is not enough to guess the pin
> > > configuration of Huashan Pi, only the pinctrl node is added.
> > >
> > > [1] https://lore.kernel.org/linux-riscv/20231113005702.2467-1-jszhang=
@kernel.org/
> > > [2] https://lore.kernel.org/all/IA1PR20MB495346246245074234D337A6BBAC=
2@IA1PR20MB4953.namprd20.prod.outlook.com/
> > >
> > > Changed from v3:
> > > 1. binding: drop unnecessary type
> > > 2. binding: use right ref for pin node.
> > > 3. binding: remove mixed spaces and tabs.
> >
> > This v4 looks good to me and has necessary ACKs.
> >
> > It contains device tree patches which I am icky to merge but
> > I can merge the rest and give you an immutable branch in the
> > pinctrl tree that the ARM SoC maintainers can pull in to
> > merge the device trees, does this work for you?
> >
> > Yours,
> > Linus Walleij
>
> Hi, Linus
>
> It is OK for me, Thanks for taking it.

OK! The pinctrl base patches are merged to this immutable branch:
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/lo=
g/?h=3Dib-sophgo-pinctrl

The SoC tree can pull this in to get the binding files.

I have then merged this into the main pinctrl "devel" branch.

Yours,
Linus Walleij

