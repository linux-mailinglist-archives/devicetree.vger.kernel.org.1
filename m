Return-Path: <devicetree+bounces-314853-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Yt4TH8GTOmpmAggAu9opvQ
	(envelope-from <devicetree+bounces-314853-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 16:10:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9206B7C06
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 16:10:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=superkali.me header.s=default header.b=lB1sH8Fg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314853-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-314853-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=superkali.me (policy=reject);
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5D6CB300EEB2
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 14:10:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2D713815D5;
	Tue, 23 Jun 2026 14:10:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fr5000-r.dnsiaas.com (fr5000-r.dnsiaas.com [92.42.104.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15285380FF3;
	Tue, 23 Jun 2026 14:10:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782223805; cv=none; b=DSmfoomTlFAVqCQ+zb/ntGf/31dalVLF/p6QDKKaugsUptdnGXFzHkLviNn4AedTmVUQqg+pKwQgAVNJ+Gj26CHhD6yVfY67JfflvPBazDYezyLHsmlOf2B92ZXVprU7b1NpG83obqaDxyCMGVgEvW/NbSis4sZh89qqeD5ip3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782223805; c=relaxed/simple;
	bh=QzZ/eVkAfrxKfCLuLelvePEFPRb5OS3MmMKbZz3YN1o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lJYnXapGxTosEiGvTqvYuDL8W5gtp0N5chdpsAJe/l+M4FPpKGAVO3PwBp+ePBEXQ3doBfT61awLkHWA0JfoR2GKDdd831R8DJW0hLKfyBv5I5HU8WhXaoVVaxBSCDAaek212aUBV0qxrZb3PeR9/X7lZoFzZMn0+HoLATamCMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=superkali.me; spf=pass smtp.mailfrom=superkali.me; dkim=pass (2048-bit key) header.d=superkali.me header.i=@superkali.me header.b=lB1sH8Fg; arc=none smtp.client-ip=92.42.104.18
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=superkali.me; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=QzZ/eVkAfrxKfCLuLelvePEFPRb5OS3MmMKbZz3YN1o=; b=lB1sH8Fg4D035v/eEGjsmD/nds
	1qjTMd1aOWqyYCSUoOuu5NowhENS5PNqJPPWFrt1J8WfM+rUzw3OOA5Zay9XD912Bmy7qKh4jRPzT
	iYEiKZNTrRjQnajOwDdSd0ToNDN7tB3jf78OOV3cSmWEpLtkbMErlT5Xt2Q3N+c9m8AueJkGhlHCZ
	jAxfZWU0/iDNXR/lj97U1DXYcpwTfYk3ttdJuKAu50qoUS+oYYsZiGAn3ajjV3KbPDFVucZrXNcUh
	VwQFbJ/BNH4F7nwtO8m45QajKORSqAQeT+BeMa6bJ63ntnD04XjnzAvRQW3GrP7npeJKTaKEb5oz/
	lZ1xcw/Q==;
Received: from [81.57.40.39] (port=50640 helo=superkali.me)
	by fr5000-r.dnsiaas.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.4)
	(envelope-from <hello@superkali.me>)
	id 1wc1pD-0000000AngH-03t6;
	Tue, 23 Jun 2026 16:10:00 +0200
From: Daniele Briguglio <hello@superkali.me>
To: Diederik de Haas <diederik@cknow-tech.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Ricardo Pardini <ricardo@pardini.net>
Subject: Re: [PATCH v4 5/5] clk: rockchip: rk3588: add GATE_GRF clocks for I2S MCLK output to IO
Date: Tue, 23 Jun 2026 16:09:58 +0200
Message-ID: <20260623140958.4181297-1-hello@superkali.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <DJGH34DVKL0W.3T6UB4G4WYYUJ@cknow-tech.com>
References: <20260419-rk3588-mclk-gate-grf-v4-0-513a42dd1dcc@superkali.me> <20260419-rk3588-mclk-gate-grf-v4-5-513a42dd1dcc@superkali.me> <DJGDSS875DDO.22TYPVYK5X8KZ@cknow-tech.com> <2100447.PIDvDuAF1L@diego> <20260623123316.4111002-1-hello@superkali.me> <DJGG8DEAKSPK.1GJ8FARAHXPXM@cknow-tech.com> <20260623132351.4144457-1-hello@superkali.me> <DJGH34DVKL0W.3T6UB4G4WYYUJ@cknow-tech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - fr5000-r.dnsiaas.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - superkali.me
X-Get-Message-Sender-Via: fr5000-r.dnsiaas.com: authenticated_id: hello@superkali.me
X-Authenticated-Sender: fr5000-r.dnsiaas.com: hello@superkali.me
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.04 / 15.00];
	DMARC_POLICY_REJECT(2.00)[superkali.me : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[superkali.me:s=default];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_X_AS(0.00)[hello@superkali.me];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:diederik@cknow-tech.com,m:heiko@sntech.de,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nicolas.frattaroli@collabora.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:ricardo@pardini.net,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_X_GMSV(0.00)[hello@superkali.me];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER(0.00)[hello@superkali.me,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-314853-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hello@superkali.me,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	HAS_X_ANTIABUSE(0.00)[];
	HAS_X_SOURCE(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[superkali.me:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,superkali.me:mid,superkali.me:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0D9206B7C06

Hi Diederik,

> My suspicion that more RK3588 based boards would be broken is because NONE use
> I2S0_8CH_MCLKOUT_TO_IO; they all use I2S0_8CH_MCLKOUT.

These bits reset to open (SYS_GRF_SOC_CON6 = 0x4600, i2sN_mclk_ioe_ clear,
1'b0 = "Output enable"), so a board doesn't need to reference the gate to
get MCLK. They're RW, so firmware can go either way, but your 0x600 has
them clear, which is why audio works today.

The series made the gate a managed clock, so with no consumer
clk_disable_unused disables it at boot. CLK_IGNORE_UNUSED leaves an
already-open gate alone, so nothing changes for those boards. Only the ones
that come up disabled, like the YY3588 and Ricardo's R58X-Pro, need _TO_IO
for the kernel to turn it back on.

> So IIUC that means I'd be testing both variants.

Right, that covers both: the mux path and the consumer path. Looking
forward to the results.

Best regards,
Daniele

