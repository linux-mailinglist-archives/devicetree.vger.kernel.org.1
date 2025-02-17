Return-Path: <devicetree+bounces-147467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 68042A386D3
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 15:45:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 321773A37DA
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 14:45:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A55621B8EC;
	Mon, 17 Feb 2025 14:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="la30pZw+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5ABE76035
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 14:45:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739803526; cv=none; b=kObQcaAQfSROVe6MCCX+to/AiF3z6pG0fJUQsY2+bwlt2Q4ODQoBckP4m/aBeFkerxm1TYgUkF968ETJS3xtOSGDTwoQHysm86y2UbXPaHGfjbLOMF1G6krJe0hMTM+B2XQzAFScULs/bZCXHeryxi6EZJ4vI30LzuIC7i4ED6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739803526; c=relaxed/simple;
	bh=t+oZt7IndNP/8SmQcZ3LSLfv1nslPzZjkOU5ra3yCqY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=etXXPk+6P7tQblJw2jVITbgmhn/Zx58bRnmMO/e8P1+ZCZyPqYOMu87H28HrQK8IJ0TmbpGtxEmrC1EGZpBMBjc8JzK9KY4/97KwvCLHFwfK1/kEHlfuUe/JJnVHtpcahmeeOIzfRhMhfitlK8UDs/Zhb2jw1hIA4fA2zpDKqb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=la30pZw+; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-72726e4f96cso310333a34.0
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 06:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739803524; x=1740408324; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7fscB/HBXNatMGjhnMNlSyD4Au+O28eL0EqtDOM3ibI=;
        b=la30pZw+Rn7IruSTR8/L5J6yfiCH0Q0koMXgLCSI7aFpBMeXb4nkhap2OeHfbHPaf+
         PLAhRcgMRmg9jEVtqckc6rBM6ZZizsg4gWz0DtVd6feHKmb9nnnD7fzwM9iFj4JfJBjy
         d19MFba3JhzgvmJVPQkxQBynJUFBRTK3lYLuESpYVwFBkVdBFaE1uhI86J2Jong102Ir
         7o+Pb9V1Os/OQzx+86qFUIyndn4VIyL9VCJ3TOsebfx5isAAt21l72iGAjZtDksuXP6s
         y4aB1Yeakt8vs32ldeC5NRfOrvvmz57ZnvlDwzRm0Mrpqhb7AWuGrWtJsDUkyYtsPDnY
         wPfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739803524; x=1740408324;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7fscB/HBXNatMGjhnMNlSyD4Au+O28eL0EqtDOM3ibI=;
        b=Plg9slxHncwiLxPpN39aNmSQDuIW5qEGbvMTUMhb2AJN8wnHxhBtxp2X+q1HRE/mi7
         z/iYHzSlYxTKDAq6rUodc3PKIhWLYHRx+DUOzWWjHnh5qvOemQp4AoWH1rTFrQxA1gNt
         oaHp0Oq/pVK0fm/YvWKVUWIobUnNRmMAnGOnHARs8gIgjIWAmWTJbkC1guDG6McMUT7F
         uR6bD15neIeqgJgKFs6PERbpVy8sylbhKTomnRXco111SMZdvd64/d71nffPqXloXfcO
         atiUxOja7ez0GmFbNfM2BVa3XwLdVvrr/iMWOjHADpJn5CG9hh/T51r81vUbdkAS17eQ
         DpVQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3b89+LOZ+I6HQGqd6LB+A7aBODHDHOhZxB2LbSuajsbVNSOXxKp2Pu0iswJXNi6EXkFSZlgN11G2+@vger.kernel.org
X-Gm-Message-State: AOJu0YxEi6GRtvH4I7O/3KkqrOVLSoRMCqbepUr1BZte1RDEZi0Ed1c+
	TEHvHt50r8u4XNpBL2u4UKOhiNgwP8uq2LQ5LPJRz2311PGyRJf9nBa09f4xvy7XdXHo4Vp2bFg
	Yt8EocVAjwqcUyydIW1rYcpYA4n6nR1Hrga+RaA==
X-Gm-Gg: ASbGncsdqtW8GyFvfJRkeKsBTZSXrfR1OFpNi7L3KquFfxz+aEK96I2/w7tbWABj4Gw
	Wfio5aRtDCJnqegLEyRQyFwJYFp1A3fkiOWAN8ywe0DK7NyTC3SLTWZFkVjfmg4atxT+Eze4yOP
	/DBZfSkI4d9+0Gc+2JQTj60RAkLeE=
