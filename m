Return-Path: <devicetree+bounces-269847-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KAWGKU9WpWnR9AUAu9opvQ
	(envelope-from <devicetree+bounces-269847-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 10:20:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D371D570F
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 10:20:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AF492300B447
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 09:20:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 541E438A705;
	Mon,  2 Mar 2026 09:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KwLBPJnX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B4538756A
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 09:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772443202; cv=none; b=oxEznuucKYdBOpZ7thUOmZXEFW1bIyqCYVm1r6V9EnAHROCCU5laNXjkFGi0H4F1KdLg7J944zCo8hho1+9aZugdgF8X4XmEhN+uSDOk9aSjrcC0MzNpBznHSIn4j6mJ4M0y66YNweb29an6PTsa5nCu9IBke0E/Gh3M3DkORi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772443202; c=relaxed/simple;
	bh=1bg+jhn9pm5FVIHM1bJ/UrZ/gWXZGAbhNRN+8fJtkt8=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IkJvdFO7yrfo0YS+JDC2zvkGgk+82ebLQqme+LiMR5aZpdG2ARPCA/HgiPM2p+zXvzWFK5aXpkWlsYi2+Nsw4iFzk4k3elboCj8POY1JQ1vt4zDHuOVVin1hxCdu7CX8utr7dWdT9M38E9VfIcHsWHdDYI46OAj8KUtdiXwLpzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KwLBPJnX; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2ae45a4cc54so7662705ad.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 01:20:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772443200; x=1773048000; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pf8X4Iywfc9XFflwsYNEkc3l/78wA/q5gw0R433S35I=;
        b=KwLBPJnXwr6zzohhhlIImq+YBSy5VqAWjYOsKxh8oLTsdfZd8HEuVa64e7wXDj1kdA
         is5DeeO2l6+Dz65vIAkPnW9RulmlUq/NweIr7JFB52Skxy42r/xBoY4v/L3AjbFq4tFb
         ZLotmHLktQDOtCtx/ArMRESMwYJTOhiUeHNkt690YwRoFAbNJsIYe0wVbSK8S9Bp1VJr
         mCasQPxOsvzitQ+xZr6hJ1+s+3vHUAvDRLjrXhVrJ758+Tg/ZEYcQ6ct8JuVhPU2Gj/1
         9O/YmTzsboQ+DG7vJmiRgT+I/XtBhIFoiEQcpxKzB5hXzhj1QUkG2d5G86+igCqfXxQd
         1zwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772443200; x=1773048000;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pf8X4Iywfc9XFflwsYNEkc3l/78wA/q5gw0R433S35I=;
        b=Fol7VObmyG+ekUm/R6FAtEBwhOoF4ON+g5YMmFYN3AlfS/IAXD4EgJlj4j4I7PbkSr
         Numy7jfeWTFd5PqlNObEbmKE9sNbj/5YOTLNd1noiJQguUfOTqok1854ShmfSVQ/4cH6
         Yjqfcv8biZj9w7njZNZhZwGagcDLHWzeRd3jM1qcvYZ7iiivsQt1ZrSMyHa5aSe2cym1
         FkOw+xtegvueyMdCGVDfhv1wiJohuedeczfAFJLKL4wKCu9omFEADZzJTzqVA3PtsKJj
         f31QeFG5ZBWuhwxwDKgke6Fk6VRpT8RFVG/sE/mDMJ13XFYy+GwyV7s4cI+Rhf3iiMwS
         /JpQ==
X-Forwarded-Encrypted: i=1; AJvYcCW4vXbSsMjzrCrDE/ssdya/ez0TpcqGL0hnQrSuVNnqwb5WTRgz0jqUmFIvz/ChktaXFXKW7HYViP2M@vger.kernel.org
X-Gm-Message-State: AOJu0Ywm9l4axBGGo3cjLvxmaIvEnxeBxJjgI5wDFS0gCRgot4ZFqK5o
	ZZY1/tgbg22h0FvtCJ2sB93SQjzK0cxdgAHFtj2zJO/f10PvakoDUOSH
X-Gm-Gg: ATEYQzxjzAKYXK8GyD66ee7TkxbxyKoOWiCvAaHQLd9yWzrG3Pgp4yM0PGdF4HR+NqV
	05gp1QDKwuyF0/J9cr7CSKDJRQ1evDiivu3ScVhxbIZkUKJINAQvz1VhuT+v9LaBOJltGvXbKqF
	w8EpiwNs9oq+uHan83IxpRCsl3HPMFtZdZ0YHvwbL0RvSM59ul9lhhPByBS/ribz2/2UqRax2Y7
	3ZXBX7avwgOtnudmtn6wZp115SyTZ9cv607Dxczb4MYKKPSSDTKQUmS69wDKc+dhjVFHqfGJsgK
	6KqwKFrBuaTtAeF8fO1M8o49w2XHLgwTpumgvCNasr1lPHZJGYDIFoE4KDNUJfx6ok5jlsrlcmg
	ZmcAUVVdjAY/pC8wbj05mSv554MQ1VD/eSe6VXYDzaQS5Bq1Jb8ZM2CAtu/P+ZpnYwOcmMkSQQV
	a+7Xg7kryHvydZZ3BAZLCuLOysEiKjV7mobdTftZD4QbJQ3PjOT8aUPSAND51btfdJl2DXkbNgt
	X47S/XG401Q02p8oZwXpV6WmWeaa4bziIj1iI9O9vwgn6XGHS0=
X-Received: by 2002:a17:903:2342:b0:2ae:572a:9f19 with SMTP id d9443c01a7336-2ae572aa16emr9336665ad.21.1772443200397;
        Mon, 02 Mar 2026 01:20:00 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com (24.206.116.131.netskope-rdns.com. [24.206.116.131])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb6ba5eesm135627655ad.68.2026.03.02.01.19.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 01:19:59 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Mon, 2 Mar 2026 09:19:42 +0000
To: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	Jonathan Cameron <jic23@kernel.org>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>, 
	Rodrigo Alencar <455.rodrigo.alencar@gmail.com>, 
	Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>, rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Dmitry Antipov <dmantipov@yandex.ru>
Subject: Re: [PATCH v7 2/8] iio: core: add fixed point parsing with 64-bit
 parts
Message-ID: <ct2r5wvvfowqcfe44fawbi4blkjpfle7etvaunwbsxevejsr2s@3g43wru5n6jh>
References: <20260216-adf41513-iio-driver-v7-0-b0ed387ab559@analog.com>
 <20260216-adf41513-iio-driver-v7-2-b0ed387ab559@analog.com>
 <20260222172912.60a103c0@jic23-huawei>
 <aZwYshRxNgSh3CWk@smile.fi.intel.com>
 <zb752y7tnjzsc35na572o4sip6efwv3i4lha4ls6fhdrr52h5v@bfgy65cmae4p>
 <CAHp75VdSV2QDMR0DueCuP=Ds-5A1NsNjqPWtmRbG4NvoJ=LjXQ@mail.gmail.com>
 <20260301122340.3fedf64e@jic23-huawei>
 <aaVKDbB_XIFmxCEM@ashevche-desk.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aaVKDbB_XIFmxCEM@ashevche-desk.local>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269847-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,analog.com,vger.kernel.org,baylibre.com,metafoo.de,lwn.net,yandex.ru];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A4D371D570F
