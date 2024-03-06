Return-Path: <devicetree+bounces-48887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 488198740D3
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 20:51:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CC9CAB222FA
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 19:51:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87695140E5B;
	Wed,  6 Mar 2024 19:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xA4Xk4e3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E813E140397
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 19:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709754684; cv=none; b=JPSzU5KZru13O1qsVNrtSgO91Dtjoz8JRDuhS2rfKs+0kc5ljNISolE3VdEBNJkcjxHojdV5vhfLahwwzTSZC/uS4wgPLdkiAV7u+0r3UOFX3nCpYW8lUoZcXXyKrtgmXCIXKQa5zUWfhbNiBztlYQ5gJspZApzQSOM384zoSio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709754684; c=relaxed/simple;
	bh=nW9BmnqEAJHUUJ1JfNL0w4eR+vbscKyLsSPzdYPEzAQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lmwbkIfefZ58809ua6C3T68phXmwHIXW1/ou/Rty48rFqi575nQP6rVqgU66LPgIIebkHfxjlggHj6SyqK49wRMDXW6Rfef5hhNnZm0AXMnNjFWF3GJPhtiqaH6v2x6TVvyaUMBpbF5i4xt55DkeF+45iyWQ5Ml5q8qEXz+grn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xA4Xk4e3; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6087d1355fcso1066927b3.0
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 11:51:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709754682; x=1710359482; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nW9BmnqEAJHUUJ1JfNL0w4eR+vbscKyLsSPzdYPEzAQ=;
        b=xA4Xk4e3RVm4GGIuMqPRlpDCptG3tKvYI9uNRx4ukxYwsl/xKt4Mz8dShk0UjJQ391
         4Nc4pilCuoarvt+xThDIaIfHxe4au8v93vPNBsP5ksvKHmQ2wiaRlWSBWf6Yub2q4MxY
         QqWe9c2Aqrn5I/MymjeocSidpDl+RbplP5nuX7/uesD93S0sf5BQBeeB+JwYfqpdXN9E
         Fx1PhD5xAM+YL6f92wM9rMXpvkV7YuyD0KcjQQOkwGFAQlJPXvz9Kc7CPFqCXAlmtXbu
         MhuJrtZvt2amxjVYlN0WOxNAxMlxubKSaY5+P0kM0BJyIbg7+E3BH+pFiyK2nHVIdhcs
         Ix7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709754682; x=1710359482;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nW9BmnqEAJHUUJ1JfNL0w4eR+vbscKyLsSPzdYPEzAQ=;
        b=vPSiC1zYvdIISUc/xbeXIchBOmQc9/CTsHQlYLdtn32xE1py5TDTGGXk3KnbRq4ocJ
         HRjvw4LjxxR6Z7WHF4DAHHfTzfHdvvpH9vn0kjwPbkDbCsILgFkl9MwMo6u5w6OHvuab
         FR1MYUYAaJ+0j0towXdzW7Ped9abBPaPW3+H4mESdqnn/RhDB4nKVU9ZsY3cgUJ3Ceeg
         WskMReEvHf/JwJEShBENr/p5qxCMQOrMmJBzlTozDSJ0UUazVw+zuviIfD9slYYPZ3sH
         7B/exnBqihasKb0JCf1cIrU8X+/LWYY8ll9BYIaeqWX0P3W8MokHzW9V+h9FsRFX6eKO
         lN5A==
X-Forwarded-Encrypted: i=1; AJvYcCUCAz8QVaoKIU1ZEmCEuNjkZoHA7H4fjLV6qd/76nyBGIGExVwnrXQJeVpsIavLG5UtUC5Hl4VrMo2ILIQ7juvK6kM6tEUB6wktMA==
X-Gm-Message-State: AOJu0Yw0Ui7RDkaSANZ0HGJcWikzdo5yKFyW6Fkf6qhLU02dSOX72BSm
	Li8moiql4afMKfRZP0j0Infz0uP881JExgeR1mCpgE/gkWe4iFc96o4fm96J9MZS/LHMhyZAw6S
	rU+sACg5kYHTjUIwSgUUisnU9VK5wGPqpULs9Vndf1epSOtVd
X-Google-Smtp-Source: AGHT+IF9uPQcyxZOk/shnTMiR/t1t/I0GgpRoKV3hwJiFHCA009EMyndUSs5h2ZUbJvMvccH9zCldItJvubtc7nYbb8=
X-Received: by 2002:a0d:c0c2:0:b0:608:b543:2d3b with SMTP id
 b185-20020a0dc0c2000000b00608b5432d3bmr15502595ywd.18.1709754682089; Wed, 06
 Mar 2024 11:51:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240306-mbly-i2c-v3-0-605f866aa4ec@bootlin.com> <20240306-mbly-i2c-v3-9-605f866aa4ec@bootlin.com>
In-Reply-To: <20240306-mbly-i2c-v3-9-605f866aa4ec@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 6 Mar 2024 20:51:11 +0100
Message-ID: <CACRpkdZqchWA8dKpQq0VrYWBNXL-WxfUSonwdzPYxyvjKhCXtg@mail.gmail.com>
Subject: Re: [PATCH v3 09/11] i2c: nomadik: sort includes
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-arm-kernel@lists.infradead.org, 
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, 
	Gregory Clement <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 6, 2024 at 6:59=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootli=
n.com> wrote:

> Sort #include statements in i2c-nomadik driver.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

