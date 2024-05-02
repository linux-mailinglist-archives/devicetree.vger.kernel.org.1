Return-Path: <devicetree+bounces-64455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7669A8B9638
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 10:14:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 311AB282F1A
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 08:14:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8C722D61B;
	Thu,  2 May 2024 08:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oe5h5XbK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F282C190
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 08:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714637637; cv=none; b=WDh7PTD2xipxXlWtR3FzeJCj3Es29NNCbl9dSvLW5DUZYXp+c/Y1TaW5gGOmTly4hnICR/PSo7sCy7P31UFMUR+fqq00oiT/lldteRT9Lrk6QzKk+H7E6kLHggiYzm8HgTrq98IeJlMi16JlLeb/eRRrmwp70RXRymvAJwDggsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714637637; c=relaxed/simple;
	bh=c4ei+B0bZuZTMjTLn9BVRlxqJebKwU8kVr6r+UNiXgY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QhjPZ+lYw+LECD7oiRIucihN+QumFG20Ea3oSG66A7FsAyE9r10i6B5fKYQMwItdGY5Hn7unxHd7WnhcFfOZZmJb83Qwzf/3iq05Ah9/uCpnYbCPd7AfKdDaXR7t93puC4lK2OpcqczPS0sQpmxPkOrOlAn/wffAHw6qrfq8XSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oe5h5XbK; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-61be4b98766so36276057b3.3
        for <devicetree@vger.kernel.org>; Thu, 02 May 2024 01:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714637635; x=1715242435; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c4ei+B0bZuZTMjTLn9BVRlxqJebKwU8kVr6r+UNiXgY=;
        b=oe5h5XbKQfCS2R+4vTdlMj2ITH96D1emT3KxEUDqyv6qtjyQ/ZfdS/gNgDPtytXA2L
         hYC1jJo15uBm32hq4cNmWCULezSMkiE0KtPKL02lWPVjW5vsw6YDhIF4R5ZRzkAsDC8r
         GLPltf4dlkbkZgH/wnegXcvjUxy6Xe51UK4HsUJedPXoFVKcPnYfMXd37wpgiqBrP8th
         t8sTI4ifyknKHnGDePqVPQlkavgy0I4Ao5dfs6MdrBvtQXvRwSrFOH0DPVRWeOUB9Ve8
         gOSWWlYnktdGDxGjoNsAh+K5dP7C2U3a1ninvC8uiwRFz9v2ZxG2eouZRVQDJYarXwfN
         D6wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714637635; x=1715242435;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c4ei+B0bZuZTMjTLn9BVRlxqJebKwU8kVr6r+UNiXgY=;
        b=TOdUbi80AdYW+v46l8TEssfgM6xMrTdX4oLxEFzmh6qb33O2h5ls6PNdwtYwTUb7i7
         viefyvBxmYYTBMlXWAtFj9Z/Rz/hd62QasmQRAKTaT2P69LYkM5xs60qHewI32EhzWZ/
         RVzhPWIK98aXC9/QyNmpLAE5drmDlYPyO/80oS6zLFh+ixRAeqEEiXrZuKx0cRDBUkXN
         lWV4yTdOXS7ppglxhdaPhOwiRRvJlybIAhDab+ax90Scrzr0fCS2xDy3XlITxAZoUHKx
         w/8DQAl04b0NLHdJhso7H5npenenkqoFfF3/duEFKpJIOm87kA/MSbzznqYYF2wFDI5W
         4HvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfsCedQ10OPg94rNcdaqukSt/sjNugYW8GD9/Cu1pKpBuwMTUfrYclESlpskEfw5cxvlncJvrb4Mdg2pZDVIQcH2PM35C6aYF/0g==
X-Gm-Message-State: AOJu0YzGnpnseqCaOWOQiVBZP2eHJvspq/FHuQrQUhR5HMMML7oU+se7
	m9N6+8FBJIBJcg4a2nR72ZJp9//OMZ3p/mKt/gOVSO8451JP5KXMOmwIVbIKCDhR5kzDYsMHCal
	ubRY9NNiTsL8zA+4d86TTczN1zO8SpiKdaTFESg==
X-Google-Smtp-Source: AGHT+IGSx2+2EOxOtMI6T1K0GJwZd6pRkBLw/hNNJoiSWWhLgalhzC9BcMuTJQ/bM5ZXQ5fr1jnBWOsrSwUruZM3Mfc=
X-Received: by 2002:a05:690c:6102:b0:60c:c31c:4f71 with SMTP id
 hi2-20020a05690c610200b0060cc31c4f71mr5550534ywb.42.1714637635340; Thu, 02
 May 2024 01:13:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240430-gpio-leds-miscarm-v1-0-9c94d7711f6c@linaro.org> <20240430-gpio-leds-miscarm-v1-3-9c94d7711f6c@linaro.org>
In-Reply-To: <20240430-gpio-leds-miscarm-v1-3-9c94d7711f6c@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 2 May 2024 10:13:44 +0200
Message-ID: <CACRpkdbY2R_DzCx48OdGBFh6Lgytt_+VN1QK1pRq+9dDB=zw9w@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: spitz: Use software nodes for the ADS7846 touchscreen
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>, 
	Robert Jarzmik <robert.jarzmik@free.fr>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 30, 2024 at 9:04=E2=80=AFAM Linus Walleij <linus.walleij@linaro=
.org> wrote:

> Convert the Spitz to use software nodes for SPI CS and the
> ADS7846 touchscreen following the pattern used in the TI
> platforms.
>
> The Spitz is the only user of the wait_for_sync() callback in
> the platform data, so define that this is a separate GPIO
> in the device tree bindings (previous patch) and handle this
> directly inside the ADS7846 driver instead.
>
> Add some infrastructure to the PXA boardfile common code to
> handle software nodes attached to the SPI bus instead of
> platform data.
>
> The SPI core will investigate the numner of GPIO handles to
> figure out the number of chipselects used on the platform, so
> no explicit encoding of the number of the number of chipselects
> is needed.
>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Andy's patch series makes the Spitz SPI much cleaner to begin
with so I will hold this off and rebase on top of Andy's stuff once
that is in.

Yours,
Linus Walleij

