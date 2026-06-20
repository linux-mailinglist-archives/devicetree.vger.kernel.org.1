Return-Path: <devicetree+bounces-314033-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id m9dlAnL0NmoQHAcAu9opvQ
	(envelope-from <devicetree+bounces-314033-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 22:13:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 495056A9AA1
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 22:13:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="a7y/Psfe";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314033-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314033-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C764530158AC
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 20:13:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4176632F757;
	Sat, 20 Jun 2026 20:13:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF222F0C79;
	Sat, 20 Jun 2026 20:13:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781986415; cv=none; b=TJUiNrgILbsC0d0vxLk6mRBAW01QFaSE2om3aRniLIClIH1g2WYdogsMR+gW3sdi+7HhDwerj2IOgUFFCsUGPQDBrOY2IPfnPoiW6wZtl6FcjJFM1CnLyD0QUHa7V7ZbLa9Z0H0L5gkiqh4anS7Zo1PC4ECVycALq/k6f9okSsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781986415; c=relaxed/simple;
	bh=vaehZs4nCHXDp1LUh1nSwXQd1YvXHv3mgC5qOrZPydI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=q9QIeCwE9q+e6Nc4Su1NEDMvLuzCQK+duFfoEA+gn99+YQIXdVmClJobObalcrOcAbuADJpsyMtfD8B3ddYCSoxuGMDLwNCk41o/wWTKFLRyZ/Fk5ukN9bTTVVzGOqgObcDujlwMLkmj6H9LOsvZvqenjHVfvyp+yoTpJObhMEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7y/Psfe; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59BDB1F000E9;
	Sat, 20 Jun 2026 20:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781986413;
	bh=XIvnG0g4PI0eemm5kZpbqpzrWPJNv/taLJDwWiJHRE4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=a7y/PsfewCvYVv1N+vRHta3fDyJ5IJEZpEEgNJy0+knQ4y5ugVaIRafGxLN2iQRhk
	 POdE6ri/L/h4KSmnGQ8CKGRFkRl9IBgnF5WtFMBuAd4sNCSxFN1TzLJMV9AahtVTm5
	 GCGTSTQWW/4tPH4WlPSQUXF0Y7uMicmJcSUqOF59l4NPM7qW3hXY4WuMqHpVB8wI+k
	 BnmYJgd1J8iREAsDHAyfmMBGAqOwv/gMsS94iyPShvGiuP0hcTrM/0htf37TYk6Hjb
	 Rfzjan440Mhz+4oTcRRdb9ESKlCkj7WBKFFye0wUXUYLAQ/+UcWoP9NGdkfKU1aFWV
	 UejBTtHc5mpRg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 8/9] regulator: Add MediaTek MT6392 regulator
Reply-To: sashiko-reviews@lists.linux.dev
To: "Luca Leonardo Scorcia" <l.scorcia@gmail.com>
Cc: conor+dt@kernel.org, dmitry.torokhov@gmail.com, linux-input@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260620200032.334192-9-l.scorcia@gmail.com>
References: <20260620200032.334192-1-l.scorcia@gmail.com>
 <20260620200032.334192-9-l.scorcia@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 20 Jun 2026 20:13:32 +0000
Message-Id: <20260620201333.59BDB1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:l.scorcia@gmail.com,m:conor+dt@kernel.org,m:dmitry.torokhov@gmail.com,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:lscorcia@gmail.com,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-314033-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 495056A9AA1

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The driver modifies the globally shared static `mt6392_regulators`=
 array during probe, leading to cross-device state corruption and data race=
s.
- [Medium] mt6392_ldo_set_mode() clears the low-power mode bit instead of s=
etting it when requesting STANDBY mode, due to confusing a devicetree const=
ant with a register bit value.
--

commit 93833e30ee73cbbe6e2371cc49b2ce2c9207ea99
Author: Fabien Parent <parent.f@gmail.com>

regulator: Add MediaTek MT6392 regulator

