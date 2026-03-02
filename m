Return-Path: <devicetree+bounces-269864-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EK8dKNJdpWlc+QUAu9opvQ
	(envelope-from <devicetree+bounces-269864-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 10:52:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B80E1D5C86
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 10:52:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C976F3047408
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 09:50:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AF1538F643;
	Mon,  2 Mar 2026 09:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="yy9nuxvi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04B738CFEB;
	Mon,  2 Mar 2026 09:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772445035; cv=none; b=Hc/XxrjkIXNKZIqfk8xXC1dSl5Vv0UpS8SOY9UuDl/Ug8s8er8efwSAytxoUa9XCeqS1WA+eFKbzpDaVNRF50MAURUvHv5pq7gAV4TcLBT7lOvGRR36yZv9AIahqB16pMQdqBII/fUAWG8O26VMNUlmgXcbqpSmgtJYIukeyoHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772445035; c=relaxed/simple;
	bh=NyMfMtRhobnbhhTa8wxHG744/QHuGG5OUzKRNx7qLZs=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=n4J0ELGRr1LkIZKBR5JG3NqwU8bIHzWVO5WdnpTySBqonMqCxsFX/o37Rz5IeYYfUuPzGH1l+E/5S6VNcPw28soDLEcAzDuDcV1pebdECrF+ioNesoes5d2HYvJ5SB8HLQ9KnCDys9bF3mR0vCWrJnkXmbHd6J8lxyu0PIXUnT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=yy9nuxvi; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 3EB1D4E424D9;
	Mon,  2 Mar 2026 09:50:32 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id EFC905FE89;
	Mon,  2 Mar 2026 09:50:31 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id ADF7B10369541;
	Mon,  2 Mar 2026 10:50:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772445030; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=NyMfMtRhobnbhhTa8wxHG744/QHuGG5OUzKRNx7qLZs=;
	b=yy9nuxvixIDkfdT6D+bnnZJLkfisrqHiiN9ObFZNYi8zyLqZIbNFiGVAYCX1Ut/dpDCuk7
	sUfHqMKMg8/sstMsgtB4MeOVqPWHw9nAF57/niUYYK9qmQDrr9fEPUfTrvDy0YyVGdXINX
	iPqeHF7ANoUv0COIn4C6sDSuadT5NOMVjyo4Q7F1l2V+t6NhxUI+aJAUuw6Ug5isqa8+UQ
	QRgfwtQ57T33DhKSnhkTZ/Ei82FoU4v3wxCBBHWOcM0QrzoAGI9LMMje78O+iitxOOcvSR
	NQZze6x4HJIYYvfj/oIBCVBs9tsS7wPCMSV99WQZ5u4vAEnGaDNtFxVrQUKrhw==
Date: Mon, 2 Mar 2026 10:50:21 +0100
From: Kory Maincent <kory.maincent@bootlin.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade
 <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, Roger Quadros
 <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Bajjuri Praneeth <praneeth@ti.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Louis Chauvet
 <louis.chauvet@bootlin.com>
Subject: Re: [PATCH v2 0/3] Add support for Seeed Studio BeagleBone HDMI
 cape overlay
Message-ID: <20260302105021.400b9621@kmaincent-XPS-13-7390>
In-Reply-To: <20260216-feature_bbge-v2-0-22805cfdbf62@bootlin.com>
References: <20260216-feature_bbge-v2-0-22805cfdbf62@bootlin.com>
Organization: bootlin
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-269864-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kory.maincent@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:url,bootlin.com:email,seeedstudio.com:url]
X-Rspamd-Queue-Id: 0B80E1D5C86
X-Rspamd-Action: no action

Hello,

On Mon, 16 Feb 2026 17:55:51 +0100
"Kory Maincent (TI)" <kory.maincent@bootlin.com> wrote:

> Add devicetree overlay for the Seeed Studio BeagleBone HDMI cape, which
> provides HDMI output via an ITE IT66121 HDMI bridge and audio support
> through McASP.
>=20
> https://www.seeedstudio.com/Seeed-Studio-BeagleBoner-Green-HDMI-Cape.html
>=20
> This overlay requires the recent tilcdc cleanup patch series that was mer=
ged
> to drm-misc-next to function properly:
> https://lore.kernel.org/lkml/20260123-feature_tilcdc-v5-0-5a44d2aa3f6f@bo=
otlin.com/
>=20
> With this DRM tree dependency I don't know if this series should land in
> DRM tree or in OMAP tree.

Any new on this patch series? After a few internal discussions I think it s=
hould
land in OMAP tree.

Regards,
--=20
K=C3=B6ry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

