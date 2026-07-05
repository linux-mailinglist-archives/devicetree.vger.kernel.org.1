Return-Path: <devicetree+bounces-320531-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +L3AN466SWr96QAAu9opvQ
	(envelope-from <devicetree+bounces-320531-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 03:59:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A19708CA4
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 03:59:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Vo5bRts2;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320531-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320531-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A89853010DA7
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 01:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 396D3211A14;
	Sun,  5 Jul 2026 01:59:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA0166BB5B
	for <devicetree@vger.kernel.org>; Sun,  5 Jul 2026 01:59:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783216779; cv=none; b=hX31erPrVPecTVrPAB6Rsw3WUKvqADXGQMW5rPI1gR5SMr2+Zt+zEaZbwjferYQImeOZsfWS7/ZouHe2Zk6huLVRSApvHhIM2PhaeweMpIjTilsqE+qHetNf0+WHzg50CQ4QB+c1SX/AahWbJPtiMU/yZHZ5hhVPnr0C4MPIoWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783216779; c=relaxed/simple;
	bh=RyPz/W4S+LCDerhVSe7fYyGIUfWMUnQTAZdvf9wpZ2Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Jp/N+AibEPLEwQDxYHN+3Y9Ar2vIoQM7ZVUkwC7tblWUwJF9cyp2TRxgI1Bfokj4TuO6DCAWTeP2xBJS22yF42MlOWqCpuwUTJfTghE6ZpAVR44ouTpajEZqtxuVy/O6a2qvWSiIl7TfkSs1Uq1kUnDdawxcB/If1nR+sXaTZKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Vo5bRts2; arc=none smtp.client-ip=209.85.216.45
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-381216921aaso1684456a91.1
        for <devicetree@vger.kernel.org>; Sat, 04 Jul 2026 18:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783216777; x=1783821577; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Acu2tx9xjRD3YeEyFpnpJ7uZlmuH+RrGw+/Yhe826DM=;
        b=Vo5bRts2SGVBrlcAhUpGR04q0n0vkztMySbVz7wiFGaVMuIREWA/g5G09DHLe5nhhO
         VuuBZvDW5f5iyvNLdE/tr6a+dCCMOarveLz3FbOFuAzAuJDdrhD24NTmMslT7YCcqH7x
         TPJSoo6JupMT4kZL2R81KN1eL3fyS9Iyypivf7vWaR3FvRGOiWpMbtGdr/8s66YGyQ36
         vOstFc45R+SWKzetK7QW+WzqFBXVc2c4HvIcvA17dIARvVEqPI3OFGHIs7LQlindsXMa
         KDkwQ4uSIK6ycWu9euN21fJfSWsIgXwkuFwKjYR45iW2DeJiAsiYcDMCc4F9hlhM2g+W
         kbyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783216777; x=1783821577;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Acu2tx9xjRD3YeEyFpnpJ7uZlmuH+RrGw+/Yhe826DM=;
        b=XgUvvMHTuVGU/P7r8YgRNld740t/RzXwGG856Ff9uy2gTs6IQ7uus6MQhFAT8mUZTD
         z/uJQ/gVQYr8ArYMrT6E8kfs7cq+JncvpUUA6UXGiL5UaaGeWQY2uFB/qkQ/EUkEPr8f
         LzWT1M8J0qCpQlMAZUwfGszpU/Asd/cK4pfZ6OxAZxh9wgGG9rZzTIhYovtJd50zX/mJ
         /E7EeQ2FstA1P8hLEfte11VP+DIf+ut530Mb8oH6L/TjPevZQ4IrfUKkq8ztU9cYOXq0
         LBCjBUTxxmPeio4wdH86Bmf/L6dLUYNybSVNsumAaVx7m1OhFSlyUwd67RmDi0Naw3Wj
         zU3g==
X-Forwarded-Encrypted: i=1; AHgh+Rrpemc5q3D0YYnlw6rzW8Ht+vH6XzcBad1ndmSwujIpN4nvmB3BTYTfz0JXMmQqdtzFwwVA5o5Ex0ox@vger.kernel.org
X-Gm-Message-State: AOJu0YxGTgK5oLx3F2OB/CHov7OkW7Qmfr63327gE7rdxpboLAWFoVW4
	xUDfUj46gNmAc5DDBo0AE4LJJIbKyKEKMml0jDnlhiVO7v9eRjfaQRdwBJfrnfdL
X-Gm-Gg: AfdE7ckoNa4MhnsSB3iMtRvie88/7bHVyYFW2W8d2f3M/tcSU86DRElil7z/6D3WJRl
	1Ct+p0v6zjn32zA+LNsNL5WS9G77ThIUalcqAyl3LIPkVCqalNCN/0jc1w/AXOKcofzUDUrUUo6
	sjD6etOC04x2rN0RAtthEgzclpt/HCFuBxAbfVlWlPtvDiASH0VTLY6/4ffsub8ZyWEuXyYCJh3
	EDr11sJox+T7DyG68ETWbP7EAN4P4VbWN7hnDNNLfHy8aM+a5ikUjtS8uRbK7XjCLTMqK/8IsDj
	h8CSIEBWN7Mnw+oNbYx/OlgEAUn6YiUyKMmpJ4gu9RbCPMxxxNvRHjYHM/6qui/+fzF7IZN9B6t
	YFFP3zJPkw+aQa6m+hl03t5OGuFJfllmLSTQKk+HLnnVr+J3UJLBtT7ve+VmkyTV5
X-Received: by 2002:a17:90b:1f8a:b0:381:41e9:32aa with SMTP id 98e67ed59e1d1-382812808d5mr4797300a91.15.1783216777198;
        Sat, 04 Jul 2026 18:59:37 -0700 (PDT)
Received: from localhost ([2001:da8:7001:11::cb])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3809c8c0915sm3074901a91.0.2026.07.04.18.59.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jul 2026 18:59:36 -0700 (PDT)
Date: Sun, 5 Jul 2026 09:59:03 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: sashiko-reviews@lists.linux.dev, Inochi Amaoto <inochiama@gmail.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, 
	neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] phy: spacemit: Add USB3/PCIe comb PHY driver for
 Spacemit K3
