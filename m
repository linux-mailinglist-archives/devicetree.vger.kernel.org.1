Return-Path: <devicetree+bounces-231788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D76FCC119F4
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 23:10:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 25F7D4EBEAB
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 22:10:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFC40328634;
	Mon, 27 Oct 2025 22:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BY5MOK84"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D915325495
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 22:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761603024; cv=none; b=WedX78aZdD399EDr845Ej9ctPrb2XO7ody8c8AgpoBIUTx4VSEiURWJhSiJnI9BhR8cGrVYdMkea/rEuuEAAvsizbJ6lqhKseE8091Mes8bPt3aoBtx48TL9IjuiLIBaWsNdByRF4S8ezCMHSjT7A/WIb1uT4YITiHN3zEmWkX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761603024; c=relaxed/simple;
	bh=P83isQ2gvRt7wdmXJ1hdjP2SDCiz+lwtL0Vt91PBpcs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Nqv/99RQ+SYsa04BYX66IZOxD2vLaxVaQG2SYa9yaCga24wK0mCyJ7cF2v+6unt0KnKpOXrLuRaVhAQASvdzt8QSjnj6F4pEjBuuEjqGUEWd8PqNO/nbo3JI68ersxhzJrPEjAHdheo/eO26ZzEg2TYNce4RopCsOv4t48s6y10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BY5MOK84; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-378e603f7e4so43240581fa.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 15:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761603021; x=1762207821; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P83isQ2gvRt7wdmXJ1hdjP2SDCiz+lwtL0Vt91PBpcs=;
        b=BY5MOK84JV+tPp4DbFoSzBG5q5ivc9OWdzGlhRyFq6toPkMeFB7YP8cGA3rUJsMJaJ
         /3pypQxKD+nmoymHtdSSH5yi8foznYAlEP9mN9sWWpci5B/dUJudtlIt1bqXf66VXUxZ
         aHv/dLRRY4j4tPZrhM9WgYO2Bxu3j+LF8X1HRPYsy/1wlTGHq3c+HBTtKVQizXZS6QJi
         M7DNWExbXCfa8477wN2uLooqQ4dDZg3gfhGUCaFGIaqk7qwkOnfI/lzznH3PHavGYJjp
         EdhUflwhlY4+na9Robb22e8mW8Q5BUWyahRPZlvMknVqFGhndgjPI4ZVSLczaJzbYlOG
         HLjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761603021; x=1762207821;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P83isQ2gvRt7wdmXJ1hdjP2SDCiz+lwtL0Vt91PBpcs=;
        b=FecfCdrf4/81aMvV22Wk5tmJWzjwwifr9qIYWSjOv6LvoO/Lk/HVsQp0TCKAfKKvFn
         T2GDe27vuwuOMQbt8FlAce/o3DnAZQoIH/Es82pnrL+Vn+y56+6tpXeVyNUbe2zrFLby
         YQqb68paY//CTw3xrpXw8x2u0fTMvB8tX1kneSqL5QK/cFS6pPW55p5BDN0+h5lf6HSH
         ZlcI38YMsUaegRk3245yGDsWSiiFQzfkbiKwHh6vFyvpoQca6wbDDoOMEQGhQh5t+2fr
         O9gslxlW3X0vW9ZifmVROWW+NxXw5wG6ycXqKXWjh6sbZtxDKZQNv2Z28uorOYeetbDm
         EKgQ==
X-Forwarded-Encrypted: i=1; AJvYcCVqM7ONMn31o/coU/Pil7jJXvnd4rZWZsbIGcOMPNzCCgnPcEjiUMfI1muahWqJbNb7dh1dd/kkjrQm@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe2lYHYN1Sxxb2AljjTSoqB+ZfJEOzO4J1nlGBSVZA2thJqI/E
	chj693e3QgBLwNHbVnh7z2bigI9Nek0F9coOKS444+qQFWEMY5B9xW8/Aktzua0C4/PvUnOuwJV
	E0UG/8y3mk4H8qvrJskLzbIGkhIt3N8tDQGC+0khPUw==
X-Gm-Gg: ASbGncvXQq53ATT9Lu3wuXL6bqkkh8bSqoH0Wp1G9DCr1uYB5/RDEdObiRlQ67mf2dS
	/g5QVBQqeiI4mlt/EF/jbJ5N0UrTxkitMsnViOITT0Sm5w0xtnUN4Yh5RjQaaiBb1a/XAgu3LGg
	h+p5kwDjwDvlyfmdoeXGO7d56Bb7dMtTFBf2BNE5mg8FoonFzDC1GBE4p61BhNg5BNGPCNP1G69
	YjHdhSfKjvfUEJb/2E0OTXCg92+lQ9s/FoqsAe51gFm3wSvrssybmQMUCV3J5fY2XKding=
X-Google-Smtp-Source: AGHT+IG9eaDbYlt05Z9zFZohfCDZwr4gqNsotaN2JZ8jVtyJSZnzH8ZzP5hqxntC1aSKIIT+xacG9uS/M37uyI9DBCI=
X-Received: by 2002:a05:651c:43c8:10b0:372:9992:1b0 with SMTP id
 38308e7fff4ca-3790774ba26mr3083561fa.31.1761603021254; Mon, 27 Oct 2025
 15:10:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251023132700.1199871-1-antonio.borneo@foss.st.com> <20251023132700.1199871-3-antonio.borneo@foss.st.com>
In-Reply-To: <20251023132700.1199871-3-antonio.borneo@foss.st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 Oct 2025 23:10:10 +0100
X-Gm-Features: AWmQ_bm5etBIx2qF76UfEPLiy1Nl6j4OjIJVT1wJCcuvidRKmWwIeYmy15zR_II
Message-ID: <CACRpkdbitTgbd+DcdTNYeuHMuSeMQMx5PQbZ=qsFxCPU1ZFugA@mail.gmail.com>
Subject: Re: [PATCH v4 02/12] pinctrl: pinconf-generic: Handle string values
 for generic properties
To: Antonio Borneo <antonio.borneo@foss.st.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, 
	Christophe Roullier <christophe.roullier@foss.st.com>, 
	Fabien Dessenne <fabien.dessenne@foss.st.com>, Valentin Caron <valentin.caron@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 23, 2025 at 3:27=E2=80=AFPM Antonio Borneo
<antonio.borneo@foss.st.com> wrote:

> Allow a generic pinconf property to specify its argument as one of
> the strings in a match list.
> Convert the matching string to an integer value using the index in
> the list, then keep using this value in the generic pinconf code.
>
> Signed-off-by: Antonio Borneo <antonio.borneo@foss.st.com>

Patch applied, I had a hard time to follow the patch fully and unsure
if we should add some docs as well? But let's toss it in there and see
if it works.

Yours,
Linus Walleij

