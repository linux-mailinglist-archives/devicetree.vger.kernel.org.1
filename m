Return-Path: <devicetree+bounces-259678-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YI8FGuACeGlPnQEAu9opvQ
	(envelope-from <devicetree+bounces-259678-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 01:12:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 278968E65E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 01:12:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8E4AD30065F1
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 00:12:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 636C7F4F1;
	Tue, 27 Jan 2026 00:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WpWJy5uO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F764A0C
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 00:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769472734; cv=none; b=tokSQYj6pQtsMM/CqHpNYf9d1pQXS2nqkQ9WTPp2CdvH0nm5S4Psp1NVFBnh929cunI4sFPADwQc9Ego8LEQXqpVxVQMzMHrP3xxElP0JrIDKQ1Y7NbLC0Yide7PskXUyp9DGN77ZpAbD6ddRkrCHMdKN+a6W52uoYrwAbNKl/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769472734; c=relaxed/simple;
	bh=fUnA8QeJNxiXGLmBnqtbom0ribI0bLlL9/EJmzuvgb8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OQidCnC77rMkn9uPbqdbO2/K6w8hisBoSWYX5gll7xJPGsEmaH9Z/WUc/vu5fGgACGdxnQkv8r2lS74wlhWZMFCGdUce0tqUVmLMGcLkT/T8eCVo53A3FdJMeg6/2qD2wEEEWMntBkffRAj03Ku7roOWoGOfTI1ThzAREuwqK18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WpWJy5uO; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-823075fed75so2787421b3a.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 16:12:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769472732; x=1770077532; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tdeNfj03OLOeVZiroH+KebZgYfGGMy+Kndtkeom9LnI=;
        b=WpWJy5uOtQkeu9j6x+4L5B4fGDDBiXQi/rl7vpOGPLdeE7ktbHKTvFKrwypQWBQneg
         BJle8K/HhLm3QGizhzbaAYPMLCLWIlAOBuCgcP4A5giJYhSpy0VnCIH9FNjdfjS91fYC
         lqclt7pk9anl3CgKLar+BnTqcHqOQyh74Gt11fd0GEPkWa4DhusALovD6gcquAKyBb8/
         hjiZhP9+6htGiTmsL+jCIs4Fl2OeETHlzoO5/9H7R65GIz7A1vpgwGPWQPuS6FHMk4z3
         91Q1MQ8rHsPLnX24XjK+0J28uSrZj6GhmcqkU8TgL+GmmPeCamyoAsaMKGBwXPxUxYhK
         5jOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769472732; x=1770077532;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tdeNfj03OLOeVZiroH+KebZgYfGGMy+Kndtkeom9LnI=;
        b=fyZb05x/BBNJwZ/diG9fxwcE6v3Sf9rRFxdymdnVSTZH3QDSsrfN6KOGpmkML+0TMu
         lD84BLJUtoOdI/j2e3E8FfskqZ68i9Yut8VZHSmjPnGxM/vadRM4shjqd+UtLxidX4/y
         DnYMp6VvDA/WjhAkm89LMhOdircDuOcJ70m3P06bGXUC+aOabEn3WeqB3F9LykenhqZC
         +ujpDOJ9YeKA8hYSnEP/LG6MrPJRiPem031MZ6TZDuBbB5G+41h/XFMGQkg6+K6E6nXc
         n/rC83twCqyIrBaRJYwv/zmuHBlWu4IG0w5JlGi3rwz1SZPYvJ24w7lZpJhIkEnyFss3
         xUQg==
X-Forwarded-Encrypted: i=1; AJvYcCVBJjzdrCu4UYZsYKHOkd9YHT1XZEcClW42RctoVGFMDW0qf3+zs4AU/YpvY0c0gVx0EYHXXcm/gDsK@vger.kernel.org
X-Gm-Message-State: AOJu0Yxt93VrbX21h6X0lWWW4ccUk/gjxXi8Ncpb/fRKIupoUFzvwgjH
	g1PJT8dHusqiU97jpPdqNchoTfVbik7h6QpIMVKBHb5nqZmrZ0KCGfXJ
X-Gm-Gg: AZuq6aIOP1iHGEI7flpKs24T9szdQCw2B5ALdgPm4zIT3/5mb0Te/h2KmRj/34xt111
	uBtBmXoHSkjEEM58O2Fe3b2XQ3OSimmeAy1EQjn84YlthqZ9IdWZkBLdSVpsCNx+PxlW+nKOT8O
	IneACd67AEzqtDwVkYlfyIUIGFZbz8RcdhFhwD9gyoSnlCkuUqVo8Z8BLmPpCrbPPHatBeTDCy+
	EXw/4LbXFZjLmuM0+UA+z1ypySpltJSxg2qgwKH77+cCC6P7I98g3G1Vjld3dkGKtcwGpAP/vQT
	JLnTCrJqFq2JgglAwQicHoKvRE1uUTW0vhIGHBz35T32+1vldQUd2iOL/5GoILpc30RAzMVZCBU
	nQcTtzWYySvcknrD9ijC89zbEwsAWbrByztzFpCaC5ogN8fc6mT/oOiSEabf+R9AOu+uzObLQe4
	X6QuPvvGU2SMMAchnJ9o/vPmGJxvWO35Q/O9c=
X-Received: by 2002:a05:6a00:1250:b0:7e8:3fcb:9b05 with SMTP id d2e1a72fcca58-8234129e15fmr4907235b3a.27.1769472732308;
        Mon, 26 Jan 2026 16:12:12 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c635a16a106sm9216220a12.15.2026.01.26.16.12.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 16:12:11 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Mon, 26 Jan 2026 16:12:11 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Charles Hsu <hsu.yungteng@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 1/2] dt-bindings: hwmon: add STEF48H28
Message-ID: <a5694aae-0740-4336-8980-5699d367c9be@roeck-us.net>
References: <20260126063712.1049025-1-hsu.yungteng@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260126063712.1049025-1-hsu.yungteng@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-259678-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[roeck-us.net];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: 278968E65E
X-Rspamd-Action: no action

On Mon, Jan 26, 2026 at 02:37:11PM +0800, Charles Hsu wrote:
> Add device tree bindings for the hot-swap controller STEF48H28.
> 
> Signed-off-by: Charles Hsu <hsu.yungteng@gmail.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Applied.

Thanks,
Guenter

