Return-Path: <devicetree+bounces-47137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B3186C4B8
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:16:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 581FA1C208BF
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:16:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4D115812B;
	Thu, 29 Feb 2024 09:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Cl7F07NW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535065813B
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709198200; cv=none; b=dV5NIhCh884FCufwoTUmb2vC41JiSwu9+81CePIw/KHcVlr7PhF8LTwFQjktzBNz+ylaxLTrhsNt/f6U/5nVWchvYPlw8pdPYLonR8LhPQViFUiIDBl0pY8m9dkvehi5zucK6A7YSwaoj2dxyBSYzdhSPhsWpZ6QQz8f85TVeso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709198200; c=relaxed/simple;
	bh=12Q3Lab7vVufV3JjMryOMg1biEUs3CM48GNmHip2yUw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RWsn3p7rtBIzehZEX9lDYVfdzqQKiPzJq6w1sE+NT+fXh8sL+s1A70ATLMhb49vlcQ2TOkp7sYhwIIRGnIinYF/5HKZbdkbywhSfAohFa7dz9bcOFfpHeUaRJPde8ZUcYTdS5bKi5ZPVozs0zenWep1W0Xi0qaBmq71sli8p2ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Cl7F07NW; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dc6d24737d7so724326276.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:16:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709198198; x=1709802998; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=12Q3Lab7vVufV3JjMryOMg1biEUs3CM48GNmHip2yUw=;
        b=Cl7F07NWVeYfL/+MDHun/YtYIltwRutU9Qh/gdb4r5x8mPnjgiTQBbbQlkgIAvrFYQ
         3jKf8J817G9Vzj1RmXu6Cxib1rQOQMagJkpPgWI1k+jgrC4qIC2kcanJ1PVPZ/iVoTVx
         f8I3kKEFsDIqR5lBUPEyFtaq+dqj+y1119W2WtrtU1GyX1YX03JU+q0B6oKgonbKuAtI
         KVVGoNkHo4aqkQR7nGb8WW/bAAvSz7BB3kBTtqcp2OgaAxtNiURAJdG6A7r1yaVDuBtI
         NTr9VXbhniteNKCQA5vC001+/X8lQ/ttig0d8PnasQ5VN+RjwIJHyR7zY2wE/WMY7dOX
         7ijA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709198198; x=1709802998;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=12Q3Lab7vVufV3JjMryOMg1biEUs3CM48GNmHip2yUw=;
        b=u0u9Ci+8iwH6ngumFADcIMWMhfQynh/SkAzFE2WGqEuDFh8DBCDJ5dv1UgmX99C81S
         Q7JfhhDyqjIRDATFM2Az3Vp0nHMTJfZapPvwnIsJt+2VHfPNRhxCpebIHakvKWg8eaFN
         x7qc3kklp/biHqnsgFZSqjtHClLLrojQ3I7vSVxiVNa+WUoFxMgd0GrwvVrLYUUS9V2b
         S0RcBeQwuIQTHAIIz9GwAak+/kIc3T+AO55AERDEoQjDHGScvShpiNFch9SUMbtOYdFD
         nip/dTJMF3nGll0dI+0NqzcRvQHrvTYxBRur8IwXhrN+1jMwTDvSAj2qAMrjDS999lmQ
         Jhnw==
X-Forwarded-Encrypted: i=1; AJvYcCVpeYIesBqQzdKb+l4l7KSzoY2b7sCOzhQ/AWklcl3JwnopFsNmfkBGZG7zMt7mo0c5ExS24J2sADKtdPTlwF9wjwckVMMx0X6rmg==
X-Gm-Message-State: AOJu0Yy+iRLqXVhcROi1vRYTdy/yW085xra66I/o7ED0YhzWD7bEdbTN
	KCYbpHa5GdDPHVJMX2CDbBI5lOVbQMRT7dSwswP/DiypmRhWxJ4ame4PZMW7iEywTNgCHUlFuzg
	kagLjGURt1NPWwypDpDxw3Es/DbQFo7NpVRpESA==
X-Google-Smtp-Source: AGHT+IH4s4l/IJmacCffS5lh7es64Kgiy4GN5FtK8rUnKhowjj7pwcmaCOZ56HnMOLBU0U+sIX27dQ8whoKCxGdEv3A=
X-Received: by 2002:a25:2e02:0:b0:dcd:a9ad:7d64 with SMTP id
 u2-20020a252e02000000b00dcda9ad7d64mr1612123ybu.48.1709198198367; Thu, 29 Feb
 2024 01:16:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-1-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-1-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:16:27 +0100
Message-ID: <CACRpkdZHUBdMvoic88Rs+A7kjWO0=h4tPMPFj_JXce-Lny9a0A@mail.gmail.com>
Subject: Re: [PATCH v2 01/30] dt-bindings: gpio: nomadik: convert into yaml format
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 28, 2024 at 12:28=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@boot=
lin.com> wrote:

> Create gpio/st,nomadik-gpio.yaml json-schema dt-bindings file as a
> direct translation from gpio-nmk.txt. Remove the txt file.
>
> Add clocks and gpio-ranges properties which were missing and are being
> used in Nomadik devicetrees.
>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

I will be queueing this through the pinctrl tree so I applied this patch
to an immutable branch, and I dropped the unused label as pointed out
by Conor.

Yours,
Linus Walleij

