Return-Path: <devicetree+bounces-299327-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPm4I+72CmpZ+QQAu9opvQ
	(envelope-from <devicetree+bounces-299327-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 13:24:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2823456B77E
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 13:24:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 476213024F98
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 11:22:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EE7133C198;
	Mon, 18 May 2026 11:22:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="myqoaJPz"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4453644C6;
	Mon, 18 May 2026 11:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779103330; cv=none; b=TkJxy6x16ua3ntUCi6dado48uTNCGADsWstANpZ+iXLNvK4BxUzA3llQTdl9KT1jsa1swZDFxDObLVeSILEk0F8q2hs7nG8OzrHqDqOBSjlXk+me03pVY9VrshXWoNCCbR8orCOSiFhJveA8sxXKWj7caWa0PPT7/9bf+GOGveE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779103330; c=relaxed/simple;
	bh=w2n0G2+Jazj7BtyrJBZLOCheDF0NMvvyn9XJCPYHCN0=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=qtiJ8V9iqYTkqK9p3+OUc0aTelzCTbdgLNiPT0vHKWV2nDzbdX/XAt0gKjb6jYsvXcPAIKh3wcHH+VRly6gH+9TEyJfF5oR5h6g+drNhIwIlp/asX5bvUv6MGWoe1BM+I1wDBomnK2VRdf9Vz+HMo/l43N4jlepN4cwud4Knm3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=myqoaJPz; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1779103322;
	bh=w2n0G2+Jazj7BtyrJBZLOCheDF0NMvvyn9XJCPYHCN0=;
	h=Subject:From:To:Date:In-Reply-To:References;
	b=myqoaJPzPyi+al1ubYSV7anQy9yZQTl1plzyC4g+tWiGfye3dcGdVLplqjgQJ73NO
	 qXaY1nm0hrrXiVov2hXCCZYBLMZa0LY11XCaVutXw0bCkmNwizNfInjC5d9ythy+4+
	 coIQVM5ddaRgAmttQpeKxosnh1Ub4ijCFfhhBSEAdFx/2jAbbHMjl2xnFAEBh7ayxB
	 18LWYKqiio2Ug5Jdk5VWe+q/zusQiUta4iwjmoSoElSxROC97srr4qI9pZ2Bt3f7GX
	 p0Cvo1uBUfOP7kGNCab0sRT4ettc/oU71nbxM5GvJkwA8Fa9TTzaUNKaS+UUTU5FTG
	 2lc06OwsWtWsg==
Received: from [192.168.68.117] (unknown [180.150.112.11])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 67FB76054D;
	Mon, 18 May 2026 19:22:02 +0800 (AWST)
Message-ID: <88d92981e89a9c6c62b6ddc2fa4af51dcc32c276.camel@codeconstruct.com.au>
Subject: Re: [PATCH v2 1/1] ARM: dts: aspeed: santabarbara: Add system
 monitoring GPIOs
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Fred Chen <fredchen.openbmc@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	 <joel@jms.id.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
Date: Mon, 18 May 2026 20:52:02 +0930
In-Reply-To: <20260421130344.2751662-2-fredchen.openbmc@gmail.com>
References: <20260421130344.2751662-1-fredchen.openbmc@gmail.com>
	 <20260421130344.2751662-2-fredchen.openbmc@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 2823456B77E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-299327-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,jms.id.au,vger.kernel.org,lists.infradead.org,lists.ozlabs.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[codeconstruct.com.au:mid,codeconstruct.com.au:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Hi Fred,

On Tue, 2026-04-21 at 21:03 +0800, Fred Chen wrote:
> Add several GPIO expanders to the Santabarbara platform, with ioexp0
> (0x20) configured to aggregate interrupt signals from downstream
> expanders to optimize sideband pin usage.

Can you provide a bit more context? Is this the result of a broader
design change? Or is it a case of adding descriptions of hardware that
was already present in the design?

Andrew

