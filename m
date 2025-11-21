Return-Path: <devicetree+bounces-241286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5DBC7BF1B
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 00:28:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A8A93A35D0
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 23:28:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E86E311C1F;
	Fri, 21 Nov 2025 23:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Mze3Ca/R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E14230C34A
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763767703; cv=none; b=BjpaqkWuYqd8egVIBrkdW0fj5URtZzEvxnhaAmkMnbrwqXs4pwpV89IPVfHxtoHplSO1eavvxbsDg67Y1vLeM/ODYCXoAOSz/tMaDGlYisOQHF4XZ90PbPJomENi5igDpLkhy36oSAQVEHpsdRiZONKbsf6XQbtmApwroqUsMa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763767703; c=relaxed/simple;
	bh=C5xk5Nu5EFld4DJwl1asaNpmcCYJqbKLczamgBNiJ5U=;
	h=Content-Type:Date:Message-Id:Cc:Subject:From:To:Mime-Version:
	 References:In-Reply-To; b=DVPCI0ayHdl3+zxV+9uQtdOLlfAjo16QHZTmDJjiqRzZcF4gk5LYXC2we+qvVemCDy20WOVDUu0z25S9QPftddZPKXwn6ZBZ1Z6hI/+B38m8BZZ68KhmSgiAH6T24/R/eAqvVPg2+d9XVDuiojWQMoDMWTbk+vnJrcC5cvzEOmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Mze3Ca/R; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-55b26461e78so789584e0c.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 15:28:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763767693; x=1764372493; darn=vger.kernel.org;
        h=in-reply-to:references:content-transfer-encoding:mime-version:to
         :from:subject:cc:message-id:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W2vmRyY+CPyo6gdzUvKfso20g3IwmE2bzd6yZ/el5t4=;
        b=Mze3Ca/RV1t/Tj+dk8RDZv9ytKnu4xb01iyb+ZjYiYdVG44FdTQ2kh3lbjPOulwlD2
         K5WDfya8PSTEiJ73Gzx9Ws1Xeta7vVqU81xbE6SOsCqNEEnA+ViklOPL6EjGksqZG1ni
         HSSbJB5EY3Tj9NnkC9+9pp8889K3QqSEDyWOYbf9+X0DgrNWjJ/arMyV/6KoZyuR5ziy
         K7ZAFIwwuGFsMFM7raL/Qw6DJx4XXjwBf6NOxcr9z8YxUo1i0z0a2VLm7LeBMzRMNb64
         eujHgiKbNSSdOeF+hdEosl0VtKBdNpB/nzveqnO1ZbeYNUvCemYxQNN2kFtvIF8H0ftO
         BnVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763767693; x=1764372493;
        h=in-reply-to:references:content-transfer-encoding:mime-version:to
         :from:subject:cc:message-id:date:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=W2vmRyY+CPyo6gdzUvKfso20g3IwmE2bzd6yZ/el5t4=;
        b=DVb5tXvtagZzMkKCFIsgR306sGxs82yaU/jm3AV6VjGsFbLFHOY/5iAFrl9L6u/IYh
         pYnZjbClaIDx2EJkIfkwZw2Te/llaOZTwTDEy7+V7DcoY/BApX2gcOThlG031QR1rt6q
         pu8O+JR1XjOJqtQNayJRDf9XyXZ2uHXEB36p4qFIf3p35QabcwiXOk3x+4hLVEnznGC8
         2Lo4fU36M8MaTapwUC0BTiQcPxj0SZd1aaFJlBHxL13twBDrJa8ncB+NG/mKYp07phb8
         TF49iEtovmVkMBtdGvKEcfhaEbiECOUuZKi6CmNKPvwCRYPRfqkWWSEvtYdma+NiOyGr
         Z1/w==
X-Forwarded-Encrypted: i=1; AJvYcCU1f3oFn6f9ZwAtKK+9IELjseQjUiCbjWguCy2MYMhDwfiJQv0KgV67K8cqP9amKxcbuYlL3CHxKdR2@vger.kernel.org
X-Gm-Message-State: AOJu0YwVzf8UCA/11NEDWgDtKkf4E/v9XIG80/rgBBSG9sZ4BDAgGCES
	Y3jPzIH0szunaf6xJVFSl8RqbFy4eVIJ8mxgAq55ojaP03WqYZkmNA+p
