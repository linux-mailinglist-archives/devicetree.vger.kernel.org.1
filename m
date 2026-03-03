Return-Path: <devicetree+bounces-270555-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JVXJcbupmnjaQAAu9opvQ
	(envelope-from <devicetree+bounces-270555-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:23:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2EE1F161D
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:23:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E3398309E3DF
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 14:16:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 607FA3D75B6;
	Tue,  3 Mar 2026 14:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jruDCTK9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC9833F368
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 14:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772547390; cv=none; b=u+/ueeGubfDy7hTIu2O2Kkr62EKfBMB9I9xMMweyKkUWgHpVKRwOZMJdz4FoF9tfZu1lXry/bmsJqpCnk0CV8iDhfa9/UReaQgC5ZmQN5POyPU+Vfd5M0U17eeLYD1gb6pT+lE+NmA2dpsQ9y3iwDkzQRboilajjr1DM+lCCHK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772547390; c=relaxed/simple;
	bh=O3wxBlM5A9IROKIfrvTr5CqxizEqTm2V+XA0/tPb8jo=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iRG6Wbh0oJz1srPqvHXg6hUKhE/bxaOJv/pZYMTRY/6KSJ1krjsvKfRd6l9kR4N0ijOzDSOyyJMSuDScS2s35UHvmsJ/k5BncomDn3h/Y3KlpD4c/T3GNzp9u3lxqRKttyldcZVwJZWtR9WQ41wghLyP8F+O/5fOPmJcejfqOWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jruDCTK9; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-506a321cc53so66075101cf.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 06:16:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772547388; x=1773152188; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SN5gEyJ3CvnwwkSktZKIQYQ3lN+9NI4Pr7f8HGw+b+o=;
        b=jruDCTK9psKhqIPBaHVzjUYt817UWNLRW3uWnQBih5DaWHVTy/vkdmLZAavMLbCaZu
         emPzWCT/BUQ9IczRzgDAo2nNwv/TGfm8BpYdnTEYpFOORESRqAED7PD39XvBv1G/1PMu
         v6s3v/rJbicx0op9m+wQwPaByvo3azmW64RguH6McdKJx7KLUfu6efO+kbJvwUucKbZy
         +2WRLbJpe9K9sbhKkFmgx0lpwx0ZlXqyo8Wk7ObsazhNh3IWTMigegIuJWf/u6VQGo2i
         9W3nbYZfREQ/Gxr6Sf/jwIMWXrfX7uri3rXsVejjQ+56dHwJ1CTh2r98Q40YjeEdAJl8
         MIpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772547388; x=1773152188;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SN5gEyJ3CvnwwkSktZKIQYQ3lN+9NI4Pr7f8HGw+b+o=;
        b=FX4C4vWET0MsEoIZy09iQdv3B9iAWD1hWyIyRrV5u5Sre5ms0OZdYZ6biC8ZQKRg7R
         BxaYZaNLNYDH3i+dKvIHYHG8pLbQuerkn+62Fb9YC5i2oO/NsCRi8tdeVHPCYCDtc+6O
         c393TOKDxavlA8ZrG64MCkF1pDaKjjeahEvrZ9+XK2mIsdBga7ZQSIihPej9yOze2rdH
         s1btBuVy26if9pN658g/ewWCbqWIAdFVBAZDzCxMuV+Q/TUqabNXLUJs6zq+ZWG+w3Ps
         HkLJwJBCnJ+Q0y1N1bDOKq5yZPi1Kqh7V4qpWaJQvUwEfuRCFHQOXVuIogPOJLxoxYuG
         p93g==
X-Forwarded-Encrypted: i=1; AJvYcCWtJbagghmv56kG6vDgYuIjvkvrn181GuXF3GFKRFjWYNA+xHts1RPZaymbC84mwX2XJzT35VUC0jAs@vger.kernel.org
X-Gm-Message-State: AOJu0Yyo9HbBk8M4hnXZsrW3W6AVyxaZsiLsWhO4SDU48uZfRcoLSxG3
	UbP1ipfO7SfemRFiTNIRmO1anEk5lZr28oafmSJcKAVzhKypBsvW39r2
X-Gm-Gg: ATEYQzxhjJFjX7QE3AE3+vVv4SJjk5LarmuN9HSWJdJb0HdWTE5PBK2lOEtfc+TBVmX
	fMgQk0p5UGHzuUx9P3S22k3uNYuLe1JAEg1wdSACaKdbNL5XDaHNpNm60gP8TuByW/Ja2WYTK1P
	2rNnakffWonUmy35hBYZhfYnhl0I+lc3KI4cCfCfcxglCmOWHV/WppajH5yP9W2eOfJH9H2BkZk
	ZghzY+JwW1L58jUfRA22Sn9qOXJQGe6pdKYlKcfCFuF0ObZ0dIAiTQezZUSapVBk9ZyXWJ1xBjd
	YcNKKjgY3MCVd5xiU5ot6WRWQuFqHeF0A8xqhzBXpHy4+oSzCwSCp6a1nLidzGh20uwhaRMEWMw
	sRcresG7BO0jwJB6F9eVrdHtpvS9/1/0S8WQrpBv6Z+mOFB+AjKgVte3o65VaXpPmneAqKm/LRP
	Xwp5fmUS8ALJJqM6f2lE3Q8o9eRd/Zog4vZe+2J4bDh8bGFDo9Wkoi7FpYr4ZSEu9eaqt7Hzu4J
	/xv2VUr+3Pkk0EXsS7pivvRavvCYyVFHCbKSfv2ePgJEDacL+I=
X-Received: by 2002:a05:622a:1445:b0:506:6ec8:835 with SMTP id d75a77b69052e-507529bb500mr199466901cf.54.1772547387868;
        Tue, 03 Mar 2026 06:16:27 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com (24.206.116.103.netskope-rdns.com. [24.206.116.103])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50744ab3d7csm129120271cf.20.2026.03.03.06.16.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 06:16:26 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Tue, 3 Mar 2026 14:16:19 +0000
To: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	rodrigo.alencar@analog.com
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v8 02/10] lib: kstrtox: add kstrntoull() helper
Message-ID: <qcloiwjlbehs4yyuttvrt46monh7isef4d5nzuwlaby6uxfael@j3trvc5jwosy>
References: <20260303-adf41513-iio-driver-v8-0-8dd2417cc465@analog.com>
 <20260303-adf41513-iio-driver-v8-2-8dd2417cc465@analog.com>
 <aabm23jCikXs1l6F@ashevche-desk.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aabm23jCikXs1l6F@ashevche-desk.local>
