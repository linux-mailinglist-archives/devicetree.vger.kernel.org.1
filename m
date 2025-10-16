Return-Path: <devicetree+bounces-227902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C8FBE5A53
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 00:12:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BC8B3B6FD7
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 22:12:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF6D82E6106;
	Thu, 16 Oct 2025 22:12:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eOZnyuRT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E112E3B11
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 22:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760652748; cv=none; b=fKpf9IU9wprhJXuU6B518Gu278yq0a+SMFztEKRnjnloBDyRZ8ChtmIZCjVvME5Rejv45L5qzGyfXtFyDjySsLsIpugynI00/m3dq2khw+xIuTlX6W4Y4gK4IMoInjPRLgdqdTW+DKZOkRSn3UeNTdWN7vp1NJ17sJHaNfV4D5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760652748; c=relaxed/simple;
	bh=mQg/ICgMWrNLJ+qVKDXr+wEji85IYihnhnnRuN0F69c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ahVBo2/IDZgR/+7zK8NsvTWQi5FLsYqsP7boapcktqHkVkXYA9qFgE2RphejH5lchT56YAC52zn6d/TG4u0YaoSLjWwVMKyETx+s5v208sv1IJr4UKVmNGYWVKJcuO4+plKwQ9PmuAa33a4x25RKSB+dKj+C1WNDm8mI884K7xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eOZnyuRT; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-3652d7800a8so9294611fa.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 15:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760652745; x=1761257545; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mQg/ICgMWrNLJ+qVKDXr+wEji85IYihnhnnRuN0F69c=;
        b=eOZnyuRTjvaSscSdThine8D4RUysMa/y4xxZ0nzfuSRe2qs/xf6tNsiBCd/VViTc+O
         y6lUR/Uibu7xA79mWeQL96jYOELf6Z8v8OKFQ1D/DCnrfkzRiezC71Isodu74Sg4ATqC
         Q8vevtAzxZwUj4p6ar3KIPsZkxn/REV+CQB+lL62dDfndxpn2Dy+05nlQn5SUVn79bOu
         cltZVqXEMgyJeOSXKd3Lf3kA0Q1SZ5rrvR+Ki+XOHESaQCSehJ94jWYxfPVNOWxUxDex
         7d6U96Wz5JCJaWUlIRxSZT8sDxIN+JCrWaIDp7pjuQsTYaK8z/VmsRKmtV+8yANEo507
         p87A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760652745; x=1761257545;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mQg/ICgMWrNLJ+qVKDXr+wEji85IYihnhnnRuN0F69c=;
        b=pAbc9tCjOBSI2yU25RDYzmhSgMOleNj2Q+H7VP8Jl6kvEqrgStWerUyCuL+V45TJaf
         VdRsCssEWGWWsB+ZZpcdZZkGvN7+DVFNhWIKZNM756sVsqlYd9gO+2Zx6sDHdyh3CYpk
         YNAv3GXvFkWQARPUREAPLsM9hVNfYz4sFfBQPtRsiYz/d8o9pRWICPsVMz1aTmCjOLFQ
         9o80p0n3mwgxyW5Ymuq8nBoehQNMU9+L8NEEcuh/uCfy+FsL2Zvs9QCbFP4a0RSZn7rm
         Tp62N5mkLR6c7qtRkQcw55Dpd4bkzw6lTe40OaxU9mvQ60Vz2fzm7XGFdOKqCqWeUip1
         mHgg==
X-Forwarded-Encrypted: i=1; AJvYcCXwYwyqOtCJtyvYgcE/9y7NhYtLCBQudrTaQ3uWfdzf9//0pSgQxhi8os9Cdh7eSSCnRFvkD7YiNlzX@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1HgyrcssreJ/5XB0mRSzsFNmjOlGXr+wbS5UJiR5pW9UNpL2s
	G/KDerMK3hQicmupIPcHfqrcbINhQ9jFv1dO21n8Ufjw2RGHW1dr05FbQ+pYp+w/lZBSNZNcuvV
	3JyP5GX4SFa8DbwkZkCL3hz3Y9iS0R5eQH2koE1N0dg==
X-Gm-Gg: ASbGnct+UtnPQt0BJq6WsWAE62ctPw75O2ZPPjHu++BVBDKN1I1+ZmZcwp/F8nqbcpT
	ifbUDErVWClplkpyeDw3jaYqwZiIdmxorwKneDtq7BtTXA6KVqzN+Z+iv4bUQRhvigbJx+5SpWD
	QNa8U3fRHGB+rW6WHDZwEsLuyvxQq5tDs+dp9NsYWxPZ+D/GLAU7I9VuPqRnL9rkNznsZwv7mmB
	Cd0TybX1JI7I2+lh1VHjyoe5cZZE7bz1nvTjHrdp1bt3i5Kmhue3e22QBm4bcOaELKBJeM=
X-Google-Smtp-Source: AGHT+IETNEjPulnwiJEaZdRc0wH+lGlrNLWsrrUjpY6RycGygjNZ/Td0MfEPQ6uNRg6Pg81UriqqHMCpfUkXWgv3ujw=
X-Received: by 2002:a05:651c:1595:b0:36d:501:76d5 with SMTP id
 38308e7fff4ca-37797a0e6fdmr6276421fa.26.1760652745154; Thu, 16 Oct 2025
 15:12:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251009223501.570949-1-jelonek.jonas@gmail.com>
 <20251009223501.570949-3-jelonek.jonas@gmail.com> <CACRpkdbCw1Agnsy-aYPs+2PhQDFjj+=VjmGQBmxuCUfwRuWkfw@mail.gmail.com>
 <22a84772-0e54-4b99-9bc7-59e7e4633807@gmail.com>
In-Reply-To: <22a84772-0e54-4b99-9bc7-59e7e4633807@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 17 Oct 2025 00:12:14 +0200
X-Gm-Features: AS18NWCQeU3PRrgCI-45m0Qnjsaps5imw3vWqXQ6TlIlAkiw0OaRW5Kow6BCtE8
Message-ID: <CACRpkdZ_UjOBv2JU3VfWZYa41LcAhRmUzQCpni+pJViFRjvFTw@mail.gmail.com>
Subject: Re: [RFC PATCH v1 2/2] gpio: add gpio-split driver
To: Jonas Jelonek <jelonek.jonas@gmail.com>
Cc: Peter Rosin <peda@axentia.se>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 16, 2025 at 5:37=E2=80=AFPM Jonas Jelonek <jelonek.jonas@gmail.=
com> wrote:

> I think this doesn't really simplify things her. As far as I can see the
> GPIO forwarder is more targeted toward 1-to-1 scenarios, requiring some
> (or even more?) "hackery" to fit to my 1-to-many.

I see hm OK you worked on it so you know better what
will be most elegant here, let's see what the others say.

I'm curious what v2 will look like!

Yours,
Linus Walleij

