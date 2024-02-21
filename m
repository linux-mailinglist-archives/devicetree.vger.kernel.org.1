Return-Path: <devicetree+bounces-44470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D73D285E5D2
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 19:25:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66BA7285560
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 18:25:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F9068565F;
	Wed, 21 Feb 2024 18:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="VmIeKjT+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98D1C85649
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 18:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708539768; cv=none; b=e/v7p9MRSrtqxouhIHdNolnTo9X5ceJVykQIVrnM3IGW5dA8bb7hjiiJqpYvXxlQRVyvaRhuX/mrUg1Y5oqUv9wRyeyH2H4w5P8Z2hzV94O0fIfndRsD+PFsnplWvfQ/9FWJKYk9IaNnyrRai9IbykSlCWs1YuyCDJhZEuKs6UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708539768; c=relaxed/simple;
	bh=oUjTNB+YJ3PLhPlQOYq6B6UsiqL7lBfj/BOypZrcvJU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t08XriBGOoZkN+0O/pYTgV0OgVV4D2fRIfr8QzN2ZUYkErIX/dJSilR/yxdnRKyVf+RNYUfWPvE2pIYsVhH2HDqaO38I/8dvdc3W9uVWIjQrJ8zRE5ibNXeeqpdq8RLkeex/dKXvqViTjCt0MRLyvLkfSwY6VWIMRUcvifKvY/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=VmIeKjT+; arc=none smtp.client-ip=209.85.166.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f47.google.com with SMTP id ca18e2360f4ac-7c488a5af5eso1471939f.1
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 10:22:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1708539766; x=1709144566; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iJphrwo2Ep2dN6aBLl7oaLHam6X6d5zwfvFXKs+dYCs=;
        b=VmIeKjT+r+T7JnLqR+k3O8QU7Sb1fQL4iufdjglcikhuTzZ0uP8THeZNsjPKQ4uZ6E
         C1xPzrY1H/jgTtat9ekgYOWeUJK5DSyuK4jSCpGnMNg5xO+1YcY+t2LLW8NDaUwTFtHg
         wts9OSUosJ+gJW7muZp3jkm8WWONK1BaSpQMg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708539766; x=1709144566;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iJphrwo2Ep2dN6aBLl7oaLHam6X6d5zwfvFXKs+dYCs=;
        b=T9+NucHV4mVOpf8s0/8kHQQpc8CwrLQKD8FulFNKGiXrYpOG+pipwX6o3lV1G1GHPk
         SHtAQYKp6GytBvD+0fCSeAz8lg9Gg06PwbDNYSSaD235+jQ7d48pU2jZ8HIcC14EV2tz
         qo8gf6uPZBhWrXbYaN0VgRvXumd0fAFRb+aPgbjo0jDl1jC/o4BEsM1EnoTVkf9MBCSO
         8YXj45P9dp0xpT87KEWSWvCIfVROReYVj/V4WyydelyZVFnz4vbWWpDzNaIiot/tH/DH
         +LzIm9vIefrd8g/6dZeEEvQnGx/NLgw7UKRjhlx8+wdGNyHOjjS0z1n+K0HSib8ftZU5
         WQUg==
X-Forwarded-Encrypted: i=1; AJvYcCW2VtYIRC7h5upuBwpoJaS2z8I/k2XWSXD6NGoaYyK/F53Fe1LG3iy69KmgOrXG2EyTZdbHjzzjH1O5MLJJG0NIK97O6AnYNOeLwg==
X-Gm-Message-State: AOJu0YxrXL3sfj4ZPdjYiKPCJkjzk8fNyZ4HkRaJkJUARvT6aJ2VKbfb
	vFV5rw+UYws6bYVvvwaijCZS73XqoG2fvZ4ubKYWbUJwLY4bpjED4nSXXKUOXw==
X-Google-Smtp-Source: AGHT+IFy/sCGrsI7Vzi59Abk14atGTxKKkJYYVvqaEbKUo6yxUDEp1mHW6vPiaR1q9iix2pYiANctw==
X-Received: by 2002:a05:6602:20d4:b0:7bf:e8af:dd1a with SMTP id 20-20020a05660220d400b007bfe8afdd1amr202457ioz.9.1708539765832;
        Wed, 21 Feb 2024 10:22:45 -0800 (PST)
Received: from localhost (147.220.222.35.bc.googleusercontent.com. [35.222.220.147])
        by smtp.gmail.com with UTF8SMTPSA id dl5-20020a056638278500b004742837424fsm1832666jab.53.2024.02.21.10.22.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Feb 2024 10:22:45 -0800 (PST)
Date: Wed, 21 Feb 2024 18:22:44 +0000
From: Matthias Kaehlcke <mka@chromium.org>
To: Javier Carrasco <javier.carrasco@wolfvision.net>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	Matthias Kaehlcke <matthias@kaehlcke.net>
Subject: Re: [PATCH v3 1/7] usb: misc: onboard_hub: rename to onboard_dev
Message-ID: <ZdY_dBZyqiys0gf_@google.com>
References: <20240206-onboard_xvf3500-v3-0-f85b04116688@wolfvision.net>
 <20240206-onboard_xvf3500-v3-1-f85b04116688@wolfvision.net>
 <ZcJynrwp7zcs-aIT@google.com>
 <36b813ad-fdcb-495b-9d27-3573b6177831@wolfvision.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <36b813ad-fdcb-495b-9d27-3573b6177831@wolfvision.net>

On Tue, Feb 13, 2024 at 11:36:25AM +0100, Javier Carrasco wrote:
> Hi Matthias,
> 
> On 06.02.24 18:55, Matthias Kaehlcke wrote:
> > Hi Javier,
> >
> > a few comments inline
> >
> > On Tue, Feb 06, 2024 at 02:59:29PM +0100, Javier Carrasco wrote:
> >> +static struct onboard_dev *_find_onboard_dev(struct device *dev)
> >> +{
> >> +	struct platform_device *pdev;
> >> +	struct device_node *np;
> >> +	struct onboard_dev *onboard_dev;
> >> +
> >> +	pdev = of_find_device_by_node(dev->of_node);
> >> +	if (!pdev) {
> >> +		np = of_parse_phandle(dev->of_node, "peer-hub", 0);
> >> +		if (!np) {
> >> +			dev_err(dev, "failed to find device node for peer hub\n");
> >> +			return ERR_PTR(-EINVAL);
> >> +		}
> >> +
> >> +		pdev = of_find_device_by_node(np);
> >> +		of_node_put(np);
> >> +
> >> +		if (!pdev)
> >> +			return ERR_PTR(-ENODEV);
> >> +	}
> >
> > The above branch should probably be guarded by 'if (!onboard_dev->pdata->is_hub)',
> > this is also a change for ""usb: misc: onboard_dev: add support for non-hub devices"
> >
> I am not sure how to guard the branch like that because onboard_dev is
> retrieved by means of pdev->dev, which is not available if
> of_find_device_by_node returns NULL. The non-hub device will not have a
> peer-hub property according to its bindings anyway, right?

Right, onboard_dev isn't available yet at that point, my bad. I thought it
would be nice to clearly separate the hub related logic from other devices,
but that isn't an option in this case.

