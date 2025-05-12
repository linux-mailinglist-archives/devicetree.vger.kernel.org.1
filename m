Return-Path: <devicetree+bounces-176409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE68AB3DD3
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 18:41:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EECC07AB5D6
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 16:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9156C253954;
	Mon, 12 May 2025 16:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="N66RJsPj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9CC253357
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 16:40:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747068046; cv=none; b=hU+e72A5K/xQcSY2zCXxC8pl7MrfVnslQuJbUpNFs2UmbXxZdesOqwtss3A0lTYXOQ9QbK0PVA6/hePoiSNgcHIw7Dj/yoPvSefzQEGSztXO1AQ/eBoFqqnlsq8SzECtnoRGo76c7Nc+12ig0nYh/XkS/S8X8VAAJtWmLm/eNvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747068046; c=relaxed/simple;
	bh=taQfZsoyyaRRbTWAkHLnXl3ay+rpXqUCTLQHraZLZ2s=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JwWC0Xh+XdWjjbIz2y9AbfRuh8w+7ro8OO286cvhWf88ZVtyxK2bYieOB+SWy42ek7lZ22dMNTOsa7aTIqmpRBkkOX0TYvfr7HtHuZgYYvNEpLFYNvYRkqkwjc4rFw2KQIuN8+mWVThIaHetu74ogr9JOFWs+VkqNQj/nqSn5SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=N66RJsPj; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ad2452e877aso291999066b.3
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 09:40:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1747068042; x=1747672842; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TokNH1Htr1RVPQd8EncDveS8lHW7ErFNLxi6svxi5ss=;
        b=N66RJsPjr6vGVmKz6JQUmsBLeEjNqH4AiECN8Z49HBrt7m0+umD+lZ8NGIdDVPZg+P
         R4sIL2l1TyF0gwGvJUq3C4ZypyJuL8sxqRYHvmge9qnelO8ZZzZWu1OM2Gi4EfUntqiL
         HRULdtAbBn1u2pMOwalw602tQ3YQXw/U3o/3ykJwfUtEKzElkgVROz4FZ1zryO4j7WwS
         hFWOLU1WQdgzhh4ZGaLltWgdD9RPZdAxuSQjebHfPtyJcbAvnDKuW2oVI7t0Zi6CqPYX
         /rkgytHI3Q4UUz2+N6kj+YGZtvwYzWr62Stvh4G0JpLZfSV4Mw39pMmQ1elHzmheQiQE
         E0Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747068042; x=1747672842;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TokNH1Htr1RVPQd8EncDveS8lHW7ErFNLxi6svxi5ss=;
        b=vFtQ6bXy1imSydi3isxjzDbsmIodAojW/9VOIA8i4Sxh39v+HAamAyAQu+8np2lip0
         tiTlrayPVfkN3UXuySV7mwndAgEYAF8/I7jpryArr7giPxvAz7VdTrdfIfAoLAZuOidi
         b0NLjpaWmyeVLdOVNqg0uqDjJb6b7aT93btgygnmnSKEMWbfvogPSZJNG0eUWgxhMDX/
         0nXgigeropUxGGQXPBAeISLO9pRqVdmhcpK+Tf38gs2931Yc2HL0/pVMMn4f9DX3M9jq
         eYZe9O16ye50Fdn5wBbvMINCrtz+5DEIhqXBmnh0KH1ySnmtYlj1ooqZmOquHKbDqSar
         Nu1w==
X-Forwarded-Encrypted: i=1; AJvYcCWZVwDqpzeOOOXECwciAFGPqoG70UMlcwCcie3PZnSGOiYYN0ScJ4rTlf3pVBV3MJqVjIWFDayhpIJa@vger.kernel.org
X-Gm-Message-State: AOJu0Yzj4byMjEJp5NPgOVfRoW7M++0mL5V69FBlJaALVyDZVGheYhRO
	29hZ8XN1YKMjMVZqjcy7x5UBPRZ6VYujyeTkr1hT9D17EK9A7xlciqUkLBa7UWM=
