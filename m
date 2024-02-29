Return-Path: <devicetree+bounces-47151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FF986C517
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:27:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A609228E07F
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:27:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2062C5D739;
	Thu, 29 Feb 2024 09:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F0idNWCx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6327F5B5D8
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:27:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709198861; cv=none; b=Jh778ZHPMrFDXMUbcz93hXwwy964ZpaRZgjs2gh+5Zy+xTGeZ5J7hubWxfJCsX+dDrlWexalLhuJ5lui/MW4r20GLtTBRPaqPWAMoxBIk47esh8OFtAKWEitLOJSiGdeSe0hZqWMdEF9YKq+2PogqxW7SybqA0RSsoU06E3AWdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709198861; c=relaxed/simple;
	bh=9l83ZE4ey06A4aJUaE5TydNkbGb2JTcZg4fYmpIqQjE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=g5QGfk4AX2zamCwkHNM0Og7KJXfs7jX7176QW10qxB9lZ5f9+XEI3dojNBUxGocAu6+s+fDL+h4pToERoRltdy3GLr7ns0xAUGGXdevfZ5SZn7v9X94hYuUXaT6Q9jX8r8+6k4rHSrCZD4/hLrp/fAPeDgVk2AmpLdZdKNkyKZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F0idNWCx; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-dbed179f0faso1305407276.1
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:27:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709198858; x=1709803658; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5ghXUJywXB0o8Ao8Lto8qx6tKwebHI6KHQ02iVqyJxM=;
        b=F0idNWCxZT1KA4o+8Dr631l8VSG7op6cdrKuV1WZclez2ctPF5K49no3deuej5UJtR
         ef+ZhB+cAy6MlFREv25SLVTxc8W/4pqGBkYPKHq6h4yNtzZs7rXVUKN1XLzVPBKWvW2Y
         b5dj4MFmuMGWbF17JM6v8idKZaay+mv+t2cpAjg2pSJ+MuctpKiJw75hskIW2uaNoo72
         Pke1ka//TbQfl/ibIsuNTuucP3mMWUiqOGLmMBQhmpEKX6QM3xIUCD6EcLHgzMB13TXK
         k7PKNkrLiEX1wQOs7ylGsQtrwGvEbQxf2/GCboM6ovajWqph37DHUXHqrnFGhW7Dmz1E
         1q6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709198858; x=1709803658;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5ghXUJywXB0o8Ao8Lto8qx6tKwebHI6KHQ02iVqyJxM=;
        b=MQlCKiBIcIoFgU8S+VbHZv9o7PhDnYOQoSBH39aChlkSJDtTbHFuGsN0oSaNnf5Y6n
         6du8KjpBJ3qy+OQ8Acgx7xDlGcY8DNtEljeicdZscXHjgQXR4qGHJO9elFevs5zJGuOP
         WJfWlBCx5q3W3rYlmgr6y7dapfMn4xxl9RfZ5B43TnU1tR5smZlq5CmSJtqK9cxx8Hh5
         smXupk4CECxuXqrfhax+5s6bblEYyWEpx8lwQvEhh1SpdynUjYxT9Q3ev/7snMGUXqV2
         GrIpOkqZOVIRwGQ+4rvA+D3naQEo1DBzpFmheByIR1fO8RyUG62ZZHgLXYgoeEIJnUnf
         /TLA==
X-Forwarded-Encrypted: i=1; AJvYcCUItcWroBRkn6Ddp/N/lqHK1SULf7uxar43g0+YsjVUEc6uimOwS2Lj64AHTjE7lQzA+UXCjsHSNuc5Za5se8YdPXnxFmqC6cxa7w==
X-Gm-Message-State: AOJu0Yxhqulpm+MJiP3hMJhYgqsxylyV8tZ9CDZpUocjvZl4u684tW/C
	CnQwnLHKuA3SiLJJiDFew9Qjv9SJ5KWiflaZyuj+UYW7kKsG7/cDPKLdcLavfa3XScjcvqtGcQx
	3gYySxRXbS7Ub//Txb/PQ26fTFlV1jTnOjVj2Fg==
X-Google-Smtp-Source: AGHT+IGoPzsbTEYQbm0Bgw5eNAytfupdCPSQYRU3O2aSe2gHtzuNCVa3avMijfwZf0rqmCyeFlYWcJh/0SzzVJMMSCA=
X-Received: by 2002:a25:e482:0:b0:dcc:fe98:368 with SMTP id
 b124-20020a25e482000000b00dccfe980368mr822149ybh.19.1709198858403; Thu, 29
 Feb 2024 01:27:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-11-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-11-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:27:27 +0100
Message-ID: <CACRpkdaTv2C_T=TkrdKwJRnD1K68LkWrXzpejhZgzohFKjktBQ@mail.gmail.com>
Subject: Re: [PATCH v2 11/30] pinctrl: nomadik: follow type-system kernel
 coding conventions
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

> Fix strict checkpatch warnings relative to types. Warning types
> addressed:
>
>    WARNING: do not add new typedefs
>    WARNING: Prefer 'unsigned int' to bare use of 'unsigned'
>    WARNING: static const char * array should probably be static const
>             char * const
>
> Total messages before: 1 errors, 40 warnings, 39 checks.
> Total messages after:  1 errors,  2 warnings, 38 checks.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Patch applied!

Yours,
Linus Walleij

