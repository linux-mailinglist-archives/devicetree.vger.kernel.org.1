Return-Path: <devicetree+bounces-286156-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCt4FSiY12lNQAgAu9opvQ
	(envelope-from <devicetree+bounces-286156-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 14:14:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E53793CA3DF
	for <lists+devicetree@lfdr.de>; Thu, 09 Apr 2026 14:14:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1936E3009B2D
	for <lists+devicetree@lfdr.de>; Thu,  9 Apr 2026 12:11:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7894E3B0AFC;
	Thu,  9 Apr 2026 12:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="ufqZXDTh"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E213A1A55;
	Thu,  9 Apr 2026 12:11:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775736688; cv=none; b=itM8rUd0erXGGN079Oub4sve+wzMNQdAsypKt9doz1axwcS14safFhDWUaULgswECvnBBHOVBQqgL4CTO2spTZHABhT41v63LKRqon37UkoiTDLUU+sxZpp8J3zCbg1axt0puFuYcU2MA3SNR6TC9x/zTr98WFCpJ0wsJM70NrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775736688; c=relaxed/simple;
	bh=H7E+b9PRiPbinE3tFt5PFNgkMHNkfZ2NKwSraWsA7jw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YJSc1J4vhvUCqNocBtZb31k+38GRIGUl42F6kERsUiSy2CBf4qkIWMpLM/KGeYHpm0oLwesk1UwIF75/erpIkvM+59yHcBJveTBWmcKeaom9wSqFeccJuu1bkEokm4HJEUTmv6CzsqDBXPMz+sheqwQ1meWTmn5mFSauUaFKa34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=ufqZXDTh; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=VR1lN56B6GAl/1Ww24QWmptXswZR9bm1Wx3j1VZ/tKo=; b=ufqZXDThZgPZj9ZuOE0NbJ3xbk
	k+8LmvcrQs4zRpbVnsks5GOVsdH6Zx3ffbe9BnJgUyqlGJCdmbW0xIPtGQVFXnSAUl8ggYBLP4E5w
	TadeBe72Y/Gmme6z0n8k1XdSvYh+SILkyInPaHU1HOVR50RcJyJq9QLu67ZMuqUh+/vI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wAoE8-00FQV2-QE; Thu, 09 Apr 2026 14:11:16 +0200
Date: Thu, 9 Apr 2026 14:11:16 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Josua Mayer <josua@solid-run.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	Mikhail Anikin <mikhail.anikin@solid-run.com>,
	Alexander Dahl <ada@thorsis.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"imx@lists.linux.dev" <imx@lists.linux.dev>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 2/2] arm64: dts: imx8dxl: Add SolidRun SoM and
 HummingBoard
Message-ID: <aef0a8db-7a16-4620-87dc-d517be946cab@lunn.ch>
References: <20260408-imx8dxl-sr-som-v1-0-ce5a39acd713@solid-run.com>
 <20260408-imx8dxl-sr-som-v1-2-ce5a39acd713@solid-run.com>
 <3024c143-520e-49ea-af17-33344ebf7149@lunn.ch>
 <db41d119-2469-4107-94b5-b09e9bbbe9ec@solid-run.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <db41d119-2469-4107-94b5-b09e9bbbe9ec@solid-run.com>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[lunn.ch,none];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-286156-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,solid-run.com,thorsis.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lunn.ch:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lunn.ch:dkim,lunn.ch:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E53793CA3DF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Would it be correct to change phy-mode on the mac to "rgmii",
> and leave switch port as is?

Yes, that is O.K. Please add a comment, say that the switch is
providing the delay.

	Andrew

