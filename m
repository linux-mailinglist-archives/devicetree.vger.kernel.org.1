Return-Path: <devicetree+bounces-147546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0FFA3891D
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 17:29:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8590F188865D
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 16:29:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E8F12253F6;
	Mon, 17 Feb 2025 16:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DQfJDYET"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF1872253B7
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 16:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739809737; cv=none; b=klNu6qfDyt4MxQlzkCODg9p8p2e775c7uF4hNgZEKUtO9n931sNiB/VaFzMcQ96TItC1nOZKS6seQ2kLoR6lP5yD6OdaiqSdOK5Qi0p/KEep6y1DqJkTWkfJ4wfF14yL26EsROgcM3DBOuwTM0SjqN2P83SPlAU6QUU1l0Yam84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739809737; c=relaxed/simple;
	bh=0CB5fwHH8zokxnQ/Mo+xn8c+Znu0cCFjYYuwOqyjhGw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lPQeKatO7x3xVjWRdjzEQkrlR0fc0c/cxU5/26n4tFFjNEs7XugXydKEOMTfUyW8vt6jczs974gpTGzmXG/Vo8V9nKhreWILbjK1spemEg7qMNCyKnr5ueDOsclR6D9ndpOMJNLLZwBY5aztxKeM1dtrNeZroWQ9iajPsuISubw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DQfJDYET; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-72722d2717aso370848a34.2
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 08:28:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739809735; x=1740414535; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=24GrH5IuA8qEkGV4LF5HiIKLjQKovFe+/mLFQDYkKOM=;
        b=DQfJDYETpZeE4ngwg3Rhr8f28qBsTlrMM4/BHcNYZPCJAzq3khku0q52M+vjAyf2WN
         2ld17a0LCO3qhf4isY0Kw/6nPRr9XrhYpny2jtD9U8e1XxeOFMaHmKEdj2PEW/lZExs9
         l8C9PUi1tvqxsGimLJOyUDSbWOw5EWdsGQD8d1GjoZh7pWKUlADp2Q0frt/Jjh102jSM
         WKKTC8qA67zVCDzPRep+CLwuY4oKBGN66NVwvU54pcI7dvlBks+P54OVQYlaDYNBHYOK
         U1a4i1lmOKLApaEeHmmBc6IJZa2Frr0jtYFjqUoNLb6Rs06rhqWsxYKOscQg4qZECKVD
         7fJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739809735; x=1740414535;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=24GrH5IuA8qEkGV4LF5HiIKLjQKovFe+/mLFQDYkKOM=;
        b=mjvSENkjWhZlAuBy42uABfpAQfG7dUfL119wkvTjUS/NYGp1Fh+VeXY9V45r4nKMoN
         AWtV+nJp/BicbXDCo+0RSLDe8XuhNv2AznbpWcQYtMxbnoC0wUe0jlp2dWv4yQ+4KNXc
         GCmHW22/r8DkWP4t+B9v//U2B2OpyU3gNEz/sluMZ+w5OeL5jmHbAqVh3NXZzQotZICO
         kXi5gpK6uW3OsYfZ8aEcoMv+qaZ+W4A7gIlar0qGLgFQ9LRyK4ovCX/nY9fnDbDtAL9u
         g2fBEoKZ8MXCvQMv5p7dDP6CPlDn/6Um8FF2+QOSx8aXz3kzcoZrsrAxrcHNicmAKlUc
         wKLw==
X-Forwarded-Encrypted: i=1; AJvYcCWyiWVgkM1q2dFTc1e+DzpUeZATTTutCV9KExZv1YkqiUPivsVYVImXTOGCsE22lk+hdT2klkViiDSI@vger.kernel.org
X-Gm-Message-State: AOJu0YxbayIIMGgQw8cIN0YBUqmjgGT3MOjVN4qQg8+V+KnPWZ/0FbsS
	GZuNWsVGG1yF9qBAqslyw2wnotuIXlI0L1jy6O3bNuCGguMdjAJ0CueLWGEe9cxKiHZbaE8/ocN
	fkZhYl9AtHSHaznUYkdBR8f5hsOq77QW3MEsidt6tScFwQ634yXfSZw==
X-Gm-Gg: ASbGncvHn5BhVYV5jkb7pCgAO/Omk+AL7A06ccgHupZ1iyc7NvUCQNZFqiNKUN0V6uf
	etfJ799ENm9vUAF0kbKq8IY5tY3JSvn3iZqfds3dOGO1rPTg6bZjXwNgPGE6wqQvgKrf0HWQrRR
	BfysvevS/fmhq/I92mCI+UNbHszKE=
X-Google-Smtp-Source: AGHT+IEJfjMYsaEHugbq5fayTmYm/hadQIHS0Bh9I4bt3eHC89k8I0NSYzaRS3Gu8W/kVfdPon+l64H184jg72qrFeA=
X-Received: by 2002:a05:6830:25d3:b0:71e:1392:80b5 with SMTP id
 46e09a7af769-727120d40cbmr7778088a34.24.1739809734935; Mon, 17 Feb 2025
 08:28:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250217131046.21006-1-loic.poulain@linaro.org> <AS4PR04MB969252FACA03605C1C0E00E3E7FB2@AS4PR04MB9692.eurprd04.prod.outlook.com>
In-Reply-To: <AS4PR04MB969252FACA03605C1C0E00E3E7FB2@AS4PR04MB9692.eurprd04.prod.outlook.com>
From: Loic Poulain <loic.poulain@linaro.org>
Date: Mon, 17 Feb 2025 17:28:18 +0100
X-Gm-Features: AWEUYZntkVL0VSowVLHqi6GFC7e8AvMLX9AGbnZaOfVfpKleEmxvN8J7_JEwYGY
Message-ID: <CAMZdPi_apyYRRTTGFwXHcZLNcUks6U3VOQg+3NQwnk2pR8Ldmw@mail.gmail.com>
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
>
>
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

I don't get it, can you clarify when we should default to 0xff value
for h2c_wakeup_gpio? and what it means for the firmware.
Before the above change, we apply 0xff if there is **no**
device-wakeup gpio, so if wakeup mode is not GPIO.
After the above change, we apply 0xff if there is no device-wakeup
gpio but also if there is no wakein-pin (whether there is a
device-wakeup gpio or not)...

Regards,
Loic

