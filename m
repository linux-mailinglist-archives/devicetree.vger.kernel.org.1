Return-Path: <devicetree+bounces-50686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0A987CB4F
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 11:25:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 299F01C21314
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 10:25:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94FF41865C;
	Fri, 15 Mar 2024 10:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="scTyMV6t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7B618E27
	for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 10:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710498311; cv=none; b=kUS5XZg06uoP5cbN2kTqTr8Obn/yeVd3rHqkJd8mv5wAvIv3V963YbtIHSvDIQ7Tml7yD0hzq0nhvYUCAU0PP0W3q/ExLh2OP6R1mzl7iC78im59HBMw1Bum5sByWKvCxW8nRNfLSxZawQv1HEI7Spnq5vQudis0quKMKru1Fn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710498311; c=relaxed/simple;
	bh=NfFTjprpYpTx/YOcA395cb2tUELkt8+AWxFx0BohTVw=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=TK6cyQWWPJZ5uJDADZiikncN3p/ez7PmMpPwor8WyVlfivOvG7oPpjfxD63XcnXS88JVTCei81Foil59ATn2cIzk08EKZWInUwduUQseqOHaCXtDKdRcLN2k6omXjtzN37/acDB8P89NVLzGFzNHcVbM17/uoZRI1q/jUcfUgrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=scTyMV6t; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-33e570ef661so761793f8f.1
        for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 03:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1710498307; x=1711103107; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=I3EB/6PldhsbhWY9+bYWiu2w8/wr6W5dSP5c/9sIMoI=;
        b=scTyMV6tGxpPlH+TE8fWNj5v3IY+5bAIEbQwmbIVNN3XGjo9GTZz+InJd/EjxhUuZq
         Q9Ot2p8f+AOjQj6+U0vZhicYtDDqkq+P9saxDp5W48/Ueq1Ar2TaKf8LebWOrVL8Pqug
         Jmj16tfoojVaZWL7EJcEzgolSUXHFVPP65f5DlSnRQGt5KeOjJYN2DSKmBodnc5K668f
         P+R+lLYCxRO4Wqor3SqTkHfGN17d2n0vjk3RtNfPH1vbggffj+CgkGdnbROD6tAeXJTc
         jC6eosvqjs0KjmhMfv2w2TGnCWtqJJopYJCCPYpHq0b3qIC/Jl7PUhWLs0FhV599qsaf
         D8Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710498307; x=1711103107;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I3EB/6PldhsbhWY9+bYWiu2w8/wr6W5dSP5c/9sIMoI=;
        b=ebeYAHpJOeYU06L2dNYAXzg2O6NjJBfMpxoI+P2eDm/4hF3BGUjqhH1hcsarAQEzJN
         vt3feyfgyFgFlu8uooOO93RDo4Km17vXuby3jYBpIM6KCSHfT1PAfxBzX5O/5bLEBzmp
         BuYhgrClOjXDgdiefpVVxT19EYQSNhOBfL3/HSIgTG70V6O0AhusRlPq3ig5dEW70NMH
         JaQKgy9mxuhG0wZoenaZijYevvKCJGNsEmcmt3hI2cGKVe9J1q3jXnREM9RG6IJAixc0
         2yzW7bodRdHTbys0DfcI7h39c71yb5BZnVAlpyyTYZyw2u7GgRW4SunsYN11ZBfeWouC
         P6yA==
X-Forwarded-Encrypted: i=1; AJvYcCWrOrZ5L5H0bErll0BVayUFZFyORxWW6pwn6vCDj1nQWGPaKKib8X5waVe+fA9lsd8FIiGllkt6qxtTXoQqKBZpi+83FA5de8U2RA==
X-Gm-Message-State: AOJu0YxVGSzyckxMUSCEx/ffrBa6+uoI3U+fbTkOlTFNbICU6A+4oYco
	eRu5Oc82ZCZeHSzOGc63GQrevTDkRjoRUyIBI0qZZD93FNh56Db38U2WfOCgzDA=
X-Google-Smtp-Source: AGHT+IGWDipfwojUVR3R0h/HAg8+ErMHQU1L9DU1QDqUHJY9+2A1t5wePivY0yDxiYGWnr60Q0NDnQ==
X-Received: by 2002:a5d:4cc1:0:b0:33e:7f5c:732c with SMTP id c1-20020a5d4cc1000000b0033e7f5c732cmr3060666wrt.62.1710498307090;
        Fri, 15 Mar 2024 03:25:07 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:8151:4d0a:14d8:1124])
        by smtp.gmail.com with ESMTPSA id o14-20020adfe80e000000b0033e8c50fc3fsm2818997wrm.90.2024.03.15.03.25.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Mar 2024 03:25:06 -0700 (PDT)
References: <20240314232201.2102178-1-jan.dakinevich@salutedevices.com>
 <20240314232201.2102178-14-jan.dakinevich@salutedevices.com>
 <ca80caab-2664-4797-a222-e14537eea440@linaro.org>
User-agent: mu4e 1.10.8; emacs 29.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jan Dakinevich <jan.dakinevich@salutedevices.com>, Neil Armstrong
 <neil.armstrong@linaro.org>, Jerome Brunet <jbrunet@baylibre.com>, Michael
 Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Kevin Hilman
 <khilman@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-sound@vger.kernel.org, linux-gpio@vger.kernel.org,
 kernel@salutedevices.com
Subject: Re: [PATCH 13/25] ASoC: dt-bindings: meson: axg-pdm: document
 'sysrate' property
Date: Fri, 15 Mar 2024 11:22:59 +0100
In-reply-to: <ca80caab-2664-4797-a222-e14537eea440@linaro.org>
Message-ID: <1jil1nhjwd.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Fri 15 Mar 2024 at 11:00, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 15/03/2024 00:21, Jan Dakinevich wrote:
>> This option allow to redefine the rate of DSP system clock.
>
> And why is it suitable for bindings? Describe the hardware, not what you
> want to do in the driver.
>
>> 
>> Signed-off-by: Jan Dakinevich <jan.dakinevich@salutedevices.com>
>> ---
>>  Documentation/devicetree/bindings/sound/amlogic,axg-pdm.yaml | 4 ++++
>>  1 file changed, 4 insertions(+)
>> 
>> diff --git a/Documentation/devicetree/bindings/sound/amlogic,axg-pdm.yaml b/Documentation/devicetree/bindings/sound/amlogic,axg-pdm.yaml
>> index df21dd72fc65..d2f23a59a6b6 100644
>> --- a/Documentation/devicetree/bindings/sound/amlogic,axg-pdm.yaml
>> +++ b/Documentation/devicetree/bindings/sound/amlogic,axg-pdm.yaml
>> @@ -40,6 +40,10 @@ properties:
>>    resets:
>>      maxItems: 1
>>  
>> +  sysrate:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description: redefine rate of DSP system clock
>
> No vendor prefix, so is it a generic property? Also, missing unit
> suffix, but more importantly I don't understand why this is a property
> of hardware.

+1.

The appropriate way to set rate of the clock before the driver take over
is 'assigned-rate', if you need to customize this for different
platform.

Then you don't have to deal with it in the device driver.

>
> Best regards,
> Krzysztof


-- 
Jerome

