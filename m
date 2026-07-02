Return-Path: <devicetree+bounces-319524-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TNgCNfqnRmpxbAsAu9opvQ
	(envelope-from <devicetree+bounces-319524-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 20:03:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5776FBD0B
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 20:03:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sntech.de header.s=gloria202408 header.b=Eskz2zrs;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319524-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319524-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=sntech.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D24AC306C3C3
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 18:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56A39340412;
	Thu,  2 Jul 2026 18:00:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D9B33F5A3;
	Thu,  2 Jul 2026 18:00:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783015243; cv=none; b=Tn4Sq0kF3kKgJnAi/QSpCwFZznhYtwRluSqTmQv0gSy8Ro3jggFsEcBe95NpFxciHEBzypCLd8uOXw8AjhTLFT0sr9ySCPb4BKrfauZKhqdhx0EVYrOQZ1RosI7Y5yFe2fCtM0XsdyhTBK4/FF/fMT39NfYAXFTnhoLFAs4AQiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783015243; c=relaxed/simple;
	bh=81uAQatl5Nl0YNAIsvEn3//lHmBMS9i4BFnmP8wt9LY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fl6s0ZUTSbL0lR8U6LBScvW7VDv6fj/8dpicV3cRitQXzszyUPqdROxIzv7VBgVvcXFw6NREVgOzX6gcbYo97+o+N3CIbjPsjvXQrOKNKehUC+35gZ2UnGpeqGukFoMe6hMBF1L+B/OzKxkdb7YhCaTP1hlGdboflWF95Qrg+CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Eskz2zrs; arc=none smtp.client-ip=185.11.138.130
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=xebSVH9btvoOA5wd7jjkFogUQ3KfJvU2qpvSEydg5Yc=; b=Eskz2zrsAbkrle95IzFL6WFPYp
	vzn1wrAtXWwesXNsY8DQ6r1kiiuT9A9+DV5hhILJE/ps4aaDJ1Gi8+h6lU54Qr0wxF50SUu3ar2R4
	dIKbvO1KKyEoyJvW7xVkbL+GZnKjEewoBjNGrWgvVKLEjKxQq10zMdcZC02VOjJgIIPlZIb1N8Hiu
	JzXUv1WAgEfK6+Xf8Cbeceqzcxfkk03qW43BZ5Qmx15pzN5Q9LO0B6/awajLOwQoCONl9bsdrNS5e
	jOJ/VamA0aB47VHoHD566MtaJ3gdB6MrwoSTmgUl8X5o7VYBZWgWzxwsFHNZxGd6AIlrfGUqsgaDW
	B+rHYTrQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>
Cc: Diederik de Haas <diederik@cknow-tech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jonas Karlman <jonas@kwiboo.se>
Subject:
 Re: [PATCH v2 0/2] rockchip: Fix devices suspend freeze on RK3568/RK3566
Date: Thu, 02 Jul 2026 20:00:32 +0200
Message-ID: <9647226.A5hrfCrGMc@phil>
In-Reply-To: <20260624192726.781864-1-jonas@kwiboo.se>
References: <20260624192726.781864-1-jonas@kwiboo.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:jonas@kwiboo.se,m:diederik@cknow-tech.com,m:gregkh@linuxfoundation.org,m:devicetree@vger.kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-usb@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-319524-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[sntech.de:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sntech.de:dkim,sntech.de:from_mime,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,phil:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6A5776FBD0B

Hi Jonas,

Am Mittwoch, 24. Juni 2026, 21:27:23 Mitteleurop=C3=A4ische Sommerzeit schr=
ieb Jonas Karlman:
> This series fixes a system freeze during suspend in ohci_suspend() due
> to clk_usbphy1_480m not being enabled when EHCI/OHCI registers are
> accessed on e.g. a Raxa ROCK 3C board.
>=20
> Following pm_test modes work on my ROCK 3C with the missing usbphy clk
> refs added:
>=20
>   echo N > /sys/module/printk/parameters/console_suspend
>=20
>   echo devices > /sys/power/pm_test
>   echo platform > /sys/power/pm_test
>   echo processors > /sys/power/pm_test
>   echo core > /sys/power/pm_test
>=20
>   echo mem > /sys/power/state
>=20
> Changes in v2:
> - Include rockchip,rk3588-ehci in the EHCI constraint
> - Make clocks prop required for EHCI and OHCI
> - Collect t-b tag
>=20
> Jonas Karlman (2):
>   dt-bindings: usb: Add Rockchip RK3568 compatible for EHCI and OHCI

it seems I wasn't in Cc for the first patch, so can't know if and when
that gets/got applied.

Also I think I remember Greg preferring not having to split apart patch
series', so I think the binding patch might be better off standing alone.


Heiko