X-Gm-Gg: ASbGnctZlKefEBRWoG8WPH7ejqNaNiMIDNAj8oN5ZH1BSYMLljnf3a8mJvGGOYrHVCB
	O9Yjtus6l4FL8VVM+YT/GrPtLAJF9lj1gN8o2szu3ywyo8xBHish4m7kJ/10+C1LxNGbjCmWSGg
	79xhil8ovb5w6Sh2C0PHB5DMYqhKzbrUMzuOBXA4M2zgwrG5wIDU+fBW0n6fP7CeQAIhSAwlH/e
	IVbCrBirDXXGKOJOks9GBWaNfcAR/vNQL6snLa2Mk0O1FoMIEPmqv+aGQibf0Hs7WCkLfTkcnur
	L/qI9NhQ3ux8Iuza7LTn7/JZutAUBaL/IOAypZ928D77fjknJ28BXAUAAa9yvJYKyg4iGAVRg+h
	Omr8wc8oXB4Hnl+RNobrY/AnFNDS+QZnZDroewkCUM7Ysk27h/BN1M5xXamR+VLGfrdDdyi2tTl
	LA/ABIuNrjllq44Q==
X-Google-Smtp-Source: AGHT+IGW1BbieHcjel98FU+b4VtP+Iz6SjkaHRfKnGxBEMggGehiG5MLGPtYSLUCYH2iZ+EhpeqLeQ==
X-Received: by 2002:a05:6122:202a:b0:55b:305b:4e3c with SMTP id 71dfb90a1353d-55b8f00fd2cmr1358436e0c.18.1763767693075;
        Fri, 21 Nov 2025 15:28:13 -0800 (PST)
Received: from localhost ([2800:bf0:82:3d2:875c:6c76:e06b:3095])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55b7f60076dsm3160249e0c.3.2025.11.21.15.28.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 15:28:12 -0800 (PST)
Content-Type: text/plain; charset=UTF-8
Date: Fri, 21 Nov 2025 18:28:10 -0500
Message-Id: <DEERGRDZ0TM4.NZ6R9JWCSQPL@gmail.com>
Cc: =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, "Andy Shevchenko"
 <andy@kernel.org>, <linux-iio@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Jonathan
 Cameron" <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH 0/2] iio: Add support for TI ADS1X18 ADCs
From: "Kurt Borja" <kuurtb@gmail.com>
To: "David Lechner" <dlechner@baylibre.com>, "Kurt Borja"
 <kuurtb@gmail.com>, "Jonathan Cameron" <jic23@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Tobias Sperling"
 <tobias.sperling@softing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20251121-ads1x18-v1-0-86db080fc9a4@gmail.com>
 <05fae891-a4e6-439d-97da-6259370f68b5@baylibre.com>
In-Reply-To: <05fae891-a4e6-439d-97da-6259370f68b5@baylibre.com>

Hi David,

On Fri Nov 21, 2025 at 5:32 PM -05, David Lechner wrote:
> On 11/21/25 11:16 AM, Kurt Borja wrote:
>> Hi,
>>=20
>> This series adds a new driver for TI ADS1X18 SPI devices.
>>=20
>> This is my first time contributing to the IIO subsystem and making
>> dt-bindings documentation, so (don't) go easy on me :p.
>
> I actually had these parts on my radar, so happy to help you out.
> Unfortunately, I don't have the hardware for testing though.
>
> The first thing I was going to do was check the existing drivers
> to make sure that there isn't one already that has a compatible
> register layout. I have a feeling we won't find one, but would be
> good to mention that in the cover to justify adding a new driver.

The closest driver I could find was the ti-ads1015 I2C driver. It has
the same register map and similar specs. Although I think we can adapt
it to be "compatible", I chose to do a different driver for a few
reasons:

  - ads1015 and compatible devices have a separate DRDY interrupt line.

  - The ti-ads1015 driver doesn't support the DRDY interrupt (sleeps
    until data is ready and it doesn't have an iio_trigger).

  - To correctly handle the DOUT/DRDY line we need to manually control
    the spi_bus_lock. And we do it differently based on which IIO device
    mode we are operating on, so it would be difficult to stuff this
    logic into regmap_bus callbacks alone.

  - IMO the end result of merging these drivers would be too messy.

This is just my opinion though, so let me know what you think. If do
agree I will add some of this points in the patch changelog!

>
> There are a couple of similar TI ADCs on the mailing list right
> now, but they are IMHO just slightly too different to share a
> driver, but would be good to look at just to make things are
> consistent on a high level.

Yes, the other two TI ADCs, ADS1120 and ADS131M02 are very different
devices.

>
>>=20
>> As explained in Patch 2 changelog, the DRDY interrupt line is shared
>> with the MOSI pin. This awkward quirk is also found on some Analog
>> Devices sigma-delta SPI ADCs, so the interrupt and trigger design is
>> inspired by those.
>
> Yup, that seems to be the best way we know how to handle this.


--=20
 ~ Kurt


