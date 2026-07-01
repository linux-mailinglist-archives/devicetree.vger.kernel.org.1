Return-Path: <devicetree+bounces-318124-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ORUXB6OeRGo3yAoAu9opvQ
	(envelope-from <devicetree+bounces-318124-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 06:59:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3716E9C21
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 06:59:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jijyk4uB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318124-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318124-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 411A4303ACE2
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 04:58:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96FB838C42F;
	Wed,  1 Jul 2026 04:58:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4D62E974D
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 04:58:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782881938; cv=none; b=dauZatLfJmoA7SAvyvmu07nUAgj9TlMLlAP9lOwQye5jMmojruSCMbWL3iegAfWKw6CRqKmvDILkU0RpM4v5eu9C2ag5ukLrQIPQ4/0As0aByUN3+ZNvjLYOHYef7vFOg2mmATukX109ZzjG6riBXolkUnUyiZb4oBm8ayalcC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782881938; c=relaxed/simple;
	bh=GvSvSQA1fVYRi5RaPQgbeGIS4REMzN/bvQWTsKF5fD4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GxbsHDd6+ah6jQlrWZCQE841ipp6lx7GOCGp4qXq+pPhnrUYng5flBLn/mv4ejo0leVkpgRNgVc0aHkqAC01r/j/1TfKwkxstq77T7oLCCJzJcF21oOka9jl1L7Sflfmor2b3lbVK2/BIVTvNTEs0U2nTEffE6LgxfNEgeY0j0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jijyk4uB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FFA61F000E9;
	Wed,  1 Jul 2026 04:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782881936;
	bh=ZUFJWEaID1ToPozKQNYF8iR9KY+kApNY156lFPpktLw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jijyk4uB3KAqXrkmr7jO0X8LTzNRw10ipmiJ6GNlvDvs0Xki0EBEsS14IAwdUkgAI
	 /Jda8LfbyS8NRRJh7Bm/9bHHqvLHTD0nhp0aVpYNdhlMV2ZjmvYiRGlfp3uhZJomfg
	 ZlrMqO5ENEVXXAVIPsnWKGDjeWoP3fucvPW31UaYc+vrLey69Md8+zKA3pnJ/2Fwa+
	 4+8YH2E9nrylDmjNfP7ra+O1b5WztLVMuuI30bD2nh6DxG3573rTp7iomXMtb9XOt5
	 zL8MqtV8NEfG3f1K8Ieqlz/lsNEzdtmKOKkEI10GzdnewOMiZrhDud8OHoCTMwdC6m
	 Hatv3eIl4SEqw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/2] i2c: cadence: Add support for Axiado AX3000
Reply-To: sashiko-reviews@lists.linux.dev
To: "Swark Yang" <syang@axiado.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260630-axiado-ax3000-cadence-i2c-support-v3-2-4e217cfe5904@axiado.com>
References: <20260630-axiado-ax3000-cadence-i2c-support-v3-0-4e217cfe5904@axiado.com>
 <20260630-axiado-ax3000-cadence-i2c-support-v3-2-4e217cfe5904@axiado.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 04:58:56 +0000
