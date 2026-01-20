Return-Path: <devicetree+bounces-257646-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLV1DUkPcGlyUwAAu9opvQ
	(envelope-from <devicetree+bounces-257646-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:27:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DC74DC72
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:27:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id ACF1EB28204
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:38:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED42B44D039;
	Tue, 20 Jan 2026 22:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UoGyE5XA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com [74.125.82.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5B13ED134
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 22:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768948302; cv=none; b=BrdYKcSG8O7qbfOi3+Tim5RxYiGeZw3ZCS6AMs9aHGl+k5eCHRLQbHCYXmRNPA3mU6komx0Cf6HfUI+9fRetKaUKxyllga9aUO3wXpNSShg+PLPoQSHYnId5+CEhjejCv0eynGxf7UjiRzwAN0ZkZN8CYhmrTsNeQxba0Xp0bI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768948302; c=relaxed/simple;
	bh=KT7crfYGC+gc35aZUssQokbzc2G2zw05Q7/bzVHxgsc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fZCWU+kvFUpQKKmtRb7XmepEqTytI5GFSoRj458rfRwcZStXSWDA8fRBKWDW9GasFGjyeHFCSLdayPX0ujhiWDARm9tZXAKkt09DXx5W8vqL9B727cyTqZeeKfx5vHZqth0DzUDjbin9xYNhTsfkUZY9KLO1aoZvDEAS5tcoKME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UoGyE5XA; arc=none smtp.client-ip=74.125.82.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f173.google.com with SMTP id 5a478bee46e88-2b0ea1edf11so11111609eec.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 14:31:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768948292; x=1769553092; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oK1Xva04K7ygLWg0U7fdlOWooXBJszh65DA1fNcqFD8=;
        b=UoGyE5XA/4IPLlWoyVdKaPXt4eHUQ1cD1T38G7F4r1Q4XuH3aPJIpHv/EETsZBvDy9
         nMCL69ZE0bhsgASs8dhuTIzuDxkRlcH+Y55gL73D6C3CnQx7UlrY2saYyZdTuE8LZ+gL
         19L8eP9nolk2Y9l19T4oHZyFiDtS99R4t4Lp06Eu2f1EGM7HnUfpaMQA1pdXZ51ZSXJg
         Ebl/Bk+FdsT5WeAwipH8uHYAmBmOV64dll/aDFNmt1/orFHr+yEtS2GQnWjPmP87MBrL
         6NiDws33UUAjVxiGt5h8I1C1+IVSaYk1S15OEZKaJ3s5jUf20Lq0Wdr1Pq6vVWp71Fzi
         V/Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768948292; x=1769553092;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oK1Xva04K7ygLWg0U7fdlOWooXBJszh65DA1fNcqFD8=;
        b=vDNWjouUGTxlkELcFJLMh6/ClWM94UMHDzdXn4FMDX7wFipGf76L51Zt63P0VCAHI8
         2RbGRMicjJKIblIMFGwmirzbYbsssEMFmn32Oi+2q9CMfnB/JhjnY374WZRcJ7/mPpyS
         eDtMIIdUsSNXzrjn9O2rJQh8wGvgL7UMSgqsMdCX32AF85/cjnC8nsbPpA8aHCW9KuCP
         ldJ0resvSUdXrRmOYurnVwHpjQF78yqMFxDgbzF4RD33wEE0vnggTqMjN6Qc0hOSPuwn
         MktHhE4Pic3Pk3A+Y+HIrIPaOthARo5lKOX/7ZSLBVCjIHB1xUwR9vCYIrgONW6Ijf+4
         IHdw==
X-Forwarded-Encrypted: i=1; AJvYcCUIbTetoPWgdEp79IszYXBnSf05/ZmTHVndSOw6uvHJHGB5gSGyte20U4gj+2Ioiqp10JQHexa++qrr@vger.kernel.org
X-Gm-Message-State: AOJu0YwzyK+2I4XxDq219C8PrTCF/9S/e5gkMm9QIR0N+1725owT0ZeR
	XUS7eYeOHo3qLOF5zcUSsUy9gmpDIGmgoTLsRmGQj/QyzIo7dVPS30+N
X-Gm-Gg: AZuq6aKwNnLVFhXDdrU6OrrPcHDisDDy+f9Zsu+wOjbAAGQt/CA9eNW6XZmWtpJ9RyT
	VJoobUKLah87U+zdpYCg8wXSXsszXE5/HQWZnXV96bkm2g8zlQLf0iLcPzD0r12koVSnMFC3t71
	YCMURpMyy1MgQ+drZ23L1ZJlzZTbpfQwimwLGUaRqrHd76Vudq4y4CJm80hgIr3tf459xvFXL34
	yzijHO4uGMm81JLDweJGCzhUSwQRG7o5K2dHjVVexnlYxqWrLDpMDg9cQQRVU1X4Mqm13lVhAGP
	4JNpYUEe3Gt/gl9Ymk0daP8mho06UcvmNxaj0Qrf32DhoWJisS3NFoQPErtkIbiCu1/S30VZ/s0
	ONIfKsHiDmWrEvr9cZ5MuDtotLd6kFvI0EiWqcoTN0afB0lFPeO30873bMAwKhOzEZov72GDI/0
	OzPz0m1/EOJNT9jBbck7m9
X-Received: by 2002:a05:7300:1493:b0:2ae:5a55:fc0a with SMTP id 5a478bee46e88-2b6b4e287acmr16477739eec.7.1768948292340;
        Tue, 20 Jan 2026 14:31:32 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b712881482sm499886eec.5.2026.01.20.14.31.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 14:31:32 -0800 (PST)
Date: Wed, 21 Jan 2026 06:31:22 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>, Inochi Amaoto <inochiama@gmail.com>
Cc: Yao Zi <me@ziyao.cc>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Richard Cochran <richardcochran@gmail.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>, 
	Yanteng Si <siyanteng@cqsoftware.com.cn>, Yao Zi <ziyao@disroot.org>, 
	Vladimir Oltean <vladimir.oltean@nxp.com>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Choong Yong Liang <yong.liang.choong@linux.intel.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Chen-Yu Tsai <wens@kernel.org>, Shangjuan Wei <weishangjuan@eswincomputing.com>, 
	Boon Khai Ng <boon.khai.ng@altera.com>, Quentin Schulz <quentin.schulz@cherry.de>, 
	Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH net-next 1/3] dt-bindings: net: Add support for Spacemit
 K3 dwmac
Message-ID: <aXABw0zVz8n3jLlm@inochi.infowork>
References: <20260120043609.910302-1-inochiama@gmail.com>
 <20260120043609.910302-2-inochiama@gmail.com>
 <aW9fL7r0AM0flALJ@pie>
 <aW9ou-lsQQ5dVzqW@inochi.infowork>
 <9334905d-d11b-49d4-92b1-61e8cf644f0f@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9334905d-d11b-49d4-92b1-61e8cf644f0f@lunn.ch>
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257646-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[lunn.ch,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[40];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[ziyao.cc,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gentoo.org,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,armlinux.org.uk,cqsoftware.com.cn,disroot.org,nxp.com,bp.renesas.com,linux.intel.com,bootlin.com,eswincomputing.com,altera.com,cherry.de,st.com,synopsys.com,vger.kernel.org,lists.infradead.org,lists.linux.dev,st-md-mailman.stormreply.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt,kernel];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: B2DC74DC72
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 02:48:12PM +0100, Andrew Lunn wrote:
> > IIRC, the "phy" clock is used to pass the phy from the mac core, I will
> > double check if it is possible to connect to the phy directly.
> 
> Are you saying this is the reference clock output from the MAC being
> fed to the PHY? That would be a clock provider, not a clock consumer.
> 
> Or is it the reference clock output from the PHY going to the MAC?
> Then the MAC would be a consumer.
> 
> And there are some designs which have a third party generate the
> clock, and both the MAC and the PHY consume it.
> 

I have confirmed the clock is directly from the the clock tree and
is consumed only by the PHY. It seems like I have got a wrong
information about this. So let's remove it and let the phy consume
the clock if it use this clock.

Regards,
Inochi

