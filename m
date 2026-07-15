Return-Path: <devicetree+bounces-327113-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XNeyB6GWV2oyXgAAu9opvQ
	(envelope-from <devicetree+bounces-327113-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:18:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A18BD75F44B
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:18:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="c8i/Sipq";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327113-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-327113-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E13E0302A1BD
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:17:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEA7730AACD;
	Wed, 15 Jul 2026 14:17:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A83772BD033
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 14:17:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784125064; cv=none; b=lC9/hBUBtFZ/nKkTgTXzpj+0PwwC1Tc+sz8ANuy1Bd1XaI7k+GDs/9TywD6jWWfzrxmcjQ7x+V8SUG1xerjB5RMSAvYgV5pJ//TgUFLskF1iyuVqSc/ZFE7PsE0bau9t9klLULMmJMkSTEo1ZbMnM4hzM6e4aHV55qpjoTHFkhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784125064; c=relaxed/simple;
	bh=ROA6eq+DYMQkxuAfpsgsrLxquiCKUkLtgoYQWWoWhgQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=E7llf73M+ufbVatHUligTnV+jXhYMLq7HH++W+kuaNyg5Jk5C68nZlX66aY3czmJ3Y/ek/Qqt5kVaJSnNm3j+49ox60Krz9PD1EZryaeLQuXLOqkW3DBNK8oAl7tVMegWa5SedUuyPei5UWNK4mcMaL1IrcWzbH+PfaYSpl8OpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8i/Sipq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C8CB1F000E9;
	Wed, 15 Jul 2026 14:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784125062;
	bh=RcA9BldOtl9U9lAqpYe9oN6gjo8sEaBq4PlJtZelxhA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=c8i/SipqiCfrSJC3AOXPZ8pKgpsZgPve+JOXKFXd4O3K3dAsNGM/dnY+Mbzb6kzMX
	 m1RV5YQWq6XljiZgQB2DrBx+N5zZ333uUOQebBvf2X9Xt7TVVjVjXcQ8ciQ1aVNZfe
	 /c1+UkbdCWykMV6610BXRdJOCxO45rRssd/ULedCun9zsSuuzNBPzfiXWLdJ2L35e+
	 Dcrml4i0USzTvoIMlxcPhubzP5DC33WiUo/BpYSEkFaogGJdDQHQ5gde7+fHsQ9U/i
	 UeBEseRwoM217BJIKRfCAzKyho/NZ1c7ZZE1fx8+jVHO12mfxkGHeixV0KXKEhVUxQ
	 TBSetWZhUqDdg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] pmdomain: mediatek: Add support for MT6858 SoC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Nikolai Burov" <nikolai.burov@jolla.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260715-mt6858-pmdomain-v2-3-6293e87fc093@jolla.com>
References: <20260715-mt6858-pmdomain-v2-0-6293e87fc093@jolla.com>
 <20260715-mt6858-pmdomain-v2-3-6293e87fc093@jolla.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 14:17:42 +0000
Message-Id: <20260715141742.9C8CB1F000E9@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-327113-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:nikolai.burov@jolla.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,jolla.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A18BD75F44B
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The MT6858 power domains such as VDE0, VEN0, AUDIO, and SSUSB do=
 not include the `MTK_SCPD_KEEP_DEFAULT_OFF` capability flag. Without this =
flag, `scpsys_add_one_domain()` will unconditionally execute the power-on s=
equence during probe and initialize the domains with `is_off=3Dfalse`, sett=
ing `stay_on=3Dtrue`. This locks the domains in a powered-on state until `s=
ync_state` is reached (i.e., all consumers have probed). Wasting power on u=
nused video decoder/encoder domains is unnecessary unless explicitly requir=
ed by the bootloader.
--

--- Patch [3]: [PATCH v2 3/3] pmdomain: mediatek: Add support for MT6858 So=
C ---
commit 4b694c86cffa3ba63d8623fd34074d76f6348e26
Author: Nikolai Burov <nikolai.burov@jolla.com>
Subject: pmdomain: mediatek: Add support for MT6858 SoC

This commit adds support for the power domains found in the MediaTek MT6858
SoC. It defines the bus protection blocks and domain data for various hardw=
are
subsystems.