X-Gm-Gg: ASbGncvLxPiIz19lUGJIBFe+tJ/GYmk1hGMgABb1P/IaH4lCZnyFDv9lNjJyXOsSGDD
	T/RrsbXli25tQGivC61n/IpzlD1UR1nbyFX5ZalnriSA7dIGolqnEpMzYOiyYouMFArDcLSJGyM
	P0n5Ol+htV1NiNi2Wua2Pcy54i5UY4BL3Qfxg+QJ0FT64Z9zTy950bYuRRC3ko/ZOF7Bhi55J/1
	WOY6GIPMmuNvhkfnS3B1PoBhOUB5uSy9TDZQYGFdzuI1o8QNQNgi1HIPE0BDR2wkpY1H3cRpe9t
	5BikySWTKTI7AhuFzNseTJIhb/DyzQkzjPEvCrTErezeMmwU1Ka7RGRd03Ij/P4MwUGAgUENBqq
	jznV45g==
X-Google-Smtp-Source: AGHT+IEe9HBXk5aMisXuJwzJQBcZUmggyJeRK/MRVhfeKfh2p+XusCVvgZz40RfLsmwKRD482heZsg==
X-Received: by 2002:a17:907:6c13:b0:ad2:2eb4:1525 with SMTP id a640c23a62f3a-ad22eb4166dmr823140566b.44.1747068042371;
        Mon, 12 May 2025 09:40:42 -0700 (PDT)
Received: from localhost (93-44-188-26.ip98.fastwebnet.it. [93.44.188.26])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad21934d4d0sm636444766b.73.2025.05.12.09.40.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 09:40:41 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Mon, 12 May 2025 18:42:11 +0200
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-gpio@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>, Phil Elwell <phil@raspberrypi.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	kernel-list@raspberrypi.com, Matthias Brugger <mbrugger@suse.com>
Subject: Re: [PATCH v9 -next 08/12] arm64: dts: bcm2712: Add external clock
 for RP1 chipset on Rpi5
Message-ID: <aCIk40642nXZ3arz@apocalypse>
References: <cover.1745347417.git.andrea.porta@suse.com>
 <38514415df9c174be49e72b88410d56c8de586c5.1745347417.git.andrea.porta@suse.com>
 <aBp1wye0L7swfe1H@apocalypse>
 <96272e42-855c-4acc-ac18-1ae9c5d4617f@broadcom.com>
 <CAO50JKVF6x_=MUuzjhdK0QotcdUgHysMb9v1g0UvWjaJF2fjDA@mail.gmail.com>
 <48AFA657-5683-42A4-888E-3E98A515F3B1@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <48AFA657-5683-42A4-888E-3E98A515F3B1@broadcom.com>

Hi Florian,

On 15:02 Mon 12 May     , Florian Fainelli wrote:
> On May 7, 2025 5:01:05 PM GMT+02:00, Andrea della Porta <andrea.porta@suse.com> wrote:
> >Hi Florian, to accept the patches, what would work best for you?
> >
> >1) Send only the relevant updated patches (maybe as an entirely new
> >patchset with
> >   only those specific patches)
> 
> Only the updated patches work for me. I don't think there is that much coupling between the DT changes and the non-DT changes (other than without DT entries nothing is activated)

It's a little bit more involved than that: 

- Patch 7 (misc driver) depends on 6 (RP1 common dts) which in turn
  depends on 1 (clock binding header). Should be taken by Greg.

- Patch 9 and 10 (board dts) depends on 6 (RP1 common dts) which again
  depends on 1 (clock binding header). Should be taken by Florian.

- Patch 4 (clock driver) depends on 1 (clock binding header) and
  should be taken by Stephen.

So patches 6 and 1 are in common between Florian and Greg, while patch 1
is in common between everyone in the pool.

If I uniquely assign the patches in common to one of you, the others
won't be able to compile their own branch because they will be missing
the dependent patch.

If, on the other hand, I duplicate common patches to each of you to
make the kernel compile for veryone, you should remember that there
will be conflicts due to duplicated patches among different trees
down the merge path.

Any advice about how to proceed is appreciated.

Many thanks,
Andrea

> 
> Florian

