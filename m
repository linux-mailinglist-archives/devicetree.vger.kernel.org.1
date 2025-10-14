Return-Path: <devicetree+bounces-226816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E2ADBBDBA99
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 00:39:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CB1E94F26EF
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 22:39:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E79022C1590;
	Tue, 14 Oct 2025 22:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K8hr7cor"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA21259CA5
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 22:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760481579; cv=none; b=lF7fbyrX86EztPNLRwBLHR5kPFCgIub+COTLYu7EaR/tfpH2m5EEjmwq8UmoMfAlxH9dF+yZFsih7/ExpqdnFW7C/tdZiGuFpx4iSIjzM/GLrJcO5VBlS1PHn09TtqdhBRAlDxB3RmvVNCwZgYajO2fLWpjwy7LlOg9sZkSYFmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760481579; c=relaxed/simple;
	bh=5ODQnisCGFVnzmSQNZxnXZZaqWQoRTY0eyX4Hg+kB6Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xwvl5Nt/DgEGmxNlhDSdH8Ydr5Nx1f3McoCttdzrEXtjMZIqcRFVL2AROtMH04tYTmEeCTyNepLG6DgXH401+5CzVlMWkhC+r3K7CRAtp8ws2vlAi7GGBXaeBarAietEr5D4IKZVYvRSMusi16GVZ2C+Nyml1k6w7hMxjTWTIYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K8hr7cor; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7841da939deso5285489b3a.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760481578; x=1761086378; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3ZtqCDOZscLqB8RaEJpnchm/C2TI80sLGGpkj07xncY=;
        b=K8hr7corcKAkh3zXm/RvOSSRLZfgs/kDW9x4i+Ifsixi9xuj+BQayTmTsx2ZsYNVnZ
         jGL8IpgZliO+JkWvfCr9SdjfcsHKktfkpRE0Ciil926XcyAJ17MnNbEe2ckweBddcyBL
         7tmNtwpl2zfG3fh2rU14EJfHFmtEuxruZJLmWAOznq1W5ESU6Uq5cDCxvfZuqdBMPQH9
         gussirhA6QXjpnoffbR5bm0t6YN+Nr8z+7yRk1xymTOpP5US2bUEvIePAIBxZDjNgOe7
         Ft+QjJHOzZuHYBpBsxakz+wByiJD6Dt320RK14Duz900xKo4rQ80WqRI9A20dOUnxYye
         mkww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760481578; x=1761086378;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3ZtqCDOZscLqB8RaEJpnchm/C2TI80sLGGpkj07xncY=;
        b=oWlyZFI+g4xbUNGbuskVTXxNzDikdVsC7CWoAN6xIr1xQy6Grl9ixG8eAw2W8bJiy5
         SvGSRDmewL5dVP0Ryjpu4UXJbaUYF86jB17arPBjlx5rl7B9h2S84+deIdOAMHrDylGw
         OZYP5hSc/KY8ZUKXkJi/tGeTAZIdD5q5UBflrxs8WKJ2ztIdMaC49O1tXNOfssquQqc9
         IvV6H3J/1HGx8KPk1Scxqp7r7sJoLybc4A/WpIBmnMdSdeRPcGiHQ1FRtVbYK2O7ESH8
         wg2B/8a7vHAiQ3Urlqlp113vug39bbDXXKmLswMP4h9RqqPHDYSyskiCfCQTXLBxTkrW
         29JQ==
X-Forwarded-Encrypted: i=1; AJvYcCXEB2r58b/jfnVPlvn/XJNJhQi4iuK9hVXvFe1DbvCoI5DlIRFeFdifdlHAAxilXLVMzli0tufnyVyw@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5sxyeY/FVr89SYFzFc9ZRrb6gNpUBaMgIwFJ2bXp75UIiKSfd
	pmiafAo6MZ2/nUbPUtMs1Ca0fVU+6NdMIoxv8ejkeKpzK26KQxQwxwW1
X-Gm-Gg: ASbGncshlKerBYSSiwo6f9dcLKOlpVW1I1zkie0VHIz6MrIO67T4IR+XrZE9wugk/7W
	3wUxbu63R/+cH3bBoNB7SS+8v6vFpdfjJ3fi5CDxSB42ruSv31kn9oCwsHcEMvNZjfQFvUMCTDA
	w4E578DG4eIzYeJf2toA2ma0kp1R425ED5QCzqS+OUeJlhrA54FNNnQfMbeAUSiWXGbkkXJiQQj
	LA8n3uHtDC9tvLfSUd7LfdhfDTGLXILbvybTQdq76C9jUpaJdcIoXD9KX2FnIccoOL23Yvs3323
	V88JuRqmhuecM6AyCcpNY+vxSYD8WuL8SOKhmIqCdb2UH+OwtQI5cTWF5CF3NEsb4Csk3oWDC+X
	HIM5zNLPwyXhVGmU32HYPP+0O9ppKRCFByOyqnTxSeA==
