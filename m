Return-Path: <devicetree+bounces-311178-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AssqDIl4LGoiRQQAu9opvQ
	(envelope-from <devicetree+bounces-311178-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 23:22:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA3B67C831
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 23:22:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Se+ZC0q0;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311178-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311178-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 707C230E1EB8
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 21:22:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C01CA38838A;
	Fri, 12 Jun 2026 21:22:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DBF93803DF
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 21:22:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781299334; cv=none; b=M64UoDl3484z0BUPE6wNdf+BzQ1BBCOztSG3ur0CWfI4yZUznYrcobW532qG6jFcFcHc0uwhzav7E55kPZZM5AS9kcxVG5Zv/AnkDEozSqygnmmtT8ntyOf5pzUSGQ0Ac/5dgmQJE+MZYRexbv9rIgfnkYxUuqpracDvko+EWSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781299334; c=relaxed/simple;
	bh=FD262fqJFTmndXtoYCyGcjM09nS4S2dbwErUx+0R22E=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=IpvXNZkPLBQ27Y8o3WiuaidhqtJfTesxYN+YDvCikTsNja5IsOkYKBpxXr7gr3I9fpnT6+rMqb519Cac6L7ny2KXlmq+/MXM9SC3v0CZ9E5K0lIIdzYSc6mWs+YQXf1KwkiIPorGD4VfztZ2LnmN+aWfjjOu+4GtouQRowMUlLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Se+ZC0q0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CADA31F000E9;
	Fri, 12 Jun 2026 21:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781299333;
	bh=4xa8l5srXDydqLJfXXaIKo78B/V7RE2Nj6WXcpFO6Q0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Se+ZC0q0G+9KYshfArFAfwi5vjRgPcRuJ/xKJrWRJJ/TldVp+LA90YH8HtrHjcIqx
	 WQ6kUe8KcNYz8NdeY9iAt+T2KtfZErE8KksGf6j09JhWUcAkJAwS1UVQ3AV22M2+Wt
	 vOziV8EdWviT+f/AfbbfKZ3+SHCYk1GiXIN4AFGI5Iz9r9KYtnN0nf/c4OuMFn2ms4
	 KHVxY7TTCLUh3/rdX6Ov1OMTMmwwf18x0B7i9z2oSLvBOPAn2SVesz8t90upf2qApM
	 1lslJ5pnxzlqlITRFSmGW8ct6VsZI+IqKrrMi/0ys/xKKbDszPrFw44wVHxhoF1wbm
	 Y+oob/Iz8IhPQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 phy-next 7/8] soc: fsl: guts: implement the RCW
 override procedure
Reply-To: sashiko-reviews@lists.linux.dev
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260612210859.266759-8-vladimir.oltean@nxp.com>
References: <20260612210859.266759-8-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 21:22:11 +0000
Message-Id: <20260612212212.CADA31F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311178-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:vladimir.oltean@nxp.com,m:linux-phy@lists.infradead.org,m:vkoul@kernel.org,m:olteanv@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com,vger.kernel.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7FA3B67C831

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] Failure to clear global pointers on error paths allows exported AP=
Is to operate on dangling I/O pointers.
- [High] The Read-Modify-Write logic relies on a read-only boot status regi=
ster, causing runtime overrides on other lanes to be silently discarded.
- [Medium] Direct returns and bypassed error labels in `fsl_guts_init` leak=
 I/O memory mappings.
- [Medium] Exported APIs contradict their own zero-based indexing documenta=
tion and lack parameter bounds checking.
--

commit 2b919af199a087611275f238825912a50ae47330
Author: Ioana Ciornei <ioana.ciornei@nxp.com>
Date:   Fri Jun 12 21:08:58 2026 +0000

    soc: fsl: guts: implement the RCW override procedure
   =20
    Add support for the RCW override procedure which enables runtime
    reconfiguration of the protocol running on a SerDes lane. The procedure
    is done through the DCFG DCSR space which now can be defined as the
    second memory region of the guts DT node.

> diff --git a/drivers/soc/fsl/guts.c b/drivers/soc/fsl/guts.c
> index 9f2aff07a2744..0fa2bd99d3c10 100644
> --- a/drivers/soc/fsl/guts.c
> +++ b/drivers/soc/fsl/guts.c

[ ... ]

