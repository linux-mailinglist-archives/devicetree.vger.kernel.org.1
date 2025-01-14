Return-Path: <devicetree+bounces-138466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0FEA1087B
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 15:05:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6C0661881C62
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 14:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 874D1132132;
	Tue, 14 Jan 2025 14:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zxLaka5h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578CF762F7
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 14:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736863530; cv=none; b=jTtelam/8As1SQhXEKR/+4vjpAsPguxMbduw6Fbsm3EoXaqQNL+NkgXquRqju5yfs1ASafqbpKJaPkJgC8RWa+QTglnR4lMh1hlaVjlABmkYSrHVt/r7/GWXPRYlkJv0LqmTyrORswq3GL6ahEXZMVXBfNvb4oJVGsED9dBt4ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736863530; c=relaxed/simple;
	bh=6tKjcpDmSDVi0I0Iymsx6pKq7XeGCNlnh/DkEXq+Kvg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=SVrI5H64nvFUVVdhYgqC8anFgzk0aXy7cfUZobw3fyCWEtycB4MYV4k6tcYycF1BMUNwoWKJRWnLVe+RjVWbHVZN1ZzVlCqDR0pr1p3nlsC1WoTqRlwqWTOT3PHDnDUpENc+ay7J9Q9uN99tMu0+nqjiqxTFOXV8nILXYJq6ujA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zxLaka5h; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43622267b2eso57677165e9.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 06:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736863526; x=1737468326; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6tKjcpDmSDVi0I0Iymsx6pKq7XeGCNlnh/DkEXq+Kvg=;
        b=zxLaka5hYGgofHs76q25QEOy75B3+rFA0WfYvOvZyAnj7iWI6+5m6hBSri6TLPzJ54
         xjmAbueWQ/wNkuZTVFXMtp0CXUJvfoV9w4PTz+0ZR0TKtoNB0Gwq+tDRkLsXiezh/U0n
         ZMpdb19uusTeim/SU5p0iHPpb6x33XnrCEGj8868XBr5y10jo+IG39g55rXd4rqYYTmh
         sctJp2qe7bIp27b4STvMrbFJOv24wLHWTtqXwuPy4T4BR4DxskTavNYw2QZ6zDu/uOQF
         l2BSiTGf/8tBfFABa7xJBUd/0OwB4990OVqbE1Q7QnpaeSgsgSHyTS8CXL1FHhMoKyAu
         t2gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736863526; x=1737468326;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:in-reply-to:subject:cc:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6tKjcpDmSDVi0I0Iymsx6pKq7XeGCNlnh/DkEXq+Kvg=;
        b=gGKimItyxlAZlj6gtN0VBjK+ikDnPKBLpZn8dDdl/lIg1Giu47ahH+r5kqjOrghu5S
         Vmuh2YWfEs3mqvUehOg96+uhUK2JN7eTFHkDj1xAbr/YxAGXxEF0+e1WfVA77430llyx
         mNOFjU6+VyKE/hJMkbHpUiNe3Sffs8rLKZoIeKbM86ApbrFMzwhiLgfBo3CRTWAXq950
         LiJYjVrwQ/3XAAuVL9Cr2w8Q+l7/bGXW2NSmRz/Z5T/+v2bEFYXk+gdBhj0G+q8/YLCO
         dHdiJpSVk+gQYS2RYi8i9fHjpLJXKLs1XC6ThkhfQvoPDnT0bXmZEFSBUWwhjn51tt3D
         0mxw==
X-Forwarded-Encrypted: i=1; AJvYcCWXCN3ga2HgnqDIQ0cOXmbsrlU5HRmp8aRJGfqelpk+bflA/9j8iCQuxnYXFx7XMSTfX5fwGGHpTx77@vger.kernel.org
X-Gm-Message-State: AOJu0YwJ/E3fMnkhu/+SrCczgYmRyNUFrGlA65fO6KTDwdwBzZf0VCOX
	zJAG40BAJHG9NM7d6ssXuqTE60LfRQW/66AmMARkkSHqy4/cfeV0DuqeTRFEDGQ=
X-Gm-Gg: ASbGncs1GbQWEnj7wSqXlOcO5+1G1WaSdCxewTzmAy47TWLTR4m9wJzdyuMbsSIOBCg
	jNRQPAQDKgYVjeajJLoe3mgl0f8LuMZXU8LTFAQG5zW8p0l0BhrdNP3I8LkPC9BCMy8zuvN2bhp
	FUsNYSiAkre7HyHKI+GeqJa01ipfJpxUEhAU6mEsDaPTMsBR1zd8Xx53/VsEhQRWD5NAl7ETJUL
	S2gRLxkJLnwcSqNf2gr3VJpAVOURlaQmRqPX/ZxPBNvwkZAaFvFZ7hp
