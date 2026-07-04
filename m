Return-Path: <devicetree+bounces-320497-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cLhYCPpCSWoozwAAu9opvQ
	(envelope-from <devicetree+bounces-320497-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 19:29:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C97470818C
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 19:29:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=oshOd3ZJ;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320497-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320497-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 877763013855
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2026 17:29:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30FFA372ED7;
	Sat,  4 Jul 2026 17:29:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5433502A6;
	Sat,  4 Jul 2026 17:29:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783186166; cv=none; b=Lg3VNgYRi5ktMWiG7Dddu7nBiakO22oYXkH1Goxg4MMnOLXmsKE0lBIie31AYSPHMCWzTLGtu0ktWYeYtPYRsOaXftHSCdi5Uc32XlF87OC4CCyy18nl2QkBpP7QGsr451LPN7BarsCG681pp/5z279LsWc14SZy+sAHY2L4Uc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783186166; c=relaxed/simple;
	bh=5T7A4d2YaZPHMcb6dQBzmy9eowheXtARtObUoukwPs4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=THBjkj9RzhMJMeG/2NQp9q1oKYuQzELbKrE7kVAIsWWSN5pWkwh4RG96yswYdKm1hxLG8/qMEwFvmTGy6TX4/WjJ1ny8YHHhnQd1SKJxKpM461NZVnC3askXDPWHT16x6EzWZDtLGUlcHVQrMKnLo+dXwBy6KVPnUOc2iAZUiCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oshOd3ZJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 474C71F000E9;
	Sat,  4 Jul 2026 17:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783186164;
	bh=ZLObji7vKNpj+qigrJiSF/az+7555U8AS/8ZK96zicg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oshOd3ZJlwtLJwjrYJqcJFtBJHnobgIDjkOexYnULmxWyxlY4z2NGT/i8Gh1zuxen
	 2YNkwgyxTwnAfsvOpBNp9jiSdgy3Pe2dXX/n8PMOp3G11iCSOEw1JyO4FqXHQ1lNU2
	 4dzkI/p43yxzsuDdaR1koZHOaYJ16LPr6jpcA7pmdrwAsfbQliryizj2+U42INPoHw
	 82DiK2wCTUYn5k81zJ3hMnEurVZSxgF/1eAggFX3We8RxstsVEXCJ7Jn7MkOWgC7Fk
	 CD9zT6BMwO2tDR2cCc9p/Fj7JSKUhEbobs/r51LzhMys0IoPnzHB4cpoXqQY2pxH9w
	 390BkWUVUlmBA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 4/5] thermal/drivers/sun8i: Add support for A523
 THS0/1 controllers
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mikhail Kalashnikov" <iuncuim@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, linux-sunxi@lists.linux.dev
In-Reply-To: <20260704171411.1413349-5-iuncuim@gmail.com>
References: <20260704171411.1413349-1-iuncuim@gmail.com>
 <20260704171411.1413349-5-iuncuim@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 04 Jul 2026 17:29:23 +0000
Message-Id: <20260704172924.474C71F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320497-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:iuncuim@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:linux-sunxi@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7C97470818C

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] The calibration check `if (!caldata[0])` will always fail and abor=
t calibration if bits 0-15 of the A523 eFuse are zero.
- [High] NULL pointer dereference if the `nvmem-cell-names` property is mis=
sing from the Device Tree.
- [Medium] Out-of-bounds heap read due to missing `callen` validation in `s=
un55i_a523_ths_calibrate`.
- [Medium] Calibration logic incorrectly hardcodes `SUN55I_A523_SCALE_ABOVE=
` to convert temperature error into a register offset.
--

commit ed04dff3819d46435d0d0c6fa95dfd782738eb1e
Author: Mikhail Kalashnikov <iuncuim@gmail.com>

thermal/drivers/sun8i: Add support for A523 THS0/1 controllers

The A523 processor has two temperature controllers, THS0 and THS1.
THS0 has only one temperature sensor, which is located in the DRAM
controller. THS1 does have 3 sensors:
ths1_0 - "big" cores
ths1_1 - "little" cores
ths1_2 - gpu

