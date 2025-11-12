Return-Path: <devicetree+bounces-237608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BA268C52501
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 13:48:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 500B13A53E7
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 12:43:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36C64334C36;
	Wed, 12 Nov 2025 12:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mX8DZZSG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88231331A73
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 12:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762951407; cv=none; b=NUavm6r0H6ApQgXweHE2GPYzT5ScbUhMl5KQIj3LiMvzatYFkCPCLCGGOkfWLnSHwnji/c439/W/j/Np2+UZydaivrUAqnACcfRFq3IkZP05NyC2t+w68HtsO8TYJLM0ocxiDFJQZBdqRMkT4lTcTiulGNDGE0/OvEZx/gi/czo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762951407; c=relaxed/simple;
	bh=3nCLGdNg0B7kK9ihswq7fVace/Pjn+bodu3kR1lh3t8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Wn7kgbz/0ZMXEL22hcm2Neilxt5KMum5ce/FfsCvpDlr24Sb9HLAjPOnhuD99otiALnBShf3iCQMj0/DaurHA7enx2OKtCdPxWQvCaM6OPYjsE1u2P/xia2QHwcpirXI8nT3wonFR7+cWqrKzJuCPeLziw1V8VrHYhbTWbHvAek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mX8DZZSG; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-65363319bacso303629eaf.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 04:43:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762951404; x=1763556204; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3nCLGdNg0B7kK9ihswq7fVace/Pjn+bodu3kR1lh3t8=;
        b=mX8DZZSGiFmqWcfKLgsYJDP44Ga2DuJq9d6nzwjLltzH+hPrtGlWtbthL9NH6yynWj
         Q19iZOsyg9SZOOl61OJMxM/OxyE6UiTkGsI1kCHqDW0fM79XcyEUfmesFew8lEo2nPuh
         hmhD+1WdixoslUXxL5QKYlae1ReVuHlWAp4ufImR/SVo0ERu1usCDr4GHKT9jUmYveSx
         P2WgBakSR6uCdlviVf15jwnTfEluATz2ncPbGNcprTxBidaT0QvgCIoeuYd2eqFF8qH2
         Hn/WiEEKMIh8y71vjZ8xAhwicx3Q+2SqfvTRUmAkbj7ROkR0ZxJHYkB2HuICL3JjnR05
         Ahvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762951404; x=1763556204;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3nCLGdNg0B7kK9ihswq7fVace/Pjn+bodu3kR1lh3t8=;
        b=o1bturN9GWZPrjyZqMv0HePbEodhQTr3dddrIjvthZQlOG4jifOVlTLNWp+mhGVvtL
         04gTrkb3Ald1CPfGv7oxbfj6xDes0uaxoFbhi5aVUz4dRU7pEBHMIoIljBFEh4KdueJ0
         LDpBE62YsWl8bDJcdW/dOZt8E5Bey3bYhYlEVvoJsxIa1gaTO9rFjYEFVAnSoQbhX5Ty
         xJxxxws9BGTe1d36EeMGGNifZhlxhnYEWfembp3JUg87dWzQCBstbnul1LR0DSQt/yVC
         kw9ZiWqLUL3fgM0WzyoS2eVCDgslQzkwPqOy6ItDuwpXAX6wzpio6gANGhDiFOl2EMZD
         D0DQ==
X-Forwarded-Encrypted: i=1; AJvYcCX0/nCNkO0LV3/uuLtoMAnzw3Ay6DBkn8kj26sOhB7qYO6zDHkCOpv2KSRjD9iQfFXhwikMz3T2DYDB@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6W8OXIKlNtnDX+4//faXdk9c9C13A0aiDZCLvcqj0yKM7bl6q
	1uhDihz5NSfw716do2hIQ+q/x67+ya1MgqPJJHLraGzAMtvnGR0Mge67oN+wTm/6wzqNfWjXrcs
	GeLr5VmKTaqxoA8pXFJj9g+XQZhJigCPDzJKNre0mSA==
X-Gm-Gg: ASbGncvGcFBYY26PMOb23SL4eJ/P6lQXhNwygyyNtXyLn1Y0K9VPWn6P4LktiNpscIL
	3nRxss4xvdHpUeEplr2/ZFWG7BAiiNAOU3HLotfoswLsDx6tYAo5MJL9cyJ9UfdNJwD8q6/wmk0
	y2OwVK286q8xPuP6g4RclHfHqHrKw3vt7KbHp+pRxVH8waxo6kqm5PqCmuRqqQWjmzKLmWlht/3
	Y9kGbKUyjhcvB0yjM1i63jadyEERtq5gDiX1+HdDzA9zMHvpsScZhJUkrUrKw==
X-Google-Smtp-Source: AGHT+IF56OFOYiIqZ0djA3ZvTwB3pXvmWTE2Y/2e47Acadn9UwrR6l4mgUbLbvMhjjLW0TKRt/QCjKhcWzj8fAK4e1A=
X-Received: by 2002:a05:6870:b14a:b0:3d2:ed44:67b9 with SMTP id
 586e51a60fabf-3e83416c4e5mr1230844fac.23.1762951404616; Wed, 12 Nov 2025
 04:43:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251111192422.4180216-1-dianders@chromium.org>
 <20251111112158.3.I35b9e835ac49ab408e5ca3e0983930a1f1395814@changeid>
 <b55d94f2-6b79-407f-af58-b9847db3c9a2@kernel.org> <CADrjBPpCKfd_0PY=DULnmqfb8veqH-SQ-kr5gC6Y28uBVo8iRA@mail.gmail.com>
 <CACRpkdYN=FN92cuS3U-XBVoyD3DcKkfzEXYVNnQNK07rxJJZ=A@mail.gmail.com>
In-Reply-To: <CACRpkdYN=FN92cuS3U-XBVoyD3DcKkfzEXYVNnQNK07rxJJZ=A@mail.gmail.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 12 Nov 2025 12:43:12 +0000
X-Gm-Features: AWmQ_bmPb1_M5A-rGtzHjXMiQBLBGQHTdvPma_dayyNctbSOvz5HTwmZK5JuVGs
Message-ID: <CADrjBPo+EhJ5iLCm=HpzLCWjv+QCX3ft4e4eC1CPzeCk+trpKQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: google: Add dts directory for
 Google-designed silicon
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Douglas Anderson <dianders@chromium.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, linux-samsung-soc@vger.kernel.org, 
	Roy Luo <royluo@google.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Chen-Yu Tsai <wenst@chromium.org>, 
	Julius Werner <jwerner@chromium.org>, William McVicker <willmcvicker@google.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Arnd Bergmann <arnd@arndb.de>, 
	Catalin Marinas <catalin.marinas@arm.com>, Drew Fustini <fustini@kernel.org>, 
	Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org, soc@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Linus,

On Wed, 12 Nov 2025 at 12:36, Linus Walleij <linus.walleij@linaro.org> wrot=
e:
>
> On Wed, Nov 12, 2025 at 1:26=E2=80=AFPM Peter Griffin <peter.griffin@lina=
ro.org> wrote:
>
> > There will be some Laguna SoC
> > drivers for pinctrl, clocks etc,
>
> Oh new pin control, interesting!
>
> Will you be doing the upstreaming of that?

It will most likely be Doug, not sure if he's started looking at that
yet though.

Peter

