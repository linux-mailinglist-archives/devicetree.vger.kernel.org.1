Return-Path: <devicetree+bounces-297794-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJ3fBQYnBmoBfwIAu9opvQ
	(envelope-from <devicetree+bounces-297794-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 21:48:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0DB54681A
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 21:48:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0D2FC30167F9
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 19:48:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B593330315;
	Thu, 14 May 2026 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2IfPriv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCAA54F5E0
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 19:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778788095; cv=none; b=ulr/aFRoTsGNoO6FBQTXeAQrVfmxkRD+TVDcg8u/hHTPPTHZOHXled58c779AIznC7W0hqaqDnHguTDyu4nUuG3TKMO/hlODcFNXexX6K2kFawGNKcbbLn6HMzYv2bBxhYATxfiQSpnlDt5zzY3Tx/O3GUX9rcPRPOY1tML/0hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778788095; c=relaxed/simple;
	bh=eTrx/pBlFhV9uEx4jojp4Mo3mf88u30r9n8gLWP9vuo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JDHx3Fx9iu0c2scqDJee37aHm/G6fvvqaoen3LYS2DIFflab5Vd/BG0KuYdo5Odk4XKfQL+x34USvY7KDtnA4QtmNHuvl8nWLkJLb4leocjIt2CtYO4/+e4s8XBwJxKLw4qc9HNx9f4vKBe1KF5ChG+beIZFBuKJCxlQANzeG+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2IfPriv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3483CC2BCB3;
	Thu, 14 May 2026 19:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778788095;
	bh=eTrx/pBlFhV9uEx4jojp4Mo3mf88u30r9n8gLWP9vuo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=G2IfPriv5ELxlt9fBm8z52g1mUhwwK1tFZIzsJsNIAVeOt/+qlRWRTutKKbLhyZtB
	 AK2qhhhFgDTH4mzJBOH9UFQD1voadaKFwibJGe+blPlhVuWX8Z9kCbUHuhv4F4pir0
	 YyJKtTYRjHlI8RVmmWDBvXuOzTZUy8/sG00OaOMoVLp9kMl2M3kxMbrtA3fJmdbMKy
	 fq7fOPb2frLTYXlkN6t94r0GQnx5GwQmTJdL7FIVD2IbXxSimZfFAUN34s6rT3sZDy
	 pWyYu/6DBwnyOppqticEyn5//qlkiSMv6eUkkmolh1us+vNWHUAAGjlz+4LxyL4pSm
	 La2cmnSMbDGXA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 5/6] riscv: dts: anlogic: add clocks and CRU for
 DR1V90
Reply-To: sashiko-reviews@lists.linux.dev
To: "Junhui Liu" <junhui.liu@pigmoral.tech>
Cc: krzk+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260514-dr1v90-cru-v5-5-34f3021aab51@pigmoral.tech>
References: <20260514-dr1v90-cru-v5-5-34f3021aab51@pigmoral.tech>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 19:48:14 +0000
Message-Id: <20260514194815.3483CC2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 1D0DB54681A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297794-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,pigmoral.tech:email,lists.linux.dev:replyto];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The `can_ext` and `wdt_ext` fixed-clock nodes are missing the mand=
atory `clock-frequency` property.
--

commit 2b9cd6d4a55b4608470fd48bd92b6cacba368046
Author: Junhui Liu <junhui.liu@pigmoral.tech>

riscv: dts: anlogic: add clocks and CRU for DR1V90

This commit adds clocks and introduces the Clock and Reset unit node
for the Anlogic DR1V90 SoC. It configures a main crystal oscillator
and two optional external clocks for the CAN and WDT modules.

> diff --git a/arch/riscv/boot/dts/anlogic/dr1v90.dtsi b/arch/riscv/boot/dt=
s/anlogic/dr1v90.dtsi
> index 9fe183f5f5c8d..574c6608aef01 100644
> --- a/arch/riscv/boot/dts/anlogic/dr1v90.dtsi
> +++ b/arch/riscv/boot/dts/anlogic/dr1v90.dtsi

[ ... ]

> @@ -40,6 +43,26 @@ cpu0_intc: interrupt-controller {
>  		};
>  	};
> =20
> +	clocks {
> +		can_ext: clock-ext-can {
> +			compatible =3D "fixed-clock";
> +			clock-output-names =3D "can_ext";
> +			#clock-cells =3D <0>;
> +		};
> +
> +		osc: clock-osc {
> +			compatible =3D "fixed-clock";
> +			clock-output-names =3D "osc";
> +			#clock-cells =3D <0>;
> +		};
> +
> +		wdt_ext: clock-ext-wdt {
> +			compatible =3D "fixed-clock";
> +			clock-output-names =3D "wdt_ext";
> +			#clock-cells =3D <0>;
> +		};

Are the can_ext and wdt_ext fixed-clock nodes missing the mandatory
clock-frequency property?

The fixed-clock devicetree binding requires a clock-frequency property.
Without it, the fixed-clock driver fails to read the frequency and returns
-EIO during both of_fixed_clk_setup and platform probe, failing to register
the clock providers.

Because the cru node specifies these clocks as suppliers, the kernel's
fw_devlink mechanism will indefinitely block the CRU driver from probing.

This recursively blocks all CRU consumers, including the UART console,
leaving the system without a working console.

Would it be better to add a dummy frequency, mark these nodes with
status =3D "disabled" in the dtsi, or define them only at the board level
when they are actually present?

> +	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514-dr1v90-cru=
-v5-0-34f3021aab51@pigmoral.tech?part=3D5

