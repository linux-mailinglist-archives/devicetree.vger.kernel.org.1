Return-Path: <devicetree+bounces-323695-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pbk9D1iJT2pfjAIAu9opvQ
	(envelope-from <devicetree+bounces-323695-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:43:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B3E73084A
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:43:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=N1mGwHXe;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323695-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323695-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 852B7300106F
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 11:42:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E6573F99E3;
	Thu,  9 Jul 2026 11:42:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DEB379C32
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 11:42:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783597350; cv=none; b=EhjFN9HwB95n50Zcntcz4tuGpJWKKgvw/x5ugXDHGEDPbsRx53eYoEe4mtA749GuBHGgjdOw5s4cmTyRtBROO9LFjtd6tcsTXIQ0MiZU69FedqaWmThpDWk5oJdWqnd5yElnXj+sT0EyU/LpUNuis/HWtNLA7jV4cqSeURyESBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783597350; c=relaxed/simple;
	bh=NN9mmKUqCNF6zcZ8bIWehn2nuFiayQDWMqsq4wmwQPQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=nx0ogeSqxZtSWaBI5wCmev8ponXXzwvX9jdtSduF/2Ij6eFxHy98ZdqOR0eC17y3i0sWmYkyJbfp7oZOQRtzp1J2mRjlVwwk8Ij15MOASH8RsPze+vzni52Cf3G2gkQ6qwkuipbMpPno9vS/4QK+pvIFEWOj+PDFqDahj/5ueyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1mGwHXe; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32F6C1F000E9;
	Thu,  9 Jul 2026 11:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783597349;
	bh=ea25fSWQJ+PLUWKyg+knrAfpCEbYTM76MsTqOxi30sA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=N1mGwHXecbs/9Yh026CbhukHj1jKjsBrlut/kJN4eo+HMiK3S+C49cEhgEmf+aYXM
	 uPRUb+XeUd5dNyOFKbRwLZRpLwcAU2TXWTSQ1JqkqMOHpJnyDXeBGjp9l3UIHB3YSL
	 ml7i5kZxmsFtBYxgfv2h2GHik3toBuCl3KeBe4jemDqd5I5zAPpLNAH3Z53tbkXWTz
	 406CAAYKBYMu/R8U+rFtPNq54sX53Kckxa5pbu7lfBJgE3Cv9ifogiOoX8iMPuXrQz
	 YiPrOh9KZYaUqwqXW717GcSVORbyaeotkFeR4zsDMbJlXuKmx4bvYB5lcL/kzKcqZW
	 CRQHbIzeaN5LQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 03/12] drm/mediatek: mtk_dp: Call
 pm_runtime_put_sync() in removal path
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260709113148.49090-4-angelogioacchino.delregno@collabora.com>
References: <20260709113148.49090-1-angelogioacchino.delregno@collabora.com>
 <20260709113148.49090-4-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 11:42:27 +0000
Message-Id: <20260709114228.32F6C1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-323695-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,collabora.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 34B3E73084A

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [Critical] Replacing `pm_runtime_put()` with `pm_runtime_put_sync()` sync=
hronously powers off the hardware before tearing down child devices, DRM br=
idges, and IRQs, causing system crashes when they access unpowered register=
s.

Pre-existing issues:
- [High] Using `timer_delete_sync()` instead of `timer_shutdown_sync()` in =
the remove path allows the timer to be re-armed by the concurrently active =
IRQ thread, leading to a use-after-free.
--

--- Patch [3]: [PATCH v4 03/12] drm/mediatek: mtk_dp: Call pm_runtime_put_s=
ync() in removal path ---
commit f976047da5b8089ab1d0475df94302360f23d7f2
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

drm/mediatek: mtk_dp: Call pm_runtime_put_sync() in removal path

Since pm_runtime_put() queues an asynchronous suspend, calling
pm_runtime_disable() right after will cancel the pending suspend
work.

Call pm_runtime_put_sync() instead during mtk_dp_remove() to
overcome to this issue, making sure that the suspend ops execute
and that the hardware correctly powers off before module unload.

> diff --git a/drivers/gpu/drm/mediatek/mtk_dp.c b/drivers/gpu/drm/mediatek=
/mtk_dp.c
> index f656b85b84212..0d0507890d993 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dp.c
> @@ -2866,7 +2866,7 @@ static void mtk_dp_remove(struct platform_device *p=
dev)
>  {
>  	struct mtk_dp *mtk_dp =3D platform_get_drvdata(pdev);
> =20
> -	pm_runtime_put(&pdev->dev);
> +	pm_runtime_put_sync(&pdev->dev);

[Severity: Critical]
Does changing this to a synchronous put cause a regression where the
hardware is powered off before child devices and IRQs are torn down?

Because the driver uses a devm-managed IRQ, the interrupt can still fire
and execute mtk_dp_hpd_event() which reads hardware registers:

mtk_dp_hpd_event() {
        u32 irq_status =3D mtk_dp_swirq_get_clear(mtk_dp) |
                         mtk_dp_hwirq_get_clear(mtk_dp);
        ...
}

Additionally, child platform devices like the audio codec are still active.
If they are torn down later and trigger mtk_dp_audio_shutdown(), it also
accesses hardware:

mtk_dp_audio_shutdown() {
        mtk_dp_audio_mute(mtk_dp, true);
        ...
}

Will accessing these registers after the PM domain is synchronously powered
down result in a bus fault or system crash? Should the PM operations be
moved to the end of the teardown process after explicitly disabling IRQs
and unregistering child devices?

>  	pm_runtime_disable(&pdev->dev);
>  	if (mtk_dp->data->bridge_type !=3D DRM_MODE_CONNECTOR_eDP)
> -		timer_delete_sync(&mtk_dp->debounce_timer);
> +		timer_delete_sync(&mtk_dp->debounce_timer);

[Severity: High]
This is a pre-existing issue, but could this timer_delete_sync() result in
a use-after-free?

Since the hardware interrupt is managed by devres, it remains active
throughout mtk_dp_remove(). If the IRQ thread is executing concurrently,
it can unconditionally re-arm the timer:

mtk_dp_hpd_event_thread() {
        ...
        mod_timer(&mtk_dp->debounce_timer,
                  jiffies + msecs_to_jiffies(100) - 1);
}

If mod_timer() is called right after timer_delete_sync() finishes, the
timer is successfully re-armed. Once mtk_dp_remove() returns, devres will
free the mtk_dp structure. When the timer expires, won't it access freed
memory?

Should this be updated to use timer_shutdown_sync() instead to permanently
prevent the timer from being re-armed?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709113148.4909=
0-1-angelogioacchino.delregno@collabora.com?part=3D3

