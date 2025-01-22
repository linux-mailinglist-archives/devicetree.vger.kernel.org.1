Return-Path: <devicetree+bounces-140424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C716EA19AC8
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 23:18:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0BD1B161EAE
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 22:18:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4F701C8FB4;
	Wed, 22 Jan 2025 22:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b="ZCBIDOyC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC4B1C5D58
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 22:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737584331; cv=none; b=Wnl0K7Uh7wc3V4E4jFGLRlEVj++HRQQvzBW+AgERBCs2vioxAuc02B3J3EGQr0u0YgS+CtyiVI/1ykrkif2ITPBwIpMwIHfMHl2b3QKgMRrHG2WdUYOwZxU5rinSHwlWO5TT5ZcmDk4MInBvri6208ryL3Y3S8w5ThBhqgm5KAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737584331; c=relaxed/simple;
	bh=+PvMhmm+LFDYWeVPl+BIyyw68mqFF2dqNqhlskC4uOU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tgbAXiPqjay80fC7Sm+eKSpWBZedMogFQKWYApiBsFRpJss4JtWKKXCuCKichAmQM5NZSr6eBz6QsCjiKZGrNbklHvhT2CM1e6J/d0E5RMF++WTqVofKg5sfG4PW1FVMHiQ63sLBkg3DDlJ2oEm71eHz46MMJurGn6e+Hq3uZ/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com; spf=pass smtp.mailfrom=konsulko.com; dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b=ZCBIDOyC; arc=none smtp.client-ip=209.85.219.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=konsulko.com
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6d92cd1e811so12475936d6.1
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 14:18:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1737584328; x=1738189128; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=M6eR1JyYqLS6mujuzbCER0T9AmeRtRFma/AqjlQJ+ag=;
        b=ZCBIDOyCk9xh6/YqDekm+Rm382JuFT1AnuESfmYv2GEq16aNS6DgTBpDvu0yBaYc3y
         5YXhv++dn6kukTikK7OwN8IIvr1NwCwpZfVmWfGyQPvyAmmC0LQ7QEg9Ylsud7+tuuLL
         9S1kKXtmCksVFldBih3gBUtYmB5JI6x01x//g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737584328; x=1738189128;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M6eR1JyYqLS6mujuzbCER0T9AmeRtRFma/AqjlQJ+ag=;
        b=rbr5Sz2Dsv//eZnPlsu2v8tu/9MduiDFXV/U8swzHPRVAb9KEiwib/Vuz5SI/AjFjj
         xiY/0mkP37MxD9jroXJ7E/P6g2IEJvIvSt+9PcIKwJLHEABISURH0/sE4lkW5aGwfipz
         IvQU9cfrf6Ts9Tjr/7kkVEnOckdvxYv4hFoxXkhZdYsHxJfOXTRxa4G0ojMtlVZ4b2VZ
         /cXcPP7R9OEiz26DIkepZP9tqonLgECsvm0/LRJxTBa9OipjrtI1ImDHkCX1XLI94PZM
         yuetTQ6KsLpkkL5xiyDl6TFPlXRkY06Fzkav3Pu+MqyeIJQZNyeHY6qM1AMpEs2/9+dl
         1Qpg==
X-Forwarded-Encrypted: i=1; AJvYcCVd14CHwTZOSvlAmVVEiVFW/dQwMhucufiBhNicRyBmQqvGl6NswcarE+As04/3kWzRnTOFJV54Kp8M@vger.kernel.org
X-Gm-Message-State: AOJu0YwLTTMZUCvPSP9iQRe1yGV7+vOlrm/C2F7U78kmFfu9GzUsfQur
	hp6mE/WLdZ+i0beUnFWzraDvSvPYBMThbnJ2UXKrehJJf2a8ZwEM09lP2iSd1n4=
X-Gm-Gg: ASbGncv/2OnYTpMVto1fhX/MBqIDkTw5cHGreSZIQaSFyoZ1q55NOe+5KNr7EprNBkg
	Qh/ZKZADhaMdtmjwyNBKp7Y4YeKebxRe98KcNVRsiNSr3eBiSC57MU7J63TtZKe5E/LUyaa50kG
	iAtFn7cxRccvrEhXPQpOpU7krgvFNQzOpT3LLGXf/HqP57nbxq8cNl4iwxymmw4gJlLNn/FLAU7
	wVFwgeofw5+jDB7F+mys0Vnah55mIOxlDAey9SGAVIZRadx1JUVPxB3IctU4ndw5wlYGw==
