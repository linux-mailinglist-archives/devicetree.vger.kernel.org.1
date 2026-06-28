Return-Path: <devicetree+bounces-316544-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7lrHJOiCQWrprgkAu9opvQ
	(envelope-from <devicetree+bounces-316544-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 22:24:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3D86D4E38
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 22:24:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316544-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316544-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6EA68300D6B7
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 20:24:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D02793B6344;
	Sun, 28 Jun 2026 20:24:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE9D3A2549
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 20:24:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782678245; cv=none; b=GtMTglQFUQiCOW2lmEJa6swgWjahoMs+AnttFLGMRU+5Q6B9HZjDVZaImBbAfs8fCiJ8oeA+C/Kq5BIDrn2H7EQu6ackocUNZwAio4uInVvkQRmnlwPAucq7G2ShuoQxf67vFVDoxqgJjB5dCbzCl8smxC4KYlGsMC61hORrjas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782678245; c=relaxed/simple;
	bh=J+EtlgeQFHl/nWsWbKn3kXmKZUyGn9tY50hcIYk5nVQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=rdMEfUrG0ysZk82GjYu/tMHwa8yw5X4Xi5e0Z/BhtAuWGzMC7lVzlosg1VgFhhB6IxSO9VajJLSAaibUaag15oBWJkcKobXXI+OdQeJbcdKiNJ9MDrtVVfqbZlii0jmY1fvgkTKWwRQxI/oAVkM+TAA3fyxIIXe6sK+THdx7gII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 616361F000E9;
	Sun, 28 Jun 2026 20:24:04 +0000 (UTC)
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v5 11/12] reset: zte: Add a zx297520v3 reset driver
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260628-zx29clk-v5-11-79ff044e4192@gmail.com>
References: <20260628-zx29clk-v5-0-79ff044e4192@gmail.com>
 <20260628-zx29clk-v5-11-79ff044e4192@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Jun 2026 20:23:55 +0000
Message-Id: <20260628202404.616361F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.54 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316544-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:stefandoesinger@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	R_DKIM_NA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DB3D86D4E38

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] Missing `MODULE_ALIAS` for the platform drivers prevents module =
autoloading if the auxiliary device is not present.
- [Medium] The Kconfig entry `RESET_ZTE_ZX297520V3` fails to `select MFD_SY=
SCON` or `depends on MFD_SYSCON`.
- [Low] The driver is missing the `#include <linux/module.h>` header, leadi=
ng to a build failure.
--

commit 2568a484547168ba23bd6f47affd8cc3aa186393
Author: Stefan D=C3=B6singer <stefandoesinger@gmail.com>

reset: zte: Add a zx297520v3 reset driver

This commit adds a reset driver for ZTE zx297520v3 SoCs. It registers two
platform drivers and one auxiliary driver to handle resets across different
hardware blocks.

> diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> index d009eb0849a3b..116dd23f1b8e3 100644
> --- a/drivers/reset/Kconfig
> +++ b/drivers/reset/Kconfig
[ ... ]
> @@ -404,6 +404,17 @@ config RESET_UNIPHIER_GLUE
>  	  on UniPhier SoCs. Say Y if you want to control reset signals
>  	  provided by the glue layer.
> =20
> +config RESET_ZTE_ZX297520V3
> +	tristate "ZTE zx297520v3 Reset Driver"
> +	depends on (ARCH_ZTE || COMPILE_TEST)
> +	default CLK_ZTE_ZX297520V3
> +	select AUXILIARY_BUS

[Severity: Medium]
Since this driver uses device_node_to_regmap() to acquire the parent syscon
regmap, should this config also select or depend on MFD_SYSCON?=20

If MFD_SYSCON is disabled, device_node_to_regmap() acts as a stub returning
-ENOTSUPP, which will cause the reset driver to unconditionally fail to pro=
be.

> +	help
> +	  This enables the reset controller for ZTE zx297520v3 SoCs. The reset
> +	  controller is part of the clock controller on this SoC. This driver
> +	  operates on an auxiliary device exposed by the clock driver. Enable
> +	  this driver if you plan to boot the kernel on a zx297520v3 based SoC.
> +
>  config RESET_ZYNQ
>  	bool "ZYNQ Reset Driver" if COMPILE_TEST
>  	default ARCH_ZYNQ

> diff --git a/drivers/reset/reset-zte-zx297520v3.c b/drivers/reset/reset-z=
te-zx297520v3.c
> new file mode 100644
> index 0000000000000..8ef4349042308
> --- /dev/null
> +++ b/drivers/reset/reset-zte-zx297520v3.c
[ ... ]
> +static struct platform_driver * const reset_zx297520v3_mfddrv[] =3D {
> +	&reset_zx297520v3_top,
> +	&reset_zx297520v3_matrix,
> +};

[Severity: Medium]
Since these platform drivers do not have an .of_match_table and match purel=
y by
name, do they need explicit MODULE_ALIAS declarations (such as
MODULE_ALIAS("platform:zx297520v3-toprst")) for proper udev module autoload=
ing?

Without these aliases, the module might only autoload when the auxiliary de=
vice
appears, creating a dependency on the LSP clock driver being loaded first.

[ ... ]
> +static void __exit reset_zx297520v3_exit(void)
> +{
> +	platform_unregister_drivers(reset_zx297520v3_mfddrv,
> +				    ARRAY_SIZE(reset_zx297520v3_mfddrv));
> +	auxiliary_driver_unregister(&reset_zx297520v3_auxdrv);
> +}
> +
> +module_init(reset_zx297520v3_init);
> +module_exit(reset_zx297520v3_exit);

[Severity: Low]
Does this file need to include <linux/module.h>?=20

Without it, building this as a loadable module could fail because macros li=
ke
module_init, module_exit, MODULE_AUTHOR, and MODULE_DESCRIPTION are not
provided by the other included headers.

> +
> +MODULE_AUTHOR("Stefan D=C3=B6singer <stefandoesinger@gmail.com>");
> +MODULE_DESCRIPTION("ZTE zx297520v3 reset driver");
> +MODULE_LICENSE("GPL");

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260628-zx29clk-v5=
-0-79ff044e4192@gmail.com?part=3D11

