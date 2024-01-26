Return-Path: <devicetree+bounces-35528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5815483DA7B
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 14:02:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E7027B2AF73
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 13:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAEC01B943;
	Fri, 26 Jan 2024 13:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RXnoB0RI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E801B80D
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 13:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706274158; cv=none; b=eH/mSJBp9UeupRt1SsUTeBF9vP3Rk6TSmnHfZ1OuPFEEnBNOSbSEfxEGqQkXMQaBex2wOwjXwQ4QZbSth1/x6pmnMTK4oy/3ECtWdnVKfRCbeBsiH9YjD0ZAyK5MXqh9saYfZ8P2xq3FRRGNHvhcGIdudkrt0MMkcOO4sLqRTeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706274158; c=relaxed/simple;
	bh=mBXiWmO43x4IedI7eW45Poke+eFkqHYazw7gPasItoA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fgmvf5LT0Np28SvWaf0wYxE/sCjr1mJmcfU8dnK4rVZJPuRF3AFFT/w+6kh64YxIKHz17tQEFOm0VLBRSN0RpFJIm4W8QQBHoz9C9XXmJviRD2k2R4DjT/VLLkl5Phrw4X3I87+/bRq9/UrlCmRnbVuH8P3ejueW8HuT4e09CHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RXnoB0RI; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40e76626170so5243125e9.2
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 05:02:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706274155; x=1706878955; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=a3+07jRFtwaufVPIk/XTD0i2kvGZ4Tbho2wTMEbnG0c=;
        b=RXnoB0RIxwv/NQSIzOtszHrLgNebcQjJd5nF1JqvwwYVz0q2yhfZPY/L8RSal11skC
         0ZLnJHAP1vWwaqCKFDknubpEnWq6HawZenu5H0jfUMAnitZEbDSKHejVlGIMnwtlJo24
         qBwednnHhCsH4QOLccTxqHyzIJwDtfYbdKwlRaXgNx/AHt0mhGSm6d4RO7C3Odz4VQgY
         13EiuJgpOBB9HUrqhoPlKm8hF7gwHv6YzMe83QYeFsyb88Jwik4v1o2giVllb/nsyK3q
         54g3HtS5qPh+8gqqNHeJrI/0+ns8wzghbXPKWd0NzKJYod00DAWE8LWccLtSy3bhSSGJ
         Ak8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706274155; x=1706878955;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a3+07jRFtwaufVPIk/XTD0i2kvGZ4Tbho2wTMEbnG0c=;
        b=OcLcFopW5UJQhDH0MCPoUq1HJ1WoF7CsNVd+BWxditBw/UsRAEQGHmoFe2ezWOwlvf
         FiTcO0nPZsGa82wcYPn3GHvhElmMfUt75PJHSrtlvsd812yhJuKU9Hmm6Kux/OiF/pdp
         n1IJD2Kbey29JyqEm3pxWzI3JXUuNGKC+ZWOXArKoJiXGTdpxmI9QDHANduFIzELbYb1
         iJrPgj/A3Fj7xAFjCm8SapXNifL9PMYvwM+dEOZ2J6mKZUHD9vAq2w9JkYSWSuvyyrTG
         KEBNrFAhYiCiHRfnq2A/+Eqcg7C3RW84C8ke8DvNLN7zz+Rkj+kRMQ/uPH2Jh24Cx7c3
         qTkg==
X-Gm-Message-State: AOJu0Yy5Bgxbe8uZek1y6zRVq/iq8llLKgHIWYU7+6kdY2gs67Q4sWeo
	F659CAa366tKyN4gBDtOYjeVvL+n98dA2pD3zhuDo9sYUaDALo2nawzpVjwOW00=
X-Google-Smtp-Source: AGHT+IFJEnTrtRkieL7052tDdsHf4QprHoC8IvOe6lXVFTMJ1+IvvGQj1R8OZsfDteVBTHZ4Kx1Eyw==
X-Received: by 2002:a5d:694e:0:b0:33a:dec4:1d88 with SMTP id r14-20020a5d694e000000b0033adec41d88mr10537wrw.75.1706274155128;
        Fri, 26 Jan 2024 05:02:35 -0800 (PST)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id j17-20020adfe511000000b00339214d70b5sm1231554wrm.85.2024.01.26.05.02.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jan 2024 05:02:34 -0800 (PST)
Date: Fri, 26 Jan 2024 13:02:32 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Bjorn Andersson <quic_bjorande@quicinc.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benjamin Tissoires <benjamin.tissoires@redhat.com>,
	Jiri Kosina <jikos@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-input@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sc8280xp-x13s: Fix/enable
 touchscreen
Message-ID: <20240126130232.GA5506@aspen.lan>
References: <20240125-x13s-touchscreen-v1-0-ab8c882def9c@quicinc.com>
 <20240125-x13s-touchscreen-v1-2-ab8c882def9c@quicinc.com>
 <ZbNpdaSyFS9tYrkd@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZbNpdaSyFS9tYrkd@hovoldconsulting.com>

On Fri, Jan 26, 2024 at 09:12:37AM +0100, Johan Hovold wrote:
> On Thu, Jan 25, 2024 at 07:55:14PM -0800, Bjorn Andersson wrote:
> > The failing read-test in __i2c_hid_core_probe() determines that there's
> > nothing connected at the documented address of the touchscreen.
> >
> > Introduce the 5ms after-power and 200ms after-reset delays found in the
> > ACPI tables. Also wire up the reset-gpio, for good measure.
>
> As the supplies for the touchscreen are always on (and left on by the
> bootloader) it would seem that it is really the addition of the reset
> gpio which makes things work here. Unless the delay is needed for some
> other reason.
>
> (The power-on delay also looks a bit short compared to what is used for
> other devices.)
>
> Reset support was only recently added with commit 2be404486c05 ("HID:
> i2c-hid-of: Add reset GPIO support to i2c-hid-of") so we should not
> backport this one before first determining that.

This comment attracted my attention so I tried booting with each of the
three lines individually.


On Thu, Jan 25, 2024 at 07:55:14PM -0800, Bjorn Andersson wrote:
> +             reset-gpios = <&tlmm 99 GPIO_ACTIVE_LOW>;

This is not enough, on it's own, to get the touch screen running.

I guess that's not so much of a surprise since the rebind-the-driver
from userspace trick wouldn't have been touching this reset.


> +             post-power-on-delay-ms = <5>;

This line alone is enough (in v6.7.1).


> +             post-reset-deassert-delay-ms = <200>;

This line alone is also enough!

In short it looks like the delays make the difference and, even a short
delay, can fix the problem.

Of course, regardless of the line-by-line results I also ran with all
the changes so, FWIW:
Tested-by: Daniel Thompson <daniel.thompson@linaro.org>


Daniel.