X-Google-Smtp-Source: AGHT+IGSP5+iXsqblGNjAiGGk1yqYbXiU+WH0BmzN+XBmxBaH952fYla6YyRtqjYctbkF5j47FJypA==
X-Received: by 2002:a0c:f201:0:b0:6d8:98a0:23b6 with SMTP id 6a1803df08f44-6e1f9f9278bmr14999296d6.4.1737584328284;
        Wed, 22 Jan 2025 14:18:48 -0800 (PST)
Received: from bill-the-cat ([189.177.145.20])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6e1afcd37f6sm65238856d6.91.2025.01.22.14.18.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 14:18:47 -0800 (PST)
Date: Wed, 22 Jan 2025 16:18:43 -0600
From: Tom Rini <trini@konsulko.com>
To: Robert Nelson <robertcnelson@gmail.com>
Cc: Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@kernel.org>, linux-kernel@vger.kernel.org,
	Nishanth Menon <nm@ti.com>, Tony Lindgren <tony@atomide.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: omap4-panda-a4: Add missing model and
 compatible properties
Message-ID: <20250122221843.GE60249@bill-the-cat>
References: <20250121200749.4131923-1-trini@konsulko.com>
 <7hmsfjn5mm.fsf@baylibre.com>
 <20250122000824.GJ3476@bill-the-cat>
 <20250122214604.79e1e829@akair>
 <CAOCHtYj3LumO4pViSOyTwjNxvG1E-DX=JA0-m4Usi1qL+jw21g@mail.gmail.com>
 <20250122211014.GB60249@bill-the-cat>
 <CAOCHtYjQtPvun-YTf6KT3Pw+jn3PS0tKM5uz1to3C6+Usjcq5Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAOCHtYjQtPvun-YTf6KT3Pw+jn3PS0tKM5uz1to3C6+Usjcq5Q@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett

On Wed, Jan 22, 2025 at 03:52:47PM -0600, Robert Nelson wrote:
> On Wed, Jan 22, 2025 at 3:10 PM Tom Rini <trini@konsulko.com> wrote:
> >
> > On Wed, Jan 22, 2025 at 02:56:19PM -0600, Robert Nelson wrote:
> > > On Wed, Jan 22, 2025 at 2:46 PM Andreas Kemnade <andreas@kemnade.info> wrote:
> > > >
> > > > Hi,
> > > >
> > > > Am Tue, 21 Jan 2025 18:08:24 -0600
> > > > schrieb Tom Rini <trini@konsulko.com>:
> > > >
> > > > > > If keeping it is just this binding update, then I'd say we keep it, but
> > > > > > if it gets any more paninful to maintain, I'm also not going to argue
> > > > > > very hard to keep it.
> > > > >
> > > > > I'm not in the position to see if any of the Pandaboards work at this
> > > > > point, so I don't know if they're otherwise functional or a huge pile of
> > > > > problems.
> > > >
> > > > I am still testing stuff with pandaboards. But I do not have the a4
> > > > one. So yes they are functional. Compared with other devices still in
> > > > use using the same SoC, here you can play around with everything, know
> > > > the device. so it is a reference for keeping the really interesting
> > > > devices working.
> > > >
> > > > Regarding the a4: I think it is better to keep that one in, just that
> > > > nobody gets confused if he/she digs out his panda board for some
> > > > comparison test and uses a wrong board revision.
> > >
> > > Do you want an a4? I could dig one or two out! ;)
> >
> > Unless I'm missing something, the a4 hasn't been bootable by upstream in
> > about 10 years now... There's no top-level compatible, so there's no
> > match in the generic board code. I can't recall if the A4 versions were
> > available to anyone other than maintainers and beagleboard.org folks
> > themselves as part of bring-up/testing. I know I had one and ewasted it
> > a while ago.
> 
> PandaBoard EA1->A3  = omap4-panda.dtb
> PandaBoard A4->+ (non ES) = omap4-panda-a4.dtb
> 
> A4 was the final production version of the non ES Panda..

Oh! My memory sucks here, sorry for the confusion. But it's also still
the case that omap4-panda-a4.dtb hasn't had a top-level compatible
string, so can it even be functionally used?

-- 
Tom

