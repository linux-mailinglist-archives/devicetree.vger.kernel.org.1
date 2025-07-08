Return-Path: <devicetree+bounces-194010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDE5AFC768
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 11:50:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 419D53B4C29
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 09:50:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A9B3266B67;
	Tue,  8 Jul 2025 09:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FTm54VJu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FD7266581
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 09:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751968236; cv=none; b=SCka9o2oWbNtsl1W+eiio2FM6ZG3lR7IrBhOiKHs2ekplAc2S4aB4PsTRqury2P8nCFwFhxrRK3CwIjx9i2PQ7MNcTZaDzt7pt3JezOSrKI9sWYUeKNtjy4+7GjteHQ5g2YS9WTjZZKv1iFhretRyUc13jm4PdSsD/XWKu/E8GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751968236; c=relaxed/simple;
	bh=t89Yf7+DerPlaKJU1hIyceP0lU68DrU0bFoPmD6e0bg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AjWIYVF6mnp2ZqF8AQueOpEGFdKhJoXujF5D2BdzaIdOMprGxH4WyeoezFX7QViOdWzfnc3x16Gl6YkKj9hOxBGfLqkDh/IYERndl/jmVHRVCQ1LqqewzBiGHS3KcObX8iprPrU83BMrnbam0x3Ew5QfEOIeb+r1T92ASf2PKG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FTm54VJu; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3a575a988f9so2579245f8f.0
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 02:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751968232; x=1752573032; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pSJ4xbdE5FzpQMbGAihlry1r8QLUQSOrBPNupb4bNqM=;
        b=FTm54VJuSiQiNbzwd3kzxy8AOLOtSCDQbWAHHrBtaIiUche2GQIjGBHsb+ABIaZcnN
         eAdqxtgY5t/q+QAY4OrrvjR7kneuAg7l89nNg+T1iIWMaWd3XTa48oMFj4UUQIyg8bKT
         wWAVsMJSWtQhNDhdxI/EBIQXLTHQpsNMuuf+FpaBBNwxQd53uun18DvuMG035eLi0ws1
         8WClX1vWWqrXkv2kYNSg7GqNcznB/DSxnzRrJWcWB4/ivqfv3rsfYhMFNYnK6oToJdpe
         VEb9+STRqOWvkaDhIVOD0npOo81PrsonMphPc0KQPkHlNlnZTRPSyZvSL0iGpBBTg2E2
         SfUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751968232; x=1752573032;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pSJ4xbdE5FzpQMbGAihlry1r8QLUQSOrBPNupb4bNqM=;
        b=MOETN7GtxXBqRrNu27HF3Xa+Qvp3SH1+wRnQxRxkG7zOMP5mzu4FM1ITDHfhF2GeQf
         e6n4VVw/BQ8e3citDRko0hkSy0FEqF5PcywFlWjwL8KsG8dEHdcf9HcJ1+aGqHufTJE0
         PhjLCqIA8JiboV1gFkMzHclXGpxZF8tAsupEmB85XFAkRWHXnuwMfTFrQbAr6kI70MkF
         IY49ffXGGwVgvO6/KhJsXk+JKlRgAAp9lDlqvMvYMbnSJvg5jUc1uFfv4wfXYHb2+wYG
         U6zcosYL6MtU1pTqE9rqkXnTehdnIWCNYiXYUCtf09iIcp3yMk1YTdfggxHvqU6UIm9y
         lJoA==
X-Forwarded-Encrypted: i=1; AJvYcCWOhwIPOPnoYsoH0arRgdeWhYB20rPKNSMFN6Z+bFqJGkoybRSMFFjr8ED8QdPdajgpQ/WvNhLiRwIg@vger.kernel.org
X-Gm-Message-State: AOJu0YyrW7uZt8qmgqopuCK23uIXJBilGCx9bxj2tbTjiMXY1XctP9ry
	SO4uMtivzaUtIbZIVsfB4qJiN5L64aww05iZcn0htj+Mu/yqPVICmGRCWRb8+uu8QvY=
X-Gm-Gg: ASbGnctMp6zqrPx4GNWEKOtWE3pR2esZxE+uMsNZaSb+Sp3xtRo081gt4VY4kJfJ6y6
	dKM2BmeCt/Y2CR47q3nt8MwCs42PXqM4USdWkENIlqaybAlo0CdNpmpLmcJmjQdOoKuMXy2LDmy
	Y+f7/TibkUPFUL+FXXvQ4S9vOmSOfHuoDKEmFNJeMwNC14KFfkxTTaoE7Pc3upr1kMxur7lqg4u
	eUla5Gmj+bAR6BjU3NlYWJ19btYTx1hZZIwg/OUvqVCi6G0xMopr5t5h69eFCj6eBwxTAwQwjnF
	AcKPOxu/fCUNioRRrr1ZzdFHATckGumF0ATq9cjClIdkE6jYqPxu0ieoxv/m729d25Nck2n/VMj
	IYxQ/RjeixD9gdv8GRJv0BF6GYjmEKFxMGew=
