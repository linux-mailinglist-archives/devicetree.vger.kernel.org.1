Return-Path: <devicetree+bounces-313960-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id N0N1DY6rNWqo2wYAu9opvQ
	(envelope-from <devicetree+bounces-313960-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 22:50:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A5E6A7B6D
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 22:50:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Z/Q+dmLI";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313960-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313960-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 231B2300BC79
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 20:50:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE47B3368BD;
	Fri, 19 Jun 2026 20:50:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3CB63168E1
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 20:50:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781902216; cv=none; b=crnelCm6XJMLPG7k1p1lFTUqbq1Iwc6un6ZrWFVFZMAx8nCbP+I8TduGnT4H9FFvJZSUfl96gwDUzHiZfGShJFCOAHyr8Xw5x9kHAmnjcpGNWE7cDeC5ZmfBnD5W+/2hCzk2Hzix6XYec+wyUPnd2ZI6Xu4zQYqUenu4gWPcnj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781902216; c=relaxed/simple;
	bh=A1B/O+1C58ahYzlOJUH3XJVbsvQQp0czwmWQwOfrDD0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Bb2k/lXhvC5LVAhLi0WfeJaqJs9VVHGhjwFBLlOxC97pAlbj7PlVcqGSK1t8iKJ34c/+sabfDjKceVNLSU4t26M17TtTlRb7EKnQnF8EIPHe0yHIMweLuqchTELhkAHFZzhGfGRO6bGqf/XTyrlKHDpVU1dWSL1f43N7Ue/c2zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/Q+dmLI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61CB81F000E9;
	Fri, 19 Jun 2026 20:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781902215;
	bh=3iH4IyNw11GpCvkGUanssK3xJlGXuKwfQLpmjdD3Dww=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Z/Q+dmLIEwzkBmOwuewvWU4xeqNzOqw/g41E/5Pth6L7wAG7GBKUYPa0H5FJRIOJk
	 oOTJx0kGfVYl2chpCGnGBxo9W+t1IlR6MXkjpknP6t4hbm6RlGrYjHhLuxr6UwI2Lj
	 Wo5ZUXgdP6Inn30S6Clz6aPcnAYLmmPvDCl7cZihYru/sff90MabAZ+aB+Ct+koqV+
	 O8gd2jlZZsQorvCZrun9AOGZ0dCZX/bJyHDy9ID2boZeoLNhp/re8BN/Ot96SDUc3y
	 NSCVsxtMnpqZIybkkrSR02UOCImT3Dg1OAWzzBx/z6n1hBwU6ZpRQlo3Yz0V3v6NGe
	 TpBIea3A9az9w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/3] powercap: qcom: Add SPEL powercap driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Manaf Meethalavalappu Pallikunhi" <manaf.pallikunhi@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260620-qcom_spel_driver_upstream-v2-2-a3ee6837c18f@oss.qualcomm.com>
References: <20260620-qcom_spel_driver_upstream-v2-0-a3ee6837c18f@oss.qualcomm.com>
 <20260620-qcom_spel_driver_upstream-v2-2-a3ee6837c18f@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 20:50:15 +0000
Message-Id: <20260619205015.61CB81F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313960-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:manaf.pallikunhi@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,qualcomm.com:email,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 24A5E6A7B6D

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] The devm-allocated `sp` structure is dereferenced in the asynchron=
ous `spel_release_zone` callback, causing a Use-After-Free when the driver =
is unbound.
- [High] Manual kfree of the dynamically allocated `sp->domains` array lead=
s to a Use-After-Free when devres attempts to run `mutex_destroy` on its em=
bedded devm-managed mutexes.
- [Medium] The driver incorrectly exposes phantom powercap constraints for =
domains lacking hardware support, breaking UAPI expectations.
- [Medium] The formula used to calculate `sp->time_unit` contradicts the dr=
iver's own documentation and standard scaling logic, resulting in incorrect=
 time unit conversion.
--

