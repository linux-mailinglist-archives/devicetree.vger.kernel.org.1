Return-Path: <devicetree+bounces-132618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC2C9F79C8
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 11:46:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A878188C37E
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 10:46:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBB5E222566;
	Thu, 19 Dec 2024 10:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b="R/9fvMTZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0037208A7
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 10:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734605161; cv=none; b=MBykEqtAwO/+VAqqmvEUhR4j04iKXRsX+3u0Qh2GNA3dTTy62bQ9cbAjFfILnEtNAmoNY8IiTy76+8jAKVn85G6SshmlyPZlPvdkw3u5fSAcHE7D//RtZ1QOOl7HXox3U0/uZo9LOpgOLqSsaZ+1CFt/FdGVLuBFJKwEHPZxwn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734605161; c=relaxed/simple;
	bh=kfAWATXJKBJ8RGjGiVBA7vXcVCClGQxAViZsQ/ciTpM=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fu3Nx93haRfy6PGVt7H6nuF9QqX5rYlymP+YeT1/FysTkSEpyZo2mPVhxJJf2QeQcLXNEHNPEsvCJhg9zGwVppQUntX8Ls/Wuuh97obiqmNo7U4iWBeR9uNuGuWRsUHGAWdnFYZHqgzW7jbAQ03OdB4eOh4KekYS1527PkBj4sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk; spf=pass smtp.mailfrom=remote-tech.co.uk; dkim=pass (2048-bit key) header.d=remote-tech-co-uk.20230601.gappssmtp.com header.i=@remote-tech-co-uk.20230601.gappssmtp.com header.b=R/9fvMTZ; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=remote-tech.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=remote-tech.co.uk
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5d437235769so994133a12.2
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 02:45:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=remote-tech-co-uk.20230601.gappssmtp.com; s=20230601; t=1734605158; x=1735209958; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dAHd+EbTV94znxZS0/H2KKVGTBswxUh/P1a9OtmVIVc=;
        b=R/9fvMTZoKiSvxgqzcRm9apRJ7tG1fkJkZJ0IBeGU1olD1Z2wxcATns4ZzFBZbz3hO
         9scSc6dMHElWT/RC81um7js2wLyHOSldfNcwTiq12i4WsRJMQ88xH7dhdcBs8971odCU
         WChkMuIdefQaKL2fpvHw/0ZyC73soO28A72acGeT8Iyng4VbZNYn2SfY+XCuk2djR+JT
         ZaxuGz/14MPNKFqBY4kd3knOVG/Kt4yjR5j3PLPFGrlzR8RhaNkGX//zApD9zKNkr/MF
         KWp1qWE1zpervsa5KhDYHVsyLsNn7L2tvveCCGRbPusyXVEuM8gNOoSefxiRt1m1BCtb
         sZkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734605158; x=1735209958;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dAHd+EbTV94znxZS0/H2KKVGTBswxUh/P1a9OtmVIVc=;
        b=dfvAc9LAzBkSORdmJhHoEFvHPQ3HJVuCJkpi+M/r3rjwMQDv/Is8P72AnE4b31123Q
         EYfPV8dzJGNTC/LMse8IlkeqI6sJqGTMmeRrMlSNzLTXHh9WlLbLaT6MXAZ8higIMxVS
         C3DJyE1zhc2+R9GjoNFkK8y7wg3J/wpo0O2WM4X5H2kukiE3Z3bib0K5SZHsBVKm+rtF
         adPUGd4ZEV0iVpY2zvwmTEmMSHCBEryU8Eha9Ed78t8H4vf6LVJm6nblGypDs5psXLpG
         ap3ZxfkRPryoW92Y0PnkwV5otiyPGnaV5e65U95OqO+NiAw6c5B5dVv1xgcZdgARsuRv
         BXNw==
