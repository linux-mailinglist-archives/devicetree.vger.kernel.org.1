Return-Path: <devicetree+bounces-163887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2E2A7E6BA
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 18:35:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 577FD188B480
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 16:29:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D18420E02B;
	Mon,  7 Apr 2025 16:27:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="CJjPujMh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF193205AB5
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 16:27:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744043271; cv=none; b=rr+3LBoe5rr3a6GcuiPL9iQiScvrKsCQyVHSu5GQXEWYgolTcvsEyTcXRI2BO3WwjvTM53xo5aUD7gQNuBbi6Adr9/TJ+I/CEwY5+RvUTvZjT20w0CAitACWcSTpY6Gqnpugv++c9/6z7cHNiPdPpJYILvl2Hnsicz6MGZebcWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744043271; c=relaxed/simple;
	bh=ixu4OFoJwzg1v+1wl51xk03lO5q8ieoco/QoCpn/be4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cIQ0DvNnYYEKEcmn95ms8ist/F/xB3cK4lbHw9Ej3HTioSqXFUIXuvQ7QpUQsejPvtX8KOIjh6QL5D+csMn6x5wohH9qwdYYXfLGx8w//4INp649xeuH/0w6W/NNQvS01qfzFPyoUinN7keBHSusFUwfnBcMUORDXLEpBY6Hh1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=CJjPujMh; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-39727fe912cso2027897f8f.3
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 09:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744043267; x=1744648067; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Gmt4HX/iSNiSTqkD3t3ALwtpmvWnuIuBQoVi+iO2Lmc=;
        b=CJjPujMhKpR8Ka2qInFujzInJVSRNAgpGLfDvBTxTRZtTXaVur3Y4xK68UyceaFHh7
         7pPcqYdXqsa3XhfsWV0/OCq8L0m2LkA13N9k2HWQ9jFAGeXSB3ShLkhRFB6HOSZxDa1N
         N3vu0K0ProzdEcBTfluMRCpfE2vYHJqpcrTdHD+QqbFa/H9bVk3kuPHNgRg7wysgFu/4
         y6vYEbehUyBMWDRBATOJszi25NbagcmcvmZvcbey2LB0VhWms1V8dCnMC8FWLkLR3ngM
         5UoAxTaM4V7MkSez7t41faMXV+SGO2jr+azrbjVPwet8CIgtQIsDNWfklXQ3PNVnnltN
         aSkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744043267; x=1744648067;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gmt4HX/iSNiSTqkD3t3ALwtpmvWnuIuBQoVi+iO2Lmc=;
        b=A4qzD03/FmbaULtvULsdKo8F5R1j6XEl+rRcfm67KQox4NkKiYhQ0KU9jUTkcVSAun
         i+YtzSeP/qmOqdSdBD+mZmkYVr8LiE5AOx3m67v2vxTVfwsMsiA2tjiSMc9s1C58hc1C
         Vk4UKHtr+C3xZ419mEv6dOar83LgvdeJDjW0soaJMgRswx5lHnLFeeaSjjsyk/0YLF+o
         CATMlcSttj7foOyOrqTWnu9YlGoPthZfGminhVPcFTzQuDZ7r7h5Yg51nap5Af6Pypna
         +gQjPDQnhqYu/RyDbgh2LaBfBgv+gG9LCaeieBWk3Nkr4u/U/W7CYX1FFnOTuu2lSWZ7
         ax3w==
X-Forwarded-Encrypted: i=1; AJvYcCXFwsLgP9p9YXRfC4Qi+1dzy0faZUj/7ZmedhTeRniidse3L+Vptm4Z0i8pRCE0TDi3UhoGbcUr1NsM@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0wRPVfm0l9vmfNgfwznEbP9aOPr2p2tyiu/AxWj29TkjwrDEQ
	KPv2SxWBMP+rFY6oAPxaE2ofies7rweqP5mmoUkiQsUFmyqJzfQ5OCICDksRoeo=
X-Gm-Gg: ASbGncscqY/vKzjhBr6Csqwne8SOLifhD/x8XBwaDKueQMVRAMhwKmrEPESM2O3iS1a
	IVSDwNJysZdGrRjdEQkmsFHkrfdynyIHMusGqNohdlZ4nDCdISPyVLrZY3XQ5v7WbOTuJ8Mi/tg
	rQf3/WI1DUKmbtQEtbXZkrIap/zIKVzIYAG71sQCgFC15wTIizr959+bgNE1+JZczF7dY4zM4Fh
	RS9K+pGi1jb4Yn0t2aaCJI0gHqlcTbNHevD8487Qe8pzEVtsqY8pn3gdcoUXDhGtr/d7ME+D1r9
	AUWaj27MxVkHftdeYheXFaM7gOijl2IHT+8aGsqWTecKEi9xrdP4/CH5/f/9RcCyzww8LO9PZ1B
	nfD+jEA9IJc7CgMKgVqjOlqunJIA=
X-Google-Smtp-Source: AGHT+IG8J3er1iyXQBPMxITzMvfz9EFr3jDi7ygtRVXk9vTgIkpVU04qGBBpxMY6//a+NXkI/WoaMA==
X-Received: by 2002:a05:6000:1786:b0:39c:1f02:449f with SMTP id ffacd0b85a97d-39d6fc00d2dmr6036975f8f.2.1744043267049;
        Mon, 07 Apr 2025 09:27:47 -0700 (PDT)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34a92desm134263455e9.14.2025.04.07.09.27.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 09:27:46 -0700 (PDT)
Date: Mon, 7 Apr 2025 17:27:44 +0100
From: Daniel Thompson <daniel@riscstar.com>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: Jianhua Lu <lujianhua000@gmail.com>, Lee Jones <lee@kernel.org>,
	Daniel Thompson <danielt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Helge Deller <deller@gmx.de>,
	dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-fbdev@vger.kernel.org
Subject: Re: [PATCH 2/4] backlight: ktz8866: add slave handler
Message-ID: <Z_P9AEGq2sBYShgv@aspen.lan>
References: <20250407095119.588920-1-mitltlatltl@gmail.com>
 <20250407095119.588920-3-mitltlatltl@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250407095119.588920-3-mitltlatltl@gmail.com>

On Mon, Apr 07, 2025 at 05:51:17PM +0800, Pengyu Luo wrote:
> Kinetic ktz8866, found in many android devices, nowadays, some oem use
> dual ktz8866 to support a larger panel and  higher brightness, original
> driver would only handle half backlight region on these devices,
> registering it twice is unreasonable, so adding the slave handler to
> support it.

Is there anything unique about KTZ8866 that allows it to be used like
this? I think it would be better to add support for secondary backlight
controllers into the backlight framework, rather than having to
implement driver specific hacks for every backlight controller that
appears in a primary/secondary configuration.

Also, the kernel seeks to avoid adding new instances of master/slave
terminology. See the coding style doc for suggested alternatives:
https://www.kernel.org/doc/html/latest/process/coding-style.html#naming


Daniel.

