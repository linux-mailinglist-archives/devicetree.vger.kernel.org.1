Return-Path: <devicetree+bounces-152638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A07DEA49B23
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 14:59:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7BFDF3B30C1
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 13:59:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05F0D26E152;
	Fri, 28 Feb 2025 13:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="grI+STAK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342301B960
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 13:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740751171; cv=none; b=op4eHV9Dy3t2ptdbH1KUaH3P/w0pAE+JIgR2TRxIdGyRInqSChz7NF4A1MUag0KOXcn3/ujkUkShQhAKu2VnXYCXZdLwihJ9Wj/2xjqqFKVWjRrKfLsjEXE74OuOEpPCC+Z7N0lJ6OAfEljwtTeRQEUVav1z0yMMU/YsYxFakI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740751171; c=relaxed/simple;
	bh=px+x86aKSLPgbV52+S2WFBDfxcJqop/aXnFFgDBY9tU=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=kcWXqQ/A8m3Ux3W2H+Q9u3uFksl55k2HcJ/67tZYrcvgd9Cym09H+QF4I5UzS5yqJZkMYuUI+KSSMmJehTBRbVAb1NwaOubKQCTY2C64bWU0VKG5TlUMGIsQuDY4noNLDvusmtgSgHEzUmHM+wbdaTpMQK7Ae6HIoaPsmT5/CuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=grI+STAK; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-38a25d4b9d4so1323484f8f.0
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 05:59:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740751168; x=1741355968; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=px+x86aKSLPgbV52+S2WFBDfxcJqop/aXnFFgDBY9tU=;
        b=grI+STAKOAnH08bihdrVdSxnngP7J2jW3cKPR/2Y5MaVL0evvPR0W3GzgzXLLYwR02
         u5AvChKCZpyDKfHvyh6wqJNJ3iR3PeAdDruTVVJLAsMt3fk8zc8rQQ183v+hwwhk7HLz
         /Pmr+qtoqG8NlpXVL9dbiPdgqVu2iVcmT39SkEJd8TraGr5jgVoj0+3fXwT/jXVnCU+3
         ly9xKRuwG397WPW8o5uX63mYDvTpS/1gVgWd7Km2ciUy2hZi8pvmTKOlz11IHDhehorp
         gdfLMBHpQw1JttRu1/RG0yCHKsf52m5VoUPXXWa+OtM1GgDDu/ArHT2ioYrFvwyK/QJl
         iWJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740751168; x=1741355968;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=px+x86aKSLPgbV52+S2WFBDfxcJqop/aXnFFgDBY9tU=;
        b=G5N6DVyKkjxFjvVk8PJBXyt2PhPOalsaT4inT5H0aO4BalF9x0PYz46sJzp1hPVq0c
         o1/ftuLmOFsi+0TTCh+Sy5qgo7xDRGUQyIX8aaRqaHG1HR8TjAqgHkZlcnnKqQjQgetE
         8B1xWsPT6flYwlqu4Z2pu4lUanEh8wbVl3Gq2o384i1GVdTTvChrVkuTAw2vHfKeQTsC
         hK+MDEI7E6C8wL8ETDXqZqbBDXY5UZ3xt+pqnddWvfSdy7oAUop/s4291ai8sAg4fHxY
         6wlYvwX206FAwU13I3WW9DFDhvR80qy+EZ69GpfJp8OXZM06FdYQGwqhZGP7z40h7jE9
         b/1Q==
X-Forwarded-Encrypted: i=1; AJvYcCVol9Y4nP5MVs08JcqV37BxjgWbyVmk+k+qM9aLoxLA7ub9BH1/LLj7BJolkt7obLOfuwzQE/CopTMy@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7u8goq4Xr+MrIH5o4vkgXC2xBjLTpcFeoowXZLIaewQdc38y1
	hi+OegoGQUs4cPXcxLm+hAMw2RxejeXek21ROX+tp8CNQOEr/VuTWeKavoOudyc=
