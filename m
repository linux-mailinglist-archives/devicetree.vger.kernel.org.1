Return-Path: <devicetree+bounces-251027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A95CEE281
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 11:20:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C0DD9300699C
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 10:20:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 852712D63EF;
	Fri,  2 Jan 2026 10:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="H3KKYNCl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC7D2C3768
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 10:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767349210; cv=none; b=QtO0Ddr94GVgEOd+BNG9UPB7p5yep4wId7ViNCpBaeh4SXrkHKuZt0IkCxy2389nenZysg2z6QlhQR6y1EwLKwb3a3MlLbnkZcCPsKVwQqPgDt31BvuhmlFRExiuImL+SuV5VZyIHp/gSII7X54tGH00Wk/RkZCBwCWFdx0ocTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767349210; c=relaxed/simple;
	bh=WFRLXXrWG5laFAL8o5x1rIAE1Mvd39kt6b0GYzsOmMY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CICN/8W+W/Z/Vnh3lTJkffqwO5KSXZAnSm720bQQc9C2tyDQ6aMya7VEet8WHCowcR5iHIaBgCbz/fsC5nha8C0nTko3rplj3quIShEirB4IPWU9jSQlUhiuqD1m5QYw3vgd5gSq+Jntf0PE2HbRKr+H/BylXOp3/WtYjFeKnKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=H3KKYNCl; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-37b9d8122fdso97794261fa.3
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 02:20:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1767349206; x=1767954006; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WFRLXXrWG5laFAL8o5x1rIAE1Mvd39kt6b0GYzsOmMY=;
        b=H3KKYNCldhDnZvb9Qw/IYM7cuwKJrlsHZGb00vImbQ10vOEEfz84ROHwhICX8y5Gn3
         m+empeRMs/DCpGXaY/SXhMzDUstI9sbhm0CBCkKxcCnlt/51/qWGp0qoGor5Ui8KbHVU
         ykkU6r+KWPqh10sshiJNJ1ZYkeVJrsDdKjBLptDM1x6fwfpSZ/O0FAne28XN+399GPkb
         WIMbBrCf/FJwKwIEjONLCVT1YZCg2KvdWF/YyV2w8ied6aBa9zBZr83imFFB4Pi+bR33
         7ky9SVyKxfRVg9RBLYBV0QMjvb8ox5bgQUGu9GkKF2TAfbn2mutoGwHwghGH2RXjMhJy
         paEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767349206; x=1767954006;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WFRLXXrWG5laFAL8o5x1rIAE1Mvd39kt6b0GYzsOmMY=;
        b=G9YPTY3mM1mfNa8A1Q2aFE70Xe5FleAQSHoFQws2naPKWhxU5qjifpGYSzmKg4qXYJ
         Dnfjaz6wktTNNWVTLUEY3zgWj8HahdYpui6m8iQYr5hjroWGYMH2q6EI1fSy0/Ab5zJZ
         70Zra76rjNOmn8wubtKUGG4CZzRyolnhbOrDXzcohUFjm3mX1aGsRqMi5HG6kvI43Oh7
         8jgA7FOfFsw5+A9CG7Ozr0fJcDyST3DDtwAglvPEfOaRMIaverMvQIWtA6oUw/s/j7QP
         mnkGFXhxd5+tXEWpde21nImYJjGJbxWuyn+D+6cY+UWb7lfGs2DWlQHORkjMnQE4TGJb
         bdgA==
X-Forwarded-Encrypted: i=1; AJvYcCWfFygJyEoHxQCPz6Pk6OYY2FljA6VsM4aGtItozhKGL56HvAkYMkXewvzaeaONNrT1/40VNpx7QGZG@vger.kernel.org
X-Gm-Message-State: AOJu0YyZwaFoYHUha8zC8I62sZ810s6JNNjacE9ibodbRp5/ZAuUZ2o4
	LOXw18YSiGJ4eJ1o8XaUZh/5fLJNzh4RSwKzbEglyW9YztIryArKcUKPPbLWrt1BWm5rKB0na2Y
	AF+J0tpT7TH0OlR/KkXRQqMcND27jpAXBQohB0iX2mg==
X-Gm-Gg: AY/fxX4mTv8Ocx+c04P4Y/XAZM3Z48iseX67jUMTmToIHjQc36kU+ZfWxMZpKiMRF+m
	/Rb1kIr7l+ROAuqk0PlOIBvr/NZQVWyxOfg6aMrk/gBIosTuerHTMwxx2TEsFryLkxUTg9GvuYp
	jcGF/UucSxFh7Vu5QTtc1VBxNiJ7DKq2D3u7mWdSkrjA1+9pp+Wri7bjNQUocJwiJcVZQOXXrBo
	rufP3otO5LEFhJaMA2YsIw6TuS7yjD2VvryC+bKYJw2dTaoWf/Bsh4QC+R+8dd5opI9j9iHvOtL
	xWegVTKmS9BIkeRK/v6AdrLHE97MuOQZQSOgdw==
X-Google-Smtp-Source: AGHT+IFTrNnAEzvneaNdkZRQ0grp032lEIuBA9cgcvyb1zEx7XlupkDM8pVGx6rm9ItHKSNq5q1wSSdpG4U4SEDh1SM=
X-Received: by 2002:a05:651c:1b96:b0:37b:90fb:9caf with SMTP id
 38308e7fff4ca-3812169eee6mr123154701fa.41.1767349205784; Fri, 02 Jan 2026
 02:20:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251227-s2mpg1x-regulators-v5-0-0c04b360b4c9@linaro.org> <20251227-s2mpg1x-regulators-v5-21-0c04b360b4c9@linaro.org>
In-Reply-To: <20251227-s2mpg1x-regulators-v5-21-0c04b360b4c9@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 2 Jan 2026 11:19:54 +0100
X-Gm-Features: AQt7F2oHMGc2bHvrlqFMv9ZOlJeQnJLO04A4hnwhyHf0_SEQbbpjY_L-KGXAL_o
Message-ID: <CAMRc=Meu6-5569rMcV0zf2V+Sz_QZgShoEhmhw41k6fczULcoA@mail.gmail.com>
Subject: Re: [PATCH v5 21/21] regulator: s2mps11: enable-gpios is optional on s2mpg1x
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Lee Jones <lee@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Linus Walleij <linusw@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 27, 2025 at 1:24=E2=80=AFPM Andr=C3=A9 Draszik <andre.draszik@l=
inaro.org> wrote:
>
> For s2mpg1x, enable-gpios is optional, but when not given, the driver
> is complaining quite verbosely about the missing property.
>
> Refactor the code slightly to avoid printing those messages to the
> kernel log in that case.
>

I don't get the point of this - you added this function in the same
series, why can't it be done right the first time it's implemented?

Bart

