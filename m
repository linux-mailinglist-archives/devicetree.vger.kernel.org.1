Return-Path: <devicetree+bounces-89978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 45711943598
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 20:26:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C7BD01F24056
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 18:26:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED7E44502F;
	Wed, 31 Jul 2024 18:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zaxsW9mp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1A64084E
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 18:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722450351; cv=none; b=kMFnS+Os/4WHkxgdFtWmqMOcq94E0JvRxRkh0kapPab136/2/7dlr7AOS9YZ6N33y/VCMoBNzcF9LtEEGytsmoDoZvgPotrdYuyo9mn1F5oomb1XLTbe7VPYKAGuC9L8HOHAHEM+Iui5Pc88qX5ENgW7XnVXEltcI9LHO6kFqMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722450351; c=relaxed/simple;
	bh=SbypRaxK4y7FOUc04r7g6F2EtP4Xxirop8YZAKga7xs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Gv6lDmTrsexZ7cDrshHt0pe4hB0BPnRiLRCKrNE8nVLIo9H4j8lqQLyVkeaXl8S3PuS28jroGXyQL8E/yCHQQhXx1L9Vkrj2gh2CQIZkEsoEDpdb7rFSxIlnxTO5XDUYSnpD3Zzq60U1QWcKzAehEAAXW4UNeF5VQRAR8jRl4s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zaxsW9mp; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-66599ca3470so47975297b3.2
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 11:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722450349; x=1723055149; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gdzxLzu2RkJLVHNIZ4Z2FLUcNDJnzadZxmlA7ncYpvs=;
        b=zaxsW9mpK2SKBOsbgkBkWzaWWfsYmcOyKJaN+SS2EiSv/sNmFCIfI76m0/qE0AFb+y
         jEAdWikJrUORrMdYl7eGld3cNgIQA2XU/JPAMcf4hLg7fMxVdGuBby0qIsE6NZD6gN87
         bbNeJcLGhoHdBxAp5vdN9iWSGv/yd1wcBK7VTXhprGT4tT+njSOX1FuuFfitQSd8g5/m
         uQSCDkoh3Ja8UpvUGDMU8og9La9kLGY3lN6Vra1L6Du3R11uzetJfhxPS0DcSGAwfStE
         gzWCGzzDZvFtN3AhLMlw5SSQlS+C9t/+7qtZF7suE72AvEqONgTe08/NRyP1ud7QwHxu
         qiHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722450349; x=1723055149;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gdzxLzu2RkJLVHNIZ4Z2FLUcNDJnzadZxmlA7ncYpvs=;
        b=k4tsNSfc3Xzd1iGD9Nz/y+YEonVmNjql3cUpdAROxTGS99zp7aPztPeVfquPijGDyt
         3QOd48fDY8tgm5Q6MXlyztFKut3yrVHf/FmOSVa8IYWWYTJpWnTkPL6tMZUKyC+6/wtD
         RLyvqYCmmV3m+OVpKhZTrO+9xU/0GBq9qJ4SU/p1LxnPe3ataR+RLP0mDJdlvMqdN33L
         JoAhkNd4zHNYQtnifXZThyQhHb4B4BFXHNADwWhfd6tQVFXojG/Fk2eTzJKQFZP73f5g
         U6FfQmvzqxjCehFHNhtOnrElVv3mzI69eRD8lqgpNkF0MgNxJ2lzxpZvA6C6DC5HnsTn
         LdUA==
X-Forwarded-Encrypted: i=1; AJvYcCVJ1auhsrjym8pOlMW0dO6ucGQDkYa4YUMXzn7l1cE3Szy2dFkdLBPUpctputRbIPIXWIFbGT2WDQpApR9GY117C8hDU3XHnR1Nvw==
X-Gm-Message-State: AOJu0YxfyYqajA1+1QSIkcgV08IPQjyMufzG1BSe/bp1zCVrHtDeZucB
	xxTTSLYAA1odaHv7psqnbllHi52m+eDxyMjw9vGuZakEJkep4U670iX1/znUdvY+4FJJrXjiuSG
	lJvQ2Fx4J7/PPdHehdcjWWYdaYvaQCffVycs6Dw==
X-Google-Smtp-Source: AGHT+IF0KfSlWB047Omd2PMOsZLUTxv2++sjbYGOlV9vhnSEfTHz8IYHfgmHBSw8qekBtE8MJoZfDGTkjDqE6mB+3vU=
X-Received: by 2002:a05:690c:d87:b0:64b:ead:3e3f with SMTP id
 00721157ae682-67a07b757bemr205779687b3.22.1722450349254; Wed, 31 Jul 2024
 11:25:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240723163311.28654-1-semen.protsenko@linaro.org>
 <172243565547.42492.1072397968108986657.b4-ty@linaro.org> <ee392e1e-bdb7-4cbd-8b43-00ec0efd5026@kernel.org>
In-Reply-To: <ee392e1e-bdb7-4cbd-8b43-00ec0efd5026@kernel.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Wed, 31 Jul 2024 13:25:38 -0500
Message-ID: <CAPLW+4mxtTj5VGi4LYwU-8F9hsSgDe+yxAsON=rXUhxGWHCCXg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: clock: exynos850: Add TMU clock
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Sylwester Nawrocki <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
	Mateusz Majewski <m.majewski2@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 31, 2024 at 9:22=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 31/07/2024 16:20, Krzysztof Kozlowski wrote:
> >
> > On Tue, 23 Jul 2024 11:33:10 -0500, Sam Protsenko wrote:
> >> Add a constant for TMU PCLK clock. It acts simultaneously as an
> >> interface clock (to access TMU registers) and an operating clock which
> >> makes TMU IP-core functional.
> >>
> >>
> >
> > Applied, thanks!
> >
> > [1/2] dt-bindings: clock: exynos850: Add TMU clock
> >       https://git.kernel.org/krzk/linux/c/01ce1bf22adc0d09d906319787091=
ce784cb9914
> > [2/2] clk: samsung: exynos850: Add TMU clock
> >       https://git.kernel.org/krzk/linux/c/79b918aa997acd5066c7962502b1d=
aaae76b6911
>
> Hashes got mixed, but the commits are properly applied:
> https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git/log/?h=3Dn=
ext/clk
>

Thanks for handling this!

> Best regards,
> Krzysztof
>