X-Google-Smtp-Source: AGHT+IGYBCH61RKlTG9lkoFWiyGMe6exY5OKDG7Opi27JjRz3QS+q+QxKENJfYtPEqBwzJBVByTGvA==
X-Received: by 2002:a05:600c:1d03:b0:434:a0bf:98ea with SMTP id 5b1f17b1804b1-436e2699e91mr225375155e9.9.1736863525942;
        Tue, 14 Jan 2025 06:05:25 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:317c:3d93:b7d4:96cd])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436e2ddc5f5sm210760595e9.18.2025.01.14.06.05.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 06:05:25 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jiebing Chen <jiebing.chen@amlogic.com>
Cc: jiebing chen via B4 Relay <devnull+jiebing.chen.amlogic.com@kernel.org>,
  Liam Girdwood <lgirdwood@gmail.com>,  Mark Brown <broonie@kernel.org>,
  Rob Herring <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>,  Jaroslav Kysela <perex@perex.cz>,
  Takashi Iwai <tiwai@suse.com>,  Neil Armstrong
 <neil.armstrong@linaro.org>,  Kevin Hilman <khilman@baylibre.com>,  Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>,
  linux-sound@vger.kernel.org,  devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
  linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 2/3] ASoC: meson: s4:support for the on-chip audio
In-Reply-To: <e69cd38e-898c-4cbc-a327-14148a71c764@amlogic.com> (Jiebing
	Chen's message of "Tue, 14 Jan 2025 19:20:00 +0800")
References: <20250113-audio_drvier-v1-0-8c14770f38a0@amlogic.com>
	<20250113-audio_drvier-v1-2-8c14770f38a0@amlogic.com>
	<1jwmey9451.fsf@starbuckisacylon.baylibre.com>
	<e2f26ca2-4c38-4b07-bf17-95544588a2f2@amlogic.com>
	<e69cd38e-898c-4cbc-a327-14148a71c764@amlogic.com>
User-Agent: mu4e 1.12.7; emacs 29.4
Date: Tue, 14 Jan 2025 15:05:24 +0100
Message-ID: <1j8qrd7aor.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Tue 14 Jan 2025 at 19:20, Jiebing Chen <jiebing.chen@amlogic.com> wrote:

>>>> +
>>>> +MODULE_DESCRIPTION("Amlogic to codec driver");
>>>> +MODULE_AUTHOR("jiebing.chen@amlogic.com");
>>>> +MODULE_LICENSE("GPL");
>>>> diff --git a/sound/soc/meson/t9015.c b/sound/soc/meson/t9015.c
>>>> index
>>>> 571f65788c592050abdca264f5656d4d1a9d99f6..2db1cd18cf2cea507f3d7282054e=
03d953586648
>>>> 100644
>>>> --- a/sound/soc/meson/t9015.c
>>>> +++ b/sound/soc/meson/t9015.c
>>>> @@ -89,10 +89,7 @@ static struct snd_soc_dai_driver t9015_dai =3D {
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 .channels_min =3D 1,
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 .channels_max =3D 2,
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 .rates =3D SNDRV_PCM_RATE_8000_96000,
>>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 .formats =3D (SNDRV_PCM_FMTBIT_S8 |
>>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 SNDRV_PCM_FMTBIT_S16_LE |
>>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 SNDRV_PCM_FMTBIT_S20_LE |
>>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 SNDRV_PCM_FMTBIT_S24_LE),
>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 .formats =3D (SNDRV_PCM_FMTBIT_S16_LE |
>>>> SNDRV_PCM_FMTBIT_S32_LE),
>>> Again, mixed up changes with zero justification.
>>>
>>> This drops S8 and S16 format support for the existing SoCs (such as GXL)
>>> which is known to work and add S32 support on an HW documented as 24bits
>>> only. Can you explain ?
>
> for g12a, sm1 etc, it is use new audio ip, GXL is old ip,

If there are chips difference we did not know about, then you should
introduce those difference, without breaking existing support -
including for GXL, which is what you did IIUC.

> the new ip not support 24 bit,

Are sure about that ? that code has been there for a while.

If sm1 does not support SNDRV_PCM_FMTBIT_S24_LE, you should a fix up patch =
for
that, with the proper "Fixes:" tag, how to reproduce the problem and
explaining the fix.

>
> usually support 16/32 bit for new audio ip , for SNDRV_PCM_FMTBIT_S24_LE,
> it width =3D24, phy =3D32

Yes physical of SNDRV_PCM_FMTBIT_S24_LE, so most chip supporting 32 bits
width would support this S24_LE, unless there is something odd.

>
> it was=C2=A0 treated as 32 bit to send for tdm, so we can only add the S3=
2LE
> base on it , right ?

You are asking me ? How am I suppose to know ?

> but if the gxl not support the 32bit

I don't see a problem with a DAC taking input on 32bits physical
interface and ignoring some bit on processing.

If that's not the case, please send a proper fix change with some explanati=
on

>
> we need add new snd_soc_dai_driver t9015_dai_s4 ?
>

If I understood correctly format depends on the chip and needs to
adjusted including for sm1.=20

>>>
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 },
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .ops =3D &t9015_dai_ops,
>>>> =C2=A0 };
>>> -- Jerome

--=20
Jerome

