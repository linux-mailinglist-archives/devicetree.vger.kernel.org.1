Return-Path: <devicetree+bounces-47164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D7786C569
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:35:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8EA9D2919F5
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:35:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74CF15732B;
	Thu, 29 Feb 2024 09:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EmJIgriT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C2555EE99
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709199319; cv=none; b=qDKw3CZLG7FrQ0FFzvNQwoCVGMBgI8plq3Sp5JCwdyfpUVFhX6wIcBM4A2xD+ylJk/JWg2yrRdBTvOLTxuXYYxVImAzhaf6sg3hL0b1QM3Xbv0m5Z6REnpzGLsMQkmOpqMnIwQQ9ZCr63dNDxCTGSkSNsd2en5yekNP1rww3z30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709199319; c=relaxed/simple;
	bh=E2BCwCWKr83pu1Ph0WYIAlvgDlw5ksBM/Bs5jndzFeM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=to00i4Z2evH6IYUgq5piLX6Bj1VGNnETBwqjSqhuojm5TktKRPdWq/uOrSZ9E1KYOI1Xe8aheyPzNljAORRHrsUX+6F0LEWRyIWdWb4kp1XIudJPntQi57Pb7/Q0AZhFYOBKSiHQmp4IA313IdxemhXPHSUnG5bvzVwbTWvfFDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EmJIgriT; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-dcc7cdb3a98so721711276.2
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:35:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709199316; x=1709804116; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f50x61FNXrIWBR6f2QHRlicPFI4c+LBiZV4KjCEImyg=;
        b=EmJIgriTLhwFa58qCl0w5+2kg9n1eUSXkpQWbhYvXRQKvuq5IMKs1050cmML5xRC2d
         6iB7gVpoVtNKCZ6IrkJRFKkU/pF5qo9uwVAeOZelGZxS3aadCNun0CmKA+X8RklR/vCH
         vRGcfw0bQOqWdisJUTNwlUqslQiKrDsHYncjLTWBQkVPXiZqI0RwL8+lAuE9huFI7SaC
         TPs7A7XH80MBRVdeWTiz/edLSGlbPSaKRShB6kDLHy9JeKc9zG3wZq+nUzMQ+A6x16ls
         UOTTacrQM2JWW2W/Txrbno7Ga6hbkrhHlGq6gFy9bIkB5O5LfcCo1nJcQD+BhhzQcDYH
         a8mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709199316; x=1709804116;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f50x61FNXrIWBR6f2QHRlicPFI4c+LBiZV4KjCEImyg=;
        b=wtdOk2/w7FCYeapV+mxYZfIhhYOT2mnrpGIzcVlFSY4tY7dZh7/ewKuB9jRt9v7iGe
         KlOdqLvzbakb/bM7jFPZKIxMu5ITrNLlJKUGs+cJvjYqgK+phPBLO8PxP09r6Qu1mD2B
         OJKBdu9/bmRfhm4rDJI3sut0xGOi2MSYXfHDxx9nQc3mYMGwqcJ6P6EcKzrSkf0oPDYK
         2WXAP5CCiogF1AiU2f7jaCfZhMDRpKi0c4bkUMK2+Uexv4uUceR0ih3EiubNxxZteXnj
         1x/sE5TgIagV0XxYNcyxYvM31vKUTschiT7YEjoXYAG2+7NnDcTbLuj7RxAOPoigxihn
         A7Gg==
X-Forwarded-Encrypted: i=1; AJvYcCVD/Eh4x03DA5U4SQB8GPkJRP3JdbE+GyGvzWfLjyI+R/o2dtZ/oYz9nplSfzRHWEKjSbmrCG3y6FJMOco3jgfYrxY4tpQUmcpNPA==
X-Gm-Message-State: AOJu0Yzhy7d82SDDbziwSeE8MSyLhJVQg56hwx4ETaC3f2V7DvEaNz3P
	md2HzL0Y6bAtlzeoDR8qSQeIfWxt9jqN/8CzMiDxD/BUhI5o/57Jriyc4DzyS3m/a8Bp23qGaaI
	S3vIA40yCtj2qXKFsINX5FmOmPMNEDX80waAKYA==
X-Google-Smtp-Source: AGHT+IFfB1CzRcwoLd5A9MKz+8jkh/89e61JZ8wEvR20tH5L9rZAg6gSACHkzLEHC6fcpjmod7PS/OVzmdDO4jPTA5M=
X-Received: by 2002:a25:c904:0:b0:dcf:4663:ecd8 with SMTP id
 z4-20020a25c904000000b00dcf4663ecd8mr1840712ybf.8.1709199316704; Thu, 29 Feb
 2024 01:35:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-21-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-21-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:35:05 +0100
Message-ID: <CACRpkdb4egmLuudmhv5Lk23+RbKNOnxfQWmYz8S5pB2hJyV2jA@mail.gmail.com>
Subject: Re: [PATCH v2 21/30] gpio: nomadik: change driver name from gpio to gpio-nomadik
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

> This GPIO driver is historically related to the Nomadik platform. It
> however can be used by others as it implements the ST STA2X11 IP block.
> Pick a less ambiguous name for it.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>
(...)
> -               .name =3D "gpio",
> +               .name =3D "nomadik-gpio",

Patch applied after amending $SUBJECT to be nomadik-gpio rather than
gpio-nomadik.

Yours,
Linus Walleij

