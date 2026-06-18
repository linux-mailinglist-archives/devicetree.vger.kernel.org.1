Return-Path: <devicetree+bounces-313320-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id m/XJBXSyM2q4FAYAu9opvQ
	(envelope-from <devicetree+bounces-313320-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 10:55:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2370669EA17
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 10:55:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313320-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313320-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 789D630760BE
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 08:49:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B4123B4EBD;
	Thu, 18 Jun 2026 08:49:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.white.stw.pengutronix.de (mx1.white.stw.pengutronix.de [185.203.200.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EF1271A71;
	Thu, 18 Jun 2026 08:49:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781772573; cv=none; b=HoIopnt1vuBoZI78mPUWVk2x2YuvFocUR8VvJmaw7eMItjF1WJhLkHFXA3fhPC69MSJm5WtHe64S+ed9/vp8RMkzPbo4FJfWSWTnG0rIl7l72USNDzQiVrPtUlcu9XQCxlmn+wCNU2ajLhfki4TaCMBSlFZmJFb7naEVaFFuc5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781772573; c=relaxed/simple;
	bh=Qco/LJBMTkGeaS+CG9RMYVxourHKcGsH5iGN24vmpPg=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Kol0fTyw1f8dUoqLM2c+Pu5MQagvJ6gAjC4WGPxpqrMGDsH1qvjo7+BkBQoLUmNe+56mFffBANbIGuAjuLJJM8O/InSPjCQz6s6WHoM+C9S53LUTv4/cAeve/70GTxUmPbBG0+U/Dx7CH8zsIv9HI+UeJxNQej93HoQA6Psj81o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.200.13
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A3BF72002AA;
	Thu, 18 Jun 2026 10:49:28 +0200 (CEST)
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wa8RE-003PSu-1n;
	Thu, 18 Jun 2026 10:49:28 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wa8RE-000000003qH-1ylc;
	Thu, 18 Jun 2026 10:49:28 +0200
Message-ID: <56c99d63c2c1b8116b9fb779b413e3240816b89a.camel@pengutronix.de>
Subject: Re: [PATCH v4 resend 2/5] reset: cix: add audss support to sky1
 reset driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: joakim.zhang@cixtech.com, mturquette@baylibre.com, sboyd@kernel.org, 
	bmasney@redhat.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, 	gary.yang@cixtech.com
Cc: cix-kernel-upstream@cixtech.com, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Date: Thu, 18 Jun 2026 10:49:28 +0200
In-Reply-To: <20260617064100.1504617-3-joakim.zhang@cixtech.com>
References: <20260617064100.1504617-1-joakim.zhang@cixtech.com>
	 <20260617064100.1504617-3-joakim.zhang@cixtech.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313320-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:joakim.zhang@cixtech.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:gary.yang@cixtech.com,m:cix-kernel-upstream@cixtech.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_NONE(0.00)[];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,pengutronix.de:mid,pengutronix.de:from_mime,cixtech.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2370669EA17

On Mi, 2026-06-17 at 14:40 +0800, joakim.zhang@cixtech.com wrote:
> From: Joakim Zhang <joakim.zhang@cixtech.com>
>=20
> Extend the Sky1 reset controller driver for the AUDSS CRU syscon. The
> AUDSS block provides sixteen active-low software reset bits in one
> register for audio subsystem peripherals, reusing the existing
> regmap-based reset ops used by the FCH and S5 system control variants.
>=20
> Signed-off-by: Joakim Zhang <joakim.zhang@cixtech.com>
> ---
>  drivers/reset/reset-sky1.c | 86 ++++++++++++++++++++++++++++++++++++--
>  1 file changed, 83 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/reset/reset-sky1.c b/drivers/reset/reset-sky1.c
> index 78e80a533c39..af32ee005ebc 100644
> --- a/drivers/reset/reset-sky1.c
> +++ b/drivers/reset/reset-sky1.c
[...]
> @@ -343,21 +379,65 @@ static int sky1_reset_probe(struct platform_device =
*pdev)
>  	sky1src->rcdev.of_node   =3D dev->of_node;
>  	sky1src->rcdev.dev       =3D dev;
> =20
> -	return devm_reset_controller_register(dev, &sky1src->rcdev);
> +	ret =3D devm_reset_controller_register(dev, &sky1src->rcdev);
> +	if (ret)
> +		return ret;
> +
> +	platform_set_drvdata(pdev, sky1src);
> +
> +	if (of_device_is_compatible(dev->of_node, "cix,sky1-audss-system-contro=
l")) {

The compatible was already evaluated by of_device_get_match_data(), you
could check (variant =3D=3D &variant_sky1_audss) here.


regards
Philipp

