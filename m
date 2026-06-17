Return-Path: <devicetree+bounces-313040-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CWanGi2pMmqD3QUAu9opvQ
	(envelope-from <devicetree+bounces-313040-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 16:03:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B80D69A631
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 16:03:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=AgDg2q8A;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313040-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-313040-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linux.dev;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id EAB8430B75B2
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 13:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FA1C3F8223;
	Wed, 17 Jun 2026 13:59:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta1.migadu.com (out-181.mta1.migadu.com [95.215.58.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C642D3F5BC3
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 13:59:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781704778; cv=none; b=eBq4s95vdmm0YlMeqBifvRLdTRojN28OalzToAj0hOtqrGs7gv1EKHqihJivnthUa62zmRxcus44sZaEENmEwsccAObc6RlHK8qapqv/sBI3VttpKHo1FJlNqfrd20sVk1p2aSpF7Geq2BC1StePtnlyRe+1Gqi5KVze2l/3C8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781704778; c=relaxed/simple;
	bh=dCBd6QOWdSfna80tO7lgRPNepVJ8z4/9yjwTGHpHQIE=;
	h=MIME-Version:Date:Content-Type:From:Message-ID:Subject:To:Cc:
	 In-Reply-To:References; b=maFQACwotDHSMkaFzBg5TPTfJcD/IaXAXYfS53D2TvMGONChqZ9YWF9VAUT4WVpr2k/Ps7CdPD6S00Wh81LiX/QV4YXu+0QCb/Dx/ffu53LgGpm8LGc/64bJqmDjd8GVtP4+1YqjlOC3Eas7X0xNqWSwzkAnK8YyzwHWh3LvnR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=AgDg2q8A; arc=none smtp.client-ip=95.215.58.181
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1781704765;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0esiTjT2bh6BlTAeIet0hO+XCKrhmouZR2UAUKmVqSI=;
	b=AgDg2q8A1u5L9oBFy6syZlCFggXZH38jJ724tm/ppHkiXyWaJ2MmVPmNq18UTPtUP1cCKL
	j6IXeRvOw6xb1qT8ev2gadePk2HNs3M9/RioLy7VeLldQs553IUnCC7EiTYOiffrht2bqx
	MAjTDXQLkjdGIejA3KF/fOEBNxwQq68=
Date: Wed, 17 Jun 2026 13:59:18 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Siratul Islam" <siratul.islam@linux.dev>
Message-ID: <8016d51ceb01974ae6d47185717d8e42dcc499bc@linux.dev>
TLS-Required: No
Subject: Re: [PATCH v2 3/3] iio: magnetometer: add driver for QST QMC5883L
 Sensor
To: "Andy Shevchenko" <andriy.shevchenko@intel.com>
Cc: jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
 andy@kernel.org, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
In-Reply-To: <ajJI_KK0eLXeHK0A@ashevche-desk.local>
References: <20260616114942.37241-1-siratul.islam@linux.dev>
 <20260616114942.37241-4-siratul.islam@linux.dev>
 <ajJI_KK0eLXeHK0A@ashevche-desk.local>
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313040-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[siratul.islam@linux.dev,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@intel.com,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linux.dev:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[siratul.islam@linux.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,linux.dev:dkim,linux.dev:mid,linux.dev:from_mime,intel.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6B80D69A631

June 17, 2026 at 1:13 PM, "Andy Shevchenko" <andriy.shevchenko@intel.com =
mailto:andriy.shevchenko@intel.com?to=3D%22Andy%20Shevchenko%22%20%3Candr=
iy.shevchenko%40intel.com%3E > wrote:


>=20
>=20On Tue, Jun 16, 2026 at 05:49:39PM +0600, Siratul Islam wrote:
>=20
>=20>=20
>=20> Add driver for the QST QMC5883L 3-Axis Magnetic Sensor
> >  connected via i2c.
> >=20
>=20...
>=20
>=20>=20
>=20> +enum qmc5883l_chan {
> >  + QMC5883L_AXIS_X,
> >  + QMC5883L_AXIS_Y,
> >  + QMC5883L_AXIS_Z
> >=20
>=20Leave trailing comma, it's not a dedicated terminator.
>=20
>=20>=20
>=20> +};
I generally have a habit of not adding a comma at the end as it reminds m=
e of javascript/json. But sometimes I add it to help clang-format. Jonath=
an suggested me to remove the commas at "terminating" entries. So I took =
the opportunity to remove them everywhere. Apparently it was a wrong deci=
sion. Thnaks for pointing this out, I'll make it a new habit. As always I=
'm learning a lot from these reviews.
> ...
>=20
>=20>=20
>=20> +
> >  + return 0;
> >  +}
> >=20
>=20...
> Ideally this should have a comment with a reference to the datasheet wh=
ere this
> delay is specified. Otherwise a comment why this exact value has been c=
hosen.
>=20
I=20have a comment where I define this, about this value being from the d=
atasheet. I'll update it to specify where though.
> >=20
>=20> + fsleep(QMC5883L_PORT_US);
...
>=20
>=20>=20
>=20> +};
> >=20
>=20--=20
>=20With Best Regards,
> Andy Shevchenko
>

Thanks
Sirat

