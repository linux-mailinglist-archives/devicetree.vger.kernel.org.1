Return-Path: <devicetree+bounces-34613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 174E683A52B
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 10:21:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4A7C91C22C5B
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 09:21:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1082018B15;
	Wed, 24 Jan 2024 09:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="lNPdkd1a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2FE3182D8
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 09:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706088015; cv=none; b=mqH+JJMZfapQjXNid/ghst5a9fZNg6yNJGA/mlzktE7iLfyr3MbMe1ze1BqO+pgWz82oLTVp8gwKO9NaTodhXRaequMmCTJqLTueMpMnvwPPwngxj+o+jk10yGcPjo5mWhseaH1awuPRWvGCXQWGF4eJFYLE4U2VbrsmHSe1C28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706088015; c=relaxed/simple;
	bh=SEqCpZT6APAqjYjHdfthclsSjN9J9NtcFcgDByg6704=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=atm0Jv0myHQpbjioJjTShnRrfLuhUIjCa+MAOEUaVAz+UMIwT3d6Khjgey/B/rvioZWNg2CORcHZHHaDx82jVR/LcDsSRB5EGQ4/IkWFCgRqywj15guYH3vyCFv9BSz1Cis2060BdWC9d0NJa/AgTxl6Kt/oNmXB4kPX6NaG7yM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=lNPdkd1a; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2cf2b218c62so1779311fa.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 01:20:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1706088010; x=1706692810; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XKfrsIh+is/CrcG9RcsWASRz9/Tq/yuaNYUtRHDrGYY=;
        b=lNPdkd1ar7PFVviCpzhXDewaVecUKlLnzjPk3HY9rmPz59I/WszYxTx6SG1hoInhWf
         NMDDJ2kISFP7DNQk7x+JsHcomdQ/UrL3VPCrY7jsqwau8sprZShZ5ZLwfynfXCkpGRY9
         IqAJKpuFgvKbpraglPjNItwmJFG8NgIWv/S+HhNwAmOuVHuwYdP26RPGT3qP4TbaS37a
         A6DWoc/cyK1dhjrcj0MI84jXqnqatCxK5ZgtPXUYckNRi2WnjhFOW/NrKjSrFtFnHt/v
         m0EtZakTWAtFUDnXOCMKW2AZfLCfG7E2yvS0PrbOHoAKvSjPnCqW7X0WH6DZdpdet6v0
         cQOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706088010; x=1706692810;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XKfrsIh+is/CrcG9RcsWASRz9/Tq/yuaNYUtRHDrGYY=;
        b=GWx7VSxol9K4VP2HrnA2bd8y6eQBtCNTvKvol8uWKcq6ke2j0NjQqsAf6q5z1osyTM
         SGHYUB8HrKmK80ytsw7e27Mia5qwh82IGWBQAlXb8G+WX7gGc+pm1wQeUjxNWsKJ0Ews
         NQAmE8Am6nPAjK0RO+Dd//zEi2FpH0iQy62/hGlyjLo+CoRsEXpQviSJ18mCHkhaZ1zV
         Ke7Ae+xntL0KgRW0DVkTAvbQjsZjNzdID1CGMnDsDwNRyMtudVzpz/KHXSvuQDSd7hK/
         2q8tQmEvc//c7pxt2N1o69RPeEXwq6t9zM6caZFVIFAws5svWAqQxfyZ7TYxo3yt+OHq
         4trA==
X-Gm-Message-State: AOJu0YxL5w1GUsOZ798srPgDmC0Ftk+ixVZthCLdhnOZo0y/FRrZdX+Q
	rxer9HbPEt9U7Ndl2FHossMbH/n39spaKd3sJ80rVsRlDMf5R0CGWO78f19TJuU=
X-Google-Smtp-Source: AGHT+IEZUUso/GaClxXInQJERF5pL3kfwim7rmyD5VQKB34/cKfjEP6E08ieSs6LZXIkiNyWTfvtDA==
X-Received: by 2002:a2e:9c95:0:b0:2cd:5cfd:b13 with SMTP id x21-20020a2e9c95000000b002cd5cfd0b13mr332903lji.17.1706088009899;
        Wed, 24 Jan 2024 01:20:09 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:d8b6:17b6:386f:c67b])
        by smtp.gmail.com with ESMTPSA id bw12-20020a0560001f8c00b00337cef427f8sm15938313wrb.70.2024.01.24.01.20.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 01:20:09 -0800 (PST)
References: <20231222111658.832167-1-jbrunet@baylibre.com>
 <20231222111658.832167-6-jbrunet@baylibre.com>
 <gyhea42rtydw3g45lfkfbxfm6xcbwibz67vw7xke2sm7powz2a@i33g4pyanu4l>
User-agent: mu4e 1.10.8; emacs 29.1
From: Jerome Brunet <jbrunet@baylibre.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Jerome Brunet <jbrunet@baylibre.com>, Thierry Reding
 <thierry.reding@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-pwm@vger.kernel.org, JunYi Zhao <junyi.zhao@amlogic.com>
Subject: Re: [PATCH v4 5/6] pwm: meson: don't carry internal clock elements
 around
Date: Wed, 24 Jan 2024 10:16:17 +0100
In-reply-to: <gyhea42rtydw3g45lfkfbxfm6xcbwibz67vw7xke2sm7powz2a@i33g4pyanu4l>
Message-ID: <1jttn3w0ja.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On Wed 24 Jan 2024 at 10:02, Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutr=
onix.de> wrote:

> [[PGP Signed Part:Undecided]]
> On Fri, Dec 22, 2023 at 12:16:53PM +0100, Jerome Brunet wrote:
>> Pointers to the internal clock elements of the PWM are useless
>> after probe. There is no need to carry this around in the device
>> data. Just let devres deal with it.
>>=20
>> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
>> ---
>>  drivers/pwm/pwm-meson.c | 67 ++++++++++++++++++++++++-----------------
>>  1 file changed, 39 insertions(+), 28 deletions(-)
>>=20
>> diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
>> index 15c44185d784..fb113bc8da29 100644
>> --- a/drivers/pwm/pwm-meson.c
>> +++ b/drivers/pwm/pwm-meson.c
>> @@ -90,9 +90,6 @@ struct meson_pwm_channel {
>>  	unsigned int hi;
>>  	unsigned int lo;
>>=20=20
>> -	struct clk_mux mux;
>> -	struct clk_divider div;
>> -	struct clk_gate gate;
>>  	struct clk *clk;
>>  };
>>=20=20
>> @@ -442,6 +439,13 @@ static int meson_pwm_init_channels(struct device *d=
ev)
>>  		struct meson_pwm_channel *channel =3D &meson->channels[i];
>>  		struct clk_parent_data div_parent =3D {}, gate_parent =3D {};
>>  		struct clk_init_data init =3D {};
>> +		struct clk_divider *div;
>> +		struct clk_gate *gate;
>> +		struct clk_mux *mux;
>> +
>> +		mux =3D devm_kzalloc(dev, sizeof(*mux), GFP_KERNEL);
>> +		if (!mux)
>> +			return -ENOMEM;
>
> I don't like this change. While it doesn't increase the memory used, it
> fragments the used memory and increases the overhead of memory
> management and the number of devm allocations.
>
> Are these members of meson_pwm_channel in the way for anything later?

Not really. It is just not useful on the SoCs which do use it and not
used at all starting from s4/a1.

What about a dedicated struct for the 3 clock elements and a single
devm_kzalloc() instead of 3 ?=20

>
> Best regards
> Uwe


--=20
Jerome

