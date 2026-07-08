Return-Path: <devicetree+bounces-322521-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xhTfChnyTWrDAQIAu9opvQ
	(envelope-from <devicetree+bounces-322521-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 08:45:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC71722499
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 08:45:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bgXGgJ+8;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322521-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322521-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AD0E830093A0
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 06:43:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C62723E0092;
	Wed,  8 Jul 2026 06:43:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C463DE42B
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 06:43:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783493007; cv=none; b=Vw0s/p8pQfPDf7xj8/AgwXXoXZ7uNRDS1BXRJsHzrrJMliGMmeiIoClLA3o5QgPDEqnSU8gUitKet+eC+VLwQEefl08/K+a5pTstV3BBY0iK3+NYkVzk63csdpbjebDnB758U0hXhccU9VOCJ3qm6sB8Byz2IY9a5FNvD0k2WEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783493007; c=relaxed/simple;
	bh=VvR0I6b1SaFip5pAQWjswdBd/y04KKMnsFQ8IFCG/jE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hBRs2sGJ8OzVYU4NbWYsoovqte+bZoRFW4YHhW5UsunJEtFtz0NXkHpbzHogAbf024MW5QalWID4iukCFcqjy+Q+Mfjme1q1FsNT3On4be2ZCcnMnaHLDIFin2qF1xAa+rpsa2xgZh8hF5rg2qbjZkAGm7mx4Zvfkim2sx47wok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgXGgJ+8; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45AA11F01559;
	Wed,  8 Jul 2026 06:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783493004;
	bh=txL4kb+hcFaqWiayDInYVgFVG30OUPAq3czAPGaykHs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bgXGgJ+8mYOvHLDYf3h1NyPFQrG78o4DUuDUdYBa7mWTf2dy2yBr3sN92/nfpK1nF
	 6vaWrrLDL0Vl0QAYH86AqemQclidAwM9lTzZ5wDY1vnGp7AaUeUJdFlWtjvYTHRKrB
	 Zh1UljrsRa9V9PCDZmzG33O6fkbZMircsbn4u2dppj/sG9U71l+teve4rY1sadwCrR
	 gZ9Yjpu0ISDET6U+egeo0+ksln2pBi8vl90QfSHpOP/0knJUAjvZGd0+4m3b76d4ce
	 Cohf6wFdb7+iiiQGPAupGI8nDZmd2KQPcpGu+jSrtnB9S6qoIZJFlYRk7lTRTNyOy3
	 B6zHiO9FUd6XQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v10 2/4] dt-bindings: ethernet: eswin: add
 EIC7700 eth1 RX clock inversion variant
Reply-To: sashiko-reviews@lists.linux.dev
To: lizhi2@eswincomputing.com
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260707064159.1299-1-lizhi2@eswincomputing.com>
References: <20260707064033.1265-1-lizhi2@eswincomputing.com>
 <20260707064159.1299-1-lizhi2@eswincomputing.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 06:43:23 +0000
Message-Id: <20260708064324.45AA11F01559@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322521-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:lizhi2@eswincomputing.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6BC71722499

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The 'rx-internal-delay-ps' and 'tx-internal-delay-ps' properties=
 were removed from the schema's 'required' list and examples, but the platf=
orm driver still strictly requires them, causing predictable boot failures =
for device trees following the updated schema.
--

--- Patch [2]: [PATCH net-next v10 2/4] dt-bindings: ethernet: eswin: add E=
IC7700 eth1 RX clock inversion variant ---
commit 2e11e791f4a16ddedd931815efa250107b187a70
Author: Zhi Li <lizhi2@eswincomputing.com>

dt-bindings: ethernet: eswin: add EIC7700 eth1 RX clock inversion variant

This commit introduces a new compatible string for the EIC7700 eth1 MAC to
handle RX clock inversion. It also models the TX internal delay as a base
range and updates constraints based on the compatible string.

> diff --git a/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml=
 b/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml
> index 4e02fedae5c67..ba49fd6a086cb 100644
> --- a/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml
> +++ b/Documentation/devicetree/bindings/net/eswin,eic7700-eth.yaml

[ ... ]

> @@ -140,3 +161,29 @@ examples:
>              snps,wr_osr_lmt =3D <2>;
>          };
>      };
> +
> +    ethernet@50410000 {
> +        compatible =3D "eswin,eic7700-qos-eth-clk-inversion", "snps,dwma=
c-5.20";
> +        reg =3D <0x50410000 0x10000>;
> +        interrupt-parent =3D <&plic>;
> +        interrupts =3D <70>;
> +        interrupt-names =3D "macirq";
> +        clocks =3D <&d0_clock 186>, <&d0_clock 171>, <&d0_clock 40>,
> +                <&d0_clock 194>;
> +        clock-names =3D "axi", "cfg", "stmmaceth", "tx";
> +        resets =3D <&reset 94>;
> +        reset-names =3D "stmmaceth";
> +        eswin,hsp-sp-csr =3D <&hsp_sp_csr 0x200 0x208 0x218 0x214 0x21c>;
> +        phy-handle =3D <&gmac1_phy0>;
> +        phy-mode =3D "rgmii-id";
> +        snps,aal;
> +        snps,fixed-burst;
> +        snps,tso;
> +        snps,axi-config =3D <&stmmac_axi_setup_gmac1>;
> +
> +        stmmac_axi_setup_gmac1: stmmac-axi-config {
> +            snps,blen =3D <0 0 0 0 16 8 4>;
> +            snps,rd_osr_lmt =3D <2>;
> +            snps,wr_osr_lmt =3D <2>;
> +        };
> +    };

[Severity: Medium]
Will this example cause a probe failure if copied by device tree authors?=20

The new example omits the tx-internal-delay-ps and rx-internal-delay-ps
properties, but the platform driver rigidly enforces their presence:

drivers/net/ethernet/stmicro/stmmac/dwmac-eic7700.c:eic7700_dwmac_probe() {
    ...
    } else {
        return dev_err_probe(&pdev->dev, -EINVAL,
            "missing required property tx-internal-delay-ps\n");
    }
    ...
}

If someone uses this example as a template, it looks like eic7700_dwmac_pro=
be()=20
will unconditionally return -EINVAL during boot. Does the driver need to be=
=20
updated to handle these missing properties, or should the delay properties =
be=20
added back to this example?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707064033.1265=
-1-lizhi2@eswincomputing.com?part=3D2

