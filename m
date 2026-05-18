Return-Path: <devicetree+bounces-299400-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2ODAOnEJC2o0/gQAu9opvQ
	(envelope-from <devicetree+bounces-299400-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 14:43:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6843A56CE91
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 14:43:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E1A93302EA83
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 12:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D6F340C5B9;
	Mon, 18 May 2026 12:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="VVXe8bcd"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00BA140B6D7;
	Mon, 18 May 2026 12:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779107577; cv=none; b=njKvcATGPu5+7d16b/IDE9eAjO4JOLS2AsmWEyK+aKx5SvZqxzcRpQfMS+s59mFd1xUMtIDaFuJJGR3ls8wOIqOVguqqmc9UMSCJeMSIySOHvpjLHL2U0++iTzNGolc4Rr7oHVUCuFXrXPHpu0FIHpcEptnuMBUGiUsEIvAb8Xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779107577; c=relaxed/simple;
	bh=elZboa60W0l96YHBweGgGvjS5bMO7+rmrRZ0Og9GkKg=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=SwPt0HZp2Yw0hVDnXvL3aMSUXt+CCQ+ZyHGN3AEGETJGyytbBiLjr99wUvDqWRbpym/UDUaXCqzzNodeATkRGrw78dnVWCRGHWkAnMZIbEWqtfWgPnGJxaz6BQHaeLaMdviIxRYoL0Rwwc6A4AzboamdnggBRpf2nEjKL+kyVYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=VVXe8bcd; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1779107574;
	bh=elZboa60W0l96YHBweGgGvjS5bMO7+rmrRZ0Og9GkKg=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=VVXe8bcdr8e3oLxsXRO+S/CqsgNrAYlHzNMC8MHgMfpiXPYRfIljG3Uj0CuGd9tEE
	 LYdjNoSTbJG/XzayYLR7ggKfb2RsYRlwumBGLzZA3AXZUxfXrMdL4J3VKZjkf+scU+
	 +D3GPymW0SVfw5MmkTXdW12gF2ZUlx5UctiERtufaufsK+Wkiyq2+PTJZqAnfI+4Iw
	 lsRlI+WaKxDQUTDaEhVTWDbzHR4v0la5YgAZKNvBoJmmr05Eh9cYQjPEZiRHY95TKU
	 KAl8taOkfCxK7Teumesgv5Hyb75fskpRBlyXEuRWERoXaNWrGS6NXokp8rQrRgnY52
	 GOpXiWy6cXkrQ==
Received: from [192.168.68.117] (unknown [180.150.112.11])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 9C6D26024D;
	Mon, 18 May 2026 20:32:53 +0800 (AWST)
Message-ID: <64f6ad212446c55780601a6477478b5ace09d930.camel@codeconstruct.com.au>
Subject: Re: [PATCH v3] ARM: dts: aspeed: anacapa: Add eeprom device node
 for NFC adaptor board
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: carl.lee@amd.com, Colin Huang <u8813345@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 devicetree@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, 	linux-kernel@vger.kernel.org,
 peter.shen@amd.com, colin.huang2@amd.com
Date: Mon, 18 May 2026 22:02:53 +0930
In-Reply-To: <20260331-arm-dts-aspeed-anacapa-add-eeprom-device-v3-1-2bb2226fbb4e@amd.com>
References: 
	<20260331-arm-dts-aspeed-anacapa-add-eeprom-device-v3-1-2bb2226fbb4e@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 6843A56CE91
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299400-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

Hi Carl,

Sorry for the delay.

On Tue, 2026-03-31 at 16:02 +0800, Carl Lee via B4 Relay wrote:
> From: Carl Lee <carl.lee@amd.com>
>=20
> Add eeprom device node for NFC adaptor board FRU.
>=20
> Signed-off-by: Carl Lee <carl.lee@amd.com>

Do you mind coordinating with Colin to integrate this change? He is in
the process of reorganising the Anacapa devicetrees.

Andrew

