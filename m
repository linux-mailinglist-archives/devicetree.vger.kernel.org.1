Return-Path: <devicetree+bounces-148570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F853A3CA0C
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 21:39:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 875EE17C927
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 20:35:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DAF023CF0B;
	Wed, 19 Feb 2025 20:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qrC24Sfz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE4621B0F33
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 20:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739997301; cv=none; b=H09wv8Ur9yBmuEtgVJJz8sXkvErDj/Wneldf7F1gEALltcNE9WEuOrN+V0CbZvXoi0UskvHgj32JDmAzcwcNTkUnHl6iW4HB8ZMWlXkzmc9O0iDLL9cX/Q54EAWQv+k6b4mrU1DW7ztmIG11cEGx48EeTG0Y9BMDyX7cgxX/DSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739997301; c=relaxed/simple;
	bh=tmmB1CJeqQfmQIsT1k2GUWvfj10sMcsKlDITNHP0y0E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BdIfN8nHJak55OshUQo77aaGjfwvmrWKv0tG8FwaEAE2kO9EIuraLFMTI4CcLGc7a/+JrflxpiKsJNM8Jh9dqfTZb+oPtAftXXulXvUKgkFUu+EcwDIVlFlWDmhh8eT49UcHlDDX9Z3xSbJOPQLUz+J9Yjcd2eRwRHrkBCKCH4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qrC24Sfz; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5462a2b9dedso298556e87.1
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 12:34:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739997297; x=1740602097; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tmmB1CJeqQfmQIsT1k2GUWvfj10sMcsKlDITNHP0y0E=;
        b=qrC24SfzifPCd/chsOHEE5eg/ij7+Rqoiy1lfyuVqdpLNT2XMPm4sv1zg+JENjtcal
         9vBYifdKFqZp/DIGw7YhyarKqRZ1g0zwwaO4VAHAnfycUv+bBhsYv+xxFQSUDlQpsvC6
         TLyTBlOGKaBFx26TOsNB+5vTou9SkZTeg7Oibk4/Z0rG2uAMcJbvBG2aYZVh6jnbYnzb
         osVBhY939AitIpz7AaMOFo/QUW/DTtz3yUUsBtOASblJRuwZyEuYVsces0O4uQnJ0nzm
         PC/Jd3yLobueKoVUkyl/20JDTsW4jZpFzRmI2P2MXdS752ZuvXYcoiAs3mfS+QCoyxii
         yIlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739997297; x=1740602097;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tmmB1CJeqQfmQIsT1k2GUWvfj10sMcsKlDITNHP0y0E=;
        b=gV6r0dHLLb/V0MRrzHDk+//NzGRbArIrszOhf6hQEzl+oiGIzfu8YpcArV2bC8OcnK
         sQKdPAtlV/rBpnhuOKIWDB/VpbJ2bKrySRH32ghnDdWyx1g9PWUfOmKD6DP/67M+BCVN
         CA09FngVH+A4uugVS8rEq2RYz0KxM392LxVz/zP4XwAyplXu8Rr9iX89WAaa9TOkE40+
         ZLh6P+ExBIpB+MHBc5Fj+Lxsc1NIgBdUm+Rjf+hyB4wRLFtLlHQ1wtdE6RHYKqfILsAU
         3c1VyzlOjcbHFEaMXXHT1VH6KpDvlChG/H2JGYzSD0rm0U1sf0+/IBg0UUd8Cxz+vScd
         zjZQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOAGQm3MxxQPi/UCkFz42ZHsW+6NtuusoXcV+77EabLiJt6CRox3DJvgmlJz9UuTR8dRsx3xpP9s61@vger.kernel.org
X-Gm-Message-State: AOJu0Yze+AVQ7sqV5iDxLjd8vkU9q7KfJObejXXFqTyceOrTuA5+hl4P
	RR1nFF3Dwtnwjq8ufldRpkNONNWMt9p8WaCuDL/mJdFrHjtDjyH7ijjOFakx2DF45U1ab6Kk1qz
	RFP9PpNK7V88/s2TUNHCNs5QdaDXr4yv7uCn/MA==
X-Gm-Gg: ASbGncsU+OHwO2NsbuF6Pyr7NIJEQq4136nsfXkbF6pGbs2Rzdf5cdtZ2LvcnYuBERX
	bhDpFIGZ+NJrEkuVCTonrTW7DfynljpaDmY2uXQxE4M5msYV0E5u+QdxuB0AX+ddXwCTFPDJ4
X-Google-Smtp-Source: AGHT+IHbToAtZe/z+uRFGIRnNv1BDrEH+lc1qU1hrhcx1euMXlKTWhbbehSpK2l1rH3kiLuqYPFivyA0U+9MmTz7gF8=
X-Received: by 2002:a05:6512:3dab:b0:545:2fcf:642d with SMTP id
 2adb3069b0e04-5452fe2727cmr6277433e87.6.1739997296872; Wed, 19 Feb 2025
 12:34:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1739368121.git.Jonathan.Santos@analog.com> <62cb9786b02adde118db9349617cb796585ceb02.1739368121.git.Jonathan.Santos@analog.com>
In-Reply-To: <62cb9786b02adde118db9349617cb796585ceb02.1739368121.git.Jonathan.Santos@analog.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 19 Feb 2025 21:34:45 +0100
X-Gm-Features: AWEUYZmqmEnkA-aLVYEYk2CgVjDlg2QM-jTEjVJlaUmymL8juT9oZ9shwBapvIM
Message-ID: <CACRpkdaSY7WH191makzPcZqLd-vBsC_f6yagWzBa65MrC+pjKA@mail.gmail.com>
Subject: Re: [PATCH RESEND v3 12/17] iio: adc: ad7768-1: Add GPIO controller support
To: Jonathan Santos <Jonathan.Santos@analog.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Sergiu Cuciurean <sergiu.cuciurean@analog.com>, lars@metafoo.de, 
	Michael.Hennerich@analog.com, marcelo.schmitt@analog.com, jic23@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	jonath4nns@gmail.com, marcelo.schmitt1@gmail.com, dlechner@baylibre.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jonathan/Sergiu,

thanks for your patch!

On Wed, Feb 12, 2025 at 7:20=E2=80=AFPM Jonathan Santos
<Jonathan.Santos@analog.com> wrote:

> From: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
>
> The AD7768-1 has the ability to control other local hardware (such as gai=
n
> stages),to power down other blocks in the signal chain, or read local
> status signals over the SPI interface.
>
> This change exports the AD7768-1's four gpios and makes them accessible
> at an upper layer.
>
> Signed-off-by: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
> Co-developed-by: Jonathan Santos <Jonathan.Santos@analog.com>
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>

Is it not possible to use the gpio regmap library in this driver
like we do in drivers/iio/addac/stx104.c?

It cuts down the code size of simple GPIO chips on random
chips quite a lot.

Yours,
Linus Walleij