This commit adds a new regulator driver for the MediaTek MT6392 PMIC. It
supports control over different power rails on boards based on MT8167, MT85=
16,
and other SoCs. The driver uses regmap for voltage and mode control across
multiple buck and LDO regulators.

> diff --git a/drivers/regulator/mt6392-regulator.c b/drivers/regulator/mt6=
392-regulator.c
> index 0000000000000..19999d198b56a
> --- /dev/null
> +++ b/drivers/regulator/mt6392-regulator.c

[ ... ]

> +static int mt6392_ldo_set_mode(struct regulator_dev *rdev, unsigned int =
mode)
> +{
> +	int ret, val =3D 0;
> +	struct mt6392_regulator_info *info =3D rdev_get_drvdata(rdev);
> +
> +	if (!info->lp_modeset_mask) {
> +		dev_err(&rdev->dev, "regulator %s doesn't support set_mode\n",
> +			info->desc.name);
> +		return -EINVAL;
> +	}
> +
> +	switch (mode) {
> +	case REGULATOR_MODE_STANDBY:
> +		val =3D MT6392_LDO_MODE_LP;
> +		break;

[Severity: Medium]
Will this clear the low-power mode bit instead of setting it?

MT6392_LDO_MODE_LP is defined as 2. If the mask is a single bit, shifting v=
al
by ffs(mask) - 1 will result in a value that evaluates to 0 when masked in
regmap_update_bits().

Does val need to be 1 here to correctly set the bit for STANDBY mode?

> +	case REGULATOR_MODE_NORMAL:
> +		val =3D MT6392_REGULATOR_MODE_NORMAL;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	val <<=3D ffs(info->lp_modeset_mask) - 1;
> +
> +	ret =3D regmap_update_bits(rdev->regmap, info->lp_modeset_reg,
> +				 info->lp_modeset_mask, val);

[ ... ]

> +// Buck regulators can be in Register mode or Normal mode.
> +// Each mode uses a different register to set the desired voltage.
> +static int mt6392_set_buck_vsel_reg(struct platform_device *pdev)
> +{
> +	struct mt6397_chip *mt6392 =3D dev_get_drvdata(pdev->dev.parent);
> +	int i;
> +	u32 regval;
> +
> +	for (i =3D 0; i < MT6392_MAX_REGULATOR; i++) {
> +		if (mt6392_regulators[i].vselctrl_reg) {
> +			// Read the vselctrl_reg register
> +			if (regmap_read(mt6392->regmap,
> +					mt6392_regulators[i].vselctrl_reg,
> +					&regval) < 0) {
> +				dev_err(&pdev->dev,
> +					"Failed to read buck ctrl\n");
> +				return -EIO;
> +			}
> +
> +			// vselctrl_reg[vselctrl_mask] defines the mode
> +			if (regval & mt6392_regulators[i].vselctrl_mask) {
> +				// Regulator in Normal mode
> +				mt6392_regulators[i].desc.vsel_reg =3D
> +					mt6392_regulators[i].vsel_normal_mode_reg;
> +				mt6392_regulators[i].desc.vsel_mask =3D
> +					mt6392_regulators[i].vsel_normal_mode_mask;

[Severity: High]
Does this code mutate the globally shared static mt6392_regulators array
during probe?

Since the driver uses PROBE_PREFER_ASYNCHRONOUS, concurrent probes of multi=
ple
PMIC instances could cause a data race.

Furthermore, as devm_regulator_register() stores a pointer to the desc
structure, all instantiated PMICs would end up sharing the mutated vsel_reg
from the last probed PMIC.

Could this break voltage control for any instances whose hardware state
differs?

> +			} else {
> +				// Regulator in Register mode
> +				mt6392_regulators[i].desc.vsel_reg =3D
> +					mt6392_regulators[i].vsel_reg_mode_reg;
> +				mt6392_regulators[i].desc.vsel_mask =3D
> +					mt6392_regulators[i].vsel_reg_mode_mask;
> +			}
> +		}
> +	}
> +
> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260620200032.3341=
92-1-l.scorcia@gmail.com?part=3D8

