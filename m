Return-Path: <devicetree+bounces-297803-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEMmC6UtBmpsfwIAu9opvQ
	(envelope-from <devicetree+bounces-297803-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 22:16:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B372546ADD
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 22:16:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D603F3012EB9
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 20:15:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AC31388360;
	Thu, 14 May 2026 20:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5heYLC6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085E334EF1C
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 20:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778789751; cv=none; b=WjjH4NThmbpT0qJ8I1ou/T0i+BQcDuaJGoiga+SwH3JiyfiPrznxoYn9+TyhqzFzeQbBMvP5X6j7c7pK4puYUL2OeuhG0oRFpeGmM13pj6LySP2s6z/XJ9gCu9WY+8sfoKGIOXNAT53W1H25DQICG7Zzee9StVtwKWWPbVNtZI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778789751; c=relaxed/simple;
	bh=YX8v27UKa2NBGcchXYv5gvB5WGW0SUMjUpN6yRTWI9c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mNNgUtsb2strME98NKGQeafcd3AduZdT+5RN3BEiDQoJRdA28tFTVtfE5gv1K3Dlvuhj1Cq0aKLytMmROrSn6TDILldy9QC179XdZAKOqkQrJXbl0UDH2eJx15R9pgn6z1se1ThtRn9O34+/baN53WIrk4YuPymwHf3vWcOd0x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5heYLC6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51090C2BCB3;
	Thu, 14 May 2026 20:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778789750;
	bh=YX8v27UKa2NBGcchXYv5gvB5WGW0SUMjUpN6yRTWI9c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=T5heYLC6my92ndOoR+/K3BrjlGJX1KoqoH4ihYR30VGb7ytK8qkuUsReqZB24EEOD
	 0MqL4Dj97W2MQ8lPTYn/Rbo8bwrg8wEQDxs75OR8sGHJi6pq9a9+nzrYFWfSq8yEkT
	 8y7z1YijXY8ByiU0fihbVSpt8BQma+TIDoK0hhc9Hs+kx9zaG4uQcUaEJrm4BqbHXu
	 G2IvTB02mHJZSQ2dv5q5TeEdFtE7g7mzwNwKU681fk1etq1bTN0mH+4T8Eh6GrV2p+
	 pAJvy2fmpZEnTXrwQRBVbzewjfJylYrD/JNn+XZPZE7HzFVK/u/w1kG2nEodOf8lA/
	 gMe9nXZLzOUQw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v22 02/13] power: reset: reboot-mode: Add support for 64
 bit magic
Reply-To: sashiko-reviews@lists.linux.dev
To: "Shivendra Pratap" <shivendra.pratap@oss.qualcomm.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260514-arm-psci-system_reset2-vendor-reboots-v22-2-28a5bde07483@oss.qualcomm.com>
References: <20260514-arm-psci-system_reset2-vendor-reboots-v22-2-28a5bde07483@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 20:15:49 +0000
Message-Id: <20260514201550.51090C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 8B372546ADD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297803-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Implicit integer underflow masks negative error codes returned by `=
device_property_count_u32()`.
--

commit 8477e879bf98a4cbb06ad4a10e04a5b704bf488c
Author: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>

power: reset: reboot-mode: Add support for 64 bit magic

The commit modifies the reboot-mode driver to support 64-bit magic values,
allowing up to two 32-bit arguments to be passed during a reboot sequence.
This is useful for firmware-based resets like ARM PSCI vendor-specific rese=
ts
that require multiple arguments. Existing reboot-mode drivers are updated
to handle the 64-bit magic.

> diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/rebo=
ot-mode.c
> index 7a74f72a8313b..f1372dc700e48 100644
> --- a/drivers/power/reset/reboot-mode.c
> +++ b/drivers/power/reset/reboot-mode.c
[ ... ]
> @@ -175,16 +174,22 @@ int reboot_mode_register(struct reboot_mode_driver =
*reboot)
>  	struct property *prop;
>  	struct device_node *np =3D reboot->dev->of_node;
>  	size_t len =3D strlen(PREFIX);
> -	u32 magic;
> +	size_t count;
> +	u32 magic[2];
>  	int ret;
> =20
>  	INIT_LIST_HEAD(&reboot->head);
> =20
>  	for_each_property_of_node(np, prop) {
> +		memset(magic, 0, sizeof(magic));
> +
>  		if (strncmp(prop->name, PREFIX, len))
>  			continue;
> =20
> -		if (device_property_read_u32(reboot->dev, prop->name, &magic)) {
> +		count =3D device_property_count_u32(reboot->dev, prop->name);

Does this implicitly underflow count? device_property_count_u32() returns an
int, which can be a negative error code (like -EINVAL or -ENODATA) if the
property parsing fails. Assigning it to a size_t will wrap negative errors
into very large positive unsigned integers.

> +
> +		if (!count || count > ARRAY_SIZE(magic) ||
> +		    device_property_read_u32_array(reboot->dev, prop->name, magic, cou=
nt)) {

While count > ARRAY_SIZE(magic) will successfully catch the wrapped negative
error code because the large positive value exceeds 2, relying on unsigned
integer wraparound for error handling can be brittle.

Should count be declared as an int to explicitly check for negative error
codes returned from device_property_count_u32()?

>  			pr_debug("reboot mode %s without magic number\n", prop->name);
>  			continue;
>  		}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514-arm-psci-s=
ystem_reset2-vendor-reboots-v22-0-28a5bde07483@oss.qualcomm.com?part=3D2

