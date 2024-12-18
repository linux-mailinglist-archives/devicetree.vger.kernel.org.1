Return-Path: <devicetree+bounces-132286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9D99F65E6
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 13:27:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5AF781880681
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 12:27:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2DFE1A23B5;
	Wed, 18 Dec 2024 12:27:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="VBYmtQJQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7918F19CC20
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 12:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734524866; cv=none; b=URFUkmxyWY2dPqFqA3vj4KGke6joGmqHtURfB68Xf/wULcLTKwv+b+fJH46nfyWuhhl/Be2JRJRI9ba5XudvZa16GB+aqo49fUVRqVvWTRlWBOOWtYtZV182SFzXSZZht5PzjWVxAuJos0bYvcu7/GyjmIrvZrDz45ic2q7her8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734524866; c=relaxed/simple;
	bh=DckKqKKp0TF0ejfLprKprBfby84Z1lMdE0wYm2Z4hLM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OZnf9l0BtHWxBTeZ7rw/tfCDDg40ecz+EWClohBBxMWJmWGDV063ssiE+cbvkl3whfywVYGXzf9xhfKglRmNuDvsX4xWXJCGlQDMq1tPUyVbn1VZiy9IGitiqR8TuXGEqZHqnTfRhWGnYHGMoolcgtC6OLbLjXB8GSfBB2DLPSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=VBYmtQJQ; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-436281c8a38so43213285e9.3
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 04:27:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1734524863; x=1735129663; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cIhOvlG3f0MrhGiGuks0+e7HWiAmYlFCv+0bC0cSdE0=;
        b=VBYmtQJQzHKCkrbtxJsEPLellZAKg6Drni4vCTEYVFVSSTlqg2tqE6NlY76Bl9ACRv
         0GgPLDk6EBJbNVGksGakZ+LTskBB4ivikjZ3bnxXzc4TuM3HaQnACO2H20+6I8mKy61l
         4kfouAaOiSC80cwtGmI8dX99fwZ/Echb27lmv/SqomU0EORCCrz+nlNv6a9Isz5WpVTK
         M3Eg1OWXfJGa7xX3vNYOGrZpmR6kUkHU98/Ugs9gbWSfZh2iQV/ds2rWMhhEUqn7e2qO
         OAb6Ytqcf6/qH7ec2Aj2dg6jFLpnSsELic4F51DWCLINvJxpDobR7d4tGFXYpAJmmZ/b
         BMXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734524863; x=1735129663;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cIhOvlG3f0MrhGiGuks0+e7HWiAmYlFCv+0bC0cSdE0=;
        b=p1PkffuD9aYEBWWMmo6t/rSUqRykt2oF2s4afb5DsY5G0Z87+QtYMffLXNs/qESlIb
         djgO2uwRYCLFRrlFzZgw7V4EcHJbMRIwxzdIghQCY1o6Lp/LuTVc/gUbPCVpseOxi5Bo
         sxIAG+D/YljxPch7234SMqECGJFKzHZQRL5pi6/WY+RedXzDTCRLnIqaYfY477WmF7Ml
         tYtZp5YFG0qgzYeF5Sw/G6oAdyyj0Em+4zxS7QfVl7CzJ2JBcj4HZfMuWhUFSoXkzmss
         UQE4KaU8EeSOsjhxuG1J6NZMza4E15E7wNCVCZd6XYil0iK1RXp+iSh7sZjqYJZTL/b5
         0Gcw==
X-Forwarded-Encrypted: i=1; AJvYcCU/qehzl+Z4FvqU9xt0pCi0ZJCGkXdu3v9ZKx23rIoH+US001XHbLGwNTJkMyPkCxeRwQDgi5xoSty9@vger.kernel.org
X-Gm-Message-State: AOJu0YywPjVNpJJuIJI8XFLi3lpBAtOtcHHd0C8GcBznAjf+fT3B8rdh
	H4a55k9jpRKTlUyao4ehQdypx1BH0ez+TxICicDHdjsBsZEmSWLTDY/7qkOVITMZSiyYh3FmlaP
	I
