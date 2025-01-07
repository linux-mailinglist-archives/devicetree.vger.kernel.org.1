Return-Path: <devicetree+bounces-136208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B96A0440E
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 16:18:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A33918864D5
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 15:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A9101E1041;
	Tue,  7 Jan 2025 15:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y8Ri8Ior"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4F9986321
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 15:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736263115; cv=none; b=omiuSSui9iPVTq+iq5eZWvOKIqT1ovkUbLSa4nInu6hx6tnhjzOq4zc+Dg47xoqtT9BQCVC6FB6RF/pckLZOGFlhNVAYpG5p4ranYxiLXO60Faa09ZbsCbncH62PAenfb/yyiw0ZPiuFXr5ZLNjUBtzDah141maBvqc1MiaQUMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736263115; c=relaxed/simple;
	bh=PdMW3GYI2Bo2OUkuuYIC/9GjU5fuFWWd5LLYxnYnFuQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bmFWIwd2CSOB84o/r+A5k+FlJTD/8xRG3x0avMRdVQNCbSin2qdPxxagNbq6TbghAJmUdnN3ZeFXizxkwAADycK+iGJ+W5SkcKKmjSu5vsc2vqG8JOqAroFtP9BdgqPxRv1W6caOalgsVSwZz30/DDZcSwQwcNyx9VdngKlCd50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y8Ri8Ior; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-3022484d4e4so189077941fa.1
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 07:18:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736263110; x=1736867910; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wd/OIh9+XuLROZNqgy3qFc0I67rLSdyN4Q7q2BFezNE=;
        b=y8Ri8IorufrZx/P6HkRF/kzQbn4zCgj+Y+44oeQ/Ts36w8qRdXCLHQrkDlm70LHQNJ
         3V3MBtk772Lv4NVafEQz+rNCsQ7HJg6AFzjqUvtL18aarwpZoOm8TVSIhyxlSqicgEe5
         DlyLYkFXPrFl8J2NGPH1UJj+Xzc7i1U2KJWimvLyUsT/M2Jnr4iJUPmXHAyOIcYLW/gK
         TJejfB8LeftHPwbQNwa5xPH5Zx2Un4ZQmS1o1SpvJ6YgZnQ4ezTCj1EU3GzKwIw8ZD1f
         W8poHW/ipeZbU6ktojw/XqDopO+1a14IUuxcoq7PrHTcpbsFPkrpSQJjWg7pd3St4Ihx
         Om7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736263110; x=1736867910;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wd/OIh9+XuLROZNqgy3qFc0I67rLSdyN4Q7q2BFezNE=;
        b=acFKORY3dAxVml5/HJF0T8IW+cBpkhlVMeP+TI7rRLwzr9jR4m0qwvZzK1pVNIfzp4
         00XgqAPDA6o/4TGKGwZygKx5eTND9p6lbYHxGCuUJonMH0gMtNe5j6XiSx/S37WISl0e
         CtE6hBeQ9Z2zN5kBCuueFEYmAak1a2l+FpAijKlbbfGM6RCzve9nL4FISRt65Wth5sbv
         OYR5GHkN2EUjPbtFhXCGLizLTc/RXbvR5zRqp5ghnJFhjuLYvW1IWAm8t+jRfRopHH7k
         sIuQgM1tbt1v1NJUTZ2b2UXmocWpnOwWF/AmBzksd+4/ikIM4wQfK5snRAhWTVgZt9n5
         c4xw==
X-Forwarded-Encrypted: i=1; AJvYcCVMy6VNHdMunpy8CzF+dZEJViomf16+yXQHevcUGBSu4pzweufp5gbGCazlheO+mIvyMieZ7uvKRsPc@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/5GCFmO79IFZD6RlBpiFZSgpiV6w+m1z/XhNKjQcM+zcBqH7y
	skOtifjkPfIuSZz1oTLzStH4QYjwKkBFThO10wqNr5ZhcyyJuALH5oXEV0EG6bjKHxPPekab6P7
	34547mDYdgmQCn6C+P60E6IUY5DX3bh8ObFNlrg==
X-Gm-Gg: ASbGncsOl1CxCZa2g4k0AdaUCCPsNxu+gJ8g7usVkRAvKDZOm9R/CbMBu9/KulNzOyc
	8tRuxWwpIroafRDn8/4sO27YOfUluNe2oZB8w
X-Google-Smtp-Source: AGHT+IFfSJ/IVHhrJ2qR+8hDDFjdqdHa8DoOmF81YVHP8qeEB0D4AktjBUg7IrZZHNZ63UvWGjpkKeBdKSBO3q3o3/Q=
X-Received: by 2002:a05:6512:3b08:b0:53e:39c2:f02b with SMTP id
 2adb3069b0e04-54229562a86mr17756761e87.42.1736263109745; Tue, 07 Jan 2025
 07:18:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241226-amlogic-pinctrl-v2-0-cdae42a67b76@amlogic.com> <20241226-amlogic-pinctrl-v2-2-cdae42a67b76@amlogic.com>
In-Reply-To: <20241226-amlogic-pinctrl-v2-2-cdae42a67b76@amlogic.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 7 Jan 2025 16:18:18 +0100
Message-ID: <CACRpkdYrUDK9RsJ0VzksUNAyZ=grdQLAkMN1_BjeqQumY8bjSw@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] pinctrl: pinconf-generic: Add API for pinmux
 propertity in DTS file
To: xianwei.zhao@amlogic.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 26, 2024 at 8:57=E2=80=AFAM Xianwei Zhao via B4 Relay
<devnull+xianwei.zhao.amlogic.com@kernel.org> wrote:

> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
>
> When describing pin mux func through pinmux propertity,
> a standard API is added for support. The pinmux contains pin
> identification and mux values, which can include multiple
> pins. And groups configuration use other word. DTS such as:
>
> func-name {
>         group_alias: group-name{
>                 pinmux=3D <pin_id << 8 | mux_value)>,
>                         <pin_id << 8 | mux_value)>;
>                 bias-pull-up;
>                 drive-strength-microamp =3D <4000>;
>         };
> };
>
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>

There are some build errors, but I really like the path taken with
the utility function here!

Yours,
Linus Walleij

