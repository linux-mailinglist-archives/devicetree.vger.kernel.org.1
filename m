Return-Path: <devicetree+bounces-324979-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9X25K1AkU2qMXwMAu9opvQ
	(envelope-from <devicetree+bounces-324979-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 07:21:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 10850743EB4
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 07:21:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eZYjivwv;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324979-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324979-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E8F1A3015D2F
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 05:21:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B98C36E47E;
	Sun, 12 Jul 2026 05:21:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33ECD305699
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 05:21:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783833677; cv=none; b=ZUFQbPK+32r2dueIg2TK2c0kdH1VcIClX2Ur3WByz2zQfUP6aipnNVMl6azkq7l2tA/CP3/aUUob/qIGStIW3EQ3vHHBI8Yx+Tat33/K9/4lH7PNrdWFwIkyxWRhDrlHGj3uK36G/HizBfiOa05PXwKwxrwZDSGmYEEFp14eWws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783833677; c=relaxed/simple;
	bh=gOChh1ohTaPrZ+Y1GE41WGbMTNjpPj91qb2GtVmX2R0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m+zRK5D2VRTCRhKjLDkHQrPdhSn7PpLoDqlr0ra8J8KvKtj6+V1yFcgbyMFtBbj5mJVYpLqoH6qdCPM88LiCGHM46jJ/YTNg64pWp/afKymScxr6Pfam0yjBXQrEPJFep0DBtTPaNN+7DwY4wIb6eWgAPgy/OUs31i0PRhL/mwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZYjivwv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCA4E1F00ADB
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 05:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783833675;
	bh=gOChh1ohTaPrZ+Y1GE41WGbMTNjpPj91qb2GtVmX2R0=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=eZYjivwv6VxAxWDT4CG10n7zgNfpl+yGBRHvlv+VwU8uXLyn1wc+PO5/iRDBxzHEp
	 9KERussY+0ce6BWxHPRqoemDGX6IuPvUd3Ih2HNqrgMdj67+8sUdKVVRgav1JTa+YX
	 EDha5Q+TqABhsIXaAEklbmTLoWflCd0PRwGn7XAgNUGeUV2YmVaiJQfvUrVeqVeohW
	 A20033eiVAXlsMW6vDjhh0/N3CbLB/FZNnmhuIrERosMXXNFm4RzA3qbWS6TNrbrXk
	 lHlxAfOC79bdb47Orlsx77kb6H1ka6RqU0CLyQL/lrSGy1acr7Dg2fnT6PVtc/DRk1
	 bcnnV44Nt5zvA==
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5aeb11c7347so1844095e87.0
        for <devicetree@vger.kernel.org>; Sat, 11 Jul 2026 22:21:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Ro+aFCtT/LFaD5iL2ZWII7wBPZc093HX71q1bvJLMsznJfX2iIjHgMU9xneDp6zqpr9KbuCntfhq1cb@vger.kernel.org
X-Gm-Message-State: AOJu0YzJc7785iNZxdobfBg2TV8tRCVYQZC7jRIVmvgdpDEO0geg6nNW
	z13HgyTvBzPls9qvXFD+M0KsuoVeDi5IAps4jp17UKCS9lpDtutYEhVCRRN097MvXZqOQPnmind
	2K+dOWNvy5q2C13QTRMML/m7syUCnFuM=
X-Received: by 2002:a2e:a54a:0:b0:39b:1e0f:5805 with SMTP id
 38308e7fff4ca-39caa80ec19mr9352491fa.24.1783833674238; Sat, 11 Jul 2026
 22:21:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260704171411.1413349-1-iuncuim@gmail.com> <20260704171411.1413349-4-iuncuim@gmail.com>
In-Reply-To: <20260704171411.1413349-4-iuncuim@gmail.com>
Reply-To: wens@kernel.org
From: Chen-Yu Tsai <wens@kernel.org>
Date: Sun, 12 Jul 2026 13:21:01 +0800
X-Gmail-Original-Message-ID: <CAGb2v64V9fXrEZD-mB8cLs0hwp6WbpKhhkDzBqLmnZe5DQBtUQ@mail.gmail.com>
X-Gm-Features: AUfX_mw9aYjn22Umh3bpOaSqB39rYIPvYv_r-wBdphks-YmEqPaE5LTT0cIaXBI
Message-ID: <CAGb2v64V9fXrEZD-mB8cLs0hwp6WbpKhhkDzBqLmnZe5DQBtUQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/5] thermal/drivers/sun8i: get calibration data from
 two nvmem cells
To: Mikhail Kalashnikov <iuncuim@gmail.com>
Cc: Vasily Khoruzhick <anarsoul@gmail.com>, Yangtao Li <tiny.windzz@gmail.com>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@kernel.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:iuncuim@gmail.com,m:anarsoul@gmail.com,m:tiny.windzz@gmail.com,m:rafael@kernel.org,m:daniel.lezcano@kernel.org,m:rui.zhang@intel.com,m:lukasz.luba@arm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jernej.skrabec@gmail.com,m:samuel@sholland.org,m:p.zabel@pengutronix.de,m:linux-pm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-sunxi@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:tinywindzz@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324979-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,intel.com,arm.com,sholland.org,pengutronix.de,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[wens@kernel.org];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wens@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 10850743EB4

On Sun, Jul 5, 2026 at 1:15=E2=80=AFAM Mikhail Kalashnikov <iuncuim@gmail.c=
om> wrote:
>
> The A523 processor has calibration data in two nvmem cells. To be able to
> add support, the ability to add data from two cells into one array must b=
e
> added.
>
> Signed-off-by: Mikhail Kalashnikov <iuncuim@gmail.com>

Reviewed-by: Chen-Yu Tsai <wens@kernel.org>

Some of the variables could be moved into the of_property_for_each_string()
loop, but it works either way.

