Return-Path: <devicetree+bounces-54527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A863E8916D5
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 11:29:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 36DB8B2370A
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 10:29:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85D8054662;
	Fri, 29 Mar 2024 10:29:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="KfaKkFVA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E2153E18
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 10:29:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711708147; cv=none; b=j7LRGV2woBQ3zNvpXlyHvcOfrpXTKQ31KRwOFEYo1Ic9P4cebtVY6kVsXPlfuJRpEIApoqUnWnpjUeSrycxK87t/UackLIrZDH57nlKiXi1E+gxhsNyxuVOyxtG1EOp0G+6KMbVRFONSzNaNP/3V/d8mbjQLcrpVpA79oIGLCHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711708147; c=relaxed/simple;
	bh=kPdaKnufaKl3EzmitCsPOuEmgPAhLKf3vPPeZrNVIh0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=e8F8Z9vzAI+KW/naTbvOcMH0y9iz4wL1EIj0myTcz5Qgi+4j4ISKiyRbUWXwq6GFc9MU8ZsEcJqIDphowrnWlpdRIs5LRxSdcEQGosDJMdpNYuFnPJPjt49ZnYTuIDeJh2HrQ/y4l1Ly6i+QrNnp2184sVAQIH2xlNayNDY4iwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=KfaKkFVA; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-515b3077d09so1989499e87.1
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 03:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1711708144; x=1712312944; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kPdaKnufaKl3EzmitCsPOuEmgPAhLKf3vPPeZrNVIh0=;
        b=KfaKkFVAQ17OVzHQQTZl+cqrcT0WVkEktTMUbQuKEPJheer+INGT00GzDXacG/mvfh
         kXB/GC+Ik9PnY5CjRJ+6bui9TLXbyJds6fU6YlIhSaDQUE6K/aOt//igYRvO62WK3/Ul
         WKYkQv7XorhXGWmqgK2dVncvSM5Jd7maj4BaB1XXYHdx7Vw42KzVXpPXFVHXGAyM61eW
         EBRwRq/rMHBhclWstOqM4hLhuXysUeH3zdNcSC9OW1d7xuLeATiMncNJdq9zaEXQ5ZX9
         AnliJNdhwXdf/qIV8w6hsnyR2Tx57GYzrDoW+CJAQ4UAcgoCGC1giSjJnrXLVTLHtEgz
         u5Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711708144; x=1712312944;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kPdaKnufaKl3EzmitCsPOuEmgPAhLKf3vPPeZrNVIh0=;
        b=fBu4FovnxHZEqab/O4Ho8R1IYDk2v4F48U3IPLx6/ttw8VVpaOIkotbeIWwXRn7WMI
         Uxj47c5PDuxuAHUIdLoS8D8GnuwZtJX9D5v/eJC52Oe4pnSct7+Anje7BJAk+6WUMisz
         v3bnJa8/9Y1x7T1ZJJXJ+xt5S0dEteWPdRmBm6H6yxtXQU1Sr0bYKHq6UVtpPa87fELU
         MCaf63Eyj8UCD7pwG790zT+TNc6rc4QBFHkvHhmsJAxPN76AF1sIvGyxdQvbl1nXN02A
         Rcjzlr7hd/Gmw5Vy7cJp2PRYSp86d2JG9p0K6g7Vc8L2dxIOrLjKBOaTHDcxmn1xasrk
         vrWA==
X-Forwarded-Encrypted: i=1; AJvYcCV0TLwicj18Fy+Ng8dTZ7261bcfUsYh9a4uM0BAsE7w6Cl+Y1NMhepgvdn9xj4QT4kG1xVmPyQB8QAG1lK9+AuWadyl6mbS6B3RuQ==
X-Gm-Message-State: AOJu0Yzm9rLH9ozbD/HsUXR4fAc9CtVTCo174E3KynSqHn6DPKymhSG+
	YMIP7+rZ+V4t73bmbyV4gvgZVQNr5t7vksXwmoV0Np8H2QB2Y389GvS38lWWMUQxHLqBC/4Thia
	yM/fVtyoT0vycr4XjrSFIGcGz7N62F23nNq+p/g==
X-Google-Smtp-Source: AGHT+IEe5xiO3f97aV+2KKvqE9B+dEnjJrnzQ+iljmH7D+HLPtwoTOdk4rILJugOJr1ig8KX/U1WYe8asoEIrRpWWb4=
X-Received: by 2002:a19:e004:0:b0:515:d1c1:c1f8 with SMTP id
 x4-20020a19e004000000b00515d1c1c1f8mr762592lfg.64.1711708144167; Fri, 29 Mar
 2024 03:29:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240327-parkway-dodgy-f0fe1fa20892@spud> <20240327-procurer-rascal-33bca7d5d14b@spud>
In-Reply-To: <20240327-procurer-rascal-33bca7d5d14b@spud>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 29 Mar 2024 11:28:53 +0100
Message-ID: <CAMRc=McSRZUfsUEQcmOs+xUnCKiTX+kEqtXmmXe71Jbh7nzsvw@mail.gmail.com>
Subject: Re: [PATCH v1 2/5] dt-bindings: gpio: mpfs: add coreGPIO support
To: Conor Dooley <conor@kernel.org>
Cc: linux-riscv@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>, 
	Daire McNamara <daire.mcnamara@microchip.com>, Jamie Gibbons <jamie.gibbons@microchip.com>, 
	Valentina Fernandez <valentina.fernandezalanis@microchip.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 27, 2024 at 1:25=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> From: Jamie Gibbons <jamie.gibbons@microchip.com>
>
> The GPIO controllers on PolarFire SoC were based on the "soft" IP
> CoreGPIO, but the inp/outp registers are at different offsets. Add
> compatible to allow for support of both sets of offsets. The soft
> core will not always have interrupts wired up, so only enforce them for
> the "hard" core on PolarFire SoC.
>
> Signed-off-by: Jamie Gibbons <jamie.gibbons@microchip.com>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---

Applied, thanks!

Bart

