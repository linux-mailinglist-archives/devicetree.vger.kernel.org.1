Return-Path: <devicetree+bounces-288784-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2IYrAoRJ5mnSuAEAu9opvQ
	(envelope-from <devicetree+bounces-288784-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 17:43:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A6642E7D4
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 17:42:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 397DD30E40B0
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 15:18:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98AEF36495E;
	Mon, 20 Apr 2026 15:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="EcmtL1ko"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D581364E98;
	Mon, 20 Apr 2026 15:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776697728; cv=none; b=u+uYVusXcfUwo3XxD20Ts5QSsEZ46xph09osGNxq8VmXGfeQHSielj9F3CTJx2aEBdwb0hcWjih9TSpKiqFHTG3Jo+tUa7Fv5AQtpljleSpV1e5cP+uO5Ogw25N/biTb7OFLkIrL8rJD3J4BiS4ypWmEyHyhidKX4jj2J3TNUOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776697728; c=relaxed/simple;
	bh=oVesiwJLOatc+0XV5UOiPSqBrx1C3ZXBBwI+K3W8XFc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jDF0B0+JCX5sJoU/b/XzV6a574Ca+jZBs0uqBmfpIPY6T9fDx/Eu2kQcVamDnT0a4c1CkJKyiw0fTCv+8Qd9oRGODG7GO5LCkKWmofb7yJl1HoyHVjpkouNNLu10PzoczgXspwd6HNwg242VC1q1nWiM5XldkOl+GxySmzl8dFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=EcmtL1ko; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=GRPriQZt7VyS6kWuPERur2gAon2Iu5ktl6SXcUzdsKM=; b=EcmtL1ko2hxqdMPGOJSmH0gJqF
	eOk7UIZkvYbg6xm5hhyKFDcKMB5Ol4VdiX1sdFj8JeDpFC2d1q8A9aDcNCNCwFWKLf/K1C7i/J1Vf
	Zd+VD726MK8NbBhPoyjBqHH/y31NPQLrzsBaZ4oZfmHeJR4TMENXJSyb1eKCK02H+By+M61+jGCSf
	TFuE1xikDrSziT8gf9Ti+dsFl6uL9bN4JS0mwAFwS4/LOfQ8ydMKPFX3p19RJhSy5wIXuX+mypfgV
	Kkgv1IbgnFCpDavyRoOIP+Hrijao8TF1S67rwX8r7gGYKHWw+hBGWOhD/2LKYngwfraXASsozlwQT
	yhGdd50Q==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 00/40] arm64: dts: rockchip: Wire up frl-enable-gpios for
 RK3576/RK3588 boards
Date: Mon, 20 Apr 2026 17:08:26 +0200
Message-ID: <2744059.tIAgqjz4sF@phil>
In-Reply-To: <66f9574c-8dff-4de2-bf54-20f1c1e64c24@collabora.com>
References:
 <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
 <2435759.n0HT0TaD9V@phil>
 <66f9574c-8dff-4de2-bf54-20f1c1e64c24@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-288784-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[sntech.de:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sntech.de:dkim]
X-Rspamd-Queue-Id: 73A6642E7D4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Cristian,

Am Montag, 20. April 2026, 13:10:27 Mitteleurop=C3=A4ische Sommerzeit schri=
eb Cristian Ciocaltea:
> On 4/18/26 2:18 AM, Heiko Stuebner wrote:
> > Am Freitag, 17. April 2026, 19:55:17 Mitteleurop=C3=A4ische Sommerzeit =
schrieb Cristian Ciocaltea:
> >> On 4/17/26 2:34 PM, Heiko Stuebner wrote:
> >>> Am Freitag, 17. April 2026, 11:24:34 Mitteleurop=C3=A4ische Sommerzei=
t schrieb Cristian Ciocaltea:
> >>>
> >>> [...]
> >>>
> >>>> Cristian Ciocaltea (40):
> >>>>       arm64: dts: rockchip: Add frl-enable-gpios to rk3576-100ask-ds=
hanpi-a1
> >>>>       arm64: dts: rockchip: Add frl-enable-gpios to rk3576-armsom-si=
ge5
> >>>>       arm64: dts: rockchip: Add frl-enable-gpios to rk3576-evb1-v10
> >>>>       arm64: dts: rockchip: Add frl-enable-gpios to rk3576-evb2-v10
> >>>>       arm64: dts: rockchip: Add frl-enable-gpios to rk3576-luckfox-c=
ore3576
> >>>>       arm64: dts: rockchip: Add frl-enable-gpios to rk3576-nanopi-m5
> >>>>       arm64: dts: rockchip: Add frl-enable-gpios to rk3576-nanopi-r7=
6s
> >>>>       arm64: dts: rockchip: Add frl-enable-gpios to rk3576-roc-pc
> >>>>       arm64: dts: rockchip: Add frl-enable-gpios to rk3576-rock-4d
> >>>
> >>> I do think one patch per SoC (rk3576, rk3588, rk3588s) would make more
> >>> sense, because these patches really are mostly identical :-)
> >>
> >> Yeah, apologies for the large number of patches, I went this way to al=
low
> >> per-board reviews.  As previously noted, I tried to identify the GPIO =
pins from
> >> multiple sources, so I'm not entirely sure about the accuracy in every=
 case.
> >>
> >> Would it be preferable to squash the patches per SoC and board vendor,=
 instead?
> >=20
> > I really would just do it per soc .. so 3 patches. That is a size that =
is
> > still reviewable for people, who can then check for their board.
> >=20
> > If the patch is labeled "Add frl-enable-gpios for all RK3588s boards", I
> > do expect people to notice it the same as "oh _my_ board gets changed".
> > ("all" could also be "most" :-) ).
>=20
> Ack. =20
>=20
> I would still keep the more invasive changes =E2=80=94 such as those touc=
hing
> the regulator hacks =E2=80=94 in separate patches, though.

sure, that sounds perfectly reasonable :-) .

Heiko




