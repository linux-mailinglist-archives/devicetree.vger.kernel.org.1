Return-Path: <devicetree+bounces-274612-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHk1NfnJsmmvPAAAu9opvQ
	(envelope-from <devicetree+bounces-274612-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:13:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B7427321C
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:13:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0F18A301E9A8
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:13:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D4FA34D4CB;
	Thu, 12 Mar 2026 14:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="wYocTeVu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C38175A68;
	Thu, 12 Mar 2026 14:13:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773324788; cv=none; b=bRUNJ5hYyDp3LncxvEIPQ1fMzgkReuEnzpP9H651CI3FeRKHnfGNHHatk66ycEVJV1cmOSgipD4+VRqBOGhqNlayCYW9M3phg5qbX8w2GzZ5z3gRZkFtyN306H0eHAV0X3yfIkt85uxEb37SI7SGjAcaGCUbChs1c2etO06GcQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773324788; c=relaxed/simple;
	bh=D0pydH4ruiio63yrExrgIc+D3WCJCkmob25LogACIsE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LrM+p3GDsvLK1Qf36j9XZ6C96UCR9ntwHaVYhL3IAzZPQfUJcctG1GBDMXyUxVZyQY56HwbuAl8wXzZjaBc69hG9Dv1eD02q4BHjTZ8GWBNhGAL0tQ8GrA3YMNZYpsjRl8CcLO8BGW1G3dUb49tg+EW3BokQeiugOF9sM/QvLkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=wYocTeVu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EEECC4CEF7;
	Thu, 12 Mar 2026 14:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1773324787;
	bh=D0pydH4ruiio63yrExrgIc+D3WCJCkmob25LogACIsE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=wYocTeVuMWammMzFo4hBCdOn0IP80HCf47aLXflFHBHPtHxrQSHmae3n7HSEq06Lq
	 ty31jW0XtKt0WjVtLmX1krkW40FXv+zBTbV7xbHJNe2tVHTyB6hg5jFmDj6XYj7Y7Z
	 +nSL1kCQt9itvX0E/hA8JHzpN59QPMeP2UkAFSNk=
Date: Thu, 12 Mar 2026 15:13:04 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Yixun Lan <dlan@gentoo.org>
Cc: Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
	devicetree@vger.kernel.org, Guodong Xu <guodong@riscstar.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev
Subject: Re: [PATCH] dt-bindings: serial: 8250: spacemit: fix clock property
 for K3 SoC
Message-ID: <2026031226-utter-spellbind-53bf@gregkh>
References: <20260304-01-uart-clock-names-v1-1-338483f04a8b@kernel.org>
 <20260310093446-GYC318052@gentoo.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260310093446-GYC318052@gentoo.org>
X-Spamd-Result: default: False [3.84 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274612-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregkh@linuxfoundation.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxfoundation.org:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 70B7427321C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 10, 2026 at 05:34:46PM +0800, Yixun Lan wrote:
> Hi Greg, Jiri,
> 
>   Do you mind if I taking this patch via SpacemiT's SoC tree? and if
> possible, it would be nice to have your Acks..
> (or either way works for me, if you grab it and merged via tty tree)
> 
> On 07:19 Wed 04 Mar     , Yixun Lan wrote:
> > The UART of SpacemiT K3 SoC has same clock property as K1 generation which
> > request two clock sources, fix the binding otherwise will get DT check
> > warnings.
> > 
> > Fixes: b5024e804ee0 ("dt-bindings: serial: 8250: add SpacemiT K3 UART compatible")
> I would just drop the Fixes tag, as I think at the time of Gudong
> submitting the patch, the clock driver isn't ready, so he deliberatly
> removed this clock contraint and provided with a fixed clock frequency
> (the bindings match with DTS)
> 
> https://github.com/torvalds/linux/blob/v7.0-rc3/arch/riscv/boot/dts/spacemit/k3.dtsi#L414

You need to get a DT maintainer to review it before you can apply it.
If you want to take it through your tree once that happens, that's fine
with me.

thanks,

greg k-h

