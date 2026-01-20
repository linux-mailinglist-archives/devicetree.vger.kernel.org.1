Return-Path: <devicetree+bounces-257336-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oINbOndCcGnXXAAAu9opvQ
	(envelope-from <devicetree+bounces-257336-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 04:05:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B7B50393
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 04:05:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 25AE0607101
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:40:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C490E3E9F85;
	Tue, 20 Jan 2026 11:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VneoogXh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E795B3D3333
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768909203; cv=none; b=TibxHDXSCRwWAq2jW1+vUPpTAu0/GrftDcsSYLGn/GxpyoX9QD7IkMBf6ERAY0FVR2iCIn89PksLT1ddQ59ialnVn5PWsD2ECKcNkBNpLGu2ye3ICdZ1Hq3iwkGFxVfvHjZspOJdcnu20NF/PfCtIc7pRX0NTRoGj2S/6h7KlnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768909203; c=relaxed/simple;
	bh=jrQhr8hRcob+nmP7FXhfmRMEqhWFIhwmQ2N3yM90I3U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YiMD489zW2H0q5l5zKccg+yXcxGjT67FfsEM8bPzabUCWBy7lUGrSPUYzg5DffnnzCo2KLEOMkRDr8QXM8wJcqlQfPTx2vRCSEx5SToQJjQL8OxSs0MixzjlGz8sVi6lZ63WXE4GOCxo1lijFd6XyOSr6/lmnMi7iT8otmjzAy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VneoogXh; arc=none smtp.client-ip=74.125.82.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2b6f5a9cecaso1356109eec.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 03:40:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768909201; x=1769514001; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QeACF3mv4Ishn0NV7RQhnzhSMHx1UMVLhYGwPqoV7AE=;
        b=VneoogXhouU1bgDmoCFpGVIO0NQ12Tu1rmi6aayCtGwxDdscrGNYffXXIiaWX7M8cx
         hyo9Bvn8vBwg5d8PiMjm1wCFlCyBdGQx+BILG0SMBFVaaDtojpo5/fnZ9Gu3JJs0DMu2
         uzwCjm+BGX1W7gYJJTKH386Z63vVMwDJE3nyP+bchcH0TpcMTrs9GAYyrneuA4MidQTE
         5fr+gxPTCCMBJzwXW8MX16Rzn2+F6ttFg84FeutdUKyAREoUpPcMGRM0OeemWPju7oMN
         pO+ICJe9pWKPTAdKvzI152THat+6X1fn0E9ktvSeLQgPT1prEcJlJost3F1qEMvenSqG
         K0Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768909201; x=1769514001;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QeACF3mv4Ishn0NV7RQhnzhSMHx1UMVLhYGwPqoV7AE=;
        b=xC0rODtmief/qZniluCQGsJKMFZ7RfkWlTP1nyYz9ouAGD8yimC+SJaN7QddNOmkFU
         iBRBGBfmDyJ0hfwVovLhCs7vYqdZtuTbz+s9OqsvUvvVOtShRTTwGORuYow+iD1WqdrN
         9DD2fWMH993kwSi3YA60fpZta66bnQlaV2bbX7ubni+lK0SkMkKEhPSqC1XUjI1qvdpg
         w14fdsGIDu0K5KPciIBx6EEGu3iYXq1mMJ+ok7GG/WUILpU+72OVvWQ9iN1feb3C5AUm
         mEKcyuJRU/44Uz6/giAVeMp90npyvddGpYGBz+MI68AdMkXG2/+6TjarA9iQUXm1IiGX
         cU9A==
X-Forwarded-Encrypted: i=1; AJvYcCWl4mCmIdW1bex3wIMBkJLthK86YsUi9kZPi6SSAqqWAkzaGqdm2ByW62xiVkLj9hgTSDmoDUx6861z@vger.kernel.org
X-Gm-Message-State: AOJu0YwxwjySls5rGYqWxzM4+zYZkX8sWMMYE2qQ75hLQH+p8Jw73FUV
	aFwqi0pufohUrqnQ4QitT3mJxmkE8TT91CyG4mfCNkfEMIXxWSYiOPmx
X-Gm-Gg: AZuq6aLdomzw5HkenkjtPjtuIiQcy8yFdlvsRC2xW2h+geirbF4Wcy+GBJPGFX2uKEz
	GEMiqiIeWyfCBtnTni6laD2fpVrE5jLhBNzuTh7HeN+D4Rtwl1R51hSNwDQ8oNXGp3MMt+Fsyg4
	qskm4khrRZ8F2ANO0CsmxqL4mMH7kxzLEZ/TpAmBKZAxjiKceBMfh4xzxEbWK0zHzUcYzA2tvbN
	/lU5j0nG8fLDAuQv4V7+5smbsHE3OjF8lZdOP5NyG4H9l54fvIHCPgtwtrFOBul4O5V/7M3wVMi
	P8OIsfoUkvOP45l4luIbuZ/WvwssWuxLbII2WSjnRcrSqD7GYCy22xl71ad017v9ObYiBLPX6HO
	lCI1oPm1HaTxWbDyhcQ+tqLi8I4ATW4O8Ot1l8q5tYUxvW+ahKzfnN7AYcIIiuQoiXLWihhVRvw
	GHDdiOLqoXZA==
X-Received: by 2002:a05:7300:2315:b0:2ae:5967:db5d with SMTP id 5a478bee46e88-2b6fd746cacmr1048269eec.13.1768909200775;
        Tue, 20 Jan 2026 03:40:00 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6beeb4b9csm17558900eec.30.2026.01.20.03.39.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 03:40:00 -0800 (PST)
Date: Tue, 20 Jan 2026 19:39:49 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Yao Zi <me@ziyao.cc>, Inochi Amaoto <inochiama@gmail.com>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
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
	Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, 
	Longbin Li <looong.bin@gmail.com>
Subject: Re: [PATCH net-next 1/3] dt-bindings: net: Add support for Spacemit
 K3 dwmac
Message-ID: <aW9ou-lsQQ5dVzqW@inochi.infowork>
References: <20260120043609.910302-1-inochiama@gmail.com>
 <20260120043609.910302-2-inochiama@gmail.com>
 <aW9fL7r0AM0flALJ@pie>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aW9fL7r0AM0flALJ@pie>
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257336-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[ziyao.cc,gmail.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gentoo.org,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,armlinux.org.uk,cqsoftware.com.cn,disroot.org,nxp.com,bp.renesas.com,linux.intel.com,bootlin.com,eswincomputing.com,altera.com,cherry.de,st.com,synopsys.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[39];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,st-md-mailman.stormreply.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt,kernel];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,inochi.infowork:mid]
X-Rspamd-Queue-Id: 96B7B50393
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 10:55:43AM +0000, Yao Zi wrote:
> On Tue, Jan 20, 2026 at 12:36:06PM +0800, Inochi Amaoto wrote:
> > The GMAC IP on Spacemit K3 is almost a standard Synopsys DesignWare
> > MAC (version 5.40a) with some extra clock.
> > 
> > Add necessary compatible string for this device.
> > 
> > Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> > ---
> >  .../devicetree/bindings/net/snps,dwmac.yaml   |   3 +
> >  .../bindings/net/spacemit,k3-dwmac.yaml       | 107 ++++++++++++++++++
> >  2 files changed, 110 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/net/spacemit,k3-dwmac.yaml
> 
> ...
> 
> > diff --git a/Documentation/devicetree/bindings/net/spacemit,k3-dwmac.yaml b/Documentation/devicetree/bindings/net/spacemit,k3-dwmac.yaml
> > new file mode 100644
> > index 000000000000..58dd98f79e8a
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/net/spacemit,k3-dwmac.yaml
> 
> ...
> 
> > +  clocks:
> > +    minItems: 3
> > +    items:
> > +      - description: GMAC main clock
> > +      - description: PTP clock
> > +      - description: TX clock
> > +      - description: PHY clock
> 
> Why does the MAC require "phy" clock? Shouldn't this be handled in PHY
> driver instead, or I get its meaning wrong?
> 

IIRC, the "phy" clock is used to pass the phy from the mac core, I will
double check if it is possible to connect to the phy directly.

> Also, I don't see "phy" clock is acquired anywhere in the driver. Is it
> really necessary for the MAC?
> 

This is a mistake, I remove this by accident, if it is necessary, I
will add this in the next version.

Regards,
Inochi

