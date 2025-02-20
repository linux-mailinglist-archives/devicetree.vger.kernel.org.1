Return-Path: <devicetree+bounces-149057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 932A5A3E222
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 18:20:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9B09A7A724B
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 17:19:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7DE8211A04;
	Thu, 20 Feb 2025 17:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="Mo7fg0Zd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5452E2F852
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 17:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740071994; cv=none; b=OEf8FgLAHaIhZhVEVhFIGpa6HkUd2kndd3dgI7EFzye1jN3z1xQwhgRu/ZYqmYDaDMJhO7gGYPHZCuJdL9tBuiHuSGdT416qyeOm/w/B/47e/Evwr+ILGj4IP7Fj9J20iUIR1ai9Yh0pKwrm8A+crgAylOKJIrac0K0wuLjqvbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740071994; c=relaxed/simple;
	bh=wHpTEubI2khX23N3hbzesh0W4Nr5ERdcdAJECH9gUjw=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jp3AGuuOIROuY02g+jfg+0y+lGOe3VUew+5MOi1UHiaGP1nSkR2tEBE5s8zqsQHsgbiGLp+mc4bDF8YLX70KnG9M7QoCEcAlxDiHvhAUL10rlIzSTKhPsJlBYjskdPWXXia+r1XZgPs3M7UHh9wf2Wby6CjSpw67VI4bzRol2ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=Mo7fg0Zd; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ab7483b9bf7so193928566b.3
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 09:19:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1740071991; x=1740676791; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MPZerQPnM8TdIpEWmUTlPs508hpImW7bIHM5wPNO+wc=;
        b=Mo7fg0ZdyP6Uup760jYAa3GIQZJYAhnZjgZXWdjgqq9I6e10USVdSWyu1IKJCPykLc
         /w2EL9MsZdarBClT2AgPpgo25Ag3W9ZmPFWsb3mXIjYHY3CoNFJKxSBdfe+ExfesmNr9
         VEA3fcd/Ek0hWkX/luRhAkd9DSmNUvcaP1OJwC0/acYkTI+cRO9KaQxR1EBJiXbtsEv2
         90SV1sLvrV0w5edHoxywpPQuCkpXJ9bekokBXHhEOOVKUwmh4u0yq92qGd9QBdbMr+XI
         QFmi214BJzkS9RZcZCeVncCVJPuKE1QkVVlVTzGKjCPN8nnoKfXdmk7WjS+lC9ln0fdi
         DULQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740071991; x=1740676791;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MPZerQPnM8TdIpEWmUTlPs508hpImW7bIHM5wPNO+wc=;
        b=J3AKbUcVobYKK+TbwrQIndmtYCJ8KSsiyGmwEdLZNMTop0jZt4CPyW1ce3+/quTVMF
         /MLyogydWAGUoOVslnNva4Wm/4Y5kDAwoj4gzzOSp8a6zoDiFa0X57EUILipBKsS3Xv1
         xDJmWCktTMtHFMhL7jYhmKrLIErxlNsUq0xLCHqS+EQzEQM+tfPo88KhKbqVzrGFo0f0
         M1JlZ7UfTR9qMPDtDTiFZKWh/tlI6apfBSXDZlq+nYqlmBxJGT1E7R8bI/sYflrrAev8
         Z9plpiPEXno08etqsP53xBnttzAbZMNI6ooDsLzM2kefsfiwO1EzWUZQKMf3//0AkYnQ
         s/gw==
X-Forwarded-Encrypted: i=1; AJvYcCUVSkxMmDcmZuyjdZipLY7ZETqcNs9SV+MMQz2cwaxxCExttx7sVkhEeHOjW/Yt//eN8vtUG9SNFgea@vger.kernel.org
X-Gm-Message-State: AOJu0YxWMPvuZLdSBd6OifQ6Y6mSmaGhf/8fBCZvSfkQ+bekObD9Mgp+
	Yd4I+xwEpOJEmaTyk3Mna6evKFDc5Ho2R8BGxL19SQylgdVyYQxEdC2sKmQ54xk=
X-Gm-Gg: ASbGncuCHcuVurrnZ3p2MFpS91252luLG5owsCSQSlU/IeBXrhaycWXhTzsEOboVic3
	9eIs3SzE+QNYsjrdamqmDasT8/OzkhOvMAmC9lz/6avGDPU6XndMRuU/ljAlAg1/yeJuKz7wWwJ
	6ZgcS4mURXh+wpqxikHj5TKg2fJRjxd2XkXCFijDPUxkWh7sXHgUq8Ni9X05O6Sh5DMNkJp/ey6
	/A0hbciJwa86tq+5uo8uK7JkFjBwKbrnQ0PF+mTSrEubIeO5IWf+fN4tE6uI4bc+3fFLKk/1zTm
	+yG42ScoWrFbuebUlinsV5pFqYxbrGE5el0N+NSy7tapbLa3627FJEwYPUs=
