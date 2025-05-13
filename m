Return-Path: <devicetree+bounces-176655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 119F4AB4F04
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 11:17:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5D4733A5EE4
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 09:17:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7315212FA2;
	Tue, 13 May 2025 09:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rpZhtYvG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F02FE17FAC2
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 09:17:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747127874; cv=none; b=YZFCOOeDniw7GEb+sZIrAq9b8Ra0TXRvywn88mUnSDluLVOBfG6wR0fS7cOwr8vU7s1uVtagZivKhWQFfDFQ8YtxJOhVNj7TBe86F9cETqfESU39d1/Pyt5T5JLGDvYezqKxtIDRp5X92n8T5Ws+YBaE+2KzelEBEOQKEUWWLYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747127874; c=relaxed/simple;
	bh=fYj5KQcmLHEMEZBytxHFM2PZV8baZG30rM4LCErfAUA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EJKruQepVh4Ot2G9ASuOTndK2MFQke5vW19UZvPci9OavygAWNLmYdt6pj78H8bSu5yBnG6V0TIAZFKctZKSAZeMY2ANbnr49XuDaoFJ7NJvL5StPfoPPgTiPAkXrmES6w8CqyXyaFceFzbCk1KzUwlubknHxToc1Ytt5QJgIFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rpZhtYvG; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-30bf7d0c15eso52232891fa.0
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 02:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747127871; x=1747732671; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fYj5KQcmLHEMEZBytxHFM2PZV8baZG30rM4LCErfAUA=;
        b=rpZhtYvGCX1OdO9DcHoF55s92TPmzmY6DdTVtCEqd334WBobDLW3RPPl2JdKKR8kDy
         m7u1SrMSaPk0qSf5R9gSpL3lvIuDZm3Tfw+X08M9S8i2gvwSYoXljbSPk1JyJS2+B3RE
         Gvg1jLkF/tqcIheNbEVn4ZzH3AHNOVU+UwIccJ3kdz4Mpr2DtlQmd80M2uHfiXgmjDQo
         wt0HKMmFtQThRVfh0dGFUAZ9Rq5nzPTI/vZqL58ucAx5bVqB8GC2bprcdvFn8ApkMUQS
         TAOY+tXSfA/Byvx+CqitUk0tG7PzcMLIU05ogojXI3FLXaYYkqV8IZwDJDbElRJRnMp1
         3i5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747127871; x=1747732671;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fYj5KQcmLHEMEZBytxHFM2PZV8baZG30rM4LCErfAUA=;
        b=Oiv+aFyLR3BDqureAiYF55oq6TKspq23FAxDjeSaoYW9X/43c+gyf1tKN1DSmHVm2N
         fCZf4sWdCghrw1SFgnpv0rSc3tggx1kHW+Jv6HvzIA2eMA+1GR55edL/+2t3DHudopCI
         yjwxTsjCQ53QKBVz+h/Y40BPrkLtFkyZXwCIOFFzu11RvGNjLtK+602Na6h7jUwLd1E+
         KZdxj0bf//D/1dAwEe9z0Ccdx9KWR0IUZvkB+rtP9rOodcEazGCJGFl485OPHXf8+SpE
         Mhxj1KpC/hAP1iiA3XCu5+MunIOFWblGA6rc3Nuqn1lnj9z7D/2zhKPGcQpF/3Uv27JK
         /piQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjWtkBv7R9M9+b7vpKtS5MxdmeNHU3YVUNEGelaFJ5KtsdrBOYIE+zolueOyiLXODEWcX/72n8e8WT@vger.kernel.org
X-Gm-Message-State: AOJu0YxSf7aL1PG+FjVTqJAmWg1nuvRkQKqjKxkloHCLH6fOBrDqjyGV
	uigJKBDfNy27SCffHCbA7pKmXN0xqLzrLgntHy2KmFYZkdK1UMV4dyQZ8iAg9MBDXjsC2wRzW70
	mH58815AKE1pFrngf0RvshUZUHNzW79Wr9pNALQ==
X-Gm-Gg: ASbGncs1S5DpGfdi1PcmU6pNFsNFXA1l/F0c9ty5gDLsXaoxdTHuGfvSSi80yowWDb3
	o7Adcre/SL0E3H48BJ1kIjULAS3Qr9cnnm2TCvcZ61YaJzc1KvX3fee/Eh43UAUh2Ktc2jERfAI
	rBhP8OxWDkxKIP8dqNBBeggRLG0z/35GEXpUoYuMYQRLs=
X-Google-Smtp-Source: AGHT+IGF5AAEtxjDLnWwB2KhlBfA9BpWe7QwP/k4X0BBbK9pCsdG9d1Hz5QqjrJe/oAyVtJZCXkbt+hJdfoDbRz+p5M=
X-Received: by 2002:a2e:a542:0:b0:308:e54d:61b1 with SMTP id
 38308e7fff4ca-326c4686abamr73346771fa.34.1747127871028; Tue, 13 May 2025
 02:17:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250429-max77759-mfd-v8-0-72d72dc79a1f@linaro.org> <20250429-max77759-mfd-v8-5-72d72dc79a1f@linaro.org>
In-Reply-To: <20250429-max77759-mfd-v8-5-72d72dc79a1f@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 13 May 2025 11:17:40 +0200
X-Gm-Features: AX0GCFvKQMhZ-KOCmIthKIc7OzU6GLwrFz4eRraag3cmXbQnfR3YMu1flp3ZUNg
Message-ID: <CACRpkdZUTJX4ht3CTN6AuEVRgbM38Bs_kLj2yx_NwrRCryE-uw@mail.gmail.com>
Subject: Re: [PATCH v8 5/6] gpio: max77759: add Maxim MAX77759 gpio driver
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Srinivas Kandagatla <srini@kernel.org>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 29, 2025 at 10:22=E2=80=AFAM Andr=C3=A9 Draszik <andre.draszik@=
linaro.org> wrote:

> The Maxim MAX77759 is a companion PMIC for USB Type-C applications and
> includes Battery Charger, Fuel Gauge, temperature sensors, USB Type-C
> Port Controller (TCPC), NVMEM, and a GPIO expander.
>
> This driver supports the GPIO functions using the platform device
> registered by the core MFD driver.
>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

