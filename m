Return-Path: <devicetree+bounces-74991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4729051E5
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 14:02:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A61BA280D73
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 12:02:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BAA016F277;
	Wed, 12 Jun 2024 12:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="fnqZgEYx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C902D16D4F6
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 12:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718193725; cv=none; b=raJqK5EecEwJwOMrO5BLfUW3GySIheh2HLjfMf5isk3lIRoHcZXwvydWlUpnQGgpcy2EqXZoGDin5UEt2zkk9mzR98XxmBz1ugHQ8UjNGtu5IJ36vmHml6w9/3td6ZQqQxasBTOOUSPuc/fwyKkMZhhyrzfUgk8mh6+yLbwwJNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718193725; c=relaxed/simple;
	bh=yD6R8w4UBkKJudrIwQyum7bH4UdiU/mENrrdT4nd20I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a7Ghsicjb87hahHP+JC/+g9F+2+fyv9iSnWC9tIXEH+j4q7ht5OnXUurKgfLOGOV/lFKfckWEyQAixEOcms4lPt6LIA1vlU10U9vAW69PcFrz7oGlUNOuRwtdfJEjmJ3DpkeMr2RsyN6tEgpaE/NtTSy13XjK7eOnqxYKXY7dwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=fnqZgEYx; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52bc27cfb14so6386611e87.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 05:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1718193722; x=1718798522; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pgHNgP5mgQQhJMbmzukrZ80r1nI1t333GxSKlDaG7So=;
        b=fnqZgEYx18dNfHggOD1+6+vQV8fw1RHjlS0bzrZXoVVJIj5VyIq2EvXZP4YfH6cf7x
         nnfk4ah0AJQHeMm46e5psUFjEoJKZ6NksRHR4zJGaP4Hcp6jBwMjmCe/6vrPmpZx9HGQ
         OoWqDzY9HSdOfZUgySymyzQbQFL3qlZSVF82bUqZe7fdrpM18jGlojVTFde2XFOwW0gR
         SAv1ZoSJ18SrgXEdS9W8On3LZt0yaXHD5YePpSnGbtg4jdi9LmRb8kjz6Z7u/tQ87LSq
         m/HnNATGUv3XBPSLhCEDITN9MSlUkTHxL47DDzHMnmk5e0xCTP9m+VMN7S2cPOl3oDYd
         j7Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718193722; x=1718798522;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pgHNgP5mgQQhJMbmzukrZ80r1nI1t333GxSKlDaG7So=;
        b=LvPXlLbSmAJJupFkcf60kboPra/955NyVfip2kzQCX50OdaIAlmHyEHbAbhLj6z9LL
         f0lLH3Wwcd1P6l1z6jtjIgA94lOMATMJmYWbt97B9ToPEFzwbmqdaizFYKoyPdqbEv1s
         l9IEP897uPi/haXxv13HQX/FX3jnhnLrQVJ2Q3vEH5KsA/7XSD2btbo/BPy6vY2vrOs2
         Lg4Gauw68sip3wcgTLa2+eihlghs8JbZ/nScailjZO9KwSu8KeXlP9eogWq3w0DQ7brA
         MiwVmsQtCs4f5I3l1sEtTb081tnhZptmz9xghEA6Nq5jQHmdE9BLKD+se3/5CYXvfi/i
         iG/A==
X-Forwarded-Encrypted: i=1; AJvYcCU+Enspn5FTfhD5gKi6d/qJmcdWwb7Zvktov6x4OBpi8i3P2iP/mis0Xh1DAqScSLgM+YeiCfhIGkkYYbyq+ux4J2kwGgcgTWj9hA==
X-Gm-Message-State: AOJu0YwvXHeR4vt71PHHFt4oeetChlttedEvgOU4WXqpqabLv8iu8TA4
	2Cz8/4zaq5ugs1PP5YgCRvPi8cW6NqF9Fy+ksP6yzQx1INExroEVTWyXnRMqiSN73RjXooduXSz
	T4zcQ+sMal2ckuovCYOGQfqPVy1My/T7245sJcA==
X-Google-Smtp-Source: AGHT+IFTsWHoTu0eHCUEIDfT+ze11HzmE/etIZ7sNoJT7JzsAgwhY3+Wp9mO51T7N/HcjZr5s9IGNKEKawNEM8cxd5A=
X-Received: by 2002:a19:8c41:0:b0:52b:be6b:d16a with SMTP id
 2adb3069b0e04-52c9a3e3b86mr1025330e87.31.1718193722025; Wed, 12 Jun 2024
 05:02:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240611140034.24685-1-afd@ti.com>
In-Reply-To: <20240611140034.24685-1-afd@ti.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 12 Jun 2024 14:01:50 +0200
Message-ID: <CAMRc=Md4ayrVmiD1xPSmCrF6KrjiZGyFVpnrQt5SX46KY0WZ_Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: lsi,zevio-gpio: convert to YAML
To: Andrew Davis <afd@ti.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 11, 2024 at 4:00=E2=80=AFPM Andrew Davis <afd@ti.com> wrote:
>
> Convert Zevio GPIO controller bindings to DT schema.
>
> Changes during conversion:
>  - Add used but undocumented interrupts property
>
> Signed-off-by: Andrew Davis <afd@ti.com>
> ---

The conversion of this file by another author is already in next as
commit e4608bbccf2b ("dt-bindings: gpio: lsi,zevio-gpio: convert to
dtschema").

Bart

