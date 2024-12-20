Return-Path: <devicetree+bounces-133122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5F69F94B5
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 15:43:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED88116AF1F
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DADDD218859;
	Fri, 20 Dec 2024 14:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SY8NaXRa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00EF5218855
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 14:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734705774; cv=none; b=jsrnyzXsFReZOC0toHwjKrmxfzgKXyrNhrYUqP7YISKoCsMTmcBPW7B5H1Qt4F/2OdmDVfRzfox5Qk3Ajt6zXUGJH9Xv3JLszoUgeBhXOw6EZBA0jmGtMZG234mbtYN7PXQlElcqZdh8HCAx8m8CM3TYKpYk4RTJ/LksVoPttrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734705774; c=relaxed/simple;
	bh=tFI4fUt1sI8nwfpq3FJ1MtiKgsdZm78mtJAIZ0bc/uQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=UIA5gtVSuvL6pP8HQD5BbwisNGSAk84F8pznaBMwXTV6waTYJMYHgBTqlTGKb6WXxsU0ks5+e1Fm3aQVJN0bAUKbu1klSy+NZluKB+WIHeirapBZ73L3Tmwoln0MA8KfMpumpr9AlV7vs15p6ccWRAz8fqU6bmjLa4cFQa+ETrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SY8NaXRa; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-38a25d4b9d4so64975f8f.0
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 06:42:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734705771; x=1735310571; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tFI4fUt1sI8nwfpq3FJ1MtiKgsdZm78mtJAIZ0bc/uQ=;
        b=SY8NaXRaGNt7hwGPJgGTYgQOqLj5DE/dxZHmhkAFe+uRH4A2glSfnqEvnRGKng+yQ/
         SLwh5WneVEOzO0NIhhyA2xT8pGSNv89pcg3NnE0BBLRbL7sPdUKF7nq6oxdQX2A2jzWY
         SLAUdju0DWQjrl8066/jvG9EDnng4PmpBCvhpN0TH4Hjjm9o3wY/PJLkv4MAYdpgwCcc
         Ra9yQYBZjl+reOwbcamFNDmRkIY4GEtC4pdzF4Y2qhLCZUnsmxmiS471dx8toYWceexe
         0z7tfG7FPdjRym5nhJh8zH13pkC1eHr+qTz6FJFGRKHUphyDC5iVqPK66SAYKvB1aMQx
         7Nqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734705771; x=1735310571;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tFI4fUt1sI8nwfpq3FJ1MtiKgsdZm78mtJAIZ0bc/uQ=;
        b=GnGmbwNszjr5ceQxN6tKAegnSUbmqeVZcHKrKLJcAuYEpxN4I2POxts/dVLuQ7lrms
         Hg8LYccjXQxIJJ5DMunxUG4kbqJFHgFdE8DpDAG2Kc8uNEF11Hg2CS8P1im/z4nAjSkV
         A7Rp5RDDGQt414Il+iBJ5Iwow/89wyMTqRQli1clogrq6gHydrkUDTQWAft8a+veWpjV
         l/5SsIO2xeKJ9RIu29S5macX3ZH0zARLN6k2XnxSUYFW3lg+k/o3cvnuiqwh/EX0gEdg
         gT2/tm/NlwrY1eTOyPywdHokpXJw+Y9KaJhu11boheaY1FPtNb/IgnJdL8BkO1sVAIyg
         0Ezw==
X-Forwarded-Encrypted: i=1; AJvYcCXSQnXkUqd6hPLAYGIJm51K2i4UxkLmVxG52jLk/tagn6Rbn7155wrdGoGstUMfDr2na6DxbkFY0RNB@vger.kernel.org
X-Gm-Message-State: AOJu0YzdqrnhT830+MJ1NSmZ4YPndFZ2+4xq9nsHcZniVJZazolhQ6jJ
	WrN6g1qwXo0MSMsMhfAKvE+WtkP82cbtkPh1mSweR8uArFK5nNYe0A0Xo3Ua0fw=
X-Gm-Gg: ASbGncsMmbVeuhtKWANC4yG2kmYH/k+Ucb2RCwLH34doauWNP6QoUUrHDu5UeOUm3fj
	rGXZHLQNMlwNXltuH0VTbiRL/Y1JsBiZMCuax5XwnxIFnPLGCQEHjGsrlDrM0gBDIvXYFAzxK/m
	1SFvzyBqhB2xz18eYhbih4wkI+XXiWJGf+58CPc3dq43IRV8RkK3niv2eLw4xsHfN3khNcu2If7
	4a/W0fIFYMBg90k9lRlH9wtHogz+heD9kbHuSuLhPiVvwDhA43smJkJtMy9Eg==
X-Google-Smtp-Source: AGHT+IFt4rSrOvohVwd4q64VIVCiXXusgKxJgOvFR5SJjIJN9uX1E4X8Khns9mw+xl4mziHbQxzjwA==
X-Received: by 2002:a05:6000:1446:b0:385:fae4:424e with SMTP id ffacd0b85a97d-38a22408624mr2696915f8f.52.1734705771310;
        Fri, 20 Dec 2024 06:42:51 -0800 (PST)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c89e150sm4190849f8f.66.2024.12.20.06.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 06:42:50 -0800 (PST)
Message-ID: <21d1605c49d7d6a0f7f0f532d99cd7d285bd2958.camel@linaro.org>
Subject: Re: [PATCH v2 0/3] Google Pixel 6 Pro support
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Peter Griffin
 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Alim
 Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Date: Fri, 20 Dec 2024 14:42:49 +0000
In-Reply-To: <20241220-gs101-simplefb-v2-0-c10a8f9e490b@linaro.org>
References: <20241220-gs101-simplefb-v2-0-c10a8f9e490b@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.1-4 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Fri, 2024-12-20 at 11:27 +0000, Andr=C3=A9 Draszik wrote:
> Hi,
>=20
> This series enables support for Google Pixel 6 Pro.
>=20
> Since Pixel 6 and Pixel 6 Pro use a different resolution display, we
> now need to add explicit support for it, we can not piggyback on the
> non-Pro version anymore. This means having to separate them into their
> respective DTs, and provide one for each of them.
> There are other differences between the two of course, like battery
> design capacity, etc., but they don't matter at this stage due to
> incomplete upstream support.
>=20
> * dependency note *
>=20
> Due to the renaming of the gs101-oriole.dts, this series will conflict
> with any pending patches touching the same file. I have therefore based
> this series on top of my USB series from
> https://lore.kernel.org/r/20241203-gs101-phy-lanes-orientation-dts-v2-0-1=
412783a6b01@linaro.org
> and the patch enabling framebuffer support for Pixel 6 from
> https://lore.kernel.org/r/20241220-gs101-simplefb-oriole-v2-1-df60e566932=
a@linaro.org

Actually, since this series was regenerated with git's
diff.renames=3Dcopies, it doesn't depend on my USB series
anymore, just on the framebuffer enablement for Pixel 6.

Cheers,
Andre'