X-Rspamd-Queue-Id: 0D2EE1F161D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270555-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On 26/03/03 03:49PM, Andy Shevchenko wrote:
> On Tue, Mar 03, 2026 at 01:27:07PM +0000, Rodrigo Alencar via B4 Relay wrote:
> 
> > Add kstrntoull() function, which converts a string to an ULL with a max
> > character limit. The function is an alternative integer parsing function
> > that does not require a null-terminated string. It becomes a better option
> 
> null -->  NUL
> 
> > over simple_strtoull() or kstrtoull() when parsing integers from a buffer
> > with custom delimiters without having to create temporary copies.
> > The function is consumed inside the implementation _kstrtoull(),
> > promoting reuse.
> 
> But this will not properly convert 0000000000000000000000000000000000000000100,
> for example, if the max_chars say set to 20.

Why would I want that? truncation will happen in the case and the value will
be zero. max_chars can be zet to INT_MAX/SIZE_MAX if you want to get 100.

> Also kstrto*() have a common idea behind to consume the only \n and allowed
> digits. This (naming) doesn't fit into the kstrto*() category.

mmm ok, but include/linux/kstrtox.h is the right place for this? how about just
strntoull()? I feel like a safe_ prefix does not make much sense if it is
only to differentiate from simple_strto*(), which should have been safe at
the first place.

-- 
Kind regards,

Rodrigo Alencar

