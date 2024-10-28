Return-Path: <devicetree+bounces-116494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 112FD9B3101
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 13:51:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 154D01C21873
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 12:51:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3BB01DA309;
	Mon, 28 Oct 2024 12:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MR/BUeRE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA5C21D63EF
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 12:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730119857; cv=none; b=j0FUrHbHhKsQPqehF14JmSBy5DTUBQZ17eq9lE+QdLbye+BUR4biizLCLnX2sfURgeTuP25oLIR0zkJpik+XcjyO3W+WNgcHr3al8MBpMDZmytGDLricv9kuAL/965cc6ksL3AHLhmTi9Pg7WmrLhWdChocW3JGWFHMYQKKZCbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730119857; c=relaxed/simple;
	bh=AYO3PNcBJZeAAVOJ0pw64p0JkE8nuCZ2hxlHA8IKMcM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Rclo2eBojYREkxOrX3IZa47QTSfZADEEuCZgtZvtV1Uazbws5pjuFQmojzV/RcAzlFysNQA3eQYrYOu/z5c1jdCd/KtDgKJ42wjhrmNo8LmlK+dfeSasvENcMIX5KSjqkxVPX/3wot+yR7qaKiJxJz8hmEbBNEWbsMSaI70KXlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MR/BUeRE; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2fb559b0b00so35011691fa.0
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 05:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730119853; x=1730724653; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AYO3PNcBJZeAAVOJ0pw64p0JkE8nuCZ2hxlHA8IKMcM=;
        b=MR/BUeREtJ8CZXFYmIQUB+WVgzshuVVlsLvr3Pgz5fmUORtruZHDapxwpdl5iiJTdV
         +rkYdmLZaR2+3fvnqJ9dKaKv0n4XKK48CXCdYbe5pu+HQoGZ4AuR2rPMbXu+xm0UoJjq
         G8VtV4T17ddI8PGh7XKb5igiYpM9BJ8wAtnCB41Lst8ukPzNjUARjXL0ErBqXyfyc+nC
         4v+W9h7q8xbZ3f9YtshXxdCcJQvKKw6Y9p0SBo8jb25OKtHcjGWJelgWEW6666gLM+rB
         VxUhpa87hw0fT611ushxLm/sl6VaC/Zo73+ee3ENwtE4EIcoWKF1MsHuI4aMrJL7qv81
         pXmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730119853; x=1730724653;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AYO3PNcBJZeAAVOJ0pw64p0JkE8nuCZ2hxlHA8IKMcM=;
        b=MUAznZUc5ch/Go53x1S+bort3giZjtnlCLEBm+KPJ1abzhKET654Q6nSIo1F3x4S0t
         uSeKxu5j3vW638nrH8yITP8lTlr2TcibeZwoFHccuOohac6IIlm76CRnlDLZlRjs+jnS
         bLf82m//6yxhULMjC096f9nD+jJ6Ze3uGDOCzfY6XrxbAqb7kSWJiac7aljSgXhP+6nq
         um28n7btnIISaVj6oJQ6gGsbxvCAQPIcp52egEiM7ZKxKgnEImjLJbCkLY5T89oUHfFs
         37No/V4S+87jOgAj8oRNCTYpy/cX+QwJY32Nnj3wTJPBE6j4qkIZvHLdg9G3XrnaVhFG
         Tf2A==
X-Forwarded-Encrypted: i=1; AJvYcCVj409Wkpbo0kiwKqMsMo9EBYSBJffyQ7KExMQxxVdB+oWcB/rMYaRmiNMrZ+yZxLuWEhjzILaZikE7@vger.kernel.org
X-Gm-Message-State: AOJu0YwdxioTPADDRjY/QlI0het2YW19BBlmqCqd7OgHsqXJLd1q+BiW
	bRJR1XjS2UzAgGsc4MM/NsRfUrgiFXIAUW2FkLzbWVuXfW9T1lyw2PwsXeNEYvxBA0sBRhsDMo4
	DRdVcaUHnIF/rTG3viABEz1Cw+q0DsxPy9F8fbA==
X-Google-Smtp-Source: AGHT+IFyS0VRzvcWtTYjPJ6aFo1370dNfA5Rzczcri/1+uh9IrNwUqO9gUn/qEejwvTdifyJ5bQ/y8gQDFfVYiaICms=
X-Received: by 2002:a2e:bc0b:0:b0:2fb:5f9d:c2a3 with SMTP id
 38308e7fff4ca-2fcbe067736mr32063691fa.29.1730119853038; Mon, 28 Oct 2024
 05:50:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241028063939.6276-1-himanshu.bhavani@siliconsignals.io>
In-Reply-To: <20241028063939.6276-1-himanshu.bhavani@siliconsignals.io>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 28 Oct 2024 13:50:42 +0100
Message-ID: <CACRpkdZfeVfS4A_=L5GEjDd_1-oSyRAog08eehMUy0U-fSPAKw@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: pinctrl: convert pinctrl-mcp23s08.txt to
 yaml format
To: Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>
Cc: robh@kernel.org, krzk+dt@kernel.org, tarang.raval@siliconsignals.io, 
	Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 28, 2024 at 7:40=E2=80=AFAM Himanshu Bhavani
<himanshu.bhavani@siliconsignals.io> wrote:

> YAML binding file provides the conversion of the original text-based
> binding for the pinctrl-mcp23s08 to microchip,mcp23s08.yaml.
>
> following compatible strings using the deprecated mcp prefix have been
> removed from this binding:
>
> - mcp,mcp23s08
> - mcp,mcp23s17
> - mcp,mcp23008
> - mcp,mcp23017
>
> Signed-off-by: Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>

Patch applied!

Thanks for working on this Himanshu, excellent.

Yours,
Linus Walleij

