Return-Path: <devicetree+bounces-206223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 61542B2BC05
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 10:39:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E7FE5285FA
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 08:39:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0CD03115BD;
	Tue, 19 Aug 2025 08:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="YeMFEOjJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4267255F5E
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 08:38:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755592740; cv=none; b=MwWeE833kf0TFtSI+xrF0072v3wc9YX4QUakndwI9xY8eV2QmxT5uvijLXY6O0aj4lOZBk6Y7NzDiLwfmWb+74hRrGw7lFe66uDwjxPAPYzlSKqaDhjoXRdJqskPF8iUM+StdJ8gziTG9vHFqV4WIYWfd7oZnxh/uT5VUguQugw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755592740; c=relaxed/simple;
	bh=3F4UrOhZZTYKHnFTlZsPxTLZ7XhoY/GR8gZkd6VKDcI=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XAe8OgEMoe6O6/Kd5NaWrYqfjK0dMQQE9uVVxZaX85uMI5+xqHB84DL0Za48Tka152s0mQcKRo9UBEuYU08/eeEf74Hf9kcJ7FvMNtvp7M6BjKjUXS0hkZ0ydpLefGqdK4zllSK+8iMiMS8HCZT/rDm2VvFQKfEBLUC9KDhkZ6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=YeMFEOjJ; arc=none smtp.client-ip=209.85.218.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f67.google.com with SMTP id a640c23a62f3a-afcb72d51dcso708973566b.0
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 01:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1755592737; x=1756197537; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=awT1Pc5QFdF5D/Wxu+LjKDgk6d6Ud6beDyAqqEU7AUY=;
        b=YeMFEOjJcH2ldPA6DfSAWX7sOZQHG4JxrBn89K3zGXwTWDpK2s4712fDm9la4Tjcue
         SzjZJ/tGOOGaGQVSOPda2rvvSPkYy6NTeaTEAgpN8KnW7E7QxNAqyjlewb1kZyVDSdWn
         J656yg+L3Y1xU94hWR6DWM25z9mSHQYRSRkaoT82kG50yPErNS+tB2aA0Ky7IpvKIKj9
         2twU6dheyWpc4Do/+pp1o5uGlPQRum1JWKWVypCyV6g+88Uzfy1HAOQSi6bYkY+YtElt
         K+v/85eQijEaYudInTnFALFQg9N3RbLdD6UA5oSSdvzKWsgITTzIbIOEyQZxj0roDrHi
         Z4yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755592737; x=1756197537;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=awT1Pc5QFdF5D/Wxu+LjKDgk6d6Ud6beDyAqqEU7AUY=;
        b=MwgORinh3CawxtScWWz8vECa8WFvMR91x6pfYB1r0LexBjy49uvZddrWW5SqTbARVL
         R7JGaPEDfKrQfzLb9hiitZEP+ar/YMpc5cZAdkPN1jMdgklfk0V0YdtHatWW3QXqIH4K
         7UJaKHn2BCvn2z90wpEBjGwLQZMmgtw4B5I8e91HfcBxeC5TUcsVe6zkipGDO1/5IBA7
         7HzxqMfk177Z2URI8cPSy/dBGeSBuQg+sHKnIDcKtUo6izUy1fNFIZRc2fOBriuRLNcY
         6fblq4XFEqqrc4041n2hr+lLbt9hLKmiLdVlR/3pJe6JK8RDjqWzQPzWOM142C9oLOxo
         Cf3g==
X-Forwarded-Encrypted: i=1; AJvYcCXB+Y8h+5VfJ0WCeKdZbK8a5abP9F7i0ooOE2wK8PS5tp/ym3Vvs2AWQhKMq3rR3K8R2aF8yWXN34TG@vger.kernel.org
X-Gm-Message-State: AOJu0YzH/A9Gc9eKtBMkimeEQtVbPwfsesBgB2XC1zqSMS+brYAKQmMX
	NRbL7O49Un14bJzpbX7CcJ0ykrEZzDnkCgd5DTN0gflKw2kKHSqvKKsSpXiGkJS3vNw=
