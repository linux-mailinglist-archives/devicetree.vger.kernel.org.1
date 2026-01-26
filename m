Return-Path: <devicetree+bounces-259540-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDdkIcOAd2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259540-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:57:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3553989D00
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:57:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7C413300D4C5
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:56:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE297335072;
	Mon, 26 Jan 2026 14:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CTzgwlf+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F59E33066B
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 14:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769439405; cv=none; b=U5vw14ENI5mSOLMRSeKD4gi5skv8CTjgQPsL8ulZp5+97JiKHXy/EjBps9dmm1RXIt+QK0qhsrzVR9NHy540S7pqeU+Rc3pt82opphrapjENwL07Ej94xqiVrt4/iJ/07CTdLwHH/18ez5Jedr3vKQqlk1KivwN9gJGWk6R1/n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769439405; c=relaxed/simple;
	bh=nG8VbUCo04qNygpcvwEIwTEOiOHEpFF7Xeq5Z0lGM08=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oZl7dVkTOYxOzGA2MMUJ7zNhkLdkR6l7nY3ZoJ+aZ8IZBVRFEcGQsZjK4Z+2xCVdlM6HFVoPQBr34sPVLmqnyazT8nagyFtfRb6/yTFLrTwueRBwOfFm2TJhZjAefcjqBzyx1ljsYoCcgfq9Pb2dJPzH3mNwDAmakfLO/3kXpAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CTzgwlf+; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47ee2715254so23640375e9.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 06:56:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769439402; x=1770044202; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3+etScuCg6btjK6PPOTn2PuUBXtwzqdki48tfvDWBzM=;
        b=CTzgwlf+2RYct0ICuo552ERoav1kP2vNkBYTVIgi5a40O9XfRHToMOJiZu+7TnaJBn
         N7jwTtvjyNriQWsfd7fohv0FLaMKaG2p90zaN39DT7fMwtaAUHjPIoBTdXIQvMcXHIzu
         rGb0KQa/tFvUFf4m4FQ1j/VjwQwwaptY8cp+Kysw2AIOkZM5mIx2GKnfVY79QaBVHXFu
         MIg3HXeYEFpKK21DHfiIfCAL8EqF96DeigoMhy2CGRNMSTfzu9rWfSBcZaneKwa9egp7
         0kJKf8IFnjV/orUZW1QfnO+vK527D8XgGltL7inPuPfu3OLV6cMT67Bo/Xg8k4KDuuj6
         f1vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769439402; x=1770044202;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3+etScuCg6btjK6PPOTn2PuUBXtwzqdki48tfvDWBzM=;
        b=bAvnEpz//qQC+/uCZsfrv0B6mxyn6H/t735SxrzAckrjT8uqflyoSj/6W+hBxstSzn
         6Fj34Y6xGNXMhuDku0iQDjj/ElCutf2vkAMFZhajt/meq6FA3R/JMUekevDvKfuNFhrU
         pDN4KvbXW4HxJz1j/vhKWOyCSkd37g/TT7IHMZ5WfAfJmi4vaj7wHqW1JPDobe3A6d+4
         8k2j0tavp0i3PGuVVP6EK+z7x5Gpv2iM9dqAhubiW/SdyNI0IV+U1I/TNVyN5CnzRzCZ
         ogiRZbLn+9mTEItRsVj2ifV34aR9Hnk2J7ST1StEJt6G3RdaxnslURwOa7ZTd/0fvkpe
         WS5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWK7uP4Jtu1D5XYfP1XJ1acJn3YdOJPMQ3jbZ+gvLVXCW5gAi3UpBznzgPxGEEsW0ql34ceOWD8sqhD@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5rZbw+xk8OBA2LffMXZ+lRlp0oCr6ohAe9uA/b0gbyRRplO+B
	HMxv6IuwOwcxLfqhij6h5KvdePc1MEI7qbv91ZdSJh2zlwPOS55373NF
X-Gm-Gg: AZuq6aL+t0/ITG6z0TvJju/i2l73Ckc1KuHzUyzi1mDMiqGNba7PBF0bb/juSO+XW4p
	017ryyB+ceReQ2Eeru5JCHAlskLGBXaAy05Ng1ItKYSep7/Na833idHY9RbudnYpJW2kKR53f3J
	+6hjXDKbNhM0th6rFwgQkbKk5xfHulJ76Z9kFyrvnErcbAMsbZ7eOa2CIr59+FjugCQD1odS9ZV
	Fs/VPUM25YhX1ENPDozkdGolfn3SZpmqTUPtxf0y0N4jmdvvjDFWrJfVeSB0D9JlpjsF05BGye5
	sxm3XdQPDnOsfqCwiP6GYykzIj2F+MNk+xYyB5tCZwTVI9urmM41eXzd4Q1eJyVDZq91tH8sFX2
	brN876291BqM6mN/J45dY0vzIZXEdYZlXxSuunVVbMa4ZwOq7bE3SKIoxPsMWOEzD+GSDIe2vEn
	wSzsPZDqVsDeOo/WIdVv1GC8RefHGkFaxE2GXCw5x0LD8vdrR+CttnpXEf9v7MNiZmtcucTlFez
	fRD
X-Received: by 2002:a05:600c:64cf:b0:45d:d8d6:7fcc with SMTP id 5b1f17b1804b1-4805d065e43mr73015565e9.27.1769439402395;
        Mon, 26 Jan 2026 06:56:42 -0800 (PST)
Received: from RDEALENC-L01.ad.analog.com ([24.206.116.103])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804dbda9edsm103545855e9.19.2026.01.26.06.56.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 06:56:41 -0800 (PST)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Mon, 26 Jan 2026 14:56:34 +0000
To: Andy Shevchenko <andriy.shevchenko@intel.com>, 
	rodrigo.alencar@analog.com
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-doc@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v5 2/8] iio: core: add fixed point parsing with 64-bit
 parts
Message-ID: <udbqdpfcarcngai23u2oo5zekjzvu6dptem732rdvlsxiry2vs@aeqvxjusdx5s>
References: <20260123-adf41513-iio-driver-v5-0-2dce812a2dda@analog.com>
 <20260123-adf41513-iio-driver-v5-2-2dce812a2dda@analog.com>
 <aXdUvRZ9NmP5Nh95@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aXdUvRZ9NmP5Nh95@smile.fi.intel.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259540-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3553989D00
X-Rspamd-Action: no action

On 26/01/26 01:49PM, Andy Shevchenko wrote:
> On Fri, Jan 23, 2026 at 03:53:07PM +0000, Rodrigo Alencar via B4 Relay wrote:
> 
> > Add iio_str_to_fixpoint64() function that leverages simple_strtoull()
> > to parse numbers from a string.
> > A helper function __iio_str_to_fixpoint64() replaces
> > __iio_str_to_fixpoint() implementation, extending its usage for
> > 64-bit fixed-point parsing.
> 
> ...
> 
> > +/**
> > + * __iio_str_to_fixpoint64() - Parse a fixed-point number from a string
> > + * @str: The string to parse
> > + * @fract_mult: Multiplier for the first decimal place, should be a power of 10
> 
> > + * @integer: The integer part of the number
> > + * @fract: The fractional part of the number
> 
> Can we use struct s64_fract? (Yes, you would need to add a couple of lines into
> math.h for that, but don't worry, I will Ack such a change immediately.)

Sorry, I missed this. s64_fract would be declared as:

struct s64_fract {
	__s64 numerator;
	__s64 denominator;
};

and numerator and denominator is not really applicable here. This type seems to be
used to declare fractions.

kind regards,

Rodrigo Alencar

