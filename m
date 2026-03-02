Return-Path: <devicetree+bounces-270166-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IAisCPLEpWmLFwAAu9opvQ
	(envelope-from <devicetree+bounces-270166-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 18:12:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA881DD9AB
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 18:12:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2B0833011529
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 17:02:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00BA2426685;
	Mon,  2 Mar 2026 17:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m9XckN8b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6026423A9A
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 17:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772470936; cv=none; b=G/9CMeWVIUwB+9T1yqdVH7NxRdJYPu0lZST5NmxwtmQV0ppOkyRbhTshr9G64bf4LF62ufNqokpFmgeJCGW3v9oG0tLLUIYD6lzmk9WibXDXM5TLdmss51krJzYBm6FApKiOXDWF3jkCaioicC2tuNAf/Non23zsggZAcIB4GUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772470936; c=relaxed/simple;
	bh=zMnCw1GpmTZEPh8ioUPoTvQ7T/FR4oKatNjLKI9czoQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ris8IM8Yt0zdG9nIdlsux0LEsUQ++tobw+hUjQjpEGhnm4P+jIb5Li+zwvv0AtXajPA6g0Dk5eFx2cVeuQDmRTwuWJs0a5uFXBEnc+75T+EADFyjOdCdK+L2cDL0xi4pxRVEDadlRG27rf3OKPLirsbFe5aS7cgwyCvKrXt1Bm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m9XckN8b; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-43992e3f9b8so4845561f8f.3
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 09:02:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772470934; x=1773075734; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QaijC/p2L1n1TZ0ZHl3fOCy3J+kOaUlNmbkDRGgocyM=;
        b=m9XckN8bAaYpM+7tKn3HhE39T5OJmoIE6z5MYA4BcOZs8fk5v3QjKEpQRFf23E/d3N
         obgbigatyeAlcU/XwsDR1o+RD/0nz+Nf55eosbfxA7wQeGrQwmLIoTYb470Ycl7vIhXV
         Mc3T4XPmwSqRf9J9CrmnDC658m6r3OZjkzEtY7GwjZ6CtLPH2iNvmk8BUDb3NHd4Gh2l
         cF+B6UfHQH1fad/CeXxfOcUHzPFr0Ac8VILzCjJbSkFZGqkki7i1LeMBwzgW5dFwiB6Z
         vkpCbkZgFlpb0ogdyHmNOepEgVn3AMVBimydpEC8KssozTc0vEsrOSa+lqN/cDVa84A6
         GnFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772470934; x=1773075734;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QaijC/p2L1n1TZ0ZHl3fOCy3J+kOaUlNmbkDRGgocyM=;
        b=n32f0zG3k+JQFSCHwvzabgRNfBomIDJ72bn0ngcd4WM/8Ooskslr6uSM0mNxP9xJiZ
         SR5hTtTmh31Xq7IoEV7s+uAkz98VAGkA4UsU9TlNwO8IFrQVQbIWpVA+2JJ/UJOBcxPH
         BhzHcofpb+BnHV+FwPc+yf1Yq3iicTWL+1NZuQnYPF9VFow1Cm0xuPlC03TePyEtpkrd
         rh/XJdsafsfNhvnEVm7XiFlyShmdD+pv153Cu+dMj3H+BmbM/1WifXtKciSycn+rwmQT
         il8qtjMB07iSt9c9R0xowq79uBHjrZtrvh5GRL/jP+pIpIDEfQ+tFCz6RLNucGH1xKdH
         JyWw==
X-Forwarded-Encrypted: i=1; AJvYcCXjWZMZzJvwfUV/Ax4Mb6d/jnbiKsS7s95t/VYvU+q+rvNdVXg6A/bPAuXOdmQtfIWMfh200rdeBAdu@vger.kernel.org
X-Gm-Message-State: AOJu0YxQaGDHP4tpUmoZaqnHSTfD2qBaql0B+9nh1aYClAgDX/d0Xnsf
	dO+BXikaIJJNYFQDbPaQFdFodQ1FRYS4ZGKoH2aGb1DI7Z8dGDQwZAu5
X-Gm-Gg: ATEYQzwH0PcQ3X7OEFbbozSirWPgD9+xhFRZ7BgLFYurXA+Q3UpqVtILJJ2j0JWJDp/
	GTgpdj1vejvt05Z+5FiOyyOiBRGNtiwcQxhEMdx1UGasJwSJzJdzkda0jlogxFiDaCWMpSJ6rxL
	N9tjnMx7W8MFi8S5sv7qs+1ErxQiFrT8BLJTTsrjD7dHMiW5s/GJ7sBJ0Ah/CAvCz3oum3gqtw6
	wnCOdrU63SvCSKK+PMzGCOc2S57xjyB0RFC/657SWqBsP4qkQx4ZQgMrhddPFmZg364bK3uPDK5
	Z6Ur9f6t2J+ckQCZJPChbz8/8EydjEuooaeqDwNul6pjtgByT41pthqHahR+QBtzhFqEGJT8JS0
	9yKixKYKn+pCwxBcpY1U6ijkK/tQY5KQBqDqrmkmP2+FcV4/Ttb3H3gBMxZiViN9qx2pTwF3diH
	Gp8CFo+Rv6uTPRrS+UsDGbx0uoYqEavcc2gmA8X3l8zf3DwRI59wpGAypAz2gsZH7Ewf5CKrgO1
	4geSVDfiblmPA23dRrAqbKRgbNSz9e3XWhiDBOPJTPH+1RcwXV686Z9
X-Received: by 2002:a05:6000:4011:b0:439:b922:8479 with SMTP id ffacd0b85a97d-439b92285dfmr5706628f8f.36.1772470933596;
        Mon, 02 Mar 2026 09:02:13 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439ac9f3e5bsm19606933f8f.37.2026.03.02.09.02.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 09:02:12 -0800 (PST)
Date: Mon, 2 Mar 2026 18:02:10 +0100
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Frank Li <Frank.li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
	festevam@gmail.com, alexander.stein@ew.tq-group.com,
	dario.binacchi@amarulasolutions.com, primoz.fiser@norik.com,
	Markus.Niebel@tq-group.com, y.moog@phytec.de, josua@solid-run.com,
	francesco.dolcini@toradex.com, maudspierings@gocontroll.com,
	pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: freescale: Add support for Variscite
 DART-MX91
Message-ID: <aaXCkswynHreRURk@Lord-Beerus.station>
References: <20260205100125.9095-1-stefano.r@variscite.com>
 <20260205100125.9095-3-stefano.r@variscite.com>
 <aYSzgRRGewX6uSlc@lizhi-Precision-Tower-5810>
 <aaW7EpLmhxk3elmd@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aaW7EpLmhxk3elmd@lizhi-Precision-Tower-5810>
X-Rspamd-Queue-Id: 2FA881DD9AB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270166-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com,ew.tq-group.com,amarulasolutions.com,norik.com,tq-group.com,phytec.de,solid-run.com,toradex.com,gocontroll.com,variscite.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[Lord-Beerus.station:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi Frank

On Mon, Mar 02, 2026 at 11:30:10AM -0500, Frank Li wrote:
> 
> dts part can't apply, please rebase.
> 

Thanks for the feedback.

I rebased the series on top of the current mainline (Linux master tree) and
it applies cleanly on my side.

Could you please let me know which specific tree/branch I should rebase
onto for the DTS changes? I will respin the series accordingly.

Best regards,
Stefano

