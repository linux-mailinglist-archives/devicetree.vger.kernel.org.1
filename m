Return-Path: <devicetree+bounces-317842-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ofiwAlzLQ2rgiAoAu9opvQ
	(envelope-from <devicetree+bounces-317842-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:57:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB3C6E51F5
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 15:57:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=D9wSGRVy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317842-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317842-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A22073102042
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:53:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A727430567C;
	Tue, 30 Jun 2026 13:53:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB5A12882D7
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 13:53:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782827601; cv=none; b=FNL5rn4ivCqi8naulTAdZ5t/Es70ePHsMUSE215zpQ6UMtyAnIjZFe0IfjitRWfsYKM1LhzJnNFAARuTVvxgfCBHDuSSQfMTFBAv0jiB1uoywWiet9X5g5vL7baao8tmVNOaEVlNa1C3NybyfLgZTM3nhDpEre/EQ3m9Beh6naU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782827601; c=relaxed/simple;
	bh=dEd5nwAKspQ/mB2Z45yUvjUY4qf3KL23pOzfxLrJJn4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eAQf0MgPNSRE0Unm3d3G1KcoJx1G/zbZ29QLhaz7atUGNAHg20qQEnJ5xxUxj91u76eNvb21I+5rKJJRrExfStUQReGDc6n/fCZYcvka64/KImZlx9fRSmbWp41ISi1lwaBnHZpiNnUESIWKP0wuu4WocOrBJ4+gaSxxvWszs2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=D9wSGRVy; arc=none smtp.client-ip=185.171.202.116
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 824EDC51474;
	Tue, 30 Jun 2026 13:53:28 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D366E6025A;
	Tue, 30 Jun 2026 13:53:17 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 497B2106F1F70;
	Tue, 30 Jun 2026 15:53:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1782827596; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=RhTaGTqXn+vEjpea1Rvo2RPETqMhHuTMxdNXRudSe/o=;
	b=D9wSGRVypx8zxy3QgxOSR130crVvBYKWZNsLuy/RRFjJLeBg3BQdLPUaFDY/5R0BEEX9b/
	5A498attBVzR2DG8XO4BBKQhrgBmpkrufZKVvC17sTbYl25xqGrwVMva8scfhu1g5eo3en
	bKFmtNpANcqA/VRIGpxxTH/VCWjJL7xFzq4LhFyPwkXz61w8AQ64UJTt54okI1zw2yC75g
	F1oDoH6AdfPL3JSbHuMapXSt20ZBqstdc1hWTxEbPCvi5NU8atITi4occfoghLZTVDBFDL
	see8UI6kPDopLHpL55kTSDUp3FS+dxAhszlwDryseybhNk13Kvdp0Neyz/GkJA==
Message-ID: <563ac947-0c5d-47ee-aedc-66baf4d32648@bootlin.com>
Date: Tue, 30 Jun 2026 15:53:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] arm64: dts/net: stmmac: Add Agilex5 SoCDK TSN Config2
 board support
To: muhammad.nazim.amirul.nazle.asmade@altera.com, dinguyen@kernel.org
Cc: rmk+kernel@armlinux.org.uk, krzk+dt@kernel.org, conor+dt@kernel.org,
 robh@kernel.org, davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, andrew+netdev@lunn.ch, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260630133108.27244-1-muhammad.nazim.amirul.nazle.asmade@altera.com>
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Language: en-US
In-Reply-To: <20260630133108.27244-1-muhammad.nazim.amirul.nazle.asmade@altera.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317842-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:muhammad.nazim.amirul.nazle.asmade@altera.com,m:dinguyen@kernel.org,m:rmk+kernel@armlinux.org.uk,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:andrew+netdev@lunn.ch,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:rmk@armlinux.org.uk,m:krzk@kernel.org,m:conor@kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[maxime.chevallier@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maxime.chevallier@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,kernel,dt,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,bootlin.com:dkim,bootlin.com:mid,bootlin.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6DB3C6E51F5

Hi,

On 6/30/26 15:31, muhammad.nazim.amirul.nazle.asmade@altera.com wrote:
> From: Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>
> 
> The Intel SoCFPGA Agilex5 SoCDK TSN Config2 board uses a dual-port
> Ethernet setup where gmac1 (TSN port) operates with different MAC-side
> and PHY-side interface modes: GMII internally in the MAC, and RGMII
> towards the PHY.

There's the same behaviour on Gen5, e.g. CycloneV where we have the
"EMAC splitter". Based on wether or not we have that splitter in DT,
we override the INTF_SEL bits to set GMII as the MAC output, the splitter
converting that to RGMII/SGMII.

Is there something similar on this AgileX5 version by any chance, for
which we could reuse the logic ?

I know that on CycloneV you also need to adjust that GMII -> RGMII/SGMII
splitter whenever the speed changes, is that different on agileX5 ? have
you tested 10/100Mbps ?

Thanks,

Maxime

