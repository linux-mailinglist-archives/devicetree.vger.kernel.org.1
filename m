Return-Path: <devicetree+bounces-262620-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBdpO7I4g2ngjwMAu9opvQ
	(envelope-from <devicetree+bounces-262620-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 13:16:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 119BFE5B0F
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 13:16:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B7D313009F29
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 12:08:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B2BD3ED125;
	Wed,  4 Feb 2026 12:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AIr7YRM5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB773ED11F
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 12:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770206903; cv=none; b=Wg+0UMsyueGRafK6A4eWD/SvI9rujL/RcQKgVpjQH5i/n9aaYwNgK1YP32ya4VLtbOtPUDfSiAwuvPKTUcHOZBKE1YvDYDZ6QCWkiysZvTCGsoXF160G5LiWtC+1CRfGm4/PRUEbw3WnjwKPfv7pKnN9gdXiFaVNl5lZ5XSgxnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770206903; c=relaxed/simple;
	bh=0t+tXL15cJtzOgmIlBvdrfTA3tDyLplIdYq8kcwmDUQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ElDVDrjj12bfB0Zj2C+FCVYHm+ahXhJV8y2/B5dIJbPBgVJ1PGadAp+FBU2sPQHv4LENCsNQr8f8fjZmtW5Ce98o6O2TbxRqVD3g8fjoQ7vr2f58azUNIhrcIzshx52U3oVIFzYhksykk/QRfH4PYkHZPCDSG9aNOjzh3uda51Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AIr7YRM5; arc=none smtp.client-ip=209.85.221.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f68.google.com with SMTP id ffacd0b85a97d-43596062728so577316f8f.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 04:08:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770206901; x=1770811701; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ioG9uYV0HuJP9D1DgqNAsKhOMqjhdFQVQ0SW047PMUE=;
        b=AIr7YRM5vayvaqnsm8eOOu7Q1osYzpWKW/nmd1Ki4/81p+V2W21R26/YuB2ZEKYku2
         7NfulbJktMBG38DvAl2ipnH1vBobwikzHmH5Ofs0HvGPGt33EKqEKnOjlvURSH1qazNl
         yDsfXnLu7/KvZMlfIUbj+Z6a/nE3ysFCzG60qAv3K36ofEkHIt4N5H0exxJtof4EMv7y
         iy2aHUlfHTdRnZlVITvDFBfAssbnwIom9Y3+CXN21UaBh7tSRb6BolehAP/eD2QUw6Bs
         usSGRS/VWbuHuxFq/WB00Z8AoBOBtMMEjoc/YoRiYGYCsBOIQijT+R9WZjoUUkhqgFfa
         0DBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770206901; x=1770811701;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ioG9uYV0HuJP9D1DgqNAsKhOMqjhdFQVQ0SW047PMUE=;
        b=odFzdCukexPYU2qyLGncvrv6aJS2xZVBmvx5vNlnQKGJytYDPYknzgek90P1sR0Tby
         1YV259ZcnQ5XG/b3fmCzzJ6y1MWJBlBYR9E34RJiGJaiGGxuUep04CVMEsA8WMWKC2f1
         Oo2MTcAjFpNB8r4usG3KJ+JUO/28259q2UrKXFpIAjYGG8Uw+/eg297gt+sJTqpIWV+G
         9zBaYZ2sJDee3MKMvKpuWITx4PRZIvTMbdNyBHn0+9k+44rWJGZ655yqPuG6cwr00bSj
         0r8IVACbHv9MCG1IhdjYj/niRl96h0QNZsr9MM4ruf1nQEh7Jb5yOX14Qq7tI/+RLoUl
         //rg==
X-Forwarded-Encrypted: i=1; AJvYcCWJKX2NVbZCL2c5FAqcS6fR9laCW5S8P5rFlbHqtSOo69rj7ZEk1L0OwdUy4urLTeRi3c8mqXOO5wgd@vger.kernel.org
X-Gm-Message-State: AOJu0YyfXgCtLGS+qUcFCpQ3jcX2Cg//oC8u4fTnY6QKsECdFzrgDLJx
	+esTqJo572ZAxuRe83HmNJ6o7B57C4x0LtDxLLF+/nylgAfkXTSr74MFGbFwrpLccuU=
X-Gm-Gg: AZuq6aI07k/l8gG495cxYhVlLZGYTCJzXFD0Bgu5FLTsn2uWdXzzUJMMM6h7XBU+ecl
	SngFDo8YYGOJvdW47Hf4D2Q1qjTlMqK7dJTUG+i+vkiCOqVYXoabKVM0SI8G6MFXnrzRe+mECHg
	2315JQsH0yPdPrtnuH0NkJ03DKfpW4a6tOjon4c8CJps+tWnmXEA/W+QpFlAV1FH2hq+o71f2Kv
	WCucaBW7de1bzrgcuXN2OSmwPk8f+7JTedXbIzXhQmx/Jn1zzzwJfUYLqje2zBlI7j2FZyth1pC
	3oTqLbhqRqwV8l/Jdx0Zs3GsZP2Fs3gGh0rNJsDKs5U9U9s7HYJLOLG/5JVxn2Cnjm6vHXx7aXN
	v7Kn1vpnT7KFmYBgF43VdPf/QtpcjwODBOWujnPCoyR4gR15G4rieIyNv/QXQw9jBYI2KLItXsl
	9Zn2AHs9vng4qslk1kTjeHeBGhIBc=
X-Received: by 2002:a05:6000:288a:b0:435:92c6:d556 with SMTP id ffacd0b85a97d-43617c84202mr4190603f8f.16.1770206901187;
        Wed, 04 Feb 2026 04:08:21 -0800 (PST)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43618057f7csm5851345f8f.23.2026.02.04.04.08.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 04:08:20 -0800 (PST)
Date: Wed, 4 Feb 2026 15:08:17 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh@kernel.org>
Cc: Paolo Abeni <pabeni@redhat.com>, Chester Lin <chester62515@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	Conor Dooley <conor+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
	Eric Dumazet <edumazet@google.com>,
	Fabio Estevam <festevam@gmail.com>, Frank Li <Frank.Li@nxp.com>,
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>,
	imx@lists.linux.dev, Jan Petrous <jan.petrous@oss.nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Matthias Brugger <mbrugger@suse.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
	NXP S32 Linux Team <s32@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Sascha Hauer <s.hauer@pengutronix.de>, linaro-s32@linaro.org
Subject: Re: [PATCH v6 0/3] s32g: Use a syscon for GPR
Message-ID: <aYM2sXq2FXCISrCI@stanley.mountain>
References: <cover.1769764941.git.dan.carpenter@linaro.org>
 <bdb7cd69-7dcd-4e8a-b04a-14a2eb902311@redhat.com>
 <20260203145438.5a850b61@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260203145438.5a850b61@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262620-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,gmail.com,foss.st.com,lunn.ch,kernel.org,davemloft.net,vger.kernel.org,google.com,nxp.com,oss.nxp.com,lists.linux.dev,lists.infradead.org,st-md-mailman.stormreply.com,suse.com,pengutronix.de,linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dan.carpenter@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linaro.org:dkim]
X-Rspamd-Queue-Id: 119BFE5B0F
X-Rspamd-Action: no action

On Tue, Feb 03, 2026 at 02:54:38PM -0800, Jakub Kicinski wrote:
> On Tue, 3 Feb 2026 12:18:54 +0100 Paolo Abeni wrote:
> > It looks like patch 3/3 depends on 1/3 but it should land in a different
> > tree, as patches 1 && 2 looks suitable for 'net-next' and 3/3 should
> > probably go via the arm/freescale tree.
> > 
> > We either need explicit ack from freescale maintainers or this should be
> > split across subtrees, right?
> 
> FWIW normally we don't touch the dts patch at all, unless the
> maintainer chimes in and tells us to take it. No waiting for acks.
> Off the top of my head us taking dts patches only happens if 
> the person posting the patch _is_ the platform maintainer..
> 
> For this series we're waiting for the bindings to be reviewed.

Ugh.  Crap.  Rob already reviewed them.  I included his Reviewed-by tag
in v5 but I accidentally removed it that from v6.  I'm so sorry.

https://lore.kernel.org/all/939fdaf94038613486bdbba510a92a1e57e18c71.1769592679.git.dan.carpenter@linaro.org/

regards,
dan carpenter

