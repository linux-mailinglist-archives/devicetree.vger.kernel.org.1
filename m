Return-Path: <devicetree+bounces-306660-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hoHyGusoIWqG/wAAu9opvQ
	(envelope-from <devicetree+bounces-306660-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:27:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D617063D9D1
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 09:27:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Kk+4tPTC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306660-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-306660-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E225930156C7
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 07:22:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C00237CD32;
	Thu,  4 Jun 2026 07:22:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECE437CD39
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 07:22:43 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780557765; cv=pass; b=RDt+1bQ+A5rTEpBBvODkztTRDgcLEnpVKT9MgQmQphxEE7PVsptxmLIsDdhYbmR9LK3ztBhCUqzl1qar4glfcwAT6mGYYMBfSCQ8t4AMT+3lmO/93HjshnufQjRFSRgwbbXFfQBmn5KYlIwFuYpdbPC+WShIhCDr1ZHCwEmIt64=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780557765; c=relaxed/simple;
	bh=yLGOc0YfV47KnXxnjIX3aT37t7ENrin7/h3VNhPrvEY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MZgJdsLaMUF3/3bdc3QxdRcLpY+GcWgQUSWOEKk4Dip3gSR6DzYeJpDJiDkWmULIof7nOH8tpCxaPb1IZ3wNcNJsxasjw2kwtKUPcXv4BUzdrOt+vEJfWICPTFT6oPeTuMHmYeLE3+Vbih8u0XCDYxvj6edDPSJsec28PYoOubk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Kk+4tPTC; arc=pass smtp.client-ip=209.85.221.53
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-45ef56d9b67so267896f8f.2
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 00:22:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780557762; cv=none;
        d=google.com; s=arc-20240605;
        b=han1jtLUWQphrL7w7fXYE9NrahYUTUBF9JA77HvPix0OBhHTCsLGjmwd3dkhRIpGDI
         AAwfWIqemyFSLrI+gnHWU0/R4MoNNZyQnI/JR++Rn2Qi6h+r9NGAWhvxsFgraRxxtsb8
         +04Ebnx+F0t2kqrA+6pJNlWO0V6gLPlB3eYXg9u1zvpPtPeBnpbuB5CFTuVZsBueQma0
         I6i/oEe27Lu/HZbxQirFu1c4JUOf/14YcCy6vL2sxn++Rtvt+0SrnwuhSEMtuhMcrNWl
         r/w+r3JsBKWBx007QcVt23NH8NBS0zygGnt0tcPLAeAXXHeYVMJc6+WTDL3p0oYvJBlm
         LNrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ehMvI31xrhVyS0ToRfASjvvmMFuwyXUwfnIilDd8ZzM=;
        fh=oBxjSeFg6osF/WO/wrtTWHR0dQTx3bo7xowdKHiMkEk=;
        b=U6eVNGKSuBZhuu5HZDyG/8iPtrvXChfqfza8nYYhWu10T7bbLQpuufzaAZVs9OrNTW
         lQfYT3mh8DgHj0v1CQKzcPZwk6SIVI8+aUszBGXSQGkfu7VKuAja+lRKI+PC1WfAoqgB
         JR+lVQryAq+fi+VGIXm7X4O8kULSGE6OicNR0uE/+CEnihZLPPMWTHKWlQjYZb1ZtoLy
         KCYw+0RzBVDMvspGrED7isrEMTQyPSBQdSwR/Atlsz8zHY8MxfdXNo6n/qKaBeGsFQf5
         hOa0vaYNRjb7EwPHsIhYl16ZKBepNRiMiygKionDaXPPwsAVPEcMyEC8xj3W9vWla3Dh
         6YgA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780557762; x=1781162562; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ehMvI31xrhVyS0ToRfASjvvmMFuwyXUwfnIilDd8ZzM=;
        b=Kk+4tPTCtkTARgrM6MoZSQg7u9/R/z6ogtwjXmUD7kF/L8F1ObWic9z4mKuj0jkpkT
         rfwO0GH/X6MrXwR+GDo4OrWCIFw/wD+XyVG5aqNAxyvuREObrmFMI9odBxJTbMFtxXvE
         jmhUZYLJPjsN1wRTTXEeh2kT88BgoV97emTuUc/KTkgEgQ/50BXRncMC+qE9eyRbMXx5
         gYXyBPibe4nmWsVz+/tEARg8i9i+qS/x1ArTtZbLIZiSfDRyBknagHJvQSTfrona6cuv
         EfQulUDfTSZEjTN3OTZZADEnPTKVBi33xVCJKyU9VA5B9aVdJnwfzSpQb63av0dkfF8c
         fjmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780557762; x=1781162562;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ehMvI31xrhVyS0ToRfASjvvmMFuwyXUwfnIilDd8ZzM=;
        b=j3MH+9FWi7mIocj8kCoMvTU1reoUMox6+r0MzGzxr8PIXWF3hbvrNDkcvigzAexRs/
         qonz0t8e2a13w5ALBXGUXmW0RcGYPZk4ffJ/psFTMKq3nAwRsHNm09GDqXitPcpzMqZO
         dbZMGY6GSEWAQAzH+XqXKJ7BUDWvL2CcPpdudHmCxJa27Dn4QqeLej/lqfduVR7vj9Th
         nA0yTgOz5Um8xjgeDhkwdUhkuo4axru2oucD/RJhhK6p6VXYrXv+EUo6uUQK+qvVkUdZ
         1MgGSVpuHKjhKM5Igbvj0XkgrG82+aUN/wRth3GNCLOcxT2DdvCydCn9ZZnizya1ZWtq
         5HTg==
X-Forwarded-Encrypted: i=1; AFNElJ8+JK+UjlmARLYb+n0tSp+8tF6SsJZBwYy+HVdVzRQFkttMFFY91x0zZcJXK/a0VmcfG5uYfKhaGKKK@vger.kernel.org
X-Gm-Message-State: AOJu0YzbVbesPpGbB6QpYNPlx39HClkK0PS5ca44CWqhOTWJpkTprvuS
	uOUe7qotarpM05xCV/qHb3ALlYpw5JhsrK/RjOPm4jMaUqwN3i166TvDfY6sWa5kJTTOaqd5IAi
	kS4K8ijY/Ik0deZCA3mGbGexoX24d8iI=
X-Gm-Gg: Acq92OFAuZQmZzEfVsX7y2POxvwZvJEiaBtVZhQVmscybF53WdAndEcMlsGWOZRQALa
	17H+dRu/2xuZQ4vIX/l6HXP61WXOMOUnddCw4294BUxxpDPpXCcKFO1MRiGCOGiFKjxFAA84H+j
	jlHcZg1D0PtCU5tJFn/x8Y/9FMG1ZLQH4nRnXPRwa8MsIQeL5+62nhXUhNAesPeLjOwBtW4CG9d
	JEn6ZyTwCkvvmDNJFS4jSn6+QcU6qrkoZFYWxZV9+J4YUPkGwBt5c0gPMQjjB+XJY6XBuASkTWU
	RCnSJ8EYRCd31EzSNjMvMe9kB4JY06Q/NAvomQVOKey2a4EGbQi8j7A0NxjP2md6wil0/c6R1r4
	earo9kwGkq4/wNw06l81OY4aeSGYltwYg+wC6V022YLSarFh74dg1i5ucvwgca+wmDipcFiSr7a
	MlXMRtuMXZb18Dmisz
X-Received: by 2002:a05:6000:2408:b0:43f:dfb6:78e1 with SMTP id
 ffacd0b85a97d-460218aaeb3mr10164289f8f.8.1780557762031; Thu, 04 Jun 2026
 00:22:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260604054723.2983181-1-github.com@herrie.org>
 <20260604054723.2983181-2-github.com@herrie.org> <aiEmplRsQnvlacCD@ashevche-desk.local>
In-Reply-To: <aiEmplRsQnvlacCD@ashevche-desk.local>
From: Joshua Crofts <joshua.crofts1@gmail.com>
Date: Thu, 4 Jun 2026 09:22:31 +0200
X-Gm-Features: AVHnY4IhhVucgZjHrdZqlT5zKM8hfT3LgftvgX8dZoMNqF3Wn5qgRJ4gYTzaHVw
Message-ID: <CALoEA-zeMaou-n3zWU8bvH+Ae_eHdtjjfFkkzkkBtz74+5zcYA@mail.gmail.com>
Subject: Re: [PATCH 1/1] iio: light: isl29018: support cover-glass gain
 compensation via DT
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Herman van Hazendonk <github.com@herrie.org>, linux-iio@vger.kernel.org, jic23@kernel.org, 
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, masneyb@onstation.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:github.com@herrie.org,m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:masneyb@onstation.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-306660-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[joshuacrofts1@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joshuacrofts1@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D617063D9D1

On Thu, 4 Jun 2026 at 09:18, Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:
>
> On Thu, Jun 04, 2026 at 07:47:23AM +0200, Herman van Hazendonk wrote:
> > Boards that mount the sensor under a tinted or coated cover glass need
> > to compensate for the optical loss before downstream consumers can map
> > the reading onto a useful lux range. The driver already exposes a
> > runtime knob through in_illuminance0_calibscale, but every user has to
> > re-apply it after every reboot (or rely on a board-specific udev rule),
> > and a power-of-two cover gain like 100x is a hardware constant of the
> > board rather than a policy choice that belongs in userspace.
> >
> > Add an "isil,cover-comp-gain" device-tree property that seeds calibscale
> > at probe, mirroring the pattern tsl2563.c already uses for the same
> > class of problem (amstaos,cover-comp-gain). The default stays 1 so
> > existing systems are unaffected, and userspace can still re-tune via
> > the sysfs attribute afterwards.
>
> Haven't DT schema patches needed to go separately?

Yes, with the correct subject line/commit message title as well.
(e.g. dt-bindings: iio: light: isl29018: add support cover gain comp)

-- 
Kind regards

CJD