Message-Id: <20260701045856.9FFA61F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318124-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:syang@axiado.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[axiado.com:email,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7E3716E9C21

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The I2C_AQ_NO_ZERO_LEN_READ adapter quirk is conditionally applied=
 only when CDNS_I2C_ENABLE_SMBUS_QUICK is set, leaving all other Cadence I2=
C controllers vulnerable to unprivileged hardware hangs triggered by 0-leng=
th reads.
- [High] Atomic mode transfers completely bypass error checking for short m=
essages, silently ignoring NACKs and incorrectly reporting success.
- [High] Incorrect teardown order in `cdns_i2c_remove` disables runtime PM =
before unregistering the I2C adapter, preventing client devices from commun=
icating during removal.
--

commit 64d28f7fd176831d6ec144e8d435ebe00982b497
Author: Swark Yang <syang@axiado.com>

i2c: cadence: Add support for Axiado AX3000

The Axiado AX3000 SoC integrates a Cadence I2C controller that supports
SMBus Quick commands. This introduces the compatible string and a quirk
to enable this functionality. It also adds I2C_AQ_NO_ZERO_LEN_READ to
prevent hardware hangs from 0-length reads.

> diff --git a/drivers/i2c/busses/i2c-cadence.c b/drivers/i2c/busses/i2c-ca=
dence.c
> index 0fb728ade92e4..1964ea1650c59 100644
> --- a/drivers/i2c/busses/i2c-cadence.c
> +++ b/drivers/i2c/busses/i2c-cadence.c
[ ... ]
> @@ -1175,10 +1176,14 @@ static int cdns_i2c_master_xfer_atomic(struct i2c=
_adapter *adap, struct i2c_msg
>   */
>  static u32 cdns_i2c_func(struct i2c_adapter *adap)
>  {
> +	struct cdns_i2c *id =3D adap->algo_data;
>  	u32 func =3D I2C_FUNC_I2C | I2C_FUNC_10BIT_ADDR |
>  			(I2C_FUNC_SMBUS_EMUL & ~I2C_FUNC_SMBUS_QUICK) |
>  			I2C_FUNC_SMBUS_BLOCK_DATA;
> =20
> +	if (id->quirks & CDNS_I2C_ENABLE_SMBUS_QUICK)
> +		func |=3D I2C_FUNC_SMBUS_QUICK;
> +

[Severity: High]
This is a pre-existing issue, but enabling SMBus Quick exposes a bug in
atomic transfers where short messages bypass error checking.

When performing a short write in atomic mode (like an SMBus Quick write
for bus scanning), cdns_i2c_msend() writes data to the FIFO and decrements
id->send_count to 0. This bypasses cdns_i2c_msend_rem_atomic(), which means
cdns_i2c_error_check() is never invoked.

cdns_i2c_process_msg() then polls for the completion bit but fails to
verify the NACK error bits because id->err_status was not updated.

Does this completely break atomic bus scanning, since all polled addresses
will falsely appear to exist and ACK? Furthermore, if the hardware does not
set the completion bit on a NACK, could the polling loop hit its maximum
timeout in atomic context for every NACKed address, leading to stalls?

>  #if IS_ENABLED(CONFIG_I2C_SLAVE)
>  	func |=3D I2C_FUNC_SLAVE;
>  #endif
[ ... ]
> @@ -1510,6 +1530,9 @@ static int cdns_i2c_probe(struct platform_device *p=
dev)
>  		id->quirks =3D data->quirks;
>  	}
> =20
> +	if (id->quirks & CDNS_I2C_ENABLE_SMBUS_QUICK)
> +		id->adap.quirks =3D &cdns_i2c_quirks;
> +

[Severity: High]
This isn't a bug introduced by this patch, but should the 0-length read
quirk be applied unconditionally to all Cadence controllers?

The commit message notes that writing 0 to the transfer size register leaves
the hardware in an unsupported state. As written, the quirk is conditionally
applied only when CDNS_I2C_ENABLE_SMBUS_QUICK is set.

Does this leave other Cadence I2C controllers (like legacy Zynq platforms)
vulnerable to unprivileged hardware hangs triggered by 0-length reads via
the I2C_RDWR ioctl?

[Severity: High]
This is another pre-existing issue, but there appears to be an incorrect
teardown order in cdns_i2c_remove() that prevents client devices from
communicating during removal:

drivers/i2c/busses/i2c-cadence.c:cdns_i2c_remove() {
    ...
	pm_runtime_disable(&pdev->dev);
	pm_runtime_set_suspended(&pdev->dev);
	pm_runtime_dont_use_autosuspend(&pdev->dev);

	i2c_del_adapter(&id->adap);
    ...
}

Because runtime PM is disabled before unregistering the adapter and its
child devices, any child driver's remove callback that performs I2C
transfers to quiesce the hardware will fail. The transfer invokes
cdns_i2c_master_xfer(), which calls pm_runtime_resume_and_get(). Since
runtime PM is already disabled, this returns -EACCES.

Could this prevent clean module unloads or suspend by leaving hardware in a
bad state?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630-axiado-ax3=
000-cadence-i2c-support-v3-0-4e217cfe5904@axiado.com?part=3D2

