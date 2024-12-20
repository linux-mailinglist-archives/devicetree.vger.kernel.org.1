Return-Path: <devicetree+bounces-132963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DB20D9F8D8A
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 09:01:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8B3E18941AE
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 08:01:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15E8019995B;
	Fri, 20 Dec 2024 08:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="eSmJO+yQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBDCE13AA35
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 08:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734681683; cv=none; b=b06VHj5qX8Xk9kerRY/nDn0g6zNihOczvRx3m3k8IC0PFlhh1k4ge0uS58mjtpDGf6KRh/X7NlCGtupRhTqx+dYUBiyLJlJQ8g8lR+s0XiVDyGxaHSgI9F7EELhTv/zWOml3RImM+IkyzBM2IZiegh1S/WA1Kax8nlfRJxUU/No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734681683; c=relaxed/simple;
	bh=NE5UTe5dL2tgOgREltmleH8b3bpmPCFrFKyTspmMf80=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CjnrSXdeWlqxzUO5wgHrfcqGb0mqhhS+Lkp1E2q9pJZ/j1b7J3+v1PgloVtuXdV2c9xavF96iQ02Qd5irSzSq8EICP4wvwnvf+t1N8NHqcy6vRa1xBb+BgxCQtO6O4NyB/Ucy5SzDikh7onJIOoi+vU+oZz4dut+23WfR9xpGeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=eSmJO+yQ; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-385e3621518so825328f8f.1
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 00:01:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1734681679; x=1735286479; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SKyhp6BgensMeRRvZqUrPCxPSGMIyjt3ZLLIV46HEEk=;
        b=eSmJO+yQY3ikfctv/+vARoTLpS+jvxLuxKKJeDrJhxiSb7hdJ+1fSF8rRrPOVj2clx
         QrTWatFfb3IV9cnQpuQlyxl1wsfqnL194XYptUwG3y9261LiEDC9mWJWs8UtTrIpxiU3
         +kTe9sLwEx9NgfDb/nNNIXNR5JteW5o1rCLyKwVRNU2QStpSO3+nU72ehJlcFu4qEWmt
         4mN7cKp2iErz8+cKXD8zwijAdlleqFVq6P1+pMjRoDnuHJvabdVnYRPX1AD3tovZbMfF
         s9SbVyPKtO5/OmKAstUUp9Z+/d9hs1N9tLwOz+z8Dq2CcSJy+QJ1EkB7KfLDQziVoZHl
         wZTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734681679; x=1735286479;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SKyhp6BgensMeRRvZqUrPCxPSGMIyjt3ZLLIV46HEEk=;
        b=rDt+CSCZEA1vx/NzPBK/9/p9hglmLsve5yR2/oLfS8xT8bhtsLSmWfF/xKkX44VCSL
         ob7j2GLi1N/wBrqm0Kq06K4yuYFTZbT/6y60EcBXGHuhdn19k74MsEHmuuojMmlwQdxa
         7gnXc8JNuCLw+4GIyse28FkH7DyTXbu3cqXY8XI5VfJg4MZiUGJND/WaOGaFi8utMK8D
         BPfGTQ6sYJgTdGvgi0zLOT2o1o3ybDA3pQxZMTY54WcKd1+R7SELxOWlnNidNhezYxUP
         OU0/bEUmZCGfRfEjLXjqpT0C81GQduJh7zLL1W2pkOiQE+zULchDD53hasQ+CVziLVrj
         Jw1A==
X-Forwarded-Encrypted: i=1; AJvYcCX1cqjrR/e8n/XOFZ7dXBR7mXbUra5rRJoXntlTNI8WU0t+ORrk4ewic9iyOMmMJzqHERD2zo5bLCaQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8mZYXe1+Hno7EtMG7VLZ6uV7Q8lZlgmOdZYlDb9KFvGJN6Q2X
	ll+Vj6aHwRA/Yp4cM06jEKquU5qj6i6z4nvIhUDWe+OzS/xwrIRyRI/jM2a8z10=
X-Gm-Gg: ASbGncvAigzFtVNSgrppwbDT042cfCRbMs8wPLXYnaFAPQxmzh3h832KCh9+2F8eu4j
	0LiycSbUp/hMdVC7/SQZ4A9sfpz3bQH1dpNlib4UOY5zWg5y5XSnCM7MzM5lSV3ZGX01iTaznZG
	EqjmY7ipSIXyppKTjnpF8QBOwMTEh0CCS5J/RGEpiT+Lypan538i6aMcl+KFdsmYmYOKVX5Lgp8
	HfSlPNDm4rmJhqTIsYr3qcbcXXi1O6NLG4bIyyR2TGsN5rH71Zm1LtRlQ==
X-Google-Smtp-Source: AGHT+IHXox4MGMtqEmaRQepNLJ8T0HqucVd42uEX9LRMu/wtsBIAtfuFnBpMs5FOY09ZQTPXYQQpFQ==
X-Received: by 2002:a5d:598f:0:b0:386:424e:32d5 with SMTP id ffacd0b85a97d-38a221ea939mr1735076f8f.14.1734681679359;
        Fri, 20 Dec 2024 00:01:19 -0800 (PST)
Received: from pathway.suse.cz ([176.114.240.50])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4366127c488sm38048325e9.27.2024.12.20.00.01.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 00:01:19 -0800 (PST)
Date: Fri, 20 Dec 2024 09:01:16 +0100
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
Message-ID: <Z2UkTMz8bHNN1PMq@pathway.suse.cz>
References: <20241217183711.2525863-1-robh@kernel.org>
 <Z2K_u6jK5aLDqaam@pathway.suse.cz>
 <84wmfxm6em.fsf@jogness.linutronix.de>
 <Z2Q2TcM6QPUIIyLC@pathway.suse.cz>
 <84o7171o9y.fsf@jogness.linutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <84o7171o9y.fsf@jogness.linutronix.de>

On Thu 2024-12-19 20:17:21, John Ogness wrote:
> On 2024-12-19, Petr Mladek <pmladek@suse.com> wrote:
> > I do not want to revert everything now just because of theoretical
> > problems.
> 
> What would you revert? This has always been an issue for printk().

I did mean the already existing printf modifier which already
take a lock, for example, %pOFC.

> > Well, it would be nice to document the lock dependency in
> > Documentation/core-api/printk-formats.rst
> 
> Yes. If any locking is involved at all, such specifiers should be
> documented as not safe in NMI context or within printk_cpu_sync
> blocks. Also, it should be checked if all such locks are
> raw_spinlock_t. If any other lock type is used, it probably is already
> generating a lockdep splat since printk() formats records with local
> interrupts off.

Great point!

> Perhaps we should create a kunit that calls printk() for each of the
> supported specifiers and see if any lockdep splats appear.

It might be possible to somehow reuse the existing module lib/test_printf.c.

Best Regards,
Petr

