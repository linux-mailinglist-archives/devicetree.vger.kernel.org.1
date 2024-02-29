Return-Path: <devicetree+bounces-47165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E3586C572
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:36:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7A5DCB24777
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:36:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8045605C6;
	Thu, 29 Feb 2024 09:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TnoDzhTP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F59C5F869
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709199381; cv=none; b=LXvA5LISCzYLdSWwhCOvCvvJyi6AH8PMDVkuADpKxHejYUx4tK9TWeA8OtABvHUdlBKdz/3GyKnpFEKILB/59g+6Wv6HXpVek5swR+WLUG2q0QSBlU+q/7BZHCtVHp6p5GL2ysSp84ikX07GmnGe6MoPs2Kr793k4g9hGQSz+pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709199381; c=relaxed/simple;
	bh=NIqCg2Lig+ehBNYGyTvhpjqd6T9MIQgC1nLdSgKx46A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gIc9LdDtjshsLxBX4zjSj+YuTbp14Tw/VmWMetYBQOx28Eta0s45EoVf8RO+ylw09Tl3lLBxoEOClAAvdTfRVqi9/x/WU6yoUDLUiSzDfAU6DN0biPrqeQ590brCY719GZoM/PewK++/cIXRCQllePxg+eEFE1jgg6LM0pxd4y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TnoDzhTP; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dc238cb1b17so777004276.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:36:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709199378; x=1709804178; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NIqCg2Lig+ehBNYGyTvhpjqd6T9MIQgC1nLdSgKx46A=;
        b=TnoDzhTPL1NMEZWMb9nWQeHeTZInkBgPurxPFKbH38pZIo44mqQN+t6kAy2aVwxtwX
         ygc0IC1VlxoEdbV1zVbiW/Tuk7tUaI6FR9L5hYq/cjpqoq+s0alxRTDL+tQiVmkph/5r
         jhsdwpAY/PeTtiDYGgLJdsQI1dP6yeSs7H0XyjbgQaL6A8CxF7xfgAxQNO+n+ljguT6W
         AuAx1TfyDCFT0fci2mNf20G0doXt1oPguN4lNCxkQCR/gHTogrdQT1qVFbJ2z5FHfDJS
         bLetwnTif5DKGj8evqSdsQ45zXUKFLfL3CnmaKJAUzYNPKslEM2Rj2+AtuHQAdMg0gOi
         fzJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709199378; x=1709804178;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NIqCg2Lig+ehBNYGyTvhpjqd6T9MIQgC1nLdSgKx46A=;
        b=VpLv8xQ7qd5U8i5dSAthgfqFx7I0k5wQEyYEHkajfLXdpB/FkcTM2zZUc19wtsbOnW
         9WJNMUJwJnfkOZhsFGZ9hktzbqAgirfW1MeKlLGnwepfNuhGyQpS+XB0ej3GO8qrx6rm
         2IkMnjjAytdSU170L91dL/Zj8YUEVFG8KP0voqPrgmakUywt7p1Z27QeBkhergCBedDZ
         4g1aVL8/+1uwTCOrvC5EFY+phwSG36GcC5QxrhitTK591O+8JRAeQLtlbhbyQfpu6cY1
         Zr5+qvE9RJ2gpePPn9D5fNiZfmEn1HvEMT/8id88EKHhxAiAw6z1bgqPuBdbprFiy731
         pBSA==
X-Forwarded-Encrypted: i=1; AJvYcCU4d5VNrJ+1pzco9SieHzIQ1LE0TVK11zjV/8gwLbL8pzrM2GKJ+f17Jdd+M+oEECBXCHG+z82NXAv+4izzAN/56LQnQy1lIbqBPg==
X-Gm-Message-State: AOJu0Yy6jhOZ1y5CJ8oJCB5Zi/HgSupwdR0YTGc0DArQ7AQhO2MRCoy1
	HYOcrUCunbHJNan0sIfSXJzu0RtLritH9dY++XI/yIwTcq+05+tQda26OqAsrErMUXSJAxbvpnX
	LUZTpgJvggEbcsljVuC6Tfh+v35XzY3S0z9i5Eg==
X-Google-Smtp-Source: AGHT+IGmwaMXnIIeUIA6Bhmf0jz+VJ67d+9hoLzM+6q8PV0Woj1UIg0FkmlH8MD2QBtjAqYNuO4XZHGyfTuC4wsmq/c=
X-Received: by 2002:a25:aa67:0:b0:dcc:4a0a:d0ba with SMTP id
 s94-20020a25aa67000000b00dcc4a0ad0bamr1554828ybi.63.1709199378444; Thu, 29
 Feb 2024 01:36:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-22-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-22-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:36:07 +0100
Message-ID: <CACRpkdZ01WqbRDA2B-8cM98RkPtcRbpf06oF2xHhYdfHqPhACQ@mail.gmail.com>
Subject: Re: [PATCH v2 22/30] gpio: nomadik: support shared GPIO IRQs
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 28, 2024 at 12:28=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@boot=
lin.com> wrote:

> Support a single IRQs used by multiple GPIO banks. Change the IRQ
> handler type from a chained handler (as used by gpiolib
> for ->parent_handler) to a threaded IRQ.
>
> Use the generic_handle_domain_irq_safe() helper. The non-safe version
> must be called in a no-IRQ context.
>
> The Mobileye EyeQ5 platform uses this GPIO controller and share an IRQ
> for its two banks.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Patch applied!

Yours,
Linus Walleij

