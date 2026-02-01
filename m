Return-Path: <devicetree+bounces-261581-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KN5GNNsf2l5qQIAu9opvQ
	(envelope-from <devicetree+bounces-261581-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 16:10:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C018CC640E
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 16:10:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DE6EC300653D
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 15:10:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAB061BD9C9;
	Sun,  1 Feb 2026 15:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="QBCOYLqb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAF9E3C1F;
	Sun,  1 Feb 2026 15:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769958605; cv=none; b=RVG8h9FXmZmzq1FED1BBx1ByXPvUSt3g7pVfYnfs/O3/jGnMV5akzVpjt2T+Ealcqv64bWFkLZSbs4XtOxyvgATCt/zzjfWA4fj8xZOJXQ3PDlelRyrEEOMdZQTTsjc1MHrpj6CWk6zBzLqPgX/rgnEtO2xjPJU/ujlQW0Z4f88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769958605; c=relaxed/simple;
	bh=QExMrlkRL7/BbJBYakehw5GVyZGnd2DppXn2xlskBp4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tTSpztFlggZfWHKsGLGSag35kPbVkGUDovAWPz2kVXr48D1YRXEb5xrIdNWrsW9Jn7XBuhyZkExpLMEPypK4UzJTGaE1+fxBPgV9NPd1usyqei0Odw6bjNL5HgfZVSHXzvvm+2D4A/OrBYLzWuvcWnGNNc1acfUDXahuQYlkRyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=QBCOYLqb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 066BBC4CEF7;
	Sun,  1 Feb 2026 15:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1769958605;
	bh=QExMrlkRL7/BbJBYakehw5GVyZGnd2DppXn2xlskBp4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QBCOYLqbsbikXShmvfGj/uDbxkEvWb7li0cxEts15KhKAo/vXWl4/q7Fvoy74LpN4
	 fBubCIcdqJzbZqbJFopGTQx2lr94H/SGjazjmP76D2wJ3TVFoa/VJQRX9mDBLRSE+V
	 CiwluOSC1XR8ywHER0OOyKtrVdiAa4fvubkrPHwk=
Date: Sun, 1 Feb 2026 10:10:03 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Vivian Wang <wangruikang@iscas.ac.cn>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
	Han Gao <rabenda.cn@gmail.com>, Han Gao <gaohan@iscas.ac.cn>
Subject: Re: [PATCH 0/7] riscv: dts: spacemit: Add PMIC regulators usb pcie
Message-ID: <20260201-ancient-glistening-clam-31be7e@lemur>
References: <cover.1769895215.git.gaohan@iscas.ac.cn>
 <176992308158.607015.13478428408379130887@lemur>
 <d994ec8a-ff6a-4228-bfc9-2fcf9b35a460@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <d994ec8a-ff6a-4228-bfc9-2fcf9b35a460@iscas.ac.cn>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linuxfoundation.org,none];
	R_DKIM_ALLOW(-0.20)[linuxfoundation.org:s=korg];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261581-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gentoo.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev,gmail.com,iscas.ac.cn];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konstantin@linuxfoundation.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linuxfoundation.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxfoundation.org:dkim]
X-Rspamd-Queue-Id: C018CC640E
X-Rspamd-Action: no action

On Sun, Feb 01, 2026 at 03:54:45PM +0800, Vivian Wang wrote:
> > This review was done by Claude Opus 4.5. I do not know enough about the 
> > subsystem to make any judgment about the quality of these reviews, but 
> > they look valid enough.
> 
> I'm not sure if you see this, but your bot gave two contradictory
> recommendations.

Criticism accepted. For the record, it's not a bot -- I'm writing a review
tool that *may*, should the reviewer wish it, incorporate an LLM agent as a
manual step.

My goal was to test end-to-end review functionality, but from now on I will
focus on subsystems where I can actually discern actual useful reviews from
"looks reasonable" reviews.

Thanks and my apologies,
-K

