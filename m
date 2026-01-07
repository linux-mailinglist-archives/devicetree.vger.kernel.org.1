Return-Path: <devicetree+bounces-252472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 04EB8CFF80F
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 19:40:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6024B30D1879
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 17:47:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F456357A4D;
	Wed,  7 Jan 2026 17:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=proton.me header.i=@proton.me header.b="cUiiqkxD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-4325.protonmail.ch (mail-4325.protonmail.ch [185.70.43.25])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B1593148C5
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 17:21:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.25
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767806521; cv=none; b=uOh/O0wcJE1U08q5x5dlMjuA1xf09+f8rF2nQuO+lgdvOiNceClTYCOhztdIIFf+uD5vU/TCXWcFur1U434HRLJxTpoURolfhESTl2B0GKox+i4LlBac3o13kytqk4c3K2BdqPNNWDiOzMH4euYAje2WX+G9a7uik1RojSWBRUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767806521; c=relaxed/simple;
	bh=A0OGq+SgtjOQ1BDDqenRRDQq3xxiatq00SAFHPKbbZs=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kjQcWa7p5cQYoRV8TzurAmu9GM90VF3p96ljtoxog4W534NaVP1K6orEJyNpI1ASzc6Q7A/pF1j8mfsBAbyh4rmrzIQAjPysnRCqGv0Ou6wj4ycFVSAs/Ju/qXYLfwICZhlRUsZscqrS+Zyl7XpBq9wBrUODpT2gLASwgLUlfTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=proton.me; spf=pass smtp.mailfrom=proton.me; dkim=pass (2048-bit key) header.d=proton.me header.i=@proton.me header.b=cUiiqkxD; arc=none smtp.client-ip=185.70.43.25
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=proton.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=proton.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1767806500; x=1768065700;
	bh=hwcnYIMg4p/wxTYG2J5mPwCBb8Jlp4L/ffmhwtbSJMM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=cUiiqkxD5RWdKaZpoFfblPMOx3+CSszdr0z0LqbhwzR5RB1Fv2mU1H1pXDD93ngaP
	 PGr5mWeBr2x3wuS7p7+6jXmbIxnA/LrIbO5uAXKq+AdCYAoLtD86CZqJE5sdRVw+JW
	 +XF6i1+utW4sv6hKKBgeX2rmKXhkd6Mx8ML33XpUWCVlC6oTc51BLeuU0Hu8/5SeyT
	 JBma0QcOV201HmZBm1dxFSecC8e7n1mGgF4aN5RTsSQ+RWkCpWCW8KREz/+ztFgxgD
	 W2eyKHHp/S9flZp8GyzK6r5JBwNRxhf7HuLZbS6O1mdb/ITZlrLy/R9NyVhYXDh7RH
	 xy8HlTmgVHCqw==
Date: Wed, 07 Jan 2026 17:21:38 +0000
To: Michal Simek <michal.simek@amd.com>
From: kylebonnici <kylebonnici@proton.me>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>, Peter Korsgaard <peter@korsgaard.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Kyle Bonnici <kylebonnici@hotmail.com>
Subject: Re: [PATCH] Coding Style: Format arch/arm/boot/dts/xilinx
Message-ID: <o8y30D8GjOUPC9Rfl9zl5DcR8KOH7XCc3nbb0KcWZ1FGxHgzDtgt-tFZ8GEbT_C_5JeLbLfjgsSExFtoZ4s9DFPJ-mq1tcy4k9gp9mJ7HQs=@proton.me>
In-Reply-To: <f514d490-75d8-408e-99ba-ee44916395fc@amd.com>
References: <20251218125034.248-1-kylebonnici@proton.me> <5262fa29-4094-4c5d-be3f-2c73ee322ef6@amd.com> <zUWWtNtMhwr9_g1C6mdaGPvyls1-H_tCHfdMuWC35MYUzv88iiaEzS9RTUiucp4QU_RhvuTGiNcl_GV684b6h4-DmdnKPeCLGKB1RHEG6G8=@proton.me> <f514d490-75d8-408e-99ba-ee44916395fc@amd.com>
Feedback-ID: 172426429:user:proton
X-Pm-Message-ID: b2577ab4b27c7a4271bd8399374e50e0d35f26c2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



