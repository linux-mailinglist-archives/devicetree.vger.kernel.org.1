Return-Path: <devicetree+bounces-315859-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XHKWKaGmPWrL5AgAu9opvQ
	(envelope-from <devicetree+bounces-315859-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 00:07:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 955E36C8E18
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 00:07:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PSO3eECH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315859-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315859-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9E91030028FD
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 22:07:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7701936C59E;
	Thu, 25 Jun 2026 22:07:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B0B23BD06;
	Thu, 25 Jun 2026 22:07:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782425244; cv=none; b=fxiBKZ/gNK94ZryUY14I9DFvfn0Tp/1N6iaX3xMHP6m9AFzTTQPkODj2tm3D22oOV+d+yRvN1eXMOvs9yshyPnRQ/X3IE3W/fPRWN6pi58RSElmAfBTnb+Ay8jvcoYA2wjUkmPcTmqnnQWwq7BKbiNTJOubQg5SyQ5XO0XvY5CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782425244; c=relaxed/simple;
	bh=muxrBQywzUXhDRkiTRVvC3lvFvXTqRuMbsIc3X0mGz0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=cQ+QNUUWxsDdIMWpTKP6ZbM0yUJ2maUBNKkr3al4jP5Wta08SK7EQO039VpF02TRp3CdTf53CnHocRMC8Bl4PUdpnA0GK+TC/PlImzawE7p0gMXeJjCw2TSQw8gH10a6c4QHetxvwUP789tK6Q22d4EVJUiiaAPOv9juevl4g0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSO3eECH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1BDD1F000E9;
	Thu, 25 Jun 2026 22:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782425243;
	bh=8/8AmWqNvxsv/3NFZh0J4JdNhuDYYW8+AhcDD55TwHc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PSO3eECHUgMrlAmAcJD+GIS+Jf44CxmL5UU0wk404wpD8V6MdfvqRXsFCrwuW4zvX
	 6GBphdepe2hMCaaQkUGid4BPFbmv3WNeo+u0NffLyw/Gfa88FqQC192bj0OHy8jYyB
	 6FKUf6elO0X/4D/5Pkjy5fNqtPw0rbUwS+tHt/Cw2n8VAUKhjGQqMKLnG72i1iMyAE
	 u88J426x/J55iox3WYR7ui+gtNcfmzHx3uLzOtTn0WxnIMx2piwt8ZtVZ4iMtJNs2/
	 k9jfrbSg/ym6kJxv44Gj/c3TDnKjzy7fmv4BqmbgdRmQz5TyIB9PGLzBymzg31Fo9H
	 B2XwoFFlLWdOg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: clock: airoha: Add additional reset
 for PCIe PERSTOUT
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: conor+dt@kernel.org, linux-pci@vger.kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260625215741.3253212-2-ansuelsmth@gmail.com>
References: <20260625215741.3253212-1-ansuelsmth@gmail.com>
 <20260625215741.3253212-2-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 22:07:22 +0000
Message-Id: <20260625220722.E1BDD1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ansuelsmth@gmail.com,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-315859-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
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
X-Rspamd-Queue-Id: 955E36C8E18

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Data race between direct MMIO and regmap accesses on the SCU_PCIC =
register.
--

commit 900fc8364d6744e062fdb68cdff6066cb3ba875d
Author: Christian Marangi <ansuelsmth@gmail.com>

dt-bindings: clock: airoha: Add additional reset for PCIe PERSTOUT

Add additional reset to control PCIe PERSTOUT reset line for each of the 3
PCIe lines.

> diff --git a/include/dt-bindings/reset/airoha,en7581-reset.h b/include/dt=
-bindings/reset/airoha,en7581-reset.h
> --- a/include/dt-bindings/reset/airoha,en7581-reset.h
> +++ b/include/dt-bindings/reset/airoha,en7581-reset.h

[ ... ]

> @@ -62,5 +62,9 @@
>  #define EN7581_CPU_TIMER_RST		50
>  #define EN7581_PCIE_HB_RST		51
>  #define EN7581_XPON_MAC_RST		52
> +/* RST_PCIC */
> +#define EN7581_PCIC_PERSTOUT0_RST	53
> +#define EN7581_PCIC_PERSTOUT1_RST	54
> +#define EN7581_PCIC_PERSTOUT2_RST	55

[Severity: High]
Will adding these resets expose a data race between the reset controller and
the PCIe controller during link bring-up?

When these resets are asserted, en7523_reset_update() in clk-en7523.c
performs an unlocked direct MMIO read-modify-write on the SCU_PCIC register:

drivers/clk/clk-en7523.c:en7523_reset_update() {
    ...
    val =3D readl(addr);
    val &=3D ~BIT(id % RST_NR_PER_BANK);
    ...
    writel(val, addr);
}

At the same time, mtk_pcie_en7581_power_up() in pcie-mediatek-gen3.c
modifies the same SCU_PCIC register using a regmap:

drivers/pci/controller/pcie-mediatek-gen3.c:mtk_pcie_en7581_power_up() {
    ...
    regmap_update_bits(pcie->scu, SCU_PCIC, SCU_PCIC_PCIE_CTRL,
                       FIELD_PREP(SCU_PCIC_PCIE_CTRL, BIT(1)));
}

Since the regmap internal lock does not protect against direct MMIO accesses
from clk-en7523.c, could concurrent operations (like one port triggering a
reset while another powers up) silently corrupt the SCU_PCIC hardware
register state and cause PCIe links to fail?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625215741.3253=
212-1-ansuelsmth@gmail.com?part=3D1

