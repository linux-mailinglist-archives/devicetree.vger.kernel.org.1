Return-Path: <devicetree+bounces-179752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B03AC16E0
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 00:33:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 137783B2CA8
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 22:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B19527AC2C;
	Thu, 22 May 2025 22:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="UiRtJXNc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053BD27A92E
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 22:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747953195; cv=none; b=Kpuj4yVLEoVhKEgq+YPXET+wt8HcicvlYUhuCzbxzSH2UNZTgQGB2jLwsogh3aQOfhqk0FFcuwxAqP8it+vdyf0spE+4mJkD/BaPWc7XzKqEVYIkgJ88bRqlJeAWxy1GOfYqY17ZgepxOKzSe+XwZOrB4yEEu3kR3GAvtrWEqfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747953195; c=relaxed/simple;
	bh=QSwh9e7eyWFctLzZF+Bc13eVUv8DWHOVQbdS0U2r/GY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XP06GlzewFT29QHrdOTcWm3nUogTxuI2iMPQCkpQwNLFXTwSa8uD9M2kEVMx5mzkT4jhPWl0XAY65CjobGTiVg6NVA7iB6hYWKkSrjotHPthJCgUNOjyo+XY5mcJEaDcV4UVKTCXD/E3mv6ntlfbRffsOwjKEmcoZvIsgXaPHrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=UiRtJXNc; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7399a2dc13fso10447449b3a.2
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 15:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1747953193; x=1748557993; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lIPDnA54KHM+aahxuVehx28jJr1eOYyr6Lt8SFqaFv4=;
        b=UiRtJXNc6h8Y/AgORrb7rtqvClgTNNJVTeYyKOYvC8WbJUxz+SiZi2Gilt3w2ZQnAF
         6G5baRUBQ5LadKo9ERHfMSCQ2UC8ApOBeoXhMcixFParis5OVJdWjO6X/4le66E5O/fE
         WFStNWcuLGJHKaqMXwl6DfXhPjDu/EULZlQ62iy0KXqkUa6ytAr3EHI0RbyHdigJ5KFd
         QFFnrzbPctGzgSCVoEmKAF7rrpPWJfaaXNIkDUHEM3irJdA+JWmH5Kkxm5jHsZ3xJpI/
         NaZatw2ySZMeL3MSOZGABhDdaKbE0Btm1aaG7BfHaI79kvpg+ZhJeoQQU3q4NPTYhaXN
         quOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747953193; x=1748557993;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lIPDnA54KHM+aahxuVehx28jJr1eOYyr6Lt8SFqaFv4=;
        b=KQ64IKUsP8d+B2xrVCIS+jTce9Ema9je6UQE6UBMvGLynRR/m92zqu95N4Q9ERQCmr
         JyEZf8n0ZWyBL/goUvG310vUBOxihbQNCtxdEyovnIrcxszY7GeQuryYTsXmZw39Qdwe
         9X/7B4g3p3OQWIuyDHbGB8KtS7bjWNsNJ1VE9RNd86Ki6uZFh3GjS9NCh3ak3KgjoPcK
         /ES7nx5pTsuVQbjBUQ5Yz/aGBHSrATLsWyESRkOZnWns+LU8jZaDRn05axfsD10lA6ov
         s9LO0Dbs9t5OH261cEbrPdg/LiY+Pg0ohH+0+rV/a300/6Ooo8spgzRgtiYAG2TZn42e
         zBFA==
X-Gm-Message-State: AOJu0YzokFRq/XCkeovAtdpgse+7NAOoiV2KIe2DJV8N8rVao1tFs8Lw
	OG0J4QT0ViNfBFYo0Ka/9/dSlfcLjupA732aX3TaEXEHv8robvzFnTSTebZBPBhFkag=
X-Gm-Gg: ASbGnct2HxiU5VPqCnXvfju+Hoh8aqHxDE3A/DaHIpiLKp8jMcDpzd+u9Ya/MqgUHJJ
	nzNK0L3W3U0eEzXd56WRQG2ekOum71yXQM1qProaG0L1mboqJxVfETWO7HCSdhZzjDWMNWDopyJ
	6Bz2+dPdQhL9e+5qXSoB4oIt48ty6HEYquP6J520pch1YDAfqPeXaaf7o1tWrOoZkzvdi4eeYcf
	b1m2BoCVvjw4WuvhV7rxNu8YH3459npS4dAkLmzUFtEKyfm6xWv+YYuOlemWviGpClGHPm+m3p9
	UNS81jqVW8iB0GMhLZWq8yIWurA1lA585phCgu9MHUGa+QiUm3in5dxYsDeoqsw=
X-Google-Smtp-Source: AGHT+IEXf8P4jUBPRl9v3R75tHy0ox53KdngEfSQ/zTdV0vLhoyMGDNzZ3PqCSjMLrrOP4fvai8dMg==
X-Received: by 2002:a05:6a00:3492:b0:742:9bd3:cd1f with SMTP id d2e1a72fcca58-742acd728eamr34873087b3a.23.1747953192946;
        Thu, 22 May 2025 15:33:12 -0700 (PDT)
Received: from x1 (97-120-251-212.ptld.qwest.net. [97.120.251.212])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a970c6b1sm12137965b3a.59.2025.05.22.15.33.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 15:33:12 -0700 (PDT)
Date: Thu, 22 May 2025 15:33:11 -0700
From: Drew Fustini <drew@pdp7.com>
To: Stephen Boyd <sboyd@kernel.org>
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	Michael Turquette <mturquette@baylibre.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, Fu Wei <wefu@redhat.com>,
	Guo Ren <guoren@kernel.org>, Jisheng Zhang <jszhang@kernel.org>,
	Palmer Dabbelt <palmer@rivosinc.com>,
	Michal Wilczynski <m.wilczynski@samsung.com>
Subject: Re: [GIT PULL] clk: thead: Updates for v6.16
Message-ID: <aC+mJ560HbscG38R@x1>
References: <aBus+Yc7kf/H2HE5@x1>
 <018214f410632eb3dc6c6bd6ab58cba1@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <018214f410632eb3dc6c6bd6ab58cba1@kernel.org>

On Thu, May 22, 2025 at 03:24:02PM -0700, Stephen Boyd wrote:
> Quoting Drew Fustini (2025-05-07 11:56:57)
> > The following changes since commit 0af2f6be1b4281385b618cb86ad946eded089ac8:
> > 
> >   Linux 6.15-rc1 (2025-04-06 13:11:33 -0700)
> > 
> > are available in the Git repository at:
> > 
> >   git@github.com:pdp7/linux.git tags/thead-clk-for-v6.16
> 
> I changed this to https://github.com/pdp7/linux.git but please fix it
> next time.

Sorry about that. I'll use https in the future.

Thanks,
Drew

