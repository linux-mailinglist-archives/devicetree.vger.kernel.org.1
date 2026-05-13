Return-Path: <devicetree+bounces-296631-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OP4zMbsOBGqLCwIAu9opvQ
	(envelope-from <devicetree+bounces-296631-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 07:40:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFC052DA2E
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 07:40:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AB17B302C62A
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 05:40:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D3FF3A6417;
	Wed, 13 May 2026 05:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNfdJFdM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186F23A5E8C
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 05:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778650805; cv=none; b=tuqveRUH9P62AOCplpHkk6w1c69oUa6ABwZ50iwB52w5VCe83hJSQHa86CGXB1palpf6Xb+7hTZ7ppKM4ELa82EgC6gqMeGdKlvKXxpO4WKpCVyub5AcuNyrjFApGYR7JDVAp4WV0SmG1SE2sp7zI4muJuzf3WQqo1BEIOF4l0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778650805; c=relaxed/simple;
	bh=+df9cihgs0+tTi7nPHFwGX77qJcP768Ib6zs+I/tLBY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=HYH1EUrzLy3RUwd2+fwrT3q2wq+gWul/rH4midvcvt66R5ytIEbtRJbo+O7nJcKXKRvR/9ULNVRz7N2rdj8s4sa2xHE+WOtbu3lipZUPmrfnaOpy4KW7ct3HF0o6K/iVYJN5grv21O2VRsJzovSviDp9s3CLo2xn/evpPbkE834=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNfdJFdM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 616EAC2BCB7;
	Wed, 13 May 2026 05:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778650804;
	bh=+df9cihgs0+tTi7nPHFwGX77qJcP768Ib6zs+I/tLBY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=iNfdJFdMBOaZ3yPQiF4taNOuUPHDfS+0/GjNseZqA9F5fMRuLiLj3I8oTxEAlGgOP
	 1MSOETUPriWdsEVQEsbr31Hc4SiU4Pvc2sAtvPFUgsYGDZ1jp6EEPmVMGNdST3OOud
	 +voGOFxq6icJNPJf/KuX/Vow9A7NbpRcyCLAEleQ2LiPE8sYUmg+kkYpwupwcOgkzh
	 mfBgmxMqljK9LZ4EbYYJe7oehjLNxRAYAjGI1+TTLBsE+juht6Y8DMJMgH8yHYPdEf
	 rCRif7KGCrMvnatlRgvwUeSEd9lMEcXWBGFX90f2ZNBrL+JKM7q5xtlTDwetFbmZxi
	 uoQSrg9jGY8Ig==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 7/7] arm64: dts: realtek: Add GPIO support for
 RTD1625
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yu-Chun Lin" <eleanor.lin@realtek.com>
Cc: devicetree@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260512033317.1602537-8-eleanor.lin@realtek.com>
References: <20260512033317.1602537-8-eleanor.lin@realtek.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 May 2026 05:40:03 +0000
Message-Id: <20260513054004.616EAC2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: CBFC052DA2E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296631-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url,0.0.30.120:email];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.121.24:email,0.1.92.12:email];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Both the `gpio@31000` and `iso_m_gpio@89100` nodes omit essential =
interrupt properties (`interrupts`, `interrupt-controller`, and `#interrupt=
-cells`).
--

commit d2b46f0c89e5920bcae5cf858be075ac05b6c104
Author: Yu-Chun Lin <eleanor.lin@realtek.com>

arm64: dts: realtek: Add GPIO support for RTD1625

Add the GPIO node for the Realtek RTD1625 SoC.

> diff --git a/arch/arm64/boot/dts/realtek/kent.dtsi b/arch/arm64/boot/dts/=
realtek/kent.dtsi
> index 8d4293cd4c036..228b82dfdb7ac 100644
> --- a/arch/arm64/boot/dts/realtek/kent.dtsi
> +++ b/arch/arm64/boot/dts/realtek/kent.dtsi
> @@ -151,6 +151,37 @@ uart0: serial@7800 {
>  				status =3D "disabled";
>  			};
> =20
> +			gpio: gpio@31000 {
> +				compatible =3D "realtek,rtd1625-iso-gpio";
> +				reg =3D <0x31000 0x398>;
> +				gpio-controller;

Should this node include interrupt properties such as "interrupts",
"interrupt-controller", and "#interrupt-cells"?

In drivers/gpio/gpio-rtd1625.c, rtd1625_gpio_probe() unconditionally regist=
ers
an irq_domain. Since the "interrupts" property is absent from the device tr=
ee,
platform_get_irq_optional() will return -ENXIO and skip registering the
chained parent IRQ handler, but leave the irq_domain active.

If a consumer driver requests an interrupt for one of these GPIOs, the requ=
est
will succeed and return a valid software IRQ mapping from the domain. Howev=
er,
because the parent IRQ was never hooked up, the hardware will never deliver
the interrupt to the CPU, leading to silent failures for peripherals relying
on GPIO interrupts.

[ ... ]
> +			iso_m_gpio: gpio@89100 {
> +				compatible =3D "realtek,rtd1625-isom-gpio";
> +				reg =3D <0x89100 0x30>;
> +				gpio-controller;

Are the interrupt properties also missing here for the same reason?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512033317.1602=
537-1-eleanor.lin@realtek.com?part=3D7