X-Gm-Gg: ASbGncthkTo6j5AGYqxtI4CPEH5LPAwPtJWy65MmcOHc0IiSnnLKqqIellwvQGbnxoC
	OT5OvLiVeJ8dy1kHaTWWMy2C4XWc7A2R98gkSBpQjhZQZDfUc1L3r+PO0AVexpH0QQcwy+DfXKw
	P0CxV+VjzL/F/VYJ7SCX4fmWMM7HHjjOmfzSY7RVJaekL1qLc6NbiXgDOM98TtOjotHzL6Jx2Or
	e38N1X3qfO/pirIxI+FEkA9ANN9ZjrhVErr3OQXjotV3i48RWAgQUYdug==
X-Google-Smtp-Source: AGHT+IEocBHt79Oo3qypc8W6vC7SL80cW4NXBnickBoH2uXVqJXpbrOgbtRvkL5/00XQoPdTFLxskQ==
X-Received: by 2002:a05:6000:1a8e:b0:385:f573:1f78 with SMTP id ffacd0b85a97d-388e4d6703cmr2276104f8f.24.1734524862655;
        Wed, 18 Dec 2024 04:27:42 -0800 (PST)
Received: from pathway.suse.cz ([176.114.240.50])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-388c806cc06sm13836594f8f.110.2024.12.18.04.27.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 04:27:41 -0800 (PST)
Date: Wed, 18 Dec 2024 13:27:39 +0100
From: Petr Mladek <pmladek@suse.com>
To: "Rob Herring (Arm)" <robh@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Cc: Steven Rostedt <rostedt@goodmis.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Sergey Senozhatsky <senozhatsky@chromium.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Saravana Kannan <saravanak@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	John Ogness <john.ogness@linutronix.de>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Zijun Hu <quic_zijuhu@quicinc.com>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: lock in vsprintf(): was: Re: [PATCH] of: Add printf '%pOFm' for
 generating modalias
Message-ID: <Z2K_u6jK5aLDqaam@pathway.suse.cz>
References: <20241217183711.2525863-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241217183711.2525863-1-robh@kernel.org>

Adding Linus and some other guys into Cc.

My concern is taking a lock when processing a printf format, see
below for more details.