X-Google-Smtp-Source: AGHT+IHWDM5v5Bb9ov4BBEUlzQ3ZQRxMJhj7b+2LTELKPttlDQENJhZRr+MIBUS3293eAO/wNa8PsA==
X-Received: by 2002:a17:907:6095:b0:ab7:bac4:b321 with SMTP id a640c23a62f3a-abc09aacbb4mr14530366b.29.1740071990587;
        Thu, 20 Feb 2025 09:19:50 -0800 (PST)
Received: from localhost (host-79-41-239-37.retail.telecomitalia.it. [79.41.239.37])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb3d276290sm1176404866b.178.2025.02.20.09.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 09:19:50 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Thu, 20 Feb 2025 18:20:54 +0100
To: Stefan Wahren <wahrenst@gmx.net>
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
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v7 05/11] clk: rp1: Add support for clocks provided by RP1
Message-ID: <Z7dkdu4J7uvug7wP@apocalypse>
References: <cover.1738963156.git.andrea.porta@suse.com>
 <4da2f1106ea6b239eba9c117bf6c129fbdb3ee87.1738963156.git.andrea.porta@suse.com>
 <0ef80d00-7213-47c8-9876-1d32011d8d3d@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0ef80d00-7213-47c8-9876-1d32011d8d3d@gmx.net>

Hi Stefan,

On 15:58 Sat 08 Feb     , Stefan Wahren wrote:
> Hi Andrea,
> 
> Am 07.02.25 um 22:31 schrieb Andrea della Porta:
> > RaspberryPi RP1 is an MFD providing, among other peripherals, several
> > clock generators and PLLs that drives the sub-peripherals.
> > Add the driver to support the clock providers.
> > 
> > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>

...

