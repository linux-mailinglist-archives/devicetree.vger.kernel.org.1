Return-Path: <devicetree+bounces-310815-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id m8uwLKvOK2qvFQQAu9opvQ
	(envelope-from <devicetree+bounces-310815-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:17:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AB86782CA
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:17:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=qMnh+rbn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310815-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-310815-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B5B70317F7DB
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:13:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAAE23988EB;
	Fri, 12 Jun 2026 09:12:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0588E397329
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 09:12:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781255571; cv=none; b=hT8Clcd3EAL1VA436hl4tsfyuXhnHubK1m/NSoyQ+NbspaJEKyDcDTAzKDcl08bdbxDxpEeeGKLAwj4jk7qxTB4mLZcm8oTZ42YTsLhYEsCc/JSZ3G73H9IsmQreA+9CVnASgX4ggSfUTdtStTJ20o+4N2UtN7U06j4i5ND1G9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781255571; c=relaxed/simple;
	bh=cRz05VYqaWC0pFjf9pY+Rd9eeGNGJS+XDW7NASxs2tU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SNYIJ9ztQgDXxf3CB3me/fwLlkG8mhqfY+JpYps4matLXBxBzfAX7RGHM8qL0W/amTwC9WYV7MV+9C23/hBanfaRKAem+0ZbVU3qIAKMXBq7snfD3i45X5t9OuA32jb+Tgrv2IYR+YqLqSFpKRxzkLnpdRhvYIw5K29Y+JYbCZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=qMnh+rbn; arc=none smtp.client-ip=185.246.85.4
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 87E0A4E42E58;
	Fri, 12 Jun 2026 09:12:46 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 5C8C960012;
	Fri, 12 Jun 2026 09:12:46 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3ABD1106C8346;
	Fri, 12 Jun 2026 11:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1781255565; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=hTCnNttXNkRyQ/Mkgo6gIH9yy650MmiE74yN+rCH3aA=;
	b=qMnh+rbnDB4R3RJ7VJJobF2eQkHuKmZ4RuqvoAtwLnvcWIf8uv0Zz2PPIcEHFpG85DVPo1
	f8Y2z7kg0r5q6Nf7MtWP76cYK2wZAr7QLdLRS17u5yfxJNEIRfo4fG6Jm/C+uy/tRLQ/4V
	F6kn2sOMUrXcuIzsBMYJDZljLNfpljjeWzLCJT0HG40IfJAj1KxV79m8430w6HUe5zqWUk
	CLq+2KFQqbvfhGs6X2TxRhSXhzHpsYRZ1yX9LWOGUQbVLlg9f/S0ARikcnu+4x1QAIXdIt
	Us/1KZ2HW9x9NxSwahdj9m77/d0riRBNOztQt0O2NWnIYtBZfY+25r5ECbLpCw==
From: =?UTF-8?B?QmVub8OudA==?= Monin <benoit.monin@bootlin.com>
To: sashiko-reviews@lists.linux.dev
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v8 9/9] clk: eyeq: Add EyeQ7H compatibles
Date: Fri, 12 Jun 2026 11:12:44 +0200
Message-ID: <AETjc-68TFets9m9JpDAsg@bootlin.com>
In-Reply-To: <20260604134302.BD19F1F00893@smtp.kernel.org>
References:
 <20260604-clk-eyeq7-v8-9-53f618174cf6@bootlin.com>
 <20260604134302.BD19F1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-310815-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[benoit.monin@bootlin.com,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[benoit.monin@bootlin.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:mid,bootlin.com:url,bootlin.com:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 64AB86782CA

On Thursday, 4 June 2026 at 15:43:02 CEST, sashiko-bot@kernel.org wrote:
=2E..
> [Severity: High]
> This isn't a bug introduced by this patch, but do these calculations sile=
ntly
> overflow and truncate on 32-bit architectures?
>=20
> The variables *mult and *div are unsigned long pointers, which are 32 bits
> wide on 32-bit systems. When *div is multiplied by (1ULL << 24) and then
> by 2048 (if DOWN_SPREAD is enabled), it evaluates to ref_div * (1 << 35).
> If ref_div is 32, this becomes 1 << 40, which truncates to exactly 0.
>=20
> This truncated 0 is later passed to clk_hw_register_fixed_factor_pdata(),
> which can cause an immediate division-by-zero panic in the Common Clock
> Framework when clk_factor_recalc_rate() divides by fix->div.
>=20
This driver is specific to EyeQ SoCs, and Mobileye EyeQ SoCs are 64 bits.
So no risk of overflow here.

> > +
> > +	if (!*mult || !*div)
> > +		return -EINVAL;
> > +
> > +	if (r2 & (JFRACR_PCSR2_RESET | JFRACR_PCSR2_DIS_SSCG)) {
> > +		*acc =3D 0;
> > +	} else {
> > +		/* spread spectrum is identical to FRACG PLL */
> > +		spread =3D FIELD_GET(JFRACR_PCSR2_SPREAD, r2);
> > +		*acc =3D DIV_ROUND_CLOSEST(spread * 1000000000, 1024 * 2);
>=20
> [Severity: High]
> This is a pre-existing issue in the FRACG code duplicated here, but does
> this spread spectrum accuracy calculation overflow on 32-bit architecture=
s?
>=20
> The operation spread * 1000000000 is evaluated in 32-bit math. If spread
> is greater than 4, it wraps around UINT_MAX, resulting in an incorrect
> clock accuracy.
>=20
Same as above. No risk of overflow on EyeQ SoCs.

> [ ... ]
>=20
> > @@ -339,6 +481,32 @@ static int eqc_probe_pll_fracg(struct device *dev,=
 struct device_node *np,
> >  	return 0;
> >  }
> > =20
> > +static int eqc_probe_pll_jfracr(struct device *dev, struct device_node=
 *np,
> > +				const struct eqc_clock *clk, void __iomem *base,
> > +				struct clk_hw_onecell_data *cells)
> > +{
>=20
> [ ... ]
>=20
> > +	hw =3D clk_hw_register_fixed_factor_pdata(dev, np, clk->name, &parent=
_data, 0, mult,
> > +						div, acc, CLK_FIXED_FACTOR_FIXED_ACCURACY);
>=20
> [Severity: Medium]
> This isn't a new bug as it exists in the FRACG probe function as well, but
> does passing CLK_FIXED_FACTOR_FIXED_ACCURACY unconditionally override the
> parent clock accuracy when Spread Spectrum is disabled?
>=20
> When the DIS_SSCG bit is set, the driver calculates acc =3D 0. By always
> providing this flag, the Common Clock Framework treats the PLL's absolute
> accuracy as exactly 0 ppb error. This wipes out and fails to inherit the
> parent clock's natural accuracy, which could break downstream consumers
> that rely on accurate tolerance reporting.
>=20
The clock structure of Mobileye EyeQ SoC is such that PLLs with a spread
spectrum modulator (FRACG, JFRACR) are fed by the main oscillator, or a
fixed factor from the oscillator. So the parent clock of those PLLs has an
accuracy of 0 ppb.

> [ ... ]
>=20
> > @@ -411,6 +579,22 @@ static int eqc_probe(struct platform_device *pdev)
>=20
> [Severity: Medium]
> This is a pre-existing issue in eqc_probe(), but does the error path leak
> resources?
>=20
> At the end of eqc_probe(), if of_clk_add_hw_provider() fails, the function
> returns directly without unmapping the I/O memory from ioremap(), freeing
> the cells array from kzalloc_flex(), or unregistering the previously
> initialized clocks.
>=20
> Because the clocks are registered with clk_hw_register_fixed_factor_pdata=
()
> (which bypasses the devm_ auto-cleanup wrapper), failing to unregister th=
em
> manually leaves orphaned clock objects in the system.
>=20
If the clock driver fails to probe, the SoC wont be functional anyway. I do
not think it is worth adding code for a code path that only leads to a dead
system when reached.

Best regards,
=2D-=20
Beno=C3=AEt Monin, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com




