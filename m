Return-Path: <devicetree+bounces-273156-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EJe7OC1Jr2krTgIAu9opvQ
	(envelope-from <devicetree+bounces-273156-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 23:26:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D853E242352
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 23:26:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EB666300C6C7
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 22:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEEBE38F242;
	Mon,  9 Mar 2026 22:26:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C/4Ury2o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 891FF38F251
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 22:26:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773095207; cv=none; b=Y21QgKI2aGEzGme+220LpdAEP6sQGdYU53BD1gMugA+bS4OGd89jaWsZ/2Cxf6hl3+v0++QEVYl+/Iaadh7h0pQg5dexdxUodwx3kjMw0olb4XgZdjLnXGM+Bz20uz33m0tSSac5jpL9nDxpNDoyCnByMvXxT73MfF26Oxun8OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773095207; c=relaxed/simple;
	bh=i0GRJfSHh/D61KwItNe6fb7adZHJMaGkMix9ht+i3A0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Re1OlPiSMdvQtdj4U727PWtjmng2i6Dowl7fHjVbUJRFOUcHQ2qKXDITk5cXP5xRVXZJ+Jyd7j0vI5M8rpZzz9JNORlnK0I7SZIBjD6a+bvAsWIkRNobhp5DwgVFaqkFRJ1OX/xwIkPqr1cosQN3OtnmdBiGJ+yayKdEv84Wj7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C/4Ury2o; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-8cd7ecedf2cso198234385a.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 15:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773095205; x=1773700005; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=b0qmAnC6DnZWfkO5AOHdxhn/T13J7DQN3esTSP9cxW4=;
        b=C/4Ury2oopotKm4qQe5ULNnB41cyLLpNkR2VwqK3MczAcqUb7MHZ3lNd9wt1yUxOn3
         ULpsbAx/v0MrbHPh/ZGuR7E40U0dMcJmHVbFmaR3zidTpKjvVW/c/CvxhnzlKaQEd9TH
         QdSKViAMLpfz//6F6jKX2EnCw3POpeKqmL0hkH+6vUeLeyZA/UDwUq3XDPald81m0RTT
         Cf63g7mzXZfoLx3G0PrWF1Zx1OvY7IFNSNW6+pmu6h2fwuMfAKgjGQODZ0XItscgWkxW
         qxXwJqZ9WH0zT4grYRuzGrDqi50x/RsHV2rWHk8xLPrGAEytC1OOAnw9JTdQ1LARc9Ox
         BEew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773095205; x=1773700005;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b0qmAnC6DnZWfkO5AOHdxhn/T13J7DQN3esTSP9cxW4=;
        b=wA49NG0OFg/1A4fQCL3JdBLF7kuE2lw3glYuTnuYNgrk572Cmd8aFKC3NntzZ4BUPu
         jwFCDd9u1bNqdGtKFek2zRxgUpm7E9n8VRyLZiS6WKYBtuIjzjtBXnhlNoTUP65GqYng
         hXLP8d1MXUzmxwic3QR/oH0bmuTQ3omZGwtIYl1fPggSMhPIhaDp/aTY/6QUam6MJxyL
         xAktGqLXhoH2TWHXZhF48orjfLyVLjUmbWu8cQcv+XPOK74tJEpFI9mxuyiluq+PcMUn
         xXhfY2MpybooWIt5+btOgeXs7Mvgg9wYaFeyiR+4Obm1dU+Y321/dAEUi5MaxkLV/i8c
         802w==
X-Forwarded-Encrypted: i=1; AJvYcCXm9VV/l395tVR9ivWkybAOiGWbpi8jyHu0EIUGuXaLT1E56MJdu2oKpl4768fjh2W1mmdF8Z4/9tGD@vger.kernel.org
X-Gm-Message-State: AOJu0YxLHq82jcWBW0QtXR2i+0xANXUmoCKmNphTIXGgbNjPwcnqZj6V
	WMerVeTU/u7/L3s55q2L7JCD563Fhq5o/dOpanymrPU/QTUkwX3YZs87
X-Gm-Gg: ATEYQzzKASa4prDcM8oYc6l2B0xoJ5X0YZIJ16rrdLGxjF8EhH0n2+LjPb6tN+OWZdi
	Ry4s1osW4nXnvrYmcrkdC1Yv821KrdlQXwb7Pd2r3WOYm3coWAqCtfOLZC50NnB8h37rQdgvgYm
	1BRDmfBh7MXC2DMC32PGGEH2JrQaE+aXL/4KEMZenhM7Dx1EV6yb55Jm8hVW0hpappKEMaPN/DQ
	4b4QnM4YcHAZp78Jm+eK9UVLTfnyCFtKd8KD51wY/uG3U0x6BhoWwjPVOwvZheY+Yk8V3cMjVtS
	wnt2lbNFQtqdvjobIrUOwnlOwTVqAz/yvFO8d/HfYshulxLYMiZ2lqrPTRe/KtMm4PiHR3jZnYb
	GcsyKF7WCRFsnMIXjFtCDvI7gpa/V+TPW/LvIpVK2jLGxhi3m82dtsScInHOdFY9EZJpT7g6WLr
	O9fkdPLA45QI7F2XOzw48fpOu4tYuEgOBHLg==
X-Received: by 2002:a05:620a:c55:b0:8cb:4289:6c1a with SMTP id af79cd13be357-8cd6d549b1fmr1572894885a.75.1773095205343;
        Mon, 09 Mar 2026 15:26:45 -0700 (PDT)
Received: from localhost ([2001:19f0:8001:1b2d:5400:5ff:fefa:a95d])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cd866f7074sm325445485a.6.2026.03.09.15.26.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 15:26:44 -0700 (PDT)
Date: Tue, 10 Mar 2026 06:26:07 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Richard Cochran <richardcochran@gmail.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yao Zi <me@ziyao.cc>, Yanteng Si <siyanteng@cqsoftware.com.cn>, 
	Vladimir Oltean <vladimir.oltean@nxp.com>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Shangjuan Wei <weishangjuan@eswincomputing.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Chen-Yu Tsai <wens@kernel.org>, Boon Khai Ng <boon.khai.ng@altera.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, 
	Yixun Lan <dlan@gentoo.org>, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH net-next v8 3/3] net: stmmac: Add glue layer for Spacemit
 K3 SoC
