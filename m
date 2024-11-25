Return-Path: <devicetree+bounces-124103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4FE9D7A20
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 03:37:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 89C67281BA9
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 02:37:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D56EC1426C;
	Mon, 25 Nov 2024 02:37:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ENhRfI9/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339EFD299
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 02:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732502273; cv=none; b=qXATtFcMEojr8eifi3LhWJYxXexICzy7BGE1CNpzzJ06tFa1oIPRoAb+ghgDEMacbftq4SyPB8Uovd0xhXgZ6Z0+gbcAZLZKze3zGyDPXJfjTrLTcOid5zonTgUy7KUG93n+SbugmEB4DQaS/p/Pu7X8GXs6XnVKvPwG2DhaGQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732502273; c=relaxed/simple;
	bh=9tiGFyKp+gS1DcqD0uodIYs8umrVB/Dsyzm3XpChnag=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DjVilmvHMd+j/uKgRt6hVcDHmOgOQ/rFMzNn5OeGJYr2bmTgx3HyUCHJCV+WShLhleN9Jf4gP0Y5yk1S9lc3oWYnXg+NPNN6z8gHNh/7sZJt8FsN808Q6G7MdkZ+bWt3AMDO7JgrFbEhF175JMSs8YsSBcwwI56alH5B8idOWFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ENhRfI9/; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-21207f0d949so36335065ad.2
        for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 18:37:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1732502271; x=1733107071; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=y0u1/OoM/RNQHUBRUDAxXFtPFt4LuoFQEWtaO7XIktk=;
        b=ENhRfI9/wB77c+Jp52jKbNR8ZSaY9oqf8COrn54+pjSO2c3M4b2u/Ft2J/We11sesK
         6M0K+4qkhqeMDumWwRsbSJxmNM1fMYNzqbS0pZNyPjcVooqkOPyh/ogkhQH5Ro2jfCa9
         VinW+kiCMp6be2cGO7cXwa2/xnudbufEYRlwY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732502271; x=1733107071;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y0u1/OoM/RNQHUBRUDAxXFtPFt4LuoFQEWtaO7XIktk=;
        b=b+nOx71zUVM+kCKK4hYc3sbcytg55toj0Kus34uHKc1HILT+sfBpjHYpSk7bK6EeYe
         Ty+TZHn0KSYjUMKfT+La6KmbtCuc0XgWuzX3Na9tkhOr7ull/xGnR+YSS6lRzU+Uj2Xp
         1BKDRWKuw9D21sQLQb43avMKg2dgrrEZbC094cZ6oogcGVLsbIHDbyPI/jXneabOaMcx
         /gHL7NjranLbUnB2f3mPRzeMpiLHaNIILOnqlvVTpuH7UDRMcDMD4Gg/81lq+X8yE3Ny
         Jtu+95ycnJu/V0bcPf1IYQUOkDq2Dn6VFlR2DyLSbd8bk0ubbhmLj3RTj/JMZe2XXzTz
         Fd5g==
X-Forwarded-Encrypted: i=1; AJvYcCUZXsD9h6i6fFxCInGDoor8E5DVKcYyaPUsdfzrfltksjpbXYcMUEcLu7McDploI9XxJ1NLQYzCLADZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxt2BSvc/YGOCG3iIvjgdJ7YQtF454kqfyDEqfwQN0du4ZBozaC
	SX1t2AQmDPqDJcwhOVVXDWMzSUbfSo1bFravAbhc1Ry0Jw3tplaHvrPYjMydiw==
X-Gm-Gg: ASbGncszHXuWPJXqL3pS5U083a9aEESsPTpl75RL96ir3xvUSUPhZBe5Tq+Bt0HF8uL
	JejUHBVIn29/AmnyKOVANaqOggVE2aQRLQLQTZXmzhFJXmWjcQiYkL0z5SWlFYPBpINbomeW/5D
	ds9PBpYdJiu2EWZ+FrJV+u8pkq96cVfwxxXUJ22D6053nCiCjlXABnp+IjKQeLNZvdy3Kx8Aodz
	fRrKXp17ze5iwmRumslrSzcfbRq7euBK4Zo+/kzj/mh
X-Google-Smtp-Source: AGHT+IG2QApqv5uddHiFATqmAvyBqQPNuJdmEo0aALLcjzhyJt956Q1cFSxbHFm2X0e8O9pW/H6aNg==
X-Received: by 2002:a17:902:e743:b0:212:9b1:e56b with SMTP id d9443c01a7336-2129f5e741bmr149162405ad.42.1732502271461;
        Sun, 24 Nov 2024 18:37:51 -0800 (PST)
