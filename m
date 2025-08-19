Return-Path: <devicetree+bounces-206204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B551FB2BB81
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 10:15:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 516DE3AC551
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 08:12:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2CF731159B;
	Tue, 19 Aug 2025 08:12:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="S4sb0XG9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87F213112CB
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 08:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755591147; cv=none; b=ATlAf5sZ11ibemQMwc5ROQQ4wU8GsS7CvrE2FV8ckTwJx7eU2ncggKyViElSyQYBNqYzCBpg7zSpIysnj4D6hSOyxpEmG43OPJnQzB8G6U7PMq3J/yKD5M0s1LETD/95u3kddCwRSen61d6DJzXIq/Nu0v8MWioYjUfRO4azYEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755591147; c=relaxed/simple;
	bh=/U4vQ+4uaor8+Zvvu+HVf331BVfrCrCt35ZNYnVXSPg=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cKf23M5TcAvEd/zQfqsqpqmbXFdUe63s67LH/uQ3xE8tuRcj/UzpsgvSIMWWE+bT0GxpeScaIq0P0hNZoUppYZ5yFsjT0IYawocZIYt5K3PLF1PQjCiHoHMSthddpDvU1DOXj7HEP682wXuVvfZloLnpbkFKSm14wAcyCu2YIe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=S4sb0XG9; arc=none smtp.client-ip=209.85.208.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f65.google.com with SMTP id 4fb4d7f45d1cf-6188b7949f6so9313359a12.3
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 01:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1755591144; x=1756195944; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9nzPUQ0/d41BabMrdFj7Ztc0g/CB1x+z2efsCXODZwQ=;
        b=S4sb0XG93wSZqon+IFAa2f8WUqGH4D6SZ4x7zjZS43NVOtENqFMAv/elT6DCgMz7zp
         AAZfchhX70BU8p3LL4V81a7oRcOa7txh/TqSt3uH4qXX2ftgvltMthVNh2Rm0114/V/S
         MMAuD+rEXfigo+DSFd9xEI406I2c37EQhP4equBg//VKI89Ot0MXHA54po5iJRc9aUjB
         QqyUEhL5SBU0vwuMCVvZMFejLIuO87SoXoJfI9jv/SfUwipO2Dfh/aeDTPZnKBU/TKFP
         CvHID6ff0GU44MKeJaCKtzOFQSYwMOoF9Roz+7xIitQjG/twKAhC1l6EYeyIYFysnJtA
         YnKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755591144; x=1756195944;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9nzPUQ0/d41BabMrdFj7Ztc0g/CB1x+z2efsCXODZwQ=;
        b=tTk7ZPAGB6dmoAcf2jacX77kRumckY2dtcsatV60s31K++CACP2cM9HQh4pyIU3BXW
         dkAeVVCm3KW7E/pWuU+zV7SgaRBXcSpXY5FnExNjFya0jkOW3oowSKUTo/xKTrGxCSFA
         1Sh5byP2y31P+UbdrvBPIkuG44ReAjCFSfkdPn9LxBIio7e9ddc9/OQX9Wqnb3JBwI9v
         O21bK0zouPLx2/2FTrTPN9e/Zla83t/3L3Ag2s7XFCtVmwBe954ezq1JjQgpTr/3Jgqy
         8TF9Fwg7E77VJytk9aHYWWNl9/0nB1gINHD9fxsgOCyLUI+2zbLZrgjQ9FTSfhJ77d5h
         sBIg==
X-Forwarded-Encrypted: i=1; AJvYcCVKI6NJQPlcixuzH4KpNlIOKMhcCFMvNWa38k1KsakIS9qaXRhbILpWaGFRDZ95O90e7wquw+b/rf2B@vger.kernel.org
X-Gm-Message-State: AOJu0YwO+7WJlEtZpneLbyXBsOOKohDXJEw43+yZGyBVJheKJE1yjITU
	ArYjYtm5oV67FgdLnxivgiFq+ZxnNDnNaj5ISPLU43zdYb0WN6yOVYDPZGADLJRMzL4=
