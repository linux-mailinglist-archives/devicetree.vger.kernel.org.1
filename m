Return-Path: <devicetree+bounces-112130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C79829A1256
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 21:12:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 050B71C2184C
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 19:12:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 875E3212EF1;
	Wed, 16 Oct 2024 19:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WuRV52OG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6BCA18800D
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 19:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729105949; cv=none; b=kaS3JgaZ4FwIYggPIDPX2tks9f8fnJa4Pdf0RPc0D3lz8iInOXUzKowmC3YULOz4onhLH1jVIlYR1tJuhNh+CKNwxGKVJKzf6SRqxYAdyuDQQ6FazgqbnNA8WX0qP7YpkImiNoB6KqShxTbqz3Lh2tRmE/3+L21y33rnD+IvtYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729105949; c=relaxed/simple;
	bh=Fz4288MkDMSFgYaP8b77Lu09kgyulAy8P2y7fn/s4nM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RnPLVkZ1ADzt4H6JNXaUQJjSacKyFAULsojhPyuRQXSQKPufQYAcAf4kpEB301okunci922HWJ8OF3ju8uYdwwSQEVR6wMEXF35SYekwef6+h+6Ko8ydU+YpOHM3FDu56xp3SY3JYnbC8wKbgnHtod+njMzy8w3T+7rjxamgNVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WuRV52OG; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2fb5014e2daso2422531fa.0
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 12:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729105946; x=1729710746; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fz4288MkDMSFgYaP8b77Lu09kgyulAy8P2y7fn/s4nM=;
        b=WuRV52OGMNJHioawxa+0s5X7T3jNRTtHCQhmfVwjcjyOg0/4f6bhtFMCH/uI2IhUyU
         JEQ9EqO9iXY7h3B5dZkG9GekGduyl7Lnvf/pbNtjZN2wHevco1Ae5WCQov1SClYtC9N2
         0kTK7Yx6UDXNPFIqQ6Z53qdb6Vhtv3MLbwH86XAvgQBcG8q8qPRwfsQpgsoamx54NWdT
         83PkpeH7oZDG3iFEs0mZvVtzZcsimLP3Mcy4D8/7efRWKDiSthR25733AHkdN3/K7/vi
         QYzDoBDgMGJykNH88Kfhg+PI8CKwsQ1oPpAKhPeXWtaX8IvX5zcGT2fU08DKlVFPwt4K
         OC0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729105946; x=1729710746;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fz4288MkDMSFgYaP8b77Lu09kgyulAy8P2y7fn/s4nM=;
        b=EVGj2vvTHndzh5l46hOKnVGoD/yMtBjEHivTHT18UKZCFD2pw+8mHKfUyY1Tq75aLf
         S08y9J7IKjMk38ipHv6lfhb5HXq98neAz7PwkPRAfEAvzv2hFRGzDOVvMaOSy5wu4Q0l
         pBq+1zswACzDEtR3BSOdI/9RSlSXeblffaY6Zm0vGHwr6SU2A69znnpbCJcmKT+lex5f
         zb+A4NPk/vTsaeJhUkwfGNo9oksvLVl4qVJc4y0r2KVEzpAMsY3FLtUljnERvFtJQZvd
         a6nM+v9Qq1urU8ffyPRm1VJyepZwfgU17vCfMsseAoSZdnNBZiGjQWQJuAOs/ID1UTC6
         ODAw==
X-Forwarded-Encrypted: i=1; AJvYcCWXqrHnALvFNwgpwazGw2NMp6q+pvAAYmvNvPBsHdjoZFnR+hwRBJVVQKmmSxwO+yax6qCOo26Yv0EY@vger.kernel.org
X-Gm-Message-State: AOJu0YzS7M09yUbVQwweUswHIXiW4/WxOnl1G4m0SEGVfOQ3y4e7UkBJ
	ix5QY0VnelS/mQJh5/vxZe7MD47W4QEjFvtupO+xLE+8pu6zYO5asER1/VclLTOLQoosS4+1OrN
	cSGKp7YMHItMrwjp3yncBaVRz0piZe9wkuWYzbw==
X-Google-Smtp-Source: AGHT+IGx8jru7dhdlOa8TcMliZqBtrqf1YvklmDHRLLqRwEGUC9wxoKNXqw5uTj7MDTuGQxmPo5a+bJNerjtQx/dDUU=
X-Received: by 2002:a05:651c:2126:b0:2f7:4cf1:d6b1 with SMTP id
 38308e7fff4ca-2fb3f164ffdmr94210581fa.1.1729105945732; Wed, 16 Oct 2024
 12:12:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241016-gpio-ngpios-v1-0-f16cf154f715@linaro.org>
 <20241016-gpio-ngpios-v1-1-f16cf154f715@linaro.org> <CAL_JsqK-Nd6izk6RFf4NyoOCkobDwye+QPsRKHBDwovxO9NTDQ@mail.gmail.com>
 <CACRpkdYipbtgW1odod288fEV33SqoJo8vcN7=c+tSRUsR4dE6Q@mail.gmail.com> <CAL_Jsq+5r3Ep7oSHtL=mKe-Vmmkkx7A7+Wk=Uzmbk+iGhwDMfg@mail.gmail.com>
In-Reply-To: <CAL_Jsq+5r3Ep7oSHtL=mKe-Vmmkkx7A7+Wk=Uzmbk+iGhwDMfg@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2024 21:12:14 +0200
Message-ID: <CACRpkdapSL-hLJpEm82=sfC+5EU+H_6Zs_BRD5UpF02wdduN1Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: gpio-mmio: Add ngpios property
To: Rob Herring <robh@kernel.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 16, 2024 at 8:59=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:

> This property has shortcomings if you want to prevent exposing
> non-existent GPIOs to userspace. You really need a mask because what
> if GPIO0 doesn't exist?

That does happen in $OS (DT hat on), a famous OS has
such sparse masks for GPIO chips. They have not become
DT bindings (yet). As it turns out they are mostly used for cases
where firmware/BIOS/secure world want to "steal" some GPIOs
out of the pool and as such has nothing to do with hardware
description.

It has been shown that in practice what HW engineers
do is line up as many IP instances they need and just truncate
the last one, rendering the upper bits unused. They are practical
and least effort-oriented people who have yet to be seen
doing something crazy like e.g. connect every second bit to
an actual pin.

> > It is also reflected in several of the new yaml bindings, a git grep
> > ngpios will show you.
>
> Yes, I know. You can also find push back on using it.
>
> Anyway, I did my push back and what's one more user (sigh), so:
>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>

Thanks Rob, some push back is always good!

Yours,
Linus Walleij

