Return-Path: <devicetree+bounces-311304-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OqmvJYU8LWrWeAQAu9opvQ
	(envelope-from <devicetree+bounces-311304-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 13:18:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DE42367E72A
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 13:18:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=anX5Z0Zk;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311304-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311304-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 97C493001B62
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 11:18:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E27533DDDB6;
	Sat, 13 Jun 2026 11:18:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0E983C2785;
	Sat, 13 Jun 2026 11:18:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781349505; cv=none; b=nSM1Me7zbon7gtzujSKwFKQ8rroedMlMMQfMeDt0ebdogk9pjT+qmyyrFo4LhoQyl/CLbV/rvw9r/GRmbpAQwghbk1iAKk7jbXUhBs8TZnXls0Ne8YnZ4sTJyGb6GS5vIScswhOQcbdrvg7uURyI2oJaQMYGyHnv8C3peAEYZMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781349505; c=relaxed/simple;
	bh=qjUt5noLJcd9bZBDjBWj8429oMGahVQvlnNBuHYl0I4=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RknZF9rR+BXZAIBDR8gReEXmQrRPatlKlXbv3M7vYwzeLv0YynpVtFprQocx1jbfPesz46z3Q0Iq4x2PmSjbYNPAoJlQnmB7Dk+FF8D+0OP0iGHTzr/l2ZeFEPiN0vfH19Ww5OnELRd9Nx+ik5vYyjoSE5rukVjmgjvNtsXpc54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=anX5Z0Zk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1CD51F000E9;
	Sat, 13 Jun 2026 11:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781349503;
	bh=z1nYbXXlvUfr1yVNSjzxIUDDwldykPyIZt4b1gAE89w=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=anX5Z0ZkDGi2N/ZrlfPOyoh3Su3hFOhqV8893VFTAyPijJeLty+4cwrYhF55wNg+q
	 8AoZN2jbACU1iP80agGMkapzQWyaqIB2LKa2gyy09wwOFgbeQrcQTOG0reKn5sQ1mu
	 n+qlNDalGzxmj004R2hKaUIzfO0wq+O/PLMJKPBhacQF4ftGn7ufQNX4QTyCBFid0E
	 FgJZyqgh6uE1R3SAjMHQ0jAbnP8Y/7XNi+psWGj+DoEM0ILy04bchQrxUTe1dckCiY
	 7aikqoDadii+H77iZPydUc9DGe1yjdw2qt+3gfrF25cxxcU9ZNTe8UL/YaJXITqiF7
	 hBS74D7S5E03w==
Date: Sat, 13 Jun 2026 12:18:15 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Sirat <email@sirat.me>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: iio: magnetometer: add QST QMC5883L
 Sensor
Message-ID: <20260613121815.09b18d3a@jic23-huawei>
In-Reply-To: <CANn+LW+OSfo3u+7wZu11j7tQd-PGyhrz3a9+st-FwjOLbT4NBw@mail.gmail.com>
References: <20260612124557.13750-1-email@sirat.me>
	<20260612124557.13750-3-email@sirat.me>
	<20260612173013.64f435ab@jic23-huawei>
	<CANn+LW+OSfo3u+7wZu11j7tQd-PGyhrz3a9+st-FwjOLbT4NBw@mail.gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311304-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:email@sirat.me,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[172.234.253.10:from];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[100.90.174.1:received];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DE42367E72A

On Sat, 13 Jun 2026 14:57:42 +0600
Sirat <email@sirat.me> wrote:

> On Fri, Jun 12, 2026 at 10:30=E2=80=AFPM Jonathan Cameron <jic23@kernel.o=
rg> wrote:
> >
> > On Fri, 12 Jun 2026 18:45:26 +0600
> > Siratul Islam <email@sirat.me> wrote:
> > =20
> > > Add devicetree binding for the QST QMC5883L 3-Axis Magnetic Sensor
> > > connected via i2c.
> > > Interrupt not implemented in driver but kept in the binding for future
> > > addition. =20
> > No need to mention that =20
> Got it. In the past I was advised to mention certain choices in the
> commit message. I am still looking for the balance.

Sure.  Generally dt-bindings should never mention the driver.
Despite being in the kernel tree they are not tightly coupled with
the drivers and indeed are pulled into other projects.

Jonathan

> >
> > The rest looks good to  me.
> >
> > Thanks,
> >
> > Jonathan
> > =20
> Thanks
> Sirat


