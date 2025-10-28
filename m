Return-Path: <devicetree+bounces-232061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC9EC13EA2
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 10:51:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 094A31AA236B
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 09:50:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 103A7302749;
	Tue, 28 Oct 2025 09:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Boa0le8U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BCF2D8DC4
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:50:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761645016; cv=none; b=Hyg6pv7w6bCk5KS6ZrHTFNA4FbClyr9SefUmxnvplIkvW7fbDKipKwj5SI4Jga0RtBY+UVS7n/JyU2G52zFTIsCMqaiJum7ESH6EO6/M2wU4eC4kiuJdGjIavco+ExlyHeYT1O0KSm8Xui6yeSu7BODaIRccmZfUtDQ4QV7awQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761645016; c=relaxed/simple;
	bh=tmDSIyiMjLOS6FNqDMNTo7i77Y8KzxKQl8j6kjAwCZc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kdv24etXaG69cWVnnrV0fBe3teHD4cDgSaF3FpiXpiBhIGwV6bLwnYTrtNOD9wERFx99Xe4REoei9vzVhXvpBnAF3vrC/7Poup6TtWfCUamJtPe7kStqtpa46lY4RUNuG1gtTYePrFcjKihL06L7iHfymUc19LZM9IG76GdIB+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Boa0le8U; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-591c9934e0cso8312377e87.0
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 02:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761645011; x=1762249811; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tmDSIyiMjLOS6FNqDMNTo7i77Y8KzxKQl8j6kjAwCZc=;
        b=Boa0le8UkZNqBDBjPXJKdWx/2/cJoVf1XBCA4PQ9QTG+xaY/mj1iJVVf70MZw4szCb
         4Yx4H9wPsY8wkJK3zOZskLCZ5uR7GQh9htSu5/4ktQS24RDeCkhYXnI3pVuEhTAlupnc
         4sVVMKfSnikM1u+UGhpiA0cWVkZhNrZVgfSVD6sBiZ6+dhObQP0zdF6XS+NvEeCSVJRM
         E9UXaooUkutkH+Wgbr+5WKjCjhtK65aqIPFkoYjMNIMRWpX0hVkPCGSbuL6NJ6tpmAnI
         fljB54KPycwuJd+t/9vz8FdKGWdhIfsDaseguPpbzfRXAz4EMTxDs0iyN+610pdFWbMP
         sCpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761645011; x=1762249811;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tmDSIyiMjLOS6FNqDMNTo7i77Y8KzxKQl8j6kjAwCZc=;
        b=KadwKoDWIck4akCOBKVogZg8Y5nks2oXQt7IMLAbVVhq16idalP7OfQMS9ki+YhR+7
         UWVEiPE4TVpsPW6WCZ6APfvXtvz/L+Z1jebkwu8Twjvy8Y0pTGx3rKS7Q0gSV9aMcJ0l
         BDbUB+HwXeXFSjmaMkaUWT5tYYst/ZY15YKZd8wFVNg5v8x7Zsf5mKue7DR8GZAchbtV
         FIV8nWgFqJ09XmouBpuFzQx/SbbiVeB1YzCcDgTrsVCdh74M3RRuts8SvRFCdjyYjRX9
         YRdjKSxs/ktAsoaeo2I9654l1lTbmWR9llsEhDi52r/7el6FXNaync13fcN1lOVT0m+K
         0COA==
X-Forwarded-Encrypted: i=1; AJvYcCVzBGvtmOQw4JB3dcjPWBbZ15a6P+CJ6YdK/b3C2ZT8S1Peo+M8M+1b6FzX11YrzYGniwrdhR8IKIGr@vger.kernel.org
X-Gm-Message-State: AOJu0YxXiF/kPIK2/MJIfQVv1wD/RO628YnSBYwdhGeWrSdXwNTjGSTs
	HA7S6zSW/Tv98kiaggwDAIafAh/WXxolg/eqSsB6L3QPL1kro7Yp64Fg7wDpMYhAV3LwbmQZAsq
	c03GCpI6tJJFjtHM9+l18pxwUCGfIE9Cnj9ffgLbmGw==
X-Gm-Gg: ASbGncsfiw38RN2+e+9xFi1d+V5GIQZrt7RVsjmJh2En5PazEQUr9jYvIbKsYb3tRXd
	lo0600AQsh+fShHS/6Cd3LiennqaQh3pavSGLZZcL+S3dFsQxq/ErzDH6UdwFGtrtpVyQrWV2i9
	Yn1Wy/O+Jp4FDAgY0KRUYC882vqoXmlmXByd5wwBojP3w9JMJd3e8a/l3RxkihrZsO8C/U34Ci/
	/CpBHVpT32c1WwIFSyEwEowVckb2QVTnj6ZULQDZTSOq+x+kBzGpAz2MEtoZz13yw+Oh+Y=
X-Google-Smtp-Source: AGHT+IHu10ZcVMp1t6exa1PSxkHFxphXG1r4t9C5bsmjcMdzTg/t9I8b6zTS7ONgJ3VxrVunoD4N4GDJPwxaS7n75Xw=
X-Received: by 2002:a05:6512:3f15:b0:592:f521:2334 with SMTP id
 2adb3069b0e04-5930e993ec9mr1158884e87.8.1761645011316; Tue, 28 Oct 2025
 02:50:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251022165509.3917655-2-robh@kernel.org> <CACRpkdYioyktQ5is6TJnkgX=MHk2-zf-XO-gx6sKcST2GABNiA@mail.gmail.com>
 <CAL_JsqJh=ccCR_TR2sgMJJ9ChkBC4zx0d0s_imGjHNt0Mbp=Bg@mail.gmail.com>
In-Reply-To: <CAL_JsqJh=ccCR_TR2sgMJJ9ChkBC4zx0d0s_imGjHNt0Mbp=Bg@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 Oct 2025 10:49:59 +0100
X-Gm-Features: AWmQ_bk9HCEe5H9YQN8PNyspfsZbmH034UWjFM55zKwIU8N8qdRalyjCgv2QCTw
Message-ID: <CACRpkdY0+0UTkpXurB3E1Skce+Kcbti9-Z_2-d-f4yM-HuK_Dw@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: arm: Convert Marvell CP110 System
 Controller to DT schema
To: Rob Herring <robh@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Richard Cochran <richardcochran@gmail.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 28, 2025 at 12:26=E2=80=AFAM Rob Herring <robh@kernel.org> wrot=
e:
> On Mon, Oct 27, 2025 at 4:58=E2=80=AFPM Linus Walleij <linus.walleij@lina=
ro.org> wrote:
> > On Wed, Oct 22, 2025 at 6:56=E2=80=AFPM Rob Herring (Arm) <robh@kernel.=
org> wrote:
> >
> > > Convert the Marvell CP110 System Controller binding to DT schema
> > > format.
> > >
> > > There's not any specific compatible for the whole block which is a
> > > separate problem, so just the child nodes are documented. Only the
> > > pinctrl and clock child nodes need to be converted as the GPIO node
> > > already has a schema.
> > >
> > > Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> >
> > Patch applied!
>
> I already applied as it is clock and pinctrl.

Yeah I saw, I dropped it now!

Yours,
Linus Walleij