X-Gm-Gg: ASbGnct4AHulQpJ3rO/q5+OHaAdmISZx1eXvzgSmT+kZ3q3EfXT0gUWQ3S9MR2JQqbM
	ys/LYkRoKFxcHqPhlHry/Csse4VXKMdsQkzXkXmzizLiJHos1/kXkLzJ0xRjNvfrDL+mBcFHIIO
	W8vTn+nf9+2/O8pZdTuKdofMgqU0U6zRsjrHp9jnF6pKgSt0nbPAuaK75g1LcXBeWE+EXM/z6xd
	qOi/UaVeSuVE6ngP+zkmt3riSyRDTt2gtPYSirafEVMiT4y/Sr3Tm5rTGRRgUy+Q7DttlQDAkL6
	wFAY4KRJAltMbZ58/SPZKROCJH9SSj7agEYoCXWk0I5BTqTtLEt9kvnG15xj+4LnVVvA7lO2ow9
	skMbYIi0ihiIn8v3H5Oizq8rBWg0u0upMcdwgzDxqu2WpL0O1u0FQzleZwy2H
X-Google-Smtp-Source: AGHT+IHonInmdTYMCRZte9li+YjdpP7iMaUqqny3PYj+jU1US9Z78L5CzsZFHXynIpZWrj7rqyAw1g==
X-Received: by 2002:a17:906:730d:b0:af3:7645:43e1 with SMTP id a640c23a62f3a-afddcb7f393mr178888166b.17.1755592737043;
        Tue, 19 Aug 2025 01:38:57 -0700 (PDT)
Received: from localhost (host-79-36-0-44.retail.telecomitalia.it. [79.36.0.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afcdcea0ebdsm967968366b.56.2025.08.19.01.38.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 01:38:56 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Tue, 19 Aug 2025 10:40:48 +0200
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
Message-ID: <aKQ4kBZtyr-g5JfV@apocalypse>
References: <cover.1754922935.git.andrea.porta@suse.com>
 <bb746d2fd50ecbb9963438fae8601c2e4901a126.1754922935.git.andrea.porta@suse.com>
 <f7892abc-1063-4b12-8d47-c80714aeb8fe@suse.de>
 <aKQyViTbXAsFEuT7@apocalypse>
 <9af1eb5b-7eb1-4686-869d-eda597145819@suse.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9af1eb5b-7eb1-4686-869d-eda597145819@suse.de>

Hi Stanmir,

On 11:19 Tue 19 Aug     , Stanimir Varbanov wrote:
> 
> 
> On 8/19/25 11:14 AM, Andrea della Porta wrote:
> > Hi Stanimir,
> > 
> > On 10:40 Tue 19 Aug     , Stanimir Varbanov wrote:
> >> Hi Andrea,
> >>
> >> On 8/11/25 5:46 PM, Andrea della Porta wrote:
> >>> From: "Ivan T. Ivanov" <iivanov@suse.de>
> >>>
> >>> This driver provide pin muxing and configuration functionality
> >>> for BCM2712 SoC used by RPi5. According to [1] this chip is an
> >>> instance of the one used in Broadcom STB  product line.
> >>>
> >>> [1] https://lore.kernel.org/lkml/f6601f73-cb22-4ba3-88c5-241be8421fc3@broadcom.com/
> >>>
> >>> Cc: Jonathan Bell <jonathan@raspberrypi.com>
> >>> Cc: Phil Elwell <phil@raspberrypi.com>
> >>> Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
> >>> Reviewed-by: Phil Elwell <phil@raspberrypi.com>
> >>> Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> >>> ---
> >>>  drivers/pinctrl/bcm/Kconfig           |   13 +
> >>>  drivers/pinctrl/bcm/Makefile          |    1 +
> >>>  drivers/pinctrl/bcm/pinctrl-brcmstb.c | 1197 +++++++++++++++++++++++++
> >>>  3 files changed, 1211 insertions(+)
> >>>  create mode 100644 drivers/pinctrl/bcm/pinctrl-brcmstb.c
> >>>
> >>
> >> <snip>
> >>
> >>> +static int brcmstb_pinctrl_probe(struct platform_device *pdev)
> >>> +{
> >>> +	struct device *dev = &pdev->dev;
> >>> +	struct device_node *np = dev->of_node;
> >>> +	const struct brcmstb_pdata *pdata;
> >>> +	const struct of_device_id *match;
> >>> +	struct brcmstb_pinctrl *pc;
> >>> +	const char **names;
> >>> +	int num_pins, i;
> >>> +
> >>> +	match = of_match_node(brcmstb_pinctrl_match, np);
> >>
> >> The 'match' variable is needless, you can drop it.
> > 
> > you mean something like this?
> > 
> > pdata = of_match_node(brcmstb_pinctrl_match, np)->data;
> > 
> 
> No, I meant:
> 
> pdata = of_device_get_match_data(dev)
> 
> Also as a bonus you could move brcmstb_pinctrl_match[] array after .probe.a

Right. Thanks!

Andrea

> 
> ~Stan

