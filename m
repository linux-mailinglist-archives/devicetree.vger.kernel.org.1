Return-Path: <devicetree+bounces-300130-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YN1iMuReDGoVggUAu9opvQ
	(envelope-from <devicetree+bounces-300130-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 15:00:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3620857F341
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 15:00:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F299B30166E4
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 12:54:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A8854ADD8F;
	Tue, 19 May 2026 12:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOU7ULhN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7800D3E7BD5
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 12:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779195255; cv=none; b=OaIctccIcpWRZDp6Po5LwyMRAjq1oqjS4bvR6P+VyEefVj+3WXpHfME0nKvODxl+C1AKpGp6CzL6ZLcULTw57PbH8KjktksnHYVL4sg97eXRZpPVMxcx3RO3UwBolEe7/YZpF7xCp+cGEJJ+nvRGOhaetk1x1+RMqkjbuQG0JjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779195255; c=relaxed/simple;
	bh=Ffy/Z03zf/pnlOYW0SqLI2Vu22pQHrZGXpNSKlKUEMo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QIMJv/GLd3FBjZO2SyzTOWtJa9PUR7aAM8RxnLc4J0Cj6lZvCLm1/9mZj6BLNvCXkCif4wzO5qtIsaMULOJho6DGE1pqOpUGXGp9Mk+fLlmOeuO83ehu1ZUv6qfLYP7CXwSoIHCc6QOY1tcotP2t9nvEtHN2CtPiK7TMmdUiItY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOU7ULhN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9941C2BCB3;
	Tue, 19 May 2026 12:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779195255;
	bh=Ffy/Z03zf/pnlOYW0SqLI2Vu22pQHrZGXpNSKlKUEMo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=IOU7ULhNBHREmUceYzja0MrwYjqpXhrfSIiAMu/riUTTCvFy9rhnGSPn5jnuWSGbd
	 txYAgaaF/M3WtT/VxqRsEgq74rKKi2+m3RirmD07Oc0HzoS1gHikEYJ02ukjaMCuKn
	 9s6+cfVdU76cjllpVNhXh2fS3Vc7Hxfg4ltMwQ3kMps0hQl3TiD+49h61QbIQ1PvRF
	 ie9/V5879XGohPjUlMWzRPOmAbGcIYPAdWNEAOGciEWs9BsYuV8ua7rd/1wMenGBBz
	 /Ih1wHPBa1d6xM7O+5o4ZtbLDXb49g1qAU62LUrwO6cF5ymQNn/xHX+w36Gb3U7wZG
	 MPZxnu+YxtGkg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/3] regulator: Add regulator driver for Unisoc
 SC2730 PMIC
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?T3R0byBQZmzDvGdlcg==?= <otto.pflueger@abscue.de>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260519-sc2730-regulators-v3-3-5bf0e02507e3@abscue.de>
References: <20260519-sc2730-regulators-v3-3-5bf0e02507e3@abscue.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 12:54:14 +0000
Message-Id: <20260519125414.D9941C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-300130-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,abscue.de:email]
X-Rspamd-Queue-Id: 3620857F341
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The voltage control register for LDO_VDDCAMIO is defined with an i=
ncorrect offset (0x28), which will corrupt unrelated PMIC hardware state wh=
en written to.
--

commit d755f6665748cda3b92f492a8c7a6cfc5194b4c6
Author: Otto Pfl=C3=BCger <otto.pflueger@abscue.de>

regulator: Add regulator driver for Unisoc SC2730 PMIC

Add a regulator driver for the Spreadtrum/Unisoc SC2730 PMIC, used
e.g. with the UMS512 and UMS9230 SoCs. This version of the driver is
based on a downstream driver provided by Unisoc [1][2] and the existing
SC2731 driver.

[1]: https://github.com/MotorolaMobilityLLC/kernel-sprd/commit/30be0ddfe6b9=
a877fc9c328fbd2bae84e645eb31
[2]: https://github.com/MotorolaMobilityLLC/kernel-sprd/blob/android-13-rel=
ease-tla33/drivers/regulator/sc2730-regulator.c

> diff --git a/drivers/regulator/sc2730-regulator.c b/drivers/regulator/sc2=
730-regulator.c
> new file mode 100644
> index 0000000000000..9e40c6eae4943
> --- /dev/null
> +++ b/drivers/regulator/sc2730-regulator.c
> @@ -0,0 +1,411 @@
[ ... ]
> +/*
> + * SC2730 enable register
> + */
> +#define SC2730_POWER_PD_SW		(SC2730_REGULATOR_BASE + 0x01c)
> +#define SC2730_LDO_VDDRF18_PD		(SC2730_REGULATOR_BASE + 0x10c)
> +#define SC2730_LDO_VDDCAMIO_PD		(SC2730_REGULATOR_BASE + 0x118)
> +#define SC2730_LDO_VDDWCN_PD		(SC2730_REGULATOR_BASE + 0x11c)
[ ... ]
> +/*
> + * SC2730 vsel register
> + */
[ ... ]
> +#define SC2730_LDO_AVDD18_VOL		(SC2730_REGULATOR_BASE + 0x104)
> +#define SC2730_LDO_VDDRF18_VOL		(SC2730_REGULATOR_BASE + 0x110)
> +#define SC2730_LDO_VDDCAMIO_VOL		(SC2730_REGULATOR_BASE + 0x28)

Is this offset for SC2730_LDO_VDDCAMIO_VOL correct?

In this driver, LDO voltage control registers (_VOL) appear to strictly fol=
low
their power-down registers (_PD) at a +4 byte offset (e.g., VDDRF18_PD is 0=
x10c
and VDDRF18_VOL is 0x110).

SC2730_LDO_VDDCAMIO_VOL is defined as (SC2730_REGULATOR_BASE + 0x28). This
offset is outside the LDO register block (which spans 0x100 to 0x210) and
sits between the global power register (0x1c) and the DCDC block (0x44). Wi=
ll
writing to 0x28 overwrite an unrelated PMIC register instead of setting the
LDO voltage?

Additionally, VDDCAMIO_PD is defined at 0x118, which leaves no room for a
+4 byte _VOL register because VDDWCN_PD occupies 0x11c. Should VDDCAMIO_PD =
be
0x114 and VDDCAMIO_VOL be 0x118 to fit the established 8-byte register stri=
de?

> +#define SC2730_LDO_VDDWCN_VOL		(SC2730_REGULATOR_BASE + 0x120)

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519-sc2730-reg=
ulators-v3-0-5bf0e02507e3@abscue.de?part=3D3

