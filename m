Return-Path: <devicetree+bounces-228078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A0493BE76A0
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 11:09:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D10605031A0
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 09:08:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D4B52EB85F;
	Fri, 17 Oct 2025 09:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p8PkJAVR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2152DC77A
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 09:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760691991; cv=none; b=iq3xdUPMEM1/iy7+AoV++WtezRIUAza2gcdWf9qTwSbv9c+vSF8d7/xHlsxOSL9KMp4KcEskDpCz129dYjU0CTlbmOhO4XRg2TpKxRkACw5nBChVX2OlhLHbkP7DapVRl0+2fjdZiTsGQqClRmMN9wqcFKyNAHe/W9u0yxcEs/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760691991; c=relaxed/simple;
	bh=tL9LCQhpKIBjQIgS/5f1KpjSDRPB3nJi2aKghBl0jM4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n1ALEWGy47xg0Lut/WzcRnNhub5JGgET9c1SyMTxzrYClweBFToKoiNEjT4ZSz0GbTxzqkKvyaNBP3IPUAN7j5p8pTgFfXmmEpdCzXj5V4KVfvKDmjgt2h1jmJAVwiuuC05dRyxCNCyR0QPjceYmle8AvkTZVWxhMvu+XZVV14Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p8PkJAVR; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b50206773adso529133666b.0
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 02:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760691987; x=1761296787; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=418kpMdDHnOQzzDnjco0/swD3OeHn+l/8evRSWETxr8=;
        b=p8PkJAVRd2Vo0QVBck6JlHDW4H1DfgmBgUNao/9Nxyt77rBPmQMYnnrLCiL5RkCg9F
         7xOKXf3qxLoKusF2/EHXZkz5XcwpmCBC9VQHrhnlqs5rJUJfDNUFkSX/lA2gE7nYJ+Xm
         E9uBNrUd87yXlyIindIpkJ2u1iZWt5HaVZkijLxikgHQjmUKd6+oLC9YIKv+AiZUJkFb
         9j/8iSANWosU8+A+5zyqUOKgpUG8YpPFj4rUtYfiXhauZgIPdHSwOBR/LsFYVled3gcQ
         le4SDLYgaWgXbzqx8cPJ6UrU3m6tLzByNNerGPfwfG2soIjP6LOC2zEm86p2rMAzwS10
         JWig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760691987; x=1761296787;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=418kpMdDHnOQzzDnjco0/swD3OeHn+l/8evRSWETxr8=;
        b=h+6HZmigbmzqbBqJ2F9RdnfBXnhcutDC7ZOLSiFPxmLLZrSzK5/rD+LXCiQcbcD20K
         rVsLHAEUSLOyXnTjP43Wz+aTZz73HsKsVb9K0dFitY0AC34kyJnW6DRKdVHMv9rmwRSu
         FhlO1YIvgmeugmMJmnyDvbxJ7UHA+nUMrRKYyy12cJHxhmeZKSJzMpDWKeanEy8TqZ56
         1Cbt+m1GskBS8h6D9LSQoeZg140GsfAWi6XktQfe70X8HJZGbsY7oDMsIEdKOsoSP583
         v+ePsYYgE9qltsq4CepPHb8pCSzZemE2ecELU5yvK6JK7BnDAU4pS3/HprLA8HKC4r1W
         cuKA==
X-Forwarded-Encrypted: i=1; AJvYcCVIK0+U0kPZTtuIrnaitOkzhewBCKiID1MaCINspzCrlm248R1ETiXV3P9fr+H/gjBC3i2BOtyMyTg9@vger.kernel.org
X-Gm-Message-State: AOJu0YzGjPiRl+p8adsS2+XNdMK/1IH0vIs4VJTAdOWKkFOkX1qD5akp
	RE8zM9Guc6R4A8FG0At3O4o2PDmV7p2cUgTpXa/6QqhniobT70IpGPSAKh9kRot/uIuqdcsf0bk
	Fe1p8dm5BH8LfGyk40BV63Yi6yt+x1orCWJ/Cr4Zq+A==
