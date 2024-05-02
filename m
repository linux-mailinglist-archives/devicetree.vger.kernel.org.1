Return-Path: <devicetree+bounces-64583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6388F8B9E14
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 18:02:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 77E39B2473E
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 16:02:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B74115E1E9;
	Thu,  2 May 2024 16:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ul3r1jd2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03BB415AAB8;
	Thu,  2 May 2024 16:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714665742; cv=none; b=HBRu5wfIFYXHoSam9CU+3YTyKFYtxerOTZGUjq2CngF3tPDGBSIb55lyBbFUEXbnMf+EPzAwE0DKAqW0qvtBHExGCzlDKPP+YYhSF9UpeaRj4HyJdOSRIke03F1y5onAhBJD3wTp5X1YNvvCoAwuunr1Z9jDcPSfAdC5NxlhozY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714665742; c=relaxed/simple;
	bh=ev7mc20lWUMUIosgZeG3aGc56E+eLpNmk0BooYVv7Hs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VzH+kIOssYBgIS/g7FTh5Z+29CqmHSM04jSjMmVep1gwXwsoRB5einpY4hntoS1quqrx1pbLxhuP90iWgVtjnKnQ3ETb5+rZQsyEV9Xh90tj+fI8UFW9IzI2alU92fZF7949mvqBzoLPW++FSRusFOkgJtf75GLItEfSvQwuu4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ul3r1jd2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 472D4C113CC;
	Thu,  2 May 2024 16:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714665741;
	bh=ev7mc20lWUMUIosgZeG3aGc56E+eLpNmk0BooYVv7Hs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ul3r1jd2mrPVrS7kJ0eA4oCXt81kZ/bQgCYCrADu4PcSM/+Z1B6fHAYovmH7W/gyG
	 E5FuvPNt1cAIkJStGSswJuh3yUb0ERZ6U2iWVSNDoo8Yo6gRKXNmA/Is/w6cIBSHCD
	 C6E2BkevcfOjlCBrYN0KY3QiFnCU5RsLSVcYHyS+dZH+0hfzQCLQidiFQYEhu2Frpc
	 le/IP+UqSM66Q+wU0yytPPEfPoeGbzF5qlrrLVrU+ry26uWls/AZxF1/8k5u6bB61D
	 /tbcqRbwlvjGO38iAtCzvV4lP8QHjXBFhxfOqQO/dW4tNQPeAsXdv+1Iw2DKzgXYKU
	 p5GbLQISVVD5A==
Date: Thu, 2 May 2024 17:02:06 +0100
From: Lee Jones <lee@kernel.org>
To: Yoshinori Sato <ysato@users.sourceforge.jp>
Cc: linux-sh@vger.kernel.org, Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Rich Felker <dalias@libc.org>,
	John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
	Helge Deller <deller@gmx.de>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Shawn Guo <shawnguo@kernel.org>, Sebastian Reichel <sre@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Arnd Bergmann <arnd@arndb.de>, David Rientjes <rientjes@google.com>,
	Hyeonggon Yoo <42.hyeyoo@gmail.com>,
	Vlastimil Babka <vbabka@suse.cz>, Baoquan He <bhe@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Kefeng Wang <wangkefeng.wang@huawei.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Guo Ren <guoren@kernel.org>, Azeem Shaikh <azeemshaikh38@gmail.com>,
	Max Filippov <jcmvbkbc@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Manikanta Guntupalli <manikanta.guntupalli@amd.com>,
	Anup Patel <apatel@ventanamicro.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	Sam Ravnborg <sam@ravnborg.org>,
	Sergey Shtylyov <s.shtylyov@omp.ru>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	linux-ide@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-pci@vger.kernel.org, linux-serial@vger.kernel.org,
	linux-fbdev@vger.kernel.org
Subject: Re: [RESEND v7 24/37] mfd: sm501: Convert platform_data to OF
 property
Message-ID: <20240502160206.GV5338@google.com>
References: <cover.1712207606.git.ysato@users.sourceforge.jp>
 <814758bd6df0d66dca52a2c207405e0049445c80.1712207606.git.ysato@users.sourceforge.jp>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <814758bd6df0d66dca52a2c207405e0049445c80.1712207606.git.ysato@users.sourceforge.jp>

On Thu, 04 Apr 2024, Yoshinori Sato wrote:

