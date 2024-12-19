Return-Path: <devicetree+bounces-132707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A689F7D99
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 16:06:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 91FA6168103
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 15:06:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0244225784;
	Thu, 19 Dec 2024 15:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="P/GE/P2N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B12EB22540B
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 15:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734620757; cv=none; b=kj1drwaJOmqtgADU+ueakDg7dgJbyglIEBnXnO7wGDjUTJ56VaiYlfzLwW7TsGxg5qz08xQnJYyPviXgdA+dPcU6h00gDE/smz/UYHZija19qlUlaxTOwyzUp5OcJWJ1UqtHZinGh7dAb/Td4Ulw3VUMV2+8nTGBRRq6rnSVvMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734620757; c=relaxed/simple;
	bh=2DPBNwwFtCXNNQDYKOGB3DV4olRZt8JVKj5PKNltAVo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mGhlpTaMOjZ0zSXeL89AdAoPvxV4Rh1Z4sqDjvW0DkjxhnOBV/RYYe6EVS+3pU6nXnN1CDLsI3DugDmhRjS/938VFcUqF0lZKUNkcvNsahrdCXwmKmuCd/e8qQ0K/mRH6ErEmnSgyW3YdnGiuvaRcvLmsm+iMGD95nu4/BKmg9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=P/GE/P2N; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-385de59c1a0so541715f8f.2
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 07:05:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1734620754; x=1735225554; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BNh1srzTDX7fxdOhME+7XNw68M3lxtK8g+1pB5Q2QFM=;
        b=P/GE/P2NDBVatZvg3z1z5H4y0xuNakDxqdxd0Y7D2hiomhf+dx209+Y7rlhG+B/S38
         yZNjnBkx6kJa2nl84l+477P1zsPpFbUtVnfYIx8vjI43pfNETOFNGr78AO0Y5uImeRzo
         Zh3W684zrEqx35cLLRgTSSUP3ba0QLSGeKwndc6f2kckgTRTjSKATSurktz4emmKuuUX
         0yTPZ9X0PzkWUhA0ZT6aJPyv52mS2H/w+JlrqWX3wYruNG+rpLlMX7YxcIqxbypg7mY7
         kbtPSsUIyyIgG2d8/sMQxG93AroyNejGn8KvtofEIxoEsrwXMyuD+UArgOJv3r43B4yD
         FhRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734620754; x=1735225554;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BNh1srzTDX7fxdOhME+7XNw68M3lxtK8g+1pB5Q2QFM=;
        b=nN5fWF56p05t1XT0lI9OPsQaA7Zcs8WdI0wvJSAQXFas50O4KOW19NU8tEEq9v9L+J
         tC8Jocx2gXTPvioHnG6fpdcgpHCK7v5CO1pcOSi82IcLQBvgTIIj8BS+qWs74Eb8C56t
         4Y0tdH/GG9cNqvOegW8Q+VYgeeOKSlH4+o9tmMhB6nGhu9g3rJVIoELfbxUrLm4qh9Mk
         HF+//K0X+vdBEUzLzejIvqvvECH7FfyR7TXIB1+j8XT6Gcpg6ogOetck/r4++gYJ4GBZ
         J4aRdyyIL0hui7NuikxLNRPsC2nPCuotoq75kg30ptuMqB5c9gQn6AmhlaEY8rbCa1mM
         61sw==
X-Forwarded-Encrypted: i=1; AJvYcCUIoeACfCFPb63UPjyU2sDtXQomI0YzJVaaTaRbTj3gjZSWz4Zno/DoV+HlIQK/XNIU9hq3T6/AJGl7@vger.kernel.org
X-Gm-Message-State: AOJu0YxfgNV8IZolWLbn7WTv7HR/3A+dMpQROYbLiBiyxDRicaliZLmS
	DmeNLNtyIwIAkuI+IIZNB3oORmSRrGfnXbjbAhwiNmxMPEUjFlOC9Bb3O2LBaRg=
X-Gm-Gg: ASbGncsUtuYVZc5maCpfVCIlfFRjBbWvfJ+4T16JrEDR767AKPW90ljmQbKyniefERr
	yMhN4KLl5MdVu9RsjKRQIvr6TFQs0bUyjIAjyvqXgH1e+6me6boNRRPaINpeFdnpBBiBVfu/DcO
	/FatRUcZ/unDrc8SRToJAStW3odF+tEahqC6wT71w2EI/mHzgdpvpEafexvd1v9HYgCBcEBYgLY
	+4IiXiWsdnAKtXsdOV5dypmDM1p3BK/HIoCzbgNXWQ0pu+NLCziN/aGjg==
X-Google-Smtp-Source: AGHT+IHzx2qjZN7y/wo3WxF3dR8UgNgswDbrl63Ur+zGOBiu2f0uIz455D6W2JRIyhSeVVWesAFhZQ==
X-Received: by 2002:a05:6000:4012:b0:385:f44a:a68 with SMTP id ffacd0b85a97d-388e4d67acfmr7090660f8f.35.1734620752494;
        Thu, 19 Dec 2024 07:05:52 -0800 (PST)
Received: from pathway.suse.cz ([176.114.240.50])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c8b830csm1752376f8f.108.2024.12.19.07.05.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 07:05:52 -0800 (PST)
Date: Thu, 19 Dec 2024 16:05:49 +0100
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Cc: "Rob Herring (Arm)" <robh@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Sergey Senozhatsky <senozhatsky@chromium.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Saravana Kannan <saravanak@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Zijun Hu <quic_zijuhu@quicinc.com>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: lock in vsprintf(): was: Re: [PATCH] of: Add printf '%pOFm' for
 generating modalias
Message-ID: <Z2Q2TcM6QPUIIyLC@pathway.suse.cz>
References: <20241217183711.2525863-1-robh@kernel.org>
 <Z2K_u6jK5aLDqaam@pathway.suse.cz>
 <84wmfxm6em.fsf@jogness.linutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <84wmfxm6em.fsf@jogness.linutronix.de>

On Wed 2024-12-18 15:13:13, John Ogness wrote:
> On 2024-12-18, Petr Mladek <pmladek@suse.com> wrote:
> > My concern is taking a lock when processing a printf format, see
> > below for more details.
> 
> Your concern is valid! printk() uses vsnprintf() to format records for
> the kernel log. printk() may be called from contexts where locking is
> forbidden (such as NMI). If vsnprintf() can take a lock, then either:
> 
> vsnprintf() must be made to be lockless
> 
>   or
> 
> printk() must take another approach to string formatting

There were the ideas to introduce a %pX[1] or %pf[2] formats. They would
allow to pass pointer to a custom callback and parameters which
then would be used by vsprintf(). This might allow to make it more
obvious that the given vsprintf()/printk() might do some locking.

>   or
> 
> we accept that printk() can deadlock for certain format types in certain
> contexts.

I see that %pOFm does not add any new locking dependency.
The same lock (devtree_lock) is already taken, for example,
by %pOFC format.

I do not want to revert everything now just because of theoretical
problems. It somehow works because people use these formats only
in dedicated subsystems. Also lockdep is able to catch a lot of
problems.

Well, it would be nice to document the lock dependency in
Documentation/core-api/printk-formats.rst

Best Regards,
Petr