X-Gm-Gg: ASbGncvV2CUUmYnSF+oI44gvlJ2YX3dts718unPzrEoaoqTgSUyh/LvmYOFLIo7RROi
	xQkUWOVd5UbpDBNvEOEr2/+/Ks+X0oSfTSq+C5MTQ0/iJAdtqu5rz3fgmQiedOapMhKM7CJ4yFJ
	TdWYFO47iEM4GYVupUKfkbbOx60cU6Aeyz5KLP4AjiGOmkQE0IF6/8aTz98ZeYp0MAqBWhX/jUH
	47hujfYGcgzMFnlbvJFWxYTLb1FCl4d+bYre6/j2TEIlYtOcpymJWw6DWODw1fx0FPKr2GlaI9a
	B7BIU7HkoqNDvbwbnaT+36RhJlU=
X-Google-Smtp-Source: AGHT+IG+w0UsfxJS4d6pFqa8XviZVfLhRM+rhE1KqiFzit259/+EaKQIY+0egVcn1SrXy9IXtpCbr0Z+t9PVc3PXPa4=
X-Received: by 2002:a17:907:868f:b0:b41:c602:c75d with SMTP id
 a640c23a62f3a-b645f7ef255mr378423666b.31.1760691986910; Fri, 17 Oct 2025
 02:06:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251015-arm-psci-system_reset2-vendor-reboots-v16-0-b98aedaa23ee@oss.qualcomm.com>
 <20251015-arm-psci-system_reset2-vendor-reboots-v16-2-b98aedaa23ee@oss.qualcomm.com>
 <CACMJSesvTLe28Jz83b=zfHD2rvmf7-i_2+2DoV=dgooVqFEYbA@mail.gmail.com> <fa42adf0-8f15-ad4c-3788-578b1bee1c72@oss.qualcomm.com>
In-Reply-To: <fa42adf0-8f15-ad4c-3788-578b1bee1c72@oss.qualcomm.com>
From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Date: Fri, 17 Oct 2025 11:06:15 +0200
X-Gm-Features: AS18NWCSgzHU1qRYaMmAnFnfeUajlPBrTb0Y5_GWRI3iwaw1dVFHqq2mvJmjYc8
Message-ID: <CACMJSesxazA7Nf6sAhUT16KfwtiUNjvb5JOEWkEb1B5fJtihMQ@mail.gmail.com>
Subject: Re: [PATCH v16 02/14] power: reset: reboot-mode: Add device tree
 node-based registration
To: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
	Sudeep Holla <sudeep.holla@arm.com>, Souvik Chakravarty <Souvik.Chakravarty@arm.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andy Yan <andy.yan@rock-chips.com>, Mark Rutland <mark.rutland@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Konrad Dybcio <konradybcio@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
	Vinod Koul <vkoul@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>, 
	Moritz Fischer <moritz.fischer@ettus.com>, John Stultz <john.stultz@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>, Stephen Boyd <swboyd@chromium.org>, 
	Andre Draszik <andre.draszik@linaro.org>, 
	Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>, linux-pm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	Elliot Berman <quic_eberman@quicinc.com>, Srinivas Kandagatla <srini@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, 16 Oct 2025 at 19:19, Shivendra Pratap
<shivendra.pratap@oss.qualcomm.com> wrote:
> >>
> >> -                       info = devm_kzalloc(reboot->dev, sizeof(*info), GFP_KERNEL);
> >
> > This change is good - devres should not be used in subsystem library
> > code, only in drivers - but it doesn't seem to belong here, can you
> > please separate it out and make it backportable?
>
> sure. Just to confirm we should separate out the devm_kzalloc part of the
> change and add a fixes tag.
>

And preferably put it first in the series to avoid conflicts.

> >> @@ -123,8 +136,11 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
> >>                 return 0;
> >>
> >>  error:
> >> -               list_for_each_entry(info, &reboot->head, list)
> >> +               list_for_each_entry_safe(info, next, &reboot->head, list) {
> >> +                       list_del(&info->list);
> >
> > Same here, not deleting the entries currently seems like a bug? Do we
> > depend on the driver detach to clean up the resources on failure?
>
> sure, so this should also go as fixes? and should we remove the other
> dev_err(printk) also as fixes? or that can still got with the change
> where we add fwnode based registration?
>

It doesn't seem to be strictly required by current code as the users
use it "correctly" but if the API becomes used in different ways - for
instance the structure may be reused after failure - it's a good idea
to backport it. In general we should undo everything we did in the
same function if we fail at some point.

Bart

