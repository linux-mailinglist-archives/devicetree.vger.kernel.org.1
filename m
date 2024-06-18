Return-Path: <devicetree+bounces-77190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3C690DA92
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 19:26:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9257282DA0
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 17:26:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E9B113DB8D;
	Tue, 18 Jun 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m7SybJL/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E772139DD
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 17:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718731553; cv=none; b=sGA+EKuvludryYdlillMOQ/iDHYDx98ykzHhCrvhhwDzrPG8//PrhIkytoMBG9HiY0i3SiBG5epmoarc1Kesw+YlUaEDfbs2IDnzugEa4uNBTwIqGmfyY7NtV0k2zyXgs2OFtV0iVbb7EATN/DggMTIuQSqJhpipKvwZPxJGn7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718731553; c=relaxed/simple;
	bh=r2ha9U+OA/czbBCQIqjwB2b1MU+hOF6ap7ftdRtZAvs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hQr0R7kUSoJykNCaV10QZUf5CxKioQG7YZ14lySKCCB5wX8wl9f+bpxNpenysHojMi6R+WK1Eq2It0bK0bg5ZLZHVCloadiQ8YZOVShDdW3G8XDq9KFBRgWXB4Kb+mB6NDM8bZCcQgkIOqmMTV+yyobmQ90CRIu8vmzFW4hq1s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m7SybJL/; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2ebe3bac6c6so63026771fa.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 10:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718731549; x=1719336349; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0x3UpCnFFeHobgX/UWFVCi5nUUKWM9Aq39qUpJkUIbU=;
        b=m7SybJL/BlooD1kns6kcHDD/bFS/+L9Omvk12WqK9LU0M3OeMA7enSA+MN2fm8RnsT
         rUJueNBZ1xGul1jOIoJNguMA2xKL37rVYJfGiVdausGwWKkOraPDmMGwbEOQGwwjUbyC
         9ZW+c8F1qyxdksPyCP/UHc2xg0Wyta8yhjndBW6EyI75WBa3EIkHlI2b9Bdg7Edajjnw
         GDib4DfvVsOcnmsIDLtfAxts3j73Pp1hdwf+47BwHlMVMLJ2PjMmB7GbeYDXFcWhc5qx
         VYZpF0s0h5UlMUEylMyNWGr1VXWzfpO2awtHs6NVCc0jjvrh7DNHG1dBkqMHwoqNE+B+
         8Wkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718731549; x=1719336349;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0x3UpCnFFeHobgX/UWFVCi5nUUKWM9Aq39qUpJkUIbU=;
        b=aNbTXYwPBIV+m/4HBQezoLFi5WxispUm/dWKE/ZiBayYVjWcsKPnzGCbiWqggstzaU
         3QJBzFwKAH4yss0oNrad71wbHap1E4zAn4/nfvf+0AkVyBVGvPx4PEb7oVzv91u9Q8Jo
         XoOL6JrRNiUL2ME9J/2fT0o2Hux3UCva/K3mGMQIeGhhr8pKWexK0gMeuCrwhEu4pkI7
         OiPbyKtETXi9a18IVKxZaC/kyRKb7ISXiypJoNGLYG7dYVZUmwIYW1cM/MPNv+FnSoq1
         pYPFcFByjo6OAlq0gyxM4zSEDTUYJp9EDCYtva6ogQXaNAMFM0iPKcJ8Lutd5G7r+WAr
         Qwcw==
X-Forwarded-Encrypted: i=1; AJvYcCWCob3Vekc+yIgasSsOf0IlZ2cA3Gl7NSLGF8PCYTqck1KjqobsD5NtDlLqC2LmaQJPucjIwiQ+2FOEfYTxDgT7I21D+hvGYKuCrw==
X-Gm-Message-State: AOJu0Yxd5C4BRxJCerhxvvT30e63xnw69qs/Lz/m3LM+MxvJVB8tLHrf
	abju3+KhZelvqUYPxjOhhp0bYkTD4AIQu4H4mE061JnMbF/vBJHv43zrfreaWxk=
X-Google-Smtp-Source: AGHT+IFf+j6X5dAvayfXrCIIhVNUgHdKwtrHtNwB1lo7ZJD9ArCnpH9ivkEoQ64N15sSUPSxrp47Ug==
X-Received: by 2002:a2e:9008:0:b0:2eb:d4a4:42a1 with SMTP id 38308e7fff4ca-2ec3cfdfd78mr3710751fa.43.1718731549419;
        Tue, 18 Jun 2024 10:25:49 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec05c8a72bsm17349601fa.115.2024.06.18.10.25.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 10:25:49 -0700 (PDT)
Date: Tue, 18 Jun 2024 20:25:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, Arnaud Vrac <avrac@freebox.fr>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>
Subject: Re: [PATCH 4/4] drm: bridge: simple-bridge: add tdp158 support
Message-ID: <a4xdofsru4cfyfg762ud2x2kpoonbxgdpmjbhp4jpyew2oryvc@kskcz3zcg2ky>
References: <20240617-tdp158-v1-0-df98ef7dec6d@freebox.fr>
 <20240617-tdp158-v1-4-df98ef7dec6d@freebox.fr>
 <hdhy5pnq4vsdn2axgu3t5vyhwqrqcrvpveeyai2lyvwadr7rbb@te6fucdqclez>
 <cad870dd-861b-433b-8598-1b8b68b72d6c@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cad870dd-861b-433b-8598-1b8b68b72d6c@freebox.fr>

On Tue, Jun 18, 2024 at 01:48:48PM GMT, Marc Gonzalez wrote:
> On 18/06/2024 00:33, Dmitry Baryshkov wrote:
> 
> > On Mon, Jun 17, 2024 at 06:03:02PM GMT, Marc Gonzalez wrote:
> > 
> >> +	if (sbridge->vcc) {
> >> +		ret = regulator_enable(sbridge->vcc);
> >> +		msleep(100);
> > 
> > At least this should be documented or explained in the commit message.
> > Is it absolutely necessary? Can you use regulator-enable-ramp-delay or
> > any other DT property instead?
> 
> The value comes from datasheet "8.3.2 Operation Timing"
> Table 1. Power Up and Operation Timing Requirements
> VDD supply ramp up requirements, max = 100 ms
> VCC supply ramp up requirements, max = 100 ms
> 
> Did I read the spec wrong? (Very possible)

I didn't check the spec. I was pointing that that you were adding
msleeps() into a generic path, but the commit message had no explanation
for that.

> 
> Are you saying this could/should be a property of the regulator?
> What if the regulator gates several different blocks?

I agree here. Yes, it should be done in the driver.

> 
> 
> >>  	sbridge = devm_kzalloc(dev, sizeof(*sbridge), GFP_KERNEL);
> >>  	if (!sbridge)
> >>  		return -ENOMEM;
> >> -	platform_set_drvdata(pdev, sbridge);
> > 
> > I think this call can get dropped together with the remove() being
> > gone...
> 
> Oooh, it didn't occur to me that the only reason to store drvdata was
> to have it available in the remove callback...
> 
> 
> > Does this work if the driver is built as a module?
> 
> Not sure there's any point in testing since Maxime NACKed the approach.

Yep :-(

> 
> Regards
> 

-- 
With best wishes
Dmitry

