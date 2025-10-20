Return-Path: <devicetree+bounces-229117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D5DBF3D3F
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 00:09:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1AED918C3CB9
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 22:09:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B01152EF662;
	Mon, 20 Oct 2025 22:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XCIWYTUS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D89542E7F11
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 22:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760998148; cv=none; b=Bscl/X0AlauNCJUlX75AqiMlyb/uGqDxGJYmp9zwPqKmaQoOD7k55+wqNJTOootwmawqcFiqEdjrZpvVoxTR6Q7537i9hdVsjvwUw+0bisCFTtKsjYSOaEAJDQYx2t8R+15bMBbIrGx6JtFJwu5mldcMdSTQ7xWt6ovK4vuA8hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760998148; c=relaxed/simple;
	bh=9fY7BHIO6l8fZDHvCr6Qw6TTiKtPAE9sfEY9svRB3Mk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RcbOqQYB9G93SbPG8wDTTzZzsPKgjgcju9AFLTz8YHOYDLN2SfYHyHWqxhGau8hycs8RPTBmNhgwZQNCnrI40PD35DTVYR5CILTNHpiMddU0ZypW7y+4ClTys4bk7VGbZNSM9WZ1GnOBH90vXobstzvz9yQwojzsgDeS8lMlkM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XCIWYTUS; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-373a1ab2081so52808051fa.3
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 15:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760998145; x=1761602945; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jou7wl1+eFLqh56mhBKzbuquNRGf4+Mstk8GHncGjYM=;
        b=XCIWYTUSzm1/OCpBwSBDmX0mcKFNX4QqsxqG9lDNX8iDuUNN+hIuMrFZSZP/75MAh3
         opDWscjuKde+7NOfDBmRucQRbJqWB3CNCPZy3t4D6I7EUElis/0WoUOhHk2pWMq+2SPi
         RAhypgPDjyJRxfkyaQ1/99/f6bsduShg4tGIS43IzkTVkD9Cx+eOJ3JVaKLKLocx5ixK
         WEYIregCr3tVZMJ+W1OpMy0SvDfz+CrNYlukGItxD7WS1INtGaftlSCC5BllbK23tVr9
         aMl6dy8Slr2ttvpfqSd2M7olAezvGhTzYbLTw2vmbXLOzlvUIMzz1K0Ye1JxRbWFXCGf
         Jvkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760998145; x=1761602945;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jou7wl1+eFLqh56mhBKzbuquNRGf4+Mstk8GHncGjYM=;
        b=CqsUqr1O+BevsVyq0j+FdLmFZ9UUSyfZcD9NlbMgGbDqxZEr4DpVUoJPBO9+9xcxk4
         dMD35tt1RQbiw+VtcN0CmmBczV457ApHfh9PoKA42C51MZQw9gba8vxq6mR5TaDIwEcJ
         19I1/Rw6xn+pMvbr4pMg8SRqwuBHv0BsHd+3U7U9V+KBlY1nzGK4g8aDMPzgCy07Kmu5
         QDxpYWp1V2oXnX4MvQVdTNCujFzmqaYQYQRpc58F2gWS5Don/7Y2v4VpMW6Tte4Sc8Dl
         QH3I5Jq/Rt6DYp1AP1z5wVn+5t/vS2tc7SOWTTN9t1LxrS3JW55vaScuAEMjHeb0rXoW
         zoHQ==
X-Forwarded-Encrypted: i=1; AJvYcCX6TIILAaIhfO9wkDr7FKwNMvTYhFDhZOqwmpSh+L/03jxpVaLgUtKA3vZWccWIidV7WEN9IJa2XtsM@vger.kernel.org
X-Gm-Message-State: AOJu0YwiNPX9QO0VTzekWsob21oJAWLtMJdokujwQaNhtmFDIOqh/0bc
	AAdPUEjEZcijQFhuw9rE4BDccKJkHawnCKgxRzmi1Hs6yiCyXGP02zEalfxzlP2++Oj3I4lYoO/
	WjPjY6Dr/cEuocd4ovRxrjMxGrT2FXlyOimadHA59bw==
X-Gm-Gg: ASbGncvjcrGcJZKS/i5Or3/UzccfYdnCY8jx0LUFwUcc5qmtGydejYByLWEU6AMX0f5
	NKo2KsxI+V+8AIZi1CbBSj2m9zqTC3/Xm2t3mx4xtFb2H9k+En8u0EnqTghrZPm4453urt1jaLQ
	/REjxh31DAhEUikvODEW1MBVMHhHRy8VDef14lMEJTAEF1EAy7iM6Kq7alKhaPoLVtDFHO90YVc
	1n0stvsWX7tpTgGQ/Gt81cd5wVmB0QzC2a3Ime9DEwoKsQDeoNlcBaRWfCZhJqen/IR6sk=
X-Google-Smtp-Source: AGHT+IHndeIzowFKyGV77xJrwW3PbYRom9TRTnbQmCDghJkjbT3tIKvOTzTzPAFp9D2embhKwkVO+r8Cc1SJcrX3RR4=
X-Received: by 2002:a2e:a9a8:0:b0:36a:cdb0:c1f3 with SMTP id
 38308e7fff4ca-37797a143b5mr45120621fa.29.1760998144941; Mon, 20 Oct 2025
 15:09:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014140451.1009969-1-antonio.borneo@foss.st.com>
 <20251014140451.1009969-10-antonio.borneo@foss.st.com> <20251014-affection-voltage-8b1764273a06@spud>
 <b4eca95eaa0e6f27fc07479d5eab2131d20eb270.camel@foss.st.com>
 <20251015-headstand-impulse-95aa736e7633@spud> <0826a055f6b2e3e6b50a5961e60d1b57d1d596c6.camel@foss.st.com>
In-Reply-To: <0826a055f6b2e3e6b50a5961e60d1b57d1d596c6.camel@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 21 Oct 2025 00:08:53 +0200
X-Gm-Features: AS18NWB0sT7rk733pb0JBmXxWZ3rsESep7Jo9zTjJKG7duLHdqwxNHX29WRzGYA
Message-ID: <CACRpkdbeaiNGfOFfVfDNZ=u=4yhCykcdSdHUv-td_DVyr3aWaQ@mail.gmail.com>
Subject: Re: [PATCH v3 09/10] dt-bindings: pinctrl: stm32: Support I/O
 synchronization parameters
To: Antonio Borneo <antonio.borneo@foss.st.com>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, 
	Christophe Roullier <christophe.roullier@foss.st.com>, 
	Fabien Dessenne <fabien.dessenne@foss.st.com>, Valentin Caron <valentin.caron@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 20, 2025 at 5:09=E2=80=AFPM Antonio Borneo
<antonio.borneo@foss.st.com> wrote:

> pinconf-generic only accepts positive numeric values for
> both generic and custom properties in struct pinconf_generic_params.

Do you need it to support negative values?
Patches welcome!

> Plus, I haven't found any existing driver that mixes pinconf-generic with
> custom string values.

Maybe I misunderstand, but pinconf_generic_parse_dt_config()
looks at  pctldev->desc->custom_params and
pctldev->desc->num_custom_params found in
struct pinctrl_desc in
include/linux/pinctrl/pinctrl.h

$ git grep custom_params drivers/pinctrl/
gives you a list of all drivers using this.

Yours,
Linus Walleij