Received: from google.com ([2401:fa00:1:10:66a3:d18f:544f:227a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2129db8c71bsm53433455ad.51.2024.11.24.18.37.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Nov 2024 18:37:51 -0800 (PST)
Date: Mon, 25 Nov 2024 10:37:47 +0800
From: "Sung-Chi, Li" <lschyi@chromium.org>
To: Thomas =?iso-8859-1?Q?Wei=DFschuh?= <thomas@t-8ch.de>
Cc: Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>,
	Sebastian Reichel <sre@kernel.org>, Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, chrome-platform@lists.linux.dev,
	linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] power: supply: cros_usbpd-charger: extend as a
 thermal of cooling device
Message-ID: <Z0Pi-_BUnf9OdcAM@google.com>
References: <20241122-extend_power_limit-v1-0-a3ecd87afa76@chromium.org>
 <20241122-extend_power_limit-v1-1-a3ecd87afa76@chromium.org>
 <f805c0d8-a7f7-4e03-8d8c-0c13baa02ac4@t-8ch.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f805c0d8-a7f7-4e03-8d8c-0c13baa02ac4@t-8ch.de>

On Fri, Nov 22, 2024 at 11:21:18AM +0100, Thomas Wei�schuh wrote:
> On 2024-11-22 11:47:21+0800, Sung-Chi Li wrote:
> > 
> > diff --git a/drivers/power/supply/cros_usbpd-charger.c b/drivers/power/supply/cros_usbpd-charger.c
> > index 47d3f58aa15c..a0451630cdd7 100644
> > --- a/drivers/power/supply/cros_usbpd-charger.c
> > +++ b/drivers/power/supply/cros_usbpd-charger.c
> > @@ -13,6 +13,9 @@
> >  #include <linux/platform_device.h>
> >  #include <linux/power_supply.h>
> >  #include <linux/slab.h>
> > +#ifdef CONFIG_THERMAL_OF
> 
> Remove this ifdef. The header is perfectly usable in any case.
> 
> Actually the CONFIG_THERMAL_OF dependency is not needed at all.
> It is only necessary for devm_thermal_of_zone_register() but not 
> devm_thermal_of_cooling_device_register() which you are using.
> I am confused.
> 
> OTOH you are adding the #cooling-cells OF property which itself seems to
> be only used by devm_thermal_of_zone_register(), so I'm now even more
> confused.
> 
> In general, try to also test the driver configurations
> !CONFIG_THERMAL_OF and !CONFIG_THERMAL.
> 

Thank you, I removed the ifdef. Yes, it is confusing that
devm_thermal_of_cooling_device_register() does not depend on CONFIG_THERMAL_OF.
You can supply NULL to the device_node to
devm_thermal_of_cooling_device_register(), and if you are going the OF route,
you then fail at devm_thermal_of_zone_register(), because that call requires the
supplied device_node to have property '#cooling-cells'.

I would like to split the handling on thermal side to OF route and non-OF route,
so I would use CONFIG_THERMAL_OF to decide which route to go.

> > +#include <linux/thermal.h>
> > +#endif /* CONFIG_THERMAL_OF */
> >  
> >  #define CHARGER_USBPD_DIR_NAME			"CROS_USBPD_CHARGER%d"
> >  #define CHARGER_DEDICATED_DIR_NAME		"CROS_DEDICATED_CHARGER"
> > @@ -22,6 +25,7 @@
> >  					 sizeof(CHARGER_DEDICATED_DIR_NAME))
> >  #define CHARGER_CACHE_UPDATE_DELAY		msecs_to_jiffies(500)
> >  #define CHARGER_MANUFACTURER_MODEL_LENGTH	32
> > +#define CHARGER_COOLING_INTERVALS		10
> >  
> >  #define DRV_NAME "cros-usbpd-charger"
> >  
> > @@ -76,6 +80,8 @@ static enum power_supply_property cros_usbpd_dedicated_charger_props[] = {
> >  /* Input voltage/current limit in mV/mA. Default to none. */
> >  static u16 input_voltage_limit = EC_POWER_LIMIT_NONE;
> >  static u16 input_current_limit = EC_POWER_LIMIT_NONE;
> > +/* Cooling level interns of current limit */
> > +static u16 input_current_cooling_level;
> >  
> >  static bool cros_usbpd_charger_port_is_dedicated(struct port_data *port)
> >  {
> > @@ -459,13 +465,20 @@ static int cros_usbpd_charger_set_prop(struct power_supply *psy,
s ap> >  			break;
> >  
> >  		input_current_limit = intval;
> > -		if (input_current_limit == EC_POWER_LIMIT_NONE)
> > +		if (input_current_limit == EC_POWER_LIMIT_NONE) {
> >  			dev_info(dev,
> >  			  "External Current Limit cleared for all ports\n");
> > -		else
> > -			dev_info(dev,
> > -			  "External Current Limit set to %dmA for all ports\n",
> > -			  input_current_limit);
> > +			input_current_cooling_level = 0;
> > +		} else {
> > +			dev_info(
> > +				dev,
> > +				"External Current Limit set to %dmA for all ports\n",
> > +				input_current_limit);
> > +			input_current_cooling_level =
> > +				input_current_limit *
> > +				CHARGER_COOLING_INTERVALS /
> > +				port->psy_current_max;
> 
> This seems to be a very spammy driver...
> 

Hmm, I did not add extra logs, just that I add more actions in these branches
when the current limit is applied, so the clang format tool touches these lines.

I think I can revert the formatting changes, and maybe I can make these logs to
dev_dbg in a following commit.

> > +		}
> >  		break;
> >  	case POWER_SUPPLY_PROP_INPUT_VOLTAGE_LIMIT:
> >  		ret = cros_usbpd_charger_set_ext_power_limit(charger,
> > @@ -525,6 +538,66 @@ static void cros_usbpd_charger_unregister_notifier(void *data)
> >  	cros_usbpd_unregister_notify(&charger->notifier);
> >  }
> >  
> > +#ifdef CONFIG_THERMAL_OF
> > +static int
> > +cros_usbpd_charger_get_max_cooling_state(struct thermal_cooling_device *cdev,
> > +					 unsigned long *cooling_level)
> > +{
> > +	*cooling_level = CHARGER_COOLING_INTERVALS;
> > +	return 0;
> > +}
> > +
> > +static int
> > +cros_usbpd_charger_get_cur_cooling_state(struct thermal_cooling_device *cdev,
> > +					 unsigned long *cooling_level)
> > +{
> > +	*cooling_level = input_current_cooling_level;
> > +	return 0;
> > +}
> > +
> > +static int
> > +cros_usbpd_charger_set_cur_cooling_state(struct thermal_cooling_device *cdev,
> > +					 unsigned long cooling_level)
> > +{
> > +	struct charger_data *charger = cdev->devdata;
> > +	struct port_data *port;
> > +	int current_limit;
> > +	int idx = -1;
> > +	int ret;
> > +
> > +	for (int i = 0; i < charger->num_registered_psy; i++) {
> > +		port = charger->ports[i];
> > +		if (port->psy_status == POWER_SUPPLY_STATUS_CHARGING) {
> > +			idx = i;
> > +			break;
> > +		}
> > +	}
> 
> Why not register one cooling device per charger?
> It would make things more predictable.
> I have no experience with the thermal subsystem, so this is just a
> guess.
> 

The driver has only one power limiting instance, so I treat the whole EC as a
cooling device. This is also more convenient when crafting the thermal zone
settings. Maybe we can see how other reviewers think?

> > +	.get_max_state = cros_usbpd_charger_get_max_cooling_state,
> > +	.get_cur_state = cros_usbpd_charger_get_cur_cooling_state,
> > +	.set_cur_state = cros_usbpd_charger_set_cur_cooling_state,
> > +};
> > +#endif /* CONFIG_THERMAL_OF */
> > +
> >  static int cros_usbpd_charger_probe(struct platform_device *pd)
> >  {
> >  	struct cros_ec_dev *ec_dev = dev_get_drvdata(pd->dev.parent);
> > @@ -534,6 +607,9 @@ static int cros_usbpd_charger_probe(struct platform_device *pd)
> >  	struct charger_data *charger;
> >  	struct power_supply *psy;
> >  	struct port_data *port;
> > +#ifdef CONFIG_THERMAL_OF
> > +	struct thermal_cooling_device *cdev;
> > +#endif /* CONFIG_THERMAL_OF */
> >  	int ret = -EINVAL;
> >  	int i;
> >  
> > @@ -674,6 +750,18 @@ static int cros_usbpd_charger_probe(struct platform_device *pd)
> >  			goto fail;
> >  	}
> >  
> > +#ifdef CONFIG_THERMAL_OF
> 
> Avoid ifdef in .c files.
> Use if (IS_ENABLED(CONFIG_THERMAL_OF)) in the normal code flow.
> The compiler will optimize away all the unreachable code.
> 

Thank you, applied this approach when using CONFIG_THERMAL_OF.

> > +	cdev = devm_thermal_of_cooling_device_register(
> > +		dev, ec_device->dev->of_node, DRV_NAME, charger,
> > +		&cros_usbpd_charger_cooling_ops);
> > +	if (IS_ERR(cdev)) {
> > +		dev_err(dev,
> > +			"Failing register thermal cooling device (err:%pe)\n",
> > +			cdev);
> 
> dev_err_probe().
> 
> > +		goto fail;
> 
> Does the call to devm_thermal_of_cooling_device_register() work if there
> is no OF configuration?
> 
> > +	}
> > +#endif /* CONFIG_THERMAL_OF */
> > +
> >  	return 0;
> >  
> >  fail:
> > 
> > -- 
> > 2.47.0.371.ga323438b13-goog
> > 

As the thermal functionality is later added to extend this driver, I think you
are right, it would be better to make this behavior just make warnings, rather
than directly failing this driver probe. Will use dev_warn_probe, and do not
goto fail branch for registering it as a cooling device.

