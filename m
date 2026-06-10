Return-Path: <devicetree+bounces-309441-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4dC9NG4KKWrgPAMAu9opvQ
	(envelope-from <devicetree+bounces-309441-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:55:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 435E566669C
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:55:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=dolcini.it header.s=default header.b=yLjllAxQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309441-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309441-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=dolcini.it;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F83A30530F6
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 06:54:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10375381B1A;
	Wed, 10 Jun 2026 06:54:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB33381AF1;
	Wed, 10 Jun 2026 06:54:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781074479; cv=none; b=E787Nvrv6FuzluqW/MPLb/E0JDnCMmyUrEzTIAMU1ihD4wLrvOx7JLSt3fFezIoJvQjOc9ZDMCQVwgmWYx0QF0mLw3Os6pzQ9pPMKyAhRSEexpGK6L+eUrNiIdciTtznXu7JevRLik4DEbyT2FDiMy/DdhoB5h3c8DX4YpXEXFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781074479; c=relaxed/simple;
	bh=yUZ2FNzT+IYNS4EXEgUYbhO7SjVmvuP26QhIH9STW/U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bb0Pf8wG5ZzbSRGn48RTZzwHxizsYqUXGHi3TUUhCbuVwQJ4suKBAs/cWjqffYFJtILTqmQ1PjOqUERaICmr48hbZJZhzLi3udWmDUxICh0Kn+8OznQt8g0VRy53KMsg+/IZuR+pd5r9zQblZcCfu37zQbsQILPED6QBMvqboKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=yLjllAxQ; arc=none smtp.client-ip=217.194.8.81
Received: from francesco-nb (unknown [185.12.129.182])
	by mail11.truemail.it (Postfix) with ESMTPA id 3850A1F9B9;
	Wed, 10 Jun 2026 08:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1781073987;
	bh=Oc1LefQiZLWZj6cHXjnSZFfsCcTG4RfNhHfPJWqAbq0=; h=From:To:Subject;
	b=yLjllAxQSH7rTGTwI3339Bqg2dotiVr3CpnTdi+1Njva9u2m2aX0rlh+ByvYSqvHK
	 4FBtg/PY7tIfw/NJ/Ght3zmhCAwkURMrCir/8hYlBRGl4BZHgSkkEut0d6zi54OreU
	 aFToKaBjM8jTzELTSpYmqTwUiaU03I88Rm7xv0AfgY+j6zZxGgUh4amvv8X+j+X+hY
	 oQ7Sy/nOcluUfUqXE8+5bMmUkaW6bPPyfiFmL8G5VaslNJEolAHdv1M4IpIUIVEGmE
	 C2EUSlRruDEd3FxbDtDyUlsk8Y7AbGHnAMa1otKCc+m6u2zZUw7NxCXTukdFBFq5dj
	 ijrISiAIY5/wQ==
Date: Wed, 10 Jun 2026 08:46:21 +0200
From: Francesco Dolcini <francesco@dolcini.it>
To: Vitor Soares <ivitro@gmail.com>
Cc: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vitor Soares <vitor.soares@toradex.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] arm64: dts: ti: k3-am62p-verdin: Add device tree
 overlays
Message-ID: <20260610064621.GA23935@francesco-nb>
References: <20260602141311.1366818-5-ivitro@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260602141311.1366818-5-ivitro@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-309441-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ivitro@gmail.com,m:nm@ti.com,m:vigneshr@ti.com,m:kristo@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:vitor.soares@toradex.com,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[dolcini.it:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,francesco-nb:mid,dolcini.it:dkim,dolcini.it:from_mime,toradex.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 435E566669C

On Tue, Jun 02, 2026 at 03:13:10PM +0100, Vitor Soares wrote:
> From: Vitor Soares <vitor.soares@toradex.com>
> 
> This series adds device tree overlays for the Toradex Verdin AM62P,
> bringing it in line with the overlay support already present for the
> Verdin AM62.

Reviewed-by: Francesco Dolcini <francesco.dolcini@toradex.com>


