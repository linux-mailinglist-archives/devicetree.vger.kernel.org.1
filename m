Return-Path: <devicetree+bounces-143890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 657D7A2BFE4
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 10:50:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D2B73A758C
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 09:49:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 862C31DE3AA;
	Fri,  7 Feb 2025 09:49:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="R0QQ6qqk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82A9B1B042C
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 09:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738921798; cv=none; b=okvq9W4/DUX8ZkoaQH/JyBl6WkSq7QjRBEr4N3jaUyg2BTK8Yvni2V4H6CzonFwxBaawLFt0QrX2HAvIBFMWUFh05Vv7RMkSQAQWzJAb0sgHckIIpjxy/CFzsH5yVNeWv618lT4hG9Tq4CB7wxHxumSc2FvqNr7k/79Lxq6zQVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738921798; c=relaxed/simple;
	bh=S4p6LLSLOPSpJE9g1forZYx4llbSsosHafGdaXkcLks=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XCKyH8MRi0fzgt19S9RZRfQfU+dK4wBGwE8l0LJEk1lS/DcvfizCkKp4rOhToFp9K1kSES2zOkpno29STnJF1gYANKsd+ullegAFarFdYVXbrz1nuGon7rtBNLppYeL7F/T3Ls5K753r00xulgMTguS8xVRmKcIdOYJ0WJdEHQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=R0QQ6qqk; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5dc82e38c10so4135361a12.3
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 01:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1738921794; x=1739526594; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hHxN1cJYA/N06QjEqFReiwPXLdQZSTCuNsi3b9gHzjE=;
        b=R0QQ6qqkuCHyh/Lspg5x220NQrmp3N6wdbNGoWH7PyXNdhvxz4Jbe7NchDCCV30XOR
         4UrnQQ0BAftdo0xjDtYM/BhzjoxDNhCnK34Yghwjgj4YH3Z24bCg8BkDMUE3cBgRNqoW
         IN/BOoMUZKikliYvQvrQhGKp5soXPZt7bLmqMnjeOaoYU/2tpjpLxYXKJbjHw7zOiTqT
         Jb0g9NZP4p3/v2EQoEOMoMl4ILwB4ZGwXP6h8dqQJOw5YWwV47WyQt2MnRb6xO1swpGW
         M+TB33esmktLN3zuHbZ6n5BvKOB6V9Gwuspyo58dC6FTQjuOuV/zfe3lbKR/zWYucP9I
         CxeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738921794; x=1739526594;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hHxN1cJYA/N06QjEqFReiwPXLdQZSTCuNsi3b9gHzjE=;
        b=rKckzpGfl41conpR2z2hn0uJ7A0jjm5Cke3KqdrCugx4DSFPYK5A8fl/TMxhmQ8y6g
         PP0ylTXhW9roOaHNXjqiLV2u7MOlnrMhA9Sul2d0snroLRRSbwjhvh61INgwaE0RH2NA
         zdbnV0mXm1Y/kW9dim2mrXDYHp5VdvAW8e4++e4gyYmIFelc4ICZbHxWyglc17Tshkp3
         1XvMJDJp7y9HsWQB9ON7dQMjUHY2AWfS2oRI0RTtz92mRRmKRzgulyNbai+Vr7TmenIw
         kUaf5iWuxlSMCABJrKHSknEWIwro/E0RX0VA4Ffu87hrokMDLNjXJBTVK0C8Ce3rwYuR
         LFmg==
X-Forwarded-Encrypted: i=1; AJvYcCVlo8EwDYZ8ShsdDLVloKd4AL+DqGPtEZL6X9bWpzt91ra6dP6amWjx6MdXN/c8D/mDgayiU47AOi4N@vger.kernel.org
X-Gm-Message-State: AOJu0YyCgGuYf/nCPyQF7LLmPCyohT538o5svi+vyVhCX6nKM4C92lcQ
	xkcOSPmCy5hu5+RaUoe1k6Cn4PHYGaJNf+1Jv/xSGbBHVBTIAVa4AwsLUGWFJxk=