Message-ID: <akm5-xLZgFPLKeE4@inochi.infowork>
References: <20260703021024.495433-1-inochiama@gmail.com>
 <20260703021024.495433-3-inochiama@gmail.com>
 <20260703021929.15FDE1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260703021929.15FDE1F000E9@smtp.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-320531-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[lists.linux.dev,gmail.com];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,linaro.org,gmail.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:inochiama@gmail.com,m:linux-phy@lists.infradead.org,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,inochi.infowork:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 28A19708CA4

On Fri, Jul 03, 2026 at 02:19:28AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [High] Hardware register clobbering due to missing read-modify-write operations in PHY initialization.
> --
> 
> commit c71cb5c4ebfcb4fc5aff5c18a7769949e15dae55
> Author: Inochi Amaoto <inochiama@gmail.com>
> 
> phy: spacemit: Add USB3/PCIe comb PHY driver for Spacemit K3
> 
> Adds a USB3/PCIe comb PHY driver for Spacemit K3. The comb PHY requires
> configuring a syscon device for the correct mux configuration and needs
> calibration before usage.
> 
> > diff --git a/drivers/phy/spacemit/phy-k3-common.c b/drivers/phy/spacemit/phy-k3-common.c
> > new file mode 100644
> > index 0000000000000..0b289e63db999
> > --- /dev/null
> > +++ b/drivers/phy/spacemit/phy-k3-common.c
> 
> [ ... ]
> 
> > +	/* Power down 100MHz refclk buffer */
> > +	val = readl(base + PHY_PU_CK_REG);
> > +	val = u32_replace_bits(val, 0, PHY_PU_REFCLK_100);
> > +	writel(val, base + PHY_PU_CK_REG);
> > +
> > +	/* Program PLL REG1 configure the SSC */
> > +	val = FIELD_PREP(PHY_PLL_SSC_MODE, PHY_PLL_SSC_MODE_DOWN_SPREAD1) |
> > +	      FIELD_PREP(PHY_PLL_SSC_DEP_SEL, PHY_PLL_SSC_5000PPM) |
> > +	      FIELD_PREP(PHY_PLL_FREF_SEL, PHY_PLL_FREF_24M);
> > +	writel(val, base + PHY_PLL_REG1);
> 
> [Severity: High]
> Does this completely overwrite PHY_PLL_REG1 and zero out unspecified bits?
> 

No, All the field are filled, so no data is lost.

> Unlike the PCIe initialization path which uses a read-modify-write for this
> register, this direct writel() in k3_usb3phy_init_single() clobbers the
> entire register. Could this cause important default settings or calibration
> values to be lost?
> 
> [ ... ]
> 
> > +	for (i = 0; i < lg->data->lanes; i++) {
> > +		void __iomem *lane_base = lg->base + lg->data->offsets[i];
> > +
> > +		val = readl(lane_base + PCIE_RX_REG1);
> > +		val = u32_replace_bits(val, 0, 0x3);
> > +		writel(val, lane_base + PCIE_RX_REG1);
> > +	}
> > +
> > +	val = readl(phy_base + PHY_PLL_REG2);
> > +	val |= BIT(20);
> > +	writel(val, phy_base + PHY_PLL_REG2);
> > +
> > +	/* The write is needed as clock requires renegotiation */
> > +	val = FIELD_PREP(PCIE_RX_REFCLK_MODE, PCIE_RX_REFCLK_MODE_DRIVER) |
> > +	      PCIE_RX_SEL_TRI_CODE |
> > +	      FIELD_PREP(PCIE_RX_LEGACY, PCIE_RX_LEGACY_DEFAULT);
> > +	writel(val, phy_base + PCIE_RX_REG1);
> 
> [Severity: High]
> Does this clobber the entire PCIE_RX_REG1 register for lane 0?
> 

This also serves as the whole clock. If the phy has two lanes, they share some
data and the data is store at lane 0.

> The preceding loop performs a read-modify-write on PCIE_RX_REG1 for all lanes,
> but this direct writel() on phy_base (which points to lane 0) invalidates
> that previous work and zeroes out any bits not explicitly set here.
> 
> Should this also use a read-modify-write operation to preserve the register
> state?
> 

No, it is not needed, as all the field are filled or it should be zero.

> -- 
> Sashiko AI review · https://sashiko.dev/#/patchset/20260703021024.495433-1-inochiama@gmail.com?part=2

