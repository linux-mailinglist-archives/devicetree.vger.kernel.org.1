Return-Path: <devicetree+bounces-302974-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJGGLtFvFWpbVAcAu9opvQ
	(envelope-from <devicetree+bounces-302974-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 12:02:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4905D3E01
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 12:02:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D9BF730233CD
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 10:02:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A218F3D3332;
	Tue, 26 May 2026 10:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMNkBhmW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B41E3DA5D3
	for <devicetree@vger.kernel.org>; Tue, 26 May 2026 10:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779789753; cv=none; b=Vz2xanjOZ5SgMxBI0lb3nR7b4BQmYu/FEKDWtaRkwEqerca5b0nv0fefO8OOKdK8IWaIo2s8dGtZHF1oiCz4eQbBijYe6Md4ye7qheTNKuNxoEbjywVGT6JFgIQlIz50RfMx2b6YLMO6tSwLg8ZGLpjiyGwi6CC0aVjp5/BVKEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779789753; c=relaxed/simple;
	bh=H6O4YDob5cn5LSPmOt/tcMOqij9kp/NbYfq2XuWvjDE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=X6c1T43kgLM3bV/asO3+6bfhWbnk2BKg0ZAWe6/G8YKC/cTwMlLQxKbLltCZaC0EaMhSdocOw+pL4CDJekAikV8V7+eFnR2Y0JjianOnTU1fOkJg9ee5TtiyGZtqKof5qNa96lQgOhW+8eTcETi8AP3Vj32/I4G0BjSepbw+DTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMNkBhmW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 395191F000E9;
	Tue, 26 May 2026 10:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779789751;
	bh=rnuiCJm8g7LmGJsQDxXrCJn2cbwnjb2OI4G7md3G1Yg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LMNkBhmW6kSVkzzuir4JQ3BYBHVUJplZSXirKL7/hQfEnt2s7mCDSCAG5HKC87GEe
	 FZwHCSobKL2PZGbPi6Lf43ZWJzjSpgKIkeATYAq56wBQinc8K0op9ANu61H9sjujnM
	 TlcMjps+3K78KW4Wri+1ifLLsiD1sV5rYay+iOK6dXcibKnzwhXTqgI+gB0iR8s128
	 p/ev7Fy0EII2EWQDGUV1in1KlsW1ljFQYEEu2e0Up4ucCTiDyQlgFnone1xLOLTnww
	 gjSNY/1MX8xqAVR7VhEm/F1AK0wPy4wFcFvCHCh0QahdwWheqm0FZq8xNaE/uVjalp
	 zaKwKPHpEapgQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 3/7] ARM: dts: stm32: Add boot phase tags for
 STMicroelectronics h7 boards
Reply-To: sashiko-reviews@lists.linux.dev
To: "Patrice Chotard" <patrice.chotard@foss.st.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260526-upstream_uboot_properties-v7-3-e17cd424d5db@foss.st.com>
References: <20260526-upstream_uboot_properties-v7-3-e17cd424d5db@foss.st.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 May 2026 10:02:30 +0000
Message-Id: <20260526100231.395191F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302974-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 3C4905D3E01
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The patch fails to add the `bootph-all` property to UART and `sysc=
fg` nodes, contradicting the commit message, and modifies unmentioned nodes.
- [Low] Incorrect double-tab indentation for the `bootph-all` property insi=
de the `&timer5` node.
--

commit 46ae77600efc54228af475f90f412a5aaa703ea3
Author: Patrice Chotard <patrice.chotard@foss.st.com>

ARM: dts: stm32: Add boot phase tags for STMicroelectronics h7 boards

The bootph-all flag was introduced to define node usage across different
boot phases. This commit adds the bootph-all phase flag to several nodes
to ensure SD boot is supported across all boot stages.

> To ensure SD boot, timer, gpio, syscfg, clock and uart nodes need to be
> present in all boot stages, so add missing bootph-all phase flag
> to these nodes to support SD boot.

[Severity: High]
The commit message states that syscfg and uart nodes are modified to support
SD boot, but the patch doesn't appear to add the bootph-all flag to them.

Since the pinctrl node depends on syscfg, if syscfg is missing from the ear=
ly
boot device tree, could pinctrl fail to probe in SPL? Would this prevent
SDMMC from functioning and break the early serial console if the UART nodes
are also missing?

> diff --git a/arch/arm/boot/dts/st/stm32h743i-disco.dts b/arch/arm/boot/dt=
s/st/stm32h743i-disco.dts
> index 78d55b77db7ce..1b4b9bc5c72dd 100644
> --- a/arch/arm/boot/dts/st/stm32h743i-disco.dts
> +++ b/arch/arm/boot/dts/st/stm32h743i-disco.dts
[ ... ]
> +&pinctrl {
> +	bootph-all;
> +};
> +
> +&pwrcfg {
> +	bootph-all;
> +};

[Severity: High]
Was pwrcfg added here by mistake instead of the syscfg node mentioned in
the commit message?

[ ... ]
> +&timer5 {
> +	bootph-all;
> +};
> +
>  &usart2 {
>  	pinctrl-0 =3D <&usart2_pins_a>;
>  	pinctrl-names =3D "default";

[Severity: High]
Did this usart node also need the bootph-all property added to support
the early serial console, as mentioned in the commit message?

> diff --git a/arch/arm/boot/dts/st/stm32h743i-eval.dts b/arch/arm/boot/dts=
/st/stm32h743i-eval.dts
> index e5e10b0758eea..55674fe054311 100644
> --- a/arch/arm/boot/dts/st/stm32h743i-eval.dts
> +++ b/arch/arm/boot/dts/st/stm32h743i-eval.dts
[ ... ]
> +&timer5 {
> +		bootph-all;
> +};

[Severity: Low]
This isn't a bug, but there appears to be an extra tab used for indentation
here. The same extra tab is also present in stm32h747i-disco.dts and
stm32h750i-art-pi.dts.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260526-upstream_u=
boot_properties-v7-0-e17cd424d5db@foss.st.com?part=3D3

