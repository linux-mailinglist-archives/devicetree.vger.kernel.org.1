Return-Path: <devicetree+bounces-38423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACC5848FE0
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 19:19:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AFD561C20DF0
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 18:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE50B249E8;
	Sun,  4 Feb 2024 18:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g1hUHdEU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB0C249EA
	for <devicetree@vger.kernel.org>; Sun,  4 Feb 2024 18:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707070740; cv=none; b=j3lkul/e6dMDLJcCrOAFFdGD2eIhrkaNPD8ji/1pf9wIUHamWx4Q7lblQQD1vmkACFNTEORWwnAOpjxx24kFEvJ94QFVkPV+3dwWLqb1WEMD6yfIke5RrUFdtkn38CAaZRUwNrmRNYJFi+fewrhaob1uBaaEIWyaAS2olRXx9oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707070740; c=relaxed/simple;
	bh=3w00XsqZZNEJgfTVb0Mw/wkTith+nLWiGUTMx8Ahb8Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bhJ4eCy17KBpIyyN1sLFk3nYXoITYz+DqXiRXdZDEciVa/JP7nGJ+A9KqO9t1vKuSJulVQ6iMDcnp1mmCmKTz5odQrQJWfQnHfRH6hZ9qGOY8QG7RPucT+Jb5lAqBm4NGzOL6kxpTzCJk8P+k4QIUFjbu4G+6bbKipmcLY0oHCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g1hUHdEU; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-604059403e9so36670607b3.3
        for <devicetree@vger.kernel.org>; Sun, 04 Feb 2024 10:18:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707070738; x=1707675538; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3w00XsqZZNEJgfTVb0Mw/wkTith+nLWiGUTMx8Ahb8Q=;
        b=g1hUHdEUrYrhiMomvYkGATJ8IhocW6cOUqUjGrnkTwgj1otzyd0Psn0QeIQ/Cqo9pX
         hQ0af42fVxe8Ph+qUQ2sDrl/LAeleXiZ7l4hmFfVMbTB05dRCWqwFOe4vDG6iVdIR0ew
         iRQHAdbTHnvngTLDemQO3lRFYEOet6PTvs8iwp6qYSOw7dkDk7D1OE0m6/aUxoTIu4Em
         KC4IpqV/TusfXjnghdj01YfFzA7BM/qJ1FpwbeR0ojci4D2NbACjJZPoh63jV+A3ILr9
         yjBGgNoMXAtM8ccZm0yzHDw+DB0Fyq+nXiZXfjIdlG4AaJN6V1HwzLneyEkMtLJCpZid
         lQKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707070738; x=1707675538;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3w00XsqZZNEJgfTVb0Mw/wkTith+nLWiGUTMx8Ahb8Q=;
        b=a27w8UFwvpqvR6giVFXhiihWUd3M6eC44+dGrmh/PkJ9RCjymybc5JgLsoGg2RIOS5
         xA2x/zywhBL/XuQhvNhK6Al7fpQmtzzv5dDgPIpvMA1PP75UQrYr3swRW2/EeaC3VzNo
         5DvaeVJdJTukzNao1rRfr0ro0J5ewc3oqVSz6Kk8dsbbsu2vebRnMItP5cAvs0CYINlC
         HZXlgKWKGdsmURvIuRshVkCKWTpm25nQY/+LMUPtB+4Awc2ECkPNIJ0FgSkZ0vVVdv1m
         A17OJWPToaoSzGOZqoh61KBJVg4112q95Gf2Hp7lyZiw1zqa6mUV5Dj689+e+CV4bK10
         aU1g==
X-Gm-Message-State: AOJu0YwFHSXzkioKDQq9oS8kHBoA5phXQQk8zlGRS8Kfakiu4+2meB1i
	hfhHEd9w4c4MnkZAXfEiPDHBKB9iRWFfCPpcc6xceT1ZPzZky+qCSfpExVw0Jh+vXWg6kxMBLT7
	iW3hJC3gqah97wLk7fLC2EUiox0DBed1colJHnWwz81LlbcmX
X-Google-Smtp-Source: AGHT+IHlIEaGaeAMWab7/L3E0/tkffip020QFwU575qHSmmvDyGp5Zk55jezREUcVn3JVEng+6jrgXNRvKQDrd38TRk=
X-Received: by 2002:a81:4422:0:b0:5ff:91d8:42b0 with SMTP id
 r34-20020a814422000000b005ff91d842b0mr10758935ywa.46.1707070738137; Sun, 04
 Feb 2024 10:18:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1706802756.git.geert+renesas@glider.be> <ffb1eb1d747dce00b2c09d7af9357cd43284d1c4.1706802756.git.geert+renesas@glider.be>
 <CACRpkdaBBFjtgoUhhK8-X28BK=2NCyRS2NiYvVEZFAsQiNZH9g@mail.gmail.com> <d41b0858-df3f-4002-8a51-aaf91bf3a659@sirena.org.uk>
In-Reply-To: <d41b0858-df3f-4002-8a51-aaf91bf3a659@sirena.org.uk>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 4 Feb 2024 19:18:46 +0100
Message-ID: <CACRpkdbquEYe4mtfFikaQSFjEsQMqY5tPbOSTCSB9MPqx2OOLQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] regulator: gpio: Correct default GPIO state to LOW
To: Mark Brown <broonie@kernel.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Liam Girdwood <lgirdwood@gmail.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 3, 2024 at 1:23=E2=80=AFAM Mark Brown <broonie@kernel.org> wrot=
e:
> On Fri, Feb 02, 2024 at 06:41:31PM +0100, Linus Walleij wrote:
>
> > Actually, Linux can read back the value just fine in output mode,
> > so what about just ignoring the property and update the document
> > to stop saying that about Linux?
>
> IIRC that was there because historically the gpiolib documentation
> said that this was unsupported (though the code never actually prevented
> you trying I think?) and will have made it's way through the DT
> conversion and refactoring of the bindings.

I have this gut feeling too but I can't find it!

Yours,
Linus Walleij

