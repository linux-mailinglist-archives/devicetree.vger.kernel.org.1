Return-Path: <devicetree+bounces-110905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 042AC99C411
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 10:52:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6E9C1B23047
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 08:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D29D155CB0;
	Mon, 14 Oct 2024 08:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sigma-star.at header.i=@sigma-star.at header.b="fiIpGZUD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCA05154BE2
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 08:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728895916; cv=none; b=RijUPL9e6gIecr6FDeqF8rHBYDbd3mdUeQ1fe3gjTQkus46ynste3izExF7oN87lFz1O0tOp/0KD8KrLZHij8suTLm+pV4cAWjyUX0xoVR6BiAjc+P5ZVymVbvfMmzpFYzhlI9tx5gcAHj/dIwNXKvL4Brv+VCmtBOJfc5hI4bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728895916; c=relaxed/simple;
	bh=7y3i8RI0B9xeH/V6pkYoLkhTjNtFrZO1Xsun3cPjRYw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=IK6Nxsad3lON8NEbQP6SVJACm3WMKQD/pLP1h7xuvHEKqVKHeDAIgrlfLqrZP6w+NW5W3/nFJvU1wwdWB4u7Jv3ID3j+WR02DmAEgrbqRLqiKvGNQhfjWrpSkbMRs0Eg/rayJVq70XwMvbB/Mqoij3bLmoae17bMPcJQJhSW+PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sigma-star.at; spf=pass smtp.mailfrom=sigma-star.at; dkim=pass (2048-bit key) header.d=sigma-star.at header.i=@sigma-star.at header.b=fiIpGZUD; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sigma-star.at
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sigma-star.at
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-431160cdbd0so24812325e9.1
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 01:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sigma-star.at; s=google; t=1728895913; x=1729500713; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=50tK4yvCZ1zBy7QMujeB5OZr1BzENlZ/OjW/RDqvA4U=;
        b=fiIpGZUDWtcLS/X8Ss3W9RUpifunZZWmkN7rbh0/R5mn+qC0+oT5VOf2k1y5VntYnF
         yZxmwVBJgqu6nsHrl1isIawjKFfiEK8gqgeT60365+6j3KFTSKmBqRQsmzfxitebFnA5
         ZKj8m12pGXyiYf4/7qO3fwdPmdRk6VNLGiFO9PboWBTAcggXZFjm0sMoO7hCvhcqXmMJ
         ZAmQe5osgccH2PHh1hw1C0EEtUkPYqSI9KfwvOYS8ko6ioKVUeiSLKtOf7DvL5jEeaN/
         CGHiPQpos0BFpsRLsZKYrXX9ssv2JmH543aDqMMUp7orASSpXBg7U1R9yfFB/mAy90BZ
         wdoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728895913; x=1729500713;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=50tK4yvCZ1zBy7QMujeB5OZr1BzENlZ/OjW/RDqvA4U=;
        b=T6xKPlUAlJ/dDppLHK54pVnteCTUkBloNMXvtVGM9kgVs7hvSaYlHTBjkXY4MzlQrI
         vfNS23NbZgIm1mzBC0PLlkv+dvJ5vnk53OHRbwf22cXhQeF7HmapigM+kqqUFL2etAMY
         DG4Pg1MC04Je1Nfhh482gA6SXB3Nfk0nW5WxgQHoZL2xS8WwrRkhtuBUt6zQyIuHl4Eo
         shKsN/xY2dy+CWv0pGPfVhE78XrigXUX+GtNGIewwlqKWZp6ra31O4yG0dh3ejIvIFn4
         0OHvpNpyrlLwcEN+pV34fN61+faLi+rF3D66yZ3Y4e4uzkoceYADYihINL7nDAu9hcAA
         wINg==
X-Forwarded-Encrypted: i=1; AJvYcCWAi3DHD3XXjXx/OuUBhdbFAKZwP5uCtvAa1iY/N/f8Y929Fyy2smCQKE6fXmrfBXqUXFDVt7R1/X4F@vger.kernel.org
X-Gm-Message-State: AOJu0YwQOW6ATmSF2ByrNa2eQ647rKoLrO5gMHJyrymBe0vQ4a5NCvDy
	B7vkpg8k3R1vjGBm+79lz4Hk2s74U3Reyq7B7SYjLAMA/ATAnE7MdUgPSdqLJO8=
X-Google-Smtp-Source: AGHT+IEU0Ii92En2nBlsoOH0pa0j37alp117gc0n9MfzbJE/bM8tD/pJayX7UozgKh/NuroT/DJw3w==
X-Received: by 2002:a05:600c:5486:b0:430:56f5:4d1f with SMTP id 5b1f17b1804b1-43115a96f4bmr123435565e9.2.1728895912833;
        Mon, 14 Oct 2024 01:51:52 -0700 (PDT)
Received: from blindfold.localnet ([82.150.214.1])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4311835d78fsm113754245e9.43.2024.10.14.01.51.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 01:51:52 -0700 (PDT)
From: Richard Weinberger <richard@sigma-star.at>
To: Richard Weinberger <richard@nod.at>, devicetree@vger.kernel.org
Cc: robh@kernel.org, saravanak@google.com, linux-kernel@vger.kernel.org, upstream+devicetree@sigma-star.at, Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] [RFC] of: Add debug aid to find unused device tree properties
Date: Mon, 14 Oct 2024 10:51:51 +0200
Message-ID: <3247761.5fSG56mABF@somecomputer>
In-Reply-To: <7aq4nedii5jgrlg54kzyi3plri6ivheeo2kpxxg7q6ofr3wfsc@acsrg5rzzmzg>
References: <20241013200730.20542-1-richard@nod.at> <7aq4nedii5jgrlg54kzyi3plri6ivheeo2kpxxg7q6ofr3wfsc@acsrg5rzzmzg>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Krzysztof,

Am Montag, 14. Oktober 2024, 09:49:14 CEST schrieb 'Krzysztof Kozlowski' vi=
a upstream:
> On Sun, Oct 13, 2024 at 10:07:30PM +0200, Richard Weinberger wrote:
> > This is a proof-of-concept patch that introduces a debug feature I find
> > particularly useful.  I frequently encounter situations where I'm
> > uncertain if my device tree configuration is correct or being utilized
> > by the kernel.  This is especially common when porting device trees
> > from vendor kernels, as some properties may have slightly different
> > names in the upstream kernel, or upstream drivers may not use certain
> > properties at all.
>=20
> In general I don't mind, but I have a comment about above rationale.
> It's just wrong. The point of DT is to describe hardware, not the one
> given, fixed in time implementation.

I agree with you, sorry for being imprecise.

> What's more, writing bindings mentions this explicit: make binding
> complete, even if it is not used.

Yes, with this aid, it is IMHO easier to find bindings that need attention.
Just as an example, lately the device tree of a vendor used the property "t=
imers",
but in mainline it is "ti,timers".  With this debug feature, it is easy to =
see that
"timers" is not being used, and somebody has to decide whether the property=
 is
really not used by a driver, or if the binding needs more work.

Thanks,
//richard


=2D-=20
=E2=80=8B=E2=80=8B=E2=80=8B=E2=80=8B=E2=80=8Bsigma star gmbh | Eduard-Bodem=
=2DGasse 6, 6020 Innsbruck, AUT
UID/VAT Nr: ATU 66964118 | FN: 374287y



