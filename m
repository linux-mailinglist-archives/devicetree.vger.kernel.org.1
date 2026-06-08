Return-Path: <devicetree+bounces-307959-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PJUgKz4yJmpTTQIAu9opvQ
	(envelope-from <devicetree+bounces-307959-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 05:08:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FDC65261E
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 05:08:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=n74Cnow2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307959-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307959-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B4E73300B04D
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 03:08:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32596307492;
	Mon,  8 Jun 2026 03:08:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1FC630567C
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 03:08:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780888124; cv=none; b=JT0E0pcAhB42Jx6SAWtjvEslpqMUWcL4JX6RZCteKksHiBV31zKqVQAhHUF+5plKyBAotQ/SHp7ul/9yNcn5xjocxIX6ZELNbzbE1QU735q7OFv1aGaFucc+b7B7xScjRIN1rBhC/Z4EpYVdlEUcVFljb1mHcbVd+yVAE9q46eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780888124; c=relaxed/simple;
	bh=eO7yVSb+ongNWkKbPuJJgDwNs5WTX9mm5C62KLUvoRY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y1RvOOFhLaGwg3qA1sWVsKnVOX9Cy1/pVWbdLiiZU74VlxnUcvfiqh53VXbKV9/te70RHBIHKrQgpbSQqBL+f2uPghrc3LGewuHFd967MQOH0GnCF2+cfwogjwXwC1NxBttlMvAPTz0AbZ0Bf70IJixrBJiXcJrZ/s61FizhtE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=n74Cnow2; arc=none smtp.client-ip=209.85.216.52
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-36d98b9aa9aso3311398a91.3
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 20:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780888122; x=1781492922; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jZmjdnA6Z/FpveiHy+bpkM+wI1acYPmFvyA9Nr3I4wg=;
        b=n74Cnow2jipnsiaIWCh4pBIYOzgyXgaymlAUYlsV27kmSMo3v53jIgxgmIScVQGLux
         MlVn2NxVrCtGjziqIIEr8DMuZYbigavfi2D1ewnZLbmzXZVPNe9M/G+70G9b7v/4xAZX
         IgjN3zipjZuudD1YPvcowIru3TzgzBOHqJBpbketCB2lYNtkaKpDIIDJYRSH0gDmJWcC
         0gWCFHyZUspVPmUKV4QwzuDvreFUTfUqHM1OwWGjXirAOJFCi4qr5IslAG6X/e5V/20T
         mhwAQwUxoBDKShHweTygYYxutfh0krmI1MHKDQlF3FfNIRnauevZ+RmQLwuKbPTeqwwi
         R/rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780888122; x=1781492922;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jZmjdnA6Z/FpveiHy+bpkM+wI1acYPmFvyA9Nr3I4wg=;
        b=kZtI2pVYgIeMEHq0T0EBa6WEmDjgPH4sNN0y9sAQkuZ47LvFndztOk3aiq/AZWvQmJ
         3ZW/zKY4FynlflIWVf1x3APJM0AKExALWrfl8EBiBkNEtd57o+6pHTsX5muZLKEuMVXP
         Jte40SDEbCTVjVdTvMDR6bLYv5HbHCFmlZUqvT60HxqVc6mVUx0ypwACqd7BkLscq7Lq
         nmCRgrG7MXER35KmQ/Iz3JeSfsL6R7Wc+Z1MMkX/gInebhubQFRCUbf0D5vLOGUZyOOy
         8/TF4TD5JPaWi3+VfYLsEbeCn9rEv1iXIZ9tdfd/tx4wipVXGb9haeXTplBZnu0hw+IA
         98PQ==
X-Forwarded-Encrypted: i=1; AFNElJ+X+CBj6Ai2H4U58CyluudN5toLDPO83A8Iuh6pwkYnQuRGFT5Pxu3KqGkHkqX7C+Xwpiq5GutBJcKc@vger.kernel.org
X-Gm-Message-State: AOJu0YyoQ+D5LPU4IR99OHYPJl3x5IIC81zRaJMUBCa0FJiXkcTfZy/z
	qEcHruIbJrlY0xw2VDPSrij4Nt0MlX/tVz3WqKYEH6lM+Wgvf6fev6vm
X-Gm-Gg: Acq92OFaf4BIUlvWsg1m6ui91tAJorTRf0FkVXSgsMKI/JnDRD4FuyosjZ1VynX4FRk
	3Y4cfPJJbyo26FY9GozhYLCWM1Ns3SbRg2tJFlkbrYHRvlVLo5Av4vuQztuqaT/yZm24K+bM/NM
	P/P9QHQCFDzpDIcBU128q9ziRJaq3BhZ0EWPm5R6uJB7mUNN+QQzZfrVLV9zhGlngzRvHtWKW43
	e/kVScb69/D16QdlEezsbhbQyyYVFDntSkf8NwTcdLexl1FcIgwi407QdRv1TMXfZ+pauHev5nU
	vB8u44Tumu8wdBwlSLfD5NeinmzjUUbILPzFlaGfzxKrho8K48KBKqsTTSLjXm/p+IOR7SKTMmY
	txjLk5eRwng4oaIOZZQ4sn5AWtD97wOhDurTV+9r8+OGiIF6iMCNuxpP7EhEwGsVk6ndTN6WOQR
	U/aYcT+fNRuz7j7UlIihW0bZyWafCQ8ZibZWIVJUfuMtlPMT2e2sLM6uHyOA==
X-Received: by 2002:a17:90b:4a0a:b0:36a:fcf5:64bd with SMTP id 98e67ed59e1d1-370eec10e38mr15237248a91.2.1780888122204;
        Sun, 07 Jun 2026 20:08:42 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36f710ee4f3sm14702020a91.13.2026.06.07.20.08.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 20:08:41 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Sun, 7 Jun 2026 20:08:41 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: "Pradhan, Sanman" <sanman.pradhan@hpe.com>
Cc: "linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>,
	"robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"corbet@lwn.net" <corbet@lwn.net>,
	"skhan@linuxfoundation.org" <skhan@linuxfoundation.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"noname.nuno@gmail.com" <noname.nuno@gmail.com>,
	"Syed, Arif" <arif.syed@hpe.com>,
	Sanman Pradhan <psanman@juniper.net>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: hwmon: pmbus: Add Analog Devices
 MAX20860A
Message-ID: <6cbc0058-5471-4199-902f-5dbd574df886@roeck-us.net>
References: <20260601184516.919488-1-sanman.pradhan@hpe.com>
 <20260601184516.919488-2-sanman.pradhan@hpe.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260601184516.919488-2-sanman.pradhan@hpe.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307959-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sanman.pradhan@hpe.com,m:linux-hwmon@vger.kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:devicetree@vger.kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:noname.nuno@gmail.com,m:arif.syed@hpe.com,m:psanman@juniper.net,m:conor.dooley@microchip.com,m:krzk@kernel.org,m:conor@kernel.org,m:nonamenuno@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[roeck-us.net];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,lwn.net,linuxfoundation.org,gmail.com,hpe.com,juniper.net,microchip.com];
	FORWARDED(0.00)[lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux@roeck-us.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,roeck-us.net:from_mime,roeck-us.net:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 12FDC65261E

On Mon, Jun 01, 2026 at 06:45:30PM +0000, Pradhan, Sanman wrote:
> From: Sanman Pradhan <psanman@juniper.net>
> 
> Add devicetree binding documentation for the Analog Devices MAX20860A
> step-down DC-DC switching regulator with PMBus interface.
> 
> Signed-off-by: Sanman Pradhan <psanman@juniper.net>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Applied.

Thanks,
Guenter

