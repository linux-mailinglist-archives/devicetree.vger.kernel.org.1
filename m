Return-Path: <devicetree+bounces-278245-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AFj3BeA4vWkN7wIAu9opvQ
	(envelope-from <devicetree+bounces-278245-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 13:09:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4A52D9EB9
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 13:09:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E331F3022462
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 12:08:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADB853A451C;
	Fri, 20 Mar 2026 12:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YuJihI8x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DEB3A8743
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 12:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774008526; cv=none; b=aNyekLaS9ogOJ6ktOPBDqtb1HjabJZSU4LYQj/nDPTXA5uHJdJzF+clfCKFbTmxgw7r4zw1Sd707qIXz1r2X9XdjtQChnPS7Sac7FNg/bADT7yBZABDO5KlSA0+7g/nsljCOWcgE32ZyPVi9VRJrsbU+FqnFaBeKQJGyoz8yWoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774008526; c=relaxed/simple;
	bh=sTci/8J2E+epYvecHi5mLJYOgrVmwPgaF51deVVEfT4=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E5L2/scjieYV45ldjvbCid09WUh6/lP9WADKMPrhllwEDrr2SAOFr+2y1CGSGrEiNJ57N/7H0O+EGgkGUeYGF6bpJi1BxMK0zRpoWasnFP0OzYCCKCr6VBZ6nRihnsezxwCE1bF1ej1hvvt7X4jWatSbq7AwGG9wwaBpJj3bk0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YuJihI8x; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-486fd3a577eso4497605e9.1
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 05:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774008524; x=1774613324; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1Gvss4kcUZITGQy/ngnNiEgdp54uhtse3hTZBF+Kteg=;
        b=YuJihI8xQKNwIw7QKDEWgHzRv3tYleDRqb3Fkc4FBbMWfx1MfGVz5FnLbEMJdGkNOc
         eMX14PmWOeVapcWiA/4GXjnzhG0S69dg7wNgSQart8Th3lty36qDejCWvVR/6bstzHAJ
         z/lVd/T4OYho15dYGVTRbWinN4kbLr58VJejbtR4FSjzZVXvgNdOUdGHnno/HGCcmKzS
         OCS6NPhYIODadqSec/o/BZ6mhJPFP3zqIhP2N/Bjx58nakhvw5PNSmQGEnCkyiHy0UKs
         6XNQYQpioUpdMCTEHOI3vn6METtUVxLrWWQuPcsW1l2arF54tgYhqvrP+GYSnXQmP9ZW
         sngQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774008524; x=1774613324;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Gvss4kcUZITGQy/ngnNiEgdp54uhtse3hTZBF+Kteg=;
        b=LQAXMcCGN+7shDRFf5fhOwLHJjE08tMlhGm6PeHLTtLRoth4Fdliv1C+9hvDqO8AKT
         YmTeDeZ3PkMe45nynVMfqHOOvIYk6I2cbE5VmT+H5v5qqaMZNk50OGkSf0sAWUTuTI5H
         PZi8oYtcjHu9C/he8QJxO7pjduqgA3Q+oqAQgN//GTOUVYv6vBR1ZE3du2kY8TD5Ae1/
         vtuxfREZGcPPIT8vyVccQmSPD/W5dYN8hR3X4vYy/dc1ajEkRKB217MdmddhmJfQ2aAK
         MlzOb3sIO0FvJzNYkmtcbm+hc88ZyMDtWSbHZEsfOb3TE1EyGFzpMn9hxz03zoLyHEq0
         Ww0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUeu2UXCfvJ4OUzv6z7awJ8GW5c8Eyd5cNTzAtisBcm8CmuMhXGVaOsAHDo28692kvXurzxgViLoCtC@vger.kernel.org
X-Gm-Message-State: AOJu0YwlbFvpR1bSl76heyVq13s/4z9qVE6ZdkY8Lsi2VN8IIjL1cH/Z
	ZnZNwQ21HYpLTahY0JoD/FIJ8yppuGTrnSUG35Gz5oDX+nNLdtUhIzOh
X-Gm-Gg: ATEYQzz0EhZA4Efk0GgfVuAp06f887iz4EIbK6bdvIJ2t5KbReS4/JyWKjD7dZQ9S3q
	4U+FtAqB4ej2KOdon2RywVRqPJAMNqsZAVpgR3UMWHd/jN7vByNqcD8AX2QGxEbCJch6ODexDfk
	x1vnlKI5nmkP6s+Qma84K8Nm8QV8Ie0c/GbFsRJKjzSV6z40WbcVAHp0GaxVvyfqYhoDWQTtyIb
	D/6b7Uqy/oXodRbAG1LkYxDfzcTPwTnRrI2RQLALvPvf0G6lY7Q75gq2EtjeGkhewJhpC5WDe9W
	htAYGN2bi1cFgD1BhlVvIOU76Tm265NOSe9ptm37gWgf3hmMYFi0qnzrj4JpryQOgbxasum8KF4
	winDKerOTZBr4uGmXI5zyJ/qrKataQ5CWHVOR+fozQrP0fQ5xZeD20IFSKgtDK0w01P8sIlzpMf
	YNwQ6uESNBlU6IW0j6ynAO5z++obS5g3/RReOva2F+H9dXFt8Y6Ng6UMMi0qjDrMbYaDixca9jc
	8J92H907xOQ8HY4zpWXgLhN3qhoDywx6czngg7Pf9jvJdsXopE=
X-Received: by 2002:a05:600c:4ecd:b0:486:fc61:541f with SMTP id 5b1f17b1804b1-486fee2e5b4mr40216655e9.29.1774008523188;
        Fri, 20 Mar 2026 05:08:43 -0700 (PDT)
Received: from RDEALENC-L01.ad.analog.com (24.206.116.103.netskope-rdns.com. [24.206.116.103])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486fe889652sm22927885e9.2.2026.03.20.05.08.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 05:08:42 -0700 (PDT)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Fri, 20 Mar 2026 12:08:41 +0000
To: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
Cc: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v8 02/10] lib: kstrtox: add kstrntoull() helper
Message-ID: <ixvzb5mni2lhz733f4fvvzhozmpezkx5s2q7sash3wv3u2g7ov@pgs6pve6kxrq>
References: <20260303-adf41513-iio-driver-v8-0-8dd2417cc465@analog.com>
 <20260303-adf41513-iio-driver-v8-2-8dd2417cc465@analog.com>
 <aabm23jCikXs1l6F@ashevche-desk.local>
 <qcloiwjlbehs4yyuttvrt46monh7isef4d5nzuwlaby6uxfael@j3trvc5jwosy>
 <4mtdzxfj656sjr66npabfvrr7yd7q26l2unhsihjtniz4ossfj@g3qnzonoary6>
 <rygken7oujyoupeanrdnl7r7smesa7js6sn3jsafbajc4sm3jh@adeslfqwwf3x>
 <ab00clb7LL-bmJWe@ashevche-desk.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ab00clb7LL-bmJWe@ashevche-desk.local>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278245-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[intel.com,gmail.com];
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
	NEURAL_HAM(-0.00)[-0.892];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1D4A52D9EB9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26/03/20 01:50PM, Andy Shevchenko wrote:
