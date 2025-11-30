Return-Path: <devicetree+bounces-243212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EEEC95291
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 17:52:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7EB79343208
	for <lists+devicetree@lfdr.de>; Sun, 30 Nov 2025 16:52:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29766299922;
	Sun, 30 Nov 2025 16:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fxepM4QF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A16A18C31
	for <devicetree@vger.kernel.org>; Sun, 30 Nov 2025 16:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764521562; cv=none; b=oDgybfhrtbA9KyjPaenVnvSIMBQBSBXRja+J1wrokTy4YRkmHRBnD+VOl3L1x5LTCoykKgw0X53tfcf0WOywuFFRggrKKhJK9aWrtuiS2CxaInGfnbzies1bxYZnTPloZ7IUDCBaiUYDMyDZXx1VtYR/y6kvuuKOkYvzJ70Hfl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764521562; c=relaxed/simple;
	bh=aSXL3seJLL8qXfeWiZkHI4sxakZslscQUZ5xtdgHtCI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RSGiRx+RH8fvWAEtVWRSJuY1cR5aW8BuEUfBCrQJ6gIfHmYArHAoITF+r/ArVZmUlxEvqtZcisX9Ahb+zbCHDOET8R65fF9vTMCo1l6qyXFoiISTws5djbPiUKpi2tIf4Wa2TQ5IsOHY+cy1gsi5zMMrNCGCpQcvuuaFkD8EfzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fxepM4QF; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-640bd9039fbso6708769a12.2
        for <devicetree@vger.kernel.org>; Sun, 30 Nov 2025 08:52:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764521559; x=1765126359; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wJ6fe76ukcbqGnHSuOdykcp8qylK0vyCmnROxjOrYkI=;
        b=fxepM4QFaYsAlmvLn7uae5un5doG4GIj5ZccQgkK28HUuC0fHNxORXEebDc4IbPWdH
         5T4xpBWVw5hGNOg6aHc0sriVjEFhY/UNPTjy/yAegwrYKSF8rRBy+ceNhb74+87YdWh8
         UgFPQLYKnH8h+VfDsBxNQHbf9aL1m6Q3lFUyZ0P2m/WYsGwLjf1msYi9qLpwBaq0abxr
         o0AVUyGiqkl+rtLCgipp0Qx2lCKmi2TYroIMu0ybKb6ivDibvoUMlGwnBQ1u/YyIlGb4
         0w40ByimENVfM7CsKJm2YALNWEytnbeKfZybxKS08YHTTvP14+RvIdH4AHGoR9WIke0G
         Z5Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764521559; x=1765126359;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wJ6fe76ukcbqGnHSuOdykcp8qylK0vyCmnROxjOrYkI=;
        b=hGUPGpUynz9qVq2cWjEjvtnI2nMjU2j9dx7DbNr75xVCHy66xwb8L7SuRxywJGf9Fp
         G5aZnp1zmdkw8ZzE6y8w9ikKdvCVbuF++1gOu7Y1N+8rL1YtPX1lqbG1/KrVxTw/hwTy
         FYq6uFYF3NKFaqP1KZttMgKWKUgStg5HCtNaeM/Jynd+abAPfLKqQqRCYT3HNx5tFcvs
         G/efDBfbrvTvawF5x5QIt8rpLlEKDQTVEMZ1JzujW/aRBJw504r3lMcRQ7AJO0OYOaob
         AHfP9Rbg2Jrr0KWdohOYdhgXayikAZDJMr/gOF4lhjrghSM4I/7D5xwpF+IxMNPgQqd1
         /YKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUztqSmtv44bV6uavbv/+e0GykU8hzBLnFMs02gMxx6IuTGuXOrk7RDRldK8nWsFJD+OIHOwdwWdMQI@vger.kernel.org
X-Gm-Message-State: AOJu0YyOOUiIuU3Qd4VhNvUMYwXffdZ/PyZ1IH2aCyk+D3WlB54JZdZO
	ACs4qdYucaJJrY4Ii2cFupg2CQVpfYHtkBqX+GxEOIb2RyA+ueS3pa9cFnzxoXTkxlNGDvOp5Zh
	GFZfAzcbt/LgT+dOZskwxS+J/13tX/yk=
X-Gm-Gg: ASbGncsxJbaKRRVN15OIxC/frG7vZQnzpO0YqlxSf7LLBMzPtksXg2CTZfByWQSJYps
	BFQgMK8SxVf6Mnl2vE8l8oB3yxgishsiOZso4vvjDwjAWvq/xEQpj3nAouoEMGw677CEvEr8cHq
	kSNR0br5gekXDE3yXK3pzCVFoE6+RKi+yDoXgqeEHPL6SAgDknMX9VKbgxfo4FQ3dPWnwk8XG9J
	A3oxUsL92Iq3LCnPV3k5p7l+jE29wjKv3TbZPCqfvLCVxEiaVdGg2T4fq4boKdQkSNXNMFOd2Nb
	qBIMhlyyQYJJEDXMp96eBnM5OAsi9qTI9eyo9IrEiLPVjeoCwPERY/cNUqFaZ6trmI90t6qKAg1
	ll6yItgY=
X-Google-Smtp-Source: AGHT+IEgrdz8mK9TGBNR/edqyq1M4MUt61WNWmr7XneeYKJJ1avxdhdJ/mUSBsp7M5BngB5Q3YPqSdESAIgzBL9WIuc=
X-Received: by 2002:a17:907:3e0b:b0:b76:60ad:77f8 with SMTP id
 a640c23a62f3a-b767170aea1mr4019953466b.48.1764521558404; Sun, 30 Nov 2025
 08:52:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251130153712.6792-1-raskar.shree97@gmail.com> <20251130153712.6792-4-raskar.shree97@gmail.com>
In-Reply-To: <20251130153712.6792-4-raskar.shree97@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sun, 30 Nov 2025 18:52:02 +0200
X-Gm-Features: AWmQ_bnLDmE_-g4Cj4lFQQDM568Ha-UkLbhD1fvEJHei9syL8qH60b7dNaKtSow
Message-ID: <CAHp75VfPjQB3UqMEb===5j0YYoWn6mMuaaAdTjUcFMuChBq6_w@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] iio: proximity: rfd77402: Move polling logic into helper
To: Shrikant Raskar <raskar.shree97@gmail.com>
Cc: jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, heiko@sntech.de, 
	neil.armstrong@linaro.org, skhan@linuxfoundation.org, 
	david.hunter.linux@gmail.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 30, 2025 at 5:37=E2=80=AFPM Shrikant Raskar
<raskar.shree97@gmail.com> wrote:
>
> This change extracts the polling logic into a dedicated helper,

Imperative voice.

> rfd77402_result_polling(), which improves readability and keeps
> rfd77402_measure() focused on the high-level measurement flow.
>
> This refactoring is also a necessary preparation step for adding
> interrupt-based result handling in a follow-up patch.

...

> +       while (tries-- > 0) {
> +               ret =3D i2c_smbus_read_byte_data(client, RFD77402_ICSR);
> +               if (ret < 0)
> +                       return ret;
> +
> +               if (ret & RFD77402_ICSR_RESULT)
> +                       return 0;
> +
> +               msleep(20);
> +       }
> +
> +       return -ETIMEDOUT;

Reimplementation of one macro from iopoll.h. Include that and use a
single call, will be something like

  return read_poll_timeout(...);

...

> +       ret =3D rfd77402_result_polling(client);

Ah, even better, you don't need a function for that at all. Just use
that macro here inline.

> +       if (ret < 0)
>                 goto err;

--=20
With Best Regards,
Andy Shevchenko

