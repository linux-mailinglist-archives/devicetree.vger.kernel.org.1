Return-Path: <devicetree+bounces-33460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B584835620
	for <lists+devicetree@lfdr.de>; Sun, 21 Jan 2024 15:36:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7E4751C212F3
	for <lists+devicetree@lfdr.de>; Sun, 21 Jan 2024 14:36:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8AB9374F6;
	Sun, 21 Jan 2024 14:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tZXCaw6p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61BBB3613C
	for <devicetree@vger.kernel.org>; Sun, 21 Jan 2024 14:35:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705847760; cv=none; b=k1VllA7oqbYeBHBMRX0h40B3w9nMRdiEGtQU8p7kFugxgm4pxXGd9axFYVMYQEg0bE6iLjf2q7sJpyHsm2U7dzVOTFIiTzR41TQIw88rYj1Of3r3U9q2IKtqoRX8IiyVN6po7p/FMkL5AxsYTeMuM66cUUyKVPoMBaWvFzzWVYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705847760; c=relaxed/simple;
	bh=872rfjy39rwVRPIkk3ndSS0WStZElYm0Qg/+47Tr7M4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gdta44yp3i0sIK35ut7nr9OPiSmESNDXu19wGW3YgYZLUOyANNFS0j/b4Pf7RU6TKnt5JNL7lyz9SBTsjGUDtVx+rbvMCBGOn0WCHhYXHGQeWvWRnGUK42ApGAyC3fBsohtNsDgMaph+LQa3bMP1aTEDjwlQ99QSE3FIOMHnp1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tZXCaw6p; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-5ffd5620247so2904567b3.0
        for <devicetree@vger.kernel.org>; Sun, 21 Jan 2024 06:35:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705847757; x=1706452557; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=872rfjy39rwVRPIkk3ndSS0WStZElYm0Qg/+47Tr7M4=;
        b=tZXCaw6pMVa+X8oQTbA5GeBwbEEniZAqVwpANtGp2WRTt4H1BmEHGPW9h8XI8fVaj2
         QPkS7gx7yqMPVzupWMlfUTaSFiHeOKZjh5aK9HzyB/LdcghER1Z0ibSnzC4x5JQAJipg
         Fg/DaoywD/98zdtutlIXAiBMcXYq65Hvzi8XE7/jZrm+hZM/Gdckl9czCxf8pOXZtjk4
         RbF6bEksWScllJR8VcUVrohzLBdcZbJaVRxVUKXlLd9WVagSUE+IowLH4ye+eHolTfYT
         TlUd5HrcW/FUPirKZ2wljOI/LiFt1SQfLgh0ccFhZD9rFaPU7ftGM5xZugw27Qnpv0+5
         faqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705847757; x=1706452557;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=872rfjy39rwVRPIkk3ndSS0WStZElYm0Qg/+47Tr7M4=;
        b=KomniRYtibv+glH+4hq7EeWnreS7YLEwVEuakRB1YLJCjQQzPBRNQMCHc+jZEsHMZg
         xKc51Vb3Y51Wq4sIKESbUNYu6f+922P+G262k635cmkN7hxAPqair4+Db1mFCY7Tgr4d
         yE4qiAv3XUZRcKpwWv64RSbWvL8AvsUu1Sa+BhYHpmKYG0QGQ8zDX0DlZ1/Jqpo00Dub
         egDYMfJKum+8EQbMjgmW4f3kowU8oUmdDsvIwJ064HeGaw+kowctcb9LFM5a6Zk3nGyR
         jORZbNKCOTSG7PvqATnTUXMfAs1abCgA9Hm7NO+dHQ1YT3A7ygfpj6wft8Vuxmyi/eAc
         bGpg==
X-Gm-Message-State: AOJu0YxZBiHuq1UXg9VzCwdAfE2By1+vDpTj3ZKvTFT0pmEayz0Zd4rW
	NS3YNm8tAPIASH6qcwx1HZHteF9gNOTUT5yHqDuEBg2hTk0A555xFwzyjz7v8RNdmYZ4gFBL12x
	sOIvNBP9alhAbmqWRmF/gauwjYb3FA57pH9lu5w==
X-Google-Smtp-Source: AGHT+IGJ2DYegRgTTs8ZHsk79g8rkAhLXrTgdRS3BTZclQzp+PaNFA6RmnfZAQEkPgtQz0pMrsua29Q2IC4VA5JrGXc=
X-Received: by 2002:a81:9c52:0:b0:5ff:96b8:f0b9 with SMTP id
 n18-20020a819c52000000b005ff96b8f0b9mr2720698ywa.90.1705847757431; Sun, 21
 Jan 2024 06:35:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240120-ktd2801-v3-0-fe2cbafffb21@skole.hr> <20240120-ktd2801-v3-1-fe2cbafffb21@skole.hr>
In-Reply-To: <20240120-ktd2801-v3-1-fe2cbafffb21@skole.hr>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 21 Jan 2024 15:35:46 +0100
Message-ID: <CACRpkdZJyY9oYMt3TvDEGthN-Wvz3t_40t9P-VsgTKCJQaD=pw@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] leds: ktd2692: move ExpressWire code to library
To: =?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: Lee Jones <lee@kernel.org>, Daniel Thompson <daniel.thompson@linaro.org>, 
	Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Helge Deller <deller@gmx.de>, Karel Balej <balejk@matfyz.cz>, ~postmarketos/upstreaming@lists.sr.ht, 
	phone-devel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-fbdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 20, 2024 at 10:27=E2=80=AFPM Duje Mihanovi=C4=87 <duje.mihanovi=
c@skole.hr> wrote:

> The ExpressWire protocol is shared between at least KTD2692 and KTD2801
> with slight differences such as timings and the former not having a
> defined set of pulses for enabling the protocol (possibly because it
> does not support PWM unlike KTD2801). Despite these differences the
> ExpressWire handling code can be shared between the two, so move it into
> a library in preparation for adding KTD2801 support.
>
> Suggested-by: Daniel Thompson <daniel.thompson@linaro.org>
> Signed-off-by: Duje Mihanovi=C4=87 <duje.mihanovic@skole.hr>

This is great stuff.
I looked at my KTD253 driver but AFAICT it uses a different method:
instead of transferring a numeral, it increases/decreases a counter, so
it can't use the library.

> +extern void expresswire_power_off(struct expresswire_common_props *props=
);
> +extern void expresswire_enable(struct expresswire_common_props *props);
> +extern void expresswire_start(struct expresswire_common_props *props);
> +extern void expresswire_end(struct expresswire_common_props *props);
> +extern void expresswire_set_bit(struct expresswire_common_props *props, =
bool bit);

I would skip the keyword "extern" since it is default I think even
checkpatch complains about it these days?

Anyway, no big deal:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

