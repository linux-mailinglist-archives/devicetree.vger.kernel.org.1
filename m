Return-Path: <devicetree+bounces-259072-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4JApLvGhc2lqxgAAu9opvQ
	(envelope-from <devicetree+bounces-259072-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:29:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7177778834
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:29:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 643AE3022574
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:29:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EC1931281B;
	Fri, 23 Jan 2026 16:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EEM7JZ5H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787262D374F
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 16:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769185765; cv=none; b=Ow8bIhWk4XiIXv23hTEJj2JWQVZQ7TF5dml1zCga+lpmP4ybWwLUC/4GgtfHE/q1kiuEzjOwuZb9U/QA7cY9BDf+F6dJXeQdPN+rCxsTXtBZP4uihI6dT2pwjydlT5TAE+69WPMBcdp0+IhWalf4B5f//eRiv9aL7S8Gg4LfJNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769185765; c=relaxed/simple;
	bh=9YwhNfvZiLBwgVJs7QNPvVaPoJadnja3rLe542TkwUU=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dq9vnaIkTRrvoTJcqNRj+KwF34pNUieRTmLMaii8W80XBdLn4dkzDdin0MfI4PzJibaQ1nZ5ehAU5ho7HS5uPEoOLlbXV9Z28EY5IXy2gIBrAFg32v0QSi7UNR4GG3yxnilIrgjGWK88wUh/EbaQvUr9QngAKJLuNuqNOjuX5eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EEM7JZ5H; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-480142406b3so16787955e9.1
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 08:29:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769185760; x=1769790560; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QUjaNwHvZaKSJy0kSWJZn5UqUMy6W277olMvwpuE7w4=;
        b=EEM7JZ5HNAgRsPim0gUfrEfE5RO+IaUX/1XdB7+NcX/vQlGxXTuf69Esh4M/9PAMYO
         1F1EPRBkgf6USVLPrcLe0FJN7dVMB8kznxaISNvdLs9OWfhjVtMRd9EW+TwzMQKnDVw6
         Z4o++TmkTH0DftUN7eI2cfmLYc+xb+lXY+iLveU9QTT0co2h6Iwp1BLOwVZutP8e1fA/
         U+l/obxJ0QfV5Ryf3V+Gpj5o0OVT+zTxAxcmGFkng7X2kjnalr2IyBIgsh8LK49GeSwE
         G8BcsxNBow8xJurLKGcSu/GkMPdDvsUH2zS7Ar9fmi+VpQ4akJffSazNsS9ybVHxZns6
         ZE4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769185760; x=1769790560;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QUjaNwHvZaKSJy0kSWJZn5UqUMy6W277olMvwpuE7w4=;
        b=qBtYg/ylVGD+GZkjbxDuEsPX0jhEkcDupY3+3XVN8+85IoMkA2is2XR/H0gEBJDqT7
         Jn/v0QQOUYd2PVJdJOtIo6CeudHoq0arr20bH2M66l4gIdukLaO4OEOEHkFCYkuCwy0p
         24hOxOVujNrmK0MAwbBQYtdBkKPfDpF7M1x9jmkb1HdLk2WHwGPwJutZv2lP+KhFb0/U
         dHIHpof4wk+9fyB39o9abzCZpmqCBoxASDX0oV4rfLCf7GNkn5baiBPNVO1c4C/D2uWR
         bujXbsl00CcBLIOg2mrCg9W/B/vGcXOu0LXDXzOGdyJ0ZS2SFFkcZ3ejhW/Xr6zlEj/a
         9auQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBBKrbHtxwOkRWq+BsJ4Zf1HUfxqEyaBvEiezxrG7XoC5J7EqRS4CkLPtmvBmhofwR8fEocZxuoQXM@vger.kernel.org
X-Gm-Message-State: AOJu0Yxtlt1Hd5fN3CHcXyoi5uJHgMFg45mT4yFTArwOh+npKnobDWCh
	R2DWoL5UWrTMCtUOOxzkmMnVR8PGB3u7nzhIprU0My2xBhLZYcrXsi6VVzS57g==
X-Gm-Gg: AZuq6aLZUeKzmppBpPlAvRbfgt6s6jN+2lOBW6xBjJ41YHFyxWBC07uxV48sne7KofS
	OuWla+xZZko/YBR3QoA4bW9bBa9t0g3lDC2T1EB5rISZRoD4H5DVRO8sxceCpCxlKSlglkco88Y
	CJYLu/29JwrYGm/lZ+W3ZWns+5C8akdJofQeq1uM3DQqw0Uxu7L0HdZ9rLBh+8rCBO7MNzHisUz
	/xU5P5lCsQixI0hB93nHnbsmJAwJM4ZexrfgZvOOT/t18KEkJ2xKwOMlEGk0+bE4JNfHVPIrfut
	fVAElXNfXuc3DM1YZfiFWz88msPplDiTG3XxeP9VytKF/XecVYDmxnN2IZHvX3je3vVs95KF9PU
	7kIUH7AI7DbfCnL8CNy97IKPxcS+WRkYpp8Pt1tqIOVWm4GhLfqu6O3p8Bfw4a7MWfObPDkxW8s
	T6O1ZiMihcIKdwyBiN+6/twxlVEwUKnuDqg0jRdAD8p992C/XHKgCWLSZo1n6/yIkJeXoJgAxQS
	f4c
X-Received: by 2002:a05:600c:138b:b0:477:afc5:fb02 with SMTP id 5b1f17b1804b1-4804c9afa76mr59925245e9.21.1769185760013;
        Fri, 23 Jan 2026 08:29:20 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.131])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d3fda30sm29151825e9.1.2026.01.23.08.29.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 08:29:19 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Fri, 23 Jan 2026 16:29:12 +0000
