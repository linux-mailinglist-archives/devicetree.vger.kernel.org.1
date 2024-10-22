Return-Path: <devicetree+bounces-114053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 679149A9AAF
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 09:15:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 966F71C21DFF
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 07:15:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C7031487FE;
	Tue, 22 Oct 2024 07:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="JXizB/Oa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B293232
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 07:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729581312; cv=none; b=tgL8MVUCkAxozqF4aNVdBNsk/mXOpYRhZASipEjE1LhPU6U1jkehxUTBG/tC7YeyUifo4X2aH/+vD4++t0xbctLgpl0bcHX1pnk9VowvdtJSE6+SfG2Bei7df0p4xytXlnGB3M8AqI9144aBM/QkdMvA27yhpSteJLsIFOCHNik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729581312; c=relaxed/simple;
	bh=BSr61Lbih3ztfBNq+FD5PNATN96oqcq+F4opEl7+bbc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HWhkC/T0uvp2jX4S58Qa2QbkDmZ7g+kC0YkBSWQI/s3taIbF1l0cgLtZK4Tq/Z4lKl9QhzoNQ3tGwz0Ld0ueFeYLgbe829EpKsOwKz4vzq0WpyaKkNr3hvODJzsae94gijkkwU+0mo2Le2qiuZ3C2f4Tcoyq272itIi63uFfsr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=JXizB/Oa; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2e2cc469c62so3553897a91.2
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 00:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1729581310; x=1730186110; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8X/XecV8UTvLcsQtQg+izcVYgmrEzD6FxMWHenqkUbc=;
        b=JXizB/Oapjz8DjCwhKGOC1r2dT5u5jbHbGBf74KjOfz5tBxyrzYkiuGs21wiFwJmQh
         eJidGccj0+uRaYw4Uwead5UNCeeKCjTtGOnHty1p27gCqrJZIFKqw09FJDXKLUmDpGFx
         QVI6696HFO+/sjZf/LN26B+ULbqKHpjKseOi2xXVn7IyKr6LPLsoWQLHnlndNBNHWWyZ
         sS3abklPmPRI0xH6t3YmTmu5FunQi3XTmM4uXbpB80uVjPy+mNSn06+fhF+NfzonEdNb
         0BC8Qr5w78TUnX0kPBgWKEF7EAFH2OcQ51OLsyOKSuRcvRSXN3ZcixQQOUi9VT0hbWK8
         K10w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729581310; x=1730186110;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8X/XecV8UTvLcsQtQg+izcVYgmrEzD6FxMWHenqkUbc=;
        b=PqGL8HhHtjlxnL8MSGNjhh1K0XOhRBRt0pDmxQGyESbvEzzpeJ4pZzn/of8QVTZg2i
         yJacZoAnpboeyP9HXBo182yz/eqmrf+6HbIKIio1HTPqshc1h5gUjxDlS3dM6Ghduddj
         OFzmxoMAYzAr6GDWhNhMgrhRsIZaElCmlAPaZIGtWf+DFSWMmukNtuDqaSAnxBg+w8I5
         dNLMsXbXiDJ03kbKZuMwXkf9gd+nW8ulfgF3d97ULgfU8wyQd3AF9L6jvdwdiBCuzP0o
         HnbyYp2IB/0a3oIe4urCDv3uPeUL0dEDgoBQQ4JC+aLphSYFDZq7001Cyf3pI2MfFuCR
         M3QA==
X-Forwarded-Encrypted: i=1; AJvYcCVlqdaBhArv49OXh8HRbMlx7Q/68Xo4TduO4KNbwmrS0fomFhU689f6YYhjLTtpVs2AmoaNqvXOaVbW@vger.kernel.org
X-Gm-Message-State: AOJu0YyU2F8OdJoQNm/Z0cnhYvywd70QhGG3E7Dnnso+aW19uai7Taxn
	e9n8ldxRWyajf6esjNdrCrqnR0+h0TOtf9qAiYVJtf3Ra5xgTWDYcTGOH/V3E3Tnbw5990Nlb1Y
	kLNBIelIEgRCyqZIaZwu86MhlriVF5e69I1V9NA==
X-Google-Smtp-Source: AGHT+IETunMDbq6jv35brOropUyt9fQGFH9KIMjjSe9mCTtFlBliffDFK8upTQ90ANTyKXCv/Oq4z92IBocn/iSsDW0=
X-Received: by 2002:a17:90b:1807:b0:2e2:bb22:eb59 with SMTP id
 98e67ed59e1d1-2e561a2791amr13451564a91.41.1729581310048; Tue, 22 Oct 2024
 00:15:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241017184152.128395-1-marex@denx.de> <172958121344.18422.8336462727519958263.b4-ty@linaro.org>
In-Reply-To: <172958121344.18422.8336462727519958263.b4-ty@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 22 Oct 2024 09:14:55 +0200
Message-ID: <CAMRc=MdOfQhvRVyXUirZV3V+yWMLbUyXwhrx9Qb9tA6_h0h1wg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: at24: add ST M24256E Additional Write
 lockable page support
To: linux-i2c@vger.kernel.org, Marek Vasut <marex@denx.de>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Alexander Stein <alexander.stein@ew.tq-group.com>, Arnd Bergmann <arnd@arndb.de>, 
	Christoph Niedermaier <cniedermaier@dh-electronics.com>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, kernel@dh-electronics.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 22, 2024 at 9:13=E2=80=AFAM Bartosz Golaszewski <brgl@bgdev.pl>=
 wrote:
>
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
>
>
> On Thu, 17 Oct 2024 20:41:25 +0200, Marek Vasut wrote:
> > The ST M24256E behaves as a regular M24C256, except for the E variant
> > which uses up another I2C address for Additional Write lockable page.
> > This page is 64 Bytes long and can contain additional data. Add entry
> > for it, so users can describe that page in DT. Note that users still
> > have to describe the main M24C256 area separately as that is on separat=
e
> > I2C address from this page.
> >
> > [...]
>
> Applied, thanks!
>
> [1/2] dt-bindings: at24: add ST M24256E Additional Write lockable page su=
pport
>       (no commit info)
> [2/2] eeprom: at24: add ST M24256E Additional Write lockable page support
>       (no commit info)
>

No worries about the "no commit info" I was on a different branch when
generating thankyou emails. Sorry.

Bart

> Best regards,
> --
> Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

