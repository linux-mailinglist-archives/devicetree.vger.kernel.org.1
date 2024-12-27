Return-Path: <devicetree+bounces-134287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB349FD20F
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 09:39:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 57E6F7A15C7
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 08:39:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C766E154426;
	Fri, 27 Dec 2024 08:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J+0zEQxU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E728380027
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735288770; cv=none; b=aPhELScSRTeTA+wUdHsRPSFnzfl7XxRKgRNBvoQOGBNXINdmZWOYe1OxDnc38xkQzhZ0WfUe1yrYHNofz+UqdRduE7d9AzYJPQgnKWPtqtZce/fs5bvQi/7NZMSzur/k367ZgE2UMirmvlp+CD57GhBJqEpYjWPSaK5HNgykr6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735288770; c=relaxed/simple;
	bh=A15i3klOsyYjYgNtuvTUq0Wifo3iCtb3EBomnXvT858=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=h7+yWSoHp4JfT61cXuYZZirQRmV8BLdJ1HwW/1bX41Cm4CIIg7MyNGXF67oCwJwn/Mp0PCblR7qlw09ixojOe80q490AOLsk1HQUymBX4Mii9vyMZYRncLc5A5ubhd2Uaz4lRKYWV+WzhYESuu2xq1wMoue1oJh1yE8He6Q4JMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J+0zEQxU; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-30229d5b1caso79837461fa.2
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 00:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735288767; x=1735893567; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A15i3klOsyYjYgNtuvTUq0Wifo3iCtb3EBomnXvT858=;
        b=J+0zEQxU4ldVFWUh36D7Q0I1x7QVlf/IdmJ+nreJEv9kWUB4KqaJoMIcpn+AZI3sqQ
         KuYhM+ZZ9fIaL1IEI/h/SLCyfuQ84yCYI5EgcXK92l6prODmgwlP0LCliH7zWsMdQtNE
         dZS9e/4BRNjrVVuqpoG4DDgsSBqAA90qK7XZ9v9R8vg8eOVGZC8BwhngV1fmuctYQV8y
         PR9QKNjJLpAGt7Jwpp2xKs2mg8lmQuo0YzK6LbqjGcE2Jo8zo3EawjkP2lbOaLo998SV
         SN5LWpJ9MfsC9DoANaZLFxRqW2SGOMEEIYDjD4LAHgrGVVMtEkrlnQAe2iD1eBFKX3z3
         En5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735288767; x=1735893567;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A15i3klOsyYjYgNtuvTUq0Wifo3iCtb3EBomnXvT858=;
        b=WnHaRj3VL4osp1bjbCFV3C129gHO4F6e9OCr1cA82xWrCeStPt9fpwaT8mwa5PXq+q
         0u13AV9E6YKWRkEORT9kCalY/B7RD9sJXmKJMAbbigOrQCMK57P2Al6ADUzrFd/oIZka
         RBmLtgMTqxwSynUNE/VnkBqOFUwV0f2SFH9z5mTFwW6r7VaAsXI9oec/oV5lIVFN/i/X
         H6JRMkORT4ynt6KRc2vdQkmLvMCgW5oUYnFMjqPbPafBvc9HZkupOQ5tjRbUywdDjqNC
         e72mqcADD1CjJDNCf6Hcy5LlTZoU37FeRFCJXXXBHX8lS5mcWPbmWd9zHzG1FVaF4SPH
         6mDw==
X-Forwarded-Encrypted: i=1; AJvYcCVdcBlv5WQW1ckaH/d1nwZ4g6c10dQkOjKhEHYE/qnV3f+QqZvKz2ZVVNDq6hIUoj05ST8748cCJtdt@vger.kernel.org
X-Gm-Message-State: AOJu0Yxi0nwXI1wXNzB7x6yPEgKShFjSCt2vTmQlO1qcR6PJBZkU3yXV
	iI4UyHx9fFgEPC3cWQ9on5h9EkiRyrQBcJXbUkGD6idheEgxwRm3Fy+9zZqRMUvGDN9MGoB/oKu
	WhID1qyvbDBSnPAERSbwhH/ZFJZJfqHSLme3bdw==
X-Gm-Gg: ASbGncsqYUKUBH4rZz2jhvTOrEYQbUaXPkG9z42Tupc7rCDolhLhewUkCnBmnr50OTJ
	rlLF9Hqr0Vo9vIZCDee66EWNIYzwp++NFY0NR
X-Google-Smtp-Source: AGHT+IEFvP4aHqvLT/ZwzhAuo6N6XMHoelpJz70iyOhnLcdqXcV9mpxAoGDxsITkdEJvPswzQjqrJ90uUfwUoxDuWoc=
X-Received: by 2002:a05:6512:3ca8:b0:542:29e5:7322 with SMTP id
 2adb3069b0e04-54229e573d9mr6287692e87.2.1735288767102; Fri, 27 Dec 2024
 00:39:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241224-gpio74-v2-0-bbcf14183191@posteo.net> <20241224-gpio74-v2-3-bbcf14183191@posteo.net>
In-Reply-To: <20241224-gpio74-v2-3-bbcf14183191@posteo.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 27 Dec 2024 09:39:16 +0100
Message-ID: <CACRpkdZwN0reH7K0e0wN9d30DJkyHVoBAaG9tk-+MELjOHeh_w@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: gpio: fairchild,74hc595: Document
 chip select vs. latch clock
To: j.ne@posteo.net
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 24, 2024 at 9:02=E2=80=AFAM J. Neusch=C3=A4fer via B4 Relay
<devnull+j.ne.posteo.net@kernel.org> wrote:

> From: "J. Neusch=C3=A4fer" <j.ne@posteo.net>
>
> From looking at the data sheets, it is not obvious that CS# and latch
> clock can be treated at the same, but doing so works fine and saves the
> hassle of (1) trying to specify a SPI device without CS, and (2) adding
> another property to drive the latch clock[1].
>
> [1]: https://lore.kernel.org/lkml/20241213-gpio74-v1-2-fa2c089caf41@poste=
o.net/
>
> Signed-off-by: J. Neusch=C3=A4fer <j.ne@posteo.net>

Fair enough!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

