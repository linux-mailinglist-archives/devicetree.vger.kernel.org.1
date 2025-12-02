Return-Path: <devicetree+bounces-243562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF496C99F2A
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 04:15:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6EB453A4CB5
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 03:15:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFA1422A7E0;
	Tue,  2 Dec 2025 03:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iN+FdzFX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC712AD35
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 03:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764645334; cv=none; b=I2RDPezf4Af+omr7RD4GIdR4p7ygUJKVk8UKS2EUYwr9u/rGcM9orJhXN9z2Mg3VxLvXw4bV85LDXgPxPWVR0nhtXJToRH+S4rbV31SBg0c6YVDicAReZSsxXVgybGO0wGtt5wWeF/pn+a/4MDV0TfyXRn7o1lu50Nn3SvamY+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764645334; c=relaxed/simple;
	bh=FM+xWAhxbhok54HvKqvisOsUgI/CGsDbh84dIWjwR2o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Crk+15Uv5M4LWhk8BzdDhahn1gaGeOsthgnw7ZbtQTxngyHR774DC2EcCvHgp3J5n4oxyZjdkhli+5c66s4Sv5Lesq+L44Q53BHBzYw/2Q31NsRVNcgWHpa8tBlun+TZkQPVfWSrs8U1SFNA/IWKn/JuguoWcJQ0nEdNmm2eGyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iN+FdzFX; arc=none smtp.client-ip=209.85.218.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f65.google.com with SMTP id a640c23a62f3a-b7277324054so719352966b.0
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 19:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764645331; x=1765250131; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FM+xWAhxbhok54HvKqvisOsUgI/CGsDbh84dIWjwR2o=;
        b=iN+FdzFXJDnUdPelegwllAjhc+Ch0QXJRxeO85C5onU20ZsJUCSeZCDdW3JbmfmDxq
         uY82cqMQW64U4SVXntmh5Xh/b9n1/K61qahtfE7uJjkh+FlEHHzVsbGzWJb/zdPOqkHq
         ySQClXvIH4g7WaONOQ6V8AWIZOprNJPjWyqIZAzXh1I0ChiBzsb2+we5cCk6ga5g7ehY
         4y7feUJZaCw09TaSclZy3CGt6TgHsb8Cl4LnbzTDoSL6GyKNFSK7K6m7SKH4cM0RZBu/
         jnbtHtLgwcap8X9z9rJfOviEqcSSLEIafmMhfwotJpRF8WW6jv+mlYdcS235gWSUHqK+
         zQ0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764645331; x=1765250131;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FM+xWAhxbhok54HvKqvisOsUgI/CGsDbh84dIWjwR2o=;
        b=HU0YUaR12sJwSdgqkMieRn2AWVEls1CcfrF8snT0t3MKD42jBiFObQy0nzzTNSM+Wy
         W6z41vPrtpq9dy9DP06kljBQh4x2IDUsy4ZVnKRcWDAckUWdgbETJLh5C/fuyBKIHa2B
         8EFdzU+i+aTkiSxhzohdrUWk0iHiksoJZCGzk4nLW189xUw0o6i2E6iuOjjM0DST3eMO
         tpjbEaD3VnT0og9vw9uo/CUjwN5fqJb4o35KCa6HYHcYCdF+TSpBwPLixW2IZCbReSqy
         Jgqirq8SFEoHFSpku5ccMBUDj/g+13KbCdEXMNKThbhKcwMWgUB4p3l3McACQh5exa0i
         /FuQ==
X-Forwarded-Encrypted: i=1; AJvYcCU8WHVQR5evU3LfxxnXwwC6RkkNEYSXCr4Yn+1yFG3NP2Y05026etUUyjUjZKxj32Tk6zt8RX09eu9s@vger.kernel.org
X-Gm-Message-State: AOJu0YyJTenewpTQ4TwGUcflaHmJhvl+4Kc/cz/rrX8YBauVT7HCs27r
	2p5PAYNfaCh1fXVOGRvK1BWow0iXdPpCQcfMXEQddLzI68ZI1O/Va4sEzy4f8arguEmQuNCRGoS
	dVE4fr+YYwi3UjaQl3a37fXaM81+11VM=