The datasheet mentions a fourth sensor in the NPU, but lacks any registers
for operation other than calibration registers. The vendor code reads the
value from ths1_2, but uses separate calibration data, so we get two
different values from real one.

> diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_ther=
mal.c
> index 3bdd62aa8bdf1..f48ed9eae6c4f 100644
> --- a/drivers/thermal/sun8i_thermal.c
> +++ b/drivers/thermal/sun8i_thermal.c

[ ... ]

> @@ -299,6 +314,97 @@ static int sun50i_h6_ths_calibrate(struct ths_device=
 *tmdev,

[ ... ]

> +static int sun55i_a523_ths_calibrate(struct ths_device *tmdev,
> +				     u16 *caldata, int callen)
> +{
> +	struct device *dev =3D tmdev->dev;
> +	int i, ft_temp;
> +
> +	if (!caldata[0])

[Severity: High]
If the device tree lacks the nvmem-cell-names property, the loop inside
sun8i_ths_calibrate() will be skipped entirely. This leaves caldata as
NULL when it is passed to the chip-specific calibrate callback:

sun8i_ths_calibrate() {
    ...
    of_property_for_each_string(...) {
        ...
    }
    tmdev->chip->calibrate(tmdev, (u16 *)caldata, callen);
    ...
}

Will checking !caldata[0] here cause a NULL pointer dereference in that
scenario?

[Severity: High]
According to the eFuse layout diagram in the comment block just above this
function, bits 0-15 are empty/unused, while the actual factory temperature
is stored in bits 24-35 (caldata[1] and caldata[2]).

If those unused eFuse bits are typically zero, will this check silently
abort the calibration process on the A523?

> +		return -EINVAL;
> +
> +	ft_temp =3D (((caldata[2] << 8) | (caldata[1] >> 8)) & FT_TEMP_MASK) * =
100;
> +
> +	for (i =3D 0; i < tmdev->chip->sensor_num; i++) {
> +		int sensor_reg, sensor_temp, cdata, offset;
> +		/*
> +		 * Chips ths0 and ths1 have common parameters for value
> +		 * calibration. To separate them we can use the number of
> +		 * temperature sensors on each chip.
> +		 * For ths0 this value is 1.
> +		 */
> +		if (tmdev->chip->sensor_num =3D=3D 1) {
> +			sensor_reg =3D ((caldata[5] >> 8) | (caldata[6] << 8)) & TEMP_CALIB_M=
ASK;

[Severity: Medium]
Is there a chance we might read out of bounds here if the provided nvmem
data is smaller than expected?

If the device tree or nvmem cell provides fewer bytes than the 14 bytes
required to access caldata[6], this could result in an out-of-bounds heap
read.

Should we validate callen before accessing these offsets?

> +		} else {
> +			switch (i) {
> +			case 0:
> +				sensor_reg =3D (caldata[2] >> 4) & TEMP_CALIB_MASK;
> +				break;

[ ... ]

> +		sensor_temp =3D tmdev->chip->calc_temp(tmdev, i, sensor_reg);
> +
> +		/*
> +		 * Calibration data is CALIBRATE_DEFAULT - (calculated
> +		 * temperature from sensor reading at factory temperature
> +		 * minus actual factory temperature) * X (scale from
> +		 * temperature to register values)
> +		 */
> +		cdata =3D CALIBRATE_DEFAULT -
> +			((sensor_temp - ft_temp) / SUN55I_A523_SCALE_ABOVE);

[Severity: Medium]
The sun55i_a523_calc_temp() function uses a piecewise formula depending
on the register value, applying either SUN55I_A523_SCALE_ABOVE or
SUN55I_A523_SCALE_BELOW.

However, the calibration offset calculation here unconditionally divides
the temperature error by SUN55I_A523_SCALE_ABOVE.

If the factory temperature corresponds to a register value in the
SUN55I_A523_SCALE_BELOW region, will dividing by the SCALE_ABOVE
value result in an inaccurate calibration offset?

> +
> +		if (cdata & ~TEMP_CALIB_MASK) {
> +			/*
> +			 * Calibration value more than 12-bit, but calibration
> +			 * register is 12-bit. In this case, ths hardware can

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260704171411.1413=
349-1-iuncuim@gmail.com?part=3D4

