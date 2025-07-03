Return-Path: <devicetree+bounces-192492-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E00BDAF6D0F
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 10:36:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 23897523CE4
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 08:36:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DD492D1929;
	Thu,  3 Jul 2025 08:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="qBUXl54i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A942D2D0C81
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 08:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751531769; cv=none; b=SLnjcUVBE8tJv/0flEP4OHfFX8JI1H7vSBLExEYw9K6zC/a7nZsiYH6fu7mc/JCJlW2CiHQdXZRnFqBci5pqNY3czMmmDV2p5jtH1gAagud/FJbdnyEZcd+yJJnYbLWEtjFHB5oH9HNF7FTQLJjbcq4dfxHP38MpnNEVIGhdjQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751531769; c=relaxed/simple;
	bh=yCgvEF3BXwg254BL3VuI6mSXhUcwMOdng9eK89uzkVc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UYLoRb60ONWLEdFesDvitG2Y9i6+Y+G4nat9lc0RgHbS3tGeN57A0r22kzMJ8+aXOF93Rnrwl+6Q+toaIl+4AHlqnHB4HKLt7qAVrTZEK90fzRf30Tcl8gmDpOansZIUEMbM/Z28wJokjc29gHmryTV9O5CpQz4+fhLj9jtfAzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=qBUXl54i; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-55511c3e203so5258216e87.3
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 01:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1751531765; x=1752136565; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qNAqI6qp9DPwgHXIMziYUYhWIJDnhFlRLmGxn/xudMY=;
        b=qBUXl54ibB/dGWkpR/I2WyS/E15jfFW79yGc6qa1VmQ3AXeaYC0ro6eYqlzjVFCN68
         3czFxQqGStMCmtbWwNrtAE6XiG4jWfN/uyCoVKVJGJlknAkVyvwkKGTn0+x5XZK0uD0N
         HsBDaEDl6UT0iiSS7ZP6AVpcuVbXb29uS7qYanZ0oLG/K1D0hLIgQzzUcdCq/8i3Prmz
         sb7MECuu63Hn+KGEV2vC+paqfoPr+Dpl4IIwEY7NjKnyX3/04cfE6SvqY/+ER4Fe0DEZ
         7dzH5Wz6MhsuVv/I4hhjcSigYCrccvwagc6rJe08KB0LuHqmVRyJlB5WbZpXdbv6W7Tc
         2Zlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751531765; x=1752136565;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qNAqI6qp9DPwgHXIMziYUYhWIJDnhFlRLmGxn/xudMY=;
        b=BHtoqSjMKpgSx9oUWwjwnSe0vfaZkcukV/el7HmpvBbHjojFpjyZdlN0kJdHmkT3BH
         7ubiHcsSH6IAbUtpVOv5YW0EKLzGQXY4jP+spavBe9AZbN9GVWm74XhFgLHQC42Ap2tH
         lPf0Peq8HPi0vAzUiKCercJV+VQON7cTLADXni7aOSCbbwi8EdeKMiPO5661nDwyisaR
         yPZGLy5zVQiSskCSJiuc4GpQBItF1p1XIv098Gs1/Fl25d7xXwa0HYc2TuOyDH+6Qmfn
         8zs871gl/dJPiQUyt/17cS+DoC8MKQBN+tsjXPTS73piXKSA7xUBUXuDHD+4fRqjgnIx
         fjzA==
X-Forwarded-Encrypted: i=1; AJvYcCVVUaz5QDbe4JEoEmZEWzrLuDM2VsjCdRv6QMooYxVzwV9qOBdPRVKjn55BPLDBcSUjnVuYMO5BUo4t@vger.kernel.org
X-Gm-Message-State: AOJu0YxuyA90tj/tN1CUTBahtjj/xJWhIw5B0AWZnQ+5Qz34+VBouPjZ
	PIit4NCJAv6sGVNRwwpXaCKlK608A1tdDspZPKfFX/L0hIT/qJWmN+Fc7KhN8gtl7EtzsiFVD2q
	w5atg+VJDDwYhVDh6DuOET9g3e+vjiZDaTpuwcYLk+Q==
X-Gm-Gg: ASbGncvaksolfy5Sz4CsYEjPEK/tVLwSvD/9m7FC6njlaMJKjJChvYyuWHK+rgSe/I8
	tqqiBDTtCgjiiEKnZ6SMTX3jTFZ6kGhBMtmyLPAH6jAiX/AtNXdM9fEnfFKb528kS7xd/1ZcFsW
	biC5fPNvpNrWM61elp6pTuyN5+29w0IeGLb0UIwM+VUWcM03OPglcPE289bQ+Nxw9SgWWJ8gfAT
	Q==
X-Google-Smtp-Source: AGHT+IEuPyZAYFCdmQ89V9IkFw3Ed/mlCz+VFY/HSyYfKRFKouDT5YAQiOyUj8RrcRrwDGza8mWYWDjfTyIwVp4+DXE=
X-Received: by 2002:a05:6512:3994:b0:553:341f:12a3 with SMTP id
 2adb3069b0e04-5562ef9a6c8mr676826e87.39.1751531764763; Thu, 03 Jul 2025
 01:36:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250701-dev-adp5589-fw-v7-0-b1fcfe9e9826@analog.com> <20250702133609.GQ10134@google.com>
In-Reply-To: <20250702133609.GQ10134@google.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 3 Jul 2025 10:35:53 +0200
X-Gm-Features: Ac12FXxFfJbvdzw57rmctFgHkWKx-gv4baKpEMbXxjF0v8UThJiEjLVfc7FisWs
Message-ID: <CAMRc=MfSeJrAatC-42upkH5iWYxuNvR26ZfHS=1v+XewspGnJg@mail.gmail.com>
Subject: Re: [GIT PULL] Immutable branch between MFD, GPIO, Input and PWM due
 for the v6.17 merge window
To: Lee Jones <lee@kernel.org>
Cc: nuno.sa@analog.com, linux-gpio@vger.kernel.org, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-input@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Liu Ying <victor.liu@nxp.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 2, 2025 at 3:36=E2=80=AFPM Lee Jones <lee@kernel.org> wrote:
>
> Enjoy!
>
> The following changes since commit 19272b37aa4f83ca52bdf9c16d5d81bdd13544=
94:
>
>   Linux 6.16-rc1 (2025-06-08 13:44:43 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git ib-mfd-gpio-i=
nput-pwm-v6.17
>
> for you to fetch changes up to 45ee66c37f9bd8cff7718c70d84e0291d385a093:
>
>   mfd: adp5585: Add support for a reset pin (2025-07-01 21:50:51 +0100)
>
> ----------------------------------------------------------------

Thanks, pulled.

Bartosz

