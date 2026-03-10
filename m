Return-Path: <devicetree+bounces-273461-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHYkNf74r2mmdwIAu9opvQ
	(envelope-from <devicetree+bounces-273461-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:57:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 502F3249CE1
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:57:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E4C5030518FB
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:50:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4547F3793D9;
	Tue, 10 Mar 2026 10:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M45i5+BT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6773379997
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773139832; cv=none; b=o5f4HEXdf+4NS5mx2HbOX7mfiVluZ+7cA4iNKq7FH7ba/4qgGuChGvh0VU1vG2NQb24Ni40FBSO6rdY2Tm20W+q/m9bRxrGOWz2mrT86I1kvFQCufzeFSURPaer566R7TUPsVkZcB+uV+aXOgc2ESJiP6zPdOwlki6UnuqhAVU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773139832; c=relaxed/simple;
	bh=0VoBZs7c1VaNHYX4X9G0oFihfaAjTwptBwauSkvbB9s=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VJSDkVw0ANsU6P5mNXlNQrgw1rJ30yO/btyafo5JW3XC4gJCeh/fhb0FF0ChDW6Ygs8XlfQJTU1lPdGee8Ihfj6DU/VXxoiquMXkCsd6fnOgeDHmF0X+jCwmqN2KokErUjyWJXwRGbPyvctjgjhdNm9cp3qrQ9NMMGawymscoCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=M45i5+BT; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4852b81c73aso27302275e9.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773139829; x=1773744629; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4jkdkaOrB5sbIX+V1ogcejtKhZcBX+Pg6pb5seJw+GI=;
        b=M45i5+BTGzrTbsIzvfIaG8lYKev80YBP1s4aqtRU4o941SMmqwNOZIFIGXqi+K3OEu
         Ulgzn2e/sUQbQ6dPGaNd/YWPUnabYg7KuN8dMlXGcJQnyozYC9fZrhMaGSdlJN8/P3/1
         3pmnKG53NJlfeQBUBDh6aEdyUbO9HNJ/S51cUVtQ2Ccu9ttVvHYP+8A+KYfuD+KtAZxh
         gd3Lq8gg3XBh7XM7ownujYy3FSfMGDvm51Xt4No5HVCKtrup+5Rx2/FOIXKCRmdC4Y8u
         tOhsA1xYfhFY/RGICmnRc5RH9bBaYBruknRhd6J7OH+gvFcghex/CiFrU3TMB4v6f1CF
         k2eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773139829; x=1773744629;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4jkdkaOrB5sbIX+V1ogcejtKhZcBX+Pg6pb5seJw+GI=;
        b=KP96QG7wW2E5BTdn089jWt0DoIykarFKW6jHcp7jNrStiIjDYYiiLpuYFblLOQATnO
         JzeVATtdo8nB6q6RTWzDOj/gdwlbIt2vQYrFNoqSt/Oi2CwmIrYt4MH0hwxiTsLU9NmA
         iKFkS78M8DGmRRYcZD3qVrh8Cp26FHjxDCbOjhWVAoPPcNULiODBbqmIQ3/5/ctyzsW+
         ZPtjP6bQeMeJW+sX9iQql3LaaVNDXT0/veRCKG5hejcUtIXITiv1Xx2vmVRiCJX46ghO
         deDNhY+8u+AIN1rAjWkFq3ohFzn4+nQWWEAUkezizNiQwWf9h7rHG1wLiDLZ5mbF/8jw
         cIlQ==
X-Forwarded-Encrypted: i=1; AJvYcCXTZSRAzUpJwNiR3xLa4oDMT5hli8OCWZVa1etegXe/HX8SFueLonUQgLY/xVqdYF5C0KTkS4pJBE+8@vger.kernel.org
X-Gm-Message-State: AOJu0Yxz80riGX32sSOV6x1Eti3EsOg/DhMlKVy5wTbtWO8530NXCE2y
	KcGflYdwZDtHbuBhluNILaJGoj8Ra5cCXCvLvjjlbOp6EwtSkegnGz5L
X-Gm-Gg: ATEYQzyKNl47otZImw71iexI5wNj4IS3txTwzM4/aiaL592zo3giFCNXhtyfT8cJqo8
	m4nJ+ZZ/yxltedMQClmLPtM8P27ebgwss2vgBH0Pfk3zvJi2Ew8LTLilPucA2589MJ12G5QEa4H
	HGGiAdtYFBLfRF2KLjz4Nv12xuAZ+vJprRG1ZIsSQ0r5k8d00eLOfmjyA3DwK6GN7BBIXPnffgg
	iHf1kx/cwolmVB1KYGstRD4S5Z6+eBr8Z2zewgoHqx5r/lwZzni3MHIbx4dROtUpUV5GApItO0K
	Mcaw7pXSgQE94x5qOSaX2IJF6ObnxxLJhLH0CIMONY26rJg+Ekr6illv/gilxJrFFlBwt776pWj
	Buo9+Y/8qv4DQsUhw6tjaCEbX0tJqkAMWi3pLMUUx4PwObpZMt2ELND5Aa01bOLkSL+v7FTMxYJ
	5vLSQY5xHPp/+tZxfOJzFadGUbtf0M24bnITAw1GDed3ghTj/nb4OPeP4vvnjPZ4xq
X-Received: by 2002:a05:600c:a00c:b0:485:3983:aba2 with SMTP id 5b1f17b1804b1-4853983ac6dmr130510055e9.23.1773139829169;
        Tue, 10 Mar 2026 03:50:29 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541acea11sm71843325e9.7.2026.03.10.03.50.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 03:50:28 -0700 (PDT)
Date: Tue, 10 Mar 2026 10:50:27 +0000
From: David Laight <david.laight.linux@gmail.com>
To: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
Cc: Rodrigo Alencar via B4 Relay
 <devnull+rodrigo.alencar.analog.com@kernel.org>,
 rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-doc@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>, David
 Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH v8 02/10] lib: kstrtox: add kstrntoull() helper
