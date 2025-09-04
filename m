Return-Path: <devicetree+bounces-213016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 69158B446AC
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 21:46:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 071275A2155
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 19:46:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE70A26E6E3;
	Thu,  4 Sep 2025 19:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="U6SvjqDu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBABE22D795
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757015155; cv=none; b=nqG4u/gCnVNK0MSZSBJqZp4oHpGV1JfQbyj0P28uUoUw+f0+J1Lr5izw7j53L0mhpLoSNGO+bse1c88XPDWg/i+2Fs0qbE6Z4zq0Z/Rc8lCJV1MaCUtJ6miDs4zXmlOWHfQa/wZLkL3VcUMeqmy7OowMKgsWYrXilBg1AU7z3tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757015155; c=relaxed/simple;
	bh=hzWQ+NZvkCjPqaF5rQWuE+BV3WjbZDFdOwhEuuB25rY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=O2hEWDx5jTE6+JnVX3fEMGFDhVt6vU9tI2ru8cjLxKppwRE+2KuLucdA7iZ0IjhgAjxpjeZYmMeK2J462QPQIVBeGFTLZoOvvzcEb11otvzxX1U6hHF6ZtQStJMkZD3ZYCup2+Yk9/tEDPe9nkSycFKWk7ENHww8LHTbSKZmekk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=U6SvjqDu; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-336c79c89daso13201351fa.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 12:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757015152; x=1757619952; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hzWQ+NZvkCjPqaF5rQWuE+BV3WjbZDFdOwhEuuB25rY=;
        b=U6SvjqDug2r3Bh3E+xqa4ahbWya/SCsScNAUzYXo7STgzFY7SGDUVbJeGEwcP9uyLy
         yh7VoojAACI/g0vl6OpsjytJ5BJAu5Ve91rGKNEecJJ3DGeO6U9I1zjeOIfTFY1tKYaT
         E/HE1uZUECFVPxtHclhCgxXxMAeO3Qwo7HLVWP2mqXoP7IGdhPjzUybgKFLlwX1bRHXJ
         MlceJUyuQB974GiA7zwJ4xLi60HKG0XUtRSR7nJNSw4aTwBonuH3jGNcei/MxVfp9G2p
         y8C85NKksNxhBFDNgHw1AopZssg+8dZDHABoj12Qs3jMsiU3XnYi5lKVuzC7iyxEfIXh
         3gHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757015152; x=1757619952;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hzWQ+NZvkCjPqaF5rQWuE+BV3WjbZDFdOwhEuuB25rY=;
        b=MJUPUUVG492aNxxsKXR6O2ss+ldOt+PpwSp/t7vNL0GlaN+SRm7KqbWLzl7bOrY7dB
         PBG47eB0kQGLn3C1Uh8GjzYNaaaMSeaOh1KwEvG7CKHqM6GdMRaqu/vZBa9gIr6s4ikS
         EBjYLJXlGx0IJvuEZdIyX2NC/w6WrO5tWh9tOcD25+4yDvYHmyUK/UL4ru9BTBTZk+TW
         PfezQne6SmjBaJCTEVKH+JWF/nkX2sG7Yqg3qVv1/Q1mr7Dw8fIoFRVjjdYfpsBAgoEm
         yH40fHRFJn4iLeTujwQP/Mk+VZb8OOodvyuHb69Y1z0okvJcOK9TVNN7/fomf/0sLotf
         2qrQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFwKBL8B/iKhuz6F4Vg2CLXaKMgr6AkKQGVItyj99LuPRoYu1iN7cNowcyNY3RFxZwzpLLKJcZ5kIe@vger.kernel.org
X-Gm-Message-State: AOJu0YxTW3QM6KN6S0SHcNr0rGuyXkadSIGeIyFjUrQBsZQzAcqgSEgZ
	YshEeaau9fNjYuFVyu1kgnqHZohmM/kfpcFvMWy0SOvx7+cPzoLWchWBJLB/Ih+87I6W0SUqpaJ
	trOf9/Mf3dPcWChJzVdZ0luE4QldbWwNvq0JbFpLWgA==
X-Gm-Gg: ASbGncv5T5bIRvHNyTxkFFVagZtIYCcTM3HodspdaKGSjNfDisv1lRuqES6tuC4cD+X
	+12/4oORJYqTICZSm36xPZZITWoqx2qchilJkqnjsj+uNWEBgZY1PzoDYdUHDDoiYyxYr9KxPvT
	NBUEEdK3S1xagtq1VhUZrb0pm/VKISSu35As4GJ2mRijnOV8wzDEE1irdUsTrQ4JqoQBDhGA/CP
	cnHepG5Az95dY28EA==
X-Google-Smtp-Source: AGHT+IHyOco31RUv2Oe9cKuPvD0Htgm4IoRC25q2CFRrREw8Wo2WlCc9mBvTU1sMDJcN9tENLMEe0p4jJKwMHOJBxZ8=
X-Received: by 2002:a2e:a54c:0:b0:337:e460:bef6 with SMTP id
 38308e7fff4ca-337e460c680mr43543631fa.10.1757015152027; Thu, 04 Sep 2025
 12:45:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250904013438.2405-1-ziyao@disroot.org> <20250904013438.2405-2-ziyao@disroot.org>
In-Reply-To: <20250904013438.2405-2-ziyao@disroot.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 4 Sep 2025 21:45:40 +0200
X-Gm-Features: Ac12FXx4X2_pNhzcdcYEzziDJRvtowb7CpE7cKPonDOwSax6LARZw_4oRio8qGA
Message-ID: <CACRpkdZfruCqEzN-sMtxidh_e7JM1e_LG3JKaQ3ahkDAnx59Cg@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: gpio: loongson: Document GPIO
 controller of LS2K0300 SoC
To: Yao Zi <ziyao@disroot.org>
Cc: Yinbo Zhu <zhuyinbo@loongson.cn>, Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Huacai Chen <chenhuacai@kernel.org>, WANG Xuerui <kernel@xen0n.name>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	loongarch@lists.linux.dev, Mingcong Bai <jeffbai@aosc.io>, 
	Kexy Biscuit <kexybiscuit@aosc.io>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 4, 2025 at 3:35=E2=80=AFAM Yao Zi <ziyao@disroot.org> wrote:

> Loongson-2K0300 ships a GPIO controller whose input/output control logic
> is similar to previous generation of SoCs. Additionally, it acts as an
> interrupt-controller supporting both level and edge interrupts and has a
> distinct reset signal.
>
> Describe its compatible in devicetree. We enlarge the maximum value of
> ngpios to 128, since the controller technically supports at most 128
> pins, although only 106 are routed out of the package. Properties for
> interrupt-controllers and resets are introduced and limited as LS2K0300
> only.
>
> Signed-off-by: Yao Zi <ziyao@disroot.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Huacai Chen <chenhuacai@loongson.cn>

Looks good:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

