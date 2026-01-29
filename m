Return-Path: <devicetree+bounces-260887-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCw9CRNbe2nXEAIAu9opvQ
	(envelope-from <devicetree+bounces-260887-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:05:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 706C9B03C3
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:05:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 87BC73011778
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:05:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60008388843;
	Thu, 29 Jan 2026 13:05:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WZEjDksO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4A6F33F392
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 13:05:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769691918; cv=pass; b=McPyOslzZJaY3M77ebVzjZBrS9dNmc8cqRrrWBbgg9edKzV9h20oaDEDTWpf3OJD1gPyeg3513ItPz3PFLFFa+U07ZBfiX37DJH6N0qPbM9eLNbtLD0TH2vJLkc69DLEOErSrLJCVWFCp7yfYl6WSFt8c7WWT/moU7wAZTDh2LM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769691918; c=relaxed/simple;
	bh=QzGxG1kvMM/GBBvFO0xkrpNgT0WXpaEu6YZ2R1cThBA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GqeAbfh71l5sSQfPAcfMpI5ek/XPI+4VgYk970GRdCTuGgyL7yrJKDhl8LvZ/DX/l6JPTpxFZQwMZqaKp2FjW6TXxp/y5GDXsr7NNdL+f67eRwTkiTPck2zVk7rqpD+ovcKFiglFqfD19oq6MYl8dHf26rLtlHk+LL74JFGTpEk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WZEjDksO; arc=pass smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-6505d3b84bcso1318969a12.3
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 05:05:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769691915; cv=none;
        d=google.com; s=arc-20240605;
        b=J3Ah6sQ6C4LF/lI4P3hTlk4b81sZWXF1XVJMHnUTPbnT+se07LCebLVo4pICB7Xu9+
         JNdOzjKAuRsStFPCdxlTn2fjzsDkCuHkWLthqC0clr19rsLFE/fpI9+cgH8Oz4lPXiDS
         5e4b9H6qzMrzZE1t32dtwjPm7VDDf4BaxV0gcLbIhBBuDjJ+HbZDDW5laStL2fhwIzDj
         mfyWfaXpL5J8WxFfWp0VkxZKL8srUsEK4/xGXpcOa57C/OrNk9wlLvGO3quVWspIX225
         KneJeDv4QAgkHLHkM1hD9drEibb+zTfVVeg9mewO8h90ZyJmHlNqs2IGT6mPqZU0Cvkx
         qJFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hV0EaAfSfWXdEAd8ez6i9+1b1e2fuFvIVn/DRhtOP0g=;
        fh=bdJoF8hQnb3s4u4k/uA8iSkbO0mrVl1AnUto5NkN1OI=;
        b=G7lAKGq+SBpKfl48zZfINrgAgTsvOPBU2YybJ0H0BPlKcqVpQm5mxLmko+LjDr7U5l
         V9qrOHUPNdLsdWJRAUHDQs61EGSDgxMTLUwsewtuAxnxYKe7jQPdtlSLiEuXav4vHUbD
         zbr6O5jV8yfGL8pK2vR+fmgmli9aRCIpqQ7ZYlgKNcC/odXWZwqb5+9RlrVCzTsT6121
         Pb2+GpYsCqpxGjfLESeAON3ABj9zhPOphr7roAg++sOihL5oXvrAnI/m1MI2iyTS7Z9o
         y4Q2ZYaKM27Ce0kxD5GWJyRR/qciwB1zQgIsP+zLaCugm9c857rpkKqgMMWAy1RvRB3c
         IiqQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769691915; x=1770296715; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hV0EaAfSfWXdEAd8ez6i9+1b1e2fuFvIVn/DRhtOP0g=;
        b=WZEjDksOHJXwdPlX30BDiJhRpWT3zW2YJOaNYm5WoNBasrsMj6jNjHt0uD3o0YB6zd
         UGEtA6l5xNdSkkNIuiuRMqJdd/R79VqtApiF0sc80w4Zdp0wNo5HGsqcKmc4jh5eg2kW
         aMgfP/0RvtVPgjD8mM710d7OD8baj5B6q3DcFn8v/lES1MS49/YRmiJjlc2zOBtDehum
         q0r6vgcqnRqwBg5rTlDxjT7o2qXt3plxxJCHB3yf0RJmTcPimS3/emTnlscA5Lsty8ts
         3SpWivlArjPytdcQyUI6mBiLQlqLd8iEhQwXJNSbE2j3RRjppl2CNsikkBuJ8AYcLnY+
         NPcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769691915; x=1770296715;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hV0EaAfSfWXdEAd8ez6i9+1b1e2fuFvIVn/DRhtOP0g=;
        b=qSim+hYLn2/ZkxjFCbKZDjRSKzwZOcumD6ANKNZf0TGeV+E3p/bAhJHD2v5ylb9Su9
         6YdP8dqFqWHbPpdLXN9ek6xIS/Fyzd2zek8gbqe5NnzpEg2C81kR25D5pV1R+BjjPnoy
         mh3iI1yIGw6koSVPgD2fJ2y6OX0d3oCoAJzq3ML5raGtHmikndlBM+rqpjCNtZpD4p58
         ryuNHkZoGi/rz5RqVJJPf5HrRQqfEO+/WUaANdOPZJ1713Y8PE/jm31+OaSecKG2LXQY
         3OGP9W3kxIdkj/zUPWBuX+izGuXUbQGtOFLkVm9j+8vvdbbnmlPCCdPAGeOOzgy861ty
         WZKg==
X-Forwarded-Encrypted: i=1; AJvYcCV2p2KvYdg83uUpCpg8EfROjIQ+/wnJy//tyqRoibdhj+cYBVbJxyj+zDuITDdTZZ/8PW9XI4ugtxbj@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb/CXmpKSL8z7fHciglBaMaLmoQuUp/tHu7BSSQADqZRYy8rf0
	AC+TLuquEaeZAHnU68wWPprMIbYbvuktemSAu8+Qy+4K10xQrMXzpzv0KbAHMWqmznJU5sd186v
	oofhfBZKYglTDfkSvhxygoBTdwN3soTG3OXjC6At8jg==
X-Gm-Gg: AZuq6aLvIF6TtRA8WGIPh5+P4p1kMaONmZSWBkEKZ7r2ba9ydLP7YWVZwPwdvt9ypaK
	xe1W0wnJNUbdq1H6DN/hF7/iFvCFScq+ypOg8jAMPQnKCx+/HTfUAa2CMYC77448p0pQZzoM4lA
	9w+do1VWq8Wi1MXR1gEEKPktbvg8iAQIwGiNbCJsDXATcot8ingWVaW5tTs7Dg1oO4izazNtoew
	gdZZmSEJqFDtCmmQyuORhHt77Ot8CKD3N7CBQIdjv8h/z+W597QgLhGMM+eJOXy1xMzyHlPlkuP
	Y4iNbFIZgTY11Y0WDGF+7QnzZuoq/HuqeoY=
X-Received: by 2002:a05:6402:5187:b0:658:cc59:161c with SMTP id
 4fb4d7f45d1cf-658cc5917c8mr1678090a12.12.1769691914958; Thu, 29 Jan 2026
 05:05:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
 <20260126092159.815968-2-vincent.guittot@linaro.org> <aXtXmN1V8wg57yuE@shell.armlinux.org.uk>
In-Reply-To: <aXtXmN1V8wg57yuE@shell.armlinux.org.uk>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 29 Jan 2026 14:05:03 +0100
X-Gm-Features: AZwV_QhIdeGA_SmdiEnXscTGdrXOcfbfoiNkh_dYEPgauVTbh2-bOtUlEiHJGvM
Message-ID: <CAKfTPtANQsmWAf-u6+isXh5UHJdo2mYELBYio=-UxZj3WM6-5w@mail.gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: serdes: s32g: Add NXP serdes subsystem
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com, 
	p.zabel@pengutronix.de, ghennadi.procopciuc@nxp.com, 
	bogdan-gabriel.roman@nxp.com, Ionut.Vicovan@nxp.com, 
	alexandru-catalin.ionita@nxp.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
	Frank.li@nxp.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260887-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vincent.guittot@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,linaro.org:email,linaro.org:dkim,armlinux.org.uk:url,armlinux.org.uk:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,nxp.com:email]