X-Gm-Gg: ASbGncv0EPBeuhMHmxYtsR6hODwPTO0GSFLe6stO4+pwVoOnA7uOn+zIw6ObuakwC8S
	kuoeNU8DVa5PggpahyijGue1I07PWdtZaz03DKIMaMXi8fIOvlj8/lYRchh9mbxtaW1OJy73BUg
	IJFvE2ii7BwA+gUJAY81Sa8PKUZJ5BZt/BQY3fgv/3BEAjQnjYe8LgiTCvc+VGDfl7XI4pm4bU6
	GppW8DTKG9FlL32H9Q22R7Dwf5xsPHzuij6lqa6n5WWJ9PT4ayGfsJEAObNuejzAbhm4bOcliSr
	27rLbWNdCpVv7jbenhyUFvzmD2ye/g==
X-Google-Smtp-Source: AGHT+IECpo32ALWrFa1cNaiDX3uH6CqXkFCNWGuhJmwvZ0p1RSpM7dQPjKfV2CnvU0hTwmPQDg65lg==
X-Received: by 2002:a05:6000:2a4:b0:38f:2990:c074 with SMTP id ffacd0b85a97d-390ec7cfe62mr4082089f8f.16.1740751168393;
        Fri, 28 Feb 2025 05:59:28 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e485df22sm5389786f8f.97.2025.02.28.05.59.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 05:59:28 -0800 (PST)
Message-ID: <e355ce38815760e69f40ec6d9d27fb6cab8f9894.camel@linaro.org>
Subject: Re: [PATCH v2 3/6] dt-bindings: mfd: add max77759 binding
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij
 <linus.walleij@linaro.org>, Bartosz Golaszewski	 <brgl@bgdev.pl>, Srinivas
 Kandagatla <srinivas.kandagatla@linaro.org>, Kees Cook <kees@kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, Peter Griffin	
 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Will
 McVicker <willmcvicker@google.com>, kernel-team@android.com,
 linux-kernel@vger.kernel.org, 	devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, 	linux-hardening@vger.kernel.org
Date: Fri, 28 Feb 2025 13:59:26 +0000
In-Reply-To: <CAL_JsqK-_rPZqt_vRv75dSWDLUAyZ-LB=qz5J=Kse=7bO4q8sA@mail.gmail.com>
References: <20250226-max77759-mfd-v2-0-a65ebe2bc0a9@linaro.org>
	 <20250226-max77759-mfd-v2-3-a65ebe2bc0a9@linaro.org>
	 <20250227130451.GA1783593-robh@kernel.org>
	 <503e105b71fa4271f40a2d3ca18ba13ed7d45a65.camel@linaro.org>
	 <CAL_JsqK-_rPZqt_vRv75dSWDLUAyZ-LB=qz5J=Kse=7bO4q8sA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.53.2-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Fri, 2025-02-28 at 07:01 -0600, Rob Herring wrote:
> On Thu, Feb 27, 2025 at 7:14=E2=80=AFAM Andr=C3=A9 Draszik <andre.draszik=
@linaro.org> wrote:
> >=20
> > On Thu, 2025-02-27 at 07:04 -0600, Rob Herring wrote:
> > >
> > >=20
> > > Why do you have GPIO properties here and in the child node? Either wo=
uld
> > > be valid, but both probably not. Putting them here is actually
> > > preferred.
> >=20
> > That's an oversight, I meant to put them into the child only, not here,
> > since the child is the one providing the gpio functionality.
> >=20
> > What's the reason to have it preferred inside this parent node?
>=20
> It really depends whether the GPIO block is a separate sub-block which
> is going to get reused or has its own resources or not. It's the same
> thing in system controllers which are often just a collection of
> leftover control bits.
>=20
> We just don't want child nodes created just for the ease of
> instantiating drivers in Linux. While it's nice if drivers and nodes
> are 1 to 1, but that's specific to an OS.
>=20
> You already need other child nodes here, so I don't care too much in this=
 case.

Thanks Rob for taking the time and for the explanation! I'll keep
that in mind for the future.

Cheers,
Andre'



