Return-Path: <devicetree+bounces-146658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D66E7A35BAC
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 11:42:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8001E18925CD
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 10:42:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A751245B0B;
	Fri, 14 Feb 2025 10:42:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TXivNl3Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC8D20DD66
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 10:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739529754; cv=none; b=nr59scZLkzatVAYBptrpztPkckBUVIJ/zv7/3DqkBiiXDWkmFnUPhXi3/fnN+OC1ZqabwXa8SPBkW4TuA6ybr/MGzhtiv4dHXWVnPf/PwBhJ5FlKZXDNnL6AwDTfq6+m7lmQXPofzVHEcfjhi7PsIcTqfqCfenwhJ+I2F+U7XbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739529754; c=relaxed/simple;
	bh=tEjiLlitcfTlxaKKdC7p1guCdclzcB1m0BYgVz3Tv1s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LNHYDk2/UO5soooahk0puLEvZLFNau/NQAm9P1Q/IYL8H38A/m+i6N27ZKxwUVySqoNAznBrq42tBHCxbEPNz3CtQcIJW3oXTFXgOcrVv1WLpcwYZ4ZWJAgA8fOPoc2ZlCa80bJmPzi2u0z6qpI02eZazOu8QD6YTYizTeHSv0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TXivNl3Z; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-308f141518cso20845981fa.2
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 02:42:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739529751; x=1740134551; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/rsHdHlVKc4H1RNRkS2GcE7MFwwvlGF/5DbmNBJwMEw=;
        b=TXivNl3ZYSIYSIWUC+Zb5TsInt1RZYaqXBppHm+ePzLawqEaoJXyLJUmbuIyNwJLYq
         rBCCg1Vfoq92hMAFIo4eAivsCmQyJAz88Y9ncabNfJCtVRR0j7fIMmEyy+uXQ8e8F2G/
         Xx8mc6yeJQl3E3oaRS4+7iX6ga+bU+Jp/rctbHIbIO9GDO7SYeqqPhLPGPo9z+Tq/V6D
         njeix9aHfciCryJMf8xkjfQkHlg6ailj3smcegohOBUN6WzS5fhmUHrE5b/Z69E7AtG6
         mLGZQ2ehdI0+L4RULTsEr5GlUBC2FJQAqO3y5PZYmzGRa2l9g/GmDf/kkxlkVhYwWY7l
         8MlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739529751; x=1740134551;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/rsHdHlVKc4H1RNRkS2GcE7MFwwvlGF/5DbmNBJwMEw=;
        b=Dk84brFX3JVkRbvJUdIt8/NZsKai7nGbYIuIxVUySMdIhUsY9WLIx1YTT8klV0Bj91
         35uJiEWRvZb4OKH6kjAjkwg+3+xn4OKgg6kN4KCswSxWEEGEvVNnUJt5MXNWf64cVE9v
         PNbDw4qZDQoxTe745inhdVIByxYeJ6aua3IzSOr+HP9avBPZ5RzIzhZ3nDTQk8Pt6tGf
         3ePyBQLl/dNe2V/prsuzpE3ZiMWSqOE7TT/XLbN1ijAE3+cKokxvNUEzA38qbXDUxhtB
         dqD20SD3gIXQXPavXJl6UCtD+FCxeurUiFkxCx6bljTIxWJjLU/+TkAaVHFwcHN1N9AE
         8AKQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0rrXEIVPmVhi5q9KkJO6sY73E0YIPqFWxCeI39YeGzeaevvRXtLBOc1oIE1ruk54+9GhAWZ89cF7I@vger.kernel.org
X-Gm-Message-State: AOJu0YxqjwrYl6qG2hy49Ynb3HEDguHhybgungZUDHemYbi2hZgoUB8B
	5PgOXq0jW9iLBmk5UJ0AYlhFIWKq2ZLehSOY14sPB5sfp5lhumjYiZN/LVg04wuj2ifIh5OTQpX
	lPZ4PMFo24JqEYZwsVk60mBFz44xxjfa+uWzuSQ==
X-Gm-Gg: ASbGncuRWFM4MaYR8qT6IVVJtGI5anbnkA/pLMC2AC9pSgytMSwYhwia84Fz5KRhjSo
	YXFn1t1DwOh6MxiNtq2+FeGcwYRyckWQC48i7yjergXHRCLVvYb0SPrxd/USX+N4hHhHx7CYR
X-Google-Smtp-Source: AGHT+IGxJXXFLFt+pkffLdd9X2ho/U3c0PDBC0XUCpGyhZttHatbdi3t7azKj/PfBfek14+COG31anjGO/aEPcuLRUE=
X-Received: by 2002:a05:651c:e03:b0:309:1b26:aecd with SMTP id
 38308e7fff4ca-3091b26b4b3mr6773451fa.10.1739529751231; Fri, 14 Feb 2025
 02:42:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250213-for_upstream-v2-0-ec4eff3b3cd5@analog.com>
 <20250213-for_upstream-v2-1-ec4eff3b3cd5@analog.com> <0c43ce67-4d9b-40b9-a23f-380d51912e84@kernel.org>
In-Reply-To: <0c43ce67-4d9b-40b9-a23f-380d51912e84@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Feb 2025 11:42:19 +0100
X-Gm-Features: AWEUYZn0VSwBLgOQWkZsD0PWbeVe8GHIvf8R7_nC9H1K6_4iZD1uXX1m62q-tew
Message-ID: <CACRpkda6ENy1yCQQdsxBnp+RvqgvgG73xHNt07Pd32YfzRQ75Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: add adg1414
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Kim Seer Paller <kimseer.paller@analog.com>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 13, 2025 at 7:16=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
> On 13/02/2025 14:15, Kim Seer Paller wrote:
> > +maintainers:
> > +  - Kim Seer Paller <kimseer.paller@analog.com>
> > +
> > +description:
> > +  The ADG1414 is a 9.5 =CE=A9 RON =C2=B115 V/+12 V/=C2=B15 V iCMOS ser=
ially-controlled
> > +  octal SPST switches.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - adi,adg14140-gpio
>
>
> Is ADG1414 anything else than GPIO? Where are the rest of the bindings th=
en?

I read the spec and it is actually an SPI-controlled switch.

(As in "power switch", not "network switch".)

It's a bit interesting since we have no "switch" subsystem, but there
is "mux".

The question is whether this should be considered some kind of
"gpio" (due to the nature of switches being off/on) in order to not
complicate our world too much or if we need to create a whole
new device class for switches.

Yours,
Linus Walleij

