Return-Path: <devicetree+bounces-270962-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMmyE1kDqGkRnQAAu9opvQ
	(envelope-from <devicetree+bounces-270962-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 11:03:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B31C61FE0BD
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 11:03:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D054C30584D3
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 10:02:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C179839F188;
	Wed,  4 Mar 2026 10:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IWL0FiaJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51CCD39FCA3
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 10:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772618556; cv=none; b=uu0GjI2dQB5XVv8fL9YHd+pQ3/FXrnbkb0PgnkWTq06yBowbXn93mK9SyfyawyMqsM+/xrTERqdgAyglplSm6xIsRwT/3hvZkjsVs8FIoxjebXK69qFsIcj1SamSriURoBDMoY/xQec/KtP13XhS9mTj5ckKsGjsf9x7Mae+mPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772618556; c=relaxed/simple;
	bh=qhAVk9CexrUYHYaDVmDxrpyIR12B9xt6IA/j3lGJkZ0=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cY9BqtevzuUavixETK7dQhKIwzwbGb/22R9F9KN49jIFqYMIXkGJqG8FctiAh738lVYLpDRiGl25GD8f/zVPDnjuZBnN31LiFS/GstSEUxoyI+g0Wt/8/BW0HiIMV8to6IQRfbflc9pPU1tMKueTpaldIRGrdH5NRZLiycXpqE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IWL0FiaJ; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-3591cc98871so2923464a91.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 02:02:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772618555; x=1773223355; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dvlbpdH9GKnriElYMJPIHm8iAfnXNmYF7p+RxMZw/3I=;
        b=IWL0FiaJIRdzAycFBnwCwwWOC5Dp9YEbqLq7QI0C2+doWzSu+SdFnr+f8KlTM47vfY
         PuvFlsGxYO6OkGxCHSVhXC7nO2uRQp3GJ65HC/DCcqAvDKZeFxIxBK2FrLCkiBTnbk6s
         DlUNd7RPddfkC0tBWF6d+0L0Krbw6Qg/XGnOMB+YmhI+aVaVexv0Y/HAsO4HkzKQJ+vf
         63L0Xfpfr5FvJt131MoC28yEs+9LYuo+MxZDHd/qLjtCnK3EZZ9pKjeNVQZ0S6Pj+cDW
         9Su8KPDS2VwmpS35fSEq2myoi6CXbOJvoeUlUKk+KI8dpWVPZx6jcrNCxXMZ9BK+pozK
         J/yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772618555; x=1773223355;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dvlbpdH9GKnriElYMJPIHm8iAfnXNmYF7p+RxMZw/3I=;
        b=Byf3bnmH/Hv/KgbmdXhImtmDhGNBIynlxW2G74CF2c65PgROcjK0OcrD7+Jrw/n+bS
         ZipKTpQQe2ib9+vAot2QxDEqXOWLJGJUoDLi92Bq83y5XF/1zUFTAr39Tc7IIBfnp/Vj
         Dwu9knnpEqRRx+eP0ceaCEHj+QztBFknunYs4CjZU4YavOhUS/iItAWqCx559Y0f1w2t
         HtpPy9Wsq+A4WQGRIwhjs/pnvvfW6KHTfKnJxyplFY6lAK7mdC7tBLKY4boD7cj2AJu+
         +rRARvCO91v/frpVPL7jgv34k8AgyRdFdoKlHAjNQkcIvWKbqXU+2xm/foFuEoGJ/uXW
         qPqw==
X-Forwarded-Encrypted: i=1; AJvYcCWESQMzwKACwMyyP1n8/IdC2L7O3BApFJ+VbdEBuBJzfWM+S/X+ij2f+VsZKjIsKSwkOYtvFG8L83/q@vger.kernel.org
X-Gm-Message-State: AOJu0YwSrd9y5b5yHmeERU+e5j1i7lzkKRRX7tF7FIn5B1sN1zCVJPS6
	FtJBZJ2WSp5XkYCFGC0JDldp3OaA1nAmO0EECE0hg0BXNeP4FoQdLnjuJ7SyKKgH
X-Gm-Gg: ATEYQzzQQWpDqZvssYIZPICPodP8MWneLU2Ti5skbzrVQR5uqAN1q/sHBcJcWOzdREX
	dDMFvzwelI9NMFmI7ihCOwhPHZcaaNltyuDVBF7xIlV0Y+X0uiXaU4oml7wDaVGRdvvMeeIuslw
	/36z8bOLqzB+0sxmMLgGaEG8SYnSR7to5IO+a38VLN5FyHWuMGKfcQ8+jaA9xQmMOn3/m2Z+M3D
	xOgrc8hd5o336BM62tSVjlAVHw0LatuCfsEtZPEiQI3mQmdqE++UiJZiKArErMTjrSBPmG0Akw9
	2yJj8EPqH6PzGsdxN7KaPBch1S9kfgb9jfqD/tMcmsV8ubUySVIPW8nFRF7NVnHZ77ROVYdnizm
	0e8P9YCUUB9NaKqGvCYt62JXYcv5XbLYNByG0xrQ66CHn3J2Q/Ef8e4/5zoTXktjyrneyEbZJ2Q
	8hljmSdInQlNuzgml+7eWb9t9bMzpGLyZkhrd55n3X8ql6rpUzurWGnm9b1I/p7BRghpeBMUS4U
	6Fwqw9fmk60ZtXZrGCmVa653edpG1OIxCAhm6u2jupvtzj7Jf4=
X-Received: by 2002:a17:90b:3f86:b0:356:2fc5:30d9 with SMTP id 98e67ed59e1d1-359a69ca6aemr1551111a91.10.1772618554674;
        Wed, 04 Mar 2026 02:02:34 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com (24.206.116.103.netskope-rdns.com. [24.206.116.103])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3599c39d530sm4611978a91.10.2026.03.04.02.02.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 02:02:34 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Wed, 4 Mar 2026 10:02:16 +0000
To: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, rodrigo.alencar@analog.com
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v8 02/10] lib: kstrtox: add kstrntoull() helper
Message-ID: <4mtdzxfj656sjr66npabfvrr7yd7q26l2unhsihjtniz4ossfj@g3qnzonoary6>
References: <20260303-adf41513-iio-driver-v8-0-8dd2417cc465@analog.com>
 <20260303-adf41513-iio-driver-v8-2-8dd2417cc465@analog.com>
 <aabm23jCikXs1l6F@ashevche-desk.local>
 <qcloiwjlbehs4yyuttvrt46monh7isef4d5nzuwlaby6uxfael@j3trvc5jwosy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <qcloiwjlbehs4yyuttvrt46monh7isef4d5nzuwlaby6uxfael@j3trvc5jwosy>
