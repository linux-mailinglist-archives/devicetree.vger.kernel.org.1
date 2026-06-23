Return-Path: <devicetree+bounces-314846-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VgQBNfGIOmoj/QcAu9opvQ
	(envelope-from <devicetree+bounces-314846-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 15:24:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4976C6B76E3
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 15:24:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=superkali.me header.s=default header.b=YKi5a7gj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314846-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314846-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=superkali.me (policy=reject);
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3173B303AF81
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 13:24:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 364C43203B4;
	Tue, 23 Jun 2026 13:23:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fr5000-r.dnsiaas.com (fr5000-r.dnsiaas.com [92.42.104.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD179313543;
	Tue, 23 Jun 2026 13:23:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782221037; cv=none; b=nedpXtk6hQxWCxzGDfIFFP3ifSNjf7vD5WmGKwULT5k5cmPnKyl9cFfdepx/YNvJEYior2W6RlV9hrTB6CsLQ3b+Tdlw8WSneKhr9iBDXcDmO/6LQUmk+8RLS08vNdTCYMHEMpYhznFRqLxgfDDdn+kDhi6rf+K4NuQKMsSWuUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782221037; c=relaxed/simple;
	bh=PVy4S/eNaNAAxNj9kHLDxwcgqSAw69kke2AJz1Kb9pY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QU6RrL8mpdJktNP8PPgZQgi6JwJzUcSEjBp7cQ1gDmYs40+TlpMiDxB/FiLenDRtcoebAZPSjJKttetxSNrgvFOVMC94qcxpq1jyj7kruYdlEYUnG80bSoXDcxZOI4BakVfnPFDlcj2cVdhs7kzmU/so9QypQt9o+sd2XxjHjwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=superkali.me; spf=pass smtp.mailfrom=superkali.me; dkim=pass (2048-bit key) header.d=superkali.me header.i=@superkali.me header.b=YKi5a7gj; arc=none smtp.client-ip=92.42.104.18
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=superkali.me; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=PVy4S/eNaNAAxNj9kHLDxwcgqSAw69kke2AJz1Kb9pY=; b=YKi5a7gjyQM1wxwm+vvyuvL6+m
	o/dL7T7k53Z0zxFUgYtLOThwC8F7dF1IT0TDRj/R88bJu588o0gzioJEZVMqmNdOG4NJMjb1Zk38a
	9KCxA48kSac8oPHZJlKEOJbxsjTQBWzMKM7FIsQtv6ZkwMM5enI6BpRmLfTzi2ddbRIs8XuvBfLT5
	Yu8ZGfXW/Fo1MTzrwD01i+QNA5d7aQB8JAqrNCt3HFPjVGG0MDZqmyh/8bjt9UEaW2vrNfKCeUcg4
	134O5NTk2LBdItF1XzsEinqSxwtpRYoAbMUFOVFn/iZ2RM5+HrCjBt8L/XhQSBgV75yS/cr3XQhJg
	VGyp0ESA==;
Received: from [81.57.40.39] (port=52518 helo=superkali.me)
	by fr5000-r.dnsiaas.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.4)
	(envelope-from <hello@superkali.me>)
	id 1wc16a-00000006qSa-0t0n;
	Tue, 23 Jun 2026 15:23:53 +0200
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
Date: Tue, 23 Jun 2026 15:23:51 +0200
Message-ID: <20260623132351.4144457-1-hello@superkali.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <DJGG8DEAKSPK.1GJ8FARAHXPXM@cknow-tech.com>
References: <20260419-rk3588-mclk-gate-grf-v4-0-513a42dd1dcc@superkali.me> <20260419-rk3588-mclk-gate-grf-v4-5-513a42dd1dcc@superkali.me> <DJGDSS875DDO.22TYPVYK5X8KZ@cknow-tech.com> <2100447.PIDvDuAF1L@diego> <20260623123316.4111002-1-hello@superkali.me> <DJGG8DEAKSPK.1GJ8FARAHXPXM@cknow-tech.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
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
	TAGGED_FROM(0.00)[bounces-314846-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[superkali.me:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[superkali.me:mid,superkali.me:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4976C6B76E3

Hi Diederik,

> md.l 0xfd58c318
> fd58c318: 00000600

Thanks. Bit 0 is clear there, so the I2S0 gate is open at the U-Boot
prompt, after BL31 and before Linux. That matches the symptom: the
firmware on your T6 leaves it open, and the kernel closes it once nothing
references it.

Given that, I think Heiko's suggestion makes sense here. Marking the four
gates CLK_IGNORE_UNUSED keeps the kernel from disabling what the firmware
already left open, and boards that reference _TO_IO still drive it through
the consumer.

Could you test that change if you get a chance? Just set the flag on the
I2S0/1/2/3 _TO_IO gates in clk-rk3588.c and check your analog audio comes
back. The series is already merged, so I'll send the fix as a separate
follow-up patch, this evening if Heiko is fine with the approach.

Best regards,
Daniele