Hi,

On 1/7/26 08:49, Michal wrote:
>=20
>=20
> Hi,
>=20
> On 1/6/26 21:28, kylebonnici wrote:
>=20
> > Hi,
>=20
>=20
> first of all please don't do top posting.

Noted=20

>=20
> > Thanks for the feedback.
> >=20
> > with regard to subject I am not sure in what subsystem file formatting =
would go (especially if we run it on even more files and more systems are m=
odified) Your guidance would be appreciated.
>=20
>=20
> arm: xilinx:
>=20
> or for 64 bit version
>=20
> arm64: xilinx:

At this point how does one go about changing subject ? by creating a new pa=
tch or is there some other process?

>=20
> > With regard to improving the line wrapping, can you share some examples=
 so that I can start looking on improving this?
>=20
>=20
>=20
> run it over zynqmp.dtsi file
> And focus on pcie node
>=20
> @@ -958,8 +979,10 @@ pcie: pcie@fd0e0000 {
> <0x0 0xfd480000 0x0 0x1000>,
>=20
> <0x80 0x00000000 0x0 0x10000000>;
>=20
> reg-names =3D "breg", "pcireg", "cfg";
> - ranges =3D <0x02000000 0x00000000 0xe0000000 0x00000000
> 0xe0000000 0x00000000 0x10000000>,/* non-prefetchable memory */
>=20
> - <0x43000000 0x00000006 0x00000000 0x00000006
> 0x00000000 0x00000002 0x00000000>;/* prefetchable memory */
>=20
> + ranges =3D <0x02000000 0x00000000 0xe0000000 0x00000000
> 0xe0000000 0x00000000
> + 0x10000000>,/* non-prefetchable memory */
>=20
> + <0x43000000 0x00000006 0x00000000 0x00000006
> 0x00000000 0x00000002
> + 0x00000000>;/* prefetchable memory */
>=20
> bus-range =3D <0x00 0xff>;
>=20
>=20
> 1. sometimes commens are using space,tab or nothing. Same style would be =
useful.

Comments are currently untouched when the comment first token is not the fi=
rst token on the line.=20

This is because some users wanted comments to align within a property value=
s e.g. `foo =3D <...> /* ...*/\n,<...>; /* ...*/`and some wanted to also al=
ign comments across multiple properties in the same node. Hence no rule on =
how this should be formatted was reached when this tool was applied to form=
at the  Zephyr project.=20

I am open to discuss some rule that can be followed and looking applying th=
at.

> 2. last cell on next line looks weird to me. I think you can decode
> address-cells/size-cells for ranges and do indentation base on it.

This is not necessarily always possible with out parsing the full context i=
.e all the includes from the root of this context.

Reasons:=20
- This values found in this node in this file might be overridden by some l=
ater definition.

- The omission of these values can mean a value of 2 and 1 respectively or =
again these may have been defined in some other instance in the full dts co=
ntext.

Currently the rule to wrap is a follows:=20
  - Wrap Value (e.g ...., <0xf00 (0xc - 0xb) 0xaa>) > if value length + ind=
entation exceeds the wrap column
  - Wrap Expression (e.g. ...(0xc - 0xb) 0xaa>, Note that expression are wr=
apped outside in when we have nested expressions and nested expression will=
 be indented to be aligned with the parent expression group > if value leng=
th + indentation exceeds the wrap column,
  - Warp Value e.g ....0xaa>
>=20
> > To run on more files I will wait for feedback from Rob, Krzysztof and C=
onor.
>=20
>=20
> yep.
>=20
> Thanks,
> Michal

