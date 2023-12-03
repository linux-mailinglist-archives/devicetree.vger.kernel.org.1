Return-Path: <devicetree+bounces-21156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41BBF8028EB
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 00:09:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 12B46B208B3
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 23:09:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48E941A71D;
	Sun,  3 Dec 2023 23:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M6tUc4FB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74773DA
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 15:09:03 -0800 (PST)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-5d7692542beso11118097b3.3
        for <devicetree@vger.kernel.org>; Sun, 03 Dec 2023 15:09:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701644942; x=1702249742; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4n0yeFoRGU0FTZSqIuyxEoTKmmtJdn1QWuVidYm9OV4=;
        b=M6tUc4FBPI9dt+S16w8lFp1U1j5qcZSFEmmAa4Up8JYTrp8yWoT8H/i+DWEEJSxOJ7
         LPlx10MLExqfLk+N7BnqItX9BkmrxZbmAO9Se8P223voJiR0wPt2ZFQ+uotyjiVxLOi1
         /RNVnl9fRSEwykysqlC3LpbwxhPk4pg77dbwbaet2mNP/dxPkotuKCgCm0U3j3vJ3VLh
         RTr5TOFu3iKGk2037kxO83CjGPWggZG7t4qN4pIJsdQEz45SwEXdaJfstDRDw/SEYRMw
         atxfl9j8J86/s6lW4P5iHD8+Q0dq8Zug6OH5kz+X02VhXFztSoUn0p4TSTpHIk1n9jaQ
         R3yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701644942; x=1702249742;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4n0yeFoRGU0FTZSqIuyxEoTKmmtJdn1QWuVidYm9OV4=;
        b=Iuewo647DpiXTl8PfGixQc8NZBgtLNd1ttbHp0t+17eG53k7chmU569lh8PZ9bud83
         Ios5s+rupKPQmJmvdsjKhfXJkfSaoSK9tzQmiA2UCLF/ne2VPZQlUGfbMEKS/vfyjAO8
         /GQARG5q0Pn4WU7IT/GBd2IG0afSxsd0wNJee+2HdvANGDhbWxaQPDZbUMpG6EaQWgyu
         SmOKYGx7BTwAJu3vBPLwHhqOZ8idYyyaGzZ+/Ru9GHlYrQl3PVtYcYfBiAVWHHrX0bBk
         liWJ99FW0fKwx1hFYbD0dd/fwmn5EH+qMntzwkAGJpXnBnmlF1P8MRbJX/9bm2pY667s
         CBrA==
X-Gm-Message-State: AOJu0YxiSzeU1Y9x3cSnrolx5Ax48bcRrF9nrubU+fblxpjriZmXzB6T
	KV5bCRwRXT1rpRILmDEBna0vGnU0A1dg2FkPfOrbTA==
X-Google-Smtp-Source: AGHT+IFKwL9XjQOio2aM0nIHXvV+LqDJAQsj586dCvFCnDyPpVGAYCPas+78bTi1GwtoWVsyPmywwjtKlbZOkCSepZU=
X-Received: by 2002:a81:8485:0:b0:5d7:1940:53c5 with SMTP id
 u127-20020a818485000000b005d7194053c5mr1927535ywf.61.1701644942703; Sun, 03
 Dec 2023 15:09:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CACRpkdaksfS4WLNQ6ohauAPq3z2LPG2uF37_jWtm0brQHaDtNw@mail.gmail.com>
 <6384831c05b8ceeaf4a16cf9229770252989b762.camel@gmail.com>
 <CACRpkdZr6TdQCLy73Yx2RdMgQifd67remdxENBKYx3UvEMm87A@mail.gmail.com>
 <971eb35068639ec404669ea5320c8183ea71a7d0.camel@gmail.com>
 <ZWiP3i80KnVk9qyx@smile.fi.intel.com> <a4bd59df0c5bc1be5d0d6f11b968fd61a59ee2e0.camel@gmail.com>
 <CACRpkdYz+qi42Pz8CgeWybksC0edaVux6rcEhwzjDWnWe9Jr1g@mail.gmail.com>
 <61a8f54835c10db7a9c650ee2e3706b47382c634.camel@gmail.com>
 <CACRpkda55HzPqus5KR-t=xEBkkdND5kYZj1sHdxK+j6QwDUPRg@mail.gmail.com>
 <b761d2497462664d541779857398b2aa893cbee5.camel@gmail.com>
 <ZWoABzufPkdXnrMT@smile.fi.intel.com> <7dc3f137-6073-4262-afb5-439d024bbbd2@roeck-us.net>
 <986fb7dc2a34602fa9c2d57a7a3e06a71cfdc0a0.camel@gmail.com>
 <66454ca2-d5cb-4701-a237-03b3991a791f@roeck-us.net> <ba123831d7956b0437158a6928ddafb4510ab62b.camel@gmail.com>
In-Reply-To: <ba123831d7956b0437158a6928ddafb4510ab62b.camel@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 4 Dec 2023 00:08:51 +0100
Message-ID: <CACRpkdYfe68aVNcnvfmLz8y3QOfsyA9vFHsaTL6Y9mZJ31wKRg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] hwmon: ltc4282: add support for the LTC4282 chip
To: =?UTF-8?B?TnVubyBTw6E=?= <noname.nuno@gmail.com>
Cc: Guenter Roeck <linux@roeck-us.net>, Andy Shevchenko <andy@kernel.org>, nuno.sa@analog.com, 
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-doc@vger.kernel.org, Jean Delvare <jdelvare@suse.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Bartosz Golaszewski <brgl@bgdev.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 2, 2023 at 10:42=E2=80=AFAM Nuno S=C3=A1 <noname.nuno@gmail.com=
> wrote:

 Hopefully, I'll get into the gpio stuff later on. From a brief look,
the auxiliary
> bus might feet and easier than mfd.

You can also just spawn a random platform_device from the HWMON driver
and let that probe a driver down in drivers/gpio/*.

static struct platform_device my_gpio_device =3D {
        .name =3D "my-gpio",
        .id =3D -1,
};

my_gpio_device.dev.platform_data =3D ... ;
my_gpio_device.dev.parent =3D dev;
return platform_device_register(&my_gpio_device);

You can then pass any accessors as platform data. This in a way is what
the MFD or aux buses do just more organized.

Yours
Linus Walleij

