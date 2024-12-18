Return-Path: <devicetree+bounces-132265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 090829F64F8
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 12:35:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 12C097A3BFF
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 11:35:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A7CA1A2396;
	Wed, 18 Dec 2024 11:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="ZpUpJ5/Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39ED21A2388
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 11:35:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734521720; cv=none; b=MW62a2EdoeQF1xHQRzZ5KasEh8YxpmZXGR3DznaCE66+g8SKDHQy4yFIkTYdCOuWURGTqhQZBeNvbKloXrU8ILM/wTPWDy1XcwRQt/XpgkIh+RMSyQ/OyftCqJDH7urYDqD1Ypedi8uRiBGK/nwNE5GU8Jzm/0Q0vYJqLNY71hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734521720; c=relaxed/simple;
	bh=gOiMAnrjvHN0iPlKNzqS7+6gHJppdNewW/4kpkijjMk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dyBJZ266868kwRe4s34mihdcsxPDeyfDZcnjmUjqFZE0mnUBd2Z5OsDWszAYJlVeGEwMT9i5mbK6nQoLXSXBhhohurBJpA2WzNEz48lY0G5NAo3aTeDjhLCW5s479zR619RNKJEjAY9O5ma3DK0HFFRuZhuVIliArQ9wXaPA6g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=ZpUpJ5/Q; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-385e2880606so5732591f8f.3
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 03:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1734521715; x=1735126515; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VlJJETf0GEG5l1fQK2RThJLw2n20sbAz6B1Azi0svlk=;
        b=ZpUpJ5/QylowrV3JqsfgMS2hgTThrGYcD+Ro6FuLOjXOnzSb+Ex6xpm2JBBXd5PBFd
         sdkg7ZVOstjiPvW7Lcf+nPLEEHdlVSVZNDpNsE72PusZtbzXFD8xTRO1IkOq+JTclBr3
         yJAkS1SGmLqMcdZm7XjTc8kKTXgbdUg2MT2zIk0g90b+ls1WYc/cglquKsPb3fB2/gY0
         Owb0e8+cJJ9C55kFffGEWX+BjNuqp7qJVf9rn4A+lQR81nwz9gapEwIOP8F8AbAvRzZ7
         9ru4PyeJytdrXNDJhtycxOI8O/CtTqr7x9qNTNCkcrhrCXlcgcvUM2o9ytqmHgn3sjb1
         Wiyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734521715; x=1735126515;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VlJJETf0GEG5l1fQK2RThJLw2n20sbAz6B1Azi0svlk=;
        b=ei0PG8ZKWldPkRWHZfVjYGzLOQuWlx5vSvGalR0S9MGzMLKqBJSjV1VRvOenNEk0n9
         uDflJxmRoPAXRw6FR2OJvtaAxYnzmXkONtluBvunVGyQ7orzjvlTe6D/3R3amfcQaME4
         nUsA6pmbPq8xgLKCAez502WY+Zfg4sAzTTKPFKiMfHYqcOWjMvXB30tPHdNgJcGzJooJ
         TOTy17SsTid9QFptIOOkB4RhSCWE8I3B6d7ifsitr2fRLHCW/2+L7lixiAUaBQ/ZDyM/
         xMDibpoE1Wax6C9eZnI+kEVfo+PfUwfGUZ4rCdboISDZWvOEEP5sS1hf9Tre8yCkulwz
         4WAQ==
X-Forwarded-Encrypted: i=1; AJvYcCV/Jtlmk/lk/qB1KqW0bwOjdRN4fod1Jt0/FzHTvPKaEexKHj3Tev+1d+HVWO03HwI0PonNJG5iydKm@vger.kernel.org
X-Gm-Message-State: AOJu0YyQtlzBZ53epeYAaFtrJasf2/HD3bKgNWKOHFLykCuOMr1BZ6jQ
	KZUHEeYlcFdv58IJBjExQvrtQxSlJ6yki6URvJ3v3J0Ax9JEqffjkyp3zijHFnU=
X-Gm-Gg: ASbGncsAUfsPIdaJPmfHV9364o/nkXorTRjN6r1WROgCq03R8iGf1M1pymeIaA/HXL9
	U0m6PmEpT9AgI5LI/vJK28CZaYyok2ekLmcWrJYnOW4E3N9KGz2wjwc8J3JQ1XCMCLW+wB8MHku
	64cm4uvsj0RUWfDdUoZ+gPhyKEtNiFtti3+n/KL7T6Rj8ByBH6Ogy6VboZNpBpNhvlIT7kLUdjI
	G/hd4z6DPxY+ulPx6Q7D2kIO4/n6lcpnr7dBNMvedsHYsWmiEyBF6wb3g==
X-Google-Smtp-Source: AGHT+IGnVN8Zbotu5KkOnXCz05raBpseI5GUh9bTzmh4+dTqb3vp6Jmq20mEcYqJv0Y4S8sbzjycFw==
X-Received: by 2002:a05:6000:4a16:b0:385:fa26:f0ac with SMTP id ffacd0b85a97d-388e4d6a9aemr2531218f8f.7.1734521715441;
        Wed, 18 Dec 2024 03:35:15 -0800 (PST)
Received: from pathway.suse.cz ([176.114.240.50])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-388c801223dsm13978802f8f.3.2024.12.18.03.35.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 03:35:14 -0800 (PST)
Date: Wed, 18 Dec 2024 12:35:12 +0100
From: Petr Mladek <pmladek@suse.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Steven Rostedt <rostedt@goodmis.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Sergey Senozhatsky <senozhatsky@chromium.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Saravana Kannan <saravanak@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Zijun Hu <quic_zijuhu@quicinc.com>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: ssize_t: was: Re: [PATCH] of: Add printf '%pOFm' for generating
 modalias
Message-ID: <Z2KzcORZocQAwAi9@pathway.suse.cz>
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
> --- a/drivers/of/module.c
> +++ b/drivers/of/module.c
> @@ -8,21 +8,14 @@
>  #include <linux/slab.h>
>  #include <linux/string.h>
>  
> -ssize_t of_modalias(const struct device_node *np, char *str, ssize_t len)
> +/* Do not use directly, use %pOFm format specifier instead */
> +size_t of_modalias(const struct device_node *np, char *str, size_t len)

We should keep ssize_t.

"end - buf" passed from device_node_string() in vprintf.c might be
negative. The "buf" pointer is used to count the number of characters
which might be written when the buffer is big enough.

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

There is later called

		csize = snprintf(str, len, "C%s", compat);

and snprintf() uses size_t for the len attribute. It would go wild
when we pass a negative len.


> +	size_t csize;
> +	size_t tsize;
>  
>  	/* Name & Type */
>  	/* %p eats all alphanum characters, so %c must be used here */

Best Regards,
Petr

