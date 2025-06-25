Return-Path: <devicetree+bounces-189603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 08758AE8768
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 17:05:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A04253ABA05
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 15:05:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CE42267714;
	Wed, 25 Jun 2025 15:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kKSQ+wo9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6045209F38
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 15:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750863940; cv=none; b=M/2eGRzaZWKh+Fi2AJov+KCs5l7CTjiPKQDy4IyhdZqHsVSYowgcKYLTeQJGret+FcE2TRSxieqWSJ0Xqjo3khhY9m/qhYjtecW1V5zzxJaSEGhWvtHxtWvUd1J2342xrwNQmEW20i/Nivk6kn6E6q/G7AFo03SGrUHUO7eBkLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750863940; c=relaxed/simple;
	bh=wlj7HklWXe5YtCatjQKwWuAP/xP3g/dB4xsuny3pKlk=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=tuBPXlZC/nHreol0FviH/s9ScmEY2EGRLqaW4TFVClMM7buML3E9AtwkU3BNrnuJmOo/T83G4mPK3j8DUsBJaa82pOKlP2yd4DTiiwh11Qhp3Oyk3pVs4kAFfPHS+qG//2AMxQqMTmqCr4CHvVFS6z4P5CAL48nmeaqtrXWR6JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kKSQ+wo9; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3a54700a463so10349f8f.1
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 08:05:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750863937; x=1751468737; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wlj7HklWXe5YtCatjQKwWuAP/xP3g/dB4xsuny3pKlk=;
        b=kKSQ+wo9oT4PkbrUUZKhpI+S+N4jOlQGfiE8lvJWDeGpX8dhARAQSHw6Zd5qkTLbm2
         /rZ2srKSxSFCLeipJLGV85UllC0v60+4WdUdKmS3isHvluM8yN4kDtgZTXPd9vBQ+0xQ
         b1kdAw0P5xPgiohw1eb0X5AZCd7OoRz3Zgm5GBJOw2DuqhJhGCuHLHEJ7IPxTdVPE01U
         WOQhacOtW/oRcYO7YIoJYvu01RheQr5c0MZYn1zEBXmung0hdZ5XO53Vgl6QYTASHgm5
         tF3a/cpD7F59refays/NJAGYlVtedrQg+YKWKVy21xnxMrgNolepnscnjbgHrZO61LDA
         MY/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750863937; x=1751468737;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wlj7HklWXe5YtCatjQKwWuAP/xP3g/dB4xsuny3pKlk=;
        b=W9gWaf151ICQQsdGefTe25s4KBBfN8fPBz3AjJpXecWJ/mV2NJQ7G+8TaPWBAHn7jD
         kGM3w0CC/mxeJJV322XlLT8iEWC+ZSvxlXdrE6thdVf8mrM+QZYaw+Pkper4/Cs4UNHV
         z1gTbMns/rXWQmVE2u8qhDAbSpS1nr+gvzyPEZYu0MAygxMFiqD3nyvzZBUb6OnPI1Fd
         xVId4jo1qMdLXMlVOWr4IJzK93/q5WuK0TD3087nVjaNLXpImkLFGGuA3p+ASnE3pHBq
         ci2Ix7yWCVkb+U2j6aUf+9QfUplTpOqFNaJiWwoliYKTfPK7/j7orX9RQrkHpeznKGIU
         T5Tw==
X-Forwarded-Encrypted: i=1; AJvYcCWVOScNBxCi3ld0PkKGfRtiJH5hH1Kt9kyYYVnPMudBK1pIH0ZW7S6M3eBX4CCjjjHeiwpD3qxPc8+n@vger.kernel.org
X-Gm-Message-State: AOJu0Ywevt3CAZMPlY4J4Ky/oyIWWoySP0EvdxsdxynjbR4opAysioBP
	9L6MDST9qeUo2nOaQvYNsrbSgk1Vs+1YCfWPFa0OMv351AnAEy546MQeRIeaMZdLC9A=