To: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>, 
	rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org
Cc: Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v5 2/8] iio: core: add fixed point parsing with 64-bit
 parts
Message-ID: <mhjhwxulliyoitb2be3altyfcis5ir2vgndslxopy3fhvhgpf3@r6lmjnrpmpoa>
References: <20260123-adf41513-iio-driver-v5-0-2dce812a2dda@analog.com>
 <20260123-adf41513-iio-driver-v5-2-2dce812a2dda@analog.com>
 <3rtccxcqpxkwq54jjbl7l6rq3xm3ibsnlh5s7hiymo4okir7dg@ky43houswpjg>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3rtccxcqpxkwq54jjbl7l6rq3xm3ibsnlh5s7hiymo4okir7dg@ky43houswpjg>
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
	TAGGED_FROM(0.00)[bounces-259072-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,analog.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7177778834
X-Rspamd-Action: no action

On 26/01/23 04:14PM, Rodrigo Alencar wrote:
> On 26/01/23 03:53PM, Rodrigo Alencar via B4 Relay wrote:
> > From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > 
> > Add iio_str_to_fixpoint64() function that leverages simple_strtoull()
> > to parse numbers from a string.
> > A helper function __iio_str_to_fixpoint64() replaces
> > __iio_str_to_fixpoint() implementation, extending its usage for
> > 64-bit fixed-point parsing.
> > 
> > Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
> 
> ...
> > +static int __iio_str_to_fixpoint64(const char *str, u64 fract_mult,
> > +				   s64 *integer, s64 *fract, bool scale_db)
> > +{
> > +	u64 i = 0, f = 0;
> > +	char *end;
> > +	int digit_count, precision = ffs(fract_mult);
> 
> I've just noted that I should have used ffs64() here. 

The idea here is that powers of 10 are a bunch of 2 and 5 factors,
so the index of first non-zero bit (from lsb to msb) is the amount of
precision we are interested in. This is used down bellow because
simple_strtoull() does not stop at your will, so we need to adjust
the precision after the fractional part parsing.
simple_strntoull() would come to fix this with max_chars parameter,
but it is not function that is exposed.

Apparently the most correct would be:

(fract_mult)? __ffs64(fract_mult) + 1 : 0;

However, ffs() still works, because we would not have more than 20 digits
when parsing u64.

Kind regards,

Rodrigo Alencar

