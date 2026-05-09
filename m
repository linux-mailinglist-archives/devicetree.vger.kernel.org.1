Return-Path: <devicetree+bounces-294932-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNk5LeZr/2kR6QAAu9opvQ
	(envelope-from <devicetree+bounces-294932-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 19:16:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A44500B76
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 19:16:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 40D9F3007E00
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 17:16:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E7DF262D0B;
	Sat,  9 May 2026 17:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9aBMn0Z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F7C258CD0;
	Sat,  9 May 2026 17:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778346963; cv=none; b=qiN0Y5eHVphwn2ugthvu8BgRJN/u6We+ZXkKu0xBqsqmU6ZtPMEy5MTygVaAmrA3dx+4iey5QhOAn1/inibpSErCLN6DfTVB3AnZ8k5Nl7E41Jfjj1lRGsnuq3JuCz/7zZo+NyMgC1KcJbWg1quqL8XGyIHdaZ11493qhIS0BeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778346963; c=relaxed/simple;
	bh=Gt0Kp7pol/ZXvEcD3VLlX7yuiA9z+y00Agr1asuwIgc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hwjfK9RU5OjYHzMZRfbeVs3fW201nlNaOUyms+14s/uHxs3iMAf5mPfJqLxc4hJvQivK4E5EjgpNCZv1JzEyCL+3Gk+F9TMesatZAG7gNQ8E6btrFyTav8Kejhe+ukmygIYx3rRNtIYvjQctChY1bLCfVnurOwCU+JOcw+VprCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9aBMn0Z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B74FC2BCB2;
	Sat,  9 May 2026 17:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778346962;
	bh=Gt0Kp7pol/ZXvEcD3VLlX7yuiA9z+y00Agr1asuwIgc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=B9aBMn0ZfJW9mjxW0FsGcRN0m5PBq3rwPaEWgwWf2hYJlR7rNmXJDJgrJAcCE7UN3
	 I89jWZpPrBY3Mtb60BRPNSq4TXmY4TXJX6bROxp3twv3zWB2yYxZnWIRydH6TuH18N
	 xarphF8PBgn2OU60ejXNDLi2tOhliHyA138Vyj5mMdHi58qzyhqMLD/nzAwEZm/Ejh
	 g6M+M9HYguXUg1xaURFsTxBvE2znF++qI8JFmxAJ68d/hR+mlSABMtUkkFBF+T5rGa
	 DpDirTdI8sJdWNvzPkJegHb0f/XgJUmkgV8IGS6jh6CWhJu7A7irveKP1/z8OzaRYW
	 SEo8ly9AeKHOA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/3] watchdog: realtek-otto: Change to use regmap API
Reply-To: sashiko@lists.linux.dev
To: "Rustam Adilov" <adilov@disroot.org>
Cc: linux-watchdog@vger.kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260509163101.722793-2-adilov@disroot.org>
References: <20260509163101.722793-2-adilov@disroot.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 09 May 2026 17:16:01 +0000
Message-Id: <20260509171602.6B74FC2BCB2@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 32A44500B76
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-294932-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Deadlock risk in the atomic restart handler due to regmap's intern=
al spinlock.
--

commit a520c8e2203154ba331a6ae28f00daec074e62ee
Author: Rustam Adilov <adilov@disroot.org>

watchdog: realtek-otto: Change to use regmap API

This commit converts the realtek-otto watchdog driver to use the regmap API
instead of direct mmio accesses. It replaces direct read/modify/write
sequences with regmap functions and selects REGMAP_MMIO.

> diff --git a/drivers/watchdog/realtek_otto_wdt.c b/drivers/watchdog/realt=
ek_otto_wdt.c
> index 2c30ddd574c59..e5e9cb480f4f9 100644
> --- a/drivers/watchdog/realtek_otto_wdt.c
> +++ b/drivers/watchdog/realtek_otto_wdt.c
[ ... ]
> @@ -199,7 +189,7 @@ static int otto_wdt_restart(struct watchdog_device *w=
dev, unsigned long reboot_m
> =20
>  	/* Configure for shortest timeout and wait for reset to occur */
>  	v =3D FIELD_PREP(OTTO_WDT_CTRL_RST_MODE, reset_mode) | OTTO_WDT_CTRL_EN=
ABLE;
> -	iowrite32(v, ctrl->base + OTTO_WDT_REG_CTRL);
> +	regmap_write(ctrl->regmap, OTTO_WDT_REG_CTRL, v);

Could this regmap_write() cause a deadlock during system restart?

The restart handler is often called during system shutdown or kernel panic
in an atomic context with local interrupts disabled. Since
devm_regmap_init_mmio() configures the regmap to use a spinlock by default,
if a panic occurs while another cpu holds the regmap lock (e.g., during
a ping or timeout update) and that cpu is halted by smp_send_stop(), this
regmap_write() could spin endlessly and prevent the system from rebooting.

Additionally, on preempt-rt kernels, the regmap spinlock becomes a sleepable
rt_mutex, which could cause a sleeping in atomic context bug when acquired
with interrupts disabled.

>  	mdelay(3 * otto_wdt_tick_ms(ctrl, 0));
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260509163101.7227=
93-1-adilov@disroot.org?part=3D1

