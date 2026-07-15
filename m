Return-Path: <devicetree+bounces-327061-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PELECdOQV2q9XAAAu9opvQ
	(envelope-from <devicetree+bounces-327061-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 15:53:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2917375F048
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 15:53:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SlgdfItQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327061-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-327061-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 44B10301BF52
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:46:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 101382F8E9F;
	Wed, 15 Jul 2026 13:46:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F073043CE
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 13:46:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784123211; cv=none; b=IhIqRN4Pr6oneSo0Rc88MprU5lXNIiwLnbil0WBe07QTp9xWpreTApL9zjYMy2PFxgWNTTgDkFmb2HkkkzSbhXi9lDyCr5otisu6PCsAPxQ53m9W5gY41CLON1eZq36syDXT7RnaMXsiSNcV+qIFFQ8S7GfjRnMe/WODDWTIsWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784123211; c=relaxed/simple;
	bh=Ulxwt6/jmKwbqap9BAryP3WmYBXFKP4AyVp8iuGq6do=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=tx95W77neZy+ku1hzLIWni1Ykw1+SthkQIwfISR4mBESwCfzrYPRrVSgzlGdre1+C57+aO/hlX6MQYAT+nyEtTHIVJzLvn17gF8tEg0diW4H8dGr7VQVpvBxxQJY+2DQiao6AgmPFOY6/2MK8zDTMhCUB8w7FtLArkdm0hKkZys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlgdfItQ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A2381F000E9;
	Wed, 15 Jul 2026 13:46:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784123208;
	bh=yKgvJPExRv5rwAtKCUh65xaX07ljhvSfoF4zd+pfo8U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SlgdfItQNhQ0JhfsUj4GmhDh4A+Vq2BTe35qn5e5GwrkDRZ0FW/fINfw1xXL2bnYK
	 ysx3GUjwAzupUy0maA6o82WNFXu0rPmrtDTm3+ZTHIaDzlURg9kG+rp8cqHk7gBpZF
	 nIo7w+E+5dX1R1mgI15AvRQUAeNBrj+dgw9np3ak2VtQRscIUbO2fmc6hWsb1UgIMy
	 bjTDOY5vA/NsbVACZ44cGlq8aBcsh9Y0PIpyzrb6YM/qw9XBQ4Dh5jOe1INLS7okty
	 62dM2sgMKAxaOT2vlk1N02NTz2Lj4bv/tvkPP6oC4unuoIMdoxVSEWePlzHQMe57j5
	 4E59OoCOpoyVQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/3] clk: qcom: gcc-glymur: Enable runtime PM
Reply-To: sashiko-reviews@lists.linux.dev
To: "Abel Vesa" <abel.vesa@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260715-glymur-fix-gcc-cx-scaling-v3-2-72eb5adad156@oss.qualcomm.com>
References: <20260715-glymur-fix-gcc-cx-scaling-v3-0-72eb5adad156@oss.qualcomm.com>
 <20260715-glymur-fix-gcc-cx-scaling-v3-2-72eb5adad156@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 13:46:47 +0000
Message-Id: <20260715134648.1A2381F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-327061-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2600:3c0a:e001:db::12fc:5321:from];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:abel.vesa@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2917375F048
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [Critical] The GDSC registration framework initializes power domains usin=
g `pm_genpd_init()` but fails to call `pm_genpd_remove()` during unregistra=
tion or on probe error paths. This leaves dangling pointers in the global `=
gpd_list` when the module is unloaded, leading to a Use-After-Free (UAF).
- [High] The error path in `qcom_cc_really_probe()` uses the asynchronous `=
pm_runtime_put()` before returning an error, triggering devres cleanup whic=
h immediately calls `pm_runtime_disable()`. This cancels the pending asynch=
ronous idle/suspend work, permanently leaking the power domain's ON state.
--

--- Patch [2]: [PATCH v3 2/3] clk: qcom: gcc-glymur: Enable runtime PM ---
commit 5dd235050afe17992844a83f5c4a8e644843386b
Author: Abel Vesa <abel.vesa@oss.qualcomm.com>

clk: qcom: gcc-glymur: Enable runtime PM

This commit enables runtime PM for the controller so the common GCC probe
path resumes the attached domain while registering clocks, resets and GDSCs.

> diff --git a/drivers/clk/qcom/gcc-glymur.c b/drivers/clk/qcom/gcc-glymur.c
> index f4ede4a3a1c07..1d52150721adc 100644
> --- a/drivers/clk/qcom/gcc-glymur.c
> +++ b/drivers/clk/qcom/gcc-glymur.c
> @@ -8576,6 +8576,7 @@ static const struct qcom_cc_desc gcc_glymur_desc =
=3D {
>  	.num_resets =3D ARRAY_SIZE(gcc_glymur_resets),
>  	.gdscs =3D gcc_glymur_gdscs,
>  	.num_gdscs =3D ARRAY_SIZE(gcc_glymur_gdscs),

[Severity: Critical]
This isn't a bug introduced by this patch, but does registering these GDSCs
expose a use-after-free vulnerability during module unload or probe failure?

Looking at gdsc_unregister() in drivers/clk/qcom/gdsc.c:

gdsc_unregister() {
    ...
	gdsc_pm_subdomain_remove(desc, num);
	of_genpd_del_provider(dev->of_node);
}

It appears pm_genpd_remove() is never called to unlink the domains from the
global gpd_list. If gdsc_register() fails halfway or the module is unloaded,
the memory backing the GDSC structs is freed.=20

Could any subsequent iteration of gpd_list (e.g., by
genpd_power_off_unused() or debugfs) dereference this freed memory and
cause a kernel panic?

> +	.use_rpm =3D true,

[Severity: High]
This is a pre-existing issue, but by setting use_rpm to true, does this
expose the driver to a power domain leak in the probe error path?

Looking at qcom_cc_really_probe() in drivers/clk/qcom/common.c, the error
path uses the asynchronous pm_runtime_put():

qcom_cc_really_probe() {
    ...
put_rpm:
	if (desc->use_rpm)
		pm_runtime_put(dev);

	return ret;
}

Since devm_pm_runtime_enable() is used, devres will automatically execute
pm_runtime_disable() on probe failure.=20

Does this cancel the pending asynchronous idle/suspend work queued by
pm_runtime_put(), leaving the hardware permanently in an active state?

>  	.driver_data =3D &gcc_glymur_driver_data,
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715-glymur-fix=
-gcc-cx-scaling-v3-0-72eb5adad156@oss.qualcomm.com?part=3D2

