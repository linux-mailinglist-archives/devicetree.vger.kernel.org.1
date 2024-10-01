Return-Path: <devicetree+bounces-106844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2393898BFB8
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 16:21:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C17351F2508A
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 14:21:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 186641C9EBF;
	Tue,  1 Oct 2024 14:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zVJQGd2t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6855E1C4619
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 14:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727792299; cv=none; b=YQbWblPN2QExOr7Xfq2DFoHT04bblaicIWQw9RZY5Sntdev+Z0gHSHkNS0U9brpaMUSDvcvLSg7Hl5uBPtxlFOPH8woBQkEYJl7vHCltePdO3QTs09atIXKU8KG2mp9mjwyq1nGNhr9Y6vrtLfsuYnsTy+QV0weSsLKrb9l8q8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727792299; c=relaxed/simple;
	bh=XsFwKLOGlPvFEBxHyR86cL5eojW2dIOejDjQT5SGeFI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a9RdnrHUyQnydH43/xjnndibpYIJ+1EUdvCiRfIdBdyjXTLfoIcREmaQSmJePh5bgHogMswIydfqPduOPGdd23Tuu1wNxpobC9YDCr/z4rSZ3HAAyA8u7mV7ZWZFbNUZFVQ1ZzpMYOSAix89cTNkYbaa/PyDg2bc4KU/dyeAICk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zVJQGd2t; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-539973829e7so2143380e87.0
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 07:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727792296; x=1728397096; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XsFwKLOGlPvFEBxHyR86cL5eojW2dIOejDjQT5SGeFI=;
        b=zVJQGd2tOhUiWy4Hu1hnJEjTYMHpDWy4KH8gdJUGQb8twwJeoMBWJFKK90gPmeqgDg
         zHLj8vVtpLfImD56VPQXGUpv/uG7TIwxrTk0Y5sDIf/Qh1YK6TnYTyzYE96OQGq2N6Lh
         PENfPZ2XVlQekiA3U5JPMs5ubaXTsvypQvFasEk/iHiXwm2lWqvWgImOov1pn7k1nA5E
         ZkomD80tVeIZjCjviRX62Rxg5iT55myMT5aqyQ93C63qEVZ0LhJ4l+YEUp2qNMl7S1e9
         Hvl/pInGe12GgG6iaeBFpe9R7mqCCWzs+e96SKH1zQNBXsGLKizXNtwM2eioSShnvyY/
         69EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727792296; x=1728397096;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XsFwKLOGlPvFEBxHyR86cL5eojW2dIOejDjQT5SGeFI=;
        b=lBlvUPf2ySrFjKp3vDVg0GlNohlAqpcvcBjVuyYDCg7ZL25lnpK2N5ae5Fj1WDtz0r
         uYrDymErCOgwwohk0Fj6SviXhjbhKLH/DyuwE/p0VFXcI01lC7E50ojAL/gXrVQi82M9
         7LhrXA+IKgG9f8OGwvvLmq3GcN0/y2xAK/zWFqaVpLF9+pqCHCZyIRWUQEFh6NCmmfx7
         X8LQJrNCALWRP/lraXv0yiHcjs8G4SJ9KbRJS4QEmLGmsmEkvWlZXk6bj6TAPIyllTrD
         OXtvGGybNl0dyx9gbxYA0mP/BPLXadjD8F1pY/WUScvhz4tezPy3G/fo8+bWsGDGPTqT
         4ZTw==
X-Forwarded-Encrypted: i=1; AJvYcCVPoPKS+gLmSSWZddIwt+J5nlaqzBlTuAwUvbkElfSJU8rjCJNgNRbkqYzVo6Jj4dADy8V4LufJTjdO@vger.kernel.org
X-Gm-Message-State: AOJu0YxT5rSSTASZQF0VXZwBEkR53bi7BIXqQzrBSjgiY9gqPh4NI+EL
	VuvxNWyBACGrBCHSxck4LOa8Cd8BFW2ttHvIEdm2TsPJuNQNORmsDEFU3NhT4nNkbPRcpG+UzsL
	4Nl15CbTW5MKZgxQx8x7cbD4OwxcEMooXCNp7dQ==
X-Google-Smtp-Source: AGHT+IEfMH8uk4RIxkOdO5Hy2blq4o4vWNOnpucH3GZ2DnMbaYnX3CqykKYsypLP7wl0QcmQrA0dM4xIL26aFEV1xAs=
X-Received: by 2002:a05:6512:1155:b0:536:568f:c5ed with SMTP id
 2adb3069b0e04-5389fc32b18mr7413043e87.1.1727792295331; Tue, 01 Oct 2024
 07:18:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240919094339.2407641-1-billy_tsai@aspeedtech.com> <20240919094339.2407641-7-billy_tsai@aspeedtech.com>
In-Reply-To: <20240919094339.2407641-7-billy_tsai@aspeedtech.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 1 Oct 2024 16:18:04 +0200
Message-ID: <CACRpkdbFD9CiqVwQ5xxZ9SfQtVvDJGCr=8spxBG4u-JQ0PKJ3w@mail.gmail.com>
Subject: Re: [PATCH v4 6/6] gpio: aspeed: Add the flush write to ensure the
 write complete.
To: Billy Tsai <billy_tsai@aspeedtech.com>
Cc: brgl@bgdev.pl, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	joel@jms.id.au, andrew@codeconstruct.com.au, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	BMC-SW@aspeedtech.com, Peter.Yin@quantatw.com, Jay_Zhang@wiwynn.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 19, 2024 at 11:43=E2=80=AFAM Billy Tsai <billy_tsai@aspeedtech.=
com> wrote:

> Performing a dummy read ensures that the register write operation is full=
y
> completed, mitigating any potential bus delays that could otherwise impac=
t
> the frequency of bitbang usage. E.g., if the JTAG application uses GPIO t=
o
> control the JTAG pins (TCK, TMS, TDI, TDO, and TRST), and the application
> sets the TCK clock to 1 MHz, the GPIO=E2=80=99s high/low transitions will=
 rely on
> a delay function to ensure the clock frequency does not exceed 1 MHz.
> However, this can lead to rapid toggling of the GPIO because the write
> operation is POSTed and does not wait for a bus acknowledgment.
>
> Signed-off-by: Billy Tsai <billy_tsai@aspeedtech.com>

If this applies cleanly on mainline I think it should go into fixes as-is.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

