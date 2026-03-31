Return-Path: <devicetree+bounces-282787-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IA7ZKi1xy2k3HwYAu9opvQ
	(envelope-from <devicetree+bounces-282787-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 09:01:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A05364B48
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 09:01:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 64975302614C
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 07:00:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89A2636C5A1;
	Tue, 31 Mar 2026 07:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="QteUuSwe"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2EB2DC32A;
	Tue, 31 Mar 2026 07:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774940456; cv=none; b=ZjdWqQTzriqSPyI9QAwMxJoHXtP6+5vgGFKB+gIVJCfbVoFUVZE64f60/nJLFnCqUonjcZjaN3/vn6lJDkuMtZaolgpdhd55kFQ+60rlVxWlg+GyVosxFk/ljuRi90RwuENMoo+niqZDsInFtIheSQHeGbRebpXtpSVXiGsRQEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774940456; c=relaxed/simple;
	bh=RTmsuImCn3CtzefM7fomAbHA5I/f+UtO2YDEaei1OTI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=j9wiyoQxEsA/gB1wHN+38snwy8h4Y1sfJlUytcAwpaDzVKdY/I7kpwwBl1RAN2qQ9cOWSq66AsKHRkSuA02OdJGn3VjO0WUfMMPI5FAzYQozdAJnqXR0GjYDqC+WrlX0hXU3dU9xT/LRYPH762f0Xq7dtI7W5wj8BmqYczaroGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=QteUuSwe; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1774940445;
	bh=RTmsuImCn3CtzefM7fomAbHA5I/f+UtO2YDEaei1OTI=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=QteUuSwewXeKt35dLgpxQsZXo5XcyHBW/48b/IrIeozShAmj9VPjbHWDFcv/7wrMN
	 EbUx9muoJkfo62g8yHdbEXleSmEM7DvOFC9FI9c4YM4maKbG5CbivJrN7I9CaVCD/F
	 od6I5UEuh44ELgSAxSMKT4cPTf1mkGetpkyAsp+5QMH5pkKIaJLJD3kudVjLBpwp4y
	 92WKhncfZ73BaknEFEK/ojuJhc5+qr9ztjoY/aKvdSk1ekZm2uqGCMb7taHI/WOwnj
	 KNmh+i7o7sjAYUZDtqWcP1Wg2GeKoZkRQZCiCI1Qh/5TjAbI/27q+jqbGF9E06udHO
	 2daLsjmnVJuqw==
Received: from [192.168.72.167] (210-10-213-150.per.static-ipl.aapt.com.au [210.10.213.150])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 5B5616002E;
	Tue, 31 Mar 2026 15:00:43 +0800 (AWST)
Message-ID: <09cbc12bea5707f794e139ea1bfafac82c2d2c12.camel@codeconstruct.com.au>
Subject: Re: [PATCH v28 2/4] dt-bindings: i2c: ast2600-i2c.yaml: Add
 global-regs and enable-dma properties
From: Jeremy Kerr <jk@codeconstruct.com.au>
To: Ryan Chen <ryan_chen@aspeedtech.com>, Krzysztof Kozlowski
 <krzk@kernel.org>
Cc: "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
  Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, Andrew Jeffery
 <andrew@codeconstruct.com.au>, Benjamin Herrenschmidt
 <benh@kernel.crashing.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-aspeed@lists.ozlabs.org"
 <linux-aspeed@lists.ozlabs.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "openbmc@lists.ozlabs.org"
 <openbmc@lists.ozlabs.org>
Date: Tue, 31 Mar 2026 15:00:43 +0800
In-Reply-To: <TY2PPF5CB9A1BE6F267C60EEC34B6A75400F253A@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
References: <20260330-upstream_i2c-v28-0-17bdae39c5cb@aspeedtech.com>
	 <20260330-upstream_i2c-v28-2-17bdae39c5cb@aspeedtech.com>
	 <20260331-fanatic-certain-bustard-fb13bc@quoll>
	 <TY2PPF5CB9A1BE6F267C60EEC34B6A75400F253A@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2+deb12u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[codeconstruct.com.au,none];
	R_DKIM_ALLOW(-0.20)[codeconstruct.com.au:s=2022a];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-282787-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jk@codeconstruct.com.au,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[codeconstruct.com.au:dkim,codeconstruct.com.au:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 00A05364B48
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Ryan,

> All AST2600 I2C controller instances have DMA hardware.
> I will remove the aspeed,enable-dma property and instead expose sysfs
> attribute in driver to allow users to enable dma/buffer/byte.

Sounds reasonable, but before you do so, how are you planning to manage
the allocation of DMA channels across multiple i2c peripherals?

Cheers,


Jeremy

