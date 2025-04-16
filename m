Return-Path: <devicetree+bounces-167628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D87CA8B27D
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 09:44:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5DE018952B1
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 07:44:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54A2622D78E;
	Wed, 16 Apr 2025 07:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Iw9rziFQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6728D22D4C3
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 07:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744789453; cv=none; b=uGcRqHcy5WwTUQO9+M7TJqX60wWqQ41R2iW4h3IYUVtzrFczA2o7BADSp8i8bmhSQ6HGveafWzmsgj1lxoXFSCYYNB30ls3i044ez5JYNkqp/5sb8zLiQ+q//3SF0pwjRa0g8aQOb8IbznClM2XOFWrowKCuIwtieFJUhbDztKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744789453; c=relaxed/simple;
	bh=w7BUvBYqTMm1Ze0afEibdThADpsOyoFKneytr7BCkqU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XQfUrEYhrv2YBXkvnibMFkY0U4nDZ/clxOi9lhDRyzajZzVU5wPposT49hW3JNJtO0FkjjyMJDv/fVFALp5ngkLCFIm5LSiiV+Wh6s+RuLQhKtTURKAnae84IxDmmAIMgHhi+7HFXcksh9HoKRO51p4j6t8lCS04RUPTms9Fb8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Iw9rziFQ; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-54d42884842so1978362e87.2
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 00:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744789449; x=1745394249; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w7BUvBYqTMm1Ze0afEibdThADpsOyoFKneytr7BCkqU=;
        b=Iw9rziFQ0zflq0thJE07XZeRtG5fvZ/UHqo7sL7GBaNh2gWnF/3MHaGz5+4ixr6pk7
         V/lAf/TNIXxPlzuBL7+uhsdWqGzWGj7dwoqFVbnrMFQkCdgF4tI+lx0ay5Nv0HdfTtDw
         IgM1sFW6iPaEc89Yr3Lvnus9Qb7n33KGMypsVe+P4GyClXjIeNd1O/WfNBG/nroXjPjn
         hn69/rtZhnOSiBg5G5lv+cL+yi7nOjttmz01oO0VGhGF2fkXXj2k4D1SJxveuHxvt6hr
         owg1y23r5FbLoiRiMFV48r048dIcmIc8SfiRqGQ8KCxFcDxZGW5bJZbjWeoNbSpHUeQp
         U60A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744789449; x=1745394249;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w7BUvBYqTMm1Ze0afEibdThADpsOyoFKneytr7BCkqU=;
        b=Y1RKNDqeiHjcs9AfwSwyORQxs+NJF+stsr35m27kejDfcFizrxoxlQ8Z+IoYCcMBeX
         wo4OKCKIqgZXDyXQ9h12+feizoziYJH7lzLXk6bj7GVQA6O6+7pI6iV3w9Q1Iq0ncCpc
         gIuHIjE6BxdbTU/ZsKAbTblDK4kIHQTC8WatGL4HkbOqF6wJkgVfZ/ZUzcPxMNImQQ6k
         YApE2FpSedPgrcz7HoAofwOHpD9W4tbB6lmdF1GVTDgNblLYdliyZthXR8bu4dIC8r8X
         AECTbv2OvuGffdQ2Y+PAy+u5rJJiRvheMwktWrxknjkUSzNuZxSjKu2iV5t5QW/SQYEB
         FB8A==
X-Forwarded-Encrypted: i=1; AJvYcCWvCp5ZqMDMvSTUaTim5kTfhYmBxfZfZLyd8S8KG0aVaCiv2RYUX0GJL7rZZ946YJyNFYhzk04CLfoE@vger.kernel.org
X-Gm-Message-State: AOJu0YyDesGiHELnDoWT9PZvoSEbb+njw7Zd/5PJlpUOmK7Xsdn+NDyh
	sZtan3P12bPZbGsSzTsIv2E4jyG2WcfC+dgHDEcQnp6iiEEIzC8bIQdWPVA+GhyOphJX/TJ3a3h
	1NG5+TZclwapjQNyf4R6kuqpUYmrieGHB7nmMt0+fjb9ET4tETAg=
X-Gm-Gg: ASbGncsYHx1J6lYY56Ox6iQP7g4KAmgBaLK11QIDTX8gGkjeGCG0heQe6skFSFKrYJP
	pWrXpsFF7vtXjjXSvlF4kbBCNOk5cCSrjVLcWreb9XQ7Hjetj0vC+ARDmygeJk8GTetV2R+Nt56
	ezRFvGMOKWb4uPmKGAOs7Oaw==
X-Google-Smtp-Source: AGHT+IG0Lwyub0udHPr2t5fpOsIZ2RLg7Lkae30HWcbs+tlOsVB08fWQavStEVsRHF6ju8VE3aya9e5Yj0LjLkUgobg=
X-Received: by 2002:a05:6512:118e:b0:546:2f4c:7f4f with SMTP id
 2adb3069b0e04-54d64ab0b47mr201581e87.28.1744789449414; Wed, 16 Apr 2025
 00:44:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1744325346.git.Jonathan.Santos@analog.com> <414f5b60b81f87f99b4e18b9a55eb51f29d2225a.1744325346.git.Jonathan.Santos@analog.com>
In-Reply-To: <414f5b60b81f87f99b4e18b9a55eb51f29d2225a.1744325346.git.Jonathan.Santos@analog.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Apr 2025 09:43:58 +0200
X-Gm-Features: ATxdqUFrHLfUgDMhA2bIeO0emn67mugRA29Aq8hS3KKX_3FOQ4i_PWerQ3Zb48o
Message-ID: <CACRpkdauyPb3bhgK4MTYN4Xq0cM80vwT8i_jcKoQcicpvMo7yg@mail.gmail.com>
Subject: Re: [PATCH v5 01/14] dt-bindings: trigger-source: add generic GPIO
 trigger source
To: Jonathan Santos <Jonathan.Santos@analog.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, lars@metafoo.de, 
	Michael.Hennerich@analog.com, marcelo.schmitt@analog.com, jic23@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	marcelo.schmitt1@gmail.com, brgl@bgdev.pl, lgirdwood@gmail.com, 
	broonie@kernel.org, jonath4nns@gmail.com, dlechner@baylibre.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jonathan,

thanks for your patch!

On Fri, Apr 11, 2025 at 5:56=E2=80=AFPM Jonathan Santos
<Jonathan.Santos@analog.com> wrote:

> Inspired by pwn-trigger, create a new binding for using a GPIO
> pin as a trigger source.
>
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>

Is this actually documenting the trigger sources I implemented for LED
here?
https://lore.kernel.org/all/20230926-gpio-led-trigger-dt-v2-0-e06e458b788e@=
linaro.org/

Then maybe put this in as Link:

I tried to figure out how to properly document it but I think it was part o=
f
dtsschema and that may have confused me.

> +title: Generic trigger source using GPIO
> +
> +description: Remaps a GPIO pin as a trigger source.

Please write "GPIO line" instead of "GPIO pin".

The reason is that not all GPIOs are pins. Some are other stuff.

Yours,
Linus Walleij

