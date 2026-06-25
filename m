Return-Path: <devicetree+bounces-315724-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Z4CQC4c/PWqh0AgAu9opvQ
	(envelope-from <devicetree+bounces-315724-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 16:47:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7938C6C6CA4
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 16:47:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="mn4/rS98";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315724-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315724-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 716B33006940
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 14:47:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 415A330DEA3;
	Thu, 25 Jun 2026 14:47:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D4F26ED25
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 14:47:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782398844; cv=none; b=nbRKa9tZPhh37rueDWLg8xjTBObCHkfTtw5ywICQqAbYNpD/FXpSstJqce4GSFrKBrKIaTKDgi85+I1Nw0jawa2LTbYUtbvq2G36r7uKf6276OzmX2KWnDfbJdRbqyVZrwYjR0VrdyLlh8il1uSvrklLDdpu6UD24wgvff9ORbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782398844; c=relaxed/simple;
	bh=b4TfHWxPVe4Ct4PkIBNUFMrLFgaqMO8bbcDSq1J/Ccc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=AOEXwRTUpHa5O8k55n3Fu/+lGsy1ENIg+jcpr4VinVNnWb2u+Dxw1QIlp9McttUJRIq84AxE4x5viTfgOg5XLXuL52Mg0rN4lxq5MKs9ftXUCZXcqqZhtZnt7cIhkWe68k037b4x6jK4WuJusb95pwQ7Rg2ng34+Pj1dBiyiNBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mn4/rS98; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DA301F000E9;
	Thu, 25 Jun 2026 14:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782398842;
	bh=RCE0pZYJ2lee4UBXneHblL3xbaOq4kQ4h6DWvGeT7jY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mn4/rS98aGbs3ZrmJ8287e98pbEud/Esg4oMc39a13M1vLrDAGbOh5LBFrrlYgYBZ
	 EhpzlYYIfqT54U4uYitc0yxn5S8VaWdLX2E6js5D5wFETInOx3y4CLeeiZgAeqSo8E
	 TcJywFXor4gdjfiN3QZomDeqvifi7MTRpTjrG6o/EmArNV74WkFa2HnTMm1MNsnIuU
	 DqgyiP5SRonli+W627kDLk4uEAbN1vEGdwweDZGJA82Qu4S6ZcNmnSgOYf1o+pyYOF
	 KPptfA7TuAGWqXv7jaIlBiImmr26V1unZ25vZt2bP8IeT7CaEm3KPFb3+vgecdc4nE
	 fMcgxKmdx7aOw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/4] iio: adc: ltc2378: Add support for LTC2378-20
 and similar ADCs
Reply-To: sashiko-reviews@lists.linux.dev
To: "Marcelo Schmitt" <marcelo.schmitt@analog.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <0abf862eeb277ae82262d09b11b1446f04c47be7.1782397418.git.marcelo.schmitt@analog.com>
References: <cover.1782397418.git.marcelo.schmitt@analog.com>
 <0abf862eeb277ae82262d09b11b1446f04c47be7.1782397418.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 14:47:21 +0000
Message-Id: <20260625144722.2DA301F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315724-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:marcelo.schmitt@analog.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,analog.com:email,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7938C6C6CA4

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The voltage from the 'refin' regulator is not multiplied by the in=
ternal buffer gain, resulting in incorrect ADC scale.
- [Medium] External 'ref' regulator is completely ignored for chips with an=
 internal reference, breaking the ability to overdrive the internal referen=
ce.
--

commit 06f09452b5298cd69acd94f1c33c2c91342a505d
Author: Marcelo Schmitt <marcelo.schmitt@analog.com>

iio: adc: ltc2378: Add support for LTC2378-20 and similar ADCs

This commit adds a new driver for the Analog Devices LTC2378-20 and
similar analog-to-digital converters.

> diff --git a/drivers/iio/adc/ltc2378.c b/drivers/iio/adc/ltc2378.c
> new file mode 100644
> index 0000000000000..9a9f32e4989ba
> --- /dev/null
> +++ b/drivers/iio/adc/ltc2378.c
[ ... ]
> +static int ltc2378_regulator_setup(struct device *dev, struct ltc2378_st=
ate *st)
> +{
> +	int ret;
> +
> +	ret =3D devm_regulator_get_enable_read_voltage(dev, "refin");
> +	if (ret < 0 && ret !=3D -ENODEV) {
> +		return dev_err_probe(dev, ret, "failed to read refin regulator\n");
> +	} else if (ret > 0) {
> +		st->ref_uV =3D ret;

[Severity: High]
Does this assignment account for the internal buffer's amplification gain?

For example, on chips like the LTC2338-18, the internal reference buffer
amplifies the REFIN voltage by a factor of 2. If the 'refin' regulator prov=
ides
2.048V, the internal REF pin sees 4.096V. But this code appears to assign t=
he
direct REFIN voltage to st->ref_uV, which would result in an incorrect ADC
scale calculation.

> +		return 0;
> +	}
> +
> +	if (st->info->internal_ref_uv) {
> +		st->ref_uV =3D st->info->internal_ref_uv;
> +		return 0;

[Severity: Medium]
Does this early return prevent a board from overdriving the internal refere=
nce
with an external 'ref' supply?

If the hardware supports overdriving the internal reference and a 'ref-supp=
ly'
is provided in the device tree, it looks like this code will silently ignore
it and use the internal reference value instead.

> +	}
> +
> +	ret =3D devm_regulator_get_enable_read_voltage(dev, "ref");
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "failed to read ref regulator\n");
> +
> +	st->ref_uV =3D ret;
> +
> +	return 0;
> +}
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1782397418.gi=
t.marcelo.schmitt@analog.com?part=3D2

