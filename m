Return-Path: <devicetree+bounces-153639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C70BA4D5A2
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 09:03:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9938F7A6A58
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 08:02:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03CE11F8BB5;
	Tue,  4 Mar 2025 08:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XgBS43XP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0A71F891D
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 08:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741075412; cv=none; b=Mv6p4KPKnagF49GJKFC03ODgIEDcfnEAR6Y3nqxN/fqQtakPyM8h0nM5uC/QFUVE5knKBpyi6zRxfJNy0nGwhvOlkYRH3QEfdXktP68piOJPLsgIxQz+CAEota8Prm1DtfO1lJTSXvxaqDQZyDSfEDEZI6iLwzR9WwFfd22OGck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741075412; c=relaxed/simple;
	bh=EWe8gI4R4FHNMWsnAQjhbpx1Z/7MLSX/ubJdkM9ZdEo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AeFAi5N4l50EpK49TaHlmm6Y1baJtBKCV6MrxYRdJLyoEStgmjgZTtXiw1K0FZaNZW1rGW5Wn9M/B6XavnWhpL63zhm9ogR04WlxiWMnWH2EOqFGz/gJBjr8u/aZ1yPNLayB/aZBaZWzLU4iwK6eKODjjCYszbhC/sRSFrbstFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XgBS43XP; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-6fd3b6a6a24so36393137b3.3
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 00:03:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741075410; x=1741680210; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EWe8gI4R4FHNMWsnAQjhbpx1Z/7MLSX/ubJdkM9ZdEo=;
        b=XgBS43XPcG2wwxRE9KV5jdzfqRfVF8+N+tpI7MQ2IFFxNq+nXrlhJ2i3/FTXxTSVEM
         v8RM3LKSEYuvXOvfVNH8Mr+xkcPsRsaGbJF+LRYJnagE/KcgiN1A1PCP05kPhs1SbnQf
         ScqXjYJDKFtUd/WLxDSQZQZeEUTKNUFaMQdfidaxn5hOYKAcYkpBUzWGjDmBHP9eBJvK
         qYdhmnGAipqPh6ERSydEsQEaa+FXg9sHlfuSoOC9hsuuzdO/BKuhKVL7rR85Go2yDS8a
         5/3pBW5F4ickxOBFfjtegB/meorebGuv/T9PKLdYyyqMYRexSJisblCR8DjQ0tC8ruuY
         nnLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741075410; x=1741680210;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EWe8gI4R4FHNMWsnAQjhbpx1Z/7MLSX/ubJdkM9ZdEo=;
        b=FNE4kACg2ToKA78fUrE00Ny9QyLW96xx4dyMrP6s9EwylYnc/RlRdlfFrtQ3sITeOL
         MMKnoeakc3NW//nJXYObWkU1Lf+9vXpEjHVPeTtEX5lwxExsLS0SGiMynPI8yp1H6uqp
         Kx/SRRX3DdUgJyp25e0VSwVcL+D2DV0mUTLR0GRnmbRqwRoJzZ39e5VYtbMHzeQdAXQb
         FBllAYdIH86KwTAeVgrPlSDUWS1H+jNiYgYST0cIz2cM1U3X4lqb+jvgaspkkbu5guP1
         /IKhIJnhn2PfGp1lOO0UcpzUtV5l5LSAVekGg5BFqArpXJjIwHD4CgjZDdTz1tA2DXsM
         LCSg==
X-Forwarded-Encrypted: i=1; AJvYcCXdftb0C32nvSdBCSpTD5EMwekp0SS7zJXql//vrHgsjzkj+oRrcU6X+iiss+vf07cWzA1k2jyjlyKj@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6hmg7AFuQf9xal27OLdUcs6ssXdeN0EC+0fzDJFL06QBfsmGQ
	BHSRW3jrpGhiicK5GJa1RTpkjhwIrwzKOpI+Y2B/76NwbRUMgeWYbyG9pV8pL4AOJ9ZlhNzFOSJ
	IYDATqtWcX71YCdHiZkxKENX5Q53ZwDqSirm9xg==
X-Gm-Gg: ASbGncvElSkyPtqbpcpmTf0qorT4psMsHVHgeOjMOOvHOxSMAcqu7qFTSODNBwBDtN8
	D480kALiIvhfJ9qJ0mBIy34/ivcLYAWs2NX0t22Hn/oWFL0bmxYNvDQuT6IAvmxleJiAKkIp/D6
	YFvYHLz7YlAXm//Mpn2FhCut8XOA==
X-Google-Smtp-Source: AGHT+IEEoxQEPmMeNx+XEx9rkwZRXQB9YKGVY6m/vP0iLmUHK18l917gZWQsMmtFgQl4b3vadQ/cMN9FK0Rq3Ekx2lk=
X-Received: by 2002:a05:690c:6303:b0:6fd:3f88:e0a9 with SMTP id
 00721157ae682-6fd49e2a409mr226555917b3.0.1741075410313; Tue, 04 Mar 2025
 00:03:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1739368121.git.Jonathan.Santos@analog.com> <62cb9786b02adde118db9349617cb796585ceb02.1739368121.git.Jonathan.Santos@analog.com>
In-Reply-To: <62cb9786b02adde118db9349617cb796585ceb02.1739368121.git.Jonathan.Santos@analog.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 4 Mar 2025 09:03:17 +0100
X-Gm-Features: AQ5f1Jpa3u1-3cwOQyz0J2BUK0baxhGY_dz89fz0VCdOr7PNxW2y9ZPrMs2iGPo
Message-ID: <CACRpkdbMdpQhFq1K4AbLVa-fh=Hv5W8GnJwF_hh=h3x29h203A@mail.gmail.com>
Subject: Re: [PATCH RESEND v3 12/17] iio: adc: ad7768-1: Add GPIO controller support
To: Jonathan Santos <Jonathan.Santos@analog.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Sergiu Cuciurean <sergiu.cuciurean@analog.com>, lars@metafoo.de, 
	Michael.Hennerich@analog.com, marcelo.schmitt@analog.com, jic23@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	jonath4nns@gmail.com, marcelo.schmitt1@gmail.com, dlechner@baylibre.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

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

I'm convinced!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

