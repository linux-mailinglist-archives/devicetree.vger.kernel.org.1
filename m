Return-Path: <devicetree+bounces-326377-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WxgVE+pwVmpx5gAAu9opvQ
	(envelope-from <devicetree+bounces-326377-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:24:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B608175760D
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:24:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eCdHXRIq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326377-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326377-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 535D33012EA2
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 17:24:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFBE21E5B63;
	Tue, 14 Jul 2026 17:24:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A972E35E1AC;
	Tue, 14 Jul 2026 17:24:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784049885; cv=none; b=Jcn5zkthDKuhShBTFwG8jnmTiAO/HGGQv+5UX5tILfI587gJLo/PpOgJwXE28+z75gYf+OG4JdRajfEBm75NI57idlRuTFhTBgkbSXg8jWwvKzbgdMNQThvP+3IR1LJFHeZS7fzV8+SQr3ruYlHOeqPg+CcChlYW8h83ckab+yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784049885; c=relaxed/simple;
	bh=A2RXnB6k5hIFxvjAC7nXy+lImuD1tOqqeTSimjiHZLA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=iSzzquqNz1maiqbLAiJtDE4BRXZJoa67By18Xu6rkNLYUHy9wEOx3addFY3dFteDUhQ9/0lrliM3Xnm7YujiPFbkQhyHvquMD42iJpRUYwVaKv1rLsCc++YDExl1cVwiVaPpo4v32Wr91EmO7ZyKVz+6Jezbv2h8eFP/VdHtIR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCdHXRIq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 080241F00A3D;
	Tue, 14 Jul 2026 17:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784049884;
	bh=BK7ySUrlWNos3wbks6fvBjJt3enm7gjfZ58bNHqecpU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eCdHXRIqgJyR73v2s1szpgXWZvFt5IIvwQhnHlaw1Z+wDNtpNmUrKs3ClPCjLhnpU
	 6c13EYPfLLlM2O2AVER14SYMNDGSM/Zq8Usqnf6hgZeonyE2EVZLU1IoZDEKkpOeBo
	 UiKnhXEaLAZcfrvo38VOxxkx3oljluDQdWA4ciL9fFb5GJgiJyoJpDpIg5JwVTC4mw
	 95+XIZJ3QhS3RUFdEAAKTJXV1k+Xe60nEbodojmoHv6vCpfZSQEn0judk91gg7EgEd
	 P3YEgycM2BnrSwgLw9qMVzq33COv1yJBvMHhv5nqLxiaQpfyWnE2/An1wiguFgGDgr
	 IqHe6eBsPn9vg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v23 09/13] mfd: psci-mfd: Add psci-reboot-mode child
 cell
Reply-To: sashiko-reviews@lists.linux.dev
To: "Shivendra Pratap" <shivendra.pratap@oss.qualcomm.com>
Cc: mfd@lists.linux.dev, lee@kernel.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260714-arm-psci-system_reset2-vendor-reboots-v23-9-e7453c548c21@oss.qualcomm.com>
References: <20260714-arm-psci-system_reset2-vendor-reboots-v23-0-e7453c548c21@oss.qualcomm.com>
 <20260714-arm-psci-system_reset2-vendor-reboots-v23-9-e7453c548c21@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 17:24:42 +0000
Message-Id: <20260714172443.080241F00A3D@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-326377-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,qualcomm.com:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shivendra.pratap@oss.qualcomm.com,m:mfd@lists.linux.dev,m:lee@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B608175760D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The probe function `psci_mfd_probe` ignores the return value of `d=
evm_mfd_add_devices()` for the `psci_reboot_mode_cell` child device, violat=
ing the MFD subsystem guideline requiring probe failures to be propagated a=
nd unwound.
--

--- Patch [9]: [PATCH v23 09/13] mfd: psci-mfd: Add psci-reboot-mode child =
cell ---
commit 73724460c58fad980d9dd8ef39b9485acffad30e
Author: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>

mfd: psci-mfd: Add psci-reboot-mode child cell

This commit adds the psci-reboot-mode child cell to the psci-mfd driver.=20
It retrieves the reboot-mode firmware node and registers the new cell=20
using devm_mfd_add_devices if the node is present.

> diff --git a/drivers/mfd/psci-mfd.c b/drivers/mfd/psci-mfd.c
> index 7affd6bb09dd8..8c6b78ac471bf 100644
> --- a/drivers/mfd/psci-mfd.c
> +++ b/drivers/mfd/psci-mfd.c

[ ... ]

> @@ -14,10 +15,37 @@ static const struct mfd_cell psci_cells[] =3D {
>  	},
>  };
> =20
> +static const struct mfd_cell psci_reboot_mode_cell[] =3D {
> +	{
> +		.name =3D "psci-reboot-mode",
> +		.named_fwnode =3D "reboot-mode",
> +	},
> +};
> +
>  static int psci_mfd_probe(struct platform_device *pdev)
>  {
> -	return devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_AUTO, psci_cells,
> +	struct fwnode_handle *fwnode;
> +	int ret;
> +
> +	ret =3D devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_AUTO, psci_cell=
s,
>  				   ARRAY_SIZE(psci_cells), NULL, 0, NULL);
> +	if (ret)
> +		return ret;
> +
> +	fwnode =3D device_get_named_child_node(&pdev->dev, "reboot-mode");
> +	if (!fwnode)
> +		return 0;
> +
> +	fwnode_handle_put(fwnode);
> +
> +	ret =3D devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_AUTO,
> +				   psci_reboot_mode_cell,
> +				   ARRAY_SIZE(psci_reboot_mode_cell),
> +				   NULL, 0, NULL);
> +	if (ret)
> +		dev_warn(&pdev->dev, "reboot-mode child cell failed to add: %d\n", ret=
);
> +
> +	return 0;

[Severity: High]
Should this propagate the error code instead of returning 0?

The MFD subsystem guidelines specify that if a child device fails to regist=
er
during probe, the entire probe must fail and unwind previously registered
children. By returning 0 here, the MFD device is left in a partially
initialized state if the psci-reboot-mode cell fails to register.

>  }
> =20
>  static const struct of_device_id psci_mfd_of_match[] =3D {

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-arm-psci-s=
ystem_reset2-vendor-reboots-v23-0-e7453c548c21@oss.qualcomm.com?part=3D9

