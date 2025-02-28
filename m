Return-Path: <devicetree+bounces-152505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 78297A49405
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 09:52:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A7D63AF7FB
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 08:52:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CBE9253F36;
	Fri, 28 Feb 2025 08:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oqv88IH0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73F79253F08
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 08:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740732750; cv=none; b=uA6RhqYnCUoD95PowMiJ5N+BH3tvt4cQmKvK5ZTuNrRnL7414ree7FlgQV1uvaxHk5NFYktGRFiPKp/FPFg0NtDA7Dnsr+T3Dhb8V3JaDVGM4mjUbDEt6VlkhqBO5zOSJ0nEMcUz+v79AOm32NsFxXw403SF6AVU1gsEgrVM7kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740732750; c=relaxed/simple;
	bh=QAZ1XbH09v7b1zWZ0hsXWTy0W7e9HTzyQ7n3BOJSdIM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tVw0mmkwr19WCGdwciPjT3M10yu6CluzLkynQn4ZU9sQc+1sebPFhiDMamp7irMSAC1jrV2FE07K6zEqryoHv6gnyMAgL2Hc6vpBeklPVlTWNW8t5P5bws051wSd2iW1wnVqN0+CB2LF75JbflZCVHCI9oI9tcS4Hk0RpqAUqgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oqv88IH0; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5494bc4d741so945172e87.2
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 00:52:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740732746; x=1741337546; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QAZ1XbH09v7b1zWZ0hsXWTy0W7e9HTzyQ7n3BOJSdIM=;
        b=oqv88IH0Fu58PpsE4em94prhjTzhdw48VwmrFHg7CdbdAwbavnegV9HfWzT0PJ3Bt2
         +l1qTW6k/q7VXv2w7wSW5Ru5PK6aM8LUSQUEBFtQ8qPnaynrKg+d08WypuBImcDgrOC8
         de+itt/MuoHgovngNLlaU1nKVOrLOXwC7O6OmR1JLEWL/5K/NQQvMw+BmxeYwZmT3yyS
         arWmpvCXyXb4FmZIdutQYQCRWa5Xluz9xB5BsnuApoq004rt3T/bnidEHGyoKA45EUOA
         wgXXRg7AHVt+vTLk38T90zT4x7LLETREkmz33fs1qHoMnyEEGNA5I05ubjFbYTWJoPaZ
         qyWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740732746; x=1741337546;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QAZ1XbH09v7b1zWZ0hsXWTy0W7e9HTzyQ7n3BOJSdIM=;
        b=FSPlBOVzaKMnYN7hfm9ShN36/hyLTOOgOAAUyihNoqGrPRkX6s9WgKZwxXroXrpSVj
         RQ11bICaaq8U5BMCmkABU5A+QqAuBCnLkYW1fJ4UWfOrDCWYaEQ9lWPC/mbu/yHGL+Kb
         tiDdgKwgQPS5FsSb/mzIbiIWpjxQdpAzQTOPrWzK4j83D+UqL0jIq2jQCSyMJdRpPkoC
         YILzrxC0PEbPYxFN0REMSfBh5ZVbVEOhW17Fm+Jg7y4AVpwuqcPtaBJKLUxDbhEw+EL3
         F6piU+Jple+Dxvyiv9MjlKRw2SQSspVBVx7434986AXlvOTyH3FdI4tt5oLqC8QdJm9Z
         Mlwg==
X-Forwarded-Encrypted: i=1; AJvYcCWovcx/39568Piuy681W+vEiuGkWHmbcFkng/jpHbTDH+6iAzVQy2hnE6wNxgbzReFt/hg06+haxar0@vger.kernel.org
X-Gm-Message-State: AOJu0YxLclgLHZawu3NerYhYPNi+zeniYvBTuvcqNnQND09He+L77Y2Y
	VAzxgXS0IkJeqJJuRLb4MUu+uP7sKSFFhcuFTnmvTMElQOaycOvhkviGJ8wTuXCKnUV52g9v5rF
	cizTdT5KlYH9acygle9K9xq+vF5/K0QUAFY28HA==
X-Gm-Gg: ASbGncvoLPdCCwVYt21SjHXVAdC7Msul4o7seC6188WOTOCtWbmtGvCmgZ5XerdEiwr
	6sAfZY3ZHGOz3OigQepvNaNDD405AkG6xXvtYOPde1YOXt0Czrp6NzxI91cXzsxVP3DECShk7xy
	65FnAaZsI=
X-Google-Smtp-Source: AGHT+IFLrniw5jq4oWKYdbCJ1jDPnBqcD2jK1p8/hj2hMot5ls33gsWydkV0WZlBpXGLTrBYBZ2pqZLZjbYdrfBpayU=
X-Received: by 2002:ac2:4c4f:0:b0:546:2f6f:83d7 with SMTP id
 2adb3069b0e04-5494c352318mr1042433e87.46.1740732746436; Fri, 28 Feb 2025
 00:52:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1739368121.git.Jonathan.Santos@analog.com>
 <62cb9786b02adde118db9349617cb796585ceb02.1739368121.git.Jonathan.Santos@analog.com>
 <CACRpkdaSY7WH191makzPcZqLd-vBsC_f6yagWzBa65MrC+pjKA@mail.gmail.com> <7c5e2364-038b-48a8-ad67-3cf0f2fd2be3@baylibre.com>
In-Reply-To: <7c5e2364-038b-48a8-ad67-3cf0f2fd2be3@baylibre.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 28 Feb 2025 09:52:15 +0100
X-Gm-Features: AQ5f1Jrkm-kow3OXmnSJltTmG8QrhANbAwgPagCFyAFP-qUYHz9z9ilWano5H4U
Message-ID: <CACRpkdbw3BkpzPQp2PdV8M61V2XXaLcmuOpGTsxSoiQTH7wZXw@mail.gmail.com>
Subject: Re: [PATCH RESEND v3 12/17] iio: adc: ad7768-1: Add GPIO controller support
To: David Lechner <dlechner@baylibre.com>
Cc: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Sergiu Cuciurean <sergiu.cuciurean@analog.com>, lars@metafoo.de, Michael.Hennerich@analog.com, 
	marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, jonath4nns@gmail.com, 
	marcelo.schmitt1@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 20, 2025 at 11:27=E2=80=AFPM David Lechner <dlechner@baylibre.c=
om> wrote:
> On 2/19/25 2:34 PM, Linus Walleij wrote:

> > Is it not possible to use the gpio regmap library in this driver
> > like we do in drivers/iio/addac/stx104.c?
> >
> > It cuts down the code size of simple GPIO chips on random
> > chips quite a lot.
>
> I think the answer is "no" since we need to hold a conditional lock
> while accessing registers. Namely: iio_device_claim_direct_mode()/
> iio_device_release_direct_mode().

Sorry for potentially dumb question, but if this is required to access
the registers, why is it not done in the regmap abstraction itself?
It's kind of that stuff regmap is supposed to hide.

Yours,
Linus Walleij

