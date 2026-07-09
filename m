Return-Path: <devicetree+bounces-323391-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5FPXIkhST2qteQIAu9opvQ
	(envelope-from <devicetree+bounces-323391-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 09:48:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 152CE72DEE5
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 09:48:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ko2dVvps;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323391-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323391-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E58E23025C25
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 07:44:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 534B23CCFD4;
	Thu,  9 Jul 2026 07:44:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1545243933F;
	Thu,  9 Jul 2026 07:44:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783583066; cv=none; b=ZCqLtaS/d3aYHMlFAEe7dnKa6Wah6Gj9hq0yEb8SH8dleVMQLkR3dyaWyi0aPLyX+7X9EZX6xWmriF6hg2Z0Ctg+MWYlIAFHE6pDHxr/zaWaI/ZsH5Ek4BA66enyE0Ql79ezFfpCFR14D3QwxEfsEem4hbBB70NqmwHR9fsw1r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783583066; c=relaxed/simple;
	bh=24Ty8QaEk4IZnM8cjXMLZ6Q7hW1C6Vp086jLX/HLD1U=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JT6+rfHrYbk7L6Mr82Jg8buLcoRLP99PCndLwB/fbLFLyKXw+Oa3DGoT+n+vZEiun0Bmk6G23JKD+AL+mCYPP6UWMbJuIY8vZhHA8T1PCITLnGujDfLPHE5y6UP+9LA0XjCxgTu9mNaF/fuOvVqvqr10FXDQaEpaBPPYYAFKj8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ko2dVvps; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B6B81F000E9;
	Thu,  9 Jul 2026 07:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783583064;
	bh=DBbAu2hpvVcH6ZDiXV5Ek+3+kEeeH/txWl11z1Wfev0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ko2dVvpsog8fpwYqdtM/9hs3nb+VOE9FIiPuObmB5z7Vl240sCLZib5HVoD6iKaaC
	 PFXyt/KRdNGduvtNVZL6zwqvMvh/YdzZuYm6IYb06LVzM2thYsW8ZgdExuMmXtFtk3
	 iOuvc5c+ttVa+VPN98EoCNQKdX/3SO+iIBfObyBLdKuTUx98L+FsE9et6aG6Quvj0C
	 jUI7k0f3fQO3i6G6O15eL/LP7oleLaQFqYmr+K9s9ehvYpUxKuUvlKmjZ9sjjNhg3E
	 D86NL/k2GFVBHf/gTMbSrgr3/HRM+m/0tP85TwENmKGLEftyXu9T7xMqfpaumLftdB
	 i9fPGla5F3v8g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/3] power: sequencing: pcie-m2: Deassert W_DISABLE2#
 when no UART serdev is created
Reply-To: sashiko-reviews@lists.linux.dev
To: "Wei Deng" <wei.deng@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, linux-pci@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260709-fix-hamoa-m2-w-disable2-v1-3-5e725091266a@oss.qualcomm.com>
References: <20260709-fix-hamoa-m2-w-disable2-v1-0-5e725091266a@oss.qualcomm.com>
 <20260709-fix-hamoa-m2-w-disable2-v1-3-5e725091266a@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 07:44:24 +0000
Message-Id: <20260709074424.7B6B81F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323391-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,qualcomm.com:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:wei.deng@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:linux-pci@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 152CE72DEE5

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [High] Unconditional toggling of shared W_DISABLE2# GPIO causes premature=
 assertion for multi-function PCI devices.
- [High] Missing cleanup of manually managed W_DISABLE2# GPIO on module rem=
oval and probe error paths.

Pre-existing issues:
- [High] Missing notification of PCI devices hotplugged between existing de=
vice iteration and notifier registration.
--

--- Patch [3]: [PATCH 3/3] power: sequencing: pcie-m2: Deassert W_DISABLE2#=
 when no UART serdev is created ---
commit b301a8670a82271ce018fc9f630c8d02f37d6f72
Author: Wei Deng <wei.deng@oss.qualcomm.com>
Subject: power: sequencing: pcie-m2: Deassert W_DISABLE2# when no UART serd=
ev is created

This commit modifies the PCIe M.2 power sequencing driver to handle
non-UART Bluetooth devices, such as USB variants. It deasserts the
W_DISABLE2# GPIO for devices not in the UART list to allow them to
enumerate, and reasserts it symmetrically upon device removal.

> diff --git a/drivers/power/sequencing/pwrseq-pcie-m2.c b/drivers/power/se=
quencing/pwrseq-pcie-m2.c
> index cf51122d54fdf..06eb5eb0676bd 100644
> --- a/drivers/power/sequencing/pwrseq-pcie-m2.c
> +++ b/drivers/power/sequencing/pwrseq-pcie-m2.c