Message-ID: <aa9I4pIZs5-TDdXo@inochi.infowork>
References: <20260309004305.315018-1-inochiama@gmail.com>
 <20260309004305.315018-4-inochiama@gmail.com>
 <aa62FTHMOJGhVKTv@shell.armlinux.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aa62FTHMOJGhVKTv@shell.armlinux.org.uk>
X-Rspamd-Queue-Id: D853E242352
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273156-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[armlinux.org.uk,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[38];
	FREEMAIL_CC(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,ziyao.cc,cqsoftware.com.cn,nxp.com,bp.renesas.com,eswincomputing.com,bootlin.com,altera.com,cherry.de,st.com,synopsys.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,st-md-mailman.stormreply.com,gentoo.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On Mon, Mar 09, 2026 at 11:59:17AM +0000, Russell King (Oracle) wrote:
> >  drivers/net/ethernet/stmicro/stmmac/Kconfig   |  12 +
> >  drivers/net/ethernet/stmicro/stmmac/Makefile  |   1 +
> >  .../ethernet/stmicro/stmmac/dwmac-spacemit.c  | 227 ++++++++++++++++++
> 
> One last point, please add another patch which adds a MAINTAINERS entry
> for this file, so you can be Cc'd with future stmmac developments.
> 
> Thanks.
> 

OK, I will add a MAINTAINERS entry for both this file and
binding file.

Regards,
Inochi