X-Forwarded-Encrypted: i=1; AJvYcCUBqWLfF+YcTsIfhj5mTbdro7VOnA3q8pkpJzk6KU6FaXaS7S9rOgGbyuQt6AW2D10A1+2jRRpNK1Wh@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7/hC2qk7OcGON5bSKikafdDVfbeRnnTZJmaKdxZZ3sR7acUXd
	kTH8WlNVCgv4cXkL6F+vwKs1O1PbM9wTctl3nbsR2p2vR2NTGQiDJXfympp6qYEXhLOq6eyzRzm
	ISYb/QC+MGz3Npotuf0t5dJHnrOu92C16GZthCcC9Yr+pQyk13vyN+meVkP5neXA5Y/asvDT6Xx
	crkQ3XcdYtRkkC/N0guY7GYV03
X-Gm-Gg: ASbGncuAbMDDt9BHFReSn/gp18jR+JtGRV1ksYqr/ncOGfKIKfqq/4wFVwGgEOe5c4D
	GgBMLtgQqd71Ov1H9hfmNBpuvIC8lUZUXfY/jQY354OaAG5OMZiFsTZrdU0bIStiKUSYCWNP+T9
	DsoK/jExLbYjZkjvEyZlGGalqWovudpOozidtrcQqs7AEQKnk+bzkl0bo6pKHMCpGpZ1x4qQ8iK
	2nh6+nnwN3/Ra7X/ISkksAjbNyvp0RkJrA2xO4XaTysnfnIbPu8hLVgg2tDpAfSFur+j6RTbZvA
	fI3gaOsiNaIsO/K+aH6zPX8J
X-Google-Smtp-Source: AGHT+IGGzXK6nUcQjtIbuDIGRxih07nRmy8iLhfk2fbAs5JzbyHv7qJEr2ajzXdsqNw5Q0QRupGTaA==
X-Received: by 2002:a05:6402:4025:b0:5d0:aa2d:6eee with SMTP id 4fb4d7f45d1cf-5d80261d527mr2647404a12.26.1734605158033;
        Thu, 19 Dec 2024 02:45:58 -0800 (PST)
Received: from admins-Air ([2a02:810d:aec0:2a54:946f:b35a:e674:a0cd])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80675a5a8sm514166a12.13.2024.12.19.02.45.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 02:45:57 -0800 (PST)
Date: Thu, 19 Dec 2024 11:45:50 +0100
From: Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>
To: lee@kernel.org, pavel@ucw.cz, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, corbet@lwn.net, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: Re: [PATCH v10 2/3] dt-bindings: leds: Add LED1202 LED Controller
Message-ID: <Z2P5XvxCjAPmiFDI@admins-Air>
References: <20241218182001.41476-1-vicentiu.galanopulo@remote-tech.co.uk>
 <20241218182001.41476-3-vicentiu.galanopulo@remote-tech.co.uk>
 <c93c89c2-7188-4b17-ab3f-a3d2f1972a21@linaro.org>
 <20241219082840.GN2418536@google.com>
 <e911eda1-fec3-4d2e-bb8b-655f6661825c@linaro.org>
 <20241219084227.GO2418536@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241219084227.GO2418536@google.com>

On Thu, Dec 19, 2024 at 08:42:27AM +0000, Lee Jones wrote:
> On Thu, 19 Dec 2024, Krzysztof Kozlowski wrote:
> 
> > On 19/12/2024 09:28, Lee Jones wrote:
> > > On Thu, 19 Dec 2024, Krzysztof Kozlowski wrote:
> > > 
> > >> On 18/12/2024 19:19, Vicentiu Galanopulo wrote:
> > >>> The LED1202 is a 12-channel low quiescent current LED driver with:
> > >>>   * Supply range from 2.6 V to 5 V
> > >>>   * 20 mA current capability per channel
> > >>>   * 1.8 V compatible I2C control interface
> > >>>   * 8-bit analog dimming individual control
> > >>>   * 12-bit local PWM resolution
> > >>>   * 8 programmable patterns
> > >>>
> > >>> If the led node is present in the controller then the channel is
> > >>> set to active.
> > >>>
> > >>> Signed-off-by: Vicentiu Galanopulo <vicentiu.galanopulo@remote-tech.co.uk>
> > >>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > >>> ---
> > >> Stop sending the same 5 times to people.

This is the command I used:
   $ git send-email --to-cmd='./scripts/get_maintainer.pl --norolestats v11/v11-000*' v11/v11-000*

I received the submitting only once and I do not know why it sent you 5 times.







