Return-Path: <devicetree+bounces-133075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C0F9F9298
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:54:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DCE5C189464C
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 12:54:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8AA7215707;
	Fri, 20 Dec 2024 12:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NmYnYINp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF40F2156F3
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734699235; cv=none; b=hYUjgtBAqvnlY1I21HH8NFgFWDJKDacO6E2DRCCMjy0tDgwPK6kF5FIfgzVKGW8l4xfzmDjar+v+ECRjT2W0KHV8YiBToYH/+3+lP7mhQHIc/9nEVSKM/Zi74G//sPJyJPhnSINZP4/BBURYLDEP6hx30905C50w1jr31W37qUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734699235; c=relaxed/simple;
	bh=2ijew9uOxRboV6Jm25/29TJF8PLsjBkkwmLMTxyZQXw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NhpIuKgFcbxKY4zrONSZtcqqwj10xgkm983C14crnfUoDQ8T4E8qM8fr5SQ4e3EhepYwUOcvc2PJVStf/P42fJSR4/cG9WPRlBt9oil1gu3ha1y7jSRlncw+4jZ7yTVCsAAUIEfjEVTWDy++hUfF3INTUhMatWDQChn4/8RxmK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NmYnYINp; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-54026562221so1802217e87.1
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 04:53:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734699232; x=1735304032; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2ijew9uOxRboV6Jm25/29TJF8PLsjBkkwmLMTxyZQXw=;
        b=NmYnYINpD8+HGNtgWcMAgPUW8OnIiInTCDMaPi+Ekpy76lK9QJIR6FC7KNoLK+Cjl0
         YGxPnlNE7lzgGFaK6QwqUdrOj5JiZ7yF2hYqwYUSJfgSA/cWztLllE/Khn+gM8qxyEM1
         cY8CJTiPrdK11/AzuN0u5ERvn/eIxzI099FkDpiQ3Xom1JDsvYOPPObXDxi906ZL/XcJ
         wAs3kTZT0L/V6SPi146uV+VYirx8TcipsPVKvXbk4OsIuaF5jblm7Ep51HScugvBGuvL
         XJk78dJyLcantvu3aWY/D0/+/f9FD01TQla6cw/3OfSUK89VvYRv9fmb1l5nRzAC36HH
         yhzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734699232; x=1735304032;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2ijew9uOxRboV6Jm25/29TJF8PLsjBkkwmLMTxyZQXw=;
        b=qgJIi/h96033vXU3xps/KOXL9X7NxtpMwyCX7WtoxtdmPlUfR42u5NzDcAMHyJ5cB+
         nReXAd356zO4FbqZ7qo8oJN2VrvpDAJte6JDARw/QSCOK5u5rJBoA2GpyOYOVrh0IDnh
         5TtJEt+GWzsMOxB0jnwtA5d0pBniVPvpYBxUpJAQ7sglWAhDCX0FfJnAIegt/WEoGjZA
         xR14MZbFUMVqROMQ6VWTweY7ddkkY13wtXIMAyPcjnCo8a/Z13sJyLV6UuR+NCtrkDx6
         +5/fNxUGER1PTvp9QaVO6qp5cNM6S/zgnsaNWm5J9yYZvOYguSNwL3Fxkdrg7+p9Jkre
         mlCA==
X-Forwarded-Encrypted: i=1; AJvYcCW7dGdYOjgRY+uT/9i4Eq/oC14yAyRyfHUsx2rOeYtOTJrUlJmn/6kVg0W0niY3773QgRPb8STn3oKQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8UI0KWsyYGZz1qTkuqMl0Q6RS9mEuuRMLHGJX8OBWntewNtXG
	2n3T5X7/Y8PNTvzilotUj115e3ge7NSstn526P6r4h+XvC6K4jJlD/iFgn0g5ABHy6QfZx3hhXe
	1DfyRBDgl7UEcZJpNbjEsn37uSAJSS6ilXBwx+Q==
X-Gm-Gg: ASbGnctfhmHTffepLufzaqybksTOjM8yTE3PnmO2ZVY4DXYC4jrDMpdDKkUkazmdZn+
	hBqHWEIzMIV6FSSQEO6EgPCuTRciuwRoXXzXziQ==
X-Google-Smtp-Source: AGHT+IEZWMRifc4FR4axtdKW0fCIhp1hzST627Qn6Trhpgo8gXhWYqagPER6U85jnTIy5FPQCYO/byX5x52wVAVBul4=
X-Received: by 2002:a05:6512:3a90:b0:542:249c:2156 with SMTP id
 2adb3069b0e04-54229530077mr854248e87.15.1734699231985; Fri, 20 Dec 2024
 04:53:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241213-gpio74-v1-0-fa2c089caf41@posteo.net> <20241213-gpio74-v1-1-fa2c089caf41@posteo.net>
In-Reply-To: <20241213-gpio74-v1-1-fa2c089caf41@posteo.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 20 Dec 2024 13:53:41 +0100
Message-ID: <CACRpkdZVxVxYReHpze7ZZmsdXbMr0s0Rhjc1Ry6CkQpB62n6bg@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: gpio: fairchild,74hc595: Add On Semi
 MC74HC595A compat
To: j.ne@posteo.net
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 13, 2024 at 6:32=E2=80=AFPM J. Neusch=C3=A4fer via B4 Relay
<devnull+j.ne.posteo.net@kernel.org> wrote:

> From: "J. Neusch=C3=A4fer" <j.ne@posteo.net>
>
> The On Semi MC74HC595A/MC74HCT595A is another part that is compatible wit=
h
> the Fairchild MM74HC595. This patch adds it to the DT binding.
>
> Signed-off-by: J. Neusch=C3=A4fer <j.ne@posteo.net>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

