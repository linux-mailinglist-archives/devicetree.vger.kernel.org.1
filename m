Return-Path: <devicetree+bounces-74878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 012BB904D9E
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 10:08:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 16FDB1C219CF
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 08:08:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B300716C875;
	Wed, 12 Jun 2024 08:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b="aE7ueDgd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D734116C843
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 08:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718179586; cv=none; b=bTaqSEosEzxTVB+jQFXf0R9RTn6LXg6BgIzbtaxGJkgkL94Vz9ijc+LpqGNAETLD03l7cgPUUF9aTOdtKFMg6E7BK84YefXPuh90tVucX2+W2aP/ExrYUcQ4QhLIZI4udOiYGeHYwno7KKbL8iXuV6LNpzEYoAEdD8w7DuZ5BpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718179586; c=relaxed/simple;
	bh=jU0s9gEKbGXmqfGEflzcwnbnMDxLuaH6EgnphUim8yM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Y9aDRGDTNg6Plfq/LwoljZyDltBYjwqgN7Zc/FKH1cK48QsxIUq8XK2R3EBKJaf/doOgwfUcYJpLaUZ/FltvXHQYGt3YcLkQc8MTiqTN2dHP2luEdsuDmbCeabIN4xsEsS0izVaNf72JR6pLw/nES9BB//RYc6xu10XH3oWPio0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com; spf=pass smtp.mailfrom=timesys.com; dkim=pass (2048-bit key) header.d=timesys-com.20230601.gappssmtp.com header.i=@timesys-com.20230601.gappssmtp.com header.b=aE7ueDgd; arc=none smtp.client-ip=209.85.219.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=timesys.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=timesys.com
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6afc61f9a2eso6084266d6.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 01:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=timesys-com.20230601.gappssmtp.com; s=20230601; t=1718179583; x=1718784383; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jU0s9gEKbGXmqfGEflzcwnbnMDxLuaH6EgnphUim8yM=;
        b=aE7ueDgd63j9DsQ5S/8r1j9nf7EPyMqv69K4YvVtXd3L8udGkjMgXHWmWsqqsOSDsu
         J8n7gJ2UhmLTtTNemmPgSxgFUVwoaywIiUURZcRICeU95rtW1u/ogVF5WAN36ttMw/I6
         6tGu7S6+BuD8PZUgnno+WvYrgq4mFtkD6tKsHMIOyb2sahAPZ8wfI8yQzRvg7YwKg7c8
         I90al8oevBCLHoemos/kzMkAkIgnk/1WOVcOEMxTeP62zEGVRSYm8JWm/UsHc4J/r8KN
         COPAputChhverY4EMy4hTG9Z+QkMGLcXJPP2TJxFXjyzPh/T5SXyaSN/4rYeo5fUdPxd
         LEkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718179583; x=1718784383;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jU0s9gEKbGXmqfGEflzcwnbnMDxLuaH6EgnphUim8yM=;
        b=nlb7pSAHAweOeeATru/kUZR/lZtlz19cSXY0fU2scfB/s5kkRsCW8sdMO0k4cPofHK
         b3fnrCrr1Yzxk+IrPkvNxBjC1K9rgf5nyewidijQRUPhjbbHYbuXm8oUSdBcEJnv+N7a
         3dzZc/RWAungF8kP+52KeA6XYV5DVol20R3UlvMVRI+tIU8rTaQ1j3HGNNVOjdviEudi
         N/lNbSEqBE7esAKCQiLENmWbsakfMgMMwCj/P24RUzWbhIwHz28W+KNG/Rdpo1YV7ZKP
         xbqBWUN0THXycASUel1wKs3hybsozPXc8SjofM6t8jo8ilQwq8AB7SprLlgIwXCxmJSr
         z4MQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdI781FZeQzBT1SDvuwOgzmBy0JFIc2aLggPDNiF6s++of1Av+3tJ5jCcl2xQKtaZblD4fN4UuJMOaEf7xYb/LwDXd8y+khr6iHg==
X-Gm-Message-State: AOJu0YzpBIhm3qeSR5+ItcC7qQPzPGOs2R/W4h+MAwdREbgW3psnvA4w
	iVf/mtBpNSl9c/G80ZAwT57CHfLRCY2KF9freaezekI5LQPdHf3v8So8XU22stIURO/iU8tUPEM
	7kF2rj1sQwymh5vlTtISQd+AcDA20r8RwslsIHA==
X-Google-Smtp-Source: AGHT+IG1/F1xQpU9EkBs57YWAqg59A4uhPeAz2DU+7fqEukJUGW0HybNnc7pOII0nGwuizPlb618ysTlXm0ZvIeJ3Yo=
X-Received: by 2002:ad4:5d4d:0:b0:6ad:752d:1530 with SMTP id
 6a1803df08f44-6b08a0780damr78312956d6.27.1718179582619; Wed, 12 Jun 2024
 01:06:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240611094810.27475-1-piotr.wojtaszczyk@timesys.com>
 <20240611094810.27475-2-piotr.wojtaszczyk@timesys.com> <51eeec03-47da-44b5-a21e-f280d0c4b47c@kernel.org>
In-Reply-To: <51eeec03-47da-44b5-a21e-f280d0c4b47c@kernel.org>
From: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
Date: Wed, 12 Jun 2024 10:06:11 +0200
Message-ID: <CAG+cZ06EN4Uw7Cy+kwsiPzu16Kp7tsF19Oit6oN6GUcSe464JQ@mail.gmail.com>
Subject: Re: [Patch v2 2/2] ASoC: dt-bindings: lpc32xx: Add lpc32xx i2s DT binding
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vladimir Zapolskiy <vz@mleia.com>, Russell King <linux@armlinux.org.uk>, Jaroslav Kysela <perex@perex.cz>, 
	Takashi Iwai <tiwai@suse.com>, Arnd Bergmann <arnd@arndb.de>, Chancel Liu <chancel.liu@nxp.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, alsa-devel@alsa-project.org, 
	linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 11, 2024 at 12:45=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
> > Changes for v2:
> > - Added maintainers field
> > - Dropped clock-names
> > - Dropped unused unneded interrupts field
>
> Does the device has interrupts or not? This should justify decision, not
> current usage by drivers.
Yes the device has interrupts but feeding data FIFOs is handled by DMA
(amba-pl08x.c).
Should I declare interrupts despite they are not used in the compatible dri=
ver?

--=20
Piotr Wojtaszczyk
Timesys