X-Google-Smtp-Source: AGHT+IHtBflHavgxIJTJbLL7oxHnaKAsycioNXBMoGSKJQ+huW+8pkoNwja2LoCuRv/MHb6NKGEalXQi3roVOvKFMYE=
X-Received: by 2002:a05:6808:1305:b0:3f3:db67:ca2e with SMTP id
 5614622812f47-3f3eb08a400mr6045732b6e.8.1739803523776; Mon, 17 Feb 2025
 06:45:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250217131046.21006-1-loic.poulain@linaro.org> <AS4PR04MB969252FACA03605C1C0E00E3E7FB2@AS4PR04MB9692.eurprd04.prod.outlook.com>
In-Reply-To: <AS4PR04MB969252FACA03605C1C0E00E3E7FB2@AS4PR04MB9692.eurprd04.prod.outlook.com>
From: Loic Poulain <loic.poulain@linaro.org>
Date: Mon, 17 Feb 2025 15:44:46 +0100
X-Gm-Features: AWEUYZmtOtsdxNSAzeJNa0db4kc4Ef4CfTUlNZjmK_5GPWhfqJwUmlqkCpdcnfA
Message-ID: <CAMZdPi8X6tMoLocskyEG8GwdpZ9i8P_R1bT=r1-QF+sb7ofP6A@mail.gmail.com>
Subject: Re: [PATCH 1/2] bluetooth: btnxpuart: Support for controller wakeup
 gpio config
To: Neeraj Sanjay Kale <neeraj.sanjaykale@nxp.com>
Cc: "marcel@holtmann.org" <marcel@holtmann.org>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	"linux-bluetooth@vger.kernel.org" <linux-bluetooth@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Amitkumar Karwar <amitkumar.karwar@nxp.com>, 
	Sherry Sun <sherry.sun@nxp.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 17 Feb 2025 at 14:53, Neeraj Sanjay Kale
<neeraj.sanjaykale@nxp.com> wrote:
> Hi Loic,
>
> Thank you for your patch. Just a few suggestions below:
>
> > @@ -616,6 +617,13 @@ static void ps_init(struct hci_dev *hdev)
> >                 break;
> >         }
> >
> > +       if (!device_property_read_u8(&nxpdev->serdev->dev, "nxp,wakein-pin",
> > +                                    &psdata->h2c_wakeup_gpio))
> > +               psdata->h2c_wakeupmode = WAKEUP_METHOD_GPIO;
> > +       if (!device_property_read_u8(&nxpdev->serdev->dev, "nxp,wakeout-
> > pin",
> > +                                    &psdata->c2h_wakeup_gpio))
> > +               psdata->c2h_wakeupmode = BT_HOST_WAKEUP_METHOD_GPIO;
> > +
> >         psdata->cur_psmode = PS_MODE_DISABLE;
> >         psdata->target_ps_mode = DEFAULT_PS_MODE;
> >
> Please move device_property_read for "nxp,wakein-pin" to ps_setup(), after "device-wakeup" is read.

Ok, but then I'll need to move all the default value handling from
ps_setup() into ps_init() as well.

>
> I think we should not set h2c_wakeupmode as WAKEUP_METHOD_GPIO based on "nxp,wakein-pin" alone.
>
> In existing code, we are setting default_h2c_wakeup_mode to WAKEUP_METHOD_GPIO if "device-wakeup" is defined in DT, and psdata->h2c_wakeup_gpio = 0xff. WAKE_IN pin is not read.
> In this case the FW considers default GPIO as WAKE_IN pin (as per datasheet), which is a valid scenario.
>
> But this logic will fail if we specify only "nxp,wakein-pin", without "device-wakeup" in DT.
> Hence, I recommend something as follows in ps_setup():
> - if (!psdata->h2c_ps_gpio)
> + if (!psdata->h2c_ps_gpio || device_property_read_u8(&nxpdev->serdev->dev, "nxp,wakein-pin", &psdata->h2c_wakeup_gpio))
>         psdata->h2c_wakeup_gpio = 0xff;

Ok, will do, look like we should print an explicit error then, as it
would be a clear devicetree misconfiguration?

> For "nxp,wakeout-pin", I have yet to submit patch for "host-wakeup-gpios". I can move "nxp,wakeout-pin" later if required.

It may not be necessary, I've submitted an other PR for handling
simple dedicated wakeup interrupts at serdev core level instead of
having to re-implement it in each driver:
https://www.spinics.net/lists/linux-serial/msg66060.html

With that, all we would need is adding the wakeup interrupt in the devicetree:
```
        interrupt-parent = <&gpio4>;
        interrupts = <8 IRQ_TYPE_EDGE_FALLING>;
        interrupt-names = "wakeup";
        wakeup-source;
```

Regards,
Loic

