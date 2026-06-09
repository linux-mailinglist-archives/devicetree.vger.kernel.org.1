Return-Path: <devicetree+bounces-309245-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AoupBShFKGqABQMAu9opvQ
	(envelope-from <devicetree+bounces-309245-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:54:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A262662A55
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:53:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hghDBR0P;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309245-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309245-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5E7D930039A8
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 16:48:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 309BD42EEBF;
	Tue,  9 Jun 2026 16:48:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312C02E7BD3
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 16:48:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781023691; cv=none; b=aXfvX7XIqEGbJtV0XDJuECMNqBCfzVzvrGFxXBB9Pe80yeAsTpdXAgdo+h6RNMkoUv2MDQLBjds8US6oPrHeMaZ0ocOZwbulY4xPmfkcFkq0UUKYDlT/WKtmKASnPPmT6lAib1ZcLsmeNQ6DzixG+qI78Vbxi4CrAiFZOGeDIrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781023691; c=relaxed/simple;
	bh=soGe28KhkQBqy4eGiStYykBD8p710TtWKVhksAUwgJk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=iQjdR2ukv9P4lOriBsaiL7uFaoPFhmKVu0DLhYEmnMYSyxAy7gFjTYyYtapX8l5SV+4lotT355s43jjArd3oq1hMG7OFsax7nxQ4SkGXgCjKS0Z4tTJHu09F68WNZpfLB367Y8PYmj4Z1ZfVkUqlIbH1DD461ZUbRKisCv6woSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hghDBR0P; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6BD01F00893;
	Tue,  9 Jun 2026 16:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781023689;
	bh=5bUaq+E7mmK70rC0gbs20S4CbjXInywfkPdiHQzPPBY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hghDBR0PkbYSJ0akhczVUR7DlGB6bz9pNKO383wb5eZk6pGQrdv1HoNC40NBQbf1i
	 /taRQyJZomTqMpLPaAN33E+NArq3lBGHX/HawiBujB3HTNOGfpEOJHgkPOJNuDv0JI
	 Tg/YrXwBU1jVQ4QzOcsgmmFS9+vz43tLljt//iAG+E5/YI4PxHplVg10a9wmC6P9ur
	 mAHRwkALsGqN4IenDAe0Q0o/cRgKG76NDkgdN6gKAPXUbjgmywHncy35GXkVL+2MM9
	 V3SgTra7gdly2lEi+hNdGsHV7zQRoXdJNPLrKe31FMdkiwyFscrv8ftdpLB/+Ue8KN
	 HxRHmoZklOcww==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 13/15] ASoC: msm8916-wcd-analog: add pm8950 codec
Reply-To: sashiko-reviews@lists.linux.dev
To: "Richard Acayan" <mailingradian@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260609162255.31074-14-mailingradian@gmail.com>
References: <20260609162255.31074-14-mailingradian@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 16:48:08 +0000
Message-Id: <20260609164808.B6BD01F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309245-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:mailingradian@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9A262662A55

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Interrupts are requested before their dependencies are initialized=
, leading to a NULL pointer dereference if an interrupt fires early.
--

(Due to recitation restrictions, I cannot quote the patch directly. Here is=
 a free-form summary of the review findings based on the provided commit.)

commit 6bdf31b5b0e7905983f34bd3546744e90b15273e
Author: Adam Skladowski <a39.skl@gmail.com>

ASoC: msm8916-wcd-analog: add pm8950 codec

This commit adds register overrides for the PM8950 codec. It also implements
matching register overrides via the compatible string array.

[Severity: High]
This isn't a bug introduced by this patch, but could this pre-existing setup
cause a NULL pointer dereference if an interrupt fires early?

In pm8916_wcd_analog_spmi_probe(), threaded IRQs (such as
pm8916_mbhc_switch_irq_handler and mbhc_btn_press_irq_handler) are requested
via devm_request_threaded_irq(). This enables the interrupts immediately.
However, the ASoC component (priv->component) isn't initialized until much
later in pm8916_wcd_analog_probe() during ASoC sound card binding.

If the interrupt fires before the component probe, the IRQ handler executes
with a NULL priv->component:

pm8916_mbhc_switch_irq_handler()
    struct snd_soc_component *component =3D priv->component;
    if (snd_soc_component_read(component, CDC_A_MBHC_DET_CTL_1) ...

Passing this NULL component pointer to snd_soc_component_read() looks like
it would cause a crash. Should the IRQ registration be deferred to the
component probe, or kept disabled until the component is fully initialized?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609162255.3107=
4-1-mailingradian@gmail.com?part=3D13