X-Gm-Gg: ASbGnct59kv/hSKd6+Ck2kdtmCxk34VYFe06TdZkLqixKqpqhoFa7eiGELFsJvS2xPv
	3/MbkYf0tMZDGEQydw5/gUjFGtVm3Gdm6hJSsAeYpqCf1BICUGYh3fhZDaDKE+693EOxRcb9fml
	gsosHkJWdwz6b7mYS/Pp9Q+iVg8PpTvmbA0NY6p0ilyG9sOZI1l4HH1Ff854UuuGPCz68KFZnBf
	l/n5kEPRLgU3AxJUJtLuFiwOVgmg39aPoJPkrFlgvu8VKdj6xjXrJ9v2oT7ce9KnnS7Pfh3Sj8V
	eqhB0HfBGmZE10j2CG2QcpT2kDJnQcWud4D2zj3+/NXKlCiAoV5d2W78vvy9sJ7qrQ==
X-Google-Smtp-Source: AGHT+IEQo60y4nSkYuBCYnImSLe6MfyhEpVaq6bM9xHgfeeGrTtXV15DQSuydeKSFGHOA76Afhx/vg==
X-Received: by 2002:a05:6000:1882:b0:3a5:5136:bd25 with SMTP id ffacd0b85a97d-3a6e71b8792mr7030428f8f.1.1750863936643;
        Wed, 25 Jun 2025 08:05:36 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538234957esm22170335e9.11.2025.06.25.08.05.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 08:05:35 -0700 (PDT)
Message-ID: <1ada43bbb20b806975d6b0503e36a3b464287612.camel@linaro.org>
Subject: Re: [PATCH v2 01/17] dt-bindings: firmware: google,gs101-acpm-ipc:
 convert regulators to lowercase
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>,  Lee Jones <lee@kernel.org>, Linus Walleij
 <linus.walleij@linaro.org>, Bartosz Golaszewski	 <brgl@bgdev.pl>, Peter
 Griffin <peter.griffin@linaro.org>, Will McVicker	
 <willmcvicker@google.com>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Date: Wed, 25 Jun 2025 16:05:34 +0100
In-Reply-To: <013f55a0adf0b23e0836e33ee4ea0e1e7864a467.camel@linaro.org>
References: <20250606-s2mpg1x-regulators-v2-0-b03feffd2621@linaro.org>
		 <20250606-s2mpg1x-regulators-v2-1-b03feffd2621@linaro.org>
		 <20250611-robust-vehement-dog-2bf6ac@kuoka>
	 <013f55a0adf0b23e0836e33ee4ea0e1e7864a467.camel@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Krzysztof,

On Wed, 2025-06-11 at 10:08 +0100, Andr=C3=A9 Draszik wrote:
> Hi Krzysztof,
>=20
> On Wed, 2025-06-11 at 11:04 +0200, Krzysztof Kozlowski wrote:
> > On Fri, Jun 06, 2025 at 04:02:57PM GMT, Andr=C3=A9 Draszik wrote:
> > > Using lowercase for the buck and ldo nodenames is preferred, as
> > > evidenced e.g. in [1].
> > >=20
> > > Convert the example here to lowercase before we add any bindings
> > > describing the s2mpg1x regulators that will enforce the spelling.
> > >=20
> > > Link: https://lore.kernel.org/all/20250223-mysterious-infrared-civet-=
e5bcbf@krzk-bin/=C2=A0[1]
> > > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> > > ---
> > > =C2=A0Documentation/devicetree/bindings/firmware/google,gs101-acpm-ip=
c.yaml | 4 ++--
> > > =C2=A01 file changed, 2 insertions(+), 2 deletions(-)
> >=20
> > So this is also a dependency for the rest of the patches?
>=20
> My thinking was that it makes sense to have it in context with
> the other patches, but it indeed could go stand-alone if that's the
> preference.

Can you take just that patch as-is from this series (then it's at
least out of the way :-), or should I resend it separately?

Cheers,
Andre'