> Various parameters of SM501 can be set using platform_data,
> so parameters cannot be passed in the DeviceTree target.
> Expands the parameters set in platform_data so that they can be
> specified using DeviceTree properties.
> 
> Signed-off-by: Yoshinori Sato <ysato@users.sourceforge.jp>
> ---
>  drivers/mfd/sm501.c           | 315 ++++++++++++++++++++++++++++++++++
>  drivers/video/fbdev/sm501fb.c | 106 ++++++++++++
>  2 files changed, 421 insertions(+)

I don't know exactly what this is, but I do know that I don't like it.

If you manage to get it through another maintainer, more power to you,
but it is not suitable for MFD.

> diff --git a/drivers/mfd/sm501.c b/drivers/mfd/sm501.c
> index b3592982a83b..98a69e254f5f 100644
> --- a/drivers/mfd/sm501.c
> +++ b/drivers/mfd/sm501.c
> @@ -82,6 +82,16 @@ struct sm501_devdata {
>  	unsigned int			 rev;
>  };
>  
> +struct sm501_config_props_uint {
> +	char *name;
> +	u32 shift;
> +};
> +
> +struct sm501_config_props_flag {
> +	char *clr_name;
> +	char *set_name;
> +	u32 bit;
> +};
>  
>  #define MHZ (1000 * 1000)
>  
> @@ -1370,6 +1380,305 @@ static int sm501_init_dev(struct sm501_devdata *sm)
>  	return 0;
>  }
>  
> +static const struct sm501_config_props_uint misc_timing[] = {
> +	{"delay",    0},
> +	{"-",        3},
> +	{"divider",  4},
> +	{"-",        6},
> +	{"sm0",      8},
> +	{"-",       12},
> +	{"sm1",     16},
> +	{"-",       20},
> +	{"xc",      24},
> +	{"-",       26},
> +	{"ex",      28},
> +	{NULL,      32},
> +};
> +
> +static const struct sm501_config_props_flag misc_timing_flag[] = {
> +	{"usb-host-normal",          "usb-host-simulation",    3},
> +	{"no-acpi-control",          "acpi-control",           6},
> +	{"pll-debug-input",          "pll-debug-output",       7},
> +	{"sdram-clock-mode0-288mhz", "sdram-clock-mode0-div", 12},
> +	{"sdram-clock-mode1-288mhz", "sdram-clock-mode1-div", 20},
> +	{"usb-over-current-detect-disable",
> +	 "usb-over-current-detect-enable",  23},
> +	{},
> +};
> +
> +static const struct sm501_config_props_uint misc_control[] = {
> +	{"hold",     18},
> +	{"refresh",  21},
> +	{"-",        23},
> +	{"usbclk",   28},
> +	{"pad",      30},
> +	{NULL,       32},
> +};
> +
> +static const struct sm501_config_props_flag misc_control_flag[] = {
> +	{"vr-mmio-30mb",            "vr-mmio-62mb",             4},
> +	{"usb-port-master",         "usb-port-slave",           9},
> +	{"burst-length-8",          "burst-length-1",          10},
> +	{"usb-slave-cpu",           "usb-slave-8051",          11},
> +	{"dac-power-enable",        "dac-power-disable",       12},
> +	{"pll-clock-count-disable", "pll-clock-count-enable",  15},
> +	{"interrupt-normal",        "interrupt-invarted",      16},
> +	{"sh-ready-low",            "sh-ready-high",           17},
> +	{"xtal-freq-24mhz",         "xtal-freq-12mhz",         24},
> +	{"panel-data-18bit",        "panel-dtat-24bit",        25},
> +	{"latch-address-disable",   "latch-address-enable",    26},
> +	{"uart1",                   "ssp1",                    27},
> +	{},
> +};
> +
> +/* Read configuration values */
> +static void sm501_of_read_config(struct device *dev, struct device_node *np,
> +				 const char *prefix,
> +				 const struct sm501_config_props_uint *props,
> +				 const struct sm501_config_props_flag *props_flag,
> +				 struct sm501_reg_init *ret)
> +{
> +	struct device_node *child;
> +	char *name;
> +	u32 shift;
> +	u32 width;
> +	u32 mask;
> +	u32 val;
> +
> +	ret->mask = ~0;
> +	ret->set = 0;
> +
> +	child = of_get_child_by_name(np, prefix);
> +	if (!child)
> +		return;
> +
> +	while (props->name) {
> +		name = props->name;
> +		shift = props->shift;
> +		props++;
> +
> +		if (name[0] == '-' ||
> +		    of_property_read_u32(child, name, &val))
> +			continue;
> +
> +		width = props->shift - shift;
> +		mask = (1 << width) - 1;
> +		if (mask < val) {
> +			dev_warn(dev, "%s invalid value %d", name, val);
> +			continue;
> +		}
> +		mask = ~(mask << shift);
> +		ret->mask &= mask;
> +		ret->set |= val << shift;
> +	}
> +	while (props_flag->clr_name) {
> +		val = ~0;
> +		if (of_property_read_bool(child, props_flag->clr_name))
> +			val = 0;
> +		else if (of_property_read_bool(child, props_flag->set_name))
> +			val = 1;
> +		if (val != ~0) {
> +			val <<= (props_flag->bit & 31);
> +			mask = 1 << (props_flag->bit & 31);
> +			ret->mask &= ~mask;
> +			ret->set |= val;
> +		}
> +		props_flag++;
> +	}
> +}
> +
> +/* Read GPIO control */
> +/*
> + * DT example.
> + * gpio-pin-control {
> + *   pin@0 {
> + *	 gpio-port;
> + *   };
> + *   pin@1 {
> + *	 function;
> + *   };
> + * };
> + */
> +static void sm501_of_read_gpio(struct device *dev, struct device_node *np,
> +			       struct sm501_reg_init *hi, struct sm501_reg_init *low)
> +{
> +	struct device_node *gpio_group, *pin;
> +	const char *prop_mode;
> +	unsigned int pin_no;
> +	int mode;
> +	u64 mask;
> +	u64 set;
> +
> +	mask = ~0;
> +	set = 0;
> +	gpio_group = of_get_child_by_name(np, "gpio-pin-control");
> +	if (gpio_group) {
> +		for_each_child_of_node(gpio_group, pin) {
> +			mode = -1;
> +			if (sscanf(pin->full_name, "pin@%u", &pin_no) == 1) {
> +				if (of_property_read_bool(pin, "gpio-port"))
> +					mode = 0;
> +				else if (of_property_read_bool(pin, "function"))
> +					mode = 1;
> +			}
> +			/* GPIO0 - 47 and 55 -63 */
> +			if (mode < 0 ||
> +			    (pin_no >= 64 || (pin_no >= 48 && pin_no <= 54))) {
> +				dev_warn(dev,
> +					 "%s mode %s is invalid.", pin->name, prop_mode);
> +			} else {
> +				mask &= ~(1 << pin_no);
> +				set |= mode << pin_no;
> +			}
> +		}
> +	}
> +	hi->set = set >> 32;
> +	low->set = set & 0xffffffff;
> +	hi->mask = mask >> 32;
> +	low->mask = mask & 0xffffffff;
> +}
> +
> +static inline int read_i2c_prop(struct device *dev, struct device_node *child,
> +				const char *name, u32 *val)
> +{
> +	if (of_property_read_u32(child, name, val)) {
> +		dev_warn(dev, "%s/%s not found. skip it.", of_node_full_name(child), name);
> +		return -ENOENT;
> +	}
> +	return 0;
> +}
> +
> +/* Read GPIO I2C configuration */
> +/*
> + * DT example.
> + * gpio-i2c {
> + *    i2c@0 {
> + *	sda = <gpio-pin>;
> + *	scl = <gpio-pin>;
> + *	delay = <delay>;
> + *	timeout = <timeout>;
> + *    };
> + *    i2c@1 {
> + *      :
> + *    };
> + *    :
> + * };
> + */
> +static int sm501_parse_dt_gpio_i2c(struct device *dev, struct sm501_platdata *plat,
> +				   struct device_node *np)
> +{
> +	struct device_node *i2c_group, *child;
> +	unsigned int i;
> +	u32 i2c_nr;
> +	int err;
> +
> +	i2c_group = of_get_child_by_name(np, "gpio-i2c");
> +	if (!i2c_group)
> +		return 0;
> +
> +	i2c_nr = of_get_child_count(i2c_group);
> +	plat->gpio_i2c = devm_kzalloc(dev, sizeof(*plat->gpio_i2c) * i2c_nr,
> +				      GFP_KERNEL);
> +	if (!plat->gpio_i2c)
> +		return -ENOMEM;
> +
> +	plat->gpio_i2c_nr = i2c_nr;
> +	i = 0;
> +	for_each_child_of_node(i2c_group, child) {
> +		u32 bus;
> +
> +		if (sscanf(child->full_name, "i2c@%u", &bus) != 1) {
> +			dev_warn(dev, "Unknown address %s\n", child->name);
> +			continue;
> +		}
> +
> +		err = 0;
> +		plat->gpio_i2c[i].bus_num = bus;
> +		err += read_i2c_prop(dev, child, "sda", &plat->gpio_i2c[i].pin_sda);
> +		err += read_i2c_prop(dev, child, "scl", &plat->gpio_i2c[i].pin_scl);
> +		err += read_i2c_prop(dev, child, "delay", &plat->gpio_i2c[i].udelay);
> +		err += read_i2c_prop(dev, child, "timeout", &plat->gpio_i2c[i].timeout);
> +		if (err == 0)
> +			i++;
> +	}
> +
> +	return 0;
> +}
> +
> +/* Read device functions */
> +static u32 sm501_read_devices(struct device *dev, struct device_node *np)
> +{
> +	static const char * const funcname[] = {
> +		"usb-host", "usb-slave", "ssp0", "ssp1",
> +		"uart0", "uart1", "fbaccel", "ac97",
> +		"i2s", "gpio",
> +	};
> +	struct property *prop;
> +	unsigned int i;
> +	const char *s;
> +	u32 ret = 0;
> +
> +	of_property_for_each_string(np, "smi,devices", prop, s) {
> +		for (i = 0; i < ARRAY_SIZE(funcname); i++) {
> +			if (strcmp(s, funcname[i]) == 0) {
> +				ret |= 1 << i;
> +				goto next;
> +			}
> +		}
> +		dev_warn(dev, "Unknown device function '%s'", s);
> +next:
> +	}
> +	if (!ret)
> +		dev_warn(dev, "devices not defined. disable all functions.");
> +	return ret;
> +}
> +
> +/* Build platform_data from OF property */
> +struct plat_dt {
> +	struct sm501_platdata plat;
> +	struct sm501_initdata init;
> +};
> +
> +static int sm501_parse_dt(struct sm501_devdata *sm, struct device_node *np)
> +{
> +	struct sm501_platdata *plat;
> +	struct plat_dt *dt_p;
> +	u32 word;
> +	int ret;
> +
> +	dt_p = devm_kzalloc(sm->dev, sizeof(*dt_p), GFP_KERNEL);
> +	if (!dt_p)
> +		return -ENOMEM;
> +
> +	plat = &dt_p->plat;
> +	plat->init = &dt_p->init;
> +
> +	plat->init->devices = sm501_read_devices(sm->dev, np);
> +	/* mclk and m1xclk are not u32, so convert between them using intermediate variables. */
> +	of_property_read_u32(np, "smi,mclk", &word);
> +	plat->init->mclk = word;
> +	of_property_read_u32(np, "smi,m1xclk", &word);
> +	plat->init->m1xclk = word;
> +
> +	sm501_of_read_config(sm->dev, np, "misc-timing",
> +			     misc_timing, misc_timing_flag,
> +			     &plat->init->misc_timing);
> +	sm501_of_read_config(sm->dev, np, "misc-control",
> +			     misc_control, misc_control_flag,
> +			     &plat->init->misc_control);
> +	sm501_of_read_gpio(sm->dev, np,
> +			   &plat->init->gpio_high, &plat->init->gpio_low);
> +
> +	if (IS_ENABLED(CONFIG_MFD_SM501_GPIO) &&
> +	    (plat->init->devices & SM501_USE_GPIO)) {
> +		ret = sm501_parse_dt_gpio_i2c(sm->dev, plat, np);
> +		if (ret)
> +			return ret;
> +	}
> +	sm->platdata = plat;
> +	return 0;
> +}
> +
>  static int sm501_plat_probe(struct platform_device *dev)
>  {
>  	struct sm501_devdata *sm;
> @@ -1406,6 +1715,12 @@ static int sm501_plat_probe(struct platform_device *dev)
>  		goto err_res;
>  	}
>  
> +	if (IS_ENABLED(CONFIG_OF) && dev->dev.of_node) {
> +		ret = sm501_parse_dt(sm, dev->dev.of_node);
> +		if (ret)
> +			goto err_res;
> +	}
> +
>  	platform_set_drvdata(dev, sm);
>  
>  	sm->regs = ioremap(sm->io_res->start, resource_size(sm->io_res));
> diff --git a/drivers/video/fbdev/sm501fb.c b/drivers/video/fbdev/sm501fb.c
> index d6fdc1737cd2..5de00f2570aa 100644
> --- a/drivers/video/fbdev/sm501fb.c
> +++ b/drivers/video/fbdev/sm501fb.c
> @@ -1932,6 +1932,106 @@ static int sm501fb_start_one(struct sm501fb_info *info,
>  	return 0;
>  }
>  
> +#if defined(CONFIG_OF)
> +static u32 read_display_flags(struct device_node *np)
> +{
> +	static const char * const name[] = {
> +		"use-init-done", "disable-at-exit", "use-hwcursor", "use-hwaccel",
> +		"panel-no-fpen", "panel-no-vbiasen", "panel-inv-fpen", "panel-inv-vbiasen",
> +	};
> +
> +	struct property *prop;
> +	unsigned int i;
> +	const char *s;
> +	u32 ret = 0;
> +
> +	of_property_for_each_string(np, "smi,flags", prop, s) {
> +		for (i = 0; i < ARRAY_SIZE(name); i++) {
> +			if (strcmp(s, name[i]) == 0) {
> +				ret |= 1 << i;
> +				break;
> +			}
> +		}
> +	}
> +	return ret;
> +}
> +
> +/* parse CRT / panel configuration */
> +static struct sm501_platdata_fbsub *dt_fbsub(struct device *dev,
> +					     struct device_node *np,
> +					     const char *name)
> +{
> +	struct sm501_platdata_fbsub *fbsub = NULL;
> +	struct fb_videomode *def_mode = NULL;
> +	struct device_node *child;
> +	const void *p_edid;
> +	u32 flags = 0;
> +	u32 bpp = 0;
> +	int len;
> +
> +	child = of_get_child_by_name(np, name);
> +	if (child == NULL)
> +		return NULL;
> +
> +	p_edid = of_get_property(child, "edid", &len);
> +	if (p_edid && len == EDID_LENGTH) {
> +		struct fb_monspecs *specs;
> +		u8 *edid;
> +
> +		edid = kmemdup(p_edid, EDID_LENGTH, GFP_KERNEL);
> +		if (edid) {
> +			specs = kzalloc(sizeof(*specs), GFP_KERNEL);
> +			if (specs) {
> +				fb_edid_to_monspecs(edid, specs);
> +				def_mode = specs->modedb;
> +			}
> +		}
> +		kfree(edid);
> +	}
> +
> +	of_property_read_u32(child, "bpp", &bpp);
> +
> +	/* If flags property is obtained, fbsub is returned. */
> +	flags = read_display_flags(child);
> +	if (flags) {
> +		fbsub = devm_kzalloc(dev, sizeof(*fbsub), GFP_KERNEL);
> +		if (fbsub) {
> +			fbsub->def_mode = def_mode;
> +			fbsub->def_bpp = bpp;
> +			fbsub->flags = flags;
> +		}
> +	}
> +	return fbsub;
> +}
> +
> +/* Build platform_data from OF property */
> +static struct sm501_platdata_fb *pdata_from_dt(struct device *dev, struct device_node *np)
> +{
> +	enum sm501_fb_routing fb_route = SM501_FB_OWN;
> +	struct sm501_platdata_fb *pdata = NULL;
> +	struct sm501_platdata_fbsub *fb_crt;
> +	struct sm501_platdata_fbsub *fb_pnl;
> +	unsigned int flags = 0;
> +
> +	if (of_property_read_bool(np, "route-crt-panel"))
> +		fb_route = SM501_FB_CRT_PANEL;
> +	if (of_property_read_bool(np, "swap-fb-endian"))
> +		flags = SM501_FBPD_SWAP_FB_ENDIAN;
> +	fb_crt = dt_fbsub(dev, np, "crt");
> +	fb_pnl = dt_fbsub(dev, np, "panel");
> +	if (fb_crt || fb_pnl) {
> +		pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
> +		if (pdata) {
> +			pdata->fb_route = fb_route;
> +			pdata->flags = flags;
> +			pdata->fb_crt = fb_crt;
> +			pdata->fb_pnl = fb_pnl;
> +		}
> +	}
> +	return pdata;
> +}
> +#endif
> +
>  static int sm501fb_probe(struct platform_device *pdev)
>  {
>  	struct sm501fb_info *info;
> @@ -1974,6 +2074,12 @@ static int sm501fb_probe(struct platform_device *pdev)
>  				if (info->edid_data)
>  					found = 1;
>  			}
> +			/* Get platform data compatible configuration */
> +			if (!found) {
> +				info->pdata = pdata_from_dt(dev, np);
> +				if (info->pdata)
> +					found = 1;
> +			}
>  		}
>  #endif
>  		if (!found) {
> -- 
> 2.39.2
> 

-- 
Lee Jones [李琼斯]

