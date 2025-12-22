Return-Path: <devicetree+bounces-248762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A036CD5BAF
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 12:07:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 75C87303640A
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:06:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 210F833555B;
	Mon, 22 Dec 2025 10:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rasmusvillemoes.dk header.i=@rasmusvillemoes.dk header.b="g3QiW6SY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F12257849
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766398719; cv=none; b=ht+DdN1unPF2FxLEuQeCh4mz2y7/ejNILql0yI7sCxJP8eL9zzsRBqiv9cDVttTupFM/ojOQHKgpRGd0yGP4dIeCS4/GikDsNKYm0rn5SVY9w96G+iTTHFtV/T4JhkHxyp7bJpZ1Rm3dECfNkx2UcXuyhwxa3evT8pbJGUCmoQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766398719; c=relaxed/simple;
	bh=VdFN7B4vxaPkLRgecOZAm1jnjJMdZrdh8+171cPJB0k=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=ZerSyPWLucB121BaV8TdGzrwJPkntgdwB0saiO3MzCSNCpjtkeEGbEanPGmGxtJq9ySApWlCG1Hta82S4gcusDfsq+kPSQL4OyS0FEKyu2v8oY9wlqqWeNaqWaBqtICMJYKnOU/xhz4U4H9upTTeEWmRIP2DVXoVemc+MDLAVqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rasmusvillemoes.dk; spf=pass smtp.mailfrom=rasmusvillemoes.dk; dkim=pass (1024-bit key) header.d=rasmusvillemoes.dk header.i=@rasmusvillemoes.dk header.b=g3QiW6SY; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rasmusvillemoes.dk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rasmusvillemoes.dk
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-596ba05aaecso3758129e87.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:18:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1766398715; x=1767003515; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5oDw1okAqcyqJSW/wOF+4mNh67gVaCYwmV+RlCLGkAI=;
        b=g3QiW6SYYKaIMVTG+s783cUqGIfPsaCkSrbc54NK1DtB5AHgRolPiT8N991FCPbf0c
         5XykoGM8fx96Dpv4JJnai2WO8ZAOcXAKW6QLPgYdkn06XrbbD0AWkDY7BtJBhlYxmyT+
         Qt0VxUMDC88LreMhAuQHuH+NTM3PDbdUBaLuc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766398715; x=1767003515;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :references:in-reply-to:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5oDw1okAqcyqJSW/wOF+4mNh67gVaCYwmV+RlCLGkAI=;
        b=gPv7e+h8y1veKNaaf/nwQwHW5q+l6WxjnPkv2U+xP6WF/qlU9M6l6UV3xy5Rv1tsN8
         5M+/RtNRagtnQ3H5TcLOQynQCBDAZPBPCGoVr6E1CgJ0L6Q+mPAMQspUf6hHe07A986L
         zFDG6lsXd6mN6TfSA/7e9jVh/QLuqNBUspP2bA66lL6IIXQoo5Yix+hELw1RNG+a6bll
         kLVbZazaugd7xSOvXfR0py72H23x6YtiZlp6klVbON2EfmvmrwUVK0pZFO5ZIJseh6O2
         teAq4DkEUVW9oNAYfn/APze3RNW35XRMh+FSlfRqnrJAIQkGsNU0AKxWxs+wfc9npo6c
         iPMA==
X-Forwarded-Encrypted: i=1; AJvYcCXsjb6GW4NqWTcelkat41GYHZWhSz9+BNgMlIABH1rLvLpzjoGcbfhTEQg3PLWy65s7KtmyzswOUVLI@vger.kernel.org
X-Gm-Message-State: AOJu0YxRZUe5WKp40nW6SVk/0H9AcDY1okkj1UQm88J4i4HkJQyIDCWA
	dHm2CN0zz2jaUWZd9dP9jPYYoYHfT33lDidCm45PMmpSqMk+Q5WbDmd6B/qpOWzxFminp3LBSnP
	T2i/Xi5M=
