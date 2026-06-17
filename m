Return-Path: <devicetree+bounces-313186-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lrRLHwAVM2oI9QUAu9opvQ
	(envelope-from <devicetree+bounces-313186-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 23:43:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8466569C8D6
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 23:43:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=d9GHL7KT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313186-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-313186-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C09123009E11
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 21:43:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D1953B19B9;
	Wed, 17 Jun 2026 21:43:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F2BB38655B
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 21:43:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781732602; cv=none; b=UCHdyn17eYWGCFqc3JX4sqWgr2Ofq18Xie8WWw0OTt5HCCJdShpw6P1JLo+dlGZYGvaeE1tGQTTddwF4tncoCsrUN/xdxSx+PRFVT+c3+eQ05e9FYXXDNvdz9zkXNJFWTonkcxlzmEBzibabOzSnp+Mhn9YJb8sY99aLIfBVYxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781732602; c=relaxed/simple;
	bh=STd49iieVtEz/Mng/F8+k4bjVOlJZ0xuDkER0yL5GTQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y9g5Bc5u/g8kEcwg8skMZLzaa7q1YDonS+dw1TZmwozM/xynlg2V9+77qAULslS4eGuaFCpQN3XDwO5JeGmPXQlzvZKRSaP8Il1vo5gZ2naoPlIbVbOa6xBJd5GVa1XZ9aRXJRlT2DH98m2msUR2TpMlnQw+koqUJXg0pS2hs3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=d9GHL7KT; arc=none smtp.client-ip=209.85.161.51
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-6a0a38a013eso238025eaf.0
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 14:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1781732599; x=1782337399; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=moLf1HfI30fPHYhYl3mY3kuDIYItGKUlS6CPPB51Qa8=;
        b=d9GHL7KTyxsmYAH/hZulR6JqiSCDRJYTA7O1/h5l83Kj5Z4oP9+aSXHOhTzCSA4grA
         yjYL4lTjWKJOnW66s7lYNPZSh87bkt5wBJbzAx8pvbs3YryrDCUuvKnToySXjQaJu86q
         O0b7iHAtFnYPGs0qEM/sfIMo4pj/lWEd/85I5QzL5unUomqMzjYV4fUzPFqUWGiLvDHX
         9HlaTi8Ak+mx8fSdYGA92uQOvXpnRWHeL+R8kLs8pC7j8t0KXmC1B7uT3G24uTIMR439
         8ghl9FkxXs5fj3LveZTRhqIcBNrTDiO0gRp6DHMqOYqGDYwT2cF8H2Q/kqq8Jcv4Cpuh
         9o3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781732599; x=1782337399;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=moLf1HfI30fPHYhYl3mY3kuDIYItGKUlS6CPPB51Qa8=;
        b=f0+v5+lkWZ6Kanhiql3kBkAxutus9pDbean2+Ywziivg0p4J39pCzP6jfM0k8RwMW+
         /W2MLZ6a/wX41cCHIVkopSj5RLOKYWBvrFslcFq42AZrCnqmHJqsri7BO0QwDLQ6qjdh
         OYwIQlqTo6Pvc6o/k77MxzGTPEHnG4BUvkoXPN7tAI3g99tepLN3RmqPzYmBlMG2JUNi
         5AmSmyIfIbCCBdTil7psyKABnBA6UJmxlTXcivU3f65rV//XFaHKqI1fmYNBl78a8qM4
         +b5mt/s7BZbiNNhge6TFbdarkSQ0oXSAj/3m9gJ4LyIMEVcUSQpo3krOtOslXoLc4Jgc
         hZDQ==
X-Forwarded-Encrypted: i=1; AFNElJ8htw1hcyItLQ71aUVIsasaSUKwXKPdTpyv4qoO3BV0YyhyDSwb6SZl1xu7IzG+R5vJ4T90Cm3XjzSm@vger.kernel.org
X-Gm-Message-State: AOJu0YxtoIJTwrifHQtxUGSs/lDjWqgvCQPh1Y4CIg7HcPAB/d0003qh
	Z3eW3+0Iw7QZTqdCycA6SMRcC6WkuC8JRC5r2Uk+JPaXKSUXr5hF9dW95HuRLZyVWeo=
X-Gm-Gg: Acq92OHKuvEP3CN2UpcOZNC57A3hB1rDo72hUQq1XFWu1WBLPB8f/Wq66r41f9BA7sh
	S5pf/tr0gzVhs62fv+HsAe1BEDnpTT57PUGY1i1OGA9855q6AOqTetvBUWEPiZ/PYJ+3JGn8xrQ
	WaYxdiWTQGUWI4/koW50NF6ZVsUz7tZ2f+eIXkhEWrIXYv2EfruyfEtqP0BAeOkNwXJ99fPpBx3
	g84zpmf8AV9o4GsJTwm/w8BIuZ0I7FLDGUBn4wcVWlybY21l/V3pspVveY8+LcxiC6P8/g+blqI
	1lxJRR68YWwbMZwt3lkpvfRNHbaJsrhfrG41bMmrt7JIlf9sqpyz0j+dAco6MMD+InJw9FmT6Hl
	Rx102Rdg/3y9ei7tUJ4DJHs4gG8vq1Q6Sxnq9bNRrSvOJl1W5ZrleqJFAyVZFWpzBnS3I6kLpGh
	wlkBXtWv1jJPZ6a5ymOtFEck5qZ6mzHR4zzMmfbwzBy/RbuK876Va+oBgNMXuuYGzvrkzODldkd
	g==
X-Received: by 2002:a05:6820:16a2:b0:69e:b86b:1a9b with SMTP id 006d021491bc7-6a0c73eccf8mr742417eaf.25.1781732599378;
        Wed, 17 Jun 2026 14:43:19 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:9458:d356:778c:22ac? ([2600:8803:e7e4:500:9458:d356:778c:22ac])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-44308b0057csm5540529fac.8.2026.06.17.14.43.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2026 14:43:19 -0700 (PDT)
Message-ID: <3b96ec10-b022-4135-9ade-6fd9eb6e78a6@baylibre.com>
Date: Wed, 17 Jun 2026 16:43:18 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v3 3/5] iio: buffer: Extend DMAengine buffer
 interfaces to take extra sysfs attributes
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: jic23@kernel.org, nuno.sa@analog.com, Michael.Hennerich@analog.com,
 andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 pop.ioan-daniel@analog.com, marcelo.schmitt1@gmail.com
