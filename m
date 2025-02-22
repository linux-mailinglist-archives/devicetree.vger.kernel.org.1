Return-Path: <devicetree+bounces-149757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A5711A405C9
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 07:11:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 02F2719E0116
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 06:11:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 549562045A8;
	Sat, 22 Feb 2025 06:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=erdfelt.com header.i=@erdfelt.com header.b="XMr+mxnG"
X-Original-To: devicetree@vger.kernel.org
Received: from out.bound.email (out.bound.email [141.193.244.10])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F3A72036FB
	for <devicetree@vger.kernel.org>; Sat, 22 Feb 2025 06:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=141.193.244.10
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740204638; cv=none; b=snHJao6s6FX8BqczgoQhVWH83NvqPg34rH36oBEH67Bx3gHP5YcZva/zBfbTZSuCLCtq3k15xenW0Aain6pRuO6iZ2hHbeXssB+3huewKWDKl6roJwy0ezUsBFtSrmzv6rgP1ueFs1Ef1HGMoC5gc3TNwCLspTtqahLCyMQht7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740204638; c=relaxed/simple;
	bh=KkzeBQXf+mU9ikIeh9fv9ATGVJE9abnfPBSWitkwiWE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AE1GZ/VvdDcP7PhoxDsUTybXZhowyzAlJTM1tgYZ07U9J9k3YEZTtHNBhVkZhnCb40zIZlLs/L+CaBn5vBPChA6tHlAkS7PKlYe8xgzWfzmLSNUA/8VgVGvi/0H4VYZ49SEUz4DcaHOXD1RTcaH+rXvhEhTkkBqaF9ePk2mjHL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=erdfelt.com; spf=pass smtp.mailfrom=erdfelt.com; dkim=pass (1024-bit key) header.d=erdfelt.com header.i=@erdfelt.com header.b=XMr+mxnG; arc=none smtp.client-ip=141.193.244.10
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=erdfelt.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=erdfelt.com
Received: from mail.sventech.com (localhost [127.0.0.1])
	by out.bound.email (Postfix) with ESMTP id 946298A0A03;
	Fri, 21 Feb 2025 22:05:33 -0800 (PST)
Received: by mail.sventech.com (Postfix, from userid 1000)
	id 7AF37160036F; Fri, 21 Feb 2025 22:05:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdfelt.com;
	s=default; t=1740204333;
	bh=Yd5waWu6Z02b7lT2L3RgwjYEybluLidOKnWnRtbDL2Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XMr+mxnGFLr8vi+1LmKsgBNc4ydYXyV9PROuwVCoPciB/ZQwaaeFxmgklS+4/1T6L
	 KGatAo5ZdYNb31wh0xYSNmngvMN2Y3XzEozbhSjnBo9hoFAWjk69GKNO50xAys2hIO
	 CyVrqbznGhvSyM5a/zKNURg7cz1vcjCyONQSrNEk=
Date: Fri, 21 Feb 2025 22:05:33 -0800
From: Johannes Erdfelt <johannes@erdfelt.com>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH UNTESTED v5 0/4] Orange Pi 5 Ultra
Message-ID: <20250222060533.GV16911@sventech.com>
References: <20250220041010.3801-1-honyuenkwun@gmail.com>
 <20250221231340.GS16911@sventech.com>
 <CALWfF7KW8_vAx49nNygKpLHNJQVpjvVdVpzYiTAWgQvSopHikw@mail.gmail.com>
 <20250222043632.GU16911@sventech.com>
 <CALWfF7JWiZnqJCAqCK4-TjVuUTqv96+=u2pC2iNvTbCBOCLuqw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CALWfF7JWiZnqJCAqCK4-TjVuUTqv96+=u2pC2iNvTbCBOCLuqw@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Feb 21, 2025, Jimmy Hon <honyuenkwun@gmail.com> wrote:
> > On Fri, Feb 21, 2025, Jimmy Hon <honyuenkwun@gmail.com> wrote:
> > > On Fri, Feb 21, 2025 at 5:13 PM Johannes Erdfelt <johannes@erdfelt.com> wrote:
> > > > I'll also see if I can give HDMI a test.
> > >
> > > Please report your results when you do. This is one of the differences
> > > from the Orange Pi 5 Max. The HDMI1 pinctrls does not use the default
> > > pinctrls like other RK3588 boards (including the Orange Pi 5 Plus).
> >
> > No luck yet. I do see this message in the kernel logs 8 times at boot:
> >
> > [   41.552751] rockchip-drm display-subsystem: [drm] *ERROR* failed to
> > get pll_hdmiphy0
> Oh, I believe you're hitting this.
> https://lore.kernel.org/linux-rockchip/0dd48599-448f-4472-9a8a-54b7f0379c13@collabora.com/T/#ma4eb427de77b5a4806a2c2b5bef2fc8d4003f801
> 
> I included that patchset in the integrate-6.15 branch. I don't have
> the problem on the Max because it has both the HDMI0 and HDMI1
> enabled. However, with only HDMI1 on the Ultra, it's not handling the
> disabled hdptxphy0. A quick hack is to also enable hdptxphy0 also in
> the Ultra dts.

That was it. With the last patch in that thread applied, I get HDMI
output.

I'll see if I can figure out a setup to test the HDMI RX port as well.

JE


