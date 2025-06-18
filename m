Return-Path: <devicetree+bounces-187090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8A2ADEAEA
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 13:53:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D80E161961
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 11:52:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77EBC2BF01F;
	Wed, 18 Jun 2025 11:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aiB6xGUZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AEA72F5328
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 11:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750247546; cv=none; b=jHY/gbfxv20fkX/25CqTbbFIcG1GaySzcWGZUpzEBFcmre3bhmHMT10HCKVyijW0X1sqJSLC+Ngs4JqqlUhNqWId08QUdf9ogCRKDJKaV1+deLD1d0Cr6HKA6WNwQ+uLCgmEl4D5YtzskkTLNZAvIeY5ht/gSCXaqnBZ1LOG4Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750247546; c=relaxed/simple;
	bh=eU5b1jLZCw8nEnzB6yiVdmF+qD8sNWEFFSroG2gd7fI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fDQWEqJ6MIa/orykkDKiuJd+rpUhxKdUrJVmpe+8JuiZIaGIvPIBymeHlXCMuKoc0qc/lpFSOG0vljqFVQvC44tfQTtTzLvxIx0M7vnETUEqDDSqK8Fb37uHk3976p32/1S7q5rSUBKyyU+5FOtJ/Hs4HYmttI0idLSVMv0VSSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aiB6xGUZ; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-55351af2fc6so7540100e87.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 04:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750247542; x=1750852342; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eU5b1jLZCw8nEnzB6yiVdmF+qD8sNWEFFSroG2gd7fI=;
        b=aiB6xGUZOykjxsf3HYlkaHplMNq57ST94UOJs+JYv9XKSphRWgYNkKAXLIuWfg44QP
         HqUwoknbkVAZFbCL7yUBwqrBuH7aVlEIea3beXfbXwXtJP9js+eswPzqsTUHqF+9v0fl
         8UGr/Kp7i7Vr8PxUsoBUA2aQO5fPIx9tUqMDrgn56A8knewnIchmCT7r2dGcv4gJpmpm
         7C9ibt6wNoiw6ECW7rrwrvyzHRjhBxOZkv307erGff9QCYgxOBBf49PtxXwjuYRsjRmC
         Gk/fQ7YBf1v/oL1byEkjEqVzpGm2xLDuzr47OmJPmIfXWsGvos4ivhwdkBYXMyuYfP5j
         az7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750247542; x=1750852342;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eU5b1jLZCw8nEnzB6yiVdmF+qD8sNWEFFSroG2gd7fI=;
        b=B3gZaCixyLFpnu3xc9zGk1E+ttd/uU/G1nZm/F/WqqrLiYkDAR6aBObZ0nN5bX4mY8
         IZwQNJfi5Q4P1XfNLLyZZyE/WsIrWXOAqsNticRnIe0Z73TpPAxkRUR6ruB/cABsu4BI
         Tw0SV+x0dm1AH+lUFdEOpdkOLZvlJt5Qx04f2AZTUs83JXxVAggX5CCZfo4RU4lrz6nX
         zX1kVBMJwU3YOK2lx2ioXM7SmBj6OfN2K6V00rIfboSQFbyPIJoOgFim/tn1iyWOweQG
         VbYTa3J1DxZZ+iJokT/r5wehzLviWYaRmUfZKGhFFNOipXD54Nobm63daODgrJeFRUfo
         nKXw==
X-Forwarded-Encrypted: i=1; AJvYcCWJkHfiGD6Z3N5JeVK6mOOH28FLpXAHZBCuofNaCFRs0iFK2JswX+EqHQqeZVLeQBdaO3bn7H4od8vO@vger.kernel.org
X-Gm-Message-State: AOJu0YzSbpvhdEfQXJBGfmmqC6+Co7Ib214DiIc75X51l6TL2Apg4INH
	yUjSE7O12sV/BrW0w11coFXDVheN1HjQP1GsjJ7LgtznRewSwjk6T+F3qAa2jFuKyn0i+lA6cFi
	RDaf2AX+4BQ/Fn/oGqd78qA9YmV+2GzyZCLBJT11ZfQ==
X-Gm-Gg: ASbGncsoBZP5BtCblYzBUlkn7BU4klnwmocUYL8myP5WJ/p7O7H8W23iEFS8qTdAo+y
	6yTzzKnvUUX9LlyK4Z9U41lVWIx6uDDTGkD0R0k5cJLzhSPsCJUjQQXrzO6AxjD+k1BHLVmJj51
	/d6VKna6ZghLyWnXzEJvYoNeu1/Ubf20L7rzTgllnQaTU=
X-Google-Smtp-Source: AGHT+IHjWdSTmS4aDTVqDd7NBp2OPbykUx652+t/IZOVkWWGf64J/RLFbhbxDCwVOIM7rfV41BeoBeUWfyaPxf5hCjU=
X-Received: by 2002:a05:6512:3092:b0:549:8675:c388 with SMTP id
 2adb3069b0e04-553b6f5fa33mr4843249e87.52.1750247541573; Wed, 18 Jun 2025
 04:52:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250613114518.1772109-1-mwalle@kernel.org> <20250613114518.1772109-4-mwalle@kernel.org>
In-Reply-To: <20250613114518.1772109-4-mwalle@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 18 Jun 2025 13:52:10 +0200
X-Gm-Features: AX0GCFvi_Kw1gkeOTQZNsLTIvoCnOqNgSVyelJU-92RYyRLKgU7_lLqQN3HGdew
Message-ID: <CACRpkdabkT4cGLVVrAfSk_ehiiY9HLzpfsvUOEXH4wH0bXxPuQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/7] pinctrl: pinctrl-tps6594: Add TPS652G1 PMIC
 pinctrl and GPIO
To: Michael Walle <mwalle@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Julien Panis <jpanis@baylibre.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 13, 2025 at 1:45=E2=80=AFPM Michael Walle <mwalle@kernel.org> w=
rote:

> The TPS652G1 is a stripped down version of the TPS65224. Compared to the
> TPS65224 it lacks some pin mux functions, like the ADC, voltage
> monitoring and the second I2C bus.
>
> Signed-off-by: Michael Walle <mwalle@kernel.org>

I guess the #defines for this to work are in other patches so it all needs
to go in at the same time, so:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

