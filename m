Return-Path: <devicetree+bounces-276892-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sF0GMikGumlcQgIAu9opvQ
	(envelope-from <devicetree+bounces-276892-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 02:55:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3147A2B510A
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 02:55:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D91923042B48
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 01:55:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EC1B25A2DD;
	Wed, 18 Mar 2026 01:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="eltBYvKc"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA62258ED4;
	Wed, 18 Mar 2026 01:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773798949; cv=none; b=gZTXdRgldUIA+86gcLaq949YRE/PBhI83vg7Dcv9Yd0PJWA+I6UFLIpJ0sBuB0+qPrPMuN+oz68QzEctVoZDvh2+uu2H9JlnzQ+j+0cqd4qym/NvX03sxHZHljxiwMSWYyyLYO0xkSLeOMINZIwgua6bNW7LVdcVhttCHhSOqlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773798949; c=relaxed/simple;
	bh=3JThk0kPSAg9d5X5Swzc6oumoGxMPTx0zxcz2YCRC5w=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=sg38RwWzwCKu6Vwqn3ShoXAQJkxixg9rMKWktvEJnjJ0ooS8ES8p2hyPI3JSWwhCQ0u0IX+fUJUVNtJ290Qq8cTw4foMXL7QcjhijiN3c94qLI3PBC00w+Q6WVAq0WgLh4kgVCB4xmJOzuFrw48wpT/9ChDjU5gESGTeRb/k8SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=eltBYvKc; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1773798943;
	bh=3JThk0kPSAg9d5X5Swzc6oumoGxMPTx0zxcz2YCRC5w=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=eltBYvKcITP0xHs321ACs74jrhtX41HLi324xDPVprg8uoy3LRLpDbASpZSS9W8KJ
	 wwVB8Xd3P17NelBT1MyKWm2gg/tGN+RisolDk4blV1nidbZrwvZ649K5Sid8QYCGoK
	 yQd3SqvvIIQbpo5XgT/4l01J+f+ZIb/IBVytDapnBVLinY6V+udzANQfDX3gN6QRU2
	 M4ocEkXCJ6y+Cy/LTMx2mwcaG8IAfI4ghduDGKL2YgGGKh2vy8LEykNdugwnZjUj8q
	 gWPW5jY8nPq5LSRHhpgGxDEYyE+mG5sCMGbZaM1Qfs74um+Xw0ZUl63H5a05+7fPG3
	 LJCPvPpPtIIvg==
Received: from pecola.lan (unknown [159.196.93.152])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 8DA5660BA5;
	Wed, 18 Mar 2026 09:55:41 +0800 (AWST)
Message-ID: <071adc5f76b71b3e8d2691945e7b178602b285f9.camel@codeconstruct.com.au>
Subject: Re: [PATCH v26 2/4] dt-bindings: i2c: ast2600-i2c.yaml: Add
 global-regs and transfer-mode properties
From: Jeremy Kerr <jk@codeconstruct.com.au>
To: Ryan Chen <ryan_chen@aspeedtech.com>, Rob Herring <robh@kernel.org>
Cc: "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
  Andi Shyti <andi.shyti@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
 <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, Benjamin
 Herrenschmidt <benh@kernel.crashing.org>,  Philipp Zabel
 <p.zabel@pengutronix.de>, "linux-i2c@vger.kernel.org"
 <linux-i2c@vger.kernel.org>,  "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-aspeed@lists.ozlabs.org"
 <linux-aspeed@lists.ozlabs.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "openbmc@lists.ozlabs.org"
 <openbmc@lists.ozlabs.org>
Date: Wed, 18 Mar 2026 09:55:41 +0800
In-Reply-To: <TY2PPF5CB9A1BE6EAA73D3AD6F75F1ABD53F241A@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
References: <20260309-upstream_i2c-v26-0-5fedcff8ffe8@aspeedtech.com>
	 <20260309-upstream_i2c-v26-2-5fedcff8ffe8@aspeedtech.com>
	 <20260313232125.GA3618633-robh@kernel.org>
	 <TY2PPF5CB9A1BE6A19D439C675AF5028C13F242A@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
	 <7ae8222bf6abd83a3c2ac976f54a2edbe4e9727a.camel@codeconstruct.com.au>
	 <CAL_JsqKQp=HyA90rQ2Hzu148k63k5-qrGLH6sEHXNcjAu3QSwg@mail.gmail.com>
	 <eeac1db0a5692ae45b5528a85ed1510b8b1cf771.camel@codeconstruct.com.au>
	 <TY2PPF5CB9A1BE6EAA73D3AD6F75F1ABD53F241A@TY2PPF5CB9A1BE6.apcprd06.prod.outlook.com>
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
	TAGGED_FROM(0.00)[bounces-276892-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3147A2B510A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Ryan,

> > Not at all - the next paragraph was my attempt at a recap of those, but=
 Ryan,
> > please correct me if I am wrong on any of those points.
>=20
> Your understanding is correct; the byte and buffer mode is mostly the sam=
e.
> And also mode should be decided before xfer, due to the controller/target
> both use the same xfer mode, not decide by transfer time.
> The original my submit is only buffer mode and dma mode, and use only one
> Boolean property, aspeed,i2c-dma-enabled, but someone suggest add byte
> mode select, so I start to add at v17. I can drop the byte mode, if this =
is confused.
>=20
> byte mode request:
> https://lore.kernel.org/all/010e55e9-d58b-444c-ab57-ddf8c75f2390@gmail.co=
m/

I understand that there may be valid uses for byte mode, but that does
not mean the configuration belongs in the device tree.

We do not seem to have much data on what those valid uses are, but I am
assuming it is not an attribute of the controller peripheral hardware.

[As an example: I suspect MCTP cannot be fully spec-compliant without
byte mode, in order to support the NAK window on target-mode RX. In that
case we can enforce byte mode when the controller is selected for MCTP
use, without requiring a mode selection property in the DT]

> > Ryan: I think this gives us a much cleaner approach to the binding.
> Thanks the feedback, do you mean, just one boolean property for mode sele=
ction,
> Am I right?

The property would not select a mode, it just indicates whether DMA is
available.

A driver implementation can use that indication, along with any other
configuration data, in order to select a mode. The Linux driver
implementation may use other runtime facilities to control that
selection, if you need, like sysfs or configfs.

Cheers,


Jeremy

