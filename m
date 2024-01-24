Return-Path: <devicetree+bounces-34639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAC483A650
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 11:03:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8D5751F22049
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 10:03:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E549C182A1;
	Wed, 24 Jan 2024 10:03:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="JV/cXpqD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6D6D18EA2
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 10:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706090629; cv=none; b=V93lNvRmffaTQuRUhMloDloPKUQ87C6qLoR9YIRR9j/lFODYqpCd73pUUS8ycEzVARR2V9xLGg4YaIde4ivPkcVZK06QOEyCYG4CtvOcFyQtI6plgQGUk219ZrAx+28KqX3nwVgoqAkO7rZYLwq5r0Qt7oLwfpu+njN7USl7D2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706090629; c=relaxed/simple;
	bh=ZXjVtrptsshYOZMALm25l924Exv6V6VkuCmqSDIOzUg=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=EWhbceEOjiXrwPCUFk0doFiNDpJU4XtWFHAxEpK/9xr6WCMDlBeXAmMk5ajLn5xN8jSAUS0o2uVIpF2qqgGhZmazqa8BonAFTSYkFqmUpoC+wFmWytU8RLQ9U4C1GolGdITrjwlspjmNMIQIKxFYJFxddXgA4beQN5VNfILQaVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=JV/cXpqD; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-40eb033c1b0so31371705e9.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 02:03:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1706090625; x=1706695425; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ylAoGxhXjDFqaYPg56D086JPamwyHBJVeEcnnDZC84g=;
        b=JV/cXpqDN0DoMrAy3nU5v8qSFLJHiel2VYe/wCQSC6he/zqqiFs3g1zmIFNT7w9Y4O
         bcZCj7mqwFcRN7pD4Rd81lJkR0PyvoX8ilWXLsfjOHcpQjUhmJlIefXycVv54XCzt+jP
         /qHgL8r6tJWLzaDoV6bFOCbCjW9/YcOm3j7fIGnJS39wpJh3npC8MYCG1I8ANLqdZ6wi
         9eLGagoCevLNQeeIOQMR+V6OHwdmkmiVZh/N/n7t7RIbJ62Iq3Os2AxtyXZ93Xlsu4F3
         2QC8uHzc5u2OTGbcPdkU88eeNHCUYNVXY5EIEpQ/M6ZrkX5Slfn3eV+R2zD6eUddVk4x
         mOYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706090625; x=1706695425;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to:date
         :subject:cc:to:from:user-agent:references:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ylAoGxhXjDFqaYPg56D086JPamwyHBJVeEcnnDZC84g=;
        b=sJk3w33BGIoQVKXJIctXyzcqHf7sQF7G2P+ROHUjAoEPE88QaziP5h5cq68keHJug/
         tdhCulOUIi+ePrMogZtFKLOreCQngDpniw7q7wr42zlv9dNLpDNHj7AP/KHEAcxfhBCm
         YKhEz02qlm5gwvT8SdlizOKk1JUnVnGpPfTtaiM4KZnZu5sW5mKbSd5annnWwvIXsg/0
         r6mDdK9TvOUvRjYM2TZjMcT495TP/+oxketfgykXINwduEn9rQGMeHdGKlZ7L6tqKdeV
         aMw8h9uFhI120BKxAHjlDteXrNC2T7LHlWaTTxRSH87jkY6hcXOTATQ8yoQk7gCTUPNm
         swAg==
X-Gm-Message-State: AOJu0Yx/d36Nw2IMnHZ6B7zAXxFrFCv+nSLDqWgXwgyoSKnN3cMgEVm5
	HP9mCyXq1ZcQprHkoDe/HV9Mq8JM5y2E+ozOO2x7S5SZsB5SRvRO2xCYnMmLS3A=
X-Google-Smtp-Source: AGHT+IHbyjH7B2GFBvJGGOPU1aqUewQxShHkvh6RyljGkkNcEOx7iIT+dYXvVczFG/zpv8jbH8B9yw==
X-Received: by 2002:a05:600c:a44:b0:40e:6710:c147 with SMTP id c4-20020a05600c0a4400b0040e6710c147mr1079130wmq.98.1706090624943;
        Wed, 24 Jan 2024 02:03:44 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:d8b6:17b6:386f:c67b])
        by smtp.gmail.com with ESMTPSA id g4-20020a05600c310400b0040e88d1422esm25142441wmo.31.2024.01.24.02.03.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 02:03:44 -0800 (PST)
References: <20231222111658.832167-1-jbrunet@baylibre.com>
 <20231222111658.832167-6-jbrunet@baylibre.com>
 <gyhea42rtydw3g45lfkfbxfm6xcbwibz67vw7xke2sm7powz2a@i33g4pyanu4l>
 <1jttn3w0ja.fsf@starbuckisacylon.baylibre.com>
 <jlrptw2norojxgpfmsybv6b5aq3epkdkqvri2l2rkvtx5qofjd@q4ggezt47a42>
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
Date: Wed, 24 Jan 2024 10:59:43 +0100
In-reply-to: <jlrptw2norojxgpfmsybv6b5aq3epkdkqvri2l2rkvtx5qofjd@q4ggezt47a42>
Message-ID: <1jplxrvyin.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On Wed 24 Jan 2024 at 10:48, Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutr=
onix.de> wrote:

> [[PGP Signed Part:Undecided]]
> Hello Jerome,
>
> On Wed, Jan 24, 2024 at 10:16:17AM +0100, Jerome Brunet wrote:
>> On Wed 24 Jan 2024 at 10:02, Uwe Kleine-K=C3=B6nig <u.kleine-koenig@peng=
utronix.de> wrote:
>> > On Fri, Dec 22, 2023 at 12:16:53PM +0100, Jerome Brunet wrote:
>> >> @@ -442,6 +439,13 @@ static int meson_pwm_init_channels(struct device=
 *dev)
>> >>  		struct meson_pwm_channel *channel =3D &meson->channels[i];
>> >>  		struct clk_parent_data div_parent =3D {}, gate_parent =3D {};
>> >>  		struct clk_init_data init =3D {};
>> >> +		struct clk_divider *div;
>> >> +		struct clk_gate *gate;
>> >> +		struct clk_mux *mux;
>> >> +
>> >> +		mux =3D devm_kzalloc(dev, sizeof(*mux), GFP_KERNEL);
>> >> +		if (!mux)
>> >> +			return -ENOMEM;
>> >
>> > I don't like this change. While it doesn't increase the memory used, it
>> > fragments the used memory and increases the overhead of memory
>> > management and the number of devm allocations.
>> >
>> > Are these members of meson_pwm_channel in the way for anything later?
>>=20
>> Not really. It is just not useful on the SoCs which do use it and not
>> used at all starting from s4/a1.
>
> This remembers me about the old pwm-imx driver. This was essentially a
> single file containing two drivers just because both types appeared on
> imx machines. Later it was split into imx1 and imx27.
>
> I didn't look at the relevant differences between the existing driver
> and the changes needed for s4, but please don't repeat this issue for
> meson. Not sure this fear is justified, just saying ...

Noted. Don't worry. s4 is indeed the same PWM block as before, just
mux/div/gate migrated from the pwm IP to the main clk controller.
That's all ... I know ;)

Only the clock registration should change and simplify.

>
> Best regards
> Uwe


--=20
Jerome

