Return-Path: <devicetree+bounces-304729-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMREFEAlG2rO/QgAu9opvQ
	(envelope-from <devicetree+bounces-304729-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 19:58:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EB729610B97
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 19:58:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 75BC2300C328
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 17:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFB42342CA7;
	Sat, 30 May 2026 17:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEIfecs7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA52C3AE18D
	for <devicetree@vger.kernel.org>; Sat, 30 May 2026 17:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780163804; cv=none; b=UhSZVeRDesXb78nX/R2M7hn+GUQc1whbHm70/NpaUP0hu0+fQ+mJP7kEu3StcFeryWbpVu/ON8kxSx7PVFgF3MscHrOHDW40YsmAZvwUH/YAiqwrK6fzezH+1TxE+grc9fKUQS3MzJok8Jigz/9zye1kFUgznLBy3OCMZpyNQuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780163804; c=relaxed/simple;
	bh=MobSg2E0kspVHEqWNlF715o2+XY5X0ih2aBMAQRjy54=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JQyCxfgjR1PT43tqZs/kph33s3WzPz0G9b+93BRvik1rpHA5FLZzWO0GqwllH5/81kmJFN6gNV3FbmnYFnuRFVmmjh3HQfZ2GmCCe2pjIWkMSgUSapxyyxGCoagPFn9RLdC/aZqFaD3rsLroqZFIhwL960Eo7ceiFgaW7zdf1kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEIfecs7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FFC41F00898;
	Sat, 30 May 2026 17:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780163803;
	bh=GbULqt59L7rbPovftjFEznDbz39BwPeWzva1fKlpzXE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oEIfecs7JJ1u5SvXIFv5db0j0z47whiMRlZ4ku/cWzsYjcDAaAmJgr+b1YwSNHe0i
	 gfePwkdh7vQ2j7SaA3oUA5F9HUZ3iq+tFVC8Jrxnv5TTH6Y+0KZHdvvQyke+YHc4IX
	 TAeXa5cCV6hdcUs/Ec00/XRPoJ3iVRFF9us6rlkDYpzOdGbDUAaevATFhgvJFDvkW1
	 a3PdbVxwloYb2eriBNWuXVokZqySl1Om08INWqE/mJv/82wj7kS4mQOujqKQaMk4rI
	 A6JMS+M79Rf9MT+u/2cQZRYRHyTbhoP2peu7DvX12XDJuJm4u08OTUH6T9/HjUdo4h
	 +qQnx0YElwe0A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 RESEND 4/5] riscv64: dts: sophgo: add SG2000 dtsi
Reply-To: sashiko-reviews@lists.linux.dev
To: "Joshua Milas" <josh.milas@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260530173347.33533-5-josh.milas@gmail.com>
References: <20260530173347.33533-5-josh.milas@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 30 May 2026 17:56:43 +0000
Message-Id: <20260530175643.8FFC41F00898@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304729-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,smtp.kernel.org:mid,4.196.180.0:email,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: EB729610B97
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Incorrect memory size specification for SG2000 SoC (256 MiB inst=
ead of 512 MiB).
--

commit c5b4a9fd5a4e96c34400baa5e56b2ce675d91e7b
Author: Joshua Milas <josh.milas@gmail.com>

riscv64: dts: sophgo: add SG2000 dtsi

This commit introduces the device tree source include file for the Sophgo
SG2000 SoC for the RISC-V architecture.

> diff --git a/arch/riscv/boot/dts/sophgo/sg2000.dtsi b/arch/riscv/boot/dts=
/sophgo/sg2000.dtsi
> index 0000000000000..412adacc00576
> --- /dev/null
> +++ b/arch/riscv/boot/dts/sophgo/sg2000.dtsi
[ ... ]
> +/ {
> +	compatible =3D "sophgo,sg2000";
> +
> +	memory@80000000 {
> +		device_type =3D "memory";
> +		reg =3D <0x80000000 0x10000000>;

[Severity: Medium]
Should this memory capacity be 512 MiB instead of 256 MiB? The SG2000 SoC
is a System-in-Package that integrates 512 MiB of DRAM, and the ARM64 device
tree for the same SoC specifies 0x20000000.=20

Setting this to 0x10000000 restricts the available RAM to 256 MiB unless it
is explicitly overridden by a bootloader.

> +	};
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260530173347.3353=
3-1-josh.milas@gmail.com?part=3D4

