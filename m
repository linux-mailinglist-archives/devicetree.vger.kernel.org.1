Return-Path: <devicetree+bounces-300555-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKc0C/efDWqC0AUAu9opvQ
	(envelope-from <devicetree+bounces-300555-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 13:50:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE4E58CF05
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 13:50:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7EB693007B2C
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 11:44:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A565C39BFF4;
	Wed, 20 May 2026 11:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EF5tY4j2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 804B23A4F2F;
	Wed, 20 May 2026 11:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779277467; cv=none; b=bNwLzJuaFXB2xZVzIcTgRzQzwYN62axvK5vLuKzZM8Qrv27o/adgVWvPRymdBrZ3haxCOdqPQK4qZDQSHCe1IJlAgS+3A2TZ3z6azFIzVxZo5ZnrtO2bUhsNLF5auh5hh1EmhNK9zqnqPfrq+dltlFL+P7xG6zkvyuxq1fQROUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779277467; c=relaxed/simple;
	bh=Ca3Hr4aToRi/k2hLPU8QZL1T9ZoLb6SGfL+TpDR/qww=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FnDdlhyrX61GmxgbrmKDdCi8u8Q1tF7pWjndd8mkq3e0emyQdh/dsQgZhYu1V/KC616uoO5JUYBrvwljgbYG4hjxPeHCBktCzCCYUq9ikBXD6P1oeV8YHv+x7LVxfdJZo+kkOZZ7Kqe+fD+uW9i2ou4Y8ou+4kJarLHZkqsHCuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EF5tY4j2; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B9971F000E9;
	Wed, 20 May 2026 11:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779277466;
	bh=GQV6Jj3sIIXwcWOfZjy10EMiZ6BQRvgUcLC7qvxe7r0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=EF5tY4j28mYiriRZuLvRWzN06PPGmqsrcwg/kcUNtLdsIbiqjvkm8g+ygj91MKNDh
	 rx4+mnsitduDUynZM1n1RYHf/gFQu6thFdbXsyBhVfwg8NwBvFmjrRZWhx4ChtzybW
	 QQDpoln/W3Vo7Zcxrq7C0SUp1H0zt/hGShcGa4d254A+Zo8oZgOeCct2pFvRVH/L8Q
	 pzdp/KX+ES3chUANQthuvF+FErvlk+ziTZ/DrBL+0j38ItsZeco3M/QzGBgnhgoyaD
	 LvYM58Jk6dz6QWyJ/rUnCqKY3BRtTck14EkJFjHHv+RahiIcPL8BlEwgzd20w5+KXl
	 TyExyjzt09Yyw==
Date: Wed, 20 May 2026 12:44:16 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Xingyu Wu <xingyu.wu@starfivetech.com>
Cc: David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org
Subject: Re: [PATCH v1 0/2] Add StarFive SAR-ADC driver
Message-ID: <20260520124416.0758f4aa@jic23-huawei>
In-Reply-To: <20260518081852.116909-1-xingyu.wu@starfivetech.com>
References: <20260518081852.116909-1-xingyu.wu@starfivetech.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-300555-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 2EE4E58CF05
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 18 May 2026 16:18:50 +0800
Xingyu Wu <xingyu.wu@starfivetech.com> wrote:

> Hi all,
> 
> This series adds an IIO ADC driver for the controller of StarFive
> Successive Approximation Register A/D converter (SAR-ADC).
> 
> The StarFive SAR-ADC is a 12-bit converter with up to 8 input channels
> and a fixed 1.8V reference domain. The driver provides raw and processed
> voltage readouts via IIO, runtime PM support, and threshold-based
> voltage monitoring.
> 
> Tested on StarFive JHB100 EVB with all ADC channels and monitor
> interrupt path.
Take a look at the AI bot feedback.
https://sashiko.dev/#/patchset/20260518081852.116909-1-xingyu.wu%40starfivetech.com

It won't necessarily all be correct but the hit rate tends to be good.

Jonathan

> 
> Xingyu Wu (2):
>   bindings: iio: adc: Add StarFive JHB100 SARADC
>   iio: adc: Add StarFive SAR-ADC driver
> 
>  .../iio/adc/starfive,jhb100-saradc.yaml       |  62 ++
>  MAINTAINERS                                   |   6 +
>  drivers/iio/adc/Kconfig                       |  11 +
>  drivers/iio/adc/Makefile                      |   1 +
>  drivers/iio/adc/starfive-saradc.c             | 978 ++++++++++++++++++
>  5 files changed, 1058 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/starfive,jhb100-saradc.yaml
>  create mode 100644 drivers/iio/adc/starfive-saradc.c
> 