X-Gm-Gg: ASbGnctg9J/sq86z0Zu+FpSDUnxu/bSM41ewVnDQkmRjfxa6VJXrXArYV7yXWsuKx+G
	49aKxhaET3zRjZy75t3cfbeN9WI7TlQXCccldY2weHvuevAw4526RXGDoWzWbmBeWmlsagSS1bU
	gta95rPGrU9eYrWdkzpeX+9eDNHF0sOj5mIpumEWI/EdPFy8rZaTrK3pLtm2XX3OIFtjM0AZcf3
	IitFZ6c3zwn7gBKXJPoTylyEI1TfcaCD1BZeme+ERX8BfGpxr/kTdUH1tmKzIv3LWevGY0Ldyow
	Zc6sVYZRhmOWzM3UHn072eOx47UvNBUIDybqa9xhSVf5L6em1Hf6XTR//gE=
X-Google-Smtp-Source: AGHT+IHCzEFvSIhfMGLJjDLN8sAOhYITMeHBywqkNc2QJXqBWAThFj4V/KSvjovgix5IZ8ADaCm//w==
X-Received: by 2002:a17:907:1b27:b0:ab2:f8e9:723c with SMTP id a640c23a62f3a-ab789a9ed0amr257773366b.5.1738921793776;
        Fri, 07 Feb 2025 01:49:53 -0800 (PST)
Received: from localhost (host-79-41-239-37.retail.telecomitalia.it. [79.41.239.37])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab772fd6ba1sm235401366b.79.2025.02.07.01.49.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 01:49:53 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Fri, 7 Feb 2025 10:50:52 +0100
To: Bjorn Helgaas <helgaas@kernel.org>
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
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v6 05/10] clk: rp1: Add support for clocks provided by RP1
Message-ID: <Z6XXfL1-ER2dLmZI@apocalypse>
References: <b12caa1c8c674a56afa7b2de780d9ae5423159a3.1736776658.git.andrea.porta@suse.com>
 <20250203234443.GA810409@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250203234443.GA810409@bhelgaas>

Hi Bjorn,

On 17:44 Mon 03 Feb     , Bjorn Helgaas wrote:
> On Mon, Jan 13, 2025 at 03:58:04PM +0100, Andrea della Porta wrote:
> > RaspberryPi RP1 is an MFD providing, among other peripherals, several
> > clock generators and PLLs that drives the sub-peripherals.
> > Add the driver to support the clock providers.
> 
> > +#define PLL_PRIM_DIV1_SHIFT		16
> > +#define PLL_PRIM_DIV1_WIDTH		3
> > +#define PLL_PRIM_DIV1_MASK		GENMASK(PLL_PRIM_DIV1_SHIFT + \
> > +						PLL_PRIM_DIV1_WIDTH - 1, \
> > +						PLL_PRIM_DIV1_SHIFT)
> > +
> > +#define PLL_PRIM_DIV2_SHIFT          12
> > +#define PLL_PRIM_DIV2_WIDTH          3
> > +#define PLL_PRIM_DIV2_MASK           GENMASK(PLL_PRIM_DIV2_SHIFT + \
> > +                                             PLL_PRIM_DIV2_WIDTH - 1, \
> > +                                             PLL_PRIM_DIV2_SHIFT)
> 
> Maybe this is standard drivers/clk style, but this seems like overkill
> to me.  I think this would be sufficient and easier to read:
> 
>   #define PLL_PRIM_DIV1_MASK   GENMASK(18, 16)
>   #define PLL_PRIM_DIV2_MASK   GENMASK(14, 12)

Ack.

> 
> > +static unsigned long rp1_pll_recalc_rate(struct clk_hw *hw,
> > +					 unsigned long parent_rate)
> > +{
> > +	struct rp1_clk_desc *pll = container_of(hw, struct rp1_clk_desc, hw);
> > +	struct rp1_clockman *clockman = pll->clockman;
> > +	const struct rp1_pll_data *data = pll->data;
> > +	u32 prim, prim_div1, prim_div2;
> > +
> > +	prim = clockman_read(clockman, data->ctrl_reg);
> > +	prim_div1 = (prim & PLL_PRIM_DIV1_MASK) >> PLL_PRIM_DIV1_SHIFT;
> > +	prim_div2 = (prim & PLL_PRIM_DIV2_MASK) >> PLL_PRIM_DIV2_SHIFT;
> 
> And then here, I think you can just use FIELD_GET():
> 
>   prim_div1 = FIELD_GET(PLL_PRIM_DIV1_MASK, prim);
>   prim_div2 = FIELD_GET(PLL_PRIM_DIV2_MASK, prim);
> 
> It looks like the same could be done for PLL_SEC_DIV_MASK,
> PLL_CS_REFDIV_SHIFT, PLL_PH_PHASE_SHIFT, CLK_CTRL_AUXSRC_MASK, etc.

Ack.

Regards,
Andrea

