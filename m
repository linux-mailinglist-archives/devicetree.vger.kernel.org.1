Return-Path: <devicetree+bounces-303213-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gPItMtdiFmpTmAcAu9opvQ
	(envelope-from <devicetree+bounces-303213-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 05:19:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 290AF5DED5E
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 05:19:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B173C301904B
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 03:19:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B50629ACCD;
	Wed, 27 May 2026 03:19:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="APLx//61"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD5F277C81;
	Wed, 27 May 2026 03:19:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779851989; cv=none; b=sDgOcO3zVYV6+naAirtStL7SqIcUFk6WVAvZHF6OtT0uFjDq9L+Gx3OaRUFCqXDE5cVcAwkHHLYgBfgDYZ+On/cvgnugOR5ixCS5m+fAgRO+qkQ7C35zVU+iaPtboHs5yFIpLcUJxqaRzx2GEejFlS4Rs9VxxhOnyhWFNMit/AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779851989; c=relaxed/simple;
	bh=RS3tEt0ZcmVbPx/5QD48l1DIJzlT1nMDifXpMkbDJ1Y=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=MCws/jjaoxzZ7zEqijKB2DEa5XnTxnGkFvgB4/0+UFD6z+cpTWiidSiBI9jWbih3Mb9EVXQ7P59el9YjQlhsfr/eLvhjIKoElFmzP5Rl1A0d7/DNqt4WpUeDCY4IXMMLxuAg/Mseyt2QPGjPrIGubpuDQAKPM48y1hpkqyXxL2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=APLx//61; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1779851985;
	bh=RS3tEt0ZcmVbPx/5QD48l1DIJzlT1nMDifXpMkbDJ1Y=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=APLx//61j60ZOooYHs9WVkywLOkinvyZktLXiy4xpewiu2D6IRWK3Wia4FMcaTNXB
	 VI+e3htamPSpVAx/jBzoDnDD7ieUDk1tN0OsmdNLt8jGlsrgO1DFmGDlleqCB6R/kU
	 rtsRe9aMpwVxvdo5ytugqpJQNv8fFvsOPcKn4o29dJqMTFKLZ1PEYuO19Tw3Nvs4wA
	 ZiyG7EUje5pUp690jx8IoJdcF162YOxL/2Ur3D+Ch9gQqPX/1jsaA9fJ3nUrqQgxnD
	 TvD55DvvahqpvmWl/Kw/ZQqnVLejllAn6Mg49Z6dTZm5jqLgQ+oJcUi7Le0dQoqZhR
	 rcnHZdEuTocpA==
Received: from [192.168.68.117] (unknown [180.150.112.11])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 7588D6001B;
	Wed, 27 May 2026 11:19:45 +0800 (AWST)
Message-ID: <1a6ee5e082756931f1c15677ad3f5ba0fa5bbb6a.camel@codeconstruct.com.au>
Subject: Re: [PATCH 1/2] ARM: dts: aspeed: sanmiguel: Add IOEXP interrupt
 pin settings
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Potin Lai <potin.lai.pt@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	 <joel@jms.id.au>, Patrick Williams <patrick@stwcx.xyz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, Cosmo Chou
	 <cosmo.chou@quantatw.com>, Mike Hsieh <Mike_Hsieh@quantatw.com>, Potin Lai
	 <potin.lai@quantatw.com>
Date: Wed, 27 May 2026 12:49:45 +0930
In-Reply-To: <20260523-potin-update-sanmiguel-dts-20260522-v1-1-169f5fceb5f9@quantatw.com>
References: 
	<20260523-potin-update-sanmiguel-dts-20260522-v1-0-169f5fceb5f9@quantatw.com>
	 <20260523-potin-update-sanmiguel-dts-20260522-v1-1-169f5fceb5f9@quantatw.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303213-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,jms.id.au,stwcx.xyz];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@codeconstruct.com.au,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[codeconstruct.com.au:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[codeconstruct.com.au:mid,codeconstruct.com.au:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 290AF5DED5E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Potin,

On Sat, 2026-05-23 at 10:28 +0800, Potin Lai wrote:
> Kernel dmesg reports IRQ #44 being disabled due to unhandled
> interrupts from multiple PCA953x IO expanders:
>=20
> ```
> [ 447.047861] irq 44: nobody cared (try booting with the "irqpoll" option=
)
> [ 447.063124] handlers:
> [ 447.068176] [<2ab869ad>] irq_default_primary_handler threaded [<b8adc31=
0>] pca953x_irq_handler
> [ 447.087268] [<2ab869ad>] irq_default_primary_handler threaded [<b8adc31=
0>] pca953x_irq_handler
> [ 447.106344] [<2ab869ad>] irq_default_primary_handler threaded [<b8adc31=
0>] pca953x_irq_handler
> [ 447.125421] [<2ab869ad>] irq_default_primary_handler threaded [<b8adc31=
0>] pca953x_irq_handler
> [ 447.144513] [<2ab869ad>] irq_default_primary_handler threaded [<b8adc31=
0>] pca953x_irq_handler
> [ 447.163587] [<2ab869ad>] irq_default_primary_handler threaded [<b8adc31=
0>] pca953x_irq_handler
> [ 447.182663] [<2ab869ad>] irq_default_primary_handler threaded [<b8adc31=
0>] pca953x_irq_handler
> [ 447.201756] [<2ab869ad>] irq_default_primary_handler threaded [<b8adc31=
0>] pca953x_irq_handler
> [ 447.220837] Disabling IRQ #44
> ```

I've applied this, but in the future can you please rather indent log
snippets rather than use markdown code-block fences?

Cheers,

Andrew

