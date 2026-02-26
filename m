Return-Path: <devicetree+bounces-268591-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CH8GHVrTn2m9eAQAu9opvQ
	(envelope-from <devicetree+bounces-268591-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 06:00:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFA71A0F53
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 06:00:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C2DFE3026BFF
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 05:00:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56A6430DED5;
	Thu, 26 Feb 2026 05:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M1JhsAyk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f45.google.com (mail-dl1-f45.google.com [74.125.82.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E37DF4FA
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772082005; cv=none; b=cZEzHvOjglxJUfVyvzLI7Fg+PmQWR7ZZ9VB6Hy4EUUvuBsjGQbOqS+0x69mvQ8PbDVMlA8hlCCgijp8fbxEw8BneJ2XuCXDTtomboJimaI5Gk3WH583omRnPlfxsfFvdev6yhnzf7a4Y3IsJfP21G/qf5DggNCcLEkFuPLBr2v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772082005; c=relaxed/simple;
	bh=AahixQdanSzA3kc6u8rh0gxLSTO/7yPyGXL/3EHVyiU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HuRmPEtPYyIVAjMu+Ludlw/Uv/pKqlL3uQ8H/lr3wE/U6fXev9zRDPpyuIZlXbL/bz2cXMKwCk98k6g6BPPWJykpPc3tHaE84YANTeXY01G5SORPr5Du70aE0pxzr7NJQoEg7FjWekBlRB5DSrdkdhR+o366CkWaFL61R1c7yIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=M1JhsAyk; arc=none smtp.client-ip=74.125.82.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f45.google.com with SMTP id a92af1059eb24-12732e6a123so1191182c88.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 21:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772082003; x=1772686803; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eHYbEhbZNkwklHmAxtT71dqbWb7KBwSmjap//ylw1J8=;
        b=M1JhsAykNiSSBjOQq++NBdU7xwIziQASi7VTmf+71mG/rqq1h7bRM1NmIX8saeXghO
         EI6S8eeo4O3Lq5/rW7koMN6i2gX7J1ZvcvUtYZ7d0rDMykAM+yig2Ngh1k53aDRIgqV3
         3j8MSvPzF5I/ezeIoPm87fXbHSVPRPf9beW8h1nL7naRiol8PPVCwuSRFJLVVn2kKqeK
         +y9DB/dVa7p6Yao70lH6yshbuk6z9pbrtOAfCTKwnIGcTuBRXTQsT+U2KgoY4eWfpjdy
         G1XUgz/fJkeD68CcroGbB2JaK4o5GGd2hXbD9jeqDoBmk+KzU86VlMxrKQJJeoSeozUs
         FUkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772082003; x=1772686803;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eHYbEhbZNkwklHmAxtT71dqbWb7KBwSmjap//ylw1J8=;
        b=Il5lCzIr3Xc7z3UiceIyzUBdaZFlgjjdN/u0l0BIlKezZSx2H3BX2Rs0DAD0Qk6ywD
         Stjj7jEyYxzbRFOD+zY4FaYT+/mwmj0KCDgAmcSqtkMfk2d5uduripl12CF/Jt1lqfKb
         TGcH2dhXic3n+0DeYp3MzdtbVcmUT606658eybPl2Rt1QSjO8y1RXPxZYQuFNnNSicNL
         xY28JxC1l5Gfidg2FrtWKdXROBC/oyii/xNZqOkCLkqj/ph7TlJ2b1pLWJwKzyPxIXbM
         zkvbBs5ofHW7dLE8CddgVdUp4vfA7Wx4K4J7IP5yEW+oNcB7dyJS5at6//PY+7qRWqf+
         ZlxQ==
X-Forwarded-Encrypted: i=1; AJvYcCVEfkKmssNZE4e8CGUnetev3TxOu7cpOnTjfkzRWCk+R4Q9jUiccAR61t7xuumboy7/KjUzKC9MMoDp@vger.kernel.org
X-Gm-Message-State: AOJu0YwasOs3QYH2t9fla7O/H5ob3r6oFDVUKwmuBqYT6qiQYAInSd1y
	RxOTWm/tX01G22wfBUIbV6mws9wfxKgnIIdqE5A6UHP0yDNLN/9mGYC3
X-Gm-Gg: ATEYQzyU9/tAkfEy2ZtsW6L00UxHmgGKtJPgRq4tYC9LEGfGS/U/6AMFRnGYcy43I4e
	u0qMGFbHPKNsos9g4ViYzNoJGyyuzY8iI+PIRjUqayVaqw8dlSJRw18/6znXEaRXrqthFOHHHh9
	FT6QiiXuEr6YYvv33BhaLKn7RCzC6VeiLlreaWgIj8Z2w9pj5RZ37FuSXz7uH9PhV8VpZO8GETa
	oXg41kq4yP84wtQAtITGRsZc9hnC0A8HUfxg5HMMP61POCDZ4szT4NyGXgXb9q9xj8vVBcPkdQw
	4ZMte2BMk6h4KBEWUO4AHG5idhAGkpU6Apyu/G1bsFaXI0XP+PtLDYwj8gRVqjkzOICdl6RXYxC
	xDCkNJP8nUsZlXDYDGQ5nvvgale5YyTrBFze/T3jpspYDI+IDK0G89Q5EdkV2RpZTZpiQyEZuoe
	0ihdThLoTxcKemiLW4MPDI9xMA0QPQ/IW1BLOAM41IHdMnUr9K538XiP6D6wDZY57zZNm0QJze8
	ic=
X-Received: by 2002:a05:7301:d1c1:b0:2bd:c7bc:2d44 with SMTP id 5a478bee46e88-2bdc7bc2de0mr1158137eec.31.1772082003013;
        Wed, 25 Feb 2026 21:00:03 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:64dd:9670:711a:678e])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2bdd1cf04b8sm827774eec.10.2026.02.25.21.00.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 21:00:02 -0800 (PST)
Date: Wed, 25 Feb 2026 20:59:59 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Benjamin Tissoires <bentiss@kernel.org>, 
	Jiri Kosina <jikos@kernel.org>
Cc: Doug Anderson <dianders@chromium.org>, 
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V3 RESEND 2/2] HID: i2c-hid: elan: Add parade-tc3408
 timing
