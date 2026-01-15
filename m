Return-Path: <devicetree+bounces-255694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8343FD25BC3
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 17:27:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7FFA03054C30
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 16:21:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEF813B95E0;
	Thu, 15 Jan 2026 16:21:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88CA7B665
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 16:21:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768494111; cv=none; b=cTuKd0lOFf4MXg34EKACDoQaOBjjshilMAuyavp+O5S9SIhxj+q89q0Q6qSWgejXH4FYdJq3Do2go+0lpcssIXEb3nFkq8BXMfUQpvgV+E5+KJbyONzChSA9PKkyrs7Ol6JcZZ9+N8xVMnoj4AaeXorDWo+/KYxzFrCI0998WIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768494111; c=relaxed/simple;
	bh=hitHd2IIQqesxEsJnpDWb44stsIjIR62E9k/vG2AAV4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QOTtQ8MOULvE+vPwbSNdm+WVwxLT7I5trbKuyIOnf9Pf9M8X0yuh65uZwAX6DPMNDNLA1eMUxmZhlgvi59WcO8kbaR9SXdZU/TauFTS7on0IY4MYoBRdvsd7vWl8glD55VPnDDJi07HMzjOAhHNGo0cZoak/Zdm1ZbB8TDsH2Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5eea6f90d7fso774715137.3
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 08:21:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768494109; x=1769098909;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YRbj20xJBk8ykfBXjY0ZjfkbgaBRPnB6+tkn0mmWYmw=;
        b=sucRPpYurErm334jYdzbfRo0iofkRE3pwRNa6h3M24nGHBgqgewLb7uOUan2nqzI1Q
         47BQ/XP95ot94I55MLDbx/jLcoH+bhBs1gvbzkD0TrqKf+j+0dsfgbG3pi32pCp87P/7
         QcVAXW32DlvpNfxQBow45E7LINwF6culcWQaT7f59a0vKcglZVALEK0patU7e4E7nT4s
         BmtcmygrKzvcFoA26BNovu5b9wIjCoTPcdlUb0sry3do/zAP/X5zq2jqrcC7oi0rmdmj
         H34rexAAcLpnz0VfDrpzn7Aw4Z+o3yyTqj3xBkrn9zkWY0hHVkyrH3AP4Lwr8/keHPGV
         XnmQ==
X-Forwarded-Encrypted: i=1; AJvYcCWCep+tVcUYjmDIlVvRBA5Wkvcs9kZ5gzTJ8wz9/YC+sWv5aLk3OZ3OiPllpz7QCW5caI6KQ7gIEf4V@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2yd4WGUy1hLmpFteLTpxjKBXD3PsOD49guge9Ef3ZijJK+zJF
	qM2uJAk60o6OonModOEKGTY4aBke1nHtQXTyXtcSjvqIB1tMYD6iAZ1+9+OE0yhuB+w=
X-Gm-Gg: AY/fxX7Qge9KfImOPZoM6Erk8t+jFbSzN6Ds4YeZKD5mNnCigDwQ3FMkMID8nC404WO
	izo4HolmiJ+7x3QKqj82lGpknAZV2RWsFl0RAg38XrIsVKdFaRHntKsIMsfaC4tETpD/Dgs5vCB
	9UN6n1CS5sg08SHJ2QZ04RThCqUV2+qDpa6o9ps0/HK9mBdFDOVYIq410QHkY7pq5hmUVrghxM2
	0KTvxnatGc3NN92qB4xXDSBOIJWMphdKv/9KiXTNeSMY1GG+urdQhBPSSq/ukEKC+gWkcjrIFSF
	yNgM9XXpw4lwbV4UrY3p3FrF/T/j7RqTnWcOTm9ttru5aCytKUcl5y3Z7fe1mtmzb2bCm0/OKY5
	yNqfZQSQyTVolZJwxlH1brU1uO491r+/n5NmF/OHh6M3MCk3ar3Z1fTnl6J2rWEtg+8NybTAY4q
	gJFjfYuP4alusWk5C9t7DqX/ipWVZkAFh8zIhKeazfxt3nIDo/LcN4
X-Received: by 2002:a05:6102:d8a:b0:5ef:a67d:e957 with SMTP id ada2fe7eead31-5f1a53b38c0mr69934137.17.1768494109358;
        Thu, 15 Jan 2026 08:21:49 -0800 (PST)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com. [209.85.221.171])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944122ad97esm24604875241.3.2026.01.15.08.21.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 08:21:48 -0800 (PST)
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-5634feea416so832551e0c.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 08:21:48 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU9CX5TogZ8Owu0Yxde/PeEVaEEVebwpIS6DvRknYZesoflpax4La/npUzoVJSbPaMPNpfnCZrhZFJ0@vger.kernel.org
X-Received: by 2002:a05:6122:4589:b0:556:9cb9:65cd with SMTP id
 71dfb90a1353d-563b5bc906bmr213478e0c.6.1768494107680; Thu, 15 Jan 2026
 08:21:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260115161858.20226-1-marek.vasut+renesas@mailbox.org> <20260115161858.20226-2-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260115161858.20226-2-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 15 Jan 2026 17:21:36 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUd9TNWixxEYjEdOVLoR982tn4jgZXEnWKhnUTObYXuZQ@mail.gmail.com>
X-Gm-Features: AZwV_QiAnYTQRClR1ygbi92hWJ4Px5AfRbcO4422KM0HMSiCwiA5sOF5jHCdcfA
Message-ID: <CAMuHMdUd9TNWixxEYjEdOVLoR982tn4jgZXEnWKhnUTObYXuZQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] Input: ili210x - convert to dev_err_probe()
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-input@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Frank Li <Frank.Li@nxp.com>, 
	Job Noorman <job@noorman.info>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Marek,

On Thu, 15 Jan 2026 at 17:19, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Simplify error return handling, use dev_err_probe() where possible.
> No functional change.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Thanks for your patch!

> --- a/drivers/input/touchscreen/ili210x.c
> +++ b/drivers/input/touchscreen/ili210x.c
> @@ -942,15 +942,11 @@ static int ili210x_i2c_probe(struct i2c_client *client)
>         chip = device_get_match_data(dev);
>         if (!chip && id)
>                 chip = (const struct ili2xxx_chip *)id->driver_data;
> -       if (!chip) {
> -               dev_err(&client->dev, "unknown device model\n");
> -               return -ENODEV;
> -       }
> +       if (!chip)
> +               return dev_err_probe(&client->dev, -ENODEV, "unknown device model\n");
>
> -       if (client->irq <= 0) {
> -               dev_err(dev, "No IRQ!\n");
> -               return -EINVAL;
> -       }
> +       if (client->irq <= 0)
> +               dev_err_probe(dev, -EINVAL, "No IRQ!\n");

Missing return.


Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

