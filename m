Return-Path: <devicetree+bounces-310867-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vRH3L5zgK2qNGwQAu9opvQ
	(envelope-from <devicetree+bounces-310867-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 12:34:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A3F678B6D
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 12:34:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hV7Ge9jo;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310867-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310867-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 40D89319763B
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 10:33:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE552364EB6;
	Fri, 12 Jun 2026 10:33:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB0883290C9
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 10:33:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781260414; cv=none; b=XAGhyET7HBMoJXZyHl4YjZCFjmZ+IYdN9JvhmkhPoI7YMpmgS+6BptBJbnlx72oQcw7O8lnGfnp3JsTYUZG5YDQXUcE53zOk5RxjEv5/2qrVG0mgo6ozsvWw560FRXqxw0vH264vItweyA/s0ayjLVcav0Fm4evh4Ku4/QQSnn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781260414; c=relaxed/simple;
	bh=ZJQh1Vja37sZ8TKCDHr1RYHX/prZbPJgqnNE87B6pV8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oIygM64NDVl1p6ts4iMmkW7Zkbv0pu4ZpUnUIzgaOYihDzrAe+lPdn3Vx013vsiypJhqz5h/0ccGRBvllbXeWUw9VH+JHrL8unKjDO22zhP5qjyY9CgTPVybjLdCP9r7Z7OA0HpcuFLwCMcQ6Wxk9t3wkc5hykkQtsTgSi3y2/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hV7Ge9jo; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5585D1F000E9;
	Fri, 12 Jun 2026 10:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781260413;
	bh=TPtuWCGh7s50chD23d9eDAPJGzK8E47nlnaCvgVi6j0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hV7Ge9joBQEMlcuXHEZdX9WcxRyYrD9Erq5bgvI3CPBRWjh2+eD/9OZUz4hCuAaco
	 BINpUJg1cPSjYs7S0V5zCkuIgiCudxJgGYv4A0/XLQPoGvHHOP9/smiQE0CK5f8+58
	 powy+DFMK+LTzbnmmJd0Bquaw2X0Ju9tLM4f7SI/xj1r9MvbACmeC+UzlLoSbIn5yd
	 cHJlJV457XHUECUxPu0YZQQS3UZj45l3X5eGdFgYZzce9UNleb2okmZafThA2+3FCX
	 GUG6pY9pCVsJKbN/ElJU/gDU2x8Lek4uCBLtptI5p3Ry7ROibcwwYywy5PJNCo11BI
	 HS8kDhOqaLBwQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 15/16] media: venus: skip QCM2290 if Iris driver is
 enabled
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260612-iris-ar50lt-v4-15-0abfb74d5b3c@oss.qualcomm.com>
References: <20260612-iris-ar50lt-v4-15-0abfb74d5b3c@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 10:33:32 +0000
Message-Id: <20260612103333.5585D1F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-310867-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dmitry.baryshkov@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,qualcomm.com:email,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 16A3F678B6D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Use-after-free of `hdev` in the IRQ handler due to incorrect teard=
own sequence.
--

commit a490235af4b563cc6644730f4c262f25f52e330a
Author: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

media: venus: skip QCM2290 if Iris driver is enabled

As the Iris driver now supports the QCM2290 hardware too, there is a
race between Venus and Iris drivers on binding to the corresponding
device. Follow the approach used by other platforms and skip QCM2290 in
the Venus driver if Iris is enabled.

> diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/pla=
tform/qcom/venus/core.c
> index 243e342b0ae75..3c88594eb1d00 100644
> --- a/drivers/media/platform/qcom/venus/core.c
> +++ b/drivers/media/platform/qcom/venus/core.c

[ ... ]

> @@ -1169,13 +1168,16 @@ static const struct venus_resources qcm2290_res =
=3D {
>  	.enc_nodename =3D "video-encoder",
>  	.min_fw =3D &min_fw,
>  };
> +#endif
> =20
>  static const struct of_device_id venus_dt_match[] =3D {
>  	{ .compatible =3D "qcom,msm8916-venus", .data =3D &msm8916_res, },
>  	{ .compatible =3D "qcom,msm8939-venus", .data =3D &msm8939_res, },
>  	{ .compatible =3D "qcom,msm8996-venus", .data =3D &msm8996_res, },
>  	{ .compatible =3D "qcom,msm8998-venus", .data =3D &msm8998_res, },
> +#if (!IS_ENABLED(CONFIG_VIDEO_QCOM_IRIS))
>  	{ .compatible =3D "qcom,qcm2290-venus", .data =3D &qcm2290_res, },
> +#endif
>  	{ .compatible =3D "qcom,sc7180-venus", .data =3D &sc7180_res, },
>  	{ .compatible =3D "qcom,sdm660-venus", .data =3D &sdm660_res, },
>  	{ .compatible =3D "qcom,sdm845-venus", .data =3D &sdm845_res, },

[Severity: High]
This is a pre-existing issue, but could there be a use-after-free risk duri=
ng
teardown in venus_hfi_destroy()?

In drivers/media/platform/qcom/venus/hfi_venus.c:venus_hfi_destroy(), hdev =
is
freed and its lock is destroyed before the IRQ is disabled:

void venus_hfi_destroy(struct venus_core *core)
{
	struct venus_hfi_device *hdev =3D to_hfi_priv(core);

	core->priv =3D NULL;
	venus_interface_queues_release(hdev);
	mutex_destroy(&hdev->lock);
	kfree(hdev);
	disable_irq(core->irq);
	core->ops =3D NULL;
}

If a threaded interrupt (venus_isr_thread) is already running or scheduled
concurrently, could it pass the initial if (!hdev) check before core->priv
is set to NULL, and then access the freed hdev structure?

drivers/media/platform/qcom/venus/hfi_venus.c:venus_isr_thread()
{
	struct venus_hfi_device *hdev =3D to_hfi_priv(core);
	...
	if (!hdev)
		return IRQ_NONE;
	...
	pkt =3D hdev->pkt_buf;

	while (!venus_iface_msgq_read(hdev, pkt)) {
	...
}

Because disable_irq() waits for currently executing handlers to complete,
should it be called before freeing the structures the handler depends on?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612-iris-ar50l=
t-v4-0-0abfb74d5b3c@oss.qualcomm.com?part=3D15

