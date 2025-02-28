Return-Path: <devicetree+bounces-152585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB707A4985E
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 12:37:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF37516F813
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 11:37:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8268125F79A;
	Fri, 28 Feb 2025 11:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tBpIfaFz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A04EF23E34B
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740742655; cv=none; b=pbFyWNhPaKAyPsljnVjTTzF+ZAvj+Z3rNy2pqRpyjxPxQwKAjvppP3MihRB63HFvuSVaD9Z6K28AgVdCxGzAf5Ezse0AVU/vjbNtPyKBqLymxagsN0cIBs0AcvICT6Mm1iQoj3L+dvFdT4V9zxVnf/MqnhacW/UcqXYIn4MSSjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740742655; c=relaxed/simple;
	bh=4WphRhmBskEe1O7l/TMn/svQYxnNymiR11yGWly6ZMM=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=bEHy8ffjexeb8eqe8pyXWHti/KaMZ9edqwyfgX0HDpZitaLyvu0e9a/9ZZySieLhPda3/zVHyOWMuILi455KfoONhN74DJsuWDPPh7gs6sYztTB/uSSudkuT/x/sdsc0RC0l2Y4rx8LPhG/fdOM+G8awp4HMLg5C+UWTySfXSXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tBpIfaFz; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-38f2f391864so1127250f8f.3
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 03:37:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740742652; x=1741347452; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=c/hLcQeQYuvt7E85+DEnVuGUhxPnEJoXJywDNJlyKbY=;
        b=tBpIfaFzaVmaa5dwaNhMVYXeKYuDf7UFytIFGBW8nkpK4WR4CedTBHyMkhyJ+i9NYt
         QD8scUSA4ANlJZTz9YZJD97Fal/qElbhx0BAFml571t+6fgJm/LtC/iLUaM7mhg4IXEe
         XMnftJpK3xsRszjUFg2ke5SvYXfsa7Gr5Nsjs/u6nFoH4A8wQNK2Dg4/+N7qjiaAGjIM
         9DasUd2rsk/V0oLvNNvWpOe8gz5jn+eXL0scLLeUIUJOFayLl9B6g8dnluB511rHhMn1
         KGe+4gr95gJo+Jv2R2kFi7tlIgZQ5tXnYFkivqJ9rSWZgzk6rB3BDB2kdQj2K43NdkVK
         1Bnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740742652; x=1741347452;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c/hLcQeQYuvt7E85+DEnVuGUhxPnEJoXJywDNJlyKbY=;
        b=r+fbEWLb9gt3Zp050ueBy8xYuB2plSooOjdmVPJRSrR768lbtn+F1DU+XXvlgs5F7J
         Y3wfA+RnBL3oDNzGrzhid6XD6kScDGWW/yI04QQE4FcZIQz7YcfS2unxq6w0v+AdSzY5
         mGeXP5xImHpXhI5Idhzo26EvmySdyTpUOJJJht8mbxRsHkienG92sLmq1Scx6+PRb3B2
         lqdleVOtz1Y5iv0Ikp7NxmPkxy2YvqgvDeRmHJKnYHhm0GLPuGt/lvNRyIGt1VRNqA7r
         uklp7GD0tJ4Cfcc39ZIgmdnA0qMX7Geo9681Q0LBVGJftwNrCwDW7B6vxIneRhkxkeBo
         breg==
X-Forwarded-Encrypted: i=1; AJvYcCVXkNC+wqiD5bbfRXp41dD9VSja3pvv/ugX0RYaUzm2Xv9tsUHsSlTYB12iG6u17MJUwRXeOucTfzUW@vger.kernel.org
X-Gm-Message-State: AOJu0YwitzeQpIFbKCVt4o6thpc7/QnHyXRFH+KVatevXibSwO2djnKx
	ZtUzO89HeKnsJkTb+cgqXJuRLns/SfcW2SIQ9v3flKHX4f6gKQ03ZQfvgRuZn74=
