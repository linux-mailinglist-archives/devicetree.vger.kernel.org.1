Return-Path: <devicetree+bounces-314399-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NWmxA/YcOWohnAcAu9opvQ
	(envelope-from <devicetree+bounces-314399-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 13:31:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 652286AF153
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 13:31:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=OJkhbBAF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314399-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314399-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2780F302A782
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 11:30:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F9AC19CCF7;
	Mon, 22 Jun 2026 11:30:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D4653E0B
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 11:30:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782127835; cv=none; b=BimIUYXHp3KQar/Ov8VqlV3CzLpG5jXGg+m1hJ3YSLmVuZSk21dsFOenB6WXmxOPymrFUT6jFzrvRRghs8/k3R22QN5u+TBAyV+Fnhb1UJOi4O3/nQE+AEjNi57wsTbqZGcO3vIKNnD5sfHxpHTLVZMFClQCe4HCQqChguCjbTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782127835; c=relaxed/simple;
	bh=KbOH+YbHhiAqOPz09vFQBONBH7tEBUKxYJ9HhEqJqwQ=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kMcGiACy4r0RQVOkNBbzkfv2L+iKsz1zIiOrmum8q6SAUdZ4rSUen+k76KRjw/ccVA0AtJa9kyIytmNaCIql4fHZAbff0ZUR+sQ+buHwGf39Zhxvf4Dyjr07Z1U5q4/GY6dJv6Dx3ZmLov5Ej2OG+JZGeLIaL40pECvL3Z7g61g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=OJkhbBAF; arc=none smtp.client-ip=185.171.202.116
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id B458CC62208;
	Mon, 22 Jun 2026 11:30:38 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 94AF0601BB;
	Mon, 22 Jun 2026 11:30:31 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 81F81106C8983;
	Mon, 22 Jun 2026 13:30:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1782127830; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=W3P5Ln/MO3wnNZa2MTIfoS3nlo80bvMZJcsuLPYyqhg=;
	b=OJkhbBAF6NTnDXf9iKWv5KkCKvzrPNVaWuuI0WqkD/5fWJurJ3efS76+0Rr36QA7H6TPgk
	yyUe5i/RJbbM0TGZmhMD1XcsJ0yfPPunsSIZTqvtKrurL3lMZZosA95AlbyQ1se8wrAHCh
	OuImNr9WluWpjLKyps2ZyBW3DLARPxANEHop35NjcSUmpwIBAE2L8Wzx9gG5XM7VTtmvgF
	7FmZXjD4A6Sl9krnHzcLQ3heDvENJqQiNrl3H1z+IVR0bNs6lgAsCztjua4by+rNM0c26O
	2lPcMqa8l+PmS8wVgGoqLl1DIVDsgaCgs1Gc3z2hi//gnIlXFtUgEliAF29M9w==
Date: Mon, 22 Jun 2026 13:30:27 +0200
From: Herve Codina <herve.codina@bootlin.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Geert Uytterhoeven
 <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] ARM: dts: renesas: r9a06g032: Describe SPI
 controllers
Message-ID: <20260622133027.03106308@bootlin.com>
In-Reply-To: <20260615125355.116027-2-wsa+renesas@sang-engineering.com>
References: <20260615125355.116027-1-wsa+renesas@sang-engineering.com>
	<20260615125355.116027-2-wsa+renesas@sang-engineering.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314399-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,glider.be,gmail.com,kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wsa+renesas@sang-engineering.com,m:linux-renesas-soc@vger.kernel.org,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:wsa@sang-engineering.com,m:geert@glider.be,m:magnusdamm@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[herve.codina@bootlin.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[herve.codina@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sang-engineering.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid,bootlin.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 652286AF153

Hi Wolfram,

On Mon, 15 Jun 2026 14:53:53 +0200
Wolfram Sang <wsa+renesas@sang-engineering.com> wrote:

> Add nodes for the 6 SPI controllers of the Renesas RZ/N1D SoC. The first
> 4 can only be controllers, the latter 2 can only be targets. DMA nodes
> are not added yet because DMA needs some extra code in the drivers and
> cannot be tested yet. Basic FIFO mode works reliably, though.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
> 
> Changes since v1:
> * dropped spi-max-freq because it is a board property (Thanks, Geert!)
> * use 'spi-slave' and 'addr-cells' = 0 and dropped 'num-cs' for targets
>   (Thanks, Geert!)
> * moved 'status' to last position in the node
> 
>  arch/arm/boot/dts/renesas/r9a06g032.dtsi | 84 ++++++++++++++++++++++++
>  1 file changed, 84 insertions(+)
> 

Tested ok on my custom RZ/N1 board.

Tested-by: Herve Codina <herve.codina@bootlin.com>

Best regards,
Hervé

