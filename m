Return-Path: <devicetree+bounces-293241-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Le2C4kq+mngKQMAu9opvQ
	(envelope-from <devicetree+bounces-293241-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 19:36:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C21484D223E
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 19:36:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B2AF430204EA
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 17:36:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 316F043CEE4;
	Tue,  5 May 2026 17:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="fVEUiBs9"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62AB03C1981;
	Tue,  5 May 2026 17:36:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778002566; cv=none; b=aft1Smp72oGQVP8vOp+oWo9sfYTpgbL/X8iwmg1oYjXsy290vKmsAX1JBno+YpIRhloCTwk2tJd2/VHbA7aZupROpk0ax/riD2LEL6coV6pgDOp5f/NGfaiuFf/KVcR8PwJK2cIL+WXql1hsuUx1R7h7rhkd7cTghc3MFwleChM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778002566; c=relaxed/simple;
	bh=1rUgiNEja4VdnawWmpKJXAeTor1kPOFVIqJ3p24fzq4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XVaYZOkbDNQE33V2cm6DGhc1yIbwmrxXr6qvQs7yR5L3QawD+ctvE2LP+wnDD/pTrluu5xflSVjI+9qUI/A9qbz6BNwE9zRBYLMELER+GgDZaPQwu50WKjxtQ88feOJkX9T226ovlDkP7fkWBJqwsEpsTqrWpM0Jlcg9+tMPUYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=fVEUiBs9; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=1rUgiNEja4VdnawWmpKJXAeTor1kPOFVIqJ3p24fzq4=; b=fVEUiBs9iFuCVeDxw3tyYpZCZN
	jC+6HulUNzAiOGjHz2qhVODEf63QJMSAPNI2fHQ1KRosjxwS6PPNUjir0GnJvKMDUMgycEH/6eWwg
	znmbMa0bTyr6CYOvDiwnVPyPb0YmdB+0CcBjnVKyS9OLqKRWJs6FNjlAFWzDjHcFUE7oaRQLTuDHD
	qJ2apECTu8bun55BfPEQtEJH4AepL+0Czk4U5svUtviKuVYEZqwR8nRlTW8/h1LGe8XBN3yu9DYz1
	ZZZaPxkVoU7Pgq28H+NGNKOaiRuNewyWKd7HF8BxdNO6X4l2qhHF5Xi2ogr5ZbMygrURu9DeV6O7Y
	iCPWlZ3w==;
From: Heiko Stuebner <heiko@sntech.de>
To: Dennis Gilmore <dennis@ausil.us>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 Alexey Charkov <alchark@gmail.com>,
 Quentin Schulz <quentin.schulz@cherry.de>, FUKAUMI Naoki <naoki@radxa.com>,
 Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Dennis Gilmore <dennis@ausil.us>
Subject:
 Re: [PATCH v9 3/4] arm64: dts: rockchip: refactor items from Orange Pi 5/b to
 prep for Pro
Date: Tue, 05 May 2026 19:35:52 +0200
Message-ID: <26834823.ouqheUzb2q@phil>
In-Reply-To: <20260429024737.544813-4-dennis@ausil.us>
References:
 <20260429024737.544813-1-dennis@ausil.us>
 <20260429024737.544813-4-dennis@ausil.us>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Queue-Id: C21484D223E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-293241-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sntech.de:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,kwiboo.se,gmail.com,cherry.de,radxa.com,vger.kernel.org,lists.infradead.org,ausil.us];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]

Hi Dennis,

Am Mittwoch, 29. April 2026, 04:47:34 Mitteleurop=C3=A4ische Sommerzeit sch=
rieb Dennis Gilmore:
> The RK806 PLDO1 and PLDO2 outputs are wired differently between the
> 5/5B and the Pro (PLDO1/PLDO2 are swapped), so label the PMIC node
> rk806_single in the base dtsi, drop pldo-reg1/pldo-reg2 from it, and
> define them via a &rk806_single regulators augmentation in
> rk3588s-orangepi-5-5b.dtsi. The Pro will supply its own mapping.

I guess my only question is, where did that "single" come from and what
is it supposed to mean? ... I would've assumed "&rk806" as label would've
been enough? But maybe that "_single" has some special meaning?

Thanks
Heiko