X-Rspamd-Action: no action

On 26/03/02 10:27AM, Andy Shevchenko wrote:
> On Sun, Mar 01, 2026 at 12:23:40PM +0000, Jonathan Cameron wrote:
> > On Mon, 23 Feb 2026 12:41:45 +0200
> > Andy Shevchenko <andy.shevchenko@gmail.com> wrote:
> > > On Mon, Feb 23, 2026 at 12:37 PM Rodrigo Alencar
> > > <455.rodrigo.alencar@gmail.com> wrote:
> > > > On 26/02/23 11:06AM, Andy Shevchenko wrote:  
> > > > > On Sun, Feb 22, 2026 at 05:29:12PM +0000, Jonathan Cameron wrote:  
> 
> ...
> 
> > > > > It all depends on the series from Dmitry Antipov.
> > > > > Can somebody help reviewing the patch 1 there?
> > > > > https://lore.kernel.org/linux-hardening/20260212125628.739276-1-dmantipov@yandex.ru/  
> 
> FWIW, Andrew picked them up for Linux Next. Please, test!

The patch looks ok, but I am not seeing it solving my problem here.
Here is the v8:
https://lore.kernel.org/linux-hardening/aZXDSbyH8tWmTPPL@smile.fi.intel.com/T/#t

I would have to use simple_strtoull() and it would clamp the value at
ULLONG_MAX in case of overflow, but it would not say that an overflow
happened. Would that be fine? I understand that addressing the FIXME
in simple_strntoull() is not a subject of this patch.
 
> > > > can we push for the exposure of that function to kernel modules?
> > > > We have discussed that in v6, and I understand that:
> > > >
> > > > EXPORT_SYMBOL_FOR_MODULES(_parse_integer_limit, "industrialio");
> > > > in lib/kstrtox.c;
> > > >
> > > > #include "../../lib/kstrtox.h"
> > > > in drivers/iio/industrialio-core.c
> > > >
> > > > is not a good call...  
> > > 
> > > Yep, because it's a temporary band-aid. The proper solution is to have
> > > shared code provided by the lib/. So, the wrapper to parse 64-bit out
> > > from the constant string literal should be part of the lib/ in the
> > > result.
> > > 
> > > > > When it's in, we can continue on this one. TL;DR: for me this is on hold.
> > > > > But if you see the need to have the driver being in IIO, please add a big
> > > > > fat FIXME to make sure we will get this all being sorted out in the
> > > > > (nearest?) future.  
> > > >
> > > > I could add the FIXME into iio_safe_strntou64() doc header. It explains
> > > > the context:
> > > >  
> > > > > + * The implementation of this function is similar to _parse_integer_limit()
> > > > > + * available in lib/kstrtox.h, but that header/function is not available to be
> > > > > + * used in kernel modules. Hence, this implementation may need to change or
> > > > > + * removed to reuse a new suitable helper that is properly exposed.  
> > > 
> > > Up to Jonathan, I hope we can move the above mentioned series forward.
> > > Without that, as I pointed out, this one sounds to me suboptimal and
> > > unneeded double effort.
> > > 
> > I don't want to hold this series for another cycle, but we are still
> > fairly early in this one, so some focus on moving that forwards seems
> > sensible.  If we are running out of time, we can fallback to a loud
> > FIXME and a plan to move to the generic version in the library next cycle.
> > So let's set a rough deadline of rc5 and see how things are going then.
> 
> Taking into account the above, can we actually develop something
> based on that?  Or at least having a temporary solution for this
> cycle followed up by the better one for the next?

As mentioned above, I am not sure how consume what Andrew has over there.
It seems address lib/ internal stuff. The interfaces are still the same.

-- 
Kind regards,

Rodrigo Alencar

