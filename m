Return-Path: <devicetree+bounces-264240-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNrUNf3OimkUOAAAu9opvQ
	(envelope-from <devicetree+bounces-264240-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 07:23:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4036E11759C
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 07:23:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 20683300B10B
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 06:23:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 023FD32D0E8;
	Tue, 10 Feb 2026 06:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="wp4Lu1hQ"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta1.migadu.com (out-174.mta1.migadu.com [95.215.58.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21CB32ABE1
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 06:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770704608; cv=none; b=QOahfbg4vHA1dJI+lv74ikzho7SdEdXEELrBVbwU26ftNXAoSOJi8uKJr/EbJiuNx1KqfuoPwqliKEdnqwLY4Mgr8iKU83GZUFgoGuri2YybOOZXgP3QTqSjca/C1TmZXXXmAtet5RPU+wHmTlIDyoJvUwoJDQ/r8oxalPqVpTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770704608; c=relaxed/simple;
	bh=vAkD2Y7A3kX2N7NxVpgDP67IrLuf+CkR+cYwyIBTEGo=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=IG0AX4o2gCR75iugiM4NgQWFHhU4LBbEmVt8aS5mMtl8YJ88DLZ30KqLNp+pkYEwmjF9cXZGL1ho/2U/16OBOxPH28hTByWkw0en4e9WF6NKclN2l9j1Tg5iJJ4fbuThxlgM5m0oDbZl9nM2F0XiBU8DCi3xLbZdqh3/LKoeKFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=wp4Lu1hQ; arc=none smtp.client-ip=95.215.58.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1770704594;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pi7LgHt89ZeNTeQkWsRlsUpjNQmreE7zjeBsTGPhing=;
	b=wp4Lu1hQiCozVcyhh/FpdV+vgG8UXf8D872DxmZl0PGOPV7/3FPpF7HOn7C9jvNE2ywfgd
	L8E4VAv2/EFSdypKiRJ79gFyNbaXQOGVFf0KgnhDL91gCOWHDA/sTWQ28vQ9bHumk1gdZI
	EzCsjdpdqs6tr+u/gzJmjx/cpv8s3+Q=
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 10 Feb 2026 14:23:06 +0800
Message-Id: <DGB2E17NBWO2.544ZZ15AEBLC@linux.dev>
Cc: <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <kernel@pengutronix.de>
Subject: Re: [PATCH v4 0/5] Add onboard-dev USB hub host managed vbus
 handling support
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Ze Huang" <huang.ze@linux.dev>
To: "Marco Felsch" <m.felsch@pengutronix.de>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Fabio Estevam" <festevam@gmail.com>, "Matthias Kaehlcke"
 <mka@chromium.org>, "Liam Girdwood" <lgirdwood@gmail.com>, "Mark Brown"
 <broonie@kernel.org>
References: <20250911-v6-16-topic-usb-onboard-dev-v4-0-1af288125d74@pengutronix.de>
In-Reply-To: <20250911-v6-16-topic-usb-onboard-dev-v4-0-1af288125d74@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264240-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[pengutronix.de,linuxfoundation.org,kernel.org,gmail.com,chromium.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[huang.ze@linux.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linux.dev:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux.dev:mid,linux.dev:dkim]
X-Rspamd-Queue-Id: 4036E11759C
X-Rspamd-Action: no action

On Fri Sep 12, 2025 at 4:22 AM CST, Marco Felsch wrote:
> Hi,
>
> the whole purpose of this series is to make it possible to control the
> USB VBUS regulators of an USB hub via host managed regulators.
>
> Regards,
>   Marco
>
> ---
> Changes in v4:
> - dt-bindings: change to vbus-supply and shift doc to usb-device.yaml
> - onboard_dev: make use of new regulator API to parse child device
>                regulators.
> - onboard_dev: drop hard coded downstream port number and make it more
>                dynamic
> - onboard_dev: drop limiting support to SMSC hubs
> - Link to v3: https://lore.kernel.org/r/20250821-v6-16-topic-usb-onboard-=
dev-v3-0-6d2b38a5d818@pengutronix.de
>
> Changes in v3:
> - fix dt-bindings issues
> - Link to v2: https://lore.kernel.org/all/20250327172803.3404615-1-m.fels=
ch@pengutronix.de/
>
> Changes in v2:
> - fix compile time errors in case the module builds
> - Link to v1: https://lore.kernel.org/all/20240807-b4-v6-10-topic-usb-onb=
oard-dev-v1-0-f33ce21353c9@pengutronix.de/
>
> ---
> Marco Felsch (5):
>       usb: port: track the disabled state
>       usb: hub: add infrastructure to pass onboard_dev port features
>       dt-bindings: usb: usb-device: add usb hub port vbus-supply suppport
>       dt-bindings: usb: microchip,usb2514: add vbus-supply example
>       usb: misc: onboard_dev: add hub downstream port host vbus-supply ha=
ndling
>
>  .../devicetree/bindings/usb/microchip,usb2514.yaml |   7 ++
>  .../devicetree/bindings/usb/usb-device.yaml        |   6 ++
>  drivers/usb/core/hub.c                             |  55 +++++++++-
>  drivers/usb/core/hub.h                             |   4 +
>  drivers/usb/core/port.c                            |   6 ++
>  drivers/usb/misc/onboard_usb_dev.c                 | 117 +++++++++++++++=
++++++
>  include/linux/usb.h                                |   3 +
>  7 files changed, 196 insertions(+), 2 deletions(-)
> ---
> base-commit: 038d61fd642278bab63ee8ef722c50d10ab01e8f
> change-id: 20250821-v6-16-topic-usb-onboard-dev-b8d4d1d8a086
>
> Best regards,

Hi Marco,

I'm checking in to ask about the status of this patch series.

We are currently working on the Spacemit K1 SoC and we have a use case
that requires onboard_dev to manage the USB VBUS regulator. This series
would be very helpful for us :)

Link: https://lore.kernel.org/all/DG8QBWSJ79MP.2MVIHFRBX3WXX@linux.dev/

Best regards,
Ze Huang

