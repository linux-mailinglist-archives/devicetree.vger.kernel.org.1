Return-Path: <devicetree+bounces-274822-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4AAdNBRms2mVVwAAu9opvQ
	(envelope-from <devicetree+bounces-274822-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 02:19:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCBF27C38E
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 02:19:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3DFCB304A9C9
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 01:19:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1FF5314A64;
	Fri, 13 Mar 2026 01:19:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFM+G/a0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEAC242AA6;
	Fri, 13 Mar 2026 01:19:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773364753; cv=none; b=M+AMjs4HYEARn7B6TXYC7jhYcvPg2W/Sd2gc8FSfhBH4AGltKT/1k3zU5iHqjmkJrpnYmwQgvLIUPEAY128IdDA/54nQNHWSYsYVoFxXx2INOggQhc/AZrLGcb9736sFpr8Z9MgF61ZEodcSKmxyXiymeLpomj74B4DH7rBcCW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773364753; c=relaxed/simple;
	bh=DBlu2vYwHqk1j0AVAu14WX3YgH/5nx3xXS/Du3SQ55k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VAp5mv7QKreVYtJOY2Puk02sGUnVOm4DiQ0tk1T5GupHUrSkIq5akQelb1zD7B5FVp0Rwq3eZy7z7SPUSzFaekTiIwC0D94sZVXAiI0DbdF6Wi+3Ibof/OOukaemIHL3xybsWvEcCt1PnH2A46Y7x9ycbmrXMcNgcs55im4l4Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFM+G/a0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6632BC4CEF7;
	Fri, 13 Mar 2026 01:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773364753;
	bh=DBlu2vYwHqk1j0AVAu14WX3YgH/5nx3xXS/Du3SQ55k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uFM+G/a0xcVM1z3FJ17Y5s/3i6Xgajsz7uByrp0BRn5kVkbe3I+ANdAsdzwRQLa+T
	 VDwpsUB2xt7OnlEtVw8yEe53cAVzHYaeotZetXoqaAXnrdV53yT6OOHukZUSkJ5NNS
	 YdtpN750zHp8D8cQEcZsYZ0QSt21EfC1aITVm+UGE0MOqaFA7OAs7Mi9P1zWBZiE1D
	 aTldv4Zpee3Y8UFcAmPlH0ubKQRZLODu/WwqvMSW3PN0uenzi1+8aOiDdBNBGN4Y5q
	 AWj6XL+hZTVIzIS908fjAnumimaFxxlPbZfGbUBJhk+YH9nwGJS+3G/XJD9GYXt2YK
	 BqzxIrbneatCQ==
Date: Fri, 13 Mar 2026 09:19:10 +0800
From: Yixun Lan <dlan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Yixun Lan <dlan@gentoo.org>, Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
	devicetree@vger.kernel.org, Guodong Xu <guodong@riscstar.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev
Subject: Re: [PATCH] dt-bindings: serial: 8250: spacemit: fix clock property
 for K3 SoC
Message-ID: <20260313011910-GKL302167@kernel.org>
References: <20260304-01-uart-clock-names-v1-1-338483f04a8b@kernel.org>
 <20260310093446-GYC318052@gentoo.org>
 <2026031226-utter-spellbind-53bf@gregkh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2026031226-utter-spellbind-53bf@gregkh>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-274822-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4CCBF27C38E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Greg,

On 15:13 Thu 12 Mar     , Greg Kroah-Hartman wrote:
> On Tue, Mar 10, 2026 at 05:34:46PM +0800, Yixun Lan wrote:
> > Hi Greg, Jiri,
> > 
> >   Do you mind if I taking this patch via SpacemiT's SoC tree? and if
> > possible, it would be nice to have your Acks..
> > (or either way works for me, if you grab it and merged via tty tree)
> > 
> > On 07:19 Wed 04 Mar     , Yixun Lan wrote:
> > > The UART of SpacemiT K3 SoC has same clock property as K1 generation which
> > > request two clock sources, fix the binding otherwise will get DT check
> > > warnings.
> > > 
> > > Fixes: b5024e804ee0 ("dt-bindings: serial: 8250: add SpacemiT K3 UART compatible")
> > I would just drop the Fixes tag, as I think at the time of Gudong
> > submitting the patch, the clock driver isn't ready, so he deliberatly
> > removed this clock contraint and provided with a fixed clock frequency
> > (the bindings match with DTS)
> > 
> > https://github.com/torvalds/linux/blob/v7.0-rc3/arch/riscv/boot/dts/spacemit/k3.dtsi#L414
> 
> You need to get a DT maintainer to review it before you can apply it.
Ok, so Rob gave an Ack

> If you want to take it through your tree once that happens, that's fine
> with me.
Thanks, so this imply an Ack, but could give an explict Acked-by?
then I will proceed..

-- 
Yixun Lan (dlan)