X-Rspamd-Queue-Id: 706C9B03C3
X-Rspamd-Action: no action

On Thu, 29 Jan 2026 at 13:50, Russell King (Oracle)
<linux@armlinux.org.uk> wrote:
>
> On Mon, Jan 26, 2026 at 10:21:56AM +0100, Vincent Guittot wrote:
> > Describe the serdes subsystem available on the S32G platforms.
> >
> > Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
> > ---
> >  .../bindings/phy/nxp,s32g-serdes.yaml         | 154 ++++++++++++++++++
> >  1 file changed, 154 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml b/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
> > new file mode 100644
> > index 000000000000..fad34bee2a4f
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
> > @@ -0,0 +1,154 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/nxp,s32g-serdes.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: NXP S32G2xxx/S32G3xxx SerDes PHY subsystem
> > +
> > +maintainers:
> > +  - Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>
> > +
> > +description: |
> > +  The SerDes subsystem on S32G SoC Family includes two types of PHYs:
> > +    - One PCIe PHY: Supports various PCIe operation modes
> > +    - Two Ethernet Physical Coding Sublayer (XPCS) controllers
> > +
> > +  SerDes operation mode selects the enabled PHYs and speeds. Clock frequency
> > +  must be adapted accordingly. Below table describes all possible operation
> > +  modes.
> > +
> > +  Mode  PCIe XPCS0           XPCS1           PHY clock       Description
> > +                SGMII                SGMII             (MHz)
> > +  -------------------------------------------------------------------------
> > +  0  Gen3    N/A             N/A             100             Single PCIe
> > +  1  Gen2    1.25Gbps        N/A             100             PCIe/SGMII
> > +  2  Gen2    N/A             1.25Gbps        100             PCIe/SGMII
> > +  3  N/A     1.25Gbps        1.25Gbps        100,125         SGMII
> > +  4  N/A     3.125/1.25Gbps  3.125/1.25Gbps  125             SGMII
> > +  5  Gen2    N/A             3.125Gbps       100             PCIe/SGMII
>
> Shouldn't the mode be configured via phy_set_mode_ext()?

There is a phy for only pcie only. In mode 3 to 5 there is no generic
phy created

>
> This identifies whether it is operating as PCIe or for networking and
> in the case of networking, the PHY interface mode should be passed as
> the submode.
>
> Have a look at include/linux/phy/pcie.h to see the submodes that may
> be appropriate to pass to phy_set_mode_ext() - but talk to the PHY
> subsystem maintainers.
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

