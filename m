Return-Path: <devicetree+bounces-297266-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGgGFxo5BWrVTQIAu9opvQ
	(envelope-from <devicetree+bounces-297266-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 04:53:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EF47353D2E8
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 04:53:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 58AF63018D6C
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 02:53:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 935102D97B9;
	Thu, 14 May 2026 02:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEEd7GfN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71202219A8A
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 02:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778727190; cv=none; b=W5sTuF83vF8AdN6x7iCDHp6n09qV7Z3IgpFvc3SjyCIBvKxi+TcIzbF03dWLfLx83jv6wQCUg6U7gt5d2hRjQWSxoLjQnqVtJZpdmXzBspQ03rqTuAleaBWD3ZkxcI3+MbLfSX8VcoLUHbFacENwpHuxysI+BmedDcU3GDG//H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778727190; c=relaxed/simple;
	bh=eTZh0AkwSQiqNpjoWYAM6unMSvrYZ0hWKnJRtz4nb88=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=HfBG1gEY0RQD4UoziQKKiMxuFoyjZnsXxDKczMvVQd62pRWmGA1vOw0Ymq49w8KC4LdTwGUsuS1Gs1DO3lWcHn2MvoQS9vVacS5DxAE+k9rPfyJxE/C1UrGZkb8i4Anp/y5o2fANlnIj5Cl/fz54pkDOqMJNNpCKPPsA/oO4s2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEEd7GfN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C751C19425;
	Thu, 14 May 2026 02:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778727190;
	bh=eTZh0AkwSQiqNpjoWYAM6unMSvrYZ0hWKnJRtz4nb88=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=gEEd7GfNTIXYnz0tSc6wM8nXglQ+ranhGr9VqJBcBVWAYfRnvt+z8zY69in9h7y38
	 yxiX9kBj4LDF1kr1JmslvdAswMDPyUeBdbW3WA7aMbPGLFi6/g2QcUMA/LtJGQCQPg
	 36afiE9NDDw4I8H2VihLZiFXjvMia7PJqyvOlGK16wf8Ujzb/nAIjmAWJORsx9lghL
	 ub7YvDpxsVa7qcHqMk16KXPiwTgvt4/DURYSwg3QZOZnQDt4Stbvq/8CgDWJp96ulT
	 /hCQYrSYf3ND+ic/GxrTN53JXXxT4VyRs2mgmqwoAOTK50oDYP/hX1MJVlAez0SMoE
	 f03hAcXLe5N5Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/6] riscv: dts: spacemit: k1-musepi-pro: enable QSPI
 and add SPI NOR
Reply-To: sashiko-reviews@lists.linux.dev
To: "Andre Heider" <a.heider@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260513071958.29574-4-a.heider@gmail.com>
References: <20260513071958.29574-4-a.heider@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 02:53:09 +0000
Message-Id: <20260514025310.1C751C19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: EF47353D2E8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297266-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,0.0.0.0:email,a0000:email,0.0.234.96:email,0.0.39.16:email,0.1.17.112:email,0.0.78.32:email];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Partition nodes use specific functional names instead of generic na=
mes.
--

commit ead14b17b1685d70e44f6cab4060557873642eb6
Author: Andre Heider <a.heider@gmail.com>

riscv: dts: spacemit: k1-musepi-pro: enable QSPI and add SPI NOR

This commit adds the QSPI controller node and describes the attached SPI
NOR flash. It also adds a corresponding vendor flash partition layout.

> diff --git a/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts b/arch/riscv/=
boot/dts/spacemit/k1-musepi-pro.dts
> index 41d7d6d20a797..b0f66f49db4b7 100644
> --- a/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts
> +++ b/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts
[ ... ]
> +&qspi {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&qspi_cfg>;
> +	status =3D "okay";
> +
> +	flash@0 {
> +		compatible =3D "jedec,spi-nor";
[ ... ]
> +		partitions {
> +			compatible =3D "fixed-partitions";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <1>;
> +
> +			bootinfo@0 {
> +				reg =3D <0x0 0x10000>;
> +			};
> +			private@10000 {
> +				reg =3D <0x10000 0x10000>;
> +			};
> +			fsbl@20000 {
> +				reg =3D <0x20000 0x40000>;
> +			};
> +			env@60000 {
> +				reg =3D <0x60000 0x10000>;
> +			};
> +			opensbi@70000 {
> +				reg =3D <0x70000 0x30000>;
> +			};
> +			uboot@a0000 {
> +				reg =3D <0xa0000 0x760000>;
> +			};

Should these partition nodes use the generic partition@ naming convention
instead of specific functional names?

The device tree schema for fixed-partitions expects child nodes to match the
pattern ^partition@[0-9a-f]+$. Using specific names like bootinfo@0 might
trigger dtc and schema validation warnings.

Could these functional names be provided via the label property instead,
while keeping the node names generic?

> +		};
> +	};
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260513071958.2957=
4-1-a.heider@gmail.com?part=3D3