> +/* Some fields of the Reset Configuration Word (RCW) can be overridden at
> + * runtime by writing to the RCWCRn registers contained within the DCSR =
space
> + * of the Device Configuration (DCFG) block. The layout of the RCWCRn re=
gisters
> + * is identical with the read-only RCWSRn from the CCSR space.
> + */
> +static void fsl_guts_rmw(int offset, u32 val, u32 mask)
> +{
> +	u32 tmp =3D fsl_guts_read(&soc.dcfg_ccsr->rcwsr[offset]);
> +
> +	tmp &=3D ~mask;
> +	tmp |=3D val;
> +	fsl_guts_write(&soc.dcfg_dcsr->rcwcr[offset], tmp);
> +}

[Severity: High]
Does this read-modify-write logic accidentally discard previous runtime
overrides?

Since rcwsr is a read-only boot status register, it reflects the static boot
state. If multiple lanes share the same register, reading from rcwsr to upd=
ate
a subsequent lane will overwrite any dynamic configurations previously writ=
ten
to the write-only rcwcr register.=20

Would it be safer to use a software shadow register to track the runtime st=
ate
of rcwcr?

[ ... ]

> +/**
> + * fsl_guts_lane_init() - Notify guts module of SerDes lane configuration
> + * @serdes_idx: zero-based SerDes block index
> + * @lane: zero-based lane index within SerDes
> + *
> + * On the LS208xA SoC, the RCW override procedure needs to be aware of a=
ll link
> + * modes which are configured on a SerDes block.
> + */
> +void fsl_guts_lane_init(int serdes_idx, int lane, enum lynx_lane_mode la=
ne_mode)
> +{
> +	soc.lane_mode[serdes_idx - 1][lane] =3D lane_mode;
> +}
> +EXPORT_SYMBOL_NS_GPL(fsl_guts_lane_init, "FSL_GUTS");

[Severity: Medium]
Is the documentation out of sync with the implementation?

The docstring specifies that serdes_idx is a zero-based index, but the code
subtracts 1. If a caller follows the documentation and passes 0, won't this
result in an out-of-bounds array access?

Additionally, is there a risk of out-of-bounds access if the lane parameter
exceeds MAX_NUM_LANES? An unvalidated lane value could also cause undefined
behavior later when expanded by the GENMASK macros in the override lookup
functions.

[ ... ]

> @@ -250,6 +522,8 @@ static int __init fsl_guts_init(void)
>  		of_node_put(np);
>  		return -ENOMEM;
>  	}
> +	/* DCFG_DCSR is optional */
> +	soc.dcfg_dcsr =3D of_iomap(np, DCFG_DCSR);
> =20
>  	soc.little_endian =3D of_property_read_bool(np, "little-endian");
>  	soc.svr =3D fsl_guts_read(&soc.dcfg_ccsr->svr);
> @@ -274,7 +548,7 @@ static int __init fsl_guts_init(void)
>  	/* Register soc device */
>  	soc_dev_attr =3D kzalloc_obj(*soc_dev_attr);
>  	if (!soc_dev_attr)
>  		return -ENOMEM;

[Severity: Medium]
Will this direct return leak the I/O memory mapped earlier?

If kzalloc_obj() fails, the function returns immediately without unmapping
soc.dcfg_ccsr or the newly added soc.dcfg_dcsr.

[ ... ]

> @@ -296,6 +570,8 @@ static int __init fsl_guts_init(void)
>  		goto err;
>  	}

[Severity: Medium]
Does jumping to the err label skip the necessary unmapping?

If soc_device_register() fails, the code uses goto err. Because err is
placed after err_nomem, the iounmap() calls are bypassed, leaving the memory
mappings leaked.

[ ... ]

>  err_nomem:
>  	ret =3D -ENOMEM;
> -
> +	if (soc.dcfg_dcsr)
> +		iounmap(soc.dcfg_dcsr);
>  	iounmap(soc.dcfg_ccsr);
>  err:
>  	kfree(soc_dev_attr->family);

[Severity: High]
Should the global pointers be set to NULL after unmapping?

If fsl_guts_init() fails, it unmaps soc.dcfg_ccsr and soc.dcfg_dcsr but
leaves the global pointers dangling. Since this is a core_initcall, the boot
process will continue even if initialization fails.

If an exported API like fsl_guts_lane_set_mode() is called later, it checks
the pointer validity:

	if (!soc.dcfg_dcsr) {
		pr_debug("Device tree does not define DCFG_DCSR...");
		return -EINVAL;
	}

Since the pointer isn't NULL, this validation passes, which could lead to a
use-after-free when the driver attempts to write to the unmapped memory or
acquires the uninitialized spinlock.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612210859.2667=
59-1-vladimir.oltean@nxp.com?part=3D7