[ ... ]

> @@ -401,11 +401,23 @@ static int pwrseq_pcie_m2_notify(struct notifier_bl=
ock *nb, unsigned long action
>  			ret =3D pwrseq_pcie_m2_create_serdev_one(ctx, pdev);
>  			if (ret)
>  				return notifier_from_errno(ret);
> +		} else if (ctx->w_disable2_gpio) {
> +			/*
> +			 * PCIe device not in the UART BT table. This covers
> +			 * USB BT variants of the same combo chip (same PCIe
> +			 * device ID, different sub-system ID, BT exposed over
> +			 * USB instead of UART). No UART serdev is needed, but
> +			 * W_DISABLE2# must be deasserted to enable the BT
> +			 * subsystem so the USB BT interface can enumerate.
> +			 */
> +			gpiod_set_value_cansleep(ctx->w_disable2_gpio, 0);
>  		}
>  		break;
>  	case BUS_NOTIFY_REMOVED_DEVICE:
>  		if (pci_match_id(pwrseq_m2_pci_ids, pdev))
>  			pwrseq_pcie_m2_remove_serdev(ctx, pdev);
> +		else if (ctx->w_disable2_gpio)
> +			gpiod_set_value_cansleep(ctx->w_disable2_gpio, 1);

[Severity: High]
If a multi-function M.2 combo card exposes multiple PCI functions (e.g., a
dual-function endpoint where both functions share the same root port parent=
),
does this code prematurely power off the Bluetooth subsystem when one
function is removed?

Adding a multi-function non-UART PCI device triggers BUS_NOTIFY_ADD_DEVICE
multiple times (once per function), which will redundantly set the GPIO
to 0.

When one of these functions is later unbound or removed,
BUS_NOTIFY_REMOVED_DEVICE fires and unconditionally sets the GPIO to 1.

Will this break the remaining active functions and the USB BT subsystem
since there is no state tracking or refcounting for the GPIO toggling?

[ ... ]

> @@ -469,16 +481,17 @@ static int pwrseq_pcie_m2_create_serdev(struct pwrs=
eq_pcie_m2_ctx *ctx)
>  		if (!pdev->dev.parent || pci_parent !=3D pdev->dev.parent->of_node)
>  			continue;
> =20
> -		if (!pci_match_id(pwrseq_m2_pci_ids, pdev))
> -			continue;
> -
> -		ret =3D pwrseq_pcie_m2_create_serdev_one(ctx, pdev);
> -		if (ret) {
> -			dev_err_probe(ctx->dev, ret,
> -				      "Failed to create serdev for PCI device (%s)\n",
> -				      pci_name(pdev));
> -			pci_dev_put(pdev);
> -			goto err_remove_serdev;
> +		if (pci_match_id(pwrseq_m2_pci_ids, pdev)) {
> +			ret =3D pwrseq_pcie_m2_create_serdev_one(ctx, pdev);
> +			if (ret) {
> +				dev_err_probe(ctx->dev, ret,
> +					      "Failed to create serdev for PCI device (%s)\n",
> +					      pci_name(pdev));
> +				pci_dev_put(pdev);
> +				goto err_remove_serdev;
> +			}
> +		} else if (ctx->w_disable2_gpio) {
> +			gpiod_set_value_cansleep(ctx->w_disable2_gpio, 0);
>  		}
>  	}
> =20

[Severity: High]
Does this error path leak the hardware state if an error occurs after the
GPIO has been deasserted?

If pwrseq_pcie_m2_create_serdev() fails on a subsequent PCI device in the
loop, it jumps to err_remove_serdev. That cleanup path removes the UART
serdevs but does not appear to reset w_disable2_gpio to 1 for non-UART
devices.

Additionally, during driver removal in pwrseq_pcie_m2_remove(), the GPIO
is not symmetrically re-asserted. Can this leave the hardware permanently
powered on after driver unload?

[Severity: High]
This isn't a bug introduced by this patch, but is there a race condition
between iterating existing PCI devices and registering the notifier in
pwrseq_pcie_m2_probe()?

In pwrseq_pcie_m2_probe(), the code first invokes
pwrseq_pcie_m2_create_serdev() to handle existing devices, and then calls
pwrseq_pcie_m2_register_notifier().

If a PCI device is enumerated or hot-added in the narrow window between
these two statements, it seems it would be entirely missed, resulting in
missing hardware initialization.

Should the notifier be registered before iterating existing devices to
close this window?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-fix-hamoa-=
m2-w-disable2-v1-0-5e725091266a@oss.qualcomm.com?part=3D3

