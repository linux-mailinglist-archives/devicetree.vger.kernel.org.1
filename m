Return-Path: <devicetree+bounces-132202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE219F6285
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 11:17:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E96E1894A9F
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 10:17:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49DBE198A07;
	Wed, 18 Dec 2024 10:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rasmusvillemoes.dk header.i=@rasmusvillemoes.dk header.b="UkUZAo4B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F6216A95B
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 10:16:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734517017; cv=none; b=YZkzTrcQ60yTC3Vei+LPYg40grinq9yAYAwbFQSluHQ0OISwKpaH7bjzuLufk49wH9DMSPg7Axx3w5mrJcYLjkMsrhJ+7wACsg1FwGK6FsRxqvkF8nGYS7JFyxoibQ0tPnsMoEAGPvHm12QE9nJ894C7WhEcop4cU3ULHz1ei2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734517017; c=relaxed/simple;
	bh=iU6z1gcGIvyQRI/iOTPq2I99wpCZIhlViQR5bRycBLA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=X88duaw4SQ1BFip8YkhTCBpfp86M+O4FqFV8pv7ufscPE1GN2ZFjHrXePWKOvaBKPfuhvS7RBGQ788XOVvdaDcxQUQ6rckBKDO5LETkXMakxV3/nCkJM/r5hqZKG2h/7XgZMa08UU4trQnvFMWSYfOReDnaZgV2U4rjUmUTmFEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rasmusvillemoes.dk; spf=pass smtp.mailfrom=rasmusvillemoes.dk; dkim=pass (1024-bit key) header.d=rasmusvillemoes.dk header.i=@rasmusvillemoes.dk header.b=UkUZAo4B; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rasmusvillemoes.dk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rasmusvillemoes.dk
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-54026562221so6413317e87.1
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 02:16:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1734517013; x=1735121813; darn=vger.kernel.org;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AeFCiN7vXYoo1AytV3a9icS7bqm4Eq3nEjhnUXrbDYE=;
        b=UkUZAo4Bcgu5K681pv2NpwukbYqaGpwQPm6AOJhIwtRL9646QXjFytcqHXMju3/4/G
         swbM7dLAchsA3Kw0gKUG6xd0A+H1ahwv1U0qmt0J8aR5GbDMCAXQ1GjHMPMhiRzr8Uv1
         l+pTzJoCkd6eXX6Lzcm3//HqlCdaiurd9TEqc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734517013; x=1735121813;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AeFCiN7vXYoo1AytV3a9icS7bqm4Eq3nEjhnUXrbDYE=;
        b=bZ8nS7vMe0QLjKhH5wb1gd4d+RAHEFdXERQa5y50ptYoQF5JR4LInwLrUgxy47/R9O
         2rYQXNY0iZIeVryQlT0gbV0OI+EQCmDY6/XftXDrqdQZsLwkl27hzdv9fkl1m6oJuSUp
         UQyhTYeFcDY+B49ANji4iEIk2MnCIrX69IXIZryg7Qw5Z0byR5rmAVNhhqmLJHskE2Mh
         sJ2sMfj3DbjEK4RHJtggj8EGvnR8jW89ZOWN6gKa15B99uL1xryId5Fs6wRfboU+vz10
         ZPXVCSWYGdNvalLnBcqOr4enaJiX+sLqco2PguZwmt7tV6vKwIqepGLzcaPehhPnG9/E
         giRg==
X-Forwarded-Encrypted: i=1; AJvYcCULxUN2qVuTWDpf7KOuz69sdxi79ToHVm8NpbeoHrnuf+qUmt4Om/886NavHdcHh7ZToLTb1NtP8UZt@vger.kernel.org
X-Gm-Message-State: AOJu0YxMzdgLBaduE7JeFRU3WH8qwP6EqGsU9RniaEy3/hY08qWDEIGe
	bvH0RhdFe1vbGPfFGPVHmqIdKtoixeD+RXqB4DkIEjqJ397QyCORI62pBmLBOZo=
X-Gm-Gg: ASbGncuW9J8ubOQv/2j+yMdwfJEQqZRDoMF/dlkzovoVje1XxwnX9aLaF91T2Mahu7G
	0Qfh0+E7YOxEwVeTlA9JuORp+hCZyY2yZs3TOujwQbr9/5lyQfu5dS5geiI9zIze/jJKX6n8oBa
	jaw4dLcf+f5NqLzEybnQ4hePgn6tJFmCT30y8brmWSRlJXdMazmQ0RYKyNj4UGm/o+OQNwFK3D9
	AphU8V/qI+1YP0PtDZZ6uVhN4FJQm+6RE6lET7SlGTV5ZCvZ82vyEs0zQ==
X-Google-Smtp-Source: AGHT+IGu/Vjy2xFcd+GzaKZxrfSMFc6S6HvZMTcBqU1mLfnD774H4Nc1cW7ZOXoUgKN1cs7ZHwEVRw==
X-Received: by 2002:a05:6512:3c86:b0:540:20f5:be77 with SMTP id 2adb3069b0e04-541e673d973mr887719e87.3.1734517013335;
        Wed, 18 Dec 2024 02:16:53 -0800 (PST)
Received: from localhost ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120ba9ac8sm1419550e87.76.2024.12.18.02.16.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 02:16:53 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Petr Mladek <pmladek@suse.com>,  Steven Rostedt <rostedt@goodmis.org>,
  Andy Shevchenko <andriy.shevchenko@linux.intel.com>,  Sergey Senozhatsky
 <senozhatsky@chromium.org>,  Jonathan Corbet <corbet@lwn.net>,  Saravana
 Kannan <saravanak@google.com>,  Andrew Morton <akpm@linux-foundation.org>,
  Zijun Hu <quic_zijuhu@quicinc.com>,  linux-doc@vger.kernel.org,
  linux-kernel@vger.kernel.org,  devicetree@vger.kernel.org
Subject: Re: [PATCH] of: Add printf '%pOFm' for generating modalias
In-Reply-To: <20241217183711.2525863-1-robh@kernel.org> (Rob Herring's message
	of "Tue, 17 Dec 2024 12:37:09 -0600")
References: <20241217183711.2525863-1-robh@kernel.org>
Date: Wed, 18 Dec 2024 11:16:52 +0100
Message-ID: <87wmfxfg8b.fsf@prevas.dk>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Tue, Dec 17 2024, "Rob Herring (Arm)" <robh@kernel.org> wrote:

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

This diffstat lacks a lib/test_printf.c line. Please do add test cases
when extending vsnprintf().

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


I took a look at of_modalias() with that change applied. While it does
seem to end up returning the required "total size had the buffer been
big enough", this part

                csize = snprintf(str, len, "C%s", compat);
                tsize += csize;
                if (csize >= len)
                        continue;

seems that it will overwrite/replace a longer compat string with a
shorter, later one, if we happen to be close to the end of the available
space. That's _probably_ not a problem for vsnprintf() itself, or
callers such as kasprintf() that do need the exact size but don't care
about what might have been produced on the first call to determine that
size, but the printf test suite does expect the result of a truncated
vsnprintf() to match the full string up to the truncation point. We can
probably allow certain test cases to opt out of certain sanity checks if
absolutely needed, but perhaps it's simpler to fix of_modalias(). 

Unrelated, I think the space replacement could be simplified to

  if (len > 0)
    strreplace(str, ' ', '_');
  
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

This is definitely wrong. I think it's fixable by using

  buf < end ? end - buf : 0

Rasmus