commit 53ea37bb963bb111e31263f8aaab73464a037f7d
Author: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
Subject: powercap: qcom: Add SPEL powercap driver

This commit adds support for the Qualcomm SoC Power and Electrical Limits
(SPEL) hardware. It enables power limits to be enforced and monitored on
Qualcomm SoCs across multiple domains using the powercap framework.

> diff --git a/drivers/powercap/qcom_spel.c b/drivers/powercap/qcom_spel.c
> new file mode 100644
> index 0000000000000..4dd91cf36ccca
> --- /dev/null
> +++ b/drivers/powercap/qcom_spel.c
[ ... ]
> +static int spel_release_zone(struct powercap_zone *power_zone)
> +{
> +	struct spel_domain *sd =3D power_zone_to_spel_domain(power_zone);
> +	struct spel_system *sp =3D sd->sp;
> +
> +	/* Free the domains array when the last zone (SYS domain) is released */
> +	if (sd->id =3D=3D SPEL_DOMAIN_SYS)
> +		kfree(sp->domains);

[Severity: High]
If the device is unbound while a sysfs file is held open, devres will free
the devm_kzalloc allocated sp structure immediately. When the user later
closes the sysfs file, the powercap framework will asynchronously call this
release function. Does accessing sp->domains here cause a use-after-free
read?

[Severity: High]
Also, earlier in spel_init_system(), devm_mutex_init() is called on sd->lock
which is embedded inside this dynamically allocated sp->domains array:

spel_init_system() {
        ...
        ret =3D devm_mutex_init(dev, &sd->lock);

If sp->domains is manually freed here with kfree(), will devres trigger a
use-after-free write when it later runs mutex_destroy() on the embedded
locks during device removal or probe failure?

[ ... ]
> +static void spel_init_domains(struct spel_system *sp)
> +{
> +	unsigned int i;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(domain_info); i++) {
> +		struct spel_domain *sd =3D &sp->domains[i];
> +
> +		sd->sp =3D sp;
> +		snprintf(sd->name, SPEL_DOMAIN_NAME_LENGTH, "%s",
> +			 domain_info[i].name);
> +		sd->id =3D i;
> +		sd->status_reg =3D sp->node_base + domain_info[i].offset;
> +
> +		/* PL1 is always supported (required for powercap registration) */
> +		sp->limits[i] =3D BIT(POWER_LIMIT1);

[Severity: Medium]
Is it strictly required for all domains to have PL1 enabled?

The powercap framework supports zones with zero constraints for purely
monitoring purposes. Since hardware limits are only defined for the SYS and
SOC domains in the constraints array, unconditionally setting PL1 for other
domains (like CL0 or IGPU) causes constraint sysfs files to be created that
will always fail with an error when read or written. Does this expose a
broken UAPI?

> +	}
> +}
> +
> +static void spel_update_unit(struct spel_system *sp)
> +{
> +	u32 value, shift;
> +
> +	/* Read power_unit and time_unit from offset 0x0 */
> +	value =3D readl(sp->config_base);
> +
> +	/*
> +	 * Unit calculation: 1 / (2^shift)
> +	 * Masks limit: TIME_UNIT (4 bits, max 15), POWER_UNIT (3 bits, max 7).
> +	 */
> +	shift =3D FIELD_GET(POWER_UNIT_MASK, value);
> +	sp->power_unit =3D 1000000 / (1 << shift);
> +
> +	shift =3D FIELD_GET(TIME_UNIT_MASK, value);
> +	/*
> +	 * Time window in register is in milliseconds.
> +	 */
> +	sp->time_unit =3D 1000 * (1 << shift);

[Severity: Medium]
The comment above states the unit calculation is 1 / (2^shift).

For the power unit, the driver correctly divides. However, for the time unit
it multiplies by the shift value instead. Should this be a division
(1000 / (1 << shift)) to correctly scale the time unit into microseconds?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260620-qcom_spel_=
driver_upstream-v2-0-a3ee6837c18f@oss.qualcomm.com?part=3D2

