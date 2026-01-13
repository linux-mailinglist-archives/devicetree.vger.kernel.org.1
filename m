Return-Path: <devicetree+bounces-254632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 25029D1A2C7
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:19:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DFEDF30136E7
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:17:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26CFC27F72C;
	Tue, 13 Jan 2026 16:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mOmuMFYK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 818D4284B54
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768321070; cv=none; b=WBi4l1WnywFZNRK+wlpkKi/AeBpSVVs7QYRNbne/n0MoDwIn9PKtSAel3Ng9LfzrM+K72AnKXr02pFBb3PeXaQKfqkCBoorv5rV37Fmy1VA3xvj6UnYkrHQJVQ7Zg/NuJEtqkMCRvUtEPMf89DSWnxruM1GmMVps8HMPo1sSAwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768321070; c=relaxed/simple;
	bh=yMU7RpmbGUQmgjsLmbNXZu5aW050fDW5MvKwtfgFqbg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dg00XaQVzlQzErMgls6EMb2jsvnhhU5NxgrY8tvLX2mGLC8n16iKrUwrLhoWPCNj/+8Mlb/gqXpo6Yi69srEn0GlODctkVXLHQYCG7xSrEp39CAf/2gjP+dJzOaUit/VUFCvDVhdwObzrnT3N9FreTL9GmpBm0WKW85hQxIGmls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mOmuMFYK; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-477a2ab455fso71067965e9.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:17:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768321065; x=1768925865; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=W5cQ5QbTEmkxlUwQtqiRbc+zlLlHGcmwQl/sOQIOejY=;
        b=mOmuMFYK3cMMLXUbn18dKxh4ntuwCPofy0p/wza2YLcAvXEncPZaUzVDnszC5vUuCr
         EtwKO47htMVN5EdpERh46uz6wEXHZHEDSuW67mUPTdzFF1wlMWoYzbnn9MWrN/3JieGc
         txD5TKpF7U8PPN2WW9o4JOawzYN8WC1tReCsBW65eNGXEDkZzg8np8NuAcCoONqX8oVO
         187MKh1LzZe9pdyfZyV139pIKhtcIEC2NPRbrMj8XEF0qcdIfKHqJJutVAWAeoKwYfjA
         tSfQ09mBre4EIs6lT8YK703RZR+TEpxmdfBvemDwnhriY70Mzl4L6YOSVIfvNEdvN8PX
         lWYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768321065; x=1768925865;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W5cQ5QbTEmkxlUwQtqiRbc+zlLlHGcmwQl/sOQIOejY=;
        b=IoUagfRAGlQ2qnayn9VNyma8y03/FsPGt4qMKK/ZEt8g6SMLmKeu8pXww5A0M8dGJn
         qE3yQpqXsejpqaYHEVu1GLj+ddcTW/xSvBQyEHBBsUQby5TXrsKzhYlnc/hg2VApngLK
         O+2L/vWkf6MKY3Bw2T1pHZVXN1dc4YlT+hewvvg/U9tLwAgd531C6vHYrgGtQyI338SV
         YvpYdLvt100baR7f3quNnGvEv8/u+9z/3TuOUIJEmWBCCKTMlxm2fdpkeuy4Q0yyXhiC
         D7wvVr3/0epxzlrSWk1uYXIkX/pOD1L3DDLEjqSJw0CUSzmcI8QYaPme1SQMsJgZhc6o
         Q36w==
X-Forwarded-Encrypted: i=1; AJvYcCU+IhQGQgBEbneVnQbqQdD4MKDEevKCDfC6GMjwyQU2e4bPZLadDVRMYYFO8rYWTKYJxKjqGG5+NZdp@vger.kernel.org
X-Gm-Message-State: AOJu0YyyOYeuJXCdDdLVnxTCxKYmp+Y3/ov8ztSjVk7g5nIn6V0bSzZ2
	UhEI/lKapQ/Ta5W3N1lJcJ5VzRYjSPqX1pHWvPTZUzm7Hnw84QhbB1oQ
X-Gm-Gg: AY/fxX4V2PYR2qnR3CCqCT2/Wq81l0D5Eb/ru0vITBtfhiNzk7wdFp3Fplgd4ICFZqB
	MYcp8V/xVMq5yHO/ZBfkLOKvRHdroixxjQbELhWSkXVkF77GhGznXVA3OjzN2M5HUfokpcisM68
	5QeACFahnbhJKx6cOO8MiNRQ2jjBCntfVKA/U+Iinf/unRou0FITgCJBAigLi9s0JDfHH/2lj0q
	w3mAoiL64kQIhv/ECkluBw3LBdN3B+qK1WK3T372A3FTqzuSXx4pEHLz2VLFSDQK0UeQvcp6MuI
	MKW5bV+xPzd+G99o+sLrHiG90KuWvU6VomgilHpBRY4ysOiWcOaPaxvgbkdkVZlOnrpu+0FfWXR
	iKNLYyxQ6L/hqc4mYBQ6IRiGAVdlpQrV0mXb1v8z5C1cWNduxbp1Dn7EMxXn4SV6VIWAOLTsXy7
	ni47fbmRqyapU0SPjupUYhz5TH8VJjts8C9yMeEer93P74T9O04t6acwM1HSWiz2km