References: <cover.1781661028.git.marcelo.schmitt@analog.com>
 <a09f2cac2d26fe385f1f7790b0db64b7d9953ac6.1781661028.git.marcelo.schmitt@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <a09f2cac2d26fe385f1f7790b0db64b7d9953ac6.1781661028.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313186-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:marcelo.schmitt@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jic23@kernel.org,m:nuno.sa@analog.com,m:Michael.Hennerich@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pop.ioan-daniel@analog.com,m:marcelo.schmitt1@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:marceloschmitt1@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,analog.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8466569C8D6

On 6/16/26 9:03 PM, Marcelo Schmitt wrote:
> Some devices using DMAengine buffers are connected to extra hardware that
> allows setting how fast data is transferred to/from the buffer. However,
> those extra pieces of harwdware are external to the sensor chip such that
> supporting the transfer speed as a sensor property is a bit of an
> inaccuracy. Expand IIO DMAengine buffer interfaces to take arguments for
> extra sysfs attributes, enabling the transfer speed to be configured
> through the buffer interface.

This message is a bit confusing. It sounds like it is attempting to
control something about the DMA controller itself. But based on the
later patches, it looks like this is just so we can add arbitrary
sysfs attributes to the bufferX directory. And in this specific case,
a sampling_frequency attribute.

> 
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---
> New patch.
> 
> Now that I've come to this buffer "solution", I have pretty much convinced
> myself it would be better to instead have some sort of IIO trigger to control
> the signal source connected to SPI offloading trigger module.
> 
In the other chips with SPI offload we've done already, we just used
IIO_CHAN_INFO_SAMP_FREQ to control the SPI offload trigger rate.
Any reason why we can't do that here? In the original SPI offload
discussions, IIRC the general consensus was that adding a trigger
just to control that was overkill when I suggested the same.


