Return-Path: <devicetree+bounces-315369-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id k0MYKeYuPGpRlAgAu9opvQ
	(envelope-from <devicetree+bounces-315369-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 21:24:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 112F36C102B
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 21:24:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TZTSjA+m;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315369-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315369-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 15298300FF87
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 19:24:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F5AB32570D;
	Wed, 24 Jun 2026 19:24:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F19826E71E
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 19:24:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782329060; cv=none; b=Zhy3KMDZBYIZpKHo/idT10+8TgxGXlIKES9+Vut0hZp+gdIzbvV8m0DJ7Oi6LKYsqVYFAV5zG16GUdcwaGE5vbuOFo0knh8Olu2jJm1EoWy4xLi3ouv4QhJasgkaNBeL5L7b8vi/+Vd5uTxuTa2JjOS+JwKHHauemfyEG1nFNLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782329060; c=relaxed/simple;
	bh=N4VX/XwHnRu2PyPeElJZEhc8P3H78QMuq9P0BhgpFvg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=irSC0DhHREWOzMMbeWXOaj2pelTI+qFy6fntjdJLWdNQKXC8ppGxcpvvUU2Yi6myVYxw+vRO6t4q7KvHMM11R8Lv/UTgdu4+f4oho3uups2SEhFnnCx7y45ZQGqP82wrAISjwmAqfRLHf1Sv4lUrJi6Glx60eJllAo+BTMI1qmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZTSjA+m; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92B761F000E9;
	Wed, 24 Jun 2026 19:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782329058;
	bh=86jIgsS6JGEm8HBYzs1gBNLk/hBWv0xYRFnuPZTSjq8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TZTSjA+mt1YvEkbgPrbZd/W2RTVy5jhDiKpDA7SsZoBQhENqnCFmUQLYOm46d6WAt
	 rp2cj2UxF+sAV2jBu3wbv2J3sQSu55Kc63RyZYqbduyxgODwWS02f4u80C9tpOfsLM
	 pM/DUuAJMskkIgaALffhO6sbIBCWqrdXKbr5f7d/j88JfODKWxakjM/8Quq/JCHDB/
	 PBB4lb/F78oYNeTh4IfX3ZOEPGdseSmL35LJgn5by4oxsFdpJfBMwL11PgwfFJ6Mxb
	 MVAo2bZW3ZyUtxHKhmVzuyLXQzWWaA2yh12L9lAX5miOwKM2MHvjWAcwjrxTfQZJXg
	 lGZAb1Nj6x8Aw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 03/19] firmware: qcom: scm: Fix missing
 smp_load_acquire()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mukesh Ojha" <mukesh.ojha@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260624190830.3131112-4-mukesh.ojha@oss.qualcomm.com>
References: <20260624190830.3131112-1-mukesh.ojha@oss.qualcomm.com>
 <20260624190830.3131112-4-mukesh.ojha@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Jun 2026 19:24:18 +0000
Message-Id: <20260624192418.92B761F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-315369-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:mukesh.ojha@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:email,smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 112F36C102B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The waitqueue interrupt is requested and enabled before the global=
 __scm pointer is published, leading to a potential NULL pointer dereferenc=
e in the IRQ handler path.
--

commit 181d68fe28239c2e3b0bbf1762f175bcdf577648
Author: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>

firmware: qcom: scm: Fix missing smp_load_acquire()

This commit fixes a potential ordering violation in
qcom_scm_set_download_mode() by using smp_load_acquire() to safely read
the __scm pointer published by qcom_scm_probe().

> diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qco=
m_scm.c
> index 9b06a69d3a6d7..c8a84836887f0 100644
> --- a/drivers/firmware/qcom/qcom_scm.c
> +++ b/drivers/firmware/qcom/qcom_scm.c
[ ... ]
> @@ -2841,7 +2844,7 @@ static int qcom_scm_probe(struct platform_device *p=
dev)
>  	 * will cause the boot stages to enter download mode, unless
>  	 * disabled below by a clean shutdown/reboot.
>  	 */
> -	qcom_scm_set_download_mode(download_mode);
> +	qcom_scm_set_download_mode(scm, download_mode);

[Severity: High]
This is a pre-existing issue, but since we are looking at the initialization
ordering in qcom_scm_probe() in drivers/firmware/qcom/qcom_scm.c, could the
IRQ registration order cause a NULL pointer dereference?

Earlier in qcom_scm_probe(), the waitqueue interrupt is enabled before the
global __scm pointer is published:

	ret =3D devm_request_threaded_irq(scm->dev, irq, NULL, qcom_scm_irq_handle=
r,
					IRQF_ONESHOT, "qcom-scm", scm);
	...
	smp_store_release(&__scm, scm);

If a pending hardware interrupt fires before __scm is published, the IRQ
handler will execute. The handler calls qcom_scm_waitq_wakeup(), which invo=
kes
qcom_scm_get_completion().

Could qcom_scm_get_completion() crash here, since it ignores the valid scm
context passed via the IRQ data and unconditionally dereferences __scm?

drivers/firmware/qcom/qcom_scm.c:qcom_scm_get_completion() {
	if (WARN_ON_ONCE(wq_ctx >=3D __scm->wq_cnt))
		return ERR_PTR(-EINVAL);
	...
}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260624190830.3131=
112-1-mukesh.ojha@oss.qualcomm.com?part=3D3

