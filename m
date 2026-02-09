Return-Path: <devicetree+bounces-263804-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBvvNxdxiWnl9AQAu9opvQ
	(envelope-from <devicetree+bounces-263804-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 06:31:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 045BF10BC4E
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 06:31:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0D871300B879
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 05:30:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5513E2FE575;
	Mon,  9 Feb 2026 05:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="l/x8sllc"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2FE23D7CE;
	Mon,  9 Feb 2026 05:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770615032; cv=none; b=pgaQ74YfooE8DGNt/WeB9q2QJex+CGLyaRWdYs10GhDU7VKGTTJZt83kONBBbCHaef/9f6zLrgIFSXBgVOaNhpqx9/kxn1i8csr3UHBgw7+hRxNWeAEv9HohPKYGX4SNs+fGKeZPB6VJppPRUd+RYZiONsffIpaGnMI7z9lOaMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770615032; c=relaxed/simple;
	bh=6dmrWQTudHpALwT3TawG97teYoHjG5M4aiLA9OioLZY=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=fA1hamd+LgVS6BQKthU8FDhHytQZNmBeCFAeG5y0fiTv+5BRdAsnq/DvSKQR6WkQ3w9xvxUO1G1D1BqbWx6eDA8DrZ9QcHbyw1mRW/Ii9vkGebDBQs1boJ/+ZRhaR2D+e8qqgOCEmf803YiCxOkA4BYJ4STYropLu9nsoDgKDZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=l/x8sllc; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1770615029;
	bh=6dmrWQTudHpALwT3TawG97teYoHjG5M4aiLA9OioLZY=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=l/x8sllcZtMauYNiP7i2hFsaDm6Cf4hkRrM8IULcrqfkuZJ20brwg7LMhTDgbjxFa
	 sY1GfpXZaGh0jzfG0fsDpyUS3Z2uRJKntB3NsBYrVKK9DUpNmz8b1FdeuttGWlxUrc
	 sY24n13ylRuropENaRqlC3PbmhWJ6CbrxRYQh5vJSVVWWK8YRh6UMKccWGOs8V6lFN
	 4ET+/+k5uai6rBDyZrBbTJ+6yWmrJvsttjaHo43dkiwGnhWCHOYETWMkQwK3+4sbjZ
	 gYNIR0pCO2Nf99pKcYfhMaJvnB2sxIoiFTdh0t4+icdkwmuVhnqxig6K9Ig2cge0vJ
	 QWpTv/ikTbJ0g==
Received: from [192.168.68.117] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id DFE816024E;
	Mon,  9 Feb 2026 13:30:27 +0800 (AWST)
Message-ID: <548c59f97704c934919e6d4f625579f17a350fac.camel@codeconstruct.com.au>
Subject: Re: [PATCH 0/2] Add device tree for Asrock Paul IPMI Card
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Anirudh Srinivasan <anirudhsriniv@gmail.com>, Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley	 <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, Zev Weiss
	 <zev@bewilderbeest.net>, Renze Nicolai <renze@rnplus.nl>
Date: Mon, 09 Feb 2026 16:00:27 +1030
In-Reply-To: <20260125-asrock-paul-v1-0-956085a4bd06@gmail.com>
References: <20260125-asrock-paul-v1-0-956085a4bd06@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263804-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,jms.id.au];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.986];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,codeconstruct.com.au:mid,codeconstruct.com.au:dkim]
X-Rspamd-Queue-Id: 045BF10BC4E
X-Rspamd-Action: no action

On Sun, 2026-01-25 at 15:00 -0600, Anirudh Srinivasan wrote:
> Adds support for Asrock Paul IPMI Card [1], which is an AST2500 based
> PCIe card that provides BMC functionality. The supported functionality
> is similar to the Asus Kommando IPMI Card, support for which was sent
> previously [2].

Due to ordering wrt other patches on the list this ended up with some
minor conflicts in the binding and Makefile. I've fixed those up and
applied it.

Thanks,

Andrew

