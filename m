Return-Path: <devicetree+bounces-304711-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFgzOIgVG2pV/AgAu9opvQ
	(envelope-from <devicetree+bounces-304711-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 18:51:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D2F60E7FD
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 18:51:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A0CC23056DC3
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 16:50:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A0B633A9DA;
	Sat, 30 May 2026 16:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToidLUVI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BA93242BE
	for <devicetree@vger.kernel.org>; Sat, 30 May 2026 16:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780159816; cv=none; b=OkMRJ6HEuu8Ad2VGqrsXB1en6D89meUdlBMxqycqfZgmKYkDKEj6QEL0b0o/eV6V4U5weNcult8i/r3xeysGvTaLKtPrAa5R/2nTsyyBNqOrCRcE4C5M9UX3c8s91VNFYC/BahS5NGW2n1uTOt84SWq+As16VCPa0QK40qEzUGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780159816; c=relaxed/simple;
	bh=YrFVauqP4ubATuVvmo18AHIbMFklWMz82dbrFpIx5zw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=nPhlrtd8kSk1hiPrA9ziUI1Hi7QSoEWawQ0/cAJi1uas3nTI35CdRcZjn4hzeXde74UE4nV0p1IC+ounEvLjZOmm8K2mgydHlCUZIAXzuOPOOIS2z/zTcQ6ivTNoys9b/3onnmbn0ViVJh9v4lJdEnuX8OxcgCRfhcZ7cFTHvYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToidLUVI; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8ACD1F00898;
	Sat, 30 May 2026 16:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780159814;
	bh=6cjAd1b4IrUEhvOA57Ch1c1zdudYY0yJqKemPuN4dU0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ToidLUVIdkoNy4WYrkAVmNjL5BlITi3RUWdyDlIc60r5o+M2EfdNzzyK+PBSeqtWP
	 GOHuVPAm3QclZ8RQir3cO9g/6SWLjEOnMZNHKMVfIvDEYYUTcq8Xk/RbKDlA9bt4v2
	 7MDrGzYKToH0IghVACuS/w+hUWlFM+sA32nLGddcpYCV8D+6GpEmj89zKIwzqc2+GW
	 8AZpQHIf/RbyHkYoY3UdAdE8qPoA5kyBf7VN+mZxZAQA3BlKEccVVYZzkUoeDv5+kO
	 5iUVQAcTeCMf9toKwmDqTS872oclbIN485HWXtO+YAvSiboLiGU9kHqZW/asB1RZkm
	 ZBrMQPPMLvSNw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Add crypto node to
 rk3588-base
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dawid Olesinski" <dawidro@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260530160704.3453555-5-dawidro@gmail.com>
References: <20260530160704.3453555-5-dawidro@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 30 May 2026 16:50:14 +0000
Message-Id: <20260530165014.B8ACD1F00898@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304711-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 59D2F60E7FD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The shared interrupt handler accesses device registers without ens=
uring the device's clocks are enabled, which will trigger an asynchronous b=
us fault (SError) if a shared or spurious interrupt occurs while suspended.
- [High] The driver dereferences the `areq->iv` byte array as a `u32 *`, wh=
ich can cause an alignment fault.
--

commit 7f6218b80827dfe5983e50e2564e2a7bc74c81f8
Author: Dawid Olesinski <dawidro@gmail.com>

arm64: dts: rockchip: Add crypto node to rk3588-base

This commit adds the device tree node for the V2 cryptographic hardware
accelerator on the RK3588. The node is disabled by default and uses the ARM
SCMI interface for clocks and resets because the IP is in the secure domain.

> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/b=
oot/dts/rockchip/rk3588-base.dtsi
> index 4fb8888c281c8..4f336741d11ff 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> @@ -2257,6 +2257,18 @@ rng@fe378000 {
>  		resets =3D <&scmi_reset SCMI_SRST_H_TRNG_NS>;
>  	};
> =20
> +	crypto: crypto@fe370000 {
> +		compatible =3D "rockchip,rk3588-crypto";

[Severity: High]
This isn't a bug introduced by this patch, but enabling this device exposes=
 an
alignment fault issue in the driver.

The driver dereferences the areq->iv byte array as a u32 pointer, which can
cause an alignment fault. The block cipher algorithms set .base.cra_alignma=
sk
to 0, meaning the crypto subsystem makes no guarantees about the memory
alignment of the areq->iv buffer. However, in rk2_cipher_run()
(drivers/crypto/rockchip/rk2_crypto_skcipher.c):

	writel(cpu_to_be32(riv[i]),
	       rkc->reg + RK2_CRYPTO_CH0_IV_0 + i * 4);

the driver casts areq->iv to a u32 pointer and reads from it directly via
riv[i]. If the IV buffer is unaligned, this dereference is undefined behavi=
or
in C. On ARM64, if the compiler assumes alignment and emits an instruction =
that
strictly requires it, this will trigger an alignment fault exception and cr=
ash
the kernel.

Should the driver be updated to either use get_unaligned() to read the IV b=
ytes
or set cra_alignmask =3D 3 to enforce 4-byte alignment?

> +		reg =3D <0x0 0xfe370000 0x0 0x2000>;
> +		interrupts =3D <GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH 0>;

[Severity: High]
This isn't a bug introduced by this patch, but enabling this device via dev=
ice
tree will expose a shared interrupt handling issue in the driver.

The shared interrupt handler accesses device registers without ensuring the
device's clocks are enabled.

The driver requests the interrupt with IRQF_SHARED while placing the device=
 into
runtime suspend (disabling its clocks and asserting reset) when idle. If an=
other
device on the same IRQ line fires, or a spurious interrupt occurs,
rk2_crypto_irq_handle() in drivers/crypto/rockchip/rk2_crypto.c will execut=
e:

	v =3D readl(rkc->reg + RK2_CRYPTO_DMA_INT_ST);
	if (!v)
		return IRQ_NONE;

Accessing an unclocked APB/AHB target on Rockchip SoCs triggers an asynchro=
nous
bus fault (SError), crashing the kernel.

Could the handler verify the device is active (e.g., via a driver-specific
software flag) before touching hardware registers?

> +		clocks =3D <&scmi_clk SCMI_CRYPTO_CORE>, <&scmi_clk SCMI_ACLK_SECURE_N=
S>,
> +			 <&scmi_clk SCMI_HCLK_SECURE_NS>;
> +		clock-names =3D "core", "aclk", "hclk";
> +		resets =3D <&scmi_reset SCMI_SRST_CRYPTO_CORE>;
> +		reset-names =3D "core";
> +		status =3D "disabled";
> +	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260530160704.3453=
555-1-dawidro@gmail.com?part=3D4

