Return-Path: <devicetree+bounces-168184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 940E6A91C30
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 14:30:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82B053ADC13
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 12:30:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D19AA24C094;
	Thu, 17 Apr 2025 12:27:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="2/hYdwk0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E25CD243968
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 12:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744892859; cv=none; b=oGvp8IklkOBk/7krWc9L3RSyHSDxj/NO9cHjVrd0rb9JafFTRqAmzZ337wF+y59h8HjwZeFJXPUgdjhO69qhHbiFG+EfKtmBsIsY8cVUSnjnetumKdmQUCSpuL1XLXatJxrBZKF9kyLonanIdMlUOPsxb0VXHEroLuDeMkH+/cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744892859; c=relaxed/simple;
	bh=9NKg6PS7oD/l+zfSC+Xp+QqcvMbLijtqCOUIAHZF8ag=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ItQb6U/LlqrcVMyMmyHsiy1h1enVxjFItGYDEzlPQ1VfXushvHvPZa2KmeXLX51YDVzOlps7zV7E8gMAtRy9tYTcqi7MMK0nBnXnc0KY9U3kB6Cd8XzmArCwC6KchBwpP+b37dXnyE+2A5o3qRs4aHTNmLSqa8BE/FDQ5bicOrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=2/hYdwk0; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-54298ec925bso179809e87.3
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 05:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1744892856; x=1745497656; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9NKg6PS7oD/l+zfSC+Xp+QqcvMbLijtqCOUIAHZF8ag=;
        b=2/hYdwk066sFzbJoWkU7fPCmiAsbGnXUyXX4svRtryx42BJvDJrFASJtpqRp80Aee5
         2QWIn8bQ0CUCthx4uXORtxqU8hyPskopHTMUnunAEgzsuZAGIM2GwAWIw8fBLLgJS3hr
         o3qkomxXBWAs+LDZkSf5Y4r3NvFuIOo+VVbOMDpgNfExqq0LWNPzCWuBiInnvQnetxUN
         yDNRjJiOMLr10PotQ0/s8KUVPeoAryT6LJowmMFAktMn3u9bfRrUVkVlzzOD5L9ViTQA
         Uqsb3C22n4qJkKVEt8bOWtj8YEZ4kGPIrPAvYcsesxV9WpXXu3nwNcTXCZSYIlNurytK
         n2Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744892856; x=1745497656;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9NKg6PS7oD/l+zfSC+Xp+QqcvMbLijtqCOUIAHZF8ag=;
        b=pU1wbr1PS06coF+GRLYPZUEWpSJaQ4bCQSS/W9FE/6eEjw1uzn8AeANP+z9lO36cYI
         xD9jqyxpsQsIzZVRqapnMaGe/HYgu7yX1ZmKOiy3GLQOY9XvDfIxb0rv5lQEn1rfP6fy
         ZDKP191a/0ft7nnawnks2RJmyElScbmOEb455Y9LNaiYCyQAhwOOnKgaxh1jBBBJZadN
         uvk0GiILRcimz1N97XkR7C0SPLau9binDfi91i3yyvOxd0ItA7sXuRun0ssYZuExqlag
         yIEeIs1vZpdxybjFvdnxqmv622AXdg8U7V59ACo1U6Ioyn6zzCoRWOMGhOExYpGsbNud
         +ybw==
X-Forwarded-Encrypted: i=1; AJvYcCUl0hhIWeIkU+QgZnZYRjfFjmM8KRb2Dhoo/YO7T5mX6p2UfYdg+1sIKbhqhalzivhNkXnCsKROJO0B@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/fUZ7aej2RHhlxKvar0j+KcTyHmotntmBEnX7CrIyyo09vqJl
	CuAuuqqtW603kwhVSqvKuS1TUtfv90+YwIGCgbsEPE/XUF1DLuxxBR+ViDrvA/HHGfQAy5OIl0C
	NCffH31/mM1HQvAuZuJ7V17WUosxp8ZQltktqOg==
X-Gm-Gg: ASbGnctnDJeM96JEeAUnZyX82efL09KyYpDPYpVRpQHlsUmeNl0afh6wYR/CsCc2lvT
	XpMM+QKbyvHfdY5oaIK+jZ3IteuPYcvddy9OP4iPe5ordPYabPWxVnr/gfWovZ6s/uZWl38rgBq
	ZRQs0jVaPJA5PUPWQLKN21D/y34FD5SCtWRr7AuunRxUU97e4ayYgsH+0=
X-Google-Smtp-Source: AGHT+IFZOoiDU7kWs1X+sCTpWHGvxIIvcjIqTCA600Miin8QaMSdk6AXbYYAHuEwzc6M8mK/9c6pIQAEL2l9q3UmHjk=
X-Received: by 2002:a05:6512:3f1a:b0:549:4b8c:a118 with SMTP id
 2adb3069b0e04-54d64a9d245mr1726654e87.17.1744892856029; Thu, 17 Apr 2025
 05:27:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250415-dev-adp5589-fw-v2-0-3a799c3ed812@analog.com> <20250415-dev-adp5589-fw-v2-7-3a799c3ed812@analog.com>
In-Reply-To: <20250415-dev-adp5589-fw-v2-7-3a799c3ed812@analog.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 17 Apr 2025 14:27:25 +0200
X-Gm-Features: ATxdqUEPbSWIENGhz4BdzfBTUTk6pTZQZuEjOvtQcIyKmHMmtvyGYWdKsEknmBI
Message-ID: <CAMRc=MedvDwXVXPWRR+6xh+LpVsZ5a_Ja5ANoJWRYNYiASZ+LA@mail.gmail.com>
Subject: Re: [PATCH v2 07/17] gpio: adp5585: add support for the ad5589 expander
To: nuno.sa@analog.com
Cc: linux-gpio@vger.kernel.org, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-input@vger.kernel.org, 
	Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Liu Ying <victor.liu@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 15, 2025 at 4:49=E2=80=AFPM Nuno S=C3=A1 via B4 Relay
<devnull+nuno.sa.analog.com@kernel.org> wrote:
>
> From: Nuno S=C3=A1 <nuno.sa@analog.com>
>
> Support the adp5589 I/O expander which supports up to 19 pins. We need
> to add a chip_info based struct since accessing register "banks"
> and "bits" differs between devices.
>
> Also some register addresses are different.
>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Nuno S=C3=A1 <nuno.sa@analog.com>
> ---

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

