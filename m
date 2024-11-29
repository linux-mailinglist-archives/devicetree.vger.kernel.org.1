Return-Path: <devicetree+bounces-125553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B0D9DE842
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 15:08:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB627162F5B
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 14:08:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 435D119F419;
	Fri, 29 Nov 2024 14:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="zOVveIsn"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 717D419D8A9
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 14:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732889301; cv=none; b=Wo6eZL+TXNA/1iJEL/ib60FF/i+ekwVVDrGsWHiaO4XTJIUObOH+h+gLKztTCCf1q2FLtRbKDklem7630vLJWNcoxTcFgZoZB/OQHR46fh1eIfiO7rxbx/XpS5BzPtO9eyXEj6b2pxq4as53Ef15MXdTplHRReFTHRpLBZ/YS9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732889301; c=relaxed/simple;
	bh=0lF/n7S4HfFLGPyAkNm7KJ53jOZRfJ/HEWzLfv+k1lE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=X2FIyUDhYRVxwbihrfF0jdk8yIs/Qt6lpdPYLIR49Kyt4T1+kqi8TPc7LXCtyKnAjKPfip0XA16IRoGUkW2ZKVmu/RYrJ78NAedtM+om1r+eCBAX9XHjq4tktAZMyRI5Hth70+j4gvREtQqSPI+frMxCAr/Vz7Hf0/vVlMxdsEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=zOVveIsn; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=0lF/n7S4HfFLGPyAkNm7KJ53jOZRfJ/HEWzLfv+k1lE=; b=zOVveIsn/XSf3LTUtma3JMIG4N
	H5Xnm1Vyc3dI8UDS82M6fK8rHuIjb+4BNbJGirspInOKUygAL0jx8XdDGzf9BvgmAFsMU8gYD2TIB
	HJTRg1QrBuRgF34ht1UtnBm7gb80R6o1BI2w4UiIwr+FdFIftG8Oy1ucUlraTyZ5T/XQDoLq1w7+7
	rebi/osAi/i65EedqQo/0r+Xli9iYrs6QIU7SvV4ruWjJBXnAfDqEIDsa8MLPLuR0ngE6JQ2cPL/w
	yVBwGqpKFL7u9vouO8/ToJU8+lx3MaR0wOkvytSmUf33hb7Y5CdEJ4Nb2icPR04/2cltWrvPStFuO
	evbpc7cg==;
Received: from i5e86190f.versanet.de ([94.134.25.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tH1f4-0000X6-AE; Fri, 29 Nov 2024 15:07:58 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>, Diederik de Haas <didi.debian@cknow.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 macromorgan@hotmail.com, jonas@kwiboo.se, andyshrk@163.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 dsimic@manjaro.org
Subject:
 Re: [PATCH] arm64: dts: rockchip: add support for device tree overlays for
 Radxa devices
Date: Fri, 29 Nov 2024 15:07:57 +0100
Message-ID: <3674598.hdfAi7Kttb@diego>
In-Reply-To: <D5YO8QULYWDR.I3T73UCTD0WF@cknow.org>
References:
 <20241129002419.60404-1-naoki@radxa.com> <1952472.6tgchFWduM@diego>
 <D5YO8QULYWDR.I3T73UCTD0WF@cknow.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Am Freitag, 29. November 2024, 13:46:12 CET schrieb Diederik de Haas:
> Hi,
>=20
> On Fri Nov 29, 2024 at 1:20 PM CET, Heiko St=FCbner wrote:
> > Am Freitag, 29. November 2024, 01:24:19 CET schrieb FUKAUMI Naoki:
> > > since Radxa devices use device tree overlays[1][2][3], make base .dts
> > > support them.
> >
> > this essentially doubles the sizes of generated DTBs.
> >
> > In previous iterations there were concerns that this might overload
> > allocated memory in legacy firmware that might still run on people's
> > devices.
> >
> > I'm not sure if someone did look deeper into that meanwhile and you
> > can't of course not require people to update u-boot just for a kernel
> > upgrade. Hence previous overlays do not enable those options but instead
> > depend on "distributions" to handle that.
> >
> > So I'm definitly not sure how to proceed with this.
>=20
> In my recollection this was brought up when the restructuring of the arm
> (not arm64) dts 'tree' was discussed.
> So hopefully Rob can recall the details?
>=20
> But IIRC, the objection was about enabling it *globally* and instead it
> should be done more granually, be it on the SoC manufacturer level
> ('rockchip') or on the SoC ('rk3588') or on the board level as is
> proposed in this patch.
>=20
> e925743edc0d ("arm: dts: bcm: Enable device-tree overlay support for RPi =
devices")
> is where it got enabled for RPi devices
>=20
> I can't speak for the Debian kernel team, but the general approach is:
> get it fixed (or in this case enabled) *upstream*.
> That's why Aurelien Jarno (who's a DD) send it upstream.

I actually meant that less broadly and way more Rockchip-specific ;-)

I.e. I think it was Dragan that brought it up that old firmware binaries
(u-boot, tf-a, ...) may occupy memory regions that may run over by an
overly large dtb, but can't find the mail right now.

Hence when unsuspecting people update their kernel on a
(i.e. Radxa-)device with really old firmware there might be a possibility
that stuff may break when the dtb handed around doubles in size.


Heiko



