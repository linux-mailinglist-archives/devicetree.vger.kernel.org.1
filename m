Return-Path: <devicetree+bounces-297921-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0M6THYq+BmqMnQIAu9opvQ
	(envelope-from <devicetree+bounces-297921-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 08:34:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 130DC54A07A
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 08:34:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D83E1301F489
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 06:34:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA06E37F8B9;
	Fri, 15 May 2026 06:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rrgae8Wk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96AA42C1788
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 06:34:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778826886; cv=none; b=qoVBRJMVwY+p7KejFs20Yl/Jl9ZYMiyiZV1wCvkQ9ph0U/4gFA9YcmtpcD2Q8SrKFmS74ir8lGlwTIG7asfj4+N0wRNRuw0jL7SzzElRF8zD2DdPKXJgd2Oujmpa17tiYUVXRqloWkqtZifTnG3tE8D5HZiHihqia/VO8U6uNEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778826886; c=relaxed/simple;
	bh=Ma1N+7RNGvHqUDxPkPgkTPjCNeOjLZ1rJ4ms1xCY0ns=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=sxwlC7oC2QH+MHCqHW/EnnpPyydtkKC4REtXBV69LjTTtU0Ez9CgTDPdQByUCoZL2cGCc/sf9zdCTsxny0Wjgh0WMQneMFMGVkJqFQLsNMOPy0Abdpl3D5jyx39zlv3iHwuLU6BFdRjHETTgq7LhmZ32WB/wLakRrFxK/D2Tz74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rrgae8Wk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02792C2BCB0;
	Fri, 15 May 2026 06:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778826886;
	bh=Ma1N+7RNGvHqUDxPkPgkTPjCNeOjLZ1rJ4ms1xCY0ns=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=rrgae8WkOsbq7yBBnunVZRl3iVfXMe0W6gdYPllerq8Gh4gvnNrWFKOm5wVIErA0e
	 EDWQRybbJphHrmQCa4wEcB82Pcc/lNluBezF7d7B7tI0EZ0DyiwzgxvBcGlrYCacrC
	 TfVUjs8pjemqPzDFvNSYYyf+OB2jnhqwvN7vra5mwoS9FwcpgLqmwx0pOBgD6pg3lF
	 /lVrBPUsRobdfX4zUAnPqBBqezk9+9KWFpOC3hVqsj9GBbLYHGmMRUNyn08yYlT8gZ
	 IAxoE+PZszxLYgBrSxAn6q/j3NsfIF5VPp6dU15ltio89Jed9iC+ajwjUP0mpyzwj7
	 vuuLvaRgpYxoA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v18 2/3] riscv: dts: starfive: Correct pwm nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Hal Feng" <hal.feng@starfivetech.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260515054723.25024-3-hal.feng@starfivetech.com>
References: <20260515054723.25024-3-hal.feng@starfivetech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 06:34:45 +0000
Message-Id: <20260515063446.02792C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 130DC54A07A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297921-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,lists.linux.dev:replyto];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.190.149.16:email];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Pinmux configuration properties were erroneously omitted from `pwm=
1_pins` in `jh7100-common.dtsi`.
- [Medium] Removal of SoC-specific compatible strings violates Device Tree =
ABI best practices.
--

commit e05af83398a49d79a54da1bad8e64c7c1e5f98eb
Author: Hal Feng <hal.feng@starfivetech.com>

riscv: dts: starfive: Correct pwm nodes

This commit updates the PWM nodes for StarFive JH7100 and JH7110 SoCs,
splitting the original single PWM node into 8 individual nodes representing
the 8 OpenCores PTC IP cores.

> diff --git a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi b/arch/riscv=
/boot/dts/starfive/jh7100-common.dtsi
> --- a/arch/riscv/boot/dts/starfive/jh7100-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7100-common.dtsi

[ ... ]

> +	pwm1_pins: pwm1-0 {
> +		pwm1-pins {
> +			pinmux =3D  <GPIOMUX(5,
>  				  GPO_PWM_PAD_OUT_BIT1,
>  				  GPO_PWM_PAD_OE_N_BIT1,
>  				  GPI_NONE)>;
>  		};
>  	};

In the original code, the single pwm_pins node applied electrical
properties like bias-disable, drive-strength =3D <35>, input-disable,
input-schmitt-disable, and slew-rate =3D <0> to both PWM0 and PWM1 pins. Wh=
en
splitting the node, these properties were copied to pwm0_pins but omitted
here.

Will omitting these properties cause the pwm1 output to operate with
undefined or default hardware pin states instead of the intended parameters?

> diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/d=
ts/starfive/jh7100.dtsi
> --- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi

[ ... ]

> -		pwm: pwm@12490000 {
> -			compatible =3D "starfive,jh7100-pwm", "opencores,pwm-v1";
> -			reg =3D <0x0 0x12490000 0x0 0x10000>;
> +		pwm0: pwm@12490000 {
> +			compatible =3D "opencores,pwm-v1";

Is it intentional to drop the SoC-specific "starfive,jh7100-pwm" compatible
string here, as well as "starfive,jh7110-pwm" in jh7110.dtsi?

Device Tree best practices generally recommend retaining SoC-specific
strings alongside generic IP strings. This ensures that if SoC-specific
integration quirks are discovered later, workarounds can be applied without
requiring users to update deployed device trees, and it maintains ABI
compatibility for older kernels that might match against the removed
strings.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515054723.2502=
4-1-hal.feng@starfivetech.com?part=3D2

