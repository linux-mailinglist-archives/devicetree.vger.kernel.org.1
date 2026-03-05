Return-Path: <devicetree+bounces-271314-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GOz0JHfKqGlBxQAAu9opvQ
	(envelope-from <devicetree+bounces-271314-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 01:12:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CD12095A6
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 01:12:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6DB773016EE7
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 00:12:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1DA8288B8;
	Thu,  5 Mar 2026 00:12:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="eNz3NS9/"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68237171CD;
	Thu,  5 Mar 2026 00:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772669556; cv=none; b=GIx2+E6J/EwiVQMF0ZJOrxZdbssw2J8kT52HijKUBnk8AeiI9scU3vq89tWdhMJhrn+aczZCJ20M07ixdckBJwAQF8783C0fPXe5wZ6dF3jeqY4e0xx0CuWiJZyq1WcKy79OkzZxZHyChGgAdxNCiaUEeMJ3GhcmNnsL0Q3hGMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772669556; c=relaxed/simple;
	bh=VhY75jogzIbjhIU27lFiOoKUr7croBBqbus1UG6As90=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=rLh29b0wfK+nSWLf5AwBucAJTQNaxQ13WLkE//U2zvns8vE1NMLwmrweiKEJ1XkRPEX7ylJPSY+qx9hPBdPm8eUDPo9Jh7SlMS3Nu0VTvV+RP2OEbnuiYMydzN2XesUBII7i1TOv3AKNy6+hkoyc0zGEQ8Z7gEB1QOqcj/V9Va8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=eNz3NS9/; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1772669552;
	bh=VhY75jogzIbjhIU27lFiOoKUr7croBBqbus1UG6As90=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=eNz3NS9/mqu22kQpJvGSvcfTjFkgM9K80QAyI675eZTCeg0UZADIuFVg+7wB2B/bB
	 i/cO7wIIsMAjX0iquAGV+hse58/7N1tbGTi81IH/W7GdjG8f1AlQSXN4qUoIFhz41c
	 8ZAmaCkV7EFpU/O0rBBtTPMy/5AnBvWWrFvV4N99HIvyYFJuWg88qSlMPdfWlyHnLq
	 DbXrFt572dt3X7gT2iprl1tBlRvR/Lez3favGPZcjVsr0JdxSlkLhS7danAQqDPfEx
	 2obVBaa/neFVE1l2O6pzzJ0YoRGdcEkHpunSaRSgFhgnq8qO/XXK22+RaqHlBUJ872
	 Ot1S8wUQ2NsUg==
Received: from [192.168.68.117] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 8733060C90;
	Thu,  5 Mar 2026 08:12:32 +0800 (AWST)
Message-ID: <fd932aa3f0cae64f40c3b207657032e7bf61066a.camel@codeconstruct.com.au>
Subject: Re: [PATCH] ARM: dts: aspeed: anacapa: Add eeprom device node
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Colin Huang <u8813345@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	 <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	colin.huang2@amd.com
Date: Thu, 05 Mar 2026 10:42:32 +1030
In-Reply-To: <20260302-add-new-eeprom-node-v1-1-2bcf87bc22e4@gmail.com>
References: <20260302-add-new-eeprom-node-v1-1-2bcf87bc22e4@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 30CD12095A6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271314-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,jms.id.au];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,codeconstruct.com.au:dkim,codeconstruct.com.au:mid]
X-Rspamd-Action: no action

On Mon, 2026-03-02 at 12:20 +0800, Colin Huang wrote:
> eeprom address changed (0x50 to 0x51) in DCSCM rev D
> To support previous rev (B/C) and rev D,
> add eeprom device node for DCSCM rev D.
>=20
> Signed-off-by: Colin Huang <u8813345@gmail.com>
> ---
> DCSCM rev D changed the eeprom address from 0x50 t0 0x51
> To support previous rev(B/C) and rev D.
> add new eeprom node for devscm rev d.

I feel different hardware revisions may deserved different devicetrees.
What are the trade-offs that lead you to avoiding that?

Why is it better to cause driver bind errors on both revisions?

Andrew