X-Gm-Gg: ASbGnctT24UYr7pddV4QrEazoCs4bwr3QRXrL2fam09gjzWh41tMfV7j/fu8yOk5hlc
	IxTT/IYtglb0ZBrzwULDSTaKuxRG021PTTpJQmOno630HvyT29RqkF8tZ4GC3APOttLm1wCdqke
	mJG3illIjrFWxU2D+NPm8QzMiQ3FOuEKXUKiU/+w2fIgzGvtFVAAu6Os0chICNHEaLiDDNWc5zD
	Kd4CugOZR7yItQ9aYbeo6ZkB9nzQLhErEiqSpqAsD0ei392trL62g+KtPM739I6ENxxI8Qqj+Nn
	Ygw3XTBS+fm6cFPRjUPh48fsgYWY/w==
X-Google-Smtp-Source: AGHT+IHzUCNP7VmFKJ2Rw0oWiCLeL/Benysg+yxlWGkjt2D4Yc4YzpTklR4JnbSyxhhE1CRgClygig==
X-Received: by 2002:a5d:64cf:0:b0:38f:483f:8319 with SMTP id ffacd0b85a97d-390eca53bd4mr2309089f8f.51.1740742651971;
        Fri, 28 Feb 2025 03:37:31 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e485db82sm4831015f8f.88.2025.02.28.03.37.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 03:37:31 -0800 (PST)
Message-ID: <e6ab03fb87c14b1596c4f201485b49d0602c91b7.camel@linaro.org>
Subject: Re: [PATCH v2 5/6] gpio: max77759: add Maxim MAX77759 gpio driver
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Bartosz
 Golaszewski <brgl@bgdev.pl>,  Srinivas Kandagatla
 <srinivas.kandagatla@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A.
 R. Silva"	 <gustavoars@kernel.org>, Peter Griffin
 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Will
 McVicker <willmcvicker@google.com>, 	kernel-team@android.com,
 linux-kernel@vger.kernel.org, 	devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, 	linux-hardening@vger.kernel.org
Date: Fri, 28 Feb 2025 11:37:30 +0000
In-Reply-To: <d06058296a194a4f2c9fcbcc5c24816ecb1f51b1.camel@linaro.org>
References: <20250226-max77759-mfd-v2-0-a65ebe2bc0a9@linaro.org>
		 <20250226-max77759-mfd-v2-5-a65ebe2bc0a9@linaro.org>
		 <CACRpkdYoWuJzjqiKrSNzdXV+5N9Gp0n+pdCwSZgocwy0JHo7Vw@mail.gmail.com>
	 <d06058296a194a4f2c9fcbcc5c24816ecb1f51b1.camel@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.53.2-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Fri, 2025-02-28 at 10:58 +0000, Andr=C3=A9 Draszik wrote:
> Hi Linus,
>=20
> Thanks for you review!
>=20
> On Fri, 2025-02-28 at 08:10 +0100, Linus Walleij wrote:
> > Hi Andr=C3=A9,
> >=20
> > thanks for your patch!
> >=20
> > mostly looks fine, given the MFD design is accepted.
> > Nitpicks below:
> >=20
> > On Wed, Feb 26, 2025 at 6:51=E2=80=AFPM Andr=C3=A9 Draszik <andre.drasz=
ik@linaro.org> wrote:
> >=20
> > > +static irqreturn_t max77759_gpio_irqhandler(int irq, void *data)
> > > +{
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int handled =3D 0;
> >=20
> > bool handled =3D false;
> >=20
> > (...)
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 for_each_set_bit(offset, &pending, MAX77759_N_GPIOS) {
> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 unsigned=
 int virq;
> >=20
> > I usually just call this "irq", as it's not any more virtual than any o=
ther
> > Linux magic number, and it can confuse people working with
> > actual virtualization when we call things virtual like this.
>=20
> Calling it 'irq' would shadow the first argument of this irq
> handler function, which is also and usually called irq and which
> I'd like to avoid shadowing.
>=20
> Are you OK with 'subirq'? Or any other preference?

Actually, there's no real need for that variable, I'll just
drop it altogether:

			handle_nested_irq(irq_find_mapping(gc->irq.domain,
							   offset));

A.


