Return-Path: <devicetree+bounces-34610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C74B83A4FC
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 10:16:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FDC01C2215A
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 09:16:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 518B417BD9;
	Wed, 24 Jan 2024 09:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Yc91Hgio"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4610217BC6
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 09:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706087763; cv=none; b=jRCHGd8WYc/1NxjmIeTnYULZXZi+8Ix7sYTUhWgoSK/+Qhd9Dl9otjd2Z9T87oHDzOPcFpYqoTFeflwXt7JBdbL5zy4OytVStSNFF+71duWvhUfzyD63oruMNR04BSwQgnntBrKatom/QLjcyt6ksDrTehDJ8fh7y8ray9qvSa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706087763; c=relaxed/simple;
	bh=QG5WlILsmM0gId87Rj/yfX0PouwUTYLt7B6wB7wQEMo=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=VpBLdEb/patbIRvvwjWae3F7y4ctgvLb0Kosj56d47OVtqaLca+wFUeQ+nTIfWiQUvIMZCqAdSHEiAwDXdcjsF1KgoVOBFON67OMqg+rkTHd0ULhwsYwq4wMsGETPb2pKkUHDtkDhM++7NhqbbCFU2kl1o7Cj5jAJEqIFUkZ3NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Yc91Hgio; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-337cf4ac600so4877850f8f.3
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 01:15:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1706087758; x=1706692558; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZbeFWfMqBmXODESAwukrIPoFDrHKEc0uZI5I1dvJGsU=;
        b=Yc91HgiodveUPWMfGG/vG/otKv7SjGYrbZrcQe7T+ndw4Ld5vvp1Ui0us0A/IUzO57
         Xrs2YaKgHjO5kN1r9K/yyp2+0y2W34GPxxUPJxm/RW1Kna7kZqYlYKJMLhOEuh/SZKCN
         iIX2c/Xg+1YS9Dx+ZxzBAzyvZwuzT4250awb8nZV8VliPXEAVAoebyHzThJ+DMQ6bYKz
         T+CR9suj4RYo9GPI7Ug4I2L+UM3r/ahN+ehRCQdSZTxBJtia0OqSB8gTWybxLE8ZLtRy
         NPTrEATbLqmw55QGWDqJDVhPEFQ7oiySRVv9CTJwonmgCr1P8jaSM++JpLfwTYoA6TWj
         EfxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706087758; x=1706692558;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZbeFWfMqBmXODESAwukrIPoFDrHKEc0uZI5I1dvJGsU=;
        b=i7n9Sd2/Y7d9xMkWttvkTihyzu6dtn8MCoIpXNEmk9dPlU1qaovF1/Lcuh3+YNtafI
         OvG1SO98S0b8lTaekBAbbcfnXijf5AVE6D0CjTPWLXJ+zRxb4fmcFlkezgIBQie3yrL8
         Eey8RkyPjgtem0E12s212721mqKc2X9ejTViE7AZYkilPNJJg99PDiXBHK49/GZzOOoA
         0S8jquVYWBqctReyGu+sI7EoE5fC42C00fOUYkfgw7wyPwDHhGNLy0ys3ucJgqkXJLhX
         pj76K/Pu5URx732SMPQe9tplDdB1IjF67ktaiHpNH6JBgeDUe82djmP51A+BTCbzdlK/
         /w4w==
X-Gm-Message-State: AOJu0YytdW2HxnpRIDiFfu3EK+KDYyJ9Cxo0UTd8wDGV3p2TC5Jj4YyT
	In+btyBhmZ0xyUvvyllv2fnPHvjPfvnF6hKGG8Op2zt2e9/wJz844Kc6EnVYOXo=
X-Google-Smtp-Source: AGHT+IEJA4fLxUIPUgV1CoOiF3Njgm57gU/G+2p6y1b7sd2MIpW1H3YSpsDs25CgqLP01So5oXJUjw==
X-Received: by 2002:a5d:554c:0:b0:337:c527:ad54 with SMTP id g12-20020a5d554c000000b00337c527ad54mr337926wrw.77.1706087758478;
        Wed, 24 Jan 2024 01:15:58 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:d8b6:17b6:386f:c67b])
        by smtp.gmail.com with ESMTPSA id g18-20020adff3d2000000b00337f722e5ccsm13609525wrp.65.2024.01.24.01.15.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 01:15:58 -0800 (PST)
References: <20231222111658.832167-1-jbrunet@baylibre.com>
 <20231222111658.832167-4-jbrunet@baylibre.com>
 <4kcbh4dezgpic2dpgdi2swtx2puqiq74w2tungmxipf4nznpn7@u4g4f3cimps4>
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
Subject: Re: [PATCH v4 3/6] pwm: meson: generalize 4 inputs clock on meson8
 pwm type
Date: Wed, 24 Jan 2024 10:11:59 +0100
In-reply-to: <4kcbh4dezgpic2dpgdi2swtx2puqiq74w2tungmxipf4nznpn7@u4g4f3cimps4>
Message-ID: <1jy1cfw0qa.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On Wed 24 Jan 2024 at 10:08, Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutr=
onix.de> wrote:

> [[PGP Signed Part:Undecided]]
> Hello Jerome,
>
> On Fri, Dec 22, 2023 at 12:16:51PM +0100, Jerome Brunet wrote:
>> Meson8 pwm type always has 4 input clocks. Some inputs may be grounded,
>> like in the AO domain of some SoCs.
>>=20
>> Drop the parent number parameter and make this is constant.
>> This is also done to make addition of generic meson8 compatible easier.
>>=20
>> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
>> ---
>>  drivers/pwm/pwm-meson.c | 19 ++++++-------------
>>  1 file changed, 6 insertions(+), 13 deletions(-)
>>=20
>> diff --git a/drivers/pwm/pwm-meson.c b/drivers/pwm/pwm-meson.c
>> index 2971bbf3b5e7..ef50c337f444 100644
>> --- a/drivers/pwm/pwm-meson.c
>> +++ b/drivers/pwm/pwm-meson.c
>> @@ -60,7 +60,7 @@
>>  #define MISC_A_EN		BIT(0)
>>=20=20
>>  #define MESON_NUM_PWMS		2
>> -#define MESON_MAX_MUX_PARENTS	4
>> +#define MESON_NUM_MUX_PARENTS	4
>>=20=20
>>  static struct meson_pwm_channel_data {
>>  	u8		reg_offset;
>> @@ -98,7 +98,6 @@ struct meson_pwm_channel {
>>=20=20
>>  struct meson_pwm_data {
>>  	const char * const *parent_names;
>
> I suggest to make this
>
> 	const char *parent_names[MESON_NUM_MUX_PARENTS];

Ok.

>
> to make it more explicit that really four entries are needed here. This
> also makes is unnecessary to add the additional NULL entries to
> pwm_gxbb_ao_parent_names and the other arrays.

I would normally agree but I'd prefer to be explicit.

There are some instance where the NULL is in the middle, this can't go
away. I think it looks if some inputs are explicitly NULL while the
other are implicit.

Of course, it is just a preference. I can remove these if that is
bothering you.

>
> Best regards
> Uwe


--=20
Jerome

