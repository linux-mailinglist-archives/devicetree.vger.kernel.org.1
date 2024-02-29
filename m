Return-Path: <devicetree+bounces-47489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C42A286D5DE
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 22:12:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E68B288F8B
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 21:12:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED91C16FF48;
	Thu, 29 Feb 2024 21:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QpmSeTlB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E2016FF40
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 21:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709240679; cv=none; b=mDBcNm0L93tt8j1ZpKJ1gJAhtTqYjXq7rR1z1hUNEE53dRqobQN2ofrmx8o7CcWZo3xhJx++lalCZywcJM1hfAuxyOi+wd8E8S9lZUW4tmV8eVG/psiyI4Rzr25jJvhiPB29lBkMm3JaAzTdoEguUgm0ZBtFibEi2PJDYbXtHiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709240679; c=relaxed/simple;
	bh=8uPVylV9EO6m0KYXwD9bCM+qusEzKV7OpBt6B4Y/Y+Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WH8bU6EED0hGRUoyx7FivD2DGPCr5K0yzLQeLOife/DB1H0lzr/CVA1GjjsHV5Qq5KMWn6FXYZ3HrzUubOztXU8xAX+Tf48+CFKt7RDXZJEpF+Arb8q6dOTN4OuhtCRYA+17L95UqyH+nLAmkxccpU6og+n0wc2HD7baXmWXaUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QpmSeTlB; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-dcc6fc978ddso1240671276.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 13:04:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709240677; x=1709845477; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8uPVylV9EO6m0KYXwD9bCM+qusEzKV7OpBt6B4Y/Y+Q=;
        b=QpmSeTlBYpnn9mqBMS99KSQoZHAmlh6zlGdw4USU97YoQ+XX3pZp67WWm46223FX8E
         0OfZt5HLZBO8Pu5KzQziX+rCqF/8sTLEPjQHydYjaCsMwcPqwuKoS5NtLLh1UtxMBeQF
         KgnqF8j1+ZbS2T/jI5OKRHJP034PAmx3TvT0AVXyfm7uQpSy0p6CyPeQ2NvtRi1JW6+3
         YoLDRiQdHEuk7WtViN1J9YTZAUSOjL1sjYC1n5/A57Kb0etZ0YMUSRkpsJhmn4QtjHWW
         gSB18Nu6KqAbmV+1j31K3lkdiyW2E0SBTieklLw5yzjVU/AYYoomZQdBGYI+fwMmHxUM
         amFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709240677; x=1709845477;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8uPVylV9EO6m0KYXwD9bCM+qusEzKV7OpBt6B4Y/Y+Q=;
        b=gLucTfAQuTmQg+ob+scIiQv1PREyY5OpKwZfdpzszaLazZN/2WDqOfS44LTzcg/wV1
         DgZ6bN1KLhWFjc/whA7o6XP3HHX0wwLbCzk0czysiwuV0dWvpY9Ke1CD5+mImruSpB5y
         8miK5EZ1fkz/lVk4GvlaHLrdLvM+AnuvLRotdsSbLdQT86/ElGDruWIl0ttND+/Ey4Ps
         /uW52hAl8tqFYJlwMk+UgvafN53v4nS88zqh8l6QPU80R1kMuFcAsso3PhwXdufuTuUc
         4nDczfZ5TupkjNeLj8g0+T+Rf72vdrJ2YskOeCT8OIjkmquz2kRjNPcgphg7UzLogGxO
         xG1A==
X-Forwarded-Encrypted: i=1; AJvYcCVCPgLloDzPuu1iLSE8jigNwBo5+tZnVVdNqazBeFe3629TNKr+HmjHz2RXD7FU2ifLcrSbI3iKNNSX1UPTaMKlBHJ2Zl8w7RzSUA==
X-Gm-Message-State: AOJu0YzEA3aaYpPCHOvz1luPZSCtzgHoaUmUUinsTq3uSX6BvjBxPffn
	ANZHQW6SLIPHzvYiA7CaCGGvY4yaWVXDhesC9H97mHWTQyKODVpZsjvpk2OVae3u6JHf1xbG6TZ
	fyUHZKtibDkIwSG494M6c3ObMNAIMBgIUy5tktQ==
X-Google-Smtp-Source: AGHT+IF6WpL6uXLdz5RRC4t8N2wE2n4WdvI8YyClMoKto9MRFbIOM8wSfgQJvA/IZCtI3mWM0tMsS/RNNVdPkijGBSI=
X-Received: by 2002:a5b:9c5:0:b0:dc7:421d:bcc0 with SMTP id
 y5-20020a5b09c5000000b00dc7421dbcc0mr1924276ybq.32.1709240677236; Thu, 29 Feb
 2024 13:04:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240229-mbly-i2c-v2-0-b32ed18c098c@bootlin.com> <20240229-mbly-i2c-v2-8-b32ed18c098c@bootlin.com>
In-Reply-To: <20240229-mbly-i2c-v2-8-b32ed18c098c@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 22:04:26 +0100
Message-ID: <CACRpkdYRPNq0diYUyQoZ54pYb6Gz22rj-WoGwPFALiuvgY71jA@mail.gmail.com>
Subject: Re: [PATCH v2 08/11] i2c: nomadik: fetch i2c-transfer-timeout-us
 property from devicetree
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

On Thu, Feb 29, 2024 at 7:10=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootl=
in.com> wrote:

> Allow overriding the default timeout value (200ms) from devicetree,
> using the generic i2c-transfer-timeout-us property.
>
> The i2c_adapter->timeout field is an unaccurate jiffies amount;
> i2c-nomadik uses hrtimers for timeouts below one jiffy.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

