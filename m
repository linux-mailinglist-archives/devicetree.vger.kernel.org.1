Return-Path: <devicetree+bounces-132705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F5B9F7D4C
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 15:44:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 72BEE7A31B2
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 14:44:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BDA6225770;
	Thu, 19 Dec 2024 14:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="YDlLqmwq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4955622540A
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 14:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734619465; cv=none; b=f30GYOnh74C1W5Oqxu2mH1NP0LD5E0YRnLjUb6zp6lSnrI2MubiADVm0pWF/PMEpPlsABURKNmkZRWheOtverw6pkcxQUp5TTfHPs/YlcXak+kpCjNDxErPOeV5iVZ3r+H9g/UBlMHRzV3obZ5y99j57+wJpy62UA/zJ9NoQJOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734619465; c=relaxed/simple;
	bh=kuzNS9K72EkSrNeLIVLdw6jZ00C6nGxLQgNNkN4fUXI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TpPSfD6vHrJW4UrVUJI6nZCQ1fUzfZ44ge4DGcz4HiGHs6vX/TMUPoURLzNyUqJEi/LkcrUEIcptWYFfUOpVlVkvzhj3o4HmyAiiTCeVrpdK5rZlNlvtpFzEqjH/oM0+HmJFKS6HpPZI/ytwH45I/PoHJTWDqJfXmpIg8e72e0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=YDlLqmwq; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3862a921123so594092f8f.3
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 06:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1734619461; x=1735224261; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YUe8L/RSJG7X1qPU8YCoCZFztQIhaGAvtLCydCuhUAE=;
        b=YDlLqmwqvuSeLVYSYfeKdn3Zfsvrc53LUH36k23y2JdV14mWysgKFmbZezRaZwhljR
         +y7rpaWlpOWhnig/LkDhgDxbUroY1tAWngBBUy8Dnxyej3nE/h3gJfENRsrDuuUZPx7C
         7ew6MNPRHPZDm+OGDt88FNGW/DbsqSVuAB6iTkVD8+j5Geh2FX901kGxL2d9nDUWDqAl
         VSRq+o6XjsOqBVbVUU4G3TdgYm9wy7F1nQ0NYXnzWUW39FsmnB/ATIozCk/dKCxyYj/2
         6Rv+zonOlHt856ZGyP0pZNX1Q9LzxkwP5f3Lomy3CuzX7b9HP99FmY2HjV4+m3okH7da
         t+uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734619461; x=1735224261;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YUe8L/RSJG7X1qPU8YCoCZFztQIhaGAvtLCydCuhUAE=;
        b=SMyc+oExWr1wSblCcHXCN3McCHotX93+JwD6S6GrKBlIT0rEWEDhBH+04jQMIC1O+Q
         wEve3H6XtK5CamIXBC8c5mIkQK/joCxLVblnI3Pg1xqG7NqA23A+ThCYtAxNVoVHpCGJ
         /XnlzXXBS8hb6dIAE/ty5LH2rsciCG3bCye9gWmXbtjzXqXk3ADNDoBXhRONUjR5R8ZJ
         k7DQOIMgMstkfXoBA+J0P6wLrbRaHRw5dDKK/XDG5PGJ4+s6odrlcySsK2x4uykLWNKT
         TSdj97vFw4gYttDed7OY045AnH2nTp6YNBBdoBebDHKgFbK8QX3qnK4NDh9EAXnFM0/m
         zV8A==
X-Forwarded-Encrypted: i=1; AJvYcCXzOfs2hPTPzZ46vxPqfUye/f6GThM6JL+aHk8CfjoyHwlOltCYE+R8SWFR+XpGTWbJxUjIxuSPt+5K@vger.kernel.org
X-Gm-Message-State: AOJu0Yxm1cCA/H3SPbW/LA+KjkFPWgYclLtzmGl7kwefVBl/QFF/Gcp+
	XI6hJsfFpGfa7LrFeuRWELgNl4Sg/L/MKY9Nu+JVGqyqt2xhpd0It0XX5NI0VC8=
