Return-Path: <devicetree+bounces-42231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F290856FB3
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 23:00:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DBA24B237CB
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 22:00:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C390F145324;
	Thu, 15 Feb 2024 22:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="HyDbZN/X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53571420CA
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 22:00:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708034428; cv=none; b=Q8/rqy3d5ibYEIm7EINYCmxSbJiLpMt+GR7VAvQGrvgHNOzSXYT47BL+OpkZtDvaca7F+OJXi3JEWTxIk8BjcEqff6T2b9S9gXqWnR8fR8uZYdb4tl9/kyGBfMuTC/ZP2Cs46jS7Etr9e+zI09mFu2A+XCzcAJBV1dRlkyCiiS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708034428; c=relaxed/simple;
	bh=m0ottLDJAZHNYRCNzmWiH7yuWIWrCPNNHSBS/QgSsrU=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f1TNe1QHHM4ZQt3gI/Sb1DgkFfPKwVSgZyzJCqQEtSe0dRqC7BMVdoLDXmejUrwjOCSlInFTZRvilhK26d83EWwjC8YbSP/W74RvNp0KBh2usok/4+SA757eeXc3sh9p1aojL2j6Er/+3aSh2ES38zqF4SvIGcgsvrmP99ThVUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=HyDbZN/X; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2d09cf00214so2052121fa.0
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 14:00:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1708034425; x=1708639225; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BDDVrcRz/Ycf8cdbcrLManVLDT9HHxZVyCSEzgV1aZM=;
        b=HyDbZN/Xw4oA6Sx7qtsjudlHesEnNSdi20hEmcRel0UhNt9L0Ae+0WUwXc0Wdf0Wbu
         PkRASewXAfF4nr1PwwTlL7KCLL4kCQgN+drlmL/GKEG1OmbZ3qZoEBrejWsdKQOecbCU
         wg0btfy/R7uIhLvsgrcTQJ/2ynkqLAOwKxvic=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708034425; x=1708639225;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BDDVrcRz/Ycf8cdbcrLManVLDT9HHxZVyCSEzgV1aZM=;
        b=EOIFVb/jttFBANaaJBBa8h6adrFBn28VDVIF/mOuADs6tblId4G2kppqmnn147fvbM
         8tDQ8TWRNQa+Uil9e6By6v96qvmhi99G6VfvsLPvJ16VPizM+hrE+9K1Xs6PuFMAP9Lv
         M9H/cXb4nh4kovWUG5MfHd5557CFGcf4kOO0gDOvcQ9c13id0yPjo+n74fXBrNXwfSTG
         ZMG2O02PkKNvBGFMOt0wv4oeFlS5oNcDYB9FV8q5IjtQvxtGG0JleGoz6td9ScvGeQk6
         b4vI+Tp+TtnqJyTJnk28nyguz4g2rt/U/XiHRs2RzWoy/4Xe1xeYfTaNZ5i2+/uGmZkf
         JYhA==
X-Forwarded-Encrypted: i=1; AJvYcCXrVYgDIeC8XaAmjZ9pnat5ZvULBMa5As242lHPBG/+A0NqnctlfChF52P+2nAPUCPWauCRyM+8WgAM3nBkDDg5tbNQDvkp7TlvTg==
X-Gm-Message-State: AOJu0YxOV59tEOY6+ThfLGb4jB2RysjJ9c2iC8/7EVe+x0EFXW8YQSrz
	0Viso/ziDqNIiOSH7L/cyQl80qNI+GDvuYsuhLOsqwxbcM/iKR7pCF/fsiWl0a2Ymu/IQENS3Np
	UpeM2qx16yBEC7JqLiGrf0Dfci7v6ytZQJI0+
X-Google-Smtp-Source: AGHT+IHZsX1oCvcJlSf5XfTcHW/43KxOJRGh8S4YaM6TXMZR2b4sKxAd9QenLzmlOUm+lpukKlbDAdnYnvVvVUmkqm4=
X-Received: by 2002:a2e:a98f:0:b0:2d0:c490:affe with SMTP id
 x15-20020a2ea98f000000b002d0c490affemr2710448ljq.19.1708034424733; Thu, 15
 Feb 2024 14:00:24 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 15 Feb 2024 14:00:24 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20240215140638.GA4162082-robh@kernel.org>
References: <20240210070934.2549994-1-swboyd@chromium.org> <20240210070934.2549994-2-swboyd@chromium.org>
 <20240215140638.GA4162082-robh@kernel.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Thu, 15 Feb 2024 14:00:24 -0800
Message-ID: <CAE-0n51R307Tg7p9=GNFfUB2tE0o5JWBNpU=rX_HUe9ydSXW7A@mail.gmail.com>
Subject: Re: [PATCH 01/22] dt-bindings: gpio: Add binding for ChromeOS EC GPIO controller
To: Rob Herring <robh@kernel.org>
Cc: chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org, 
	patches@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Douglas Anderson <dianders@chromium.org>, Pin-yen Lin <treapking@chromium.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lee Jones <lee@kernel.org>, Benson Leung <bleung@chromium.org>, 
	Guenter Roeck <groeck@chromium.org>, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Quoting Rob Herring (2024-02-15 06:06:38)
> On Fri, Feb 09, 2024 at 11:09:12PM -0800, Stephen Boyd wrote:
> > +
> > +description:
> > +  Google's ChromeOS EC has a gpio controller inside the Embedded Controller
> > +  (EC) and controlled via a host-command interface. The node for this
> > +  device should be under a cros-ec node like google,cros-ec-spi.
>
> Why do we need a child node here?
>

When in Rome... but I get your point. I will work on moving #gpio-cells
and gpio-controller into the cros-ec binding and populating some child
device from the mfd driver.

