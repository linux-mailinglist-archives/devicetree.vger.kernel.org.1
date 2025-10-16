Return-Path: <devicetree+bounces-227907-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA5BBE5B24
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 00:34:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5A6F21A623C5
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 22:35:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FFF32E1C56;
	Thu, 16 Oct 2025 22:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GbCxO3Jz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9693216E1B
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 22:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760654076; cv=none; b=RsrB8mL0ZGDr0RWQWE0jCHF9TCjSS5etztC6/Hcz/dg0Zbk706TTYEXgtTHgYIP3SgkxJkbwmWxx4juZjU5WpVX568m6v8WZDXbgaDY2eYTzupls9tKe5q6pgGS/ZOCvaekj8BuN9LwpfEO5DncrZj0L45AJSwl1Di3Nrpt4r0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760654076; c=relaxed/simple;
	bh=iX+5unsZ/nIc8zTlOk5LEx289kMidILELWKfCtaDFTo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VzjWiZo2p54ZmnH1CBWMR3FJourAuHIjDgI+AREid5VA7fuTDAEThUCzOEHZQS9Ea3ap2oh3ud8UC4KvZQlT4PrcySdB9dExtWr2Au3ePEIOpu3cUFbsqKGsOix7iN3z7byWWPHlE3Lo0s7P4wXUJpcOxrwkX/N58rtYaMN98I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GbCxO3Jz; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-3737d0920e6so14511971fa.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 15:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760654072; x=1761258872; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iX+5unsZ/nIc8zTlOk5LEx289kMidILELWKfCtaDFTo=;
        b=GbCxO3JzFZOtdCZdB6AL0d6h42NLdhHHSvZ25WZcN6gnzWh3cwKf7u9Qb9FJ+sqCCg
         N+JFVDB32qjYnkbL+p/AbXxNI5Eus5I3VEEr5iKt9xj3lKcrnStB6dgP2UGYui3fUYh5
         dJwPDloaJjPv0Gyl2+b9ETXJBGpzwmMn5uPewW0kc7Td5fuZKsiK8TseoAUpVoTNAsW0
         NXRlO1zYcl3S2tJTdYjoq2jPap9KqiSvC4KzxbsR0NZfJdpHASRL50Eype7fyPqXbBKg
         68WvT1AiodzN0sLQ0Q69DZ6u3ZTGgS6RFsyJwaBpQXUnNE11y9OMKuvWv5iWhlbe0rU4
         eIfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760654072; x=1761258872;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iX+5unsZ/nIc8zTlOk5LEx289kMidILELWKfCtaDFTo=;
        b=xJ6m81n1lauCAwuFdguz+peKxshUdpNUEIBfIMbjhncQvY2kh1os5wLqAyK03wCIji
         cZUI7ql+Jf+fBeokabf+8SUHO2NVvyl7GimGfW3hER6uW5rEPnXljaFoOG3F9pzh89sw
         GIeQwmmzDoVx7tX5CWQRcY7cko/udsol9MBmuKY0sm2l9n3xJKYAU26fL33qP1J1U9jv
         Cxc5I64taZmS1SAyODvL746HCVsvAe7aQJlK0mjojvo4iv4mPgx5zj5Ynpw0rfPo6k9u
         gjTL8MfMgnIsD4wd+eoXvF70lp+lfyL3G+o3+ylBQJTq80vPTcKMyIfodKSqvngz6rBQ
         on2g==
X-Forwarded-Encrypted: i=1; AJvYcCWDWEubvxa06P6hWsFGqTxe4O7tGhno5Ou1s6/7SfZXB2savt5FgTW1CZzWxi7NaWYtXervMzLxB5Rh@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5pjQr+m1YmhFKKL+lMNm1N+DcD6FhUchpa17lxkuxtRcdRpEI
	L0XdO6xFjs/Mg2h6jw0ojJs5+LgpPsVsIGNQDCnnlSkLApMyRPSVxZcr6zwRTGu757yONReDhpM
	PeB8s4dSVBrxouGG8Naiy0kCXFkSbZ9od2TpGVAhGQQS0Q3jXZ0I/
X-Gm-Gg: ASbGnctmF4nKXU7t99FztkpfNAsFo7rNAnTydCTBAYEYdWGqpnDn0WLX1Iq5Y5LKDoJ
	auckUUCTRW7H3TaZpRs5POf2krvjMLcJBsdCI47VMtHXv2QbC8gWZ9rTNA0o47Ja78lQaBIy82H
	bcZIWlRRZA1kmHMsTjn8g7Twx8zYMCM9QFRrXMrvk6Uzewes4NuJQZ2D3oLAF5sApD+nTM3Tijj
	feKVNt+yCgEcdO19DT0WcZfNF2oLWEC0CKy1cpxRyFXdTBHaQz/AeJSd+q9
X-Google-Smtp-Source: AGHT+IFA4cyVMFygunIvR6Sb+S9YIRIcOrQFSwrOM7TfF/g+giPJ+nTPjzhR5YZOyLHNwAaJZrRx7sKEMrauQ98ImcA=
X-Received: by 2002:a05:651c:1b12:b0:376:4320:e362 with SMTP id
 38308e7fff4ca-37797ad8130mr5292681fa.48.1760654071781; Thu, 16 Oct 2025
 15:34:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014140451.1009969-1-antonio.borneo@foss.st.com>
 <20251014140451.1009969-3-antonio.borneo@foss.st.com> <20251014-barbecue-crewman-717fe614daa6@spud>
 <CACRpkdZT20cdH+G6Gjw8PopAkir+gGgMtRR4pkjnXFrmDkdfog@mail.gmail.com>
 <20251014-water-gown-11558c4eabe7@spud> <7ba7c2f2a6dcfac30f05b35a4f41ef0af2dab575.camel@foss.st.com>
In-Reply-To: <7ba7c2f2a6dcfac30f05b35a4f41ef0af2dab575.camel@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 17 Oct 2025 00:34:20 +0200
X-Gm-Features: AS18NWC4woaW4Og4j92NIZzv9C3mFxPWXkXZf-tyb-63Pv9rPBLJcNATzKQalio
Message-ID: <CACRpkdahbDfu+ffZC50hPrZRRo85_A3WUr8za-D7_tRJA6shrg@mail.gmail.com>
Subject: Re: [PATCH v3 02/10] dt-bindings: pincfg-node: Add properties 'skew-delay-{in,out}put'
To: Antonio Borneo <antonio.borneo@foss.st.com>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, 
	Christophe Roullier <christophe.roullier@foss.st.com>, 
	Fabien Dessenne <fabien.dessenne@foss.st.com>, Valentin Caron <valentin.caron@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 15, 2025 at 2:52=E2=80=AFPM Antonio Borneo
<antonio.borneo@foss.st.com> wrote:

> What about the existing 'skew-delay'? Should it become deprecated in
> favor of a new 'skew-delay-ps' ?

Maybe it should be deprecated I didn't think of that.

I think there is no need for a new property to replace it,
your new properties can be used, just with input and output
skews set to the same value, so hardware that can only
control one skew knob should complain if the values
are different.

Yours,
Linus Walleij

