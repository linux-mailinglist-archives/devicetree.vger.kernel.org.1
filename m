Return-Path: <devicetree+bounces-271007-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MWzDDu0bqGm4oAAAu9opvQ
	(envelope-from <devicetree+bounces-271007-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:47:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A87321FF42A
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 12:47:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 90C6A30C690F
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 11:41:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 551103914F6;
	Wed,  4 Mar 2026 11:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jqi5hMbx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2045439185E
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 11:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772624509; cv=none; b=ZgNKvkwYj06rwkp2uFomfTiAm1PfvCEhDUXrB5067weXvY+9nSneQHOes3bUY7rlmmidAqN0mkz0aLeOD5Kw8cdffQ7f2wj9g02GoQlWfL6yluu1qVrNqfYGsmMz2D7x7DRPoNbQ6Jhs3pQ2E7nLJ+bloMWqpZcyvLP8srPmi4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772624509; c=relaxed/simple;
	bh=4H52RiUgfh21ZFPsHyoianCiAR34V0Nkw/EF+33bfDc=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MVygBwDlQZHEB3M8dSWrdpL1oO2DpgCnPjZ4XqVYfMmrSLWnCs+nWaLjtKUbTwmNsiwPhoEvhy2njPOzPq9koE+j+jSoqy0vfWYbGILceVFwKM8AUqYwwa7cuC6rIqkmna8VMvYRN5+ZD22OdDR7kfDl3C7eMedpm5VTvpXwSts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jqi5hMbx; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-827307b12dfso3598441b3a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 03:41:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772624507; x=1773229307; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fcdRETdlDQ9rJqwe5hebX3Cr0LcEt1jHyO8LM3OIebI=;
        b=jqi5hMbxNpHad1IIlLjUddUd3GhGB3jpQhsx+itjLrz05ii4OEvXaL63ROZemRhEZc
         DVsTK2M17aRy0srwahqnkX078oYykq3hHdo8DgSWXsRInt63UK0E9d+pWp4fQAX3iAzW
         T+QMlh1x8uJVPS1Zd2JxUf1fgAoeq6d603Xtq6GnSvJ7YhUAPITAE6xgHcOtB3YLkahl
         oHGxfalRcdh17h4JVni/dUAJmEbuFxnhjKRthjd4cugNNdFfB51e3w8c49vn6UBumneR
         v9Q07ZDOzBQJznY4mrpq9C5p3mMBPfl99axSzXAmACWZDuQfRX3uQaJ/PAgiwh6nYlXX
         7Oyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772624507; x=1773229307;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fcdRETdlDQ9rJqwe5hebX3Cr0LcEt1jHyO8LM3OIebI=;
        b=YfQgYZA6fYm6CNyUljjucqukTlwa1/VtTHKYttByi+fktpONGStMbjSJvs45md+TBu
         ouIXrVpy6xD/YLJvdek8a4WKyJsObIwiQUihWE2zy+7xzE+UlD2tC/sp68KYGjlCSAsQ
         Qx4kHtq3LTbblXwmDo6F8qj6iftZscWR7vXQfQ6KovlAxNS0TeEqSOlDtQxFPq9HnyDd
         OZGxhhsdPtYdNyDVIikMxAxHnR21GfPZDJzG6Sm83gL8nPojQv8UGv9sUAFFzj4r+sZJ
         C9f8Vo8uviqqp2vhUwyLGMeuXS6EMQBie+2WCg0Wz4wRGLohdwuFsTEQgzzfbvs6XRiE
         zdoA==
X-Forwarded-Encrypted: i=1; AJvYcCUkGo2xoaX/L4CIQ7tBiiOa4LZaBm4w74zY7BSBeftmHLwhDzE4UOFoirdVplOzLue4OfW7IN+lbY2B@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2Xi+NTsLorYSVoJdonajAdbkdMDvWXv0FcYOgtfETeW4MwZwi
	0ISckDq4Bt6LFp3pUI7+ZGD7YUHmapvVoYPZxQwl2WsYqZVLCbZsc7iv
X-Gm-Gg: ATEYQzwLAfjrBwuUlpNhCqW1hYs/3s3L5xNiFXr4pAgnnPAjr+wo/+P2nIMMQ4w+V52
	CwPwpuCCVOt77zIRCHCXGSXmGQSb2VOeDyw99ZqZSxWPvcMikhy/1q00plXL7b7onE4ZxDnsULY
	qK+6u6o80Y3W9pXRQPOxrW22fRQwWjM9vg55nLOiLz7xp1xdg5YlPThgjm4Jlmhr6S8Jo8rE9Qq
	+gUvuRRj61K8q5gBLAhrwhpsbKa0KmJ+6KQcWkpnRynwsUT9/2ZXKQnR+4p2kNYb/xeXlyzoDsj
	oCx5sBdmagyTSnksL8Qhx0PuWGH6beITC52gNDVq+YHF97uvaBbWzdYEMVdt0aepOS8YASvb4FW
	FR8bL07h1UBVpVB8ftrZv/29jP2SEyocwUD3cMMQUVm9lqecNWpAepLo/9ouX41+DIOvLE3Ghc8
	Sp/ZxkDZM9sDNVcHbXx/4i6z+qCHbp7wFc+NDGS9Pg+Myw0+NKsMYG+b57UkvwWswQzJi7CBxjY
	vQUfj46e3R3t5++JKR9p9d5LqlVP/G4RTAvraOKwXc/FXwuh+bWpJSKc79SoQ==
X-Received: by 2002:a05:6a20:549c:b0:394:62e0:1b98 with SMTP id adf61e73a8af0-3982d2821b8mr1657671637.9.1772624507474;
        Wed, 04 Mar 2026 03:41:47 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com (24.206.116.103.netskope-rdns.com. [24.206.116.103])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73790f881esm1449862a12.10.2026.03.04.03.41.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 03:41:46 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Wed, 4 Mar 2026 11:41:29 +0000
To: David Laight <david.laight.linux@gmail.com>, 
	Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
	Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
	Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v8 02/10] lib: kstrtox: add kstrntoull() helper
