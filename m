Return-Path: <devicetree+bounces-147838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0F0A398AF
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 11:24:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F2EE63A5AAC
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 10:18:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EC3B23237A;
	Tue, 18 Feb 2025 10:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BV0bWNze"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95BC022FAE1
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 10:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739873894; cv=none; b=ttDlwxV05lc+zaqTGNqG4QBHO8gXbglK2rv31psPWnbzXftPjdnLN8eEqsNJW9vWDpR4ehx9R9hc0gx2pQy4XID3I9qRYbPE2oneSJ2mxiJ5tzKqj2p1HAXrDnjMbLKUbNeD8lc/dwBSrI7qCZrnMZXFLYIzrnN9RH3M9RY0Jqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739873894; c=relaxed/simple;
	bh=a3zZKi7KyqePBjsPprnaXEopvwTH/GsVqiLJf8W3hiY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eq9PJ1eicNMF8rn6+cGbMlmSp2YYOErhlVu/diabvDZZo4vMHgPAi4q4Z/jltUIVHOF9HT1B8xvK0tVQ8dWCzoNTq9s69dDryUwhB78gL9TjQyBf053x7t1sWy4LOlzN09ncpx1NkhzfHA6SN/MDv48SYb3KM+0at8KuvTzgecc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BV0bWNze; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-30797730cbdso54939471fa.3
        for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 02:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739873891; x=1740478691; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a3zZKi7KyqePBjsPprnaXEopvwTH/GsVqiLJf8W3hiY=;
        b=BV0bWNze84QwlXxejkQUwvjWxPobfaaWYIqiEPxO5iV3s8GZTiqwhQOSiRvdo38Jgt
         QHtVlCEvhzhQ7velO4otHR2RasmiHzk05aX1ArsMm4kcSsJKp6KUagXPQTJV6y80KRpR
         DBITmof8Z8gyVJ6URiuzfaTepBniMBKoyw9wqPBjHAFNxB3uWQ2IT9xzXJQTGw5Iuvkc
         TDU6fIoCtYGsDX6AlwVw6tZ57ETo3mlKco1OD3lM8w3/uXXmhgsJZpunM0BP+aEATZeY
         nkJry6kokC8iScYihmNGpYyYlXGZjm9aBaNf1HqRUzCAed8tbd32enlM4ywCgkHP02Ng
         i+Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739873891; x=1740478691;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a3zZKi7KyqePBjsPprnaXEopvwTH/GsVqiLJf8W3hiY=;
        b=vBjMcjSxZ9A59EL4094lRku7awVr1y5VFCLw7HRL+Y6Z5NRiDmKXj09Gm2/UgJ8qzO
         OmIpoQ2N9I05BFuTgKMk1SWXXsJYf9r8avw7zFxK8lsjYkl5Ix8uyqEVoJ/qz5Zl9dVC
         ddVijqhe+zd7PK4p4F4J7xFpjv8tgJR77h5H3xlKnYUqSUt/6WssFwTkDPfkSiYqP0w9
         3DwAUj30QjD4kg2CjhsYAchmCYgbqzZeWqpOXssmN4y5JnyCLYyk2BepIXUyrifptNVN
         SpeC7iudy/cBus6ewNLm1dqawt8RqHd4eOxwvjghnkRfRvWO2P2VczVGDfvCvL6KcxV4
         dQfA==
X-Forwarded-Encrypted: i=1; AJvYcCVxY1lMP/jhyk+yXYTImXhn08Jop0sYUc/T2ItsNUuAPFvCOYp64TApnCkdZk3L3qDPANgSFMQWxuTJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwThAqabjPptcMVmtsox4wCR329YrtkCEsoQ1SPd2CST25Dnrk3
	1gkMU/ozUhPWufy748uVoGl+sb3XLzTuBCX+sbyOzbaXpdQPCjvaoCJf79bGyGnS6x53LMmC0+X
	InmO9swv0YnFsw9HPj5dR9DJM1ak2zZVC8/8/fA==
X-Gm-Gg: ASbGnctpmOm64JEaPPUSqsh/mkQcwCHFLh6eHU3AEu06XCpDHwLrcyHQQXDmAbEr/wT
	j6yBKSOGQU7KxZVSE8Du2zCkaTKa/EKAThZ8RlpL6X70Hk1MPHU7UoO7oUr4P6RcF4OkI8Tsr
X-Google-Smtp-Source: AGHT+IH2phiht3fTcJfb8ofTkI1v/FLe+lY4y9euuHGDawBqpbQ+TlXpkQ41TvHsqZg8ubAlV69gCmhAwRsjaZoaReA=
X-Received: by 2002:a2e:9f54:0:b0:308:f860:7c1 with SMTP id
 38308e7fff4ca-30927b1b22amr37848241fa.30.1739873890696; Tue, 18 Feb 2025
 02:18:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250123113042-GYA38135@gentoo> <Z5LOdh-4UxRtteOy@chonkvm.lixom.net>
 <20250127181726.GA538260-robh@kernel.org> <20250128031712-GYB47737@gentoo>
 <CACRpkdYbSOHD9UH5=+qjztxS3Cq_rxaoOT9tFtD8ZWm9zQGnPw@mail.gmail.com>
 <CACRpkdZa887vx4Lmxk1U_8w5n7AxMnyzGexeYzhsxNGT-DTYcQ@mail.gmail.com>
 <20250206133156-GYA5687@gentoo> <CACRpkdZYYZ5tUR4gJXuCrix0k56rPPB2TUGP3KpwqMgjs_Vd5w@mail.gmail.com>
 <20250214115410-GYA21743@gentoo> <CACRpkdaQZ5wJ0S=FfTzBkZOfCE7zvTPQ-wn53rHcZztbHLC8xQ@mail.gmail.com>
 <20250218095540-GYA29065@gentoo>
In-Reply-To: <20250218095540-GYA29065@gentoo>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 18 Feb 2025 11:17:59 +0100
X-Gm-Features: AWEUYZlziirybpkwfa2SwWJtaw_DWEb5S7JJMmpNsPZD80yNPZD4D4NQeN62kvc
Message-ID: <CACRpkdZiD7LRAk3hhvWdnf9DCuQCWGLoE1xd_z9ddRKZP=uvLw@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: gpio: spacemit: add support for K1 SoC
To: Yixun Lan <dlan@gentoo.org>
Cc: Rob Herring <robh@kernel.org>, Olof Johansson <olof@lixom.net>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Conor Dooley <conor@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Yangyu Chen <cyy@cyyself.name>, 
	Jisheng Zhang <jszhang@kernel.org>, Jesse Taube <mr.bossman075@gmail.com>, 
	Inochi Amaoto <inochiama@outlook.com>, Icenowy Zheng <uwu@icenowy.me>, 
	Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 18, 2025 at 10:55=E2=80=AFAM Yixun Lan <dlan@gentoo.org> wrote:

> > I will post it real soon.
> >
> can you check the v5 of the patch here [1]? which I just sent out yesterd=
ay
> it does 1) implement xlate() 2) instroduce custom add_pin_page()
> the gpio part works as I tested, the gpio irq probably need more testing

Ah nice! I have the same idea, but I just bring all the stuff you
need to reimplement in your driver into the core instead.

Your driver and bindings will look the same, you will just do
not need to reimplement the translation functions (if my code
works as I intended...)

Yours,
Linus Walleij