Message-ID: <20260310105027.08b93187@pumpkin>
In-Reply-To: <zhjkurpwbuvirh3k4a4c3lfeu5semu4rjszvej4hnx7scjyk2q@v4r7oqexwsjl>
References: <20260303-adf41513-iio-driver-v8-0-8dd2417cc465@analog.com>
	<20260303-adf41513-iio-driver-v8-2-8dd2417cc465@analog.com>
	<20260304101655.620df7ee@pumpkin>
	<6et7t3o6fjiinpkvpsmoxjhp6edn23dgclbulaxg5paccdotgp@amtf33da5dhf>
	<zhjkurpwbuvirh3k4a4c3lfeu5semu4rjszvej4hnx7scjyk2q@v4r7oqexwsjl>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 502F3249CE1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273461-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,analog.com:email]
X-Rspamd-Action: no action

On Tue, 10 Mar 2026 09:26:11 +0000
Rodrigo Alencar <455.rodrigo.alencar@gmail.com> wrote:

> On 26/03/04 11:41AM, Rodrigo Alencar wrote:
> > On 26/03/04 10:16AM, David Laight wrote:  
> > > On Tue, 03 Mar 2026 13:27:07 +0000
> > > Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:
> > >   
> > > > From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > > > 
> > > > Add kstrntoull() function, which converts a string to an ULL with a max
> > > > character limit. The function is an alternative integer parsing function
> > > > that does not require a null-terminated string. It becomes a better option
> > > > over simple_strtoull() or kstrtoull() when parsing integers from a buffer
> > > > with custom delimiters without having to create temporary copies.
> > > > The function is consumed inside the implementation _kstrtoull(),
> > > > promoting reuse.  
> > > 
> > > If you've got custom delimiters use a function that returns a pointer
> > > to the character that terminated the conversion.
> > > They save you having to find the delimiter as well as taking a copy.  
> > 
> > understood, how about this prototype then:
> > 
> > const char __must_check *kstrntoull(const char *s, unsigned int base,
> > 				    unsigned long long *res, size_t max_chars); 
> > 
> > to be used like:
> > 
> > 	end = kstrntoull(s, base, &res, INT_MAX);
> > 	if (IS_ERR(end)) {
> > 		/* return or handle error */
> > 		return PTR_ERR(end);
> > 	}  
> 
> Hi David,
> 
> Do you have any other feedback? the function prototype can also be changed as
> follows:
> 
> int __must_check *kstrntoull(const char *s, const char **endp, unsigned int base,
> 			     unsigned long long *res, size_t max_chars);
> 
> so that a pointer to the terminated character is passes as a parameter.
> which one would be the preference?
> 

I really don't see why you need to add 'yet another' function for parsing
integers.
Having to pre-scan the string for a separator seems just wrong.
The userspace strtoul() family do everything quite nicely apart from
overflow/limit checking.
There are a few options for overflow:
- Ignore it, this used to be what posix/sus allowed for command lines.
- Saturate.
- Return a pointer to the digit that makes the value too big as the
  termination character - since the code will typically expect one
  of ",.:-" this will be a syntax error.

It might be worth adding a parameter for the maximum value.
Then you only need one real function for 32bit and 64bit values.
But you also really want the use the function return value for the
converted number (for all sorts of reasons).

	David



