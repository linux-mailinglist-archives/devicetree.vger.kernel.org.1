Return-Path: <devicetree+bounces-232060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F40BC13E87
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 10:50:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C99C2189737E
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 09:49:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 237AA2C11CF;
	Tue, 28 Oct 2025 09:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pCcYzrY2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBED29ACD1
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761644970; cv=none; b=SyG211CZcTG9JwMZBXANMBKRB8n3t4NnQwF3tIBQLJO1dZktQzRvfwQKTKKmbvGgiLGQlDeU8Fp00v8T58F67MISAVhN+6Eg6ayhBhgZz8ypkz2pb14f7TwQRAQoc6zNswMotGI0o5CrZRHoNIEarvn4yypKDIhimvR2CrfurCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761644970; c=relaxed/simple;
	bh=HlMVZKXiPzGH3vjUzbrHUAJiXnZQ1VgM01/9Vdi26wI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mRcgomu7TCdsmloDkVl0C9xcXX/RXRRGOjUgnwGlBYNNNS9zgL5oFRFZAHtHF/vJF+krjt1zsrZjiPpumvahMfCyTH//QmFbPRF1CeH1/Q+B5TjyrZbKL5w4FD77D8bo/Vg0I/kNsTW7O5MgtYmAP1ysvG/QBDuXaO0hH4CAXOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pCcYzrY2; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-3717780ea70so75005511fa.1
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 02:49:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761644966; x=1762249766; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ag4RpPho5sULiazlXNA0y7JZ5ZSjgCMfktnwGNRil1A=;
        b=pCcYzrY2BYJR/brdApua61ctxRqWSAtLKy3QXsOAwyXt6gAjlXZArmM88EkobQa6sn
         O/h+w3tIXuSDdQVv5EJgw/KaUNd2eFU+bFdU5A5CobIs+vBCn4MkWOftPYDo0ATAFGbs
         Q9JnuXugAICH1u4ajaNbW4dB2dMj+W6ulmKzsUswUB3Tje6bGLT8sGSNmi8qO3hLg9xV
         ChF5ax57sraW5kAUmxycnwwXcsbiRLD+LiYwyFQDr6jKvosHoFUqABoX4zHHUmg37QUn
         PtXQqti6AfUDhbcavqjH1YVYVfQw6sLAiY6W0u1+OyPZK7VRlZhCLqb9y9W8lXE3M05S
         m+Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761644966; x=1762249766;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ag4RpPho5sULiazlXNA0y7JZ5ZSjgCMfktnwGNRil1A=;
        b=f9GTJmIBq3DWD8hOdN4Kk/gtiWGTFvglk8Hdp0WjEpeGGqr0b4S+jANcXPTZmirjVm
         kdfOY6nASeEPgYpVrpv+8VZAhoLj+VoU3J7O4KhT7M8fj1BRlg3hc7p5B1arty/SWK5x
         AvqgmWWCIu6zhZSkYGnXl8hV6WFn3hTYzkK2qcPno19d+CQ2OOjXxRHitIjvww1jEz1b
         k/RkoGZSu3saGSD7nFR5hTz76gpA33W6XGs0WAmR01kr5axEAWB3AiempIYzy0HVtc8k
         nWEHQ4W518hHBeSjdh3tHPZaIiU0Fa/TNLcCUca02WWnOFQ6oESAZs9H2Sm73xxG2OnW
         gU9A==
X-Forwarded-Encrypted: i=1; AJvYcCVkrX5BZndO+yLE1VCMSVv9f4ZQjye9Qs+exH86Fesg5lmt5HhRQhgClyFvfF+V3385u8mKPUQ/c3Jc@vger.kernel.org
X-Gm-Message-State: AOJu0YxkLKYFnp2qpfRiCWlzXswQ1xlCasoKrxNUaoGObY8icCP2Qemi
	wZe0nqJx+5ZT4tOhiZ++DnT9trQcMbAmqy1YOV8anJRZncPxBo9lsG7L7lp3Wa0gsQqirS2l996
	du75Z9WURV1C2Uvb6B/3imX53bxydeskljsgcS8j5ew==
X-Gm-Gg: ASbGncsn8d2HTaL9crQB8AIfgLdN4ITvW9ZXfWPkxcznm7ChDA5s+hjy9Nkeer4tQUq
	g2YOZNXHrKJPOiQa0hdpOJMm0MR8PwQfKYUTktH98SiASMMkFTpJISKaYNO2nUb64DmcyCgAQaw
	bmNf/qa6+5E8yFTZMovnlcGQBo6K6fyTH0+y3V4eLaoVPUk3VGE5rfLGli4z5s3iLjICc8OvkhY
	bHwcShIE32B/lZbn+2LY1mwVp92YrsV+nsBpwCduaE3I+cD4mmaBfj0stl1
X-Google-Smtp-Source: AGHT+IHLnbuiTb17yCojPLzTfDTPTsYUvPEhpjzcDmPys9LqE0Vi78zD5Ee5nCAV3CJXyUjTEm0Hy+cMggR26FQ+KH8=
X-Received: by 2002:a05:651c:254e:20b0:378:e8d1:117 with SMTP id
 38308e7fff4ca-379076aa8b7mr6977841fa.11.1761644966332; Tue, 28 Oct 2025
 02:49:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251028061345.3885632-1-gary.yang@cixtech.com>
In-Reply-To: <20251028061345.3885632-1-gary.yang@cixtech.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 Oct 2025 10:49:15 +0100
X-Gm-Features: AWmQ_bmvf5Ur8d5O7ggkU8MMUQcJO6q9gUJ2SA5XsMYb2o4yAVo6574UPA09OxU
Message-ID: <CACRpkdYdQa4=4JvBWJcRv0X_A0PnkQpZQQ8NTPzF0ntdt9qX=A@mail.gmail.com>
Subject: Re: [PATCH] Pinctrl: core: export pinctrl_provide_dummies() to fix
 build error
To: Gary Yang <gary.yang@cixtech.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	cix-kernel-upstream@cixtech.com, sfr@canb.auug.org.au
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 28, 2025 at 7:13=E2=80=AFAM Gary Yang <gary.yang@cixtech.com> w=
rote:

> If a pinctrl driver uses pinctrl_provide_dummies() interface, and
>
> is built as a module, then an error occur as follow:
>
> ERROR: modpost: "pinctrl_provide_dummies" [drivers/pinctrl/cix/pinctrl-sk=
y1-base.ko] undefined!
> make[2]: *** [scripts/Makefile.modpost:147: Module.symvers] Error 1
> make[1]: *** [/home/gary/workspace/upstream/kernel_upstream/Makefile:1960=
: modpost] Error 2
> make: *** [Makefile:248: __sub-make] Error 2
>
> Signed-off-by: Gary Yang <gary.yang@cixtech.com>

I just deleted the call to pinctrl_provide_dummies() from the SKY1
driver instead, because I didn't understand it.

But if you need it, put it in a series with this patch based on the latest
devel and an explanation why it is needed.

The only other driver that use it is the Renesas driver and it uses
it like this:

        /* Enable dummy states for those platforms without pinctrl support =
*/
        if (!of_have_populated_dt())
                pinctrl_provide_dummies();

I don't understand why you would need this? The SKY1 has pinctrl
support after this patch I think and since the arch code in arm64
requires DT, it seems fine. But maybe this is for ACPI boots or
something like that, so you would have this driver but there would
not be any device tree?

Just explain it in a patch and we can add it back.

Yours,
Linus Walleij