> On Fri, Mar 20, 2026 at 11:16:32AM +0000, Rodrigo Alencar wrote:
> > On 26/03/04 10:02AM, Rodrigo Alencar wrote:
> > > On 26/03/03 02:16PM, Rodrigo Alencar wrote:
> > > > On 26/03/03 03:49PM, Andy Shevchenko wrote:
> > > > > On Tue, Mar 03, 2026 at 01:27:07PM +0000, Rodrigo Alencar via B4 Relay wrote:
> > > > > 
> > > > > > Add kstrntoull() function, which converts a string to an ULL with a max
> > > > > > character limit. The function is an alternative integer parsing function
> > > > > > that does not require a null-terminated string. It becomes a better option
> > > > > 
> > > > > null -->  NUL
> > > > > 
> > > > > > over simple_strtoull() or kstrtoull() when parsing integers from a buffer
> > > > > > with custom delimiters without having to create temporary copies.
> > > > > > The function is consumed inside the implementation _kstrtoull(),
> > > > > > promoting reuse.
> > > > > 
> > > > > But this will not properly convert 0000000000000000000000000000000000000000100,
> > > > > for example, if the max_chars say set to 20.
> > > > 
> > > > Why would I want that? truncation will happen in the case and the value will
> > > > be zero. max_chars can be zet to INT_MAX/SIZE_MAX if you want to get 100.
> > > > 
> > > > > Also kstrto*() have a common idea behind to consume the only \n and allowed
> > > > > digits. This (naming) doesn't fit into the kstrto*() category.
> > > > 
> > > > mmm ok, but include/linux/kstrtox.h is the right place for this? how about just
> > > > strntoull()? I feel like a safe_ prefix does not make much sense if it is
> > > > only to differentiate from simple_strto*(), which should have been safe at
> > > > the first place.
> > > 
> > > Also kstrntoull() does not really match kstrto*(), as the 'n' is often used
> > > to indicate a stop condition on amount of characters, which would not need
> > > to require any termination character at all.
> > > The 'k' prefix was add to 'strntoull', mostly because the function is being
> > > added to the include/linux/kstrtox.h file. Other names I could think off:
> > > - bounded_strtoull()
> > > - bstrtoull() - 'b' for bounded
> > > - bstrntoull()
> > > - strtoull_bounded()
> > > - strtoull_limit()
> > > - safe_strntoull() - emphasizes overflow safety over simple_strtoull()
> > > 
> > > Extras considerations:
> > > - Single-letter prefixes (bstrntoull, lstrntoull, etc.) are too cryptic
> > > for a public API
> > > - safe_ prefix is subjective and doesn't describe the actual behavior
> > > 
> > > kstrntoull() is still my first candidate, other than that it would be
> > > bounded_strtoull().
> > 
> > could you provide more feedback here? Thanks!
> 
> I don't know what new I can add here.
> 
> My suggestion was (and still is) to have something in *_strtoull() family
> with additional checks added, but no limitations on the input string (i.e.
> no max_chars).  If you look at the printf() code the max_chars was added
> solely for scanf() and has no use otherwise (yes, I know about and aware
> of initramfs case).

but is it include/linux/kstrtox.h the right place for this?
*_strtoull familly... then can we just expose simple_strntoull(), which is
private to lib/vsprintf.c, by changing its prototype to expose a error return?
In my case the limitation on the input string is useful for the truncation of
decimal places when parsing the fixed point value. It would avoid a 64-bit
division.

-- 
Kind regards,

Rodrigo Alencar

