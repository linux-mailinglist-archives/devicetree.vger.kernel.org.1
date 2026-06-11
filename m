Return-Path: <devicetree+bounces-310132-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id N4bpGcxGKmpYlgMAu9opvQ
	(envelope-from <devicetree+bounces-310132-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:25:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0943B66E872
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:25:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mUNB6KXk;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310132-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310132-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7E121300C03C
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 05:25:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D11A135677A;
	Thu, 11 Jun 2026 05:25:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 760232BE7D1
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 05:25:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781155529; cv=none; b=qeIUoWUePNWxqZ+H3RfL0ch2/Rr0ehNZBQT2IlVwoUpXJ+JYGo5usqpEFwDD/cri2dy27/f6+NddCk2h7mQskvsedLDAPv4j1NopjXdNvOB2xmQqeHas5R7c09MgFSQA4SpjM0N5ubnugZKkc811esf0Q1OOpW4FH0JA9pgm200=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781155529; c=relaxed/simple;
	bh=BgKqMYr8Fm6Wquqq7jwdAlDh3DLJdmpXOmPeUN+NqTs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=sbZ3m4J6+ueXG8jL05yLBAMDsEz62onC59JKhdy+ndugIXwUGx7/gpIlrf296vwMFxqS2/TTq04FPJ7mz6OOZsaSI/fBK9BW1DBcSV3Ddp89vVwsVBBvGFc9rcuaJVtRlGVXD6W0wmAKAa29xl51V9g/Agrq83to/7BbqcWtdMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUNB6KXk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF3DB1F00893;
	Thu, 11 Jun 2026 05:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781155524;
	bh=GWpi6YPNM1TIcT6BPIxnYY+fZli3agzw50CwiZxB0ew=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mUNB6KXkQ5//H0tWZf1nhuPKEWRDKk2gEbvvZeKgSxHxsXmPY+Cli5kSmjoxHHljP
	 9EO4f7KYOOZ/houMmWRtAOeLcZHW6i3tDVzkOp9bA6BmQWu+AoiYRXwxD79/yQJm2j
	 X6V8QEc0xF8W0bAVxSsKCBxoBNkUiE9lEA3sjtGbE0n9LeextTTdkue5LLdLatdoF3
	 mnoPHdBGBFZ3TPpNGSllpXCkWz/IZ1K5tguF1wMxff6XMHEklaYAwf4ctwxMOt3MWg
	 k5DgA65vWByMOBttINspevy4S+pA/vS9YICYyVdPzDRrpoOnoywR2d6DTDPcS7w1TU
	 lFrRHZsn1kmcw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 33/37] arm64: dts: qcom: sm8550: Move PCIe phy and
 GPIOs to root port node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260611-wake-v2-33-2744251b1181@oss.qualcomm.com>
References: <20260611-wake-v2-33-2744251b1181@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 05:25:23 +0000
Message-Id: <20260611052523.CF3DB1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-310132-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:krishna.chundru@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,qualcomm.com:email,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0943B66E872

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The commit message claims that the `phy-names` property is moved=
 to the root port nodes, but the property is actually deleted.
--

commit 0b50a2794d4f364375fa966171b8c7483fa1b1b6
Author: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

arm64: dts: qcom: sm8550: Move PCIe phy and GPIOs to root port node

This patch moves the PCIe phy reference and the perst/wake GPIO properties
from the root complex controller node to the root port node. It updates
several sm8550-based device tree files to reflect these moves and renames
perst-gpios to reset-gpios.

>     Move phys and phy-names from the controller to
>     the existing pcieport0 and newly labeled pcie1_port0, allowing

[Severity: Medium]
The commit message states that both phys and phy-names are moved to the root
port nodes. However, phy-names was removed from the controller but never
re-added to the port nodes. Does this omission introduce a regression, or
was the property intentionally dropped?

> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/q=
com/sm8550.dtsi
> index 912525e9bca6f..a8eccaebcf2d7 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
[ ... ]
> @@ -2100,6 +2097,8 @@ pcieport0: pcie@0 {
>  				#address-cells =3D <3>;
>  				#size-cells =3D <2>;
>  				ranges;
> +
> +				phys =3D <&pcie0_phy>;

[Severity: Medium]
Should phy-names be included here to match the commit message, or should the
commit message be updated to reflect that phy-names is intentionally droppe=
d?

[ ... ]
> @@ -2288,7 +2284,7 @@ opp-32000000-4 {
>  				};
>  			};
> =20
> -			pcie@0 {
> +			pcie1_port0: pcie@0 {
>  				device_type =3D "pci";
>  				reg =3D <0x0 0x0 0x0 0x0 0x0>;
>  				bus-range =3D <0x01 0xff>;
> @@ -2296,6 +2292,8 @@ pcie@0 {
>  				#address-cells =3D <3>;
>  				#size-cells =3D <2>;
>  				ranges;
> +
> +				phys =3D <&pcie1_phy>;

[Severity: Medium]
Similarly for pcie1_port0, should phy-names be added here as well?

>  			};
>  		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260611-wake-v2-0-=
2744251b1181@oss.qualcomm.com?part=3D33

