Return-Path: <devicetree+bounces-260893-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MMhNHmxie2l2EQIAu9opvQ
	(envelope-from <devicetree+bounces-260893-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:36:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B0AB074A
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:36:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EA9F9300B9DB
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:36:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE3E22E9EBB;
	Thu, 29 Jan 2026 13:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T5ICcfme"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f54.google.com (mail-dl1-f54.google.com [74.125.82.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E40246BC5
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 13:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.54
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769693780; cv=pass; b=WCzcEy4qZFCIgRJVj68RmbEr51YwDV/MFOQnY/eBc7uf4n8xToOuqvKoVKi3pToJDA2hMGYBQp1DGKnuucwqjiySH+kJXD1KDiXhm9JZUMHPeK99IS+OZgIJoosj8Jwp7XLUBvhFTTEMnheM95TQrwVBWfQfrNO6PpdUPrEwzWk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769693780; c=relaxed/simple;
	bh=T2/nv8JV1Ds7KRLfYUddoQsiK5wsxE0Be89T8jD7vSA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=agH3C77rx0tyl+hNioe46P2MGoDhhUTviIERlks7s7ipGKtmhueFTOfkBbPkgaikWKzbSKTlhQoQB23d8dG/gFLW5sZqGgFm1ga2Kph972CbZu6WzgbKinlB2iKpbk9yQ/7jykNDxuNeBMrDD7C2O9ueKUf36qp+N9QYZiSOHsQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T5ICcfme; arc=pass smtp.client-ip=74.125.82.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-dl1-f54.google.com with SMTP id a92af1059eb24-124afd03fd1so1426159c88.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 05:36:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769693778; cv=none;
        d=google.com; s=arc-20240605;
        b=TvBLjwboWSZcgWSWcOL/g9aIzdS5V1VjgWfKL7agbPq+dxICM45T28USOFBFDhDGM3
         wzhcRBMr7DNbbBvk4M76cczIQebultjezDmnr3ymcR+/y9b7T7+PIo8DiefeJPFyTRFf
         ryESJI/e+mxfxr4/5mZ/w8kLs5PasYEHpK/KL2n9YUhktLNYSMFr8eHmUCQ7YawLWARg
         aapZzcgiZJbJ42c6lh0XUgxRug2qHYUzDZPHBRyWAzwyDPy9zppyNY8hB2HOiECxdkCX
         nvyuKLQyjYy3H8CE7a9fFYUO1fJFgUrRp/xC6dfhUb3fRuLmQpY9V/lcJcSwwKv10ZeZ
         6T5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=OUbc9YmxzZyQuCfYvCcWLpHnYb4bvtYeu1C4sFcAeps=;
        fh=+yUbbiMpKU9tcYqiRIyLy0B5bAfj0Y6Zcb4kzTawuic=;
        b=LCxpXjOCOvtuTkMih3GTtp4KZB2iEKsZjpfbtM/8dkE1GgNEOL7ppgYjVREhjxwLf2
         Dxy0Ik1lNJEmiwPtzuf8qOd7Qj101K7q9p2sB8uoF5Ym152SWIR6/kUlFnoHo9YXpMux
         RA7wfI+SACQCK4pQW0RZceqicOQSRBK04gGH+0w2ebyqdso2tPVd7kRpRveZAzIlBvO7
         Gxp4FBvhI0beqigM8Tr8+qlwt6Tfdo3CqeTmdSDC6NIB+kks19PL6rnsDnORBHsRcbGW
         OOaNAB3yexcRHCbtTTtjvIfQ+XuTcOgP/2l6D+UkeN+xz15IYHXJUzuw2Op4pyUwjYaP
         eJfQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769693778; x=1770298578; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OUbc9YmxzZyQuCfYvCcWLpHnYb4bvtYeu1C4sFcAeps=;
        b=T5ICcfme5PXXSgw9Qv+6I8Lw7XKnEUotqxEMtA8YOwGevsQKP95VFpo5Xc4R/CLV2e
         c7HtnAYqxmPiVtDWPMZH357V2Fz6L8vLZtvcNs9RU1fACvI9wztDtxoH0q0QwMzUZim+
         bV/KxBJh890z0i+I1Pjy2wjc/dCXzIIsiQbcj3jw11STsqUT+Nz88QMUVLDqDifWHIRh
         2qyMdQq72IdC1mgtO7F8PcIy/II62nlSy4wQb23HSF3/93wfGkyRAw1ObALGbyo6V/HC
         /9wcEDrqFcSTJ43zIErTPrya0NdB7cRdRmyM5cisajd/A7SGBzcUvbdfUFvKz0QO8KT+
         tUuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769693778; x=1770298578;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OUbc9YmxzZyQuCfYvCcWLpHnYb4bvtYeu1C4sFcAeps=;
        b=AwoVrxd+e8WFvm6ZEXLKV8Z8RcmEHotqvoK6qYLx7JSlEHChQ5MEME/HWAQdJf84Q7
         UmxlUlpUOdtIQwBgHc2rjfiJjHkD/QKspaRtqS6XXOO62RSjVbOiWiGxrOU7CrMwj2mo
         GfnQ5Jsw4i+qIkEC8FsLlViylNvD0sOqSgwqHrD0GMt8rlAtL95ZpGNuKup1/6dFp6zC
         eardMS2FVYc+IxDAw8TzO3gVH05ibTXyxLrPXGzVMhcdDRrob4jUzwWG0pBbJS+LlyMy
         WywOhNjwhIkRqwbyKihiKbMXcxynsSX6KACHc4NkXJwZMxcVYgJ6hJFX9sFHk+DXR7V2
         A77g==
X-Forwarded-Encrypted: i=1; AJvYcCWBcQNZ8amugwuwpYzU+RlVVU/yOD7XMqdB7+KZmlfs4eYvdaMOjO3C7zNl+COxycHqh0F/0O7uWRL4@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/nC5FLIh+kO6obMwpIJFa3nHl9Up6aUd7hkF7lpK1sH+tCInT
	K6rcZjYDz+hOPCHJW43Gkx527u7mQurf/NxOpeNmj3HJEvmyTynq3JrlbEfNRUgoMe4jS8vXeBv
	8YocBSkADR3w9IlcsE4KNaCMC/LcwTki2YXS4q0YYUfXaUqt+eZw3iww=
X-Gm-Gg: AZuq6aKIEboxb4BfImL+Nukj8TifH2BEQQmjXR9kWD82JhTpHAVQ6w51XAKiiaXdrOL
	liXvSUUjoMM0+p/eH0+aytOg1QFw63cgIbh95mwDAGC0+sR6XWZPieQp2AwOF5I3Nd/peL7bFmN
	mf4KTwSo/ldPnh7gpSviIq7asW4sjtixxj9ykQr7daOx2dlHBBWlU6eUAUyFzJ+XU5clQC4X6rS
	pp7TLnlNdAbIKgmYDoY+TRJjAfOV2IbIDVavxcoXl+PgyZO451Cm2estlLbHk0nxQMkMCvOBV5P
	d/msq8rlZLZVQVM9JfYzpolC
X-Received: by 2002:a05:7022:b8f:b0:11b:923d:7753 with SMTP id
 a92af1059eb24-124a005f58amr6177136c88.3.1769693778067; Thu, 29 Jan 2026
 05:36:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
 <20260126092159.815968-3-vincent.guittot@linaro.org> <aXsuRTZUUnw0kdzV@horms.kernel.org>
 <CAKfTPtDfnpzq2CB-isVzvh1ZCWo7kit9KRJvVGoU1C3zZTgdXw@mail.gmail.com> <aXtfVUb0eLwP4R28@shell.armlinux.org.uk>
In-Reply-To: <aXtfVUb0eLwP4R28@shell.armlinux.org.uk>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 29 Jan 2026 14:36:01 +0100
X-Gm-Features: AZwV_Qg3uPvaKNdmIviHyRFKK8XsxTqMLqCrJ58tO3_TcY5z3DRE4t2Ah-LnutY
Message-ID: <CAKfTPtCiJcNOdoddZN5N1dKHXfUJBe0=zeWfZ5uENoXDvbMnpQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] phy: s32g: Add serdes subsystem phy
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Simon Horman <horms@kernel.org>, vkoul@kernel.org, neil.armstrong@linaro.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, 
	s32@nxp.com, p.zabel@pengutronix.de, ghennadi.procopciuc@nxp.com, 
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260893-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vincent.guittot@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,armlinux.org.uk:url,armlinux.org.uk:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: D4B0AB074A
X-Rspamd-Action: no action

On Thu, 29 Jan 2026 at 14:23, Russell King (Oracle)
<linux@armlinux.org.uk> wrote:
>
> On Thu, Jan 29, 2026 at 02:01:13PM +0100, Vincent Guittot wrote:
> > yes, the usual pattern is :
> > - phy_set_mode_ext()
> > - then phy_power_on()
> > but I can add an additional check
>
> Please read Documentation/driver-api/phy/phy.rst section "Order of API
> calls" which suggests phy_set_mode_ext() after phy_power_on().

Fair enough.
That being said, all pcie drivers  that use phy_set_mode_ext(), call
it before phy_power_on()

>
> Having different requirements for different SerDes PHYs quickly becomes
> annoying for users of the SerDes PHYs.
>
> E.g. I'm trying to add SerDes PHY support to stmmac, which is used
> across different platforms. Having all SerDes PHY drivers behave the
> same as far as their PHY API calls are concerned means that the whole
> point of having an abstracted interface is maintained. Otherwise, it's
> completely pointless.
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

