Return-Path: <devicetree+bounces-47146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 930D086C4F9
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:25:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C50381C2108B
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:25:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75F075B694;
	Thu, 29 Feb 2024 09:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v6vBqw74"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD67A5B686
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:24:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709198695; cv=none; b=ihbZbT6BTlR4iI9d4TTl5qp86RHBkoQ3AyNkOvbV7YMLLC6hIacQJYjdhdqGvOFez5o6qBj8t0PIb7FWYYMyMOnWC9ufrsb0vI1pRvXOhd4JvyVKDSrHdb6wMc+i6FQYvF5JA+RtAlN9JrmpmVbYbl7TvX2SEimkQzGhWrYFx4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709198695; c=relaxed/simple;
	bh=XgXKQRyPRkOd5imcOO1De6VPE1wNBifTMp3skwabjRc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=auQJEyj7WpVRkovPz6ffjrMFm8LAjTMS4cdtz4p2eESBXoh3zO9gdxPP5q43BtPOnFqahwPwC99oRCRiwlY7+ODF6kAMUoRWYI4q0+5libnFIe/Iab5R4Bv+sS2/Bad2t85s2130wcbhipGu0Z/69ooqgZUMHy6cLIlaDY+AwrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=v6vBqw74; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-dcbef31a9dbso536360276.1
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:24:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709198692; x=1709803492; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XgXKQRyPRkOd5imcOO1De6VPE1wNBifTMp3skwabjRc=;
        b=v6vBqw74d53slVj6eUS5oP4PDIc7FrUrmVD3iWhvkfxsV3I3zDoqQJkcNaRyRLREZ6
         RhjWGwvhFL99ywRdARPbXUBlb7/XcArkLTUhpqy6AEKI8FWjHVe0HyhS/m8x9TyRN4cY
         C/sP3ySRvmnuj/WoECf6qSKQ1RRZy9IanYSZ35yiQt4wNWjvqzuS45+JdBrgGWx6fZQu
         fL5m724TmHt8neG50fsHohOhG34QRmdddE0qIt1auUTGvYiD93KK5j/ohbH79LMB/+4l
         FwjBtZ0GtFiPPWp5keoJBRo8dNTmSnD3vDjXvTg8owOVUxB0psQy5eNtcObc9q4SLaHD
         +3dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709198692; x=1709803492;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XgXKQRyPRkOd5imcOO1De6VPE1wNBifTMp3skwabjRc=;
        b=sHjRslr8qkXgWmB3skyE/vN0/uZ0XtS6NBcl8ltynGuVBMnARnK6qa0BRKTxwXlNEP
         vFUYJbF1pW7unJVDIe8zn8V7NkIOLzWOsrTScVGc09dSmUTg+gKssX4YrDaPFwjA+z5P
         m9xJkIXZGWM0nE2sM0RScyRPB+uV7OQ7jNe2pBjxQU41bxdUj8QCANYGPrUaGgvgZkWZ
         ASRXpKR1Vm6/bU3DBgkRmlClpvAt8rc+tTD3QRs13BzRVVP6ohGqbWGhpgjsZ1c/CObX
         5zk0i/kg3VUB3CSNLsX4BK9TCbv5x+3tdKUd6BijwiwoDJg8gB+LSfUijfza5Et1K/En
         zDow==
X-Forwarded-Encrypted: i=1; AJvYcCWmsQsEgT0PknWJ5YbTKuWEVOS6rqsxmSU9idPtE411ACL2wgCPkATuVptWXXWdrHJsRabMctPv04SeytMf+zGcCe/UBWWfk8xfxw==
X-Gm-Message-State: AOJu0YzIgz2I9GaeB6SfEmS2iVdaSf9OBF4mWBgZ+FVqulnZAzJFOHZ6
	4KC6IbgChzFD5GKJFoPM0Yww9SDAfR2DVqMQujBDq4/5KwJbtw4jbZmpiwt3Ga0+wWVOGZ5BGQO
	+L6Fgo8DkKZrFVLUnYwd7rGJt3TUmjqhvSH4vkw==
X-Google-Smtp-Source: AGHT+IHnSluj8noDkCdA/Cr1alfd3L//OLqOP/CsIY5MpMGMSAYZTI1jAe+ZOvEXeVS7SN/cMHdb2IbecrkNGXkvUmU=
X-Received: by 2002:a25:3343:0:b0:dc6:b779:7887 with SMTP id
 z64-20020a253343000000b00dc6b7797887mr1579268ybz.20.1709198691706; Thu, 29
 Feb 2024 01:24:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-7-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-7-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:24:40 +0100
Message-ID: <CACRpkda6hnuaEhpdXJ-S-60EdLVi4nay9bEb-Hf0sw-=d_XKVg@mail.gmail.com>
Subject: Re: [PATCH v2 07/30] pinctrl: nomadik: Kconfig: allow building with COMPILE_TEST
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

> PINCTRL_NOMADIK, PINCTRL_STN8815 and PINCTRL_DB8500 depend on ARCH_U8500
> or ARCH_NOMADIK. Add COMPILE_TEST as an option to allow test building
> the driver.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Patch applied to my immutable branch.

Yours,
Linus Walleij

