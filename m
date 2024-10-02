Return-Path: <devicetree+bounces-107249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FE698D52C
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 15:27:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF29D1C218EA
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 13:27:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F5461D0436;
	Wed,  2 Oct 2024 13:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VXl2mcQ4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D14B1CF28B
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 13:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727875656; cv=none; b=HpTMENGHBN/W/WgVv2AQq5LiN5bYQjMdK43GQ4yWNzVGJHzozTeW1teFtYetJXssw0wdjzRi/o4LXjXTRbJ6UECjIp+fYEdooBt7QkX305BCh3vjFKeDY8xZJgdiFWUhXR6CHCsGSbSV5CH0bVJ+jiHuzKVPEdcBaiRZi9CP0qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727875656; c=relaxed/simple;
	bh=WoaKlEMcbSsOUyOIA8eSRKVBqOjCka78j9BYwitbv+E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kQ1gjSrSn7OOmvn8kzgd/Ca5oZVx8FrbOsmcS6+y4jjw4+2rsJLP7qR6+U/zNtvSHdma61zyXoCSBxDB2RFTzBsJKvT8mEMJKbirShELFJF7TRmeGW9klbWFhMIkWmHJGZF06+tdlOLFLZxlBHBin4HaU7Xj6jZKpYnO7TJ/bgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VXl2mcQ4; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-e260b266805so4341719276.0
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 06:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727875653; x=1728480453; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2HzBc2EV9uqxoflmRRfK8jFyB3aOAk7qQbpOPz7vBxc=;
        b=VXl2mcQ4JSg0wJ6R1TaxFWgkde72UF9KMv8tX2Vp9z51EvzF1GpO018dRSoy4bRauz
         7uSfnhp81eJL3WWPDd5yCk70pbuoiAiEfSowYJ4PjpHLK77kGJss0DU05wgGexr5QLXf
         mMFSyXvBhOZpz6tjz1Sz4lUgwcSv/+h2fAEf3bE0OFYYQEWbGBx83ddazO5kOHC4Zvge
         ZgbywDs+OaB+FS+9sJu3NYfgXna+Kf+2x4ahQ6LCe6mDolTvIeN1YFX1tQzMySN00z6L
         okcPY+QNwEKku5zxG/uOG9fdJMeaMyDXfn0yFuDkqP648OcJau/CurFrRYd0Sx05Jwtz
         pnkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727875653; x=1728480453;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2HzBc2EV9uqxoflmRRfK8jFyB3aOAk7qQbpOPz7vBxc=;
        b=WbHKmuJTh8l+z5dtXrqZAUxDgKWpns+wnNeaGvWqsBx4zBHcTDJBVAr8479R/CRV86
         Slby5CxaMgUS5aEFDGgFDnfrzdQTvQE+93E3n/tMBnTK/MIWqBd1Ucd5pZYMSG7wEf7A
         yauFp0juubiKGrFkGvr24QiyGXA9AkpwZJ7KE/6qkWsLbyowCGgQuhZXlrl6tzbSGFrA
         2A6SJbEvxfgIVEowNr4VCPzR6jhsLn1LF0FQ38qgr3LJ+2Eb8bTEFg8nQffVnEafQDwl
         UDyQoVSz/S1uzM7qcXqFhOUH5tnM5OFb7Hsn5gp4pKCRcjp4l64/FcuRUKLi/y62vC0h
         WRsQ==
X-Forwarded-Encrypted: i=1; AJvYcCWnGaogoQeKxS5yr4JCD8FOAFKAgnoXtEJbW3ULjOvDixNpWTmjd3SHDARepLVZXbwJiQxDgRmBW87g@vger.kernel.org
X-Gm-Message-State: AOJu0YwhyiJ91NZEEcfGOR4d9+tVKMQ9HlJr+Wph2smQqYrow2s4mYlq
	BLisn5hNuGlvLwWOs+I3kwy66M2bP6ap4MEl2JiP2LF4Sz9CRrCern6XXJQCyrMJNTPUwmR17Vu
	RdzNnDZSAtX6hTIWbBHMYC9VEw6vgi4kiLFxsbcZUI/xYwk8gWl4=
X-Google-Smtp-Source: AGHT+IHZUCB4vEl2AW6EAUkIG+axani700+S0OSjD1AjUsJbKs++2/eQZRuBsA/6kNKQfxt26/FJDiTjtYis5ARK10o=
X-Received: by 2002:a05:6902:248a:b0:e20:2232:aab6 with SMTP id
 3f1490d57ef6-e263838535amr2218907276.7.1727875653468; Wed, 02 Oct 2024
 06:27:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241001-en7581-pinctrl-v5-0-dc1ce542b6c6@kernel.org> <20241001-en7581-pinctrl-v5-4-dc1ce542b6c6@kernel.org>
In-Reply-To: <20241001-en7581-pinctrl-v5-4-dc1ce542b6c6@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 2 Oct 2024 15:27:16 +0200
Message-ID: <CACRpkdZMWKb1h0-sWECCY0E3CxxMyLwCr4M3k6vrY9aAfpzMVg@mail.gmail.com>
Subject: Re: [PATCH v5 4/5] pinctrl: airoha: Add support for EN7581 SoC
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Sean Wang <sean.wang@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	linux-mediatek@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	upstream@airoha.com, benjamin.larsson@genexis.eu, ansuelsmth@gmail.com, 
	linux-pwm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 1, 2024 at 7:30=E2=80=AFPM Lorenzo Bianconi <lorenzo@kernel.org=
> wrote:

> Introduce pinctrl driver for EN7581 SoC. Current EN7581 pinctrl driver
> supports the following functionalities:
> - pin multiplexing
> - pin pull-up, pull-down, open-drain, current strength,
>   {input,output}_enable, output_{low,high}
> - gpio controller
> - irq controller
>
> Tested-by: Benjamin Larsson <benjamin.larsson@genexis.eu>
> Co-developed-by: Benjamin Larsson <benjamin.larsson@genexis.eu>
> Signed-off-by: Benjamin Larsson <benjamin.larsson@genexis.eu>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>

I missed that there was a v5 out and responded more to v4.

Anyway, I think the last comments on v4 still need to be
adressed:
https://lore.kernel.org/linux-gpio/CACRpkdbXWMU+wq6DvviCQPQ0EzKUm9oOnyFh34B=
m=3DY8K-HmT0Q@mail.gmail.com/

Yours,
Linus Walleij

