Return-Path: <devicetree+bounces-311736-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5t9yOFqrL2pWEQUAu9opvQ
	(envelope-from <devicetree+bounces-311736-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 09:35:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEFF6843DF
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 09:35:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="g6wO9QG/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311736-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311736-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EAB56301C3CC
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 07:33:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84DE93BED33;
	Mon, 15 Jun 2026 07:33:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BADB3BED32;
	Mon, 15 Jun 2026 07:33:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781508793; cv=none; b=hPR3GxqUTqnPbfFZ11r9ePHga8nXkljVisXGBxeG5UvWR7BFPS8SpsihKTFrPaMUumP7mk/dj099QbXfOIj+JUBIQPVnymQQzHTzieeINPnZZSgFd1sKFf1heIIfs8I64STFDQF+Bo5RZ3Kuq4Bp233I2gc6AK4cdxxBhA1+vBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781508793; c=relaxed/simple;
	bh=4/x2xO/WHg9BpH3cQlMndF6idD3F1wLseZ5Y+hQZuHM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=UpDTinxaSbnscxY3acY5TFnu/53v1ulYolCrPkoWdpbTzKlBeCE/EB8lU0m8FRW6xS1MSKohi2WMiYfte2fNS6MSrj7hfoQunMDtu3qGDKHYiUF19txAXqFjhVKwe66/UxL2nkrVH3cArzTJuWA7MOpZUV1V8G5CjjXNkUbaJpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6wO9QG/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB8811F000E9;
	Mon, 15 Jun 2026 07:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781508792;
	bh=hnSpPLwKUnPFSDROpY5O1yQ6lNyidEijLexGvonrGFU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=g6wO9QG/HI9leK7kgUC1LsbwPbCCkt/iAM1fFa4UnY8TMnMZhwPUPoYeRwmlrYqEl
	 M3u+mBrSWr9E+PKCe/QZc55/FbsbDAXPaqG7EmvCzk6pw2eOoWWGojmozRoaLrS+Go
	 2WwPQN/B3VuSRGkOrVa0n+qp9EsNyzmIuKy96ulrwDMG0s8f0NfACkzlNEgSO87Pty
	 +Gl9ZFoep4WovBnroAyT2So1OP80F/cUNIU5JLMx4nIMrETraf60HVs6DwbV4O4D3q
	 6DR4uW+eeKRg0BGGHtZOQVC1Bhg5hiC7deURTjhi0O5iKHmiMZ0Ntx8SUkue5ozzks
	 1a/1Pk2JSEooA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 6/9] input: keyboard: mtk-pmic-keys: Add MT6392
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Luca Leonardo Scorcia" <l.scorcia@gmail.com>
Cc: linux-input@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, dmitry.torokhov@gmail.com
In-Reply-To: <20260615071836.362883-7-l.scorcia@gmail.com>
References: <20260615071836.362883-7-l.scorcia@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 07:33:11 +0000
Message-Id: <20260615073311.BB8811F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:l.scorcia@gmail.com,m:linux-input@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:dmitry.torokhov@gmail.com,m:lscorcia@gmail.com,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-311736-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,packett.cool:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3DEFF6843DF

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Incorrect reset mask applied for MT6357 home key due to typo (`MTK=
_PMIC_HOMEKEY_INDEX` instead of `MTK_PMIC_HOMEKEY_RST`).
- [High] Device Tree child nodes are mapped purely by order, ignoring their=
 identity.
- [High] Array bounds overflow due to mismatched DT child node counting and=
 iteration.
- [High] Unchecked return value of `of_match_device()` leads to NULL derefe=
rence.
--

commit 576d0be432dffd670f7bb30dc9498d55a10d5703
Author: Val Packett <val@packett.cool>

input: keyboard: mtk-pmic-keys: Add MT6392 support

Add support for the MT6392 PMIC to the keys driver.

> diff --git a/drivers/input/keyboard/mtk-pmic-keys.c b/drivers/input/keybo=
ard/mtk-pmic-keys.c
> index c78d9f6d97c4f..8b4a89fce4fb1 100644
> --- a/drivers/input/keyboard/mtk-pmic-keys.c
> +++ b/drivers/input/keyboard/mtk-pmic-keys.c
[ ... ]
> @@ -301,6 +315,9 @@ static const struct of_device_id of_mtk_pmic_keys_mat=
ch_tbl[] =3D {
>  	{
>  		.compatible =3D "mediatek,mt6397-keys",
>  		.data =3D &mt6397_regs,
> +	}, {
> +		.compatible =3D "mediatek,mt6392-keys",
> +		.data =3D &mt6392_regs,
>  	}, {
>  		.compatible =3D "mediatek,mt6323-keys",
>  		.data =3D &mt6323_regs,

[Severity: High]
This isn't a bug introduced by this patch, but the mt6357_regs array
erroneously uses the index constant MTK_PMIC_HOMEKEY_INDEX instead of
the correct bitmask MTK_PMIC_HOMEKEY_RST for the reset enable mask:

drivers/input/keyboard/mtk-pmic-keys.c:
	.keys_regs[MTK_PMIC_HOMEKEY_INDEX] =3D
		MTK_PMIC_KEYS_REGS(MT6357_TOPSTATUS,
				   0x8, MT6357_PSC_TOP_INT_CON0, 0xa,
				   MTK_PMIC_HOMEKEY_INDEX),

Could this cause incorrect bits to be modified in the MT6357_TOP_RST_MISC
register when configuring long-press reset behaviors, potentially corrupting
other hardware state?

[Severity: High]
This is a pre-existing issue, but Device Tree child nodes are mapped
purely by order in mtk_pmic_keys_probe():

drivers/input/keyboard/mtk-pmic-keys.c:mtk_pmic_keys_probe() {
	...
	for_each_child_of_node_scoped(node, child) {
		keys->keys[index].regs =3D &mtk_pmic_regs->keys_regs[index];

		keys->keys[index].irq =3D
			platform_get_irq_byname(pdev, irqnames[index]);
	...
}

Since Device Tree does not guarantee child node ordering, if a device tree
lists the home key before the power key (or omits the power key entirely),
wouldn't the driver blindly map the first child node's properties to the
powerkey hardware resources?

[Severity: High]
This is a pre-existing issue, but is there an array bounds overflow due to
mismatched DT child node counting and iteration in mtk_pmic_keys_probe()?

drivers/input/keyboard/mtk-pmic-keys.c:mtk_pmic_keys_probe() {
	...
	keycount =3D of_get_available_child_count(node);
	if (keycount > MTK_PMIC_MAX_KEY_COUNT ||
	    keycount > ARRAY_SIZE(irqnames)) {
	...
	for_each_child_of_node_scoped(node, child) {
	...
}

The probe function uses of_get_available_child_count() for the bounds check
but iterates over all nodes including disabled ones. If a DT defines more
than two child nodes but leaves enough disabled, could the subsequent loop
increment the index beyond the array bounds?

[Severity: High]
This isn't a bug introduced by this patch, but the return value of
of_match_device() is unchecked in mtk_pmic_keys_probe():

drivers/input/keyboard/mtk-pmic-keys.c:mtk_pmic_keys_probe() {
	...
	const struct of_device_id *of_id =3D
		of_match_device(of_mtk_pmic_keys_match_tbl, &pdev->dev);
	...
	mtk_pmic_regs =3D of_id->data;
	...
}

If the device is instantiated without a device tree node, won't
of_match_device() return NULL and result in a kernel panic on probe?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615071836.3628=
83-1-l.scorcia@gmail.com?part=3D6