X-Google-Smtp-Source: AGHT+IEi+B24saT9H9rxfelGvAFHN/l9cEixm6BxrzttyGvKpYxkywr6o9MKjbLEkqIAa3+5HpvU8A==
X-Received: by 2002:a05:6a20:3955:b0:2bb:b5b0:b3a with SMTP id adf61e73a8af0-32da7e7bd47mr32647446637.0.1760481577555;
        Tue, 14 Oct 2025 15:39:37 -0700 (PDT)
Received: from localhost.localdomain ([2620:10d:c090:600::1:891f])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992b060b59sm16672205b3a.2.2025.10.14.15.39.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 15:39:36 -0700 (PDT)
Date: Tue, 14 Oct 2025 15:39:34 -0700
From: Tao Ren <rentao.bupt@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	Tao Ren <taoren@meta.com>
Subject: Re: [PATCH v4 11/13] ARM: dts: aspeed: facebook-fuji: Include
 facebook-fuji-data64.dts
Message-ID: <aO7RJs8ceO3mwjn4@localhost.localdomain>
References: <20250728055618.61616-1-rentao.bupt@gmail.com>
 <20250728055618.61616-12-rentao.bupt@gmail.com>
 <79ddc7b9-ef26-4959-9a16-aa4e006eb145@roeck-us.net>
 <aO2kLyxGlGt12sKD@fedora>
 <ea64d3c1-e517-4bd8-9a2e-56432f286347@lunn.ch>
 <4e099ead-e6df-4489-a775-1730bc852dcf@roeck-us.net>
 <f801a4cb-3d27-439c-82f2-d5ee5aa0d810@lunn.ch>
 <7197bfc7-fef6-40b2-b3f3-182e9428dc12@roeck-us.net>
 <33b9d6d4-bb2f-47e6-8d3d-94a2ca2b8474@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <33b9d6d4-bb2f-47e6-8d3d-94a2ca2b8474@lunn.ch>

Hi Andrew,

On Tue, Oct 14, 2025 at 09:14:21PM +0200, Andrew Lunn wrote:
> On Tue, Oct 14, 2025 at 09:39:02AM -0700, Guenter Roeck wrote:
> > On 10/14/25 08:11, Andrew Lunn wrote:
> > > > > If it is already in mainline, i don't care too much if it is wrong. We
> > > > > don't want to cause regressions.
> > > > > 
> > > > > I only object when adding new nodes which are wrong. If we keep adding
> > > > > broken nodes, there is no incentive to fix the broken driver to do the
> > > > 
> > > > This wasn't adding an allegedly (sorry, it worked for me) broken node,
> > > > it was removing one that worked for me all along. Obviously I do not know
> > > > if it worked (or if it is even used) on real hardware, but it worked for
> > > > the fuji-bmc qemu emulation.
> > > 
> > > It probably does work on real hardware, because it is one of those
> > > "two wrongs makes a right" cases. So i see this as a regression. The
> > > node should not be removed. It should hopefully get corrected sometime
> > > in the future when somebody actually fixes the aspeed driver, and
> > > fixes both wrongs.
> > 
> > So you are trying to force the issue by disabling the Ethernet interface
> > on fuji-bmc until the problem in the driver (whatever it is) has been fixed ?
> > That just seems odd.
> 
> No, i see this as a regression, it probably used to work, so it should
> still work.
> 
> I'm just pushing back on adding new nodes which are broken. If it is a
> new node, it should not cause a regression.
> 
> 	Andrew

The fuji-data64.dts was copied from fuji.dts mainly for larger
persistent data partition (64MB), and the latest fuji.dts includes
fuji-data64.dts (instead of vice versa) because we wish to deprecate
fuji.dts in the long term.

So it is a regression for fuji, but fuji-data64.dts is a new node..

My original plan is to add mac3 back to fuji-data64.dts (which will fix
fuji.dts) when the rgmii fix is ready in aspeed mac driver, but I can
add it back now if we need to fix the fuji regression asap. Please
suggest.

BTW, the current mac3 settings work in real fuji hardware because rgmii
delay is configured in u-boot.


Thanks,

Tao

