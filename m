Return-Path: <devicetree+bounces-301740-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aOrELpM5EGoaVAYAu9opvQ
	(envelope-from <devicetree+bounces-301740-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 13:10:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E17FE5B2C15
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 13:10:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 131EA3018BF2
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 11:03:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9960D3C1F31;
	Fri, 22 May 2026 11:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XiqYAZAY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE5D43A5437
	for <devicetree@vger.kernel.org>; Fri, 22 May 2026 11:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779447784; cv=none; b=sZjraKm8YF8Pb4vzqnSQfZOwtjuxEviPgUYVu6xG0ntb9A85MrsHkVB6OuwqSBc67kwxFg3aFGZ19LFWxPAYeyua0GPo+EBVghIMUnffZHueamaOkcj/TX0Zh3mg1QFiGiCEQQ6bgjQGT1AQVG84Md/8TGJT7x8gBrqlAC0uGqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779447784; c=relaxed/simple;
	bh=DfN8+09UabOnYzIpO6Ab816j+oDNKqH9vaYRSoa5cdk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=e+1wcObDdz0iKyklv/QeAcdU7Y8nMH4ILAPpvNU2AuOJGePH3XUzJwmarWKzmuQZcodqqNg8CnaoDvexJlcXO9I202HIz+6eHBZYsXWHIQa7pJ7jRsDZsttG9dzemndVlXUSA9Belm3RvcAT8v2hOl16VmP+XAMjl87aQrtZQa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XiqYAZAY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 349421F000E9;
	Fri, 22 May 2026 11:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779447782;
	bh=lhLzgcq+6/uuu5Ab3mBzHYnTRcMxG6Zi2kDCejYbYNg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XiqYAZAY0D81mseyt7KwqZeuCBw/6VwEm0kDjBujd4lgpX/gBicPaWmY6S5vZp2U6
	 1VoTTyrH1a7gxV4lOUcAoZaoI/ZR6TL3ftRzWGZbuHDTnjzLJj62H3kPBBwet1NxBP
	 LKiRyzJk2VOAh6CfWMidX5HUXDZV3CBLSJBCM92PgIpb4PuSp0yzHOuWMuQ2d+HMcu
	 0BzyqS4fhPXXqNARu4Q3s4PypLFHGa+q21zpA15FbUveVWxHU/iBQRA2iQUN4dg7pu
	 5LS7Qw11Qerc5MQbLXbmE+XLiu41NQ1KInW7dVLKUvPcaNGEVlGdOHvAPzs2EXcVgo
	 nuhahds8iclsg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/3] ASoC: rockchip: rockchip_pdm: Reorder clock enable
 sequence
Reply-To: sashiko-reviews@lists.linux.dev
To: phucduc.bui@gmail.com
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260522100318.73474-4-phucduc.bui@gmail.com>
References: <20260522100318.73474-4-phucduc.bui@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 May 2026 11:03:01 +0000
Message-Id: <20260522110302.349421F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-301740-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: E17FE5B2C15
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Unchecked return value of `pm_runtime_get_sync()` in `rockchip_pdm=
_set_fmt()` can lead to hardware access while suspended.
- [High] Manual disable of hardware clocks and PM runtime before devm teard=
own can cause bus faults.
--

commit 8f19ac4b34f49c4a08218121167b705580c4469a
Author: bui duc phuc <phucduc.bui@gmail.com>

ASoC: rockchip: rockchip_pdm: Reorder clock enable sequence

Enable the 'hclk' bus clock before the 'clk' controller clock during runtime
resume. The bus clock provides the register access interface and should be
enabled before the controller clock.

> diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockc=
hip_pdm.c
> index c69cdd6f24994..8f78f7bc1806c 100644
> --- a/sound/soc/rockchip/rockchip_pdm.c
> +++ b/sound/soc/rockchip/rockchip_pdm.c

[ ... ]

While reviewing this patch, I noticed a couple of pre-existing issues in the
same file:

sound/soc/rockchip/rockchip_pdm.c:rockchip_pdm_set_fmt() {
...
	pm_runtime_get_sync(cpu_dai->dev);
	regmap_update_bits(pdm->regmap, PDM_CLK_CTRL, mask, val);
	pm_runtime_put(cpu_dai->dev);
...
}

[Severity: High]
This isn't a bug introduced by this patch, but is it safe to ignore the
return value of pm_runtime_get_sync() here?

If the runtime resume fails (for example, if clock enablement or power
domain restoration fails), the function ignores the negative error code
and proceeds to call regmap_update_bits().

Accessing hardware registers when the hardware is powered down or unclocked
can lead to a synchronous external abort (bus fault) and a kernel panic.

Should pm_runtime_resume_and_get() be used instead, and the error handled?


sound/soc/rockchip/rockchip_pdm.c:rockchip_pdm_remove() {
...
static void rockchip_pdm_remove(struct platform_device *pdev)
{
	struct rk_pdm_dev *pdm =3D dev_get_drvdata(&pdev->dev);

	pm_runtime_disable(&pdev->dev);
	if (!pm_runtime_status_suspended(&pdev->dev))
		rockchip_pdm_runtime_suspend(&pdev->dev);

	clk_disable_unprepare(pdm->clk);
	clk_disable_unprepare(pdm->hclk);
}
...
}

[Severity: High]
This is a pre-existing issue, but can manually disabling the clocks and PM
runtime before the devm teardown cause bus faults?

The driver registers the ASoC component using
devm_snd_soc_register_component() in rockchip_pdm_probe(), which defers
unregistration until after the remove() callback returns.

If the device is unbound via sysfs while an audio stream is active, ALSA
will attempt to tear down the stream during the deferred devres
unregistration. This triggers operations like
rockchip_pdm_trigger(SNDRV_PCM_TRIGGER_STOP), which writes to the
hardware registers.

Since the clocks and power domains were already forcibly disabled in
remove(), this could result in a bus fault and kernel panic.

Should the driver use devm_pm_runtime_enable() with a devres action for
clock disable, or unregister the component manually before turning off
resources?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260522100318.7347=
4-1-phucduc.bui@gmail.com?part=3D3