> > +
> > +#define MAX_CLK_PARENTS			16
> > +
> > +/*
> > + * Secondary PLL channel output divider table.
> > + * Divider values range from 8 to 19.
> > + * Invalid values default to 19
> Maybe it's worth to add a short define for this invalid value?

Ack.

> > + */
> > +static const struct clk_div_table pll_sec_div_table[] = {
> > +	{ 0x00, 19 },
> > +	{ 0x01, 19 },
> > +	{ 0x02, 19 },
> > +

...

> > +	regmap_read(clockman->regmap, reg, &val);
> > +
> > +	return val;
> > +}
> > +
> > +static int rp1_pll_core_is_on(struct clk_hw *hw)
> > +{
> > +	struct rp1_clk_desc *pll_core = container_of(hw, struct rp1_clk_desc, hw);
> > +	struct rp1_clockman *clockman = pll_core->clockman;
> > +	const struct rp1_pll_core_data *data = pll_core->data;
> > +
> Please drop this empty line

Ack.

> > +	u32 pwr = clockman_read(clockman, data->pwr_reg);
> > +
> > +	return (pwr & PLL_PWR_PD) || (pwr & PLL_PWR_POSTDIVPD);
> > +}
> > +
> > +static int rp1_pll_core_on(struct clk_hw *hw)
> > +{
> > +	struct rp1_clk_desc *pll_core = container_of(hw, struct rp1_clk_desc, hw);
> > +	struct rp1_clockman *clockman = pll_core->clockman;
> > +	const struct rp1_pll_core_data *data = pll_core->data;
> > +
> ditto

Ack.

> > +	u32 fbdiv_frac, val;
> > +	int ret;
> > +
> > +	spin_lock(&clockman->regs_lock);

...

> > +static int rp1_pll_ph_on(struct clk_hw *hw)
> > +{
> > +	struct rp1_clk_desc *pll_ph = container_of(hw, struct rp1_clk_desc, hw);
> > +	struct rp1_clockman *clockman = pll_ph->clockman;
> > +	const struct rp1_pll_ph_data *data = pll_ph->data;
> > +	u32 ph_reg;
> > +
> > +	/* TODO: ensure pri/sec is enabled! */
> Please extend this TODO. Primary/secondary of what

I think the orginal comment is misleading. It seems to be related
to the fact that phase shifted clocks should have their parent enabled
before setting them up. Pri here shuold be the only phased clock, while
Sec is not and depends directly on a core clock, so I'll change that
comment entirely.

> > +	spin_lock(&clockman->regs_lock);
> > +	ph_reg = clockman_read(clockman, data->ph_reg);
> > +	ph_reg |= data->phase << PLL_PH_PHASE_SHIFT;
> > +	ph_reg |= PLL_PH_EN;
> > +	clockman_write(clockman, data->ph_reg, ph_reg);
> > +	spin_unlock(&clockman->regs_lock);
> > +
> > +	return 0;
> > +}

...

> > +static unsigned long rp1_clock_recalc_rate(struct clk_hw *hw,
> > +					   unsigned long parent_rate)
> > +{
> > +	struct rp1_clk_desc *clock = container_of(hw, struct rp1_clk_desc, hw);
> > +	struct rp1_clockman *clockman = clock->clockman;
> > +	const struct rp1_clock_data *data = clock->data;
> > +	u64 calc_rate;
> > +	u64 div;
> > +
> Please drop empty line

Ack.

> > +	u32 frac;
> > +
> > +	div = clockman_read(clockman, data->div_int_reg);
> > +	frac = (data->div_frac_reg != 0) ?
> > +		clockman_read(clockman, data->div_frac_reg) : 0;
> > +
> > +	/* If the integer portion of the divider is 0, treat it as 2^16 */
> > +	if (!div)
> > +		div = 1 << 16;
> > +
> > +	div = (div << CLK_DIV_FRAC_BITS) | (frac >> (32 - CLK_DIV_FRAC_BITS));
> > +
> > +	calc_rate = (u64)parent_rate << CLK_DIV_FRAC_BITS;
> > +	calc_rate = div64_u64(calc_rate, div);
> > +
> > +	return calc_rate;
> > +}

...

> > +		ctrl |= (AUX_SEL << CLK_CTRL_SRC_SHIFT) & data->clk_src_mask;
> > +	} else {
> > +		ctrl &= ~data->clk_src_mask;
> > +		ctrl |= (index << CLK_CTRL_SRC_SHIFT) & data->clk_src_mask;
> > +	}
> > +
> > +	clockman_write(clockman, data->ctrl_reg, ctrl);
> > +	spin_unlock(&clockman->regs_lock);
> > +
> > +	sel = rp1_clock_get_parent(hw);
> > +	WARN(sel != index, "(%s): Parent index req %u returned back %u\n",
> > +	     clk_hw_get_name(hw), index, sel);
> I don't think such an important clock callback should emit WARN(),
> because this might cause a message flood.
> 
> So i think either a WARN_ONCE() or dev_warn_once() might be better.

Ack.

> > +
> > +	return 0;
> > +}
> > +
> > +static int rp1_clock_set_rate_and_parent(struct clk_hw *hw,
> > +					 unsigned long rate,
> > +					 unsigned long parent_rate,
> > +					 u8 parent)
> > +{
> > +	struct rp1_clk_desc *clock = container_of(hw, struct rp1_clk_desc, hw);
> > +	struct rp1_clockman *clockman = clock->clockman;
> > +	const struct rp1_clock_data *data = clock->data;
> > +	u32 div = rp1_clock_choose_div(rate, parent_rate, data);
> > +
> > +	WARN(rate > 4000000000ll, "rate is -ve (%d)\n", (int)rate);
> This looks suspicious. Is this is a limit? Except of this, casting to
> int is wrong.

I think that's not an hard limit, the original intent was probably
to filter some clock rates resulting from functions that can return
a (negative) error code.
Since clock->data->max_freq contains the maximum frequency achievable,
I'll turn that WARN into a proper one that check for that limit.

> 
> In case this is not possible please make it a WARN_ONCE() or dev_warn_once()
> > +
> > +	if (WARN(!div,
> > +		 "clk divider calculated as 0! (%s, rate %ld, parent rate %ld)\n",
> > +		 clk_hw_get_name(hw), rate, parent_rate))
> > +		div = 1 << CLK_DIV_FRAC_BITS;
> Same here

Ack.

Many thanks,
Andrea

> > +
> > +	spin_lock(&clockman->regs_lock);
> > +
> > +	clockman_write(clockman, data->div_int_reg, div >> CLK_DIV_FRAC_BITS);
> > +	if (data->div_frac_reg)
> > +		clockman_write(clockman, data->div_frac_reg, div << (32 - CLK_DIV_FRAC_BITS));
> > +
> > +	spin_unlock(&clockman->regs_lock);
> > +
> > +	if (parent != 0xff)
> > +		rp1_clock_set_parent(hw, parent);
> > +
> > +	return 0;
> > +}
> > +
> > 

