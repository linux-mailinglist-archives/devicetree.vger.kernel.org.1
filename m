Return-Path: <devicetree+bounces-90755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D7EF0946B68
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 00:58:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 080DE1C208FF
	for <lists+devicetree@lfdr.de>; Sat,  3 Aug 2024 22:58:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B24E158ABF;
	Sat,  3 Aug 2024 22:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ePAmxxOE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2C3EEC3
	for <devicetree@vger.kernel.org>; Sat,  3 Aug 2024 22:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722725910; cv=none; b=et/zreOEyWK2OmsgkZG3ULMvam30BNcb02g3j45ZDMiIkmEX56afWmLbQbsyss+LO0MxdGNadjI/km45eKAi01Q4FCZC1WKzxJ9GDvslkgMuVhNcvsBKCF3Daf1b4AJOwNiRqakH5Dc0gfmy2NXeqN+LGTLSgHqhPnZt7zcMAQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722725910; c=relaxed/simple;
	bh=3BRzezbw9GSa3xz41e6WFFbhJ0iTVxVtG439svHu7GQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I9hNf2u4jyCqCjkc78EI71mIkW4G7zwhUFTskijzSXgvxOX8TXQnNqF6d45poQdqPUok2zs54Xub3+VdEXuKbO0whRWxDMPSKENz5LIBi5+dStRSk+eQq0wMmtb+e3M+4Mh3OFiyczKGOKq/3GtzPnKvtLSitTLmGLbkb0eZXhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ePAmxxOE; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-52efa9500e0so11201449e87.3
        for <devicetree@vger.kernel.org>; Sat, 03 Aug 2024 15:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722725907; x=1723330707; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3BRzezbw9GSa3xz41e6WFFbhJ0iTVxVtG439svHu7GQ=;
        b=ePAmxxOEMJyJuRV+2xE7qeJpXDR8/tu3XGhdBFnDXsal+oZ+6ZbTS9QoavkBL6ddvW
         GUJ3GGqIW1T0oD9kIbh2knbdRzrkfTi023sqr8Wk8mP0Qfy2glmUHGhP3DPAANk1ZKRc
         TZIHL97p1UI1nz8p239eHgkhkry+Wbk3M7vMNYseoS/HraMfCYVgfl3JuTVp0ME1Vwb0
         vy8RRmBuVN9L9fKmo05kDGDTATpU0IQCKE3eM0gW3QZW7irRQjlRXDloZrPoBNbC5Q2s
         CBGIV62+aByVRKKMbLcumrfCZ+EZXurn+ocoQBcfW9OnCHcf1uzJFTQ87Qe1jBQlMoVZ
         colg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722725907; x=1723330707;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3BRzezbw9GSa3xz41e6WFFbhJ0iTVxVtG439svHu7GQ=;
        b=siOeMLWkArCMUt3kXj4y9Z9tvya31tjorFWrHZmcvHxJy9yyaiZVoD0wUDOlCxJtd7
         y1gW9dhX/0cz6lro8ssBwl4JwDeBBtd4d2wvbU6MO+IRSx04f65xxM6q+typkmBWB2+P
         GfQ7zJNocmFZ/FrDhdvrwIDDGmVxHPWpCdTLskPJuOMc5PO0L2pvG+V4YFprRy+xJcOP
         HrFY6ODt+PaouGSwi1dQvileIG+9k7g8ApdFovQyKubE2QEGsBMdwhU7uUoiTIXFjO2r
         xPHzIOPTw6ALsEfrRPtcfQ7kQKioRqYfXir9cZsQ7v4YIuebuEhu7Zn4LXb0HhPu5uX/
         q7rw==
X-Forwarded-Encrypted: i=1; AJvYcCUujeQuX/SOBvDTscU7aG4bHNT7yHcTTTQo6ORRvt7UkS/qjQ5mN8rSBkTUgJ2+eTvjfWpeXy0kKmzcZ8AXMtbij5PySeJPRD2bMA==
X-Gm-Message-State: AOJu0YwJ4Vxxpga2tk6cuDr446j+t+PWaCi7d63EF+SKygKhR947S1Q6
	ixKxJ3w2od51/XUy7eVOo40AOlHePrSyYGPfaPd1O9T+Z+U3FAstVEwhJJ2p9A80mUJgXVvK/Vs
	hFvXC38lGb6Svb1qVJMGyXbKg+RzdsK7C8IRn1w==
X-Google-Smtp-Source: AGHT+IE4y9kLkzPoH/zfRiNc8kfa8clmJiMKTLB0WN4Xe+IjU5ivL54qw+cgJYdb+86Oky2eUuqmhbuQKBYEt1uqbzQ=
X-Received: by 2002:a05:6512:2389:b0:52e:9ecd:3465 with SMTP id
 2adb3069b0e04-530bb3b1891mr5046679e87.57.1722725907073; Sat, 03 Aug 2024
 15:58:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <IA1PR20MB4953DC78BB0FE0C57EA94F91BBB32@IA1PR20MB4953.namprd20.prod.outlook.com>
 <IA1PR20MB4953680DE7977CAD906DBDB4BBB32@IA1PR20MB4953.namprd20.prod.outlook.com>
In-Reply-To: <IA1PR20MB4953680DE7977CAD906DBDB4BBB32@IA1PR20MB4953.namprd20.prod.outlook.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 4 Aug 2024 00:58:16 +0200
Message-ID: <CACRpkdap4oeG6QRVbSNDK1Y5kT73_VJRgy9EM5Bst08SXmxE8A@mail.gmail.com>
Subject: Re: [PATCH v4 1/7] dt-bindings: pinctrl: Add pinctrl for Sophgo
 CV1800 series SoC.
To: Inochi Amaoto <inochiama@outlook.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, 
	Drew Fustini <dfustini@baylibre.com>, Haylen Chu <heylenay@outlook.com>, 
	Liu Gui <kenneth.liu@sophgo.com>, Yixun Lan <dlan@gentoo.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 2, 2024 at 2:35=E2=80=AFAM Inochi Amaoto <inochiama@outlook.com=
> wrote:

> Add pinctrl support for Sophgo CV1800 series SoC.
>
> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>

Rob said you could add his Review tag if you fixed some small
issues in v3, are they fixed so I can apply this with his tag?

Yours,
Linus Walleij

