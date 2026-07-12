Return-Path: <devicetree+bounces-324955-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VxkXLOP8UmqrVwMAu9opvQ
	(envelope-from <devicetree+bounces-324955-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 04:33:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A7339743962
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 04:33:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=S75jUjQR;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324955-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-324955-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A81CF3002D0B
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 02:33:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BFFC368D4D;
	Sun, 12 Jul 2026 02:33:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AE436895D;
	Sun, 12 Jul 2026 02:32:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783823582; cv=none; b=qZtTHqM/4azMQyudaBJwn+QJ2Zb3AwvG4Z6D7xw8DOMcFwJ61KLzrEBdYqH3RCx8D2w0ObgaSiXFVBMK8hqGzxWQJ0qYnT26i3XE/T46/oYsNIEEV2ck9OjhKhXoa6YXzsrj7nRNA9SU+6NM7Fhx0BzLjvRIGJ6H0gaafMRZftc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783823582; c=relaxed/simple;
	bh=3MEcxEEnR1dzqIk1rT7Vg51fawrb4GR0Vl54FGds7D8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=DRNm31qT0J9uz68uCJvyMOlH86Pn9ar0VmTno2Vtx7vrnqFCCE5Kratwl+2urVXg0E3x3kIoN8cAHhQvpm9LFXhIx25AD7BHKpKrwnM8mqQqpkwVIGZkOLwTuBIn3vQ1jeLSCFn5bj+tpLOilWtMH56/DG7KcVMRFkm4i81UntU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S75jUjQR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BAA41F000E9;
	Sun, 12 Jul 2026 02:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783823576;
	bh=nqjTaKp//lqAHj0pBUZIH3R9fN//5aELSSg3oQ88xkc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=S75jUjQRjAgwT1UmrXoZT6R+7puYJPuhw7YR18uHq8D1v1fdpFNXAKTFTxJM7SfP3
	 kKHcWWAxBAERUvfHj8yq/xEJ5rsnUp+hhyARwQpkd94WEfWoKBx/gAFe+qyakNa8Lp
	 yHjDCK7BD6mC9fJmWIvDrefV8tafKUGPwadlBQQ3aERsgXyG5sgJkEE1oCyqB/YYRO
	 3o1vT9CNnEqgZ12idH+vdrSlCCAn43nG4choLIZhOPsRNKHxDpP3r13bMi3CHzaoZT
	 HzDBFYEKJFoQ9GPgeBvOg8sj+RbGkoYb+TQ3xpiKoYBRyjlIZcRXcqBfQ+u3CEUXQu
	 YwN1DdrBBN6pQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 08/10] ARM: s3c: crag6410: convert PMIC DVS GPIO to
 software properties
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Torokhov" <dmitry.torokhov@gmail.com>
Cc: dmitry.torokhov@gmail.com, conor+dt@kernel.org, linux-input@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260711-samsung-kp-v3-8-b2fcaba77aff@gmail.com>
References: <20260711-samsung-kp-v3-0-b2fcaba77aff@gmail.com>
 <20260711-samsung-kp-v3-8-b2fcaba77aff@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Jul 2026 02:32:54 +0000
Message-Id: <20260712023255.0BAA41F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324955-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dmitry.torokhov@gmail.com,m:conor+dt@kernel.org,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A7339743962

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Dynamic amendment of mfd_cell array using kmemdup_array violates=
 MFD guidelines.
--

--- Patch [8]: [PATCH v3 08/10] ARM: s3c: crag6410: convert PMIC DVS GPIO t=
o software properties ---
commit 71a506655ae9f68a5ef7d764d51d6d48703e4dcb
Author: Dmitry Torokhov <dmitry.torokhov@gmail.com>

ARM: s3c: crag6410: convert PMIC DVS GPIO to software properties

Convert the PMIC DVS GPIO configuration from a legacy lookup table to
software properties. We use the new 'dcdc_swnodes' field in 'struct
wm831x_pdata' to pass the software node to the regulator driver.

> diff --git a/arch/arm/mach-s3c/mach-crag6410.c b/arch/arm/mach-s3c/mach-c=
rag6410.c
> index 757c0f383ff1e..1abf08fdb543c 100644
> --- a/arch/arm/mach-s3c/mach-crag6410.c
> +++ b/arch/arm/mach-s3c/mach-crag6410.c

[ ... ]

> @@ -633,6 +644,9 @@ static struct wm831x_pdata crag_pmic_pdata =3D {
>  		&vddint,  /* DCDC2 */
>  		&vddmem,  /* DCDC3 */
>  	},
> +	.dcdc_swnodes =3D {
> +		&crag_dcdc1_swnode,
> +	},

[Severity: Medium]
Is it possible that populating the new 'dcdc_swnodes' field relies on the M=
FD
core dynamically allocating and amending the mfd_cell array at runtime?

Looking at wm831x_add_devices() in drivers/mfd/wm831x-core.c, passing
these software nodes causes the core driver to dynamically copy the cell
array to inject the pointers:

drivers/mfd/wm831x-core.c:wm831x_add_devices() {
    ...
	struct mfd_cell *local_cells __free(kfree) =3D
		kmemdup_array(cells, num_cells, sizeof(*cells), GFP_KERNEL);
    ...
}

The MFD subsystem guidelines explicitly state: "For mfd_cells, do not create
local copies for dynamic amendments; always use static references." Could t=
his
approach be violating the subsystem's architectural rules against dynamic c=
ell
amendments?

> =20
>  	.ldo =3D {
>  		&vddsys,   /* LDO1 */

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260711-samsung-kp=
-v3-0-b2fcaba77aff@gmail.com?part=3D8

