Return-Path: <devicetree+bounces-199025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 29093B0F15F
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 13:38:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 53E9B7B42B3
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 11:36:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD38A2E499F;
	Wed, 23 Jul 2025 11:37:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yNuPu2ee"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138CE2E499B
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753270635; cv=none; b=HdxGwAwqdsR+vJOIYfVbD/kJNG6614YguNMqftIK+HTMWTI6vYs44j0/3/Td34HcK07Gvmr+QTQubX9s7SdZgwF+p18vZdEzcAmnXnIpLG/SQy/crGdQ9nyj5VSS+ISOHy2MDSdrejUS15FvbN0UJTRmUH1GVQpKyTygDc1HqXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753270635; c=relaxed/simple;
	bh=iQQAccIuD6nz95tiBxK22UWVg/575olRSffTRrh020I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kgHjF9qC851/6c6Qzvjfw61Kvyr+zrTV/nRCO3ROFh05M7WdfDsn+UKxy98085y4Fl2t5Xb/srXXozLVjvN8+N2Veeo4FHY4MFCOHrE/QXgUkvW1j0XUC/uWubwumQ83+fLdyHk4GuhHJVb7UO+LGL5uOhHgQ0BEvoq7C6HYvhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yNuPu2ee; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-710e344bbf9so62404757b3.2
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 04:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753270633; x=1753875433; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ymp8NEpVvyDseXZYWN8c8ewcIRYFU5ldp7DE0o5dQsU=;
        b=yNuPu2eeXjnWcSaCaIk1p2uY6OmJJoQJyAjT9lYtmhnwOOQz3SLoL568P1sHm2HefO
         j9iI3oJ4v6UCzr/anUzdqP5FG7r7U7S7UuOSCgTnHVRA1GIahyVhnUofmGs3CIh+RVC5
         s3YK5TVsM/XjHp6pr+gYx2MFbJbaX0qlodtJ2RK0hPRuP7YCO3egPIm16xkYeUaEU3pa
         jFyiX3SaP8l4yQ85BuhuLj+jDa9LNoaIRYOjFpt1WdqZt/FMeKqbUhRZReaOmBrtE1MO
         7+gcno5nlqhnH0cc+eAU0sv27zZPjIOkENRoFX1/kgkxJKB990mNhorItJKb3497tmAm
         TSjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753270633; x=1753875433;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ymp8NEpVvyDseXZYWN8c8ewcIRYFU5ldp7DE0o5dQsU=;
        b=O27Q7oPWD3p3Nx1iKmCbL3SFAabdTCzBiOae1YfZqOgRqun60Yw2qgT7ydzPXHcoaa
         +HgMW0yWWUw0xEzCkNtkI8QJluVxp0Ws6RksugVqX4eNZgfo7lyatv66KfQzDNKn+86k
         sHYQg/HEghI51dGCmlsgctaf0hvs8lOxcmwHkhvvOnYFBNQNped2qwhQGbRdhnco2MJc
         4ykvSKp45+6j8/IfHywmMTKD4vzMmgXa9tC2jG5DG0RtnSWXTuXP7sTPdqOTjc8gWya9
         ulfleVujZxde1ZIzR3B8G/AxkvptkUn9hp1Lnbp9k0yViFgwY95l6UvKhemlFAEP3aNe
         Bnlg==
X-Forwarded-Encrypted: i=1; AJvYcCXXZVVYFPt/zdwF+cMTvh5mHOMrgMXSm+DHzAJZVgNCVkaJ48R3yxqNGMWsKqhIK1d4i/7Fq18lkosq@vger.kernel.org
X-Gm-Message-State: AOJu0Ywvf70hGDzok6xAQA+J+lPEYO0Pbf+kAZsPQxom47v6m7iSzUt9
	DFBAw7dT1zg0cNBJKE7TcdPSXu+M1X1sdff2OA1py8m4JwY6N9P2pry878P0RfUp9JOAuNriK+7
	hFdnHiGhPDaSB/EwIgYWRnxy3onXMGtrIogD4oLBYow==
X-Gm-Gg: ASbGnculJkSyxr6Mx3E04/xfQuqV7AufyD9T5cdWDLqkar/wI4vOT8CveJhgcS7EcoS
	mK0TtrWPRxMQjI0dij+UP4wBKsU5S/yjvS2Xe6MrZEvsHLh3K+NMFDFKZ31EkQ8KIhEl9G+7ua+
	tIvqco5CCpx4AlqweD9JuBpJf28o+d/7aHX756r+12GhE7Ch6KytarC+15DBqTbVWsIgRNgJI2t
	LI6i0Y=
X-Google-Smtp-Source: AGHT+IG1u0oo2KG/eqAPkei9S9jpNUr6q6/qerBp5U6HD3spcuvFuQv+r1pMepeUgbYOloTl+BtEStxyrYSqeymqSxI=
X-Received: by 2002:a05:690c:600d:b0:70c:a57c:94a3 with SMTP id
 00721157ae682-719b422713bmr31267587b3.19.1753270632818; Wed, 23 Jul 2025
 04:37:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250711094513.17073-1-ot_cathy.xu@mediatek.com>
In-Reply-To: <20250711094513.17073-1-ot_cathy.xu@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 23 Jul 2025 13:36:57 +0200
X-Gm-Features: Ac12FXyQQsvM0KPvnjy5H8NAQhVs4FHmng7Wc1VHONXxXWNwFzyha3AMuITkSaw
Message-ID: <CACRpkdbe-0fQY7rF7u14bn4j_f3Qn7+thRzJQZRZBTadG9pjGQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] pinctrl: mediatek: Add pinctrl driver on mt8189
To: Cathy Xu <ot_cathy.xu@mediatek.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sean Wang <sean.wang@kernel.org>, 
	Lei Xue <lei.xue@mediatek.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	Yong Mao <yong.mao@mediatek.com>, Wenbin Mei <Wenbin.Mei@mediatek.com>, 
	Axe Yang <Axe.Yang@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 11, 2025 at 11:45=E2=80=AFAM Cathy Xu <ot_cathy.xu@mediatek.com=
> wrote:

> This patch series introduces support for the MT8189 pinctrl driver,
> include the driver implementation, new binding document and pinctrl heade=
r file.

> Cathy Xu (3):

>   dt-bindings: pinctrl: mediatek: Add support for mt8189
(...)
>   pinctrl: mediatek: Add pinctrl driver on mt8189

Applied these patches, thanks for all your hard work and
patience!

>   arm64: dts: mediatek: mt8189: Add pinmux macro header file

Please funnel this through the mediatek SoC tree.

Yours,
Linus Walleij

