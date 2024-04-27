Return-Path: <devicetree+bounces-63313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC158B45C4
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 13:13:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E4CC282044
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 11:13:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 397C648CC7;
	Sat, 27 Apr 2024 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="gjwb+yHB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49152482C2
	for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 11:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714216433; cv=none; b=jzP8+mG9CXibsFDehYR0yzjT6XCJaJsasMTbJsOQTQdV9UsteLitvmx0rWwcQtLKKeVtOhDB3gJ4KxUo82k9OUY+142uhbHTHRFX2j2VT2GWCCuIIfwfX3dJNvy63Kl9Tat0i+97rp4Qu6awDJeO1JyJzodXu4OjYGUhvVhjdLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714216433; c=relaxed/simple;
	bh=Z5qfOnWdamTc+T2nZyu7qHNYdjyHqF1xekWpTIgiRSc=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GSN2LwHoFoeBf+9QhqMXBZymKeepcTz0OKEFhxn5aAfSPRmXFUupgmnmpRVxpvhR3ByERRt2hCkdQUvXqZdhtO1LQBjB//DLA/J9my1k6UM0w64Xv82Fg+zVBOWJLRPIRK1TcCPZ+JE+1uVXWtBl9OPcmR/nocD1P3x3HRlxihk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=gjwb+yHB; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a58772187d8so357961266b.3
        for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 04:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1714216429; x=1714821229; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4RDYgLk1RtD/QZsZ7nsHxXtHxKa5q/ot4f4fZ891gTM=;
        b=gjwb+yHB6TymEvpZCgZYjNGSwcloiwJLyf+VyQ5wCKT8oZoUwr/PeHYyTr0ZrkLKIq
         6636+At0ZmlPYnGyrmhPnr2IkkC8kygdvLGpZPnHv9I3/cALYhclUjVCWFZM1CGmVSUm
         eWE7+Yv8N/luafZWaDb9dBGcF9ZZX+PKcg+wUEXAAwRWwJYJJJYHTNOPfNHxccDqyM/+
         Qb99fFqtYH8XH6m+OCJwxDSsximbeTR7nk19hhGxghO1eoVbzNA8msyxuuwtnAwDB1uV
         MLvyIUON3iRktBK4L8Wx6h8Yth0DD1fDll6oRqLXe04wy11asBG1e/iXa5h/WzUCDIIS
         zSsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714216429; x=1714821229;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4RDYgLk1RtD/QZsZ7nsHxXtHxKa5q/ot4f4fZ891gTM=;
        b=bT2FJ7PuTyjBC26UOZIyuGXYx0ZsiHTdU5WJhhfv00Fy5+gufCneW8WdqMr5hqgtQ+
         7ERfGWdnsyb1pSq6Au//YJ/gF0WuPLQEtrRYIemyEkw2zZ2zEAMv/cCv98fa4eFBb/LP
         opLBda5O9l1NOUkFF2LpCJkxiadoNN7mIQ2pMsv6KufTio7CS8BjyLrII95Sy+XZjuMr
         Ot0vpcY6886LIIVyNlIKUy0NXT6m2V5DeDF3lsC1CX5Xd5UN2NwSS3RIi+BD41XT0oFi
         0Wc146KU1qtKZiRkeNCseKfqXSOZm+nUjqLDaKjwyLaM8csAt+SsYHXaWh/aKp1LN5sF
         65yw==
X-Forwarded-Encrypted: i=1; AJvYcCUGe10dbg9utbccj2HuliIf9YEg7ah9gxb0eCW0wWKXSHwcAIXK4rCEtHODtvdLWQCG365VDb1khRSd4jWi2eyLxrlaggj4P1+ETA==
X-Gm-Message-State: AOJu0YyvNmUYIno+DoSy82oZH67YQt4CDZzZgN8AfhiIvqSlNWOPn0tX
	fbkwyf0Bt/W9hq8RlZdA88ibgkkC4pzSx8C0WUSxm+u/yrooA/SgS4giJ8i/WmQ=
X-Google-Smtp-Source: AGHT+IEEs920x533drbPxLSc6HQCIbc9YyZpIJ14gZErY6tXi1wXzKTQxnvCeVuB+NCa/EXFabnckw==
X-Received: by 2002:a17:906:aed2:b0:a58:a2f9:d795 with SMTP id me18-20020a170906aed200b00a58a2f9d795mr5383931ejb.59.1714216429515;
        Sat, 27 Apr 2024 04:13:49 -0700 (PDT)
Received: from localhost (host-87-1-234-99.retail.telecomitalia.it. [87.1.234.99])
        by smtp.gmail.com with ESMTPSA id ah2-20020a1709069ac200b00a4e393b6349sm11462597ejc.5.2024.04.27.04.13.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Apr 2024 04:13:49 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Sat, 27 Apr 2024 13:13:50 +0200
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Kamal Dasu <kamal.dasu@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH 4/6] pinctrl: bcm: Add pinconf/pinmux controller driver
 for BCM2712
Message-ID: <Zizd7sPYOhifpTJZ@apocalypse>
Mail-Followup-To: Linus Walleij <linus.walleij@linaro.org>,
	Andrea della Porta <andrea.porta@suse.com>,
	Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Kamal Dasu <kamal.dasu@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
References: <cover.1713036964.git.andrea.porta@suse.com>
 <8fb5dde9404875777587c867e7bdb4f691ab83f2.1713036964.git.andrea.porta@suse.com>
 <CACRpkdYmfEz-eM_R3ifGnbu6saL4Fd60D2ksyCr0SW0X6M_1VQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACRpkdYmfEz-eM_R3ifGnbu6saL4Fd60D2ksyCr0SW0X6M_1VQ@mail.gmail.com>

On 15:07 Tue 16 Apr     , Linus Walleij wrote:
> Hi Andrea,
> 
> thanks for your patch!
> 
> Some comments apart from was said already.
> 
> On Sun, Apr 14, 2024 at 12:14 AM Andrea della Porta
> <andrea.porta@suse.com> wrote:
> 
> > +#include <linux/pinctrl/consumer.h>
> > +#include <linux/pinctrl/machine.h>
> 
> Really? Why?
> 
> > +#include <linux/pinctrl/pinconf.h>
> > +#include <linux/pinctrl/pinctrl.h>
> > +#include <linux/pinctrl/pinmux.h>
> > +#include <linux/pinctrl/pinconf-generic.h>
> 
> I would just expect these.
> 
> > +static int bcm2712_pinctrl_probe(struct platform_device *pdev)
> > +{
> > +       struct device *dev = &pdev->dev;
> > +       //struct device_node *np = dev->of_node;
> > +       const struct bcm_plat_data *pdata;
> > +       //const struct of_device_id *match;
> 
> I don't know if others commented on it but drop all commented-out code
> or make use of it.

Forgot to remove those lines. Will ve dropped in a future patch since
the pin controller driver will not be included in V2 since it's not
strictly needed to support SD boot.

Many thanks,
Andrea

> 
> Yours,
> Linus Walleij

