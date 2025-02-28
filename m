Return-Path: <devicetree+bounces-152496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D20A49378
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 09:28:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6F4131891E66
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 08:28:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D968248862;
	Fri, 28 Feb 2025 08:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TOzKChAT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 940DC214A8C
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 08:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740731311; cv=none; b=AkEJGgMe5evfH6hsYdUUFtuc5ytC2SclVsB8BYGS8zfW09fFR0yXkn7vMt5rM0utKTB6rCGWTL1EP0lk4YOpLsy5CMEZZMQff2znHClOr6kMCZjqZJy7JwYG0OsY6A6t/93kvXyDdBIU/u/6bAZVMAmQ1PMiDYthfIQA0qb/Fnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740731311; c=relaxed/simple;
	bh=T9ulBbAshyDl3x4dZ9pDpzauMV0I7mHrJpwgJeJ/F6w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rR1yrQSRdJ2C6i4eSKY3L+zP1LX4DNP6HtjVmxf8EfiyS6V3TQV3Jv5MVL2PFS0GJkSVMv+jRo1Lu3+XPX8ey4BL/HhZmpZHttWlzNbVehKdHm3ALRKDjLbgjR52VajZ5VUevSN41gmXVCSXmBZbzkobcX5iJuasajTHoufuETo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TOzKChAT; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-30b909f0629so7477951fa.0
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 00:28:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740731308; x=1741336108; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T9ulBbAshyDl3x4dZ9pDpzauMV0I7mHrJpwgJeJ/F6w=;
        b=TOzKChATMFtDUv47T9CF6pLxrWOMTfVH/u2Cbl465n2Hy+TVRws48e43zYHO8+QffK
         2Dl1lyTocMZa0gBcXUbKyBAbtTxYQNfU1bvdKZT7FPffWRLBvRiBMxG4/9x5UucjOygv
         NjusRzJ8+u62lrYlA2T52MhBIHIvVGHithhfwsIMDXMA7AlkYDMJI2vuADgmOvLMz7Pt
         4Rp6SC6/RehLY32x4ULclT4MVhrhnGRc6XR/NIDo9fUxQaft4M9766ZWHMvXZh7OlniK
         HIxNVsGbi2kLU74N8/3svvuwyznLdBFTOxSRAHOWXBKneN9oS7fkMQIp+ppR57myLSbh
         NNew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740731308; x=1741336108;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T9ulBbAshyDl3x4dZ9pDpzauMV0I7mHrJpwgJeJ/F6w=;
        b=WlZgfTScbMcikuWxYjkv03aIpD+PB4YQq6up7F04mkF4R/1O0MT4Ibj+rvWUVziH6m
         1ZrJR74fQtYKsK/6tHhWKHemsW/0dUQrDpzuQ+uvHK9oDfZs5J8htob9mLZ6RZAY/A6e
         ofJSwcpeGIBrM0Vir4MFKqrX4wvJcDhu+61zP8RprITkof8INzZdeGvJlGaD7i6W+X4D
         qFUb3qnfgQZzeZJc9POUtEmEWOOztZHLxlEkkjuMobnxfaj7FbOmyJCKn61BtZO+01Gf
         WeFvA7SbYjHEWMOygF4pRqttkYLuLYVG+qiekzUykgvb2pWWb4ZlFblxP07fg0enmONf
         29fg==
X-Forwarded-Encrypted: i=1; AJvYcCWeXcdOHQFnd2mhplVsEobfJbgoIFYBVsnHZy+IOa63CfPoFF+GfwNaS16pqmmXwlpjqlzIgOYa9ezN@vger.kernel.org
X-Gm-Message-State: AOJu0YyLhHmxxCbqcJiUtol34apjRSSE42h347UKGQxqRMAHToWxV4ZE
	Y4bEjhCe4KXOZRTM5rdqkPVuC7YHhCGFS1eHM7yNAnm9cuV67dnKiPzmTbzW/vf1EbnUeTXGBct
	ZIPg6CXLzfJiMtQig1ubhHoDbWIp1lL5FJ4lcAw==
X-Gm-Gg: ASbGncui+0Rjnac1C47E5z/tHEMvewUQbT+8n8K7/g/l8D6MbWvvCet2/TPim9NzkfH
	RqGNckXuw9RFzgaeQ2RaiXb6Sa9vjVNaXVYYXsXtn7YJA6MpSeMSENRa0U3KtQSNWsrp4vheKPq
	bW6LevF1o=
X-Google-Smtp-Source: AGHT+IHW6S+ROk5t0PkuDeNohOexyGS0WQTsyLpxEm0u/Cb0yy+Ajbahy9tjZIMQn//VEPUie10+SvlVpoJnbWC1gJU=
X-Received: by 2002:a2e:9210:0:b0:302:3356:35d7 with SMTP id
 38308e7fff4ca-30b90a82535mr7451031fa.18.1740731307633; Fri, 28 Feb 2025
 00:28:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250227-ntc_thermistor_fixes-v1-0-70fa73200b52@gocontroll.com>
In-Reply-To: <20250227-ntc_thermistor_fixes-v1-0-70fa73200b52@gocontroll.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 28 Feb 2025 09:28:16 +0100
X-Gm-Features: AQ5f1Jr0WmX94vB3R141IPBrIS72Kx7MxXzXC6HKJVTA8RfcAOIAB4TGRHOkIms
Message-ID: <CACRpkdbtgd-BcKhSO+XB8yzbfAjYYJYA+NQs+WtmY=4N-bKdaQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] hwmon: (ntc_thermistor) typo fixes and incorrect
 table fix
To: maudspierings@gocontroll.com
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Joseph McNally <jmcna06@gmail.com>, linux-hwmon@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 27, 2025 at 1:57=E2=80=AFPM Maud Spierings via B4 Relay
<devnull+maudspierings.gocontroll.com@kernel.org> wrote:

> Fix some small mistakes in the Kconfig and bindings yaml, also fix the
> incorrect sensor table for the ncpXXxh103 sensor.
>
> Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>

The series:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

