Return-Path: <devicetree+bounces-265154-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mIAjFPUGjmkT+wAAu9opvQ
	(envelope-from <devicetree+bounces-265154-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:59:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CE87B12FBD0
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:59:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 53B2330F560A
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 16:55:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3D3835E542;
	Thu, 12 Feb 2026 16:55:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Yf1Xjk7g"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F5F35D611;
	Thu, 12 Feb 2026 16:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770915343; cv=none; b=XGVjj5gu130zrybx3+0FjrQy/tBJqXwSeRfayaf5/wQOVocRiFWM2kSaSMNbPrKZltgXd4EOTT+zCm+X/wEKRPIP+rB3WQRM13uUhTPPFVgohTkZarul8O0nXgsCmV3qQOCagzSWglBmw/CsAMqwkMDpgGxHS3lf7yaOp+SZ1Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770915343; c=relaxed/simple;
	bh=BYIrBpMJQWQHkNBd33MWbGOnLThZyq9ymxlrpIvZAak=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uRhHaJh/qTG7y6qGn3v9w0fJHyAmZrUZonM+7rqSct6my1KSGLvHauOikn5Z3WY17oQgIK7viFrCg0zloDOYhwD1R6p5XsH/SfLyMGdpTXb/QErvSTbaCg4CmKo1qa3HeBtTg7lc98uwV8z4dUIhgBDFHrLu/484ekL3BxrphCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Yf1Xjk7g; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 072FB1A0E47;
	Thu, 12 Feb 2026 16:55:40 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id CBAF7606B8;
	Thu, 12 Feb 2026 16:55:39 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7559E103682C4;
	Thu, 12 Feb 2026 17:55:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770915338; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=BYIrBpMJQWQHkNBd33MWbGOnLThZyq9ymxlrpIvZAak=;
	b=Yf1Xjk7gSmzJVkIbmTlz0maKJ4nRF74WIw0ge8IXTs0sXCJ048Hjc2C8Xpxhy6Xs7llVMO
	OaHq77LpRZtYrnyFxOpgaCS5Lm1PhxqTs31e7N+VVV2E0YDQfa8+47pN70ibUZGgOuhEW4
	UtC3/YZuRU2nXfOxQ8UtC4maEThd9+N4dyzaB/z9hA3x201t2msIlotYSsQX+3yIeyq8mV
	Ak+ZQcXVBgpflKOg8E+aWZbhzGctaQc3PN5PYhKybWBc1JiOB0rnQpZ5cg1WaUDaE4aCNV
	pV3DYfpBZctKndkpEtD15fKhZyjjr4MSeDykZj3X8EoCOI+T+jnzLgnAiUlCAg==
Date: Thu, 12 Feb 2026 17:55:32 +0100
From: Kory Maincent <kory.maincent@bootlin.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade
 <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, Roger Quadros
 <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>, Thomas
 Petazzoni <thomas.petazzoni@bootlin.com>, linux-omap@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, Luca
 Ceresoli <luca.ceresoli@bootlin.com>, Bajjuri Praneeth <praneeth@ti.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Louis
 Chauvet <louis.chauvet@bootlin.com>
Subject: Re: [PATCH 1/5] ARM: dts: ti: Enable overlays for all DTB files
Message-ID: <20260212175532.0e9bb107@kmaincent-XPS-13-7390>
In-Reply-To: <bfe9f164-ac90-4647-b194-2f9b2fef2901@kernel.org>
References: <20260212-feature_bbge-v1-0-29014a212f35@bootlin.com>
	<20260212-feature_bbge-v1-1-29014a212f35@bootlin.com>
	<bfe9f164-ac90-4647-b194-2f9b2fef2901@kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265154-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kory.maincent@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:url,bootlin.com:email]
X-Rspamd-Queue-Id: CE87B12FBD0
X-Rspamd-Action: no action

On Thu, 12 Feb 2026 16:42:12 +0100
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On 12/02/2026 16:26, Kory Maincent (TI) wrote:
> > Allow overlays to be applied to any DTB. This adds around ~40% to the
> > total size of the DTB files on average.
> >=20
> > Signed-off-by: Kory Maincent (TI) <kory.maincent@bootlin.com>
> > --
> >=20
> > Enable overlays for all dtb similarly to what has been done for arch64
> > TI boards, but we could only enable overlays for Beagle Bone and
> > variant boards if required. =20
>=20
> You mixed changelog with commit with invalid separator thus there is no
> final SoB.

Arf forgot one '-'. Sorry for that.

Regards,
--=20
K=C3=B6ry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