X-Gm-Gg: AY/fxX6TXAyyqIe6jiKN+/dhO2qz17EL0Wy0gdFCzz6yZGBoDsfFuibKGqizIIus3am
	TT9HT7UTyLR0VrqBgOXj/9a6dQ0Fl+wH2/ynV6bp1S/SflNtSfV5x3qDQ6HJ6EbkVyhMS3MZShm
	S/aeApNgFYRU/yHSI2RRhT9LGAbrcqV1ExB15w5LonUSo6CwAfOr+M6sSm+M2nAOFQz5AwBSaBL
	nJ1vXQjop7F7hVGEH+uOiCfKA/FvmDAgODKthsLQyRLJ8FrtnV85lgSriYivggNrIFs2H9QL/8T
	UgIUllWRpxhjOW3EYZfEQLDBKVjal8gu0JCGr0Gwg0CMy9Srzjy939xLoaOcymy8Kcox/HDu2EN
	eGdV/0hsUIL8pvIpTQENo13eWwe30NngFALRHDypUGakx2Kbfl2ujcnzUuIUPuLHlknWJHZd3SL
	IObtGcyjRJY4m6KQ==
X-Google-Smtp-Source: AGHT+IGeC6o1HVzazEgiOz1noJRTSTMdjMp+xdHrmQsE6lN/XZ0gi+/qxAf5PguUCf3kLfVe//gA3Q==
X-Received: by 2002:a05:6512:128c:b0:59a:10d3:7a57 with SMTP id 2adb3069b0e04-59a17d46ae2mr4353720e87.27.1766398715117;
        Mon, 22 Dec 2025 02:18:35 -0800 (PST)
Received: from localhost ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a1861f64dsm2981554e87.80.2025.12.22.02.18.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 02:18:34 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>,  devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org
Subject: Re: [PATCH] of: property: stop creating callback for each pinctrl-N
 property
In-Reply-To: <CAL_JsqJimYgXBurnEQR=Bjtx4NhfeCA+rBoK_2jvz_x7NTE3VA@mail.gmail.com>
	(Rob Herring's message of "Fri, 19 Dec 2025 08:18:22 -0600")
References: <20251219121811.390988-1-linux@rasmusvillemoes.dk>
	<CAL_JsqJimYgXBurnEQR=Bjtx4NhfeCA+rBoK_2jvz_x7NTE3VA@mail.gmail.com>
Date: Mon, 22 Dec 2025 11:18:33 +0100
Message-ID: <87wm2estty.fsf@prevas.dk>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 19 2025, Rob Herring <robh@kernel.org> wrote:

> On Fri, Dec 19, 2025 at 6:18=E2=80=AFAM Rasmus Villemoes
> <linux@rasmusvillemoes.dk> wrote:
>>
>> While not a lot in the grand scheme of things, this eliminates 8*2
>> pointless function calls for almost every property present in the
>> device tree (the exception are the few properties that were already
>> matched). It also seems to reduce .text by about 1.5K - why gcc
>> decides to inline parse_prop_cells() in every instantiation I don't know.
>
> Presumably it is still doing that with all the other cases? Perhaps we
> should add a noinline attr.

Yes, it does, parse_prop_cells() does not exist at all in the generated
code (I've just tested with arm64 defconfig and arm
imx_v6_v7_defconfig).

Adding noinline to just parse_prop_cells (on top of current patch) does

$ size drivers/of/property.o.{old,new}
   text    data     bss     dec     hex filename
  18098     278       0   18376    47c8 drivers/of/property.o.old
  14962     278       0   15240    3b88 drivers/of/property.o.new

There are only two uses of DEFINE_SUFFIX_PROP, so giving
parse_suffix_prop_cells() the same treatment doesn't result in that much
(merely 300 bytes), but should probably be done as well for consistency.

I'll send a proper patch.

>> Supporting double-digit suffixes would still require tweaking, but it
>> does match pinctrl-9.
>
> Looks to me like double-digit suffixes would work. Even pinctrl-0foo
> would work (which is fine IMO).

Ah, yes, if matching ^pinctrl-[0-9] is sufficient and not
^pinctrl-[0-9]+$ (or something even worse to
avoid-leading-0-unless-exactly-0), it does work, and I agree that that's
unlikely to ever be a problem.

Rasmus