X-Gm-Gg: ASbGncvQBPD39ZkWJurWSg2ZVL3HkgrKsPNqyQXK3sqzgJ3816kcXcU/p8lrNneS8RR
	7HMQoqWEKwPNQRqzVJfHET376SF2XykIQ4fReF6UKOCmeLxdnt+i6EJr+Ms+i5UVp28n+GNcynT
	lBqVIjoZoW1IuHV2wYDh28lMAVmhQufPcDhv/FeWYcp9d1+4OmObF17xF6JHYAEtQkVqUmjzko/
	rfJwGrXoZxb11SlUyba8vN95QmkpOug/015hx3cdVQMFiOslbWz3AXb3lBs2F+TBrEQTQxzHAEw
	cidIe0BAW7B9YzqiITqKOEdigAqahnFKcEnLK8hiusn+IjILi1LzwUhdEVrg6wb3YmDW0oKGX45
	wjAARLQ48hM/gRPARPbkvfp3yepiKuXvErUheUBJJjhgxLBQyqLc/Ki6oIIt7hQBzRVNHZH8=
X-Google-Smtp-Source: AGHT+IFWUFHoGU/t7RtStcFRX+OfWnQMuoPAH5EIGoxs7IRL94PQgOjPHffK157QAOTE9MTriRH+/w==
X-Received: by 2002:a17:907:6e89:b0:af9:71c2:9c3 with SMTP id a640c23a62f3a-afddd0b555cmr143308466b.35.1755591143820;
        Tue, 19 Aug 2025 01:12:23 -0700 (PDT)
Received: from localhost (host-79-36-0-44.retail.telecomitalia.it. [79.36.0.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afcdd01096csm949783566b.88.2025.08.19.01.12.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 01:12:23 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Tue, 19 Aug 2025 10:14:14 +0200
To: Stanimir Varbanov <svarbanov@suse.de>
Cc: Andrea della Porta <andrea.porta@suse.com>, linus.walleij@linaro.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	florian.fainelli@broadcom.com, wahrenst@gmx.net,
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, iivanov@suse.de, mbrugger@suse.com,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH v3 2/3] pinctrl: bcm: Add STB family pin controller driver
Message-ID: <aKQyViTbXAsFEuT7@apocalypse>
References: <cover.1754922935.git.andrea.porta@suse.com>
 <bb746d2fd50ecbb9963438fae8601c2e4901a126.1754922935.git.andrea.porta@suse.com>
 <f7892abc-1063-4b12-8d47-c80714aeb8fe@suse.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f7892abc-1063-4b12-8d47-c80714aeb8fe@suse.de>

Hi Stanimir,

On 10:40 Tue 19 Aug     , Stanimir Varbanov wrote:
> Hi Andrea,
> 
> On 8/11/25 5:46 PM, Andrea della Porta wrote:
> > From: "Ivan T. Ivanov" <iivanov@suse.de>
> > 
> > This driver provide pin muxing and configuration functionality
> > for BCM2712 SoC used by RPi5. According to [1] this chip is an
> > instance of the one used in Broadcom STB  product line.
> > 
> > [1] https://lore.kernel.org/lkml/f6601f73-cb22-4ba3-88c5-241be8421fc3@broadcom.com/
> > 
> > Cc: Jonathan Bell <jonathan@raspberrypi.com>
> > Cc: Phil Elwell <phil@raspberrypi.com>
> > Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
> > Reviewed-by: Phil Elwell <phil@raspberrypi.com>
> > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> > ---
> >  drivers/pinctrl/bcm/Kconfig           |   13 +
> >  drivers/pinctrl/bcm/Makefile          |    1 +
> >  drivers/pinctrl/bcm/pinctrl-brcmstb.c | 1197 +++++++++++++++++++++++++
> >  3 files changed, 1211 insertions(+)
> >  create mode 100644 drivers/pinctrl/bcm/pinctrl-brcmstb.c
> > 
> 
> <snip>
> 
> > +static int brcmstb_pinctrl_probe(struct platform_device *pdev)
> > +{
> > +	struct device *dev = &pdev->dev;
> > +	struct device_node *np = dev->of_node;
> > +	const struct brcmstb_pdata *pdata;
> > +	const struct of_device_id *match;
> > +	struct brcmstb_pinctrl *pc;
> > +	const char **names;
> > +	int num_pins, i;
> > +
> > +	match = of_match_node(brcmstb_pinctrl_match, np);
> 
> The 'match' variable is needless, you can drop it.

you mean something like this?

pdata = of_match_node(brcmstb_pinctrl_match, np)->data;

I thought that kind of compact code was not really the way to go,
at least taking a look at other driver exmaples: there's only one
avoiding the intermediate variable and many others using it (although
in some cases they also check for null, so in that case is fully
justified). Anyway, I've no preference on that so I can proceed with
your suggestion, unless anyone has something against it.

Many thanks,
Andrea

> 
> > +	pdata = match->data;
> > +
> 
> <snip>
> 
> ~Stan
> 

