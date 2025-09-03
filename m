Return-Path: <devicetree+bounces-211999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 32563B4176F
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 09:58:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E68C23AF384
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 07:58:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CAD22E1C55;
	Wed,  3 Sep 2025 07:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="RqE/Oa1l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAC12E040D
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 07:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756886317; cv=none; b=UMAO0qhHfkRP9bfiiOOPepWx3KGblEpCYxvc7lEe9DWNovPSrVa0lrYpcwgJ6n8QEgK0jQs4TNn6asjRHPZWSXtNokH0jdLIF43ImYo3owTm5jJUzSGzMBstObZoxnLBpT/0kSCbpSkAD58ymXZg6GYyB5CN+FdMaJjy2WGm/DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756886317; c=relaxed/simple;
	bh=rcEWxO0itYV5thJHkwKpX8dt21eqtq4uCIa72lzQx4E=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tr5Q9dGsB8gMFCCzM01ICE7e4D6eAIEIOtbrDldrb4lxE4uzhBnZSWU6dGrskyqT4G/MLLI9n02jvUYWAOBJ+zg418oPTzoL5LTzv+fHmnXZuijK/hrUiIsZF6etYj/RWg/zhzOe/xCHaNPD7JVgzCtg2dxoqDO2bkL7apkihWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=RqE/Oa1l; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-afcb7ae31caso1200702466b.3
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 00:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1756886314; x=1757491114; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vc5TDK1H8Xst9gKhvws3EuxZaIkfxswLhF5fBNdm9fc=;
        b=RqE/Oa1lHTJpIZgNtHZTwIZpFKhZTWSjVp1rIZHh8DQl4+/VhxXClWPk7noA3VW+Tg
         l21LNTX4YCzWlu/ywDfrJ5PInw+zPFU06agZTW80Dw8bg9SvN1Um8KnKm2aIjRi2f83y
         LiaUJ2kct1nEHTI6vKndMSVkRYKH1XB99+xZZvo5XdC2nyxAitmvq6ycOFTkRj4S0ykQ
         Pou/2TEdVSDoBCznTjYzT91nlMYjlsFRL1CFsU+5b47iZ1fvrRqXPGbjkp2Kc7zRUHt5
         aLkWub1j5PtmMysxt+Ys/WsUZlMslfa8bXVszKMK6ZB4+16M/H6pJMZFaAuW2GPHqtZP
         sy8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756886314; x=1757491114;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vc5TDK1H8Xst9gKhvws3EuxZaIkfxswLhF5fBNdm9fc=;
        b=iMmheK7AIJP8Us9UEx7I0ULGyuWaobBg2lTd6BUw2nwNdeTKY2QkzUBsEvuOGjCdsB
         UhwiLfGixAuLHi8tUyaejXOI3EtntfOZWRAFgrSHvljv1Ct1tXnzbvwwZj642YUiC+Cp
         j4usqM/VhE3gbNxy2WEGqfKQy1UDahzqjLaeC6dtrlCKQTf4wRFv/49pSerf0uO/DoXE
         kKvFz4sZi5RimpaaB8WXj7E9ShlYaaqR3aFVpDXS64S/MJIAFzG7e7iAcEjvguBoUQBx
         2nTM70xSccUgLFU2ytQYB3jJdEl2REOiKGfxXjgnCfskFFtGUfc10rY9Ly92X7vPqiit
         v3CQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIIEeIbIfjvssGfnUvqorVtwlA8Wi09UFAYrtL0A1ZC8FKV/vwMvIXZWZcx7BmoICbZvo7grkKyh9L@vger.kernel.org
X-Gm-Message-State: AOJu0YyP3qA1xqev+bSpgGOBaME7sdz0rQkzp9xnO+MpYCFpv4VYr2+f
	6n+x7nUHl3QY9NGFZzMnKaTL0DRzTmTkPwoggfcd6eoKxtJef+fsj+2iv65zeDGEsaI=
X-Gm-Gg: ASbGncuezXwOEh/2gDog6R4K8vsiVA30TOt38vOI+jLGCyZBDZSIt7DgNovJf/CUF+b
	T0YZt3J7GaQcWIGK9MG8AH+kUxzZOn8ZA76vhHdhUam1osuNCRfmbDwBwShcFYn8SXOQjchYz01
	1fmS7mtp/2e9zy48GPaYwOaycpfvV6pz90L7v51/QJ/M26hLH09c9rEdNTTEViMf5ZcHjTzuzsd
	zPFCixp/JlyACm7ttFipiA0iiO/iTUEuj4HKlgQr71UKY2kYjQJzgOZ10woeIaju2xg0HxLYlkR
	t5igLYrbvX7k4RXJWQXUKMLNnJ+noonBVlbD2O4hO+DwsGMNpLXfktyDPLs40IuCRarbSasHHFt
	J4xrJ40z8lH3VvvhowUzLZar4uG5/TMiM6ydTwfjykxT3W6n9zHEgsk6NF4HXZoobcGH20IZGAA
	1oaktwHsDEjfPSzrkwiucsSixVb4k=
X-Google-Smtp-Source: AGHT+IEn64Dxy1FDWMJAmp+prlXFdQxbLUeI9Tc0ZftSDAzkPfUTGMaspxdMpVBKzN42VG8J7KFQzQ==
X-Received: by 2002:a17:906:c10d:b0:b04:20c0:b219 with SMTP id a640c23a62f3a-b0420c0b768mr1025270966b.64.1756886313590;
        Wed, 03 Sep 2025 00:58:33 -0700 (PDT)
Received: from localhost (host-79-36-0-44.retail.telecomitalia.it. [79.36.0.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0413782b94sm875084566b.35.2025.09.03.00.58.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 00:58:33 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Wed, 3 Sep 2025 10:00:29 +0200
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Andrea della Porta <andrea.porta@suse.com>, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	florian.fainelli@broadcom.com, wahrenst@gmx.net,
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, iivanov@suse.de, svarbanov@suse.de,
	mbrugger@suse.com, Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH v4 0/3] Add pin control driver for BCM2712 SoC
Message-ID: <aLf1nc20SRkWJW51@apocalypse>
References: <cover.1756372805.git.andrea.porta@suse.com>
 <CACRpkdb8fFvgyWPAaP6AumwHUYhnvc7BXX0V5kwO4sts6zSGUA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACRpkdb8fFvgyWPAaP6AumwHUYhnvc7BXX0V5kwO4sts6zSGUA@mail.gmail.com>

Hi Linus,

On 08:58 Wed 03 Sep     , Linus Walleij wrote:
> On Thu, Aug 28, 2025 at 2:45 PM Andrea della Porta
> <andrea.porta@suse.com> wrote:
> 
> > The following patches add a pin control driver for the BCM2712 SoC.
> 
> I have merged the prerequisites providing .function_is_gpio(),
> do you want to do any last minute changes or shall I just apply
> the v4 version and fix up anything minor in the process?

No further changes from my side, please go ahead with V4.

Many thanks,
Andrea

> 
> Yours,
> Linus Walleij

