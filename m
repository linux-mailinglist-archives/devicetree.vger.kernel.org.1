Return-Path: <devicetree+bounces-140419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C118DA19A27
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 22:10:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A3D2F188C8EB
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 21:10:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFB4C1C5D5B;
	Wed, 22 Jan 2025 21:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b="gqywPH39"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C461C5D49
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 21:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737580221; cv=none; b=Y5CskMLnNQX8gKOEspY9oRP4wMSCUB55WSqIg1kmY/WwAVgWPHNQ8BS3QCsbIOeAB4lX+tKZv32KDLlerqLbfYny4A/EizLziUn3KhlFh17pRMFShkKp4K5GPZeWVUWlnHPdBRU/f3zZLESkODABpEvxOA1m2Y3OPf64lAsuVvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737580221; c=relaxed/simple;
	bh=knqqwG56+Zkiuc6Um7NthcPaHh7Ub1HWkG4/TApJHSQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c/ijBNDEjg7rh5n4k0wpGNxgIV+6GANtkWb5DfYxTmJy45TMv6aHDQkIwHjBNAPzmyQq+3vgq1yB150jX9DT7zXriXp2cpGCej8s9jfY5wVT2XgD+r9cSaZ5POgeiIofphwPnvdYXKFW4VEU3XYLEQxfcYiae/668XWGohatLkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com; spf=pass smtp.mailfrom=konsulko.com; dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b=gqywPH39; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=konsulko.com
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6d900c27af7so2664156d6.2
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 13:10:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1737580219; x=1738185019; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5LzedW4/gkPI1sQQoo13opFYMKSfswuf1i9ILe+DUZE=;
        b=gqywPH39RddZFMl5W4jHdZjTSCZJMT13JvwnqSJ6pjm6WpFZZqwvls8AG5BRFlp80P
         M2npHfNSqsJNAIW9ZzWHooOriHmjpmzcC7QOjulUVNXpsqWomkAIkU0sJytZRR+SJ/0C
         Fv2GkteRP4/gL11CWXlO02Vso8JKybrhrPM80=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737580219; x=1738185019;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5LzedW4/gkPI1sQQoo13opFYMKSfswuf1i9ILe+DUZE=;
        b=BPkN6atvDqxFDA/3UemUAfXD7gRez+ucz1BWD1g3CMn/KGTdeOnbSX+ZppI7i5Ofzs
         1mCvxNejaap/slWz4IagTaXPQ2WXghIxU+FHSca1ujWzhFejA+0eYnnibK1jJ2k4eXtZ
         ys+xT0ovNxNSccVCVYUhLZClj8Gn50Ao6GqRRHaxA1y0FVbfoJr3GWo+qd5epnWzFH3Z
         a+OncPi0okuaL+yLIhs3pfAid+Xy6CRUaLErCsuPOIeiitTxXVtMFNzGxY2RApNLF1F0
         ACtliIiyXXehw4Lfg7Zqm/NE+bbcU4sqZU452361CZRKnU0+idSFNfeXHPBvvEUcddIZ
         zgGg==
X-Forwarded-Encrypted: i=1; AJvYcCWbv1qty27WqdxvGCETTIGh6aynGNeWJKfETYc9Ev5JKD0BZQYMDe4ZV5izl3F3VSjpsjyrfW0MhQGv@vger.kernel.org
X-Gm-Message-State: AOJu0YwToxQ+QoTIswhQBZgghtFEOLosUxwI4lKPHyUpKdBa72JYqPKh
	Y+L55PCUmhK1pXHKOIsv+vOyvycqEOTSeqLseX8fsjJCM4NA6paY/ku923KUSbo=
X-Gm-Gg: ASbGnctZQOY/ojXBgZJkBSwm8nysM2+8MB94NxMzLdzlpDTsuU6s3G+xhHDFA7ryP9m
	SAac/kn/vNYJW/SNgJFzvmOWeNzvvoDYtD8Isg0R7pDJuZiJjVx5HF20TUE+E9gYJw/VOKdkLYW
	DodcF2BLoDVYq3+ug3c1qFyZe5J0FN3bC2Y4KHC9cNTL3MxQU9c18PXfu1Uzrw6AuTXJ3BpokFN
	PD9J0TyDq5fasHHHYEfECMuNd0JzPfHwP/ZQlaNSidOfOD9+K4o3+wBnAKWKquNIxdx1Q==
X-Google-Smtp-Source: AGHT+IH/RXUC8pil/rzUbty7sfogAPWCI68Lg9BTk7dBEaxkxuI9u9FIzMYxXRNr2XM/u4PKMF/nbw==
X-Received: by 2002:a05:6214:226a:b0:6d8:a148:9ac9 with SMTP id 6a1803df08f44-6e1b220e57dmr332477856d6.30.1737580218905;
        Wed, 22 Jan 2025 13:10:18 -0800 (PST)
Received: from bill-the-cat ([189.177.145.20])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-46e1042fa63sm67504711cf.68.2025.01.22.13.10.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 13:10:18 -0800 (PST)
Date: Wed, 22 Jan 2025 15:10:14 -0600
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
Message-ID: <20250122211014.GB60249@bill-the-cat>
References: <20250121200749.4131923-1-trini@konsulko.com>
 <7hmsfjn5mm.fsf@baylibre.com>
 <20250122000824.GJ3476@bill-the-cat>
 <20250122214604.79e1e829@akair>
 <CAOCHtYj3LumO4pViSOyTwjNxvG1E-DX=JA0-m4Usi1qL+jw21g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAOCHtYj3LumO4pViSOyTwjNxvG1E-DX=JA0-m4Usi1qL+jw21g@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett

On Wed, Jan 22, 2025 at 02:56:19PM -0600, Robert Nelson wrote:
> On Wed, Jan 22, 2025 at 2:46 PM Andreas Kemnade <andreas@kemnade.info> wrote:
> >
> > Hi,
> >
> > Am Tue, 21 Jan 2025 18:08:24 -0600
> > schrieb Tom Rini <trini@konsulko.com>:
> >
> > > > If keeping it is just this binding update, then I'd say we keep it, but
> > > > if it gets any more paninful to maintain, I'm also not going to argue
> > > > very hard to keep it.
> > >
> > > I'm not in the position to see if any of the Pandaboards work at this
> > > point, so I don't know if they're otherwise functional or a huge pile of
> > > problems.
> >
> > I am still testing stuff with pandaboards. But I do not have the a4
> > one. So yes they are functional. Compared with other devices still in
> > use using the same SoC, here you can play around with everything, know
> > the device. so it is a reference for keeping the really interesting
> > devices working.
> >
> > Regarding the a4: I think it is better to keep that one in, just that
> > nobody gets confused if he/she digs out his panda board for some
> > comparison test and uses a wrong board revision.
> 
> Do you want an a4? I could dig one or two out! ;)

Unless I'm missing something, the a4 hasn't been bootable by upstream in
about 10 years now... There's no top-level compatible, so there's no
match in the generic board code. I can't recall if the A4 versions were
available to anyone other than maintainers and beagleboard.org folks
themselves as part of bring-up/testing. I know I had one and ewasted it
a while ago.

-- 
Tom