> diff --git a/drivers/pmdomain/mediatek/mt6858-pm-domains.h b/drivers/pmdo=
main/mediatek/mt6858-pm-domains.h
> new file mode 100644
> index 0000000000000..177b2e86ab1eb
> --- /dev/null
> +++ b/drivers/pmdomain/mediatek/mt6858-pm-domains.h

[ ... ]

> +	[MT6858_POWER_DOMAIN_VDE0] =3D {
> +		.name =3D "vde0",
> +		.sta_mask =3D MT6858_PWR_ACK,
> +		.sta2nd_mask =3D MT6858_PWR_ACK_2ND,
> +		.ctl_offs =3D 0xe34,
> +		.pwr_sta_offs =3D 0xe34,
> +		.pwr_sta2nd_offs =3D 0xe34,
> +		.sram_pdn_bits =3D BIT(8),
> +		.sram_pdn_ack_bits =3D BIT(12),
> +		.bp_cfg =3D {
> +			BUS_PROT_WR_IGN(INFRA,
> +					MT6858_TOP_AXI_PROT_EN_MMSYS_STA_0_VDE0,
> +					MT6858_TOP_AXI_PROT_EN_MMSYS_STA_0_SET,
> +					MT6858_TOP_AXI_PROT_EN_MMSYS_STA_0_CLR,
> +					MT6858_TOP_AXI_PROT_EN_MMSYS_STA_0_RDY),
> +			BUS_PROT_WR_IGN(INFRA,
> +					MT6858_TOP_AXI_PROT_EN_MMSYS_STA_1_VDE0,
> +					MT6858_TOP_AXI_PROT_EN_MMSYS_STA_1_SET,
> +					MT6858_TOP_AXI_PROT_EN_MMSYS_STA_1_CLR,
> +					MT6858_TOP_AXI_PROT_EN_MMSYS_STA_1_RDY),
> +		},
> +	},

[Severity: Medium]
Does this domain need to be powered on unconditionally at boot?

Without the MTK_SCPD_KEEP_DEFAULT_OFF capability flag in scpsys_domain_data,
scpsys_add_one_domain() will execute the power-on sequence during probe and
initialize the domain with is_off=3Dfalse.

This sets stay_on=3Dtrue, locking the domain in a powered-on state until
sync_state is reached after all consumers have probed. If the consumer driv=
ers
for the video decoder never probe, this power will be wasted indefinitely.

Other similar MediaTek SoCs typically set this flag for video and audio
domains. Could the MTK_SCPD_KEEP_DEFAULT_OFF flag be added here, as well as
for the AUDIO and SSUSB domains?

> +	[MT6858_POWER_DOMAIN_VEN0] =3D {
> +		.name =3D "ven0",
> +		.sta_mask =3D MT6858_PWR_ACK,
> +		.sta2nd_mask =3D MT6858_PWR_ACK_2ND,
> +		.ctl_offs =3D 0xe3c,
> +		.pwr_sta_offs =3D 0xe3c,
> +		.pwr_sta2nd_offs =3D 0xe3c,
> +		.sram_pdn_bits =3D BIT(8),
> +		.sram_pdn_ack_bits =3D BIT(12),
> +		.bp_cfg =3D {
> +			BUS_PROT_WR_IGN(INFRA,
> +					MT6858_TOP_AXI_PROT_EN_MMSYS_STA_0_VEN0,
> +					MT6858_TOP_AXI_PROT_EN_MMSYS_STA_0_SET,
> +					MT6858_TOP_AXI_PROT_EN_MMSYS_STA_0_CLR,
> +					MT6858_TOP_AXI_PROT_EN_MMSYS_STA_0_RDY),
> +			BUS_PROT_WR_IGN(INFRA,
> +					MT6858_TOP_AXI_PROT_EN_MMSYS_STA_1_VEN0,
> +					MT6858_TOP_AXI_PROT_EN_MMSYS_STA_1_SET,
> +					MT6858_TOP_AXI_PROT_EN_MMSYS_STA_1_CLR,
> +					MT6858_TOP_AXI_PROT_EN_MMSYS_STA_1_RDY),
> +		},
> +	},

[Severity: Medium]
Similarly, does the VEN0 (Video Encoder) domain require the
MTK_SCPD_KEEP_DEFAULT_OFF flag to avoid staying powered on indefinitely
when its consumers do not probe?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715-mt6858-pmd=
omain-v2-0-6293e87fc093@jolla.com?part=3D3