X-Rspamd-Queue-Id: B31C61FE0BD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270962-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,intel.com,analog.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.989];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On 26/03/03 02:16PM, Rodrigo Alencar wrote:
> On 26/03/03 03:49PM, Andy Shevchenko wrote:
> > On Tue, Mar 03, 2026 at 01:27:07PM +0000, Rodrigo Alencar via B4 Relay wrote:
> > 
> > > Add kstrntoull() function, which converts a string to an ULL with a max
> > > character limit. The function is an alternative integer parsing function
> > > that does not require a null-terminated string. It becomes a better option
> > 
> > null -->  NUL
> > 
> > > over simple_strtoull() or kstrtoull() when parsing integers from a buffer
> > > with custom delimiters without having to create temporary copies.
> > > The function is consumed inside the implementation _kstrtoull(),
> > > promoting reuse.
> > 
> > But this will not properly convert 0000000000000000000000000000000000000000100,
> > for example, if the max_chars say set to 20.
> 
> Why would I want that? truncation will happen in the case and the value will
> be zero. max_chars can be zet to INT_MAX/SIZE_MAX if you want to get 100.
> 
> > Also kstrto*() have a common idea behind to consume the only \n and allowed
> > digits. This (naming) doesn't fit into the kstrto*() category.
> 
> mmm ok, but include/linux/kstrtox.h is the right place for this? how about just
> strntoull()? I feel like a safe_ prefix does not make much sense if it is
> only to differentiate from simple_strto*(), which should have been safe at
> the first place.

Also kstrntoull() does not really match kstrto*(), as the 'n' is often used
to indicate a stop condition on amount of characters, which would not need
to require any termination character at all.
The 'k' prefix was add to 'strntoull', mostly because the function is being
added to the include/linux/kstrtox.h file. Other names I could think off:
- bounded_strtoull()
- bstrtoull() - 'b' for bounded
- bstrntoull()
- strtoull_bounded()
- strtoull_limit()
- safe_strntoull() - emphasizes overflow safety over simple_strtoull()

Extras considerations:
- Single-letter prefixes (bstrntoull, lstrntoull, etc.) are too cryptic
for a public API
- safe_ prefix is subjective and doesn't describe the actual behavior

kstrntoull() is still my first candidate, other than that it would be
bounded_strtoull().

-- 
Kind regards,

Rodrigo Alencar

