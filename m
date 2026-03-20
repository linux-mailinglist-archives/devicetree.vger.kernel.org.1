Return-Path: <devicetree+bounces-278232-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IHF5GOMtvWmI7QIAu9opvQ
	(envelope-from <devicetree+bounces-278232-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 12:22:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B898F2D9747
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 12:22:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5289331E629C
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 11:16:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A5BA3A5439;
	Fri, 20 Mar 2026 11:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gPQp4JxT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8861375AC3
	for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 11:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774005399; cv=none; b=ZK1h9aGgJWPNXLD/jIMLWeoJVOjP94LDEC+THJVD03ZIc7Q/HS0ANUv5TDtva2phxf1e/ZCZ0Gqibb1WqpTsho1O+k1gb++jEqEL/4hjnQ9mkFG6dOk1Es3A2Qs0Y1J3ZDhTnTWPkM4xbNXZZAvDvHaHPfVNY2Ubu4dm0Y4uATY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774005399; c=relaxed/simple;
	bh=MYuFIo5PKIOTB/+RPLOxw/oWCfZXFKo2lpXW4JtUSoA=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SvSrfKJ7tkHJpR7Vyqfy73k/hwKcDZkbS30I1nql8k3cfk3ifkR33cgFmeiAlD14L5LdfvbBwyQhu3HCY2HH0QZT/Mg227JC7UTPuTOzOdZDq+dwvYbXrgnkv2vIbWWqNzW+CwdnTdW3g8TTZUJfnh34OSKCoUkyXaZn0T8Pm48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gPQp4JxT; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-486fd27754bso10475935e9.3
        for <devicetree@vger.kernel.org>; Fri, 20 Mar 2026 04:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774005396; x=1774610196; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UU7k8y/47EnkOnpuLl67VB38/rE2A9EJgbrmAlOoe7w=;
        b=gPQp4JxTTiPDZ6X0T2sgvUUEj8pXY45paXdH8gkXVdFkQ5Qv9VEMKdbk1YueSxYWCW
         5ox2ygd8IPXdzlDmNvkW+iAMNziIZV1hKujUFj/fd9VMR4JYjjp03dzosdVyO3E0S6cR
         H1dGKzQL9+W5SXXXoXZtke0sF6V+jpK6bU0ep9UdrMru1qJu2IGRRK/t3JqX9yAQd5eS
         ej0Hn/YT/VjuD/IjdYbTW5VC+PGhbGJiHQfmPOZlW3O2PtXhQoAlj4BcJ+SKeugTyhnv
         voKg/rk0TCZ7Cw6WTrOrtYdxSuWVPSAm8VhYeerfbWa4TWx1V475YiP9c6npZ+uIFYzh
         kC6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774005396; x=1774610196;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UU7k8y/47EnkOnpuLl67VB38/rE2A9EJgbrmAlOoe7w=;
        b=b0aju2EBTvCO4KJV9RfdL7sEf93HhlaNHrt/bS28x+PFufxfDOhRUKm72oE7276R8b
         o+6lCap/2lfppEQ/ZVlLQwoNNh4acS27VzmnJndzNotOyt9Djz4CEw9GC86a20NVW/+6
         mzmeJZopQwHpaqXxpubcOUoIfgYMoZVP9F/VZdF5RSd+44qrJZnpTgjqUCu7fOlXteI0
         IqcJetzTNZf4s+1/dO+fFNbe261567HuMbeJdEHHCMBugPUXx+d0c6vou4Uvy/zh2bCI
         6azIahO2HxJQDjPo05Xq4Smz/2BMd3GyOQmrM/G4pHduVXpH+9h6idzJ4nTFEZyj/YdF
         7dxQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhltpI+Mi2kNceUNJ+o4nDIq7SKtHar3COnbC3rTGK37a9K34LiWzPEqJIRvYwKu690ZXJpquylQQ7@vger.kernel.org
X-Gm-Message-State: AOJu0YxafAnKWQwAlwevdotmTMF3wXkKH/Pe32N9o/WygRVEcX8wPmD2
	fnOyN9i7DzWs8uytFVmfpD0eugJr5fTnDZPzvLt6HW1ruhA5BDbDop4X
X-Gm-Gg: ATEYQzxZVqPDsm5PtVTRVAoGgDaV5YN54cyDs2+toH4yuKILbAimtiiODpgUALewblx
	2Gzxp1hyd555X1iMsLvC9Lzz+0GHjEAKFTXbsRaw1LDgM8d1w/3YoIzGqMw0D77IXzcpVR3YQg/
	T9s8efRuX4VBO/ntgAhHhfFigmMxrWbgcMvYlOx2t7jf7r7qEybUeiahIRQFdKNnYjIHq4yFECh
	9/F0ETWH99yx6FK4EhOUxV4Q+WvqosHlYbMSaBZumL4vZ3aSIAlXVk/mmEUdhwexucyFplpGJtf
	HgU8p9yMCXIMWIYTzOcBXjrG3Tx0YlXQgeSGrTFXQIapEGWtG9hKlRcJ1aZhR6RMnwcGkF4DXrD
	zFZqlfPBauxYEiaaQpcetpalIrKJ4Tgt3w3QWgiUkpaOl37/8OYvl1ZrqPG7nh7eZf+v1WBNH+g
	NAsf+eccxAVqlaHZxtcp9hboExqQkSTJ+X3p9nocRyNZLmCMUXqltByQRqHaEAnC4bUBl9OegwI
	yn3bZHfmYSzBf9+6/Oc1EBYvBm6IKGtHP//E6J88C3Zc7j/HDcPsLRKQwEghg==
X-Received: by 2002:a05:600c:8b61:b0:485:3471:cffb with SMTP id 5b1f17b1804b1-486fedd8164mr37626435e9.15.1774005395763;
        Fri, 20 Mar 2026 04:16:35 -0700 (PDT)
Received: from RDEALENC-L01.ad.analog.com (24.206.116.131.netskope-rdns.com. [24.206.116.131])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b647036e0sm5667505f8f.21.2026.03.20.04.16.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 04:16:34 -0700 (PDT)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Fri, 20 Mar 2026 11:16:32 +0000
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
Message-ID: <rygken7oujyoupeanrdnl7r7smesa7js6sn3jsafbajc4sm3jh@adeslfqwwf3x>
References: <20260303-adf41513-iio-driver-v8-0-8dd2417cc465@analog.com>
 <20260303-adf41513-iio-driver-v8-2-8dd2417cc465@analog.com>
 <aabm23jCikXs1l6F@ashevche-desk.local>
 <qcloiwjlbehs4yyuttvrt46monh7isef4d5nzuwlaby6uxfael@j3trvc5jwosy>
 <4mtdzxfj656sjr66npabfvrr7yd7q26l2unhsihjtniz4ossfj@g3qnzonoary6>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4mtdzxfj656sjr66npabfvrr7yd7q26l2unhsihjtniz4ossfj@g3qnzonoary6>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278232-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.894];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B898F2D9747
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26/03/04 10:02AM, Rodrigo Alencar wrote:
> On 26/03/03 02:16PM, Rodrigo Alencar wrote:
> > On 26/03/03 03:49PM, Andy Shevchenko wrote:
> > > On Tue, Mar 03, 2026 at 01:27:07PM +0000, Rodrigo Alencar via B4 Relay wrote:
> > > 
> > > > Add kstrntoull() function, which converts a string to an ULL with a max
> > > > character limit. The function is an alternative integer parsing function
> > > > that does not require a null-terminated string. It becomes a better option
> > > 
> > > null -->  NUL
> > > 
> > > > over simple_strtoull() or kstrtoull() when parsing integers from a buffer
> > > > with custom delimiters without having to create temporary copies.
> > > > The function is consumed inside the implementation _kstrtoull(),
> > > > promoting reuse.
> > > 
> > > But this will not properly convert 0000000000000000000000000000000000000000100,
> > > for example, if the max_chars say set to 20.
> > 
> > Why would I want that? truncation will happen in the case and the value will
> > be zero. max_chars can be zet to INT_MAX/SIZE_MAX if you want to get 100.
> > 
> > > Also kstrto*() have a common idea behind to consume the only \n and allowed
> > > digits. This (naming) doesn't fit into the kstrto*() category.
> > 
> > mmm ok, but include/linux/kstrtox.h is the right place for this? how about just
> > strntoull()? I feel like a safe_ prefix does not make much sense if it is
> > only to differentiate from simple_strto*(), which should have been safe at
> > the first place.
> 
> Also kstrntoull() does not really match kstrto*(), as the 'n' is often used
> to indicate a stop condition on amount of characters, which would not need
> to require any termination character at all.
> The 'k' prefix was add to 'strntoull', mostly because the function is being
> added to the include/linux/kstrtox.h file. Other names I could think off:
> - bounded_strtoull()
> - bstrtoull() - 'b' for bounded
> - bstrntoull()
> - strtoull_bounded()
> - strtoull_limit()
> - safe_strntoull() - emphasizes overflow safety over simple_strtoull()
> 
> Extras considerations:
> - Single-letter prefixes (bstrntoull, lstrntoull, etc.) are too cryptic
> for a public API
> - safe_ prefix is subjective and doesn't describe the actual behavior
> 
> kstrntoull() is still my first candidate, other than that it would be
> bounded_strtoull().

Hi Andy,

could you provide more feedback here? Thanks!

-- 
Kind regards,

Rodrigo Alencar