Message-ID: <aZ_SqXA8ad3SAD3J@google.com>
References: <20260108063524.742464-1-yelangyan@huaqin.corp-partner.google.com>
 <20260108063524.742464-3-yelangyan@huaqin.corp-partner.google.com>
 <ffqvva5kgyh25mpquackob7fnlaxseu5stgevneqynwa7m77b3@totpb762p6te>
 <CAD=FV=XKqFTNYopxV9H8rnjEYAgDebW42Ot92aZYiex5MP1wnQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAD=FV=XKqFTNYopxV9H8rnjEYAgDebW42Ot92aZYiex5MP1wnQ@mail.gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268591-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8EFA71A0F53
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 08:50:57AM -0800, Doug Anderson wrote:
> Hi,
> 
> On Wed, Jan 21, 2026 at 2:40 PM Dmitry Torokhov
> <dmitry.torokhov@gmail.com> wrote:
> >
> > On Thu, Jan 08, 2026 at 02:35:24PM +0800, Langyan Ye wrote:
> > > Parade-tc3408 requires reset to pull down time greater than 10ms,
> > > so the configuration post_power_delay_ms is 10, and the chipset
> > > initial time is required to be greater than 300ms,
> > > so the post_gpio_reset_on_delay_ms is set to 300.
> > >
> > > Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
> > > Reviewed-by: Douglas Anderson <dianders@chromium.org>
> >
> > Jiri, Benjamin, another I2C hid with bindings...
> 
> I guess maybe this could go through the input tree, but it needs
> either Jiri's or Benjamin's ack? Is that the plan?

Jiri, Benjamin,

I am going to pick up the DT binding changes, do you want me to pick up
the driver changes as well or do you want to merge them through your
tree?

Thanks.

-- 
Dmitry

