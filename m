Return-Path: <devicetree+bounces-198340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 705BFB0C716
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 16:59:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3D66B18876DE
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 14:59:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56A7528853D;
	Mon, 21 Jul 2025 14:59:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9452BCF6A
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 14:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753109968; cv=none; b=OQp4q7kNgVEnBBgkHafVhscLGcYaI6/vPgDIIV+qr+PVGSbjB2EeSTeAW2vR7oprdKb6WzcuOKZhjG4vO+pRwhFYCallpjmC8JyKTtDYGLRbxiFMD3V3riRkDmRIqnJhC9jj2871w6OokejbbveRzSeFtlkaJ/n+SuhikNgO0bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753109968; c=relaxed/simple;
	bh=oJFGLxx4w+WvcpaBlQ7bCMY8tA2AjyOdVqFYYfNhzDw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hPQfin6fu/K1DV+seELW+nLgmXMMeu/1kgLv/epFImJO3JGtWHbRkF75Lloypoea/u+qPCpFOu8nnLvQEoOAYd7FxOip9hxagLqZvyiq0lTdFkJO4CceImAm5S0ZxwqsiD6VapGJAposJrFtfrW9S7jASWHTRKyg09CPq4OXgDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-553dceb342fso3926654e87.0
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 07:59:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753109963; x=1753714763;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0rmsuabFxgO5HQbcS/AHuTJwDw0eGQTKollo0RZOzC8=;
        b=KsL2yhbwC1AQc1Ntq6+qqagcioxz3N5Ln1Qjn/iT7KrQ00kfTJQQzvJ496cpa8Umg+
         jmO5kc/FZndMLYXFW1etOqDhvz8bfn3B3R9BjisPM2xZv0zevciPfs783eOlfX7NS2Is
         qX6OLNi9x6evUGbpbRygoJHEt+EepDDNjLu3YBicxKWW3sbsUdJUyPQk63+8HePKW0QR
         ychHTcZ0B+h7wEwEr21lifv0nMsb+rew4FrbyiL6rghDcnOll7MQar+nsvyzuTkLn8/p
         S1VRxrGaZmZf4+S6d0F4ER1+zCr/lgXLLz7FnYqCP255j+Q6UbGpnx0wCrD5zxtSUfas
         L6Sw==
X-Forwarded-Encrypted: i=1; AJvYcCVlL/Q08epwDDzndVe19fpN/mmPyPMb30zpj4bCSe1lrLQse08Ncv3PwqVkb2ZScC/KgfnZK5l4rXZE@vger.kernel.org
X-Gm-Message-State: AOJu0Yx07RaKxX9ew6SPWspdUs2Ubgr+t/bZxy0jOIPBi83QfkEfi2Ld
	RavBt+dYen5fdnsF4t2LdQ2Y6hZ+0Sv2IDR7DFE0t49f42IdxZ6bprID4XVXqL5E
X-Gm-Gg: ASbGnct6oJm7lShM3xIOSzgkW4/ylK6VcnUy1/Ts256Ux1jXGmShXMSWobdyYJp3+4e
	Qj5UFOxpgJ5jmQ4598VV6asZWOsa5+7DMsi0FxXPHbuWEetIabt4Lyh5zVJxvnVrhk8PQdJ+buH
	BWBMPkbJVwhPr2DpiCY2So1C2gKBMeE4YBxvdrArrYYWydsrGDq8rKzCe+tu6N68zRopLWAPgKC
	/Fxx+aakN5VgY99VEXMPbdG/pAn3U2SlChnlYef07pFDLxK15owJr8Ok13C2c0IuOhG0TgnTDXT
	Lt9nHlHxm6SK0pymHFS2BpEDu/oRWooq4Hs1GXdGAvbaWxQCV5wzsWYPO9IxJFrrqKDSpOECaFu
	Gt4K+m6XHHp42w+GxzTWAhxno2bN4xnOAS0WOxYF3fGP06Ddt5Z1Q0oxk9iKUB+kycA==
X-Google-Smtp-Source: AGHT+IG3H7uJlsZQ+URcKWB64aJTdIYj32DSqinVBQjHCQVEI9MDRMWoXao9QpFipM2JNqKB1miwEQ==
X-Received: by 2002:a05:6512:124f:b0:553:ae47:6856 with SMTP id 2adb3069b0e04-55a2958fe3bmr5184230e87.10.1753109962315;
        Mon, 21 Jul 2025 07:59:22 -0700 (PDT)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com. [209.85.208.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a31aac3e2sm1591190e87.50.2025.07.21.07.59.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jul 2025 07:59:22 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-32b435ef653so33542531fa.2
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 07:59:21 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWcQzFK2rLDMK26CH2nMvGVnQBAKgieAuqp7v0Ir7O3/o11f7EfLgCKZa4f+iomgjSKMB5s0H87OVfT@vger.kernel.org
X-Received: by 2002:a05:651c:b10:b0:32f:3671:4d6d with SMTP id
 38308e7fff4ca-3309a469ac4mr36664631fa.1.1753109960994; Mon, 21 Jul 2025
 07:59:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250720085047.5340-1-ryan@testtoast.com> <20250720085047.5340-2-ryan@testtoast.com>
In-Reply-To: <20250720085047.5340-2-ryan@testtoast.com>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 21 Jul 2025 22:59:08 +0800
X-Gmail-Original-Message-ID: <CAGb2v6641hLu85FJieWGH5YJsRmxCD1U-tXgStMZtCN1u0sFBQ@mail.gmail.com>
X-Gm-Features: Ac12FXy8xxyVpMZUJXrjnYkRucYHTAN65deHIYaoxabOBlfZwoY8o6UDGEBDiMM
Message-ID: <CAGb2v6641hLu85FJieWGH5YJsRmxCD1U-tXgStMZtCN1u0sFBQ@mail.gmail.com>
Subject: Re: [PATCH v2 01/12] dt-bindings: allwinner: Add TCON_TOP_LCD clock defines
To: Ryan Walklin <ryan@testtoast.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andre Przywara <andre.przywara@arm.com>, 
	Chris Morgan <macroalpha82@gmail.com>, Hironori KIKUCHI <kikuchan98@gmail.com>, 
	Philippe Simons <simons.philippe@gmail.com>, linux-sunxi@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi.


On Sun, Jul 20, 2025 at 4:51=E2=80=AFPM Ryan Walklin <ryan@testtoast.com> w=
rote:
>
> The Allwinner H700 exposes RGB and LVDS pins as well as a HDMI
> connector. This requires additional clocks for the TCON_TOP as per the
> T507 datasheet (which shares the same die).
>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> ---
>  include/dt-bindings/clock/sun8i-tcon-top.h | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/include/dt-bindings/clock/sun8i-tcon-top.h b/include/dt-bind=
ings/clock/sun8i-tcon-top.h
> index 25164d767835..2a12d047d2e1 100644
> --- a/include/dt-bindings/clock/sun8i-tcon-top.h
> +++ b/include/dt-bindings/clock/sun8i-tcon-top.h
> @@ -7,5 +7,7 @@
>  #define CLK_TCON_TOP_TV0       0
>  #define CLK_TCON_TOP_TV1       1
>  #define CLK_TCON_TOP_DSI       2
> +#define CLK_TCON_TOP_LCD0      3
> +#define CLK_TCON_TOP_LCD1      4

I'm confused as I don't see these new ones used anywhere in the series.

ChenYu

