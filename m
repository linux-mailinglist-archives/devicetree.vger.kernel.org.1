Return-Path: <devicetree+bounces-292437-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJO/N0Oe92nmjgIAu9opvQ
	(envelope-from <devicetree+bounces-292437-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 03 May 2026 21:13:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8824B713D
	for <lists+devicetree@lfdr.de>; Sun, 03 May 2026 21:13:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CCC9B30078D2
	for <lists+devicetree@lfdr.de>; Sun,  3 May 2026 19:12:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1583E37700A;
	Sun,  3 May 2026 19:12:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="1Ov63H+1"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92FD42BDC29;
	Sun,  3 May 2026 19:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777835579; cv=none; b=HS9ZcqdyKbG/aCY2x7tFtI8aOC3pFTRM/WPw8p8IzEqk1sufVDXjtf6ArOGbZYy6caMNFOT7vnklO5Xh/m5AH30SsxgnL9tslKNuh/6OrgK7qSWBUsVMJGs8fZRdOqAzAHGPIrRL57/cWA5VJnCCPpqHbP3DfWWuGTA5Q61l3hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777835579; c=relaxed/simple;
	bh=m7XKCC7wug1pLQcd2TXaUp0A00zqa9MN2HJS7LUAVAQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jit5kMyqy694btVWKTlbswDbE8Yn7djnk8N4IVjWTtzJyNw8KZrS3GMDYDmqGVDTngPXxVlhrf/iAFd8EQFIzgu7rY51pOF0s/MuS9GH+FP0sTdAA2eJbwIPzJO1XKxs/HXqQPkrXptbSs0C6biV2MQzxktgj5pB9kbFMCnoR/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=1Ov63H+1; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=m7XKCC7wug1pLQcd2TXaUp0A00zqa9MN2HJS7LUAVAQ=; b=1Ov63H+17UQdOzimU/qw/ypJLo
	GrHdu2501S1ECDfJf0YtMh4cylYS8qL98v2cozq8QLw+mHT2BqRXsHFVZibaqGdNeV3xcT7TsB3VR
	797Ya0ofOY4X7zyP6dNw0ihs7DqfBqHibaNdG8Qb4qD6UIS+qCSf/rbinetsn/bjz5FLIPvQmcxWa
	cHhOrPjsSgbhpttiRMsVU1pusZUzhOBG8d0faboKYfZuaZ3n54AYy96sCSFw67YYXVDaPgMCqZNRN
	gVx3b4P8NlthIn7Q9US2pE1CQKIGJN6lGS0YKyzX/sWopwVY+qrE1YbA2hzCy5RIVGZ4IgBRqi5h3
	MFGSJrAQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Frank Wang <frank.wang@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 devicetree@vger.kernel.org, William Wu <william.wu@rock-chips.com>
Subject: Re: [PATCH v4 00/16] phy: rockchip: usbdp: Fixes,
 DP 1-lane support and cleanups
Date: Sun, 03 May 2026 21:12:33 +0200
Message-ID: <6960660.0VBMTVartN@phil>
In-Reply-To: <afd8xMS2hz208Lcl@vaman>
References:
 <20260428-rockchip-usbdp-cleanup-v4-0-7775671ece22@collabora.com>
 <afd8xMS2hz208Lcl@vaman>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Queue-Id: CF8824B713D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-292437-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,rock-chips.com,kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,collabora.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sntech.de:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,duckduckgo.com:url]

Hi Vinod,

Am Sonntag, 3. Mai 2026, 18:50:12 Mitteleurop=C3=A4ische Sommerzeit schrieb=
 Vinod Koul:
> Hi Sebastian,
>=20
> On 28-04-26, 18:13, Sebastian Reichel wrote:
> > This series overhauls the Rockchip USBDP driver; apart from a
> > a bunch of cleanups and small improvements the main goal is to
> > get the driver ready for proper USB-C DP AltMode support.
> >=20
> > Once this series has landed, it unblocks enabling proper USB-C
> > DP AltMode on the RK3588 and RK3576 platforms incl. runtime PM
> > for the Synopsys DesignWare DisplayPort controller.
> >=20
> > Apart from this series, further changes are required on the
> > DRM side. There are no compile-time dependencies between the
> > DRM side and the PHY side, but the PHY side must be applied
> > to avoid SErrors once runtime PM is added to the DisplayPort
> > controller driver. Thus it would be really good to land this
> > series in the next merge window.
>=20
> Looks like sasiko has flagged 8 high warning, can you please check them

(1) as mentioned in a different patch thread, review should be happening
on the lists. Tools regularly dump old results, so anyone looking at the
mailinglist thread might now be able to follow along with what happened
in 2 months or so.

Also other robot tools can reply on the lists just fine.


(2) if 1. is so hugely impossible, please at least provide some reference
to what you mean. Not everybody knows all the hype-tools-of-the-week and
simply searching for that mysterious "sasiko" [0] did not provide any
meaningful results for me, despite some amazon or youtube links for some
non-kernel uses of that term ;-)

So a link should be present at least please.


Thanks
Heiko


[0] https://duckduckgo.com/?q=3D%22sasiko%22