Message-ID: <6et7t3o6fjiinpkvpsmoxjhp6edn23dgclbulaxg5paccdotgp@amtf33da5dhf>
References: <20260303-adf41513-iio-driver-v8-0-8dd2417cc465@analog.com>
 <20260303-adf41513-iio-driver-v8-2-8dd2417cc465@analog.com>
 <20260304101655.620df7ee@pumpkin>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260304101655.620df7ee@pumpkin>
X-Rspamd-Queue-Id: A87321FF42A
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-271007-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
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
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,analog.com:email]
X-Rspamd-Action: no action

On 26/03/04 10:16AM, David Laight wrote:
> On Tue, 03 Mar 2026 13:27:07 +0000
> Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:
> 
> > From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > 
> > Add kstrntoull() function, which converts a string to an ULL with a max
> > character limit. The function is an alternative integer parsing function
> > that does not require a null-terminated string. It becomes a better option
> > over simple_strtoull() or kstrtoull() when parsing integers from a buffer
> > with custom delimiters without having to create temporary copies.
> > The function is consumed inside the implementation _kstrtoull(),
> > promoting reuse.
> 
> If you've got custom delimiters use a function that returns a pointer
> to the character that terminated the conversion.
> They save you having to find the delimiter as well as taking a copy.

understood, how about this prototype then:

const char __must_check *kstrntoull(const char *s, unsigned int base,
				    unsigned long long *res, size_t max_chars); 

to be used like:

	end = kstrntoull(s, base, &res, INT_MAX);
	if (IS_ERR(end)) {
		/* return or handle error */
		return PTR_ERR(end);
	}

the name itself is still under discussion.

-- 
Kind regards,

Rodrigo Alencar

