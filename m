Return-Path: <devicetree+bounces-318853-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2R5bNNJcRWr7+woAu9opvQ
	(envelope-from <devicetree+bounces-318853-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 20:30:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2916F09B0
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 20:30:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VYkvCZdu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318853-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318853-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0B262303E6E8
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 18:29:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 216854C9019;
	Wed,  1 Jul 2026 18:29:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD62386541;
	Wed,  1 Jul 2026 18:29:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782930578; cv=none; b=GtWiDP77U6xk8wTX3hlDiMd24rbt4mNDCrmLEPlbX82d7nPlkY+/sS47lyj7FV2EvnhCFP9ESc1X7qOMcJS9GLKzDXciL5ipvN0gdsQMq5BW+eNhiQCIvhYJVlzLY6uopxpodAb77ENQaMU0tPRLIxdVpiIqvmjAkogSy7yufUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782930578; c=relaxed/simple;
	bh=aenz1atAFGWjDaH1ic6mzES284MkOFNJLr08nNL+wDg=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Xs+y7XeGgSj13BFoOXjoMnBpNimo6pm7Aas8zG5j8Q9Ls/Ge64C7ew0Vtfx03X7zdvPH2+WEHLwDI7BtFAgOz1M92WnKI1qEdFzprnd3FE3RYWXLHYyccd7oKS4WvNjdO1DS0enXo2NfXkRQFNjh39d4RlWyClzs4F8y/NSC/3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYkvCZdu; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF5FC1F00A3A;
	Wed,  1 Jul 2026 18:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782930576;
	bh=oouf/dK+KVCQpIL5LxKtT/u/Z+E2ntQeaZfCAiSQ8EI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=VYkvCZduhCdySp7hXHzjgXIR7cuZyFtTKEveIl7wuCR8Uisy6nUQ0D+18L8KPP+Bm
	 zXy9qWlA79l62K19CEV7oach/0mgqjWFY5fsiZvmgWYdgbgXOpp70LjBpYVgrVwLWM
	 xoFCuzGmJrzEZrLYaA7W1wDnuKGHjOhhNEQsCm2p13YJxXEfjAX6YX0WmJrMJCRcrD
	 oibjmbB9SkkXkicl9IysYY72s5H06OzlgTjHIN5cNXjm1rYcWw3LlsaGBlNWV80DTi
	 sryYFJjyD/9wGMdnMIu4I1PwQJpjvPi+mYiU4TZeESzGnV2G19Stgtdz/mpADJuvmh
	 qYd75WqKxmwHA==
Date: Wed, 1 Jul 2026 19:29:31 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: rva333@protonmail.com, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy
 Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, Ben Grisdale <bengris32@protonmail.ch>,
 Conor Dooley <conor.dooley@microchip.com>, Andy Shevchenko
 <andriy.shevchenko@intel.com>
Subject: Re: [PATCH v4 0/4] AUXADC driver for the MediaTek mt6323 PMIC
Message-ID: <20260701192931.1be293bd@jic23-huawei>
In-Reply-To: <3f914030-44e8-4f63-ae72-7fde7d843325@baylibre.com>
References: <20260623-mt6323-adc-v4-0-299680ad3194@protonmail.com>
	<3f914030-44e8-4f63-ae72-7fde7d843325@baylibre.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-318853-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:rva333@protonmail.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:lee@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:bengris32@protonmail.ch,m:conor.dooley@microchip.com,m:andriy.shevchenko@intel.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[protonmail.com,analog.com,kernel.org,gmail.com,collabora.com,vger.kernel.org,lists.infradead.org,protonmail.ch,microchip.com,intel.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,baylibre.com:email,vger.kernel.org:from_smtp,protonmail.ch:email,protonmail.com:email,jic23-huawei:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4E2916F09B0

On Sun, 28 Jun 2026 12:34:20 -0500
David Lechner <dlechner@baylibre.com> wrote:

> On 6/23/26 3:16 AM, Roman Vivchar via B4 Relay wrote:
> > This series adds support for the 15-bit AUXADC hardware block found on
> > the MediaTek mt6323 PMIC.
> > 
> > The previous version of the series for all AUXADC, EFUSE and thermal
> > drivers was split after Krzysztof's comment [1].
> > 
> > Tested on the MediaTek mt6572 and mt8163 SoCs (Ben), both paired with a
> > mt6323.
> > 
> > [1]: https://lore.kernel.org/linux-mediatek/20260504-mt6323-v1-0-799b58b355ff@protonmail.com/T/#med30fad67a090be35f549231336b2dec295233f6
> > 
> > Tested-by: Ben Grisdale <bengris32@protonmail.ch> # Amazon Echo Dot (2nd Generation)
> > Signed-off-by: Roman Vivchar <rva333@protonmail.com>
> > ---  
> Reviewed-by: David Lechner <dlechner@baylibre.com>
> 

Applied patch 1 - with some hand editing due to another change
to that binding, and patch 2 to the testing branch of iio.git
which I'll push out as togreg once the bots have given it a clean
bill of health.

I'm assuming 3 will go via mfd and 4 via the soc tree.

Thanks,

Jonathan

