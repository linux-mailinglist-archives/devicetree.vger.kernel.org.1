Return-Path: <devicetree+bounces-214347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 620DAB48D4A
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 14:24:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 21A223B7246
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 12:24:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A7AE2264B6;
	Mon,  8 Sep 2025 12:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ryPUQ1x/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81AF222FE15
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 12:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757334237; cv=none; b=BQ/VqxNpsqRrzE9CvGaDA1cCISRDyq3tsM6IlPy2QYdysvYHZDWEN4IgpmLyue8cjFI1XlUzVdut09gmK8/Sz7pi90ARmK1QPKlmHc9Zq8o5bWNDHjY7+r44wmfw4Qih1hgPVE04wPFLU2wjrqRC44Rk88UNOvYkWID4iFXTyKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757334237; c=relaxed/simple;
	bh=MEo2UMTG1DHQ9doDRWriJeo0VPUl239DwxNNYlZ42y4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=aB56sHgSLxQjQnlZcJeH/0DLKwTGTG0YfedqUveuGnhSPxJGYh0dC5gc21zdgUNYM0w5vrtzQuBlk/en9cQ+xv0cKyimj3ea1m2W0uNTZM9fLJ3rhZ6CkTm6m2AK7qK2HED60VEAZEpETnh73Z980EfG0L041ruwizE+mz3FOXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ryPUQ1x/; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3e3aafe06a7so1857907f8f.0
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 05:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757334234; x=1757939034; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MEo2UMTG1DHQ9doDRWriJeo0VPUl239DwxNNYlZ42y4=;
        b=ryPUQ1x/cqtCiPdOoHM5u5Fw0rJ9jT+sv6lBq2XZ1ZCaOfafWVWWUycQs8oZDv/vo7
         59EmbGuRIWTGqEPqLllLj91Xd48bn5UYWRO5rlnJCSHlnApNHJayMFCWT9v4qE3adCXg
         hxC9PVxu3bX9gXX/a3mz95C4VEQU39PP8XOxgMTWkZHO7izEOxSi+3jVJ63MA6V5hVcV
         rdAESCRg2noF048z3W9r3tkY39ZFaE3KGGhkx9zJi5GfYs7zJPgMMGnNk6DnRoih2jNT
         gvD/iiK5MueAx+hS5pi4CgwiUrzQG8qdHsMptqDGRyME1oVzcVw9GABjOZgyWUhx5SAa
         37Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757334234; x=1757939034;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MEo2UMTG1DHQ9doDRWriJeo0VPUl239DwxNNYlZ42y4=;
        b=OTQc9URLtu3xM9a29h/UmOxdzmIKDJYKFg6105SgDhAWkENZD1EcaOyDKZFKduRl0G
         XuXulFcmXYU51A1gMav1UjppnwmeckWyb3UVQV6MCxz8etKE+WUW7bgOpkhanynSG+ZQ
         SGQn7tpmStY+pElNR41iOf+wDUsgh0mDtGHL/X+1WrKTcSzW0NQrfOI7zdl09l+nO24k
         sVuw3ZNuSswUvwYdW28ZlVh9NaPBNO1U33UW6fOyUd4RVyPhVZLpijEc5SCZkyj4S9Ap
         BOOy9pQqAA4RC+cL6MFhN2eoiUuuD1jpliL9BQIipbmc9jk09jzn0CPhgJI/42e0gpD6
         gmKA==
X-Forwarded-Encrypted: i=1; AJvYcCUe611qx1h9KKqfS+nWREXdoHQiALMrlsNUJB0HHi+9UlX5wmG7puGGqeyjQL2sC2GTlMhXABFzt947@vger.kernel.org
X-Gm-Message-State: AOJu0YxKXbiTZ0dfXa5FjqdXTgb2hpQEIdEKXof8dJEg/Tz9CVrK2PEP
	0lSdc38VzDJok1mvx5ssX9/NkAUtahC0r6CWVgYjqQlp0LfBhHOGo/LohWFQx99Pffo=
