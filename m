Return-Path: <devicetree+bounces-253807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D21D11784
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:23:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C2DD13046F86
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 09:20:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 509E2346AEC;
	Mon, 12 Jan 2026 09:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="WEPRh/cp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB024329C53
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 09:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768209602; cv=none; b=lzMHbNDGCn0ccue9adBMXo2pT2QOsO18BHusz8MjfOr5djfNdBwH7PZZi4OvjnitjikRF+JWNrtwZDg0lIpdVWAY6r68OkPxRQ7kFnlWKMuep/H05nBiiNfAx/I+TKHkfW+yBgbxrdZBOoVU+jZCJJk7/nHfUao0ApDewhIV5q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768209602; c=relaxed/simple;
	bh=gjcYFAuxaDI253DJSgDXMH9GfBZInHB2HdN8H8KRsbc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CUIuBbgfYzvA/h1gtJQNdY7QZKTZd3RpZZqSKc4lLlZdl8Z9jlX4NeltOoelCpZn8dnqs/o//GeCLSwelwuQH3HaRG08k1ztgKffVtzQXh366t7TL1K0wTewqZyUxih2KfT5sLYpQxO/c20Ki9f2UqomkfxwB/01JDze3fd0Rmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=WEPRh/cp; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-64b8123c333so9761335a12.3
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 01:20:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1768209599; x=1768814399; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gjcYFAuxaDI253DJSgDXMH9GfBZInHB2HdN8H8KRsbc=;
        b=WEPRh/cpqiIvVhTB4wHvclCEhpjaVT/eHZSyiAMssLFeelcJbzAXcw5U6Gpf5rK+kB
         gHQkit9EVGtKz5GCT4tC3paxQq6ppSTLvMoE2wZklNwKGXcRXvIyqFU7MYRDcihNV96V
         e6eDolE2fzQsJ9hT5kJ+OQPnt+wwxBEbD7WjPoLTW5HGaGj7W1BHf/QIFsXHc/Yj8LFh
         2jQcg3gm+17jcJmTIdx3SQBNeKYO8kXDf8dXAiZn4hVSoPwweuufTZBjk5HT48w9HLP8
         lIggv9UCxnH1iAkXHoC5VRZ18TIlF1qe+FlYajRBAbEsxMgiSxJ81cerN+t3iTxxkAGS
         2zXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768209599; x=1768814399;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gjcYFAuxaDI253DJSgDXMH9GfBZInHB2HdN8H8KRsbc=;
        b=haXNdJ1G1gUkptcjBf9Zzb1CKDzaBSRKzU2xiJxdBoQerElrJ6bR33/hCuWossEENZ
         vRtQlw91RMyYeBZwWkQGt3Pkq5gp11pL2tPITf6NhwPKbJkBq2c+BAlbhObTea0ackFm
         dOmrmqiGMu5C9c1m4NDxI5g1ADRcOnypaR6udyUGMcpjv5J1UQZ9oJWd/De5vsQw9fZD
         pT6PnTvLcZDdQxmRTB3AQFcN2sHlGHjbfWGs5ibo5t/Nuu7waCySkl5jdhHiYIeadY7l
         VQvd7z3uIieaMfrCSUcGJJfkRwnTZNcS8EFRjytjp56G9HQatt9RfwQlAUGKjzuNji8z
         N9pA==
X-Forwarded-Encrypted: i=1; AJvYcCVzGAvsTiy1jADulh3KG76pLXtcd2aUxoNlKOjZkth43xvKNojmtxhlIOJEfU0C9mGRbkyxzcVESYNU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+I4y+1YJisxY7GRv1TYcIafelHJarlxPFn7gOYbUWZs6eHHSj
	Yv1u8TdRFdHacswrQfOoZ0llWrzRgtgO403j1+VCh//VOr0R+QEBgn7oixr0LaTGC9xhCCnFz3m
	asWI4zqdGq2rm1OhPR6bOIHu5lD8EiCksfmWo2aiDPg==
X-Gm-Gg: AY/fxX5tn0ti81+gi0R7CRIbNNXzve+9rrixaMKfTZEnu1RTzm2EpCzEX1pZRNqJ+CX
	wnjWMnLiRMG/DK2s8Kt0jOeeOxSAjD7FHsi11jJqFZi5BPw2HUe5VZRt1NxAHnb/PLylaqhJwWh
	srXoEZ5W6NUn/3D0uHQi+q90l7hCbn/oXC6zdBQvWmTil85S7Lsktmej3AoSMjYMotu681WIlwo
	6/iiGa+yHa8vGzQ1gsmH+fZP/p15bq8tnwgrxxU5JTQTBS2FSAIG/W7Eesm25ojEy+NYoxN23TH
	qjQ0NC+auL+hsSvntZpgVXG6UQKj8srLIdnyTDVMn6JJaxG73Q==
X-Google-Smtp-Source: AGHT+IGuKd3o2pS1NgX8ycF8TIEnqLjf9jm67IMIiNppDR6/sHAzRL+XtHzRQof4J25RchbmWV6flkFwjbLaVQJKzvw=
X-Received: by 2002:aa7:c30f:0:b0:64d:498b:aee7 with SMTP id
 4fb4d7f45d1cf-65097dfb0ccmr11406756a12.9.1768209599182; Mon, 12 Jan 2026
 01:19:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260112064950.3837737-1-rdunlap@infradead.org> <a7d75307-7c99-4181-a3c7-10ad26752fc0@kernel.org>
In-Reply-To: <a7d75307-7c99-4181-a3c7-10ad26752fc0@kernel.org>
From: Robert Marko <robert.marko@sartura.hr>
Date: Mon, 12 Jan 2026 10:19:47 +0100
X-Gm-Features: AZwV_QgLxRk4y7N5x5Cj25e0M8TmTNV31-p9jBl2Epv--W5m3OiM-Y8q1VqZsbk
Message-ID: <CA+HBbNGaQ_mvMLW3_aeNqDoLDYWX7NVObQZzzBNBuovkL=+-7w@mail.gmail.com>
Subject: Re: [PATCH] gpio: remove the gpio-tn48m driver
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org, 
	Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, linux-gpio@vger.kernel.org, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 12, 2026 at 8:27=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 12/01/2026 07:49, Randy Dunlap wrote:
> > The gpio-tn48m driver is useless without the simple-mfd parent, which i=
s
> > not present in the kernel tree, so delete it and all references to it.
>
> Same comment, simple-mfd exists in the kernel, so driver is perfectly
> usable based on above sentence...

My reply from the reset driver is valid here as well [1].

[1] https://lore.kernel.org/linux-devicetree/CA+HBbNGT+7x0Bs9p5=3DbNVUSHt66=
vd38RuFdjm_GxPWX6C6XDNA@mail.gmail.com/T/#t
>
> Best regards,
> Krzysztof



--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura d.d.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr

