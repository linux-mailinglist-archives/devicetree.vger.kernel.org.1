Return-Path: <devicetree+bounces-106771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0254198BAD9
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 13:18:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 34F6E1C21F4E
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 11:18:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7BBE1BF339;
	Tue,  1 Oct 2024 11:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eg+8lt8Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2120519B3F3
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 11:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727781524; cv=none; b=IcfKpgzLB79yfOfAorKo/wysm++Jmw9Ljw0mx4tAD5P/VQyAQvkNse2mRGvEBSH7AflDhJI/lfevV5sRY+sWH6oV0mFeIsrhJMRJ9tJ3Sy2cC6FGR+/8g0mAU/MyuAWDGXqBIAYOkjDQeGfmqciN7VJyGfsi3ZTSpwV42pd3o0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727781524; c=relaxed/simple;
	bh=0icwQPXpYDOh3mLTMMknGBG8ooO+cXmtB/vqPjajuBI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MlamnBw8ZrA5KMfanTcVOlg/fjafRK9DQVXkzzzLTk6u2l/hLBnpILSAlsycxj6LHx9C+H8duH9BdD7uI5l1Ct9uOk1PC1nzr7B4M1/ML/oDHo3f4cT9v+wtBaOI99jAW931DXepUp1e1b9Wicb4h8JF02yiK0uWqIyaBPJROBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eg+8lt8Y; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53993c115cfso2503867e87.2
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 04:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727781521; x=1728386321; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H1U6SzjOLd9tmaMIoGva4xG/5LpPu0blevtyOevY71Y=;
        b=eg+8lt8YLxr+bnejVRAHXZxhyOaOWsxIq2Kiy0ePgoq45O3ee1iw1/sn4qr4+9WdTo
         zPUXrwBDnIFUy1u3nEI0V/BiVVOxJFelJVARYj3wuSgHi05bbLf1tC/pwgd3Y3E5NZCo
         z+FZxwifAi8un5rrYwrvlldazlNlUla5N3Ox4IEToKewoL3h4HQLDAnh0XTG3Wyq1eTx
         DvaUTUQ0za8UT8faDAJ21ciwmti7UHeVOce8ODhqSj/UECEw/p9iJfBkK3a5PIsOnNfB
         rkkI3bvrpY7Aga/xxGxaKjoV1B4hAhwBw6bArTONhRFnEePzo72Tm/6L4IJokbeYqA89
         jryQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727781521; x=1728386321;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H1U6SzjOLd9tmaMIoGva4xG/5LpPu0blevtyOevY71Y=;
        b=spfMMD9Kl96nRf4PgOzl8de7OOJrkI2W3Eh5VIk1SWsx+Xj3BveOs8TeeeYTPeF/9r
         aFYA/xAJMttHSh4LhGcqOyV1YgHCZnLEe8DZf3mrzjpvOsjbzxyCu4m3O4KTf4PH6Zz7
         TdWqiPFu3CgWlnYdblwDlJo8xnLgF8qNdaSE8qy/8SgN7w+h4a7FXDqiXklvMmf/xkou
         cUPaXGxmDMUaON6Onqbzj/FUju+Iag2Xah6MeXdnvd4erS54oztm4jeOUuCSl0pgQr9E
         UT+Z6bP8Ly/mjk+o71lbDfjBn6yBZqMvs+Xxgvw7A4fCKp2W/EgZOx0F2Z3xqBEJUYxa
         bnAA==
X-Forwarded-Encrypted: i=1; AJvYcCWk6UkqvTccavHgGNAly33nCeerl2qb4mEbuLruBGqhGSKFJ2T22AC9wAG+k6nVBIltleLZUWdj/mKF@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj6ej1RX8YAH2JUEZ68hrdDv5uFRZExa0Te9AmviHW3tD9nlyu
	Bxyc9nmSPbhyz2bypnPlwaeM7vqi2KBnwKC7l7j70Fn6uAZCUKbJbqjKGGHECQSK5e34CuKNBew
	SvM2bWbKQL3FaM4zRTaLgKZIpqn/yTtOaIUZr8CB1EbhdZHf8Gdw=
X-Google-Smtp-Source: AGHT+IGVVP3SM9Y2lyoLaAnlnjr6mEhgDJWR/7EVr3JhTVLLX2ydx2IsKFpPjBzPzSbWiYJaSMdHQbaIhVvCr5IDT2M=
X-Received: by 2002:a05:6512:3041:b0:52c:adc4:137c with SMTP id
 2adb3069b0e04-5389fc3b745mr8112536e87.20.1727781521088; Tue, 01 Oct 2024
 04:18:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240928-bcm63138-leds-v2-0-f6aa4d4d6ef2@linaro.org>
 <20240928-bcm63138-leds-v2-1-f6aa4d4d6ef2@linaro.org> <fmuxz5w77tfkodvntaley2b6kv2c7acgcfb6ojk3plw7g6rbdd@sahgzglndrda>
In-Reply-To: <fmuxz5w77tfkodvntaley2b6kv2c7acgcfb6ojk3plw7g6rbdd@sahgzglndrda>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 1 Oct 2024 13:18:29 +0200
Message-ID: <CACRpkdYqR3N0EaS64gqSfRfezsrSueSKHPbMc4A0g3hHg3y6dw@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: leds: bcm63138: Add shift register bits
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	William Zhang <william.zhang@broadcom.com>, Anand Gore <anand.gore@broadcom.com>, 
	Kursad Oney <kursad.oney@broadcom.com>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	=?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, linux-leds@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 28, 2024 at 10:05=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
> On Sat, Sep 28, 2024 at 12:29:47AM +0200, Linus Walleij wrote:
> > +  brcm,serial-shift-bits:
>
> bits is an uint32-array, so you need to limit number of items, e.g.
> items:
>  - minimum: 1
>    maximum: 32

OK this is what I do on the next lines:

> > +    minimum: 1
> > +    maximum: 32

Am I doing something wrong here? I see you have a dash
  - minimum in your comment but when I grep through the
existing bindings for stuff ending with -bits it seems they
do what I do.

> default: [0]? or something else?

Since we need to stay compatible with older device trees
the default is whatever is in the hardware after boot :/

I guess I could write something about it in the description.

Yours,
Linus Walleij