On Tue 2024-12-17 12:37:09, Rob Herring (Arm) wrote:
> The callers for of_modalias() generally need the module alias as part of
> some larger string. That results in some error prone manipulation of the
> buffer prepend/append the module alias string. In fact,
> of_device_uevent_modalias() has several issues. First, it's off by one
> too few characters in utilization of the full buffer. Second, the error
> paths leave OF_MODALIAS with a truncated value when in the end nothing
> should be added to the buffer. It is also fragile because it needs
> internal details of struct kobj_uevent_env. add_uevent_var() really
> wants to write the env variable and value in one shot which would need
> either a temporary buffer for value or a format specifier.
> 
> Fix these issues by adding a new printf format specifier, "%pOFm". With
> the format specifier in place, simplify all the callers of
> of_modalias(). of_modalias() can also be simplified with vsprintf()
> being the only caller as it avoids the error conditions.
> 
> Cc: Zijun Hu <quic_zijuhu@quicinc.com>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  Documentation/core-api/printk-formats.rst |  1 +
>  drivers/of/device.c                       | 25 ++--------------
>  drivers/of/module.c                       | 35 +++++------------------
>  drivers/of/unittest.c                     |  2 ++
>  include/linux/of.h                        |  8 +++---
>  lib/vsprintf.c                            |  7 +++--
>  6 files changed, 22 insertions(+), 56 deletions(-)
> 
> diff --git a/Documentation/core-api/printk-formats.rst b/Documentation/core-api/printk-formats.rst
> index ecccc0473da9..d72fe3d8c427 100644
> --- a/Documentation/core-api/printk-formats.rst
> +++ b/Documentation/core-api/printk-formats.rst
> @@ -496,6 +496,7 @@ equivalent to %pOFf.
>  	- F - device node flags
>  	- c - major compatible string
>  	- C - full compatible string
> +	- m - module alias string
>  
>  The separator when using multiple arguments is ':'
>  
> diff --git a/drivers/of/device.c b/drivers/of/device.c
> index edf3be197265..ae8c47d5db8e 100644
> --- a/drivers/of/device.c
> +++ b/drivers/of/device.c
> @@ -256,24 +251,10 @@ EXPORT_SYMBOL_GPL(of_device_uevent);
>  
>  int of_device_uevent_modalias(const struct device *dev, struct kobj_uevent_env *env)
>  {
> -	int sl;
> -
>  	if ((!dev) || (!dev->of_node) || dev->of_node_reused)
>  		return -ENODEV;
>  
> -	/* Devicetree modalias is tricky, we add it in 2 steps */
> -	if (add_uevent_var(env, "MODALIAS="))
> -		return -ENOMEM;
> -
> -	sl = of_modalias(dev->of_node, &env->buf[env->buflen-1],
> -			 sizeof(env->buf) - env->buflen);
> -	if (sl < 0)
> -		return sl;
> -	if (sl >= (sizeof(env->buf) - env->buflen))
> -		return -ENOMEM;
> -	env->buflen += sl;
> -
> -	return 0;
> +	return add_uevent_var(env, "MODALIAS=%pOFm", dev->of_node);

The proposed %pOFm format takes a lock inside. It calls:

size_t of_modalias(const struct device_node *np, char *str, size_t len)
{
[...]
	csize = snprintf(str, len, "of:N%pOFn%c%s", np, 'T',
			 of_node_get_device_type(np));
[...]

which calls:

  + of_node_get_device_type()
    + of_get_property()
      + of_find_property()

, where

struct property *of_find_property(const struct device_node *np,
				  const char *name,
				  int *lenp)
{
[...]
	raw_spin_lock_irqsave(&devtree_lock, flags);
	pp = __of_find_property(np, name, lenp);
	raw_spin_unlock_irqrestore(&devtree_lock, flags);
[...]	return pp;

I personally think that taking locks when formatting string is
a way to hell.

In this case, add_uevent_var() is lockless so that it should not
cause any problem. But just imagine that it does:

int add_uevent_var(struct kobj_uevent_env *env, const char *format, ...)
{

	some_lock();

	va_start(args, format);
	len = vsnprintf(&env->buf[env->buflen],
			sizeof(env->buf) - env->buflen,
			format, args);
	va_end(args);

	some_unlock();

	return 0;
}

Would anyone consider that the vsprintf() here might need to take a lock?

Also, the format might be used in printk(). We put a huge effort into
creating a lockless ringbuffer and safe console locking. I would
really appreciate to avoid any locking in the formatting part.


That said, we already have a precedent. "%pOFf" might take a lock,
for example, via:

  + fwnode_full_name_string()
    + fwnode_handle_put()
      + of_fwnode_put()
	+ of_node_put()
	  + kobject_put()
	    + kref_put()
	      + schedule_delayed_work()
		+ queue_delayed_work()
		  + queue_delayed_work_on()
		    + __queue_delayed_work()
		      + add_timer_on()
			+ add_timer_on()
			  + lock_timer_base()
			   + raw_spin_lock_irqsave(&base->lock, *flags);

But this would happen only when the last reference is released
when formatting the string which is kind of corner case.

As I said, I think that taking lock in vsprintf() formats is highly
unexpected and thus a way to hell.

What do others think, please?

Best Regards,
Petr



>  }
>  EXPORT_SYMBOL_GPL(of_device_uevent_modalias);
>  
> diff --git a/drivers/of/module.c b/drivers/of/module.c
> index 1e735fc130ad..80879d2abea8 100644
> --- a/drivers/of/module.c
> +++ b/drivers/of/module.c
> @@ -8,21 +8,14 @@
>  #include <linux/slab.h>
>  #include <linux/string.h>
>  
> -ssize_t of_modalias(const struct device_node *np, char *str, ssize_t len)
> +/* Do not use directly, use %pOFm format specifier instead */
> +size_t of_modalias(const struct device_node *np, char *str, size_t len)
>  {
>  	const char *compat;
>  	char *c;
>  	struct property *p;
> -	ssize_t csize;
> -	ssize_t tsize;
> -
> -	/*
> -	 * Prevent a kernel oops in vsnprintf() -- it only allows passing a
> -	 * NULL ptr when the length is also 0. Also filter out the negative
> -	 * lengths...
> -	 */
> -	if ((len > 0 && !str) || len < 0)
> -		return -EINVAL;
> +	size_t csize;
> +	size_t tsize;
>  
>  	/* Name & Type */
>  	/* %p eats all alphanum characters, so %c must be used here */
> @@ -53,29 +46,15 @@ ssize_t of_modalias(const struct device_node *np, char *str, ssize_t len)
>  
>  int of_request_module(const struct device_node *np)
>  {
> -	char *str;
> -	ssize_t size;
> -	int ret;
> +	char *str __free(kfree);
>  
>  	if (!np)
>  		return -ENODEV;
>  
> -	size = of_modalias(np, NULL, 0);
> -	if (size < 0)
> -		return size;
> -
> -	/* Reserve an additional byte for the trailing '\0' */
> -	size++;
> -
> -	str = kmalloc(size, GFP_KERNEL);
> +	str = kasprintf(GFP_KERNEL, "%pOFm", np);
>  	if (!str)
>  		return -ENOMEM;
>  
> -	of_modalias(np, str, size);
> -	str[size - 1] = '\0';
> -	ret = request_module(str);
> -	kfree(str);
> -
> -	return ret;
> +	return request_module(str);
>  }
>  EXPORT_SYMBOL_GPL(of_request_module);
> diff --git a/drivers/of/unittest.c b/drivers/of/unittest.c
> index daf9a2dddd7e..93921399f02d 100644
> --- a/drivers/of/unittest.c
> +++ b/drivers/of/unittest.c
> @@ -342,6 +342,8 @@ static void __init of_unittest_printf(void)
>  	of_unittest_printf_one(np, "%pOFc", "test-sub-device");
>  	of_unittest_printf_one(np, "%pOFC",
>  			"\"test-sub-device\",\"test-compat2\",\"test-compat3\"");
> +	of_unittest_printf_one(np, "%pOFm",
> +			"of:NdevT(null)Ctest-sub-deviceCtest-compat2Ctest-compat3");
>  }
>  
>  struct node_hash {
> diff --git a/include/linux/of.h b/include/linux/of.h
> index f921786cb8ac..9fe7d17ce7e2 100644
> --- a/include/linux/of.h
> +++ b/include/linux/of.h
> @@ -382,7 +382,7 @@ extern int of_count_phandle_with_args(const struct device_node *np,
>  	const char *list_name, const char *cells_name);
>  
>  /* module functions */
> -extern ssize_t of_modalias(const struct device_node *np, char *str, ssize_t len);
> +extern size_t of_modalias(const struct device_node *np, char *str, size_t len);
>  extern int of_request_module(const struct device_node *np);
>  
>  /* phandle iterator functions */
> @@ -762,10 +762,10 @@ static inline int of_count_phandle_with_args(const struct device_node *np,
>  	return -ENOSYS;
>  }
>  
> -static inline ssize_t of_modalias(const struct device_node *np, char *str,
> -				  ssize_t len)
> +static inline size_t of_modalias(const struct device_node *np, char *str,
> +				 size_t len)
>  {
> -	return -ENODEV;
> +	return 0;
>  }
>  
>  static inline int of_request_module(const struct device_node *np)
> diff --git a/lib/vsprintf.c b/lib/vsprintf.c
> index 9d3dac38a3f4..6a4f99b39de0 100644
> --- a/lib/vsprintf.c
> +++ b/lib/vsprintf.c
> @@ -2169,10 +2169,10 @@ char *device_node_string(char *buf, char *end, struct device_node *dn,
>  
>  	/* simple case without anything any more format specifiers */
>  	fmt++;
> -	if (fmt[0] == '\0' || strcspn(fmt,"fnpPFcC") > 0)
> +	if (fmt[0] == '\0' || strcspn(fmt,"fnpPFcCm") > 0)
>  		fmt = "f";
>  
> -	for (pass = false; strspn(fmt,"fnpPFcC"); fmt++, pass = true) {
> +	for (pass = false; strspn(fmt,"fnpPFcCm"); fmt++, pass = true) {
>  		int precision;
>  		if (pass) {
>  			if (buf < end)
> @@ -2226,6 +2226,9 @@ char *device_node_string(char *buf, char *end, struct device_node *dn,
>  				has_mult = true;
>  			}
>  			break;
> +		case 'm':
> +			buf += of_modalias(dn, buf, end - buf);
> +			break;
>  		default:
>  			break;
>  		}
> -- 
> 2.45.2