X-Gm-Gg: ASbGnctVetT21QG27rqQ2ikH2ue5kT0IhNZvNPNTOpRYOHyXgEd/bcwPfvLzB8GK+Vh
	ZKriATfhoWlrRpa5suBtHtzPLTi+zR8VsmfAf7gGq/kN7o7eQ5YpQkBorVUo4HEb1jQfIURkpCX
	nZFULypa3lb6G7lKbwIVQqVFNOxZLYV9NZpHit+CmQ1V01hkNKkRPKavxmbwF2l+F7aC1uZ+pn+
	4LN0LrpvB/lnYlIMogh3NF6C221eNaEzn2zXvvIq6tMsItxW867/zGxMX8TFxbkN29QIUEavLIL
	Ho8ocbA5uDcEhPG9SE+e2TcrMVU5+yyrNgeQpcJ/z3pjqgMGLZJpfkLtgkKSS+cNgmBN69/D1V+
	aXzVyDHLsTyVLWpzQ7fowkzBSlA==
X-Google-Smtp-Source: AGHT+IEvdnxT8KmvlyrKaJbNer5T3dfHeAMIhWoCV/LtrGm/Qs4KGg5Ij/jKkb1ZiM1wDinTCtyDQQ==
X-Received: by 2002:a05:6000:2302:b0:3e5:5822:ec9e with SMTP id ffacd0b85a97d-3e643a24592mr5641636f8f.41.1757334233888;
        Mon, 08 Sep 2025 05:23:53 -0700 (PDT)
Received: from [10.1.1.59] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf270fbd01sm41989069f8f.13.2025.09.08.05.23.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 05:23:53 -0700 (PDT)
Message-ID: <33b7a0cdf62a7f980c362459963e243ba78de540.camel@linaro.org>
Subject: Re: [PATCH v5 0/2] Samsung S2MPG10 PMIC MFD-based drivers
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Stephen Boyd <sboyd@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sylwester Nawrocki
 <s.nawrocki@samsung.com>, Chanwoo Choi	 <cw00.choi@samsung.com>, Alim
 Akhtar <alim.akhtar@samsung.com>, Michael Turquette
 <mturquette@baylibre.com>, Russell King <linux@armlinux.org.uk>, Catalin
 Marinas	 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Alexandre Belloni	 <alexandre.belloni@bootlin.com>, Peter Griffin
 <peter.griffin@linaro.org>,  Tudor Ambarus <tudor.ambarus@linaro.org>, Will
 McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, Krzysztof
 Kozlowski <krzysztof.kozlowski@linaro.org>, Lee Jones <lee@kernel.org>
Date: Mon, 08 Sep 2025 13:23:50 +0100
In-Reply-To: <175398041189.3513.13629420060562627196@lazor>
References: <20250730-s2mpg10-v5-0-cd133963626c@linaro.org>
	 <20250730145100.GA6782@google.com>
	 <1a72e672995ef6cd186f8ff18a91bb8b72d86554.camel@linaro.org>
	 <175398041189.3513.13629420060562627196@lazor>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1+build2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Stephen,

On Thu, 2025-07-31 at 09:46 -0700, Stephen Boyd wrote:
> Quoting Andr=C3=A9 Draszik (2025-07-31 03:20:56)
> > On Wed, 2025-07-30 at 15:51 +0100, Lee Jones wrote:
> > > On Wed, 30 Jul 2025, Andr=C3=A9 Draszik wrote:
> > >=20
> > > > Original cover letter further down.
> > > >=20
> > > > This is a resend of two patches from the original series that haven=
't
> > > > been merged yet. That series was merged except for the attached two
> > > > patches here. Other than rebasing against next-20250729 there are n=
o
> > > > changes to them.
> > > >=20
> > > > Lee, I think Stephen's intention was to get these two merged via th=
e
> > > > MFD tree please.
> > >=20
> > > Although I have no issue with this, it does seem a little odd now tha=
t
> > > the set consists of only Clk patches.=C2=A0 Let me know what you / St=
ephen
> > > decide.
> >=20
> > Thanks Lee.
> >=20
> > I simply went by Stephen's ACK, which to me implies he wanted it merged
> > via a different tree (mfd). I guess at this stage it doesn't matter any=
more,
> > since all the core changes are in already.
> >=20
>=20
> I'll pick it up after the merge window closes.

Kind reminder on this.


Thanks,
Andre

