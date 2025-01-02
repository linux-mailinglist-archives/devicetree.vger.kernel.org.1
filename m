Return-Path: <devicetree+bounces-135064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E1F9FF99D
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 14:06:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 72F703A3443
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 13:06:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C207B1AE876;
	Thu,  2 Jan 2025 13:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="TqvMD0+V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B20651ADFE0
	for <devicetree@vger.kernel.org>; Thu,  2 Jan 2025 13:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735823205; cv=none; b=V9OxZoEkvyPesopG7t8XstxXDyKr1Hrf79JjC0GsCXxDmbSCILKLhNepcjNHc5/lT6KDtaLF8SGvYoINI/q20Ok0WsTk5mPhMfvGm7/hC0kQtT0FsxVz9262ePaSApNzFKcpk0FSLZDpDw0cLYolUcaTIWNtfv0kL4ttYvU4Q/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735823205; c=relaxed/simple;
	bh=okPhzHKZwSnBnr+JyEP/BuCmjowStk3XeeC8NmwJhmE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gn/WJcH+Er/TEBo6Q0trpNMUvFYodVWPa95bYffZoicW0imYfhxqD8zR80LGt7ugnF/0aqZ4HawUQTSOaSMrHmzMC+hLksVx1VzJG7GLnZdvEPcReozc2MinBUfYE9FQw+ZbKW14eP7G/lN4IFWYvHl6FESq6Xdv+piqQ5j7R5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=TqvMD0+V; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4361815b96cso74581545e9.1
        for <devicetree@vger.kernel.org>; Thu, 02 Jan 2025 05:06:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1735823202; x=1736428002; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QwWQjY7eg9shlfr3qhPfsf98UOxBUnEIZuJxINmilJo=;
        b=TqvMD0+VUZVlFklR+7vnMQIIxjk2N9LX5nY2WgIu7XZRATJhSRv8JKzOz3nV4JN/45
         VV6Bw0gI/fWOY4kiPUKu8RoTdpQRApn9/Z5DZ7/qJzlY8GBodjkwZ4yzefQURVgJU9kd
         d05k1caPIff+n5oFD+2T5cJ01i+d2tTWJU9s8PWZnqumlGOrJwIf4JyBsHFLl7qvgcaA
         wlfswBmA4zi6b8xxkTjrcJ34KeoXPc/w2DN+3FfOk5jhXYzvMVn67BuSPH3WxcWUwPIn
         U7ui6zMgmpzLONL96mXC1lOhkU5XkdE7WdJKBUFHaGqE5KzM5KdSpA9uCX/cHvrawkWQ
         YtgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735823202; x=1736428002;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QwWQjY7eg9shlfr3qhPfsf98UOxBUnEIZuJxINmilJo=;
        b=uizETOwHmX+wnof7KIE57PdpI9S08kbknP63iz3lwyByke3HnORs3TesG3y3MNHum1
         xw5uDnpRsY3gIoCzhcraE65cVJnkdfpJFd9/K/NuHKSJ62XO+xOyxWTvwH+rM+0YQ6H9
         lB1DsRKo6Ic4/2xq8nZ3ojxtHM8rciafqIv+ENabKb6MXPrDfqpa7yhW7T7vFKBjasQE
         WHfilK2ujlDJlluOZSa3WM6TCUuDo/Z1xccTCZiKc+GniaP7tiUO3BYf81kZdnSv3TVQ
         QydchOdkKpLsh5c45mtif8so6MXzz5f1YaSnM21H3TFa1A/ND13DQDRSdPpFfAV3UdL+
         sNtw==
X-Forwarded-Encrypted: i=1; AJvYcCWAVbVapXW+R2lB2tYnAkvj/7k8JWwl8Zj7zDlyFHaYFLlQttk9fGsLG9TtPrm/Ji84KR9fDCmWlYSW@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8wDb7/YwbG5/5Gl71+xh5TKoBWDji8CiUbWjkiOHtDJflE5P+
	Hg5Ojcl2wx6etqMCy/8jN6f6YVUA4CTXsHFuyY41xYJ3x1gCLbAHZqNe+ZuCEnQ=
X-Gm-Gg: ASbGncsOBhyUF/9D4SWLEXQ6nIP+g7L6snQdjrCeqvQoLSFQsmQQgnCS5Dt5v3QwqXd
	SfTwX+UWA8I4vVUnTT7Nf59qgqtUl+NTbpyb8gsTuOUjIb5tVAaf8LWO2QOd6j8TSu/lHEnFyFL
	c6Llsi4JDVA7mMqn6svrdITWPpPAcwtJH5gzVgfo+gX4fg8XvTxYRnNGp2g4rLrN8So0jvtH9Bp
	RXSJvlRVWh7Vpr16rmb0d+YhMhE6OIso8QP5CnMpLh+6r0qtvrWSnisIA==
X-Google-Smtp-Source: AGHT+IGbAPNnwVSa4laD20KJjG9xXhqX/JBOhxU0k/AK/PW0K07dro8G76+BCLcrFDNvyKXd3AGGyw==
X-Received: by 2002:a05:600c:1f85:b0:434:f2f4:4c07 with SMTP id 5b1f17b1804b1-436686464d9mr422782235e9.15.1735823202011;
        Thu, 02 Jan 2025 05:06:42 -0800 (PST)
Received: from pathway.suse.cz ([176.114.240.50])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656b3b295sm493767545e9.33.2025.01.02.05.06.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jan 2025 05:06:41 -0800 (PST)
Date: Thu, 2 Jan 2025 14:06:39 +0100
From: Petr Mladek <pmladek@suse.com>
To: Rob Herring <robh@kernel.org>
Cc: John Ogness <john.ogness@linutronix.de>,
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
Message-ID: <Z3aPSwnbUhqvp59v@pathway.suse.cz>
References: <20241217183711.2525863-1-robh@kernel.org>
 <Z2K_u6jK5aLDqaam@pathway.suse.cz>
 <84wmfxm6em.fsf@jogness.linutronix.de>
 <Z2Q2TcM6QPUIIyLC@pathway.suse.cz>
 <84o7171o9y.fsf@jogness.linutronix.de>
 <20241230202643.GA2488017-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241230202643.GA2488017-robh@kernel.org>

On Mon 2024-12-30 14:26:43, Rob Herring wrote:
> On Thu, Dec 19, 2024 at 08:17:21PM +0106, John Ogness wrote:
> > On 2024-12-19, Petr Mladek <pmladek@suse.com> wrote:
> > > I do not want to revert everything now just because of theoretical
> > > problems.
> > 
> > What would you revert? This has always been an issue for printk().
> > 
> > > Well, it would be nice to document the lock dependency in
> > > Documentation/core-api/printk-formats.rst
> > 
> > Yes. If any locking is involved at all, such specifiers should be
> > documented as not safe in NMI context or within printk_cpu_sync
> > blocks. 
> 
> For the folks that don't read documentation, should we bail out on 
> in_nmi() for these as well?

I like this idea.

Best Regards,
Petr