X-Google-Smtp-Source: AGHT+IHxZjUwhr7/XtNanwJKqQGkEPOWNVunJNfj6Cx7RTxPaIJicvhyp1mjjFMNb1tJ1wQb1OvA/Q==
X-Received: by 2002:a05:6000:2b03:b0:3b3:e3f6:4a9b with SMTP id ffacd0b85a97d-3b5ddedc46emr1157400f8f.41.1751968232398;
        Tue, 08 Jul 2025 02:50:32 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454cd38f092sm17559575e9.1.2025.07.08.02.50.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jul 2025 02:50:31 -0700 (PDT)
Date: Tue, 8 Jul 2025 11:50:29 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: William McVicker <willmcvicker@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org,
	Lorenzo Pieralisi <lorenzo.pieralisi@linaro.org>,
	Hans de Goede <hansg@kernel.org>,
	Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Rob Herring <robh@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	John Stultz <jstultz@google.com>, Stephen Boyd <sboyd@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Linux-Arch <linux-arch@vger.kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" <devicetree@vger.kernel.org>
Subject: Re: [PATCH RFC] timer: of: Create a platform_device before the
 framework is initialized
Message-ID: <aGzp5esx1SpR9aL5@mai.linaro.org>
References: <20250625085715.889837-1-daniel.lezcano@linaro.org>
 <aGMjfxIvbCkyR5rw@google.com>
 <27644998-b089-44ae-ae5f-95f4d7cbe756@app.fastmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <27644998-b089-44ae-ae5f-95f4d7cbe756@app.fastmail.com>

On Tue, Jul 01, 2025 at 09:52:45AM +0200, Arnd Bergmann wrote:
> On Tue, Jul 1, 2025, at 01:53, William McVicker wrote:
> >> @@ -1550,6 +1553,8 @@ typedef void (*of_init_fn_1)(struct device_node *);
> >>  		_OF_DECLARE(table, name, compat, fn, of_init_fn_1_ret)
> >>  #define OF_DECLARE_2(table, name, compat, fn) \
> >>  		_OF_DECLARE(table, name, compat, fn, of_init_fn_2)
> >> +#define OF_DECLARE_PDEV(table, name, compat, fn) \
> >> +		_OF_DECLARE(table, name, compat, fn, of_init_fn_pdev)
> >
> > To support auto-module loading you'll need to also define the
> > MODULE_DEVICE_TABLE() as part of TIMER_OF_DECLARE_PDEV().
> >
> > I haven't tested the patch yet, but aside from my comment above it LGTM.
> 
> The patch doesn't actually have a module_platform_driver_probe()
> yet either, so loading the module wouldn't actually do anything.
> 
> I feel that this RFC by itself a good step in the direction we want, 
> so Daniel should go ahead with prototyping the next two steps:
> adding the platform_driver registration into OF_DECLARE_PDEV,
> and converting a driver so it can be used either with the _OF_DECLARE()
> or the platform_driver case.

I'm questioning the relevance of adding the macro when the driver is
not compiled as a module.

The first step of this macro is to allow the existing init functions
to be converted to the same signature as the module probe functions in
order to share the same code and take benefit of the devm_ variants
function which will considerably reduce the code size of the drivers.

Then we have the following situations:

 1. The driver has to be loaded very early TIMER_OF_DECLARE_PDEV
 (MODULE=no) the function timer-probe() is used

 2. The driver is a module_platform_driver() and MODULE=no, then it is
 built as a builtin_platform_driver(), we do not care about having it
 loaded by timer-probe()

 3. The driver is a module_platform_driver() and MODULE=yes

If we do the change to have the TIMER_OF_DECLARE_PDEV() adding the
platform_driver registration when MODULE=yes but using timer-probe
when MODULE=no, we change the initialization and we will have issues
with timers needing resources like SCMI clocks and where the
mechanisms rely on EPROBE_DEFER.

IMO, module_platform_driver and timer_probe must be separated.

Let's assume the one possible future use case with the VF PIT. This
timer is only used on ARM but now it is also supported for the ARM64
s32g2. For the first platform we need it very early and in the second
case, we need it later because the architected timers are there.

We should endup with:

static const struct of_device_id pit_timer_of_match[] = {
	{ .compatible = "nxp,s32g2-pit", .data = &s32g2_data },
	{ .compatible = "nxp,s32g3-pit", .data = &s32g3_data },
	{ }
};
MODULE_DEVICE_TABLE(of, pit_timer_of_match);

static struct platform_driver nxp_pit_driver = {
	.driver = {
		.name = "nxp-pit",
		.of_match_table = pit_timer_of_match,
	},
	.probe = pit_timer_probe,
};
module_platform_driver(nxp_pit_driver);

TIMER_OF_DECLARE_PDEV(vf610, "fsl,vf610-pit", pit_timer_probe);

If we change the TIMER_OF_DECLARE_PDEV to a macro which relies on
timer_probe when MODULE=no, then the "nxp-pit" on the s32gX will fail
to initialize because of the SCMI clocks not ready and the routine
won't reprobe the function. This issue won't happen with
builtin_platform_driver

What about something like:

TIMER_OF_DECLARE_PLATFORM_DRIVER(__name, __driver) \
  TIMER_OF_DECLARE_PDEV(__name, __driver->probe); \
#ifdef MODULE
  module_platform_driver(__driver);
#endif

Then in the timer_probe() we browse the of_match_table compatibles and
if the probe function succeed then we do of_node_set_flag(np,
OF_POPULATED) which is supposed to prevent calling the probe function
later.

Thoughts ?

--

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

