Return-Path: <devicetree+bounces-80130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D64917D62
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 12:11:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 790821C22794
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 10:11:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB7A117C7AC;
	Wed, 26 Jun 2024 10:10:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xKwa+czO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CAC176AC2
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 10:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719396630; cv=none; b=TSR8RziBwpOyT0PEirN/JQynIEK/yqqVOM/TvBb9+5ckMUUUA+0TlwAj4OSXUs6FUiKQQ6NlopV0XKIDpqzI/BET1p7iZmG0Q/ftlQjUrYTYkaIEt+137QrT0coIXPVug2xKOU7hICzRWCGH0zUBDGzrwPzi6UzexMr1nT/jNzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719396630; c=relaxed/simple;
	bh=CODmxJ7WAi/9W5Zp49KBekEucUyPOe+eyV9ajXeTHL4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hEVcB9mu312W3tZ876GBaR1t9xUcGlGd+wYasxm/oQID0p4eIzxQrshssjhk79yTRzLklTvu/S3cMvZO7ewDIkjwmPYoRA58+ocn0IIo3qCGnEO5H9uTL7sDZOUUG/6MM1a2sTf9W0Cbwv7PNGUgcqrebD/Bnnif3k2PCsxbqLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xKwa+czO; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52cdb0d816bso343010e87.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 03:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719396627; x=1720001427; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CODmxJ7WAi/9W5Zp49KBekEucUyPOe+eyV9ajXeTHL4=;
        b=xKwa+czO2S1UKeBnZL0YLRshQ9tZZNqJBOUbRE6tNVFcbVPfoK/Sbr4JS36MmbX4W5
         Pge4TLbFjQPVxShW7Nuy7XbrzZmu9lDYhgQzSHgd+gUk2AJ+BSP2z+1wsx4bW54YXPdj
         UZWh0A4kpM5WqeYEZxTV6EADmXrQVtQrDhZSrurwTTkJBM8XAhkwbRIeSulusW2sy9HD
         y+L9Xxm0zHJjlGpVa6JfMubdSBzQ7m7kdwUpyd0RejVE3mNYbgYrbMyQEnylllanr+b7
         SupX5crLzCto50jfDCmP7cQFYabQNNtL4GOjW25dZdodm1ZVGSh67BuEJrpj5I2Z2mv/
         dUoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719396627; x=1720001427;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CODmxJ7WAi/9W5Zp49KBekEucUyPOe+eyV9ajXeTHL4=;
        b=fZ46f8jfC/CVfVVJYW2PpaLg6xxmT782HQIcmXO5qAAXanBqZmvy7oGI8PL8ds5TVa
         YgcE6DFFFh0qulQca+8gMUFJBEv1B7upYs0SaAwH6sVPKVKC+3dcU3cIjJYFM2OFm1lj
         1pxHT3u6wlrZVJeo/bbB/lOjOuoggKEvuZyHa2oZbbZ76RsRVZp6pKrx4WNP3/P06qvx
         bM0RZLmQR1+3tb/3HzCXS5n9GzrCGWKkhEYfYQqWvA/cuO4dW1AJ1DxUyr4QHfHFLYFS
         2LALvJGIo+GW56JM1+37grJD+305JF7ikNVTWoswygMuWV0s1iNH5mFpUhAJ/Q4d9lKU
         meBg==
X-Forwarded-Encrypted: i=1; AJvYcCUOP+Q+tHMPHRPOvN60kh/RFOI3YDvQToEIzK6tw0W2ysiF/Ok10fIcxCzk4kxqhnV2GbnL2FFWO197Bhibyw9XKKMjLZlWLX3USQ==
X-Gm-Message-State: AOJu0Yy2znaRhZxMtRdTGzfaOctRDfmS251P3+PJY1tX/IjUm/oQQCtY
	LA9mC17awgqRSIrPyBQgqk7c7ACH4qxRbtLQqgAk+znJ1wvvC6k7AAPgKownW3iQ+BH54DGlGwC
	6MgzZLZrBVXIsgkA+qXVm5c3bqfg/g77ms6rq/g==
X-Google-Smtp-Source: AGHT+IF3lbTV0RYBiE7R5YSmwxSMLcsLF95dsDrDNlAyhnScJgGvl/+e2exCY3OLJZIBn9r5xOXG/EzI6V9+H38zQ2A=
X-Received: by 2002:a19:f618:0:b0:52c:dba9:55ff with SMTP id
 2adb3069b0e04-52cdf15b006mr3296922e87.25.1719396626376; Wed, 26 Jun 2024
 03:10:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240621093142.698529-1-potin.lai.pt@gmail.com>
In-Reply-To: <20240621093142.698529-1-potin.lai.pt@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 26 Jun 2024 12:10:15 +0200
Message-ID: <CACRpkdZ4+pJTSu+GZ=BSfY6G-3Pj=81275AMEewAvoDFpACYMw@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] add ast2600 NCSI pin groups
To: Potin Lai <potin.lai.pt@gmail.com>
Cc: Andrew Jeffery <andrew@codeconstruct.com.au>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Joel Stanley <joel@jms.id.au>, linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Patrick Williams <patrick@stwcx.xyz>, Cosmo Chou <cosmo.chou@quantatw.com>, 
	Potin Lai <potin.lai@quantatw.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 21, 2024 at 11:33=E2=80=AFAM Potin Lai <potin.lai.pt@gmail.com>=
 wrote:

> In the NCSI pin table, the reference clock output pin (RMIIXRCLKO) is not
> needed on the management controller side.

This v4 patch set applied!

Yours,
Linus Walleij

