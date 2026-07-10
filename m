Return-Path: <devicetree+bounces-324355-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0ezAJRnFUGpH4wIAu9opvQ
	(envelope-from <devicetree+bounces-324355-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 12:10:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 778277397AE
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 12:10:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=protonmail.com header.s=protonmail3 header.b=U8hhGQ7V;
	dmarc=pass (policy=quarantine) header.from=protonmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324355-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324355-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 89CF330548F8
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 10:06:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34DC7403AF8;
	Fri, 10 Jul 2026 10:06:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-10696.protonmail.ch (mail-10696.protonmail.ch [79.135.106.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13170403AF1;
	Fri, 10 Jul 2026 10:06:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783677984; cv=none; b=qy/pG+zkGwvfihYaI7SGDThMHvOQyQrK7+PbQtnBzBOdLyi2TfeGPugp2V9EcnSF6zOhrhZtlLqrCGObcpT31L8zuAfG+R4SRmFIZHGcqPn04U55SLFgmNq57ihIRs1nTdoRLcs6Mtu/YpSyIGLT8GdSx/02/IHY80SUV1PVcZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783677984; c=relaxed/simple;
	bh=bZtt9hqfiH8yRk8Y6EHE38Zx3h0iymmFuYoAuIHZpGc=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=cL3ndBkv87h/pBv2Ai8lPEB/Pxxinm6fo0gIfgQhGqYZIjj3C4N7GUu1zJMnThRgwvQUhS5OutZHfNEGGK3TmKuWJx5kgB2sD/ay0OF33QrBPQHRe1zOhk8jf2P0KgJhKYjPE3KJ6IAPOdOGRVP6hXSTli2BDgISCc0JtJYod/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=U8hhGQ7V; arc=none smtp.client-ip=79.135.106.96
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1783677971; x=1783937171;
	bh=bZtt9hqfiH8yRk8Y6EHE38Zx3h0iymmFuYoAuIHZpGc=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=U8hhGQ7VomZ9uCLFY8xtreukqqVFxjRaNesy39m8uy4yjDH/ZFgiC/i5RnCC3C6o6
	 Dom22Z/C7+D+RBR3lw3h6Zo9ByqJrkDQHiJ7djCTu0y4CaUAfp3bwdIixrwK4tjwkk
	 2qJNJd9GJrjZQ3F/Y6SiOnVxFQW/msgkkeYthBcQDSxgIaiMtiJYuhaegNOs7qMLaT
	 rkzBeQPxMemtPk09cv52Df7txq3kbcWSHqnm2o1QWhcYhWUPmrq1yQgYaYf27d2uuX
	 cZih2rYk19O+wm7T+UpBr39onBWBhVlWS2VVAcju/x2YtXy9+EKpIlctVbJNUX2WYt
	 ZWHgwj/nL102A==
Date: Fri, 10 Jul 2026 10:06:05 +0000
To: =?utf-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, Jonathan Cameron <jic23@kernel.org>
From: Roman Vivchar <rva333@protonmail.com>
Cc: David Lechner <dlechner@baylibre.com>, =?utf-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Ben Grisdale <bengris32@protonmail.ch>, Andy Shevchenko <andriy.shevchenko@intel.com>
Subject: Re: [PATCH v5 2/4] iio: adc: mt6323-auxadc: add mt6323 PMIC AUXADC driver
Message-ID: <KnchjScV7RNnhDi3rI7qqdZSgivkk8WJiQEGWYifNJJjMzzJrEFfZGEuPWSrQisnh_JDj15_CLSLtO2HEjUFe6Jr4wgramAhYwmJjHy6aiw=@protonmail.com>
In-Reply-To: <alChi9oG0-2XUFXK@monoceros>
References: <20260709-mt6323-adc-v5-0-d11b8332a735@protonmail.com> <20260709-mt6323-adc-v5-2-d11b8332a735@protonmail.com> <alChi9oG0-2XUFXK@monoceros>
Feedback-ID: 173184497:user:proton
X-Pm-Message-ID: b24ef4ce02959c9f36191eeefd7da36d6ded1b5f
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[protonmail.com,quarantine];
	R_DKIM_ALLOW(-0.20)[protonmail.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[bounces-324355-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[rva333@protonmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[protonmail.com];
	FORGED_RECIPIENTS(0.00)[m:u.kleine-koenig@baylibre.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:lee@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:bengris32@protonmail.ch,m:andriy.shevchenko@intel.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[protonmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rva333@protonmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,protonmail.ch,intel.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,protonmail.com:from_mime,protonmail.com:dkim,protonmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 778277397AE

Hi Uwe,

On Friday, July 10th, 2026 at 10:39 AM, Uwe Kleine-K=C3=B6nig <u.kleine-koe=
nig@baylibre.com> wrote:

> Hello,
>
> On Thu, Jul 09, 2026 at 01:52:48PM +0300, Roman Vivchar via B4 Relay wrot=
e:
> > +#include <linux/mod_devicetable.h>
>
> Please don't add new users for this header file. Only use those
> <linux/device-id/*.h> that you actually need (if any).
>

Jonathan, since you've already picked up the driver to the iio testing
tree, would you prefer v6 or a separate patch on top of iio tree?

In any case, I will drop the header since it's not needed.

Best regards,
Roman