X-Google-Smtp-Source: AGHT+IEAzrK93inVXSrX8Kw6zVEeuZ0+E8dHH/rXiqvCESoJ7JG5E/eH8JB47SON6HhjECNrEiGHSQ==
X-Received: by 2002:a05:600c:34cb:b0:47a:9560:5944 with SMTP id 5b1f17b1804b1-47d8f287ae3mr154134765e9.34.1768321064788;
        Tue, 13 Jan 2026 08:17:44 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47edc05b267sm36951725e9.15.2026.01.13.08.17.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 08:17:43 -0800 (PST)
Date: Tue, 13 Jan 2026 16:17:43 +0000
From: Stafford Horne <shorne@gmail.com>
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: Linus Walleij <linusw@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux OpenRISC <linux-openrisc@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: Add compatible string opencores,gpio
 to gpio-mmio
Message-ID: <aWZwJ569WMBOKUVc@antec>
References: <20251217080843.70621-1-shorne@gmail.com>
 <20251217080843.70621-2-shorne@gmail.com>
 <CAMuHMdUaO_PwWygW8qss47W_ErB4pm1Z2HQ+edvw1-x7ce7oKw@mail.gmail.com>
 <aV9o1LL0Ahip0O3-@antec>
 <CAMuHMdXYCNR0ANn152ghFExpWY_yZ5+kyFGGRwA+X-EFUvxZXw@mail.gmail.com>
 <CAD++jLm1u9ChqsftwvbOptiG3Qo2KWxPjqN2snOVuZDYuVST5Q@mail.gmail.com>
 <aWD53y15NuxrKGxf@antec>
 <CAMRc=Mcq256VgbKf82DBrvPhyYfUioCnfBOg23L3RkA6X8qSGA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMRc=Mcq256VgbKf82DBrvPhyYfUioCnfBOg23L3RkA6X8qSGA@mail.gmail.com>

On Mon, Jan 12, 2026 at 10:25:03AM +0100, Bartosz Golaszewski wrote:
> On Fri, Jan 9, 2026 at 1:51 PM Stafford Horne <shorne@gmail.com> wrote:
> >
> > On Fri, Jan 09, 2026 at 11:07:17AM +0100, Linus Walleij wrote:
> > > On Thu, Jan 8, 2026 at 9:41 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > >
> > > > > > What is the rationale behind using brcm,bcm6345-gpio?
> > > > > > Given brcm,bcm6345-gpio has 32-bit registers, while opencores,gpio
> > > > > > has 8-bit registers, I doubt the latter is compatible with the former...
> > >
> > > Yeah this needs to be fixed/reverted pronto :/
> > >
> > > > > I switch the size from 32-bit to 8-bit using the reg = <* 0x1>, <* 0x1> setting.
> > > > > Also the reg addresses of "dat" and "dirout" are different for the real
> > > > > brcm,bcm6345-gpio.
> > > > >
> > > > > brcm,bcm6345-gpio. Example:
> > > > >
> > > > >        /* GPIOs 192 .. 223 */
> > > > >        gpio6: gpio@518 {
> > > > >                compatible = "brcm,bcm6345-gpio";
> > > > >                reg = <0x518 0x04>, <0x538 0x04>;
> > > > >                reg-names = "dirout", "dat";
> > > > >                gpio-controller;
> > > > >                #gpio-cells = <2>;
> > > > >        };
> > > > >
> > > > > vs opencores,gpio Example:
> > > > >
> > > > >        gpio0: gpio@91000000 {
> > > > >                compatible = "opencores,gpio", "brcm,bcm6345-gpio";
> > > > >                reg = <0x91000000 0x1>, <0x91000001 0x1>;
> > > > >                reg-names = "dat", "dirout";
> > > > >                gpio-controller;
> > > > >                #gpio-cells = <2>;
> > > > >        };
> > > >
> > > > Exactly, the register space and register widths are different
> > >
> > > ...as proved here.
> > >
> > > Stafford can you send a fixup or revert patch?
> > > (Only need to revert if you can't make a fix quick enough, which I
> > > think you can.)
> >
> > Sure, I'll send a fixup to the devicetree binding and a update to the driver to
> > just support opencores,gpio.
> >
> 
> I assume, the v3 you sent is *not* it and you will send a v4 with
> issues pointed out by Krzysztof fixes?

Yes, I have just sent out the v4.

> > Hopefully, that can be picked up in time by Bartosz who has this one staged in
> > gpio/for-next.
> >
> 
> I'm ready to pick it up as soon as Krzysztof Acks it.

OK.

> > I'll send the 2 patches as part of my series for OpenRISC multicore fixups as
> > the devicetree's I have added have a soft dependency the patches.  After/if the
> > patches are pulled to the gpio branch I can drop them from my queue and I'll
> > just have to make sure Linux merged the GPIO changes binding updates before the
> > OpenRISC updates during the merge window.  Let me know if there are any issues.
> >
> 
> Sounds good.

Thank you.

-Stafford

> > > > > The opencores,gpio setup does work.
> > > > >
> > > > > Now that I think about it, would it have been better to just add opencores,gpio
> > > > > to gpio-mmio.c compatible list?
> > > >
> > > > I think that would be better.
> > >
> > > Yes this is better.
> > >
> > > I should have seen this, I guess I was sloppy :(
> >
> > I should have also thought more, but I don't do this often enough to remember
> > all of the rules.  Sorry for the head ache.
> >
> > -Stafford

