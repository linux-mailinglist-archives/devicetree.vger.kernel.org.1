Return-Path: <devicetree+bounces-169817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 105C9A98517
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 11:14:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 67B2F5A11D3
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 09:12:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32707265609;
	Wed, 23 Apr 2025 09:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Pl9VrsOZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31716242D65
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745399399; cv=none; b=PL7R9VZ6aGEKGeJjRo+kwvH/EvpVaw5gNE9wzmXt7LtLXXE06RccsnHbRYMyS7wTGasbxnbdlkfCS2RibHh/pJlsZ/0jt/tzlfMiOn/ELXaI4jkhHQLuckDO6tE7dn9tCtKJYC3euU/JEWuBB8ZYLwcYEIjqHwCvG+meJ7rXdso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745399399; c=relaxed/simple;
	bh=D9zJsGGNBKvUtfUTrtoCvCv7NgLrgJG8N+UC8V4uJaY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lNSbIM48zP/Rk7M0qpdI70JHgMD3JJRJl/VpDuHWuFtzRVDNdOaXbEOTndJuhw4rOX8MNGK+KJuIJcAYq0lWiFpTvKx4TY2Rzr8KxSzM9xoi82l4YnVW4oWGWdLoJIT7KljZjpBZrUj3CMzdGLtMPYeJgOk9sOiF2Pb6JPBKT8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Pl9VrsOZ; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-54b1095625dso7146823e87.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 02:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745399394; x=1746004194; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WARUA/SEaM7gTnI/pqNkLOZLeUBM+XHsQtQUHb5intU=;
        b=Pl9VrsOZekY5NXHTUQ3uqtaasg2AmAMWacA56aj4pmYr1Prs/8o1NTQfEBKQSR3MTG
         x33yusnv4hNxBJjwGUA/R8qN4X6htQTjOP6XB+ebq+rSVft1iH/An3bquuLaoLAPv2XI
         SG7p4ZNnMGBVeTrFpsup2WZD/0nMmD+Su9D0petDlET0G7G4UvsXDyXxoasXiuYtQUDm
         OOjs1fsCxFnkFHjbNDEs5GmMyB8QxCQKAoWlb95KDGXZ1y5xn2uqppepECzBvM4qdYgt
         JX9JW6v6ZPbRlJNs2uj0BJN2KMyTAlvNBolSh4MbtPJx2w9WDaBPKlEAn8xjICZMLmsw
         5HLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745399394; x=1746004194;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WARUA/SEaM7gTnI/pqNkLOZLeUBM+XHsQtQUHb5intU=;
        b=iSEy/XAJA7s8dQ8jEQRsii40Bzayjrnnjl5DLzF07t3QLUQUx6bW2GL9Qe8LB0giec
         8REpUavabnnK/l+eR8KGMaqK5QhDgzY5GZ6caE+Nxi/rHuo8l0HCaoRAvXQuBPNbLlqo
         IQxjmF1ONZetF6PFe/La97HiTEYFwgK0BpP6B1epZjVJ5ZdxMoFbU62jLYboXKXCV3oi
         ezbBnuUBqCbfvAWbFKr0qVlXYkBUWWTjJON0qgsPvyua2sUrkP21GP84IlbU7TteDejb
         APOBy5dTX/OeXNEuV4KDZDaiwRFBiM1xDgZO1KILDvY0ezhaAINN7PpEiq5M8ZUKhCyM
         1Jwg==
X-Forwarded-Encrypted: i=1; AJvYcCWKPVeAC2xVh7vcQ9/N1jhArX0cBTJHxT17Wlby2sA0EgfvN93AC8V3K9aFFxd+/MLdLHHO6a3GhoKN@vger.kernel.org
X-Gm-Message-State: AOJu0YyGQCgCKMLG8em/1WTjYCmEVJOPaDbr8DQp6PGtOSYPjpEo4vCP
	e2nJPrjvuUBAYE/oPe/+Wq/Te55UX95/wvKZt4QsG5Gq79qiD6dIkFJUyKNfA7L7RqkEIE5wTXQ
	u8myBhf9PkvTlZgNppyhVeFtDkmuDxZIKf37P/Q==
X-Gm-Gg: ASbGncubpWsmsxuZOTzkmjnFxUDE9UMDw8TfeV2J3e9RKFiJyR+ZiP4rPYt6flgtQbZ
	WIUGA6W4Rw5l4gr81OrIIqp14fh5pQ0bT+zEpgspFuUd8dbzuzHlpct/XWwa3wwsXpi/AuBx13L
	u2bJzNcda+bjOAxIXBTkrJqvoB2rKLmb/L
X-Google-Smtp-Source: AGHT+IGGSWx/qXe0KQyY/MREsZlIV6fNVYZhSzegs3sVGQ2Vz/xafsGBBtwjdgGYFha2pmBwx3eFZ0eFO4ELEa/acV4=
X-Received: by 2002:a05:6512:68d:b0:549:7394:2ce5 with SMTP id
 2adb3069b0e04-54d6e663182mr5664661e87.41.1745399393941; Wed, 23 Apr 2025
 02:09:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250422162250.436169-1-uwu@icenowy.me> <20250422162250.436169-2-uwu@icenowy.me>
In-Reply-To: <20250422162250.436169-2-uwu@icenowy.me>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 23 Apr 2025 11:09:42 +0200
X-Gm-Features: ATxdqUGJI5EWHbFKNL1piYfBX7w6VEjwsS65rRDUL2ZIvKqVpjd39nGuBX00R-E
Message-ID: <CACRpkdbGwPyQgVL18iMvUTAvh4XTjo6g3mGT4e_b2aNAjr2obg@mail.gmail.com>
Subject: Re: [RFC PATCH 1/3] dt-bindings: pinctrl: jh7110-sys: add force inputs
To: Icenowy Zheng <uwu@icenowy.me>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Jianlong Huang <jianlong.huang@starfivetech.com>, 
	Hal Feng <hal.feng@starfivetech.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Icenowy,

thanks for your patch!

On Tue, Apr 22, 2025 at 6:23=E2=80=AFPM Icenowy Zheng <uwu@icenowy.me> wrot=
e:

> +  starfive,force-low-inputs:
> +    description:
> +      The list of input signals forced to be low inside the SoC itself.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array

I don't see why you need this hack.

Use the existing per-pin output-low property (see
Documentation/devicetree/bindings/pinctrl/pincfg-node.yaml).

> +  starfive,force-high-inputs:
> +    description:
> +      The list of input signals forced to be high inside the SoC itself.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array

Use the existing output-high property.

Now I *know* these two properties are per-pin. That is more talkative
but way easier for users to read.

Then use pincontrol hogs to make sure these configs are set up
at probe.

Yours,
Linus Walleij

