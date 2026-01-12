Return-Path: <devicetree+bounces-254190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F912D156AD
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 22:22:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3EE6230204B2
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 21:22:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2A9C32E6BE;
	Mon, 12 Jan 2026 21:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BjSuct35"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f43.google.com (mail-dl1-f43.google.com [74.125.82.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724353242CC
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 21:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768252930; cv=none; b=hwy8xi8c6YwMX7g+z83bb7fYk9Nl0uJNBHGUoICWrHcSKgdJnj+d0yV75mu2jgRjii3mr/8l25R3TSnKFc0+pg2K7mHTJoXjTfIEbempXNAopOOG7pjUOOZerO/mhQ2q8eOc8fTlTv06hwfgGXf4c3ra9MZjji5mNy2el7gS8xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768252930; c=relaxed/simple;
	bh=9TZYdcy92buA5+zb8K4DSLhDN3VCy/dmlapRWN0t8u8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uPeu/5gqIa98u+XeYbG/fSd2kWS7O0SKtMsrlqKKujAsxtZRo2M72osxQ5Oc9olCvadAO4LOGt8ZEzU5JtuZxjVpZmSoZ6Kk5Obo+FlvJ58Fr/H6eEbDCzeZu2S5ryY68jbaANGjW9HQhSeifVmY82FmKXt0WovzXr0+SscdJls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BjSuct35; arc=none smtp.client-ip=74.125.82.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f43.google.com with SMTP id a92af1059eb24-11f3e3f0cacso8621716c88.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 13:22:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768252928; x=1768857728; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9TZYdcy92buA5+zb8K4DSLhDN3VCy/dmlapRWN0t8u8=;
        b=BjSuct35d2WvQRCUWMcehH9im4twn31p2kMvn5nRsvCnFJ5H5OKqsZ2IbJy3BbswrA
         uhtAGmnyidedD4/CxTMTLm5Z81IpdQ3uS0IbYtp0fR20cGpcdpI6ZKzSzTvVSYopfLvW
         W7gDkKrIXS6jbVye7wU9zLNNpsN3G4FbwgCbq8GiOhVKjWi4Mm3MLTezP/nNG2/x1oiX
         gpGCfD238NhClNkLRsESMu61SiqZpT7gQN8xE4qk7kcN9/lGV//oJJcS7xYFHSPQduz6
         kX8Xxq/ilNLBBQNR+9yA54BOsjhYsJ4huS7XHu9QrxiSeM4xCD7GvBppiGQ1VXyNuojP
         kpbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768252928; x=1768857728;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9TZYdcy92buA5+zb8K4DSLhDN3VCy/dmlapRWN0t8u8=;
        b=baUn5Am3AFTv0D8gSD07h9OKRuIz1n+jliROEVKspIAOUl4mF9d9VfqwbhuZt0o14/
         GM4hxZHPG/0/TnoeeUyK8d1LFao0lhRf/q8ZMi585DK4FcNBBZQPiTigNlGSjJMhgbWR
         eGpHWUdlx9kDGFOZxkBK4ICS66Z/Z9iA4y75XROk7I7gqMCaO18oMnQ/dp32eoksbjMC
         cSNfWUBGd6/moCuUUuLvawtERCYVn5bTP6I0OrIPjMcsxp9jxFLLJ6oJMGsUg2udmy2V
         K8qT8VSts2uUkzgvNqk4Yeo4E0AZcilBkMNdEG8lF3Y+mfwhPOfsf/VzAmL1MOUStrbo
         AAsw==
X-Forwarded-Encrypted: i=1; AJvYcCUc4riuwJJsBap8XLvcXmrk+NiQr2ggmaXO6pvo5QzPppBcxxWQKK/uGFF8qKaNNppj+YFeoKIbncmh@vger.kernel.org
X-Gm-Message-State: AOJu0YxgE7LxCfP1mCCYhzoQOcHMqLAReLN0tnwnOwU7XEkEBRwuH3C2
	2a1myBxsxW6txID/bxt666MegadmFZy4PkATKzcMgLRkVBEApsAGvTJfdVK+13lu0F0eEo8gk5t
	r01HyRuoLPN3F3XCHShy+ljP2Vze+KEQ=
X-Gm-Gg: AY/fxX5Duhoh3eAaHEcpiHfve3KJfs3nlAa0RUN+9HvBislMwbM4CgiD/g4ZOJpOCq8
	crcvA9Dk2ou8ksfi/qX7E8rFdPVNT6P7dHXha2E/D6qN7Wj1b7FLsCgx0uDh1cuuUhuCKmkszrr
	B7/0lahX3iusyfLGl56cdkmNZSzwJncBthMH0d88jcmYzUwNYS/5qenJeM2KHpS8jUZwnN1nokC
	YhYntj2ldLR+StkUVIZKPiQ91HOEIxU3oB+LWwnpdMuFUfBR8OIwDpB3A5FcSJNuWhupRyS3Uz7
	udCqc+t1
X-Google-Smtp-Source: AGHT+IGnz+TQ1FzkSNkzmiP6ZsSsl7BSHvN2O5m/ZEyz5sL8MgaN1tiwfu3haADXH57oieB3BqIDHqdJD5bVWVx+bZc=
X-Received: by 2002:a05:7022:1e15:b0:119:e56b:91e9 with SMTP id
 a92af1059eb24-121f8b46102mr11509935c88.26.1768252928474; Mon, 12 Jan 2026
 13:22:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260111201040.162880-1-anirudhsriniv@gmail.com>
 <20260111201040.162880-2-anirudhsriniv@gmail.com> <45bdf2a6c0d33dd6ce0fd3cc279ef6edc509a540.camel@codeconstruct.com.au>
 <20260112-whimsical-annoying-fulmar-25e4d9@quoll>
In-Reply-To: <20260112-whimsical-annoying-fulmar-25e4d9@quoll>
From: Anirudh Srinivasan <anirudhsriniv@gmail.com>
Date: Mon, 12 Jan 2026 15:21:56 -0600
X-Gm-Features: AZwV_QiDoxEQSz_VBTL5mNLDJkArkIs_IZ-EllE4kfBgjkmOnTgx6aTvsjJIjLo
Message-ID: <CAJ13v3RKydFK+sP_Cm-HnQjsOJSDyX_dsGs_Yy564V=Wc7tQFw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: aspeed: Add Asus IPMI card
To: Krzysztof Kozlowski <krzk@kernel.org>, Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

On Mon, Jan 12, 2026 at 5:47=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> >
> > It's a bit bike-sheddy, however: the pattern tends to be
> > ${vendor},${platform}-bmc, but as the platform can't be specified and
> > the card's function is the BMC itself, I'd go with "asus,ipmi-
> > expansion-card" (I couldn't immediately find a useful identifier other
> > than the product name).
>
> This should include some model name or at least soc. What if you have
> IPMI card for ast2600 and later completely different for ast2700?

Personally, I was okay with Andrew's suggestion of naming it
"asus,ipmi-expansion-card" because that's the official product name
and that exact term works well for online searches.

This seems like a pretty niche product Asus announced 4 years ago and
made in very low volumes. I'm not sure if they'll make a new one with
an ast2700, given how the modern trend is to have BMCs on
motherboards. What do you think about the naming Andrew?

--=20
Regards
Anirudh Srinivasan

