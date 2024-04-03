Return-Path: <devicetree+bounces-56007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0268974D3
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 18:05:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7AA481C25ED3
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 16:05:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED2D8152164;
	Wed,  3 Apr 2024 16:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="lysfZgIV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C340C14C5B4
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 16:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712160189; cv=none; b=quXkloFPw3eljPepBdvlSVLfnPvr19ngXMhS1gDb/sdd94w8ee/B4kz/HTmlRgs+q7VNlSJOz6klcaABbG7rhfASLkSxU+MWd8qviRsi/WRCwG2nkJ3DSwdYQRuFXshxI3Q4UKWNtDIyO+HtnxsR6TmlttdQgwxr064zsfoow40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712160189; c=relaxed/simple;
	bh=bTvBBqvM+g5SfRgI5quUH3wnImmHOZ6hz4keoRzRwYA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LQOQ6IjsopQGIIkPFYeIlMh7SGyhBVR0ULWYQQPzHXA3oNfZPDyvM4GYX9Bn4S99dncKUuq1AE9BNMjr3XMAl109ePc+/T0hDMpfcDk+ruJ49g3QyWkl+vjRXnAuNC6UD07uo05h7c6zRUvWkVPa/74dS+av1CfkA1U+eEX+SvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=lysfZgIV; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2d68651e253so89970151fa.0
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 09:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712160186; x=1712764986; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bTvBBqvM+g5SfRgI5quUH3wnImmHOZ6hz4keoRzRwYA=;
        b=lysfZgIVx3yGO4yCEHgHksvCJyLZJOSKNM1o51kCRsFcKt0ffydgvcacs+e2CJhalE
         amAe2kB1J0l62vqS481GGm6zr5P6H6fPT+I23+9CLsuu4DIzd2D37pU6C9y/8PirFQsu
         lPVlCpg0pegWs+hsQlR2ox+noaCGJ7xCpyCuBtYb6PSBnkmfkMBwel9LJrlJoDpibqQD
         haJURm+RDc8MLLnWFmKejOIKGH53qLC1WOggov0G9wLXqQ6rjgFUw5ymVDlkz5uTotE5
         jOgHXEJsvOkP5H89oJD4KQrxdbIam1zNMspBuXUy+vtL2p7Qz1XeTHHtz9VSAKxdIiaQ
         OmeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712160186; x=1712764986;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bTvBBqvM+g5SfRgI5quUH3wnImmHOZ6hz4keoRzRwYA=;
        b=YdLID6T2aj2dcX+8NPSlVPuV/doq6PlpZzUMMjne5xAdsNEkj1KzIzrHWKblvoc6Lx
         FIMGrFeQq4Luhsr14M9F0FvgtUlj8O5Zvn8g6nBI6TujDwofPkeBP1x39KeaiDZVVoFt
         0afuwZcys2iGxAr7bVYpQ+9PFqFl+S6xz2g9GCRfcwOiS5+LVGdPrRzgLyt9jyMcUDik
         k4gL32cbeVYwoY7yb+xzdzt7xqIuuUvbxKX/B6G+hm1aK2mPDw8bGuaB5qF3lP8ozIQr
         yNqKEtNJlAv68tp6rawqCI5j12I1nYpQCugRl3EpxEEixFDqEm6MWxRoDyVlSeQ4rAYj
         C46g==
X-Forwarded-Encrypted: i=1; AJvYcCXyxspElwPOjA8uVh+AP0f3qyeRRTJfxmei3M1P/mo+3wb/cPYNXKK221GcIeJvDRb9IK35UdRNjyYl1npkZYoJNDXfMKsWaJvXew==
X-Gm-Message-State: AOJu0YwM9rhhZhNQ+YdljpSAXxEQL2Qo4rUt7EUcYIUFMszr5RhnJLMo
	h8cpBc3Mkc86Idw7B/fre+2BBITxz4WCG2zWRP+0Qt86A33axuYhZLNRyzVUSWTBDcXgyVpybuR
	vcCl/tLCjK5Fw3Vu282DKVdj/6NZev9qsol9n7g==
X-Google-Smtp-Source: AGHT+IEfI5ofSa8HbRO6qzAuEu/QevNBSZtDcMguGLWWWkpuGtfcQ39NMJwhn9Ea552v6Z/oXcGuYOl4UC7bwCiesso=
X-Received: by 2002:a2e:a68a:0:b0:2d6:fc0b:f122 with SMTP id
 q10-20020a2ea68a000000b002d6fc0bf122mr9938lje.18.1712160186030; Wed, 03 Apr
 2024 09:03:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240401-ad4111-v1-0-34618a9cc502@analog.com> <20240401-ad4111-v1-4-34618a9cc502@analog.com>
 <CAMknhBH8UEPSyYiyMPo4en4vcjnJ7_W5q+iJtMOhdp5eNmP=8w@mail.gmail.com> <78cab1a4-e085-4df5-bb8c-277fd5ec3d70@gmail.com>
In-Reply-To: <78cab1a4-e085-4df5-bb8c-277fd5ec3d70@gmail.com>
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 3 Apr 2024 11:02:54 -0500
Message-ID: <CAMknhBGZ7jUjCk65v54ayGSUA2-qcaCEmKm69TcJA+Ups_r=ZQ@mail.gmail.com>
Subject: Re: [PATCH 4/6] iio: adc: ad7173: refactor ain and vref selection
To: "Ceclan, Dumitru" <mitrutzceclan@gmail.com>
Cc: dumitru.ceclan@analog.com, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 3, 2024 at 5:03=E2=80=AFAM Ceclan, Dumitru <mitrutzceclan@gmail=
.com> wrote:
>
> On 01/04/2024 22:40, David Lechner wrote:
> > On Mon, Apr 1, 2024 at 10:10=E2=80=AFAM Dumitru Ceclan via B4 Relay
> > <devnull+dumitru.ceclan.analog.com@kernel.org> wrote:
> >>
> >> From: Dumitru Ceclan <dumitru.ceclan@analog.com>
> >>
> >> Move validation of analog inputs and reference voltage selection to
> >> separate functions.
> >>
> >> Signed-off-by: Dumitru Ceclan <dumitru.ceclan@analog.com>
> >> ---
> >
> > Same as my comment on PATCH 3/6. We would like to know why this change
> > is being made.
>
> Move validation of analog inputs and reference voltage selection to
> separate functions to reduce the size of the channel config parsing funct=
ion.
>
> Good?

Better. But it still only says what is being done and doesn't answer
the question "why?".

"to reduce the size of the function to make it easier to read"
explains why reducing the size of the function makes it an
improvement.