X-Gm-Gg: ASbGncvMWbaePQHwLIid5RB6ocNDMO2KD69AlufSa+LRfhfRaOKYvIGmQTVLpvdQS+g
	AqFjjEX83iR2meCPDR2eh4ikbLWoObdZASum94IX5dKO7JnK9/4r8TZAfEMQRDczOXXgS1yYHsj
	6v4E8do9T+9v9nXBLHJVSxikR/RGi8qF874H+ds9KADxMt2NFKVI1JK72Wn5vv8ReouP5A3CiVh
	EHk0ojgxDDVQ2H3nxOuwfsCTtIRTwe96zj/xCfT8bTvfIRNcpJ1DVCGJw==
X-Google-Smtp-Source: AGHT+IETUPBPDpfMGSiHPHr2l+GQu1KRtFJb1OUCyY4yEHQND0y6u+pyC88kJZkjcOETPOdloGbAvQ==
X-Received: by 2002:a05:6000:1867:b0:385:fd07:85f4 with SMTP id ffacd0b85a97d-388e4d64711mr7110212f8f.31.1734619461577;
        Thu, 19 Dec 2024 06:44:21 -0800 (PST)
Received: from pathway.suse.cz ([176.114.240.50])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c8add5asm1677939f8f.107.2024.12.19.06.44.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 06:44:21 -0800 (PST)
Date: Thu, 19 Dec 2024 15:44:18 +0100
From: Petr Mladek <pmladek@suse.com>
To: Rob Herring <robh@kernel.org>
Cc: Steven Rostedt <rostedt@goodmis.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Sergey Senozhatsky <senozhatsky@chromium.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Saravana Kannan <saravanak@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Zijun Hu <quic_zijuhu@quicinc.com>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: ssize_t: was: Re: [PATCH] of: Add printf '%pOFm' for generating
 modalias
Message-ID: <Z2QxQhvserbVvmrB@pathway.suse.cz>
References: <20241217183711.2525863-1-robh@kernel.org>
 <Z2KzcORZocQAwAi9@pathway.suse.cz>
 <CAL_JsqKRpeCgd=6PeHMHnZaJHqn2SAob2J6Yv07n7OdCY++GWA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_JsqKRpeCgd=6PeHMHnZaJHqn2SAob2J6Yv07n7OdCY++GWA@mail.gmail.com>

On Wed 2024-12-18 11:10:54, Rob Herring wrote:
> On Wed, Dec 18, 2024 at 5:35 AM Petr Mladek <pmladek@suse.com> wrote:
> >
> > On Tue 2024-12-17 12:37:09, Rob Herring (Arm) wrote:
> > > The callers for of_modalias() generally need the module alias as part of
> > > some larger string. That results in some error prone manipulation of the
> > > buffer prepend/append the module alias string. In fact,
> > > of_device_uevent_modalias() has several issues. First, it's off by one
> > > too few characters in utilization of the full buffer. Second, the error
> > > paths leave OF_MODALIAS with a truncated value when in the end nothing
> > > should be added to the buffer. It is also fragile because it needs
> > > internal details of struct kobj_uevent_env. add_uevent_var() really
> > > wants to write the env variable and value in one shot which would need
> > > either a temporary buffer for value or a format specifier.
> > >
> > > Fix these issues by adding a new printf format specifier, "%pOFm". With
> > > the format specifier in place, simplify all the callers of
> > > of_modalias(). of_modalias() can also be simplified with vsprintf()
> > > being the only caller as it avoids the error conditions.
> > >
> > > --- a/drivers/of/module.c
> > > +++ b/drivers/of/module.c
> > > @@ -8,21 +8,14 @@
> > >  #include <linux/slab.h>
> > >  #include <linux/string.h>
> > >
> > > -ssize_t of_modalias(const struct device_node *np, char *str, ssize_t len)
> > > +/* Do not use directly, use %pOFm format specifier instead */
> > > +size_t of_modalias(const struct device_node *np, char *str, size_t len)
> >
> > We should keep ssize_t.
> 
> My intent was to align of_modalias() with snprintf()...

Sure.

> > "end - buf" passed from device_node_string() in vprintf.c might be
> > negative. The "buf" pointer is used to count the number of characters
> > which might be written when the buffer is big enough.
> 
> Isn't Rasmus' suggestion sufficient?:
> 
> buf += of_modalias(dn, buf, buf < end ? end - buf : 0)

Yes, this should do the trick. I sent my overview before reading
Rasmus' reply.

Best Regards,
Petr