X-Gm-Gg: ASbGncvPFFNy/zG4jCxRRRXxe9+811/yUzaebG6+yPkPLZXVUQLVLN3M47b+Ug7abBb
	db3HQjo48QmRXfWX8dilFO00cI5aGRik3L84hNctmnn66wiLlLJ2quB5/WAd8TEXxLgm3u6edv5
	ZkCU7SLwsG6Ku+7rrfTSsYenEAFcQeALhphmI8NkFqPTW/tNovQ8aF2W62Q+fC73lZ4TYm+ZBU9
	BifVNCDcLikzBDizkoHdh/KZQbMSXT6x/awxFS0ZhYt2tkLRigb/FnG15pGfpRuvf7/A18=
X-Google-Smtp-Source: AGHT+IFF2ojQ3QJxrtOriOL2W8FzfK75w6VT7MDsMcl7JpfJynrLdY5Rrm0ZA3Kz5gIcQfwjqiJ2wrZSXf2KtN/KfR8=
X-Received: by 2002:a17:906:b4a:b0:b73:53ab:cfa1 with SMTP id
 a640c23a62f3a-b76715ab9ebmr3339315166b.17.1764645331206; Mon, 01 Dec 2025
 19:15:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251130153712.6792-1-raskar.shree97@gmail.com>
 <20251130153712.6792-2-raskar.shree97@gmail.com> <607dbea3-d887-414e-a0cc-515b9a1f1eb8@kernel.org>
In-Reply-To: <607dbea3-d887-414e-a0cc-515b9a1f1eb8@kernel.org>
From: Shrikant <raskar.shree97@gmail.com>
Date: Tue, 2 Dec 2025 08:45:19 +0530
X-Gm-Features: AWmQ_bl52s8HljCpa4j7RTr9Giyg03U0RNYQmMDmLqNzOxI3hSgSVGCrYRgreMY
Message-ID: <CAHc1_P7_3eBvSSm5JX4Mvuy-49Wqx2y7RuX1bbTvhCo+OGWpcw@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: iio: proximity: Add RF Digital
 RFD77402 ToF sensor
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, heiko@sntech.de, 
	neil.armstrong@linaro.org, skhan@linuxfoundation.org, 
	david.hunter.linux@gmail.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 1, 2025 at 1:36=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 30/11/2025 16:37, Shrikant Raskar wrote:
> > The RF Digital RFD77402 is a Time-of-Flight (ToF) proximity and distanc=
e
> > sensor that provides absolute and highly accurate distance measurements
> > from 100 mm up to 2000 mm over an I=C2=B2C interface. It includes an op=
tional
> > interrupt pin that signals when new measurement data is ready.
> >
> > Signed-off-by: Shrikant Raskar <raskar.shree97@gmail.com>
> > ---
> > Changelog:
> > Changes since v1:
> > - Fix patch heading
> > - Fix commit message
> > - Remove '|' from description
> > - Update interrupt description
> > - Add 'vdd-supply' to required
>
>
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>
>
> <form letter>
> This is an automated instruction, just in case, because many review tags
> are being ignored. If you know the process, just skip it entirely
> (please do not feel offended by me posting it here - no bad intentions
> intended, no patronizing, I just want to avoid wasted efforts). If you
> do not know the process, here is a short explanation:
>
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new versions
> of patchset, under or above your Signed-off-by tag, unless patch changed
> significantly (e.g. new properties added to the DT bindings). Tag is
> "received", when provided in a message replied to you on the mailing
> list. Tools like b4 can help here ('b4 trailers -u ...'). However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for tags received on the version they apply.
>
> Full context and explanation:
> https://elixir.bootlin.com/linux/v6.15/source/Documentation/process/submi=
tting-patches.rst#L591
> </form letter>
Thank you for reviewing the patch.

Regards,
Shrikant

